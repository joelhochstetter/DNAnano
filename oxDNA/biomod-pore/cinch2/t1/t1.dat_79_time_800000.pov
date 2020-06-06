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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.995136, 32.067154, 22.714098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685505, 31.852345, 22.848206>,  <42.499725, 31.723459, 22.928671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685505, 31.852345, 22.848206>,  <42.995136, 32.067154, 22.714098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685505, 31.852345, 22.848206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255088, 0.220115, 0.941530,
		-0.579423, 0.814343, -0.033398,
		-0.774080, -0.537025, 0.335269,
		42.453281, 31.691236, 22.948786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530865, 32.395222, 23.204929>,  <42.995136, 32.067154, 22.714098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530865, 32.395222, 23.204929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513325, 32.011963, 23.318085>,  <42.502800, 31.782007, 23.385979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513325, 32.011963, 23.318085>,  <42.530865, 32.395222, 23.204929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513325, 32.011963, 23.318085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121716, 0.275929, 0.953440,
		-0.991596, 0.076237, 0.104523,
		-0.043846, -0.958150, 0.282890,
		42.500172, 31.724518, 23.402952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803345, 32.448364, 23.342669>,  <42.530865, 32.395222, 23.204929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803345, 32.448364, 23.342669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640793, 32.247929, 23.648285>,  <41.543262, 32.127666, 23.831656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640793, 32.247929, 23.648285>,  <41.803345, 32.448364, 23.342669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640793, 32.247929, 23.648285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728025, 0.327709, 0.602152,
		-0.552116, 0.800947, 0.231630,
		-0.406384, -0.501090, 0.764043,
		41.518879, 32.097603, 23.877499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382877, 32.945351, 23.734640>,  <41.803345, 32.448364, 23.342669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382877, 32.945351, 23.734640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564651, 32.631866, 23.904003>,  <41.673717, 32.443775, 24.005621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564651, 32.631866, 23.904003>,  <41.382877, 32.945351, 23.734640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564651, 32.631866, 23.904003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659843, 0.615481, 0.431033,
		-0.598408, 0.083506, 0.796828,
		0.454439, -0.783715, 0.423410,
		41.700985, 32.396751, 24.031027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588844, 33.000568, 24.477163>,  <41.382877, 32.945351, 23.734640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588844, 33.000568, 24.477163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847832, 32.738914, 24.320759>,  <42.003223, 32.581921, 24.226915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847832, 32.738914, 24.320759>,  <41.588844, 33.000568, 24.477163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847832, 32.738914, 24.320759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755092, 0.481248, 0.445238,
		-0.103074, -0.583525, 0.805527,
		0.647466, -0.654139, -0.391011,
		42.042072, 32.542671, 24.203455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611443, 33.094044, 25.162718>,  <41.588844, 33.000568, 24.477163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611443, 33.094044, 25.162718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223053, 33.044571, 25.080826>,  <40.990021, 33.014889, 25.031691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223053, 33.044571, 25.080826>,  <41.611443, 33.094044, 25.162718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223053, 33.044571, 25.080826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206913, 0.004923, 0.978347,
		-0.119996, 0.992310, -0.030372,
		-0.970973, -0.123682, -0.204731,
		40.931763, 33.007465, 25.019407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236416, 33.547142, 25.639275>,  <41.611443, 33.094044, 25.162718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236416, 33.547142, 25.639275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984413, 33.268093, 25.502796>,  <40.833210, 33.100666, 25.420908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984413, 33.268093, 25.502796>,  <41.236416, 33.547142, 25.639275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984413, 33.268093, 25.502796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161593, -0.311976, 0.936247,
		-0.759588, 0.644981, 0.083818,
		-0.630011, -0.697618, -0.341197,
		40.795410, 33.058807, 25.400436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656479, 33.599232, 26.113861>,  <41.236416, 33.547142, 25.639275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656479, 33.599232, 26.113861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629444, 33.232822, 25.955704>,  <40.613224, 33.012978, 25.860809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629444, 33.232822, 25.955704>,  <40.656479, 33.599232, 26.113861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629444, 33.232822, 25.955704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017843, -0.395128, 0.918453,
		-0.997554, 0.069131, 0.010362,
		-0.067588, -0.916021, -0.395395,
		40.609169, 32.958015, 25.837086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064560, 33.312572, 26.430740>,  <40.656479, 33.599232, 26.113861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064560, 33.312572, 26.430740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286118, 33.000950, 26.313251>,  <40.419052, 32.813976, 26.242758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286118, 33.000950, 26.313251>,  <40.064560, 33.312572, 26.430740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286118, 33.000950, 26.313251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176574, -0.454674, 0.872979,
		-0.813651, -0.431671, -0.389401,
		0.553890, -0.779058, -0.293725,
		40.452286, 32.767231, 26.225134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668114, 32.776443, 26.559547>,  <40.064560, 33.312572, 26.430740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668114, 32.776443, 26.559547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038998, 32.627480, 26.543613>,  <40.261528, 32.538101, 26.534054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038998, 32.627480, 26.543613>,  <39.668114, 32.776443, 26.559547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038998, 32.627480, 26.543613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185825, -0.549775, 0.814381,
		-0.325182, -0.747703, -0.578962,
		0.927214, -0.372408, -0.039835,
		40.317162, 32.515759, 26.531662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553249, 32.086632, 26.609531>,  <39.668114, 32.776443, 26.559547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553249, 32.086632, 26.609531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943035, 32.139023, 26.682476>,  <40.176907, 32.170460, 26.726242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943035, 32.139023, 26.682476>,  <39.553249, 32.086632, 26.609531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943035, 32.139023, 26.682476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037654, -0.705371, 0.707837,
		0.221345, -0.696632, -0.682430,
		0.974468, 0.130980, 0.182362,
		40.235374, 32.178318, 26.737185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782562, 31.403746, 26.812695>,  <39.553249, 32.086632, 26.609531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782562, 31.403746, 26.812695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088402, 31.612286, 26.964264>,  <40.271904, 31.737410, 27.055206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088402, 31.612286, 26.964264>,  <39.782562, 31.403746, 26.812695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088402, 31.612286, 26.964264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056020, -0.639462, 0.766779,
		0.642070, -0.565049, -0.518137,
		0.764597, 0.521352, 0.378925,
		40.317780, 31.768692, 27.077942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187748, 30.902382, 27.216635>,  <39.782562, 31.403746, 26.812695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187748, 30.902382, 27.216635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303711, 31.262318, 27.347015>,  <40.373291, 31.478279, 27.425243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303711, 31.262318, 27.347015>,  <40.187748, 30.902382, 27.216635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303711, 31.262318, 27.347015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014929, -0.344790, 0.938561,
		0.956938, -0.267231, -0.113392,
		0.289909, 0.899837, 0.325953,
		40.390682, 31.532269, 27.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805218, 30.804733, 27.580910>,  <40.187748, 30.902382, 27.216635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805218, 30.804733, 27.580910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639118, 31.142384, 27.716568>,  <40.539459, 31.344975, 27.797962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639118, 31.142384, 27.716568>,  <40.805218, 30.804733, 27.580910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639118, 31.142384, 27.716568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121622, -0.317947, 0.940275,
		0.901541, 0.431696, 0.029363,
		-0.415249, 0.844126, 0.339146,
		40.514542, 31.395620, 27.818312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174957, 30.916687, 28.076721>,  <40.805218, 30.804733, 27.580910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174957, 30.916687, 28.076721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841656, 31.127163, 28.144611>,  <40.641674, 31.253448, 28.185345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841656, 31.127163, 28.144611>,  <41.174957, 30.916687, 28.076721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841656, 31.127163, 28.144611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115685, -0.466115, 0.877128,
		0.540647, 0.711239, 0.449266,
		-0.833257, 0.526190, 0.169724,
		40.591679, 31.285021, 28.195528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149822, 30.969904, 28.923018>,  <41.174957, 30.916687, 28.076721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149822, 30.969904, 28.923018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786713, 31.089577, 28.805416>,  <40.568848, 31.161381, 28.734856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786713, 31.089577, 28.805416>,  <41.149822, 30.969904, 28.923018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786713, 31.089577, 28.805416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398729, -0.397839, 0.826281,
		0.130242, 0.867303, 0.480440,
		-0.907773, 0.299182, -0.294003,
		40.514381, 31.179331, 28.717215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788563, 31.367500, 29.440226>,  <41.149822, 30.969904, 28.923018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788563, 31.367500, 29.440226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490982, 31.230160, 29.210915>,  <40.312435, 31.147755, 29.073328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490982, 31.230160, 29.210915>,  <40.788563, 31.367500, 29.440226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490982, 31.230160, 29.210915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450428, -0.376048, 0.809755,
		-0.493609, 0.860638, 0.125107,
		-0.743952, -0.343351, -0.573276,
		40.267796, 31.127155, 29.038931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079609, 31.613710, 29.723185>,  <40.788563, 31.367500, 29.440226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079609, 31.613710, 29.723185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996540, 31.277782, 29.522556>,  <39.946697, 31.076225, 29.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996540, 31.277782, 29.522556>,  <40.079609, 31.613710, 29.723185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996540, 31.277782, 29.522556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496482, -0.351302, 0.793784,
		-0.842838, 0.413871, -0.343998,
		-0.207677, -0.839820, -0.501571,
		39.934238, 31.025837, 29.372086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521191, 31.403788, 30.034531>,  <40.079609, 31.613710, 29.723185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521191, 31.403788, 30.034531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664196, 31.086868, 29.836765>,  <39.750000, 30.896717, 29.718105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664196, 31.086868, 29.836765>,  <39.521191, 31.403788, 30.034531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664196, 31.086868, 29.836765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412912, -0.608951, 0.677261,
		-0.837667, -0.037982, -0.544859,
		0.357516, -0.792298, -0.494415,
		39.771450, 30.849178, 29.688440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073215, 30.898441, 30.234035>,  <39.521191, 31.403788, 30.034531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073215, 30.898441, 30.234035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380974, 30.709370, 30.062176>,  <39.565628, 30.595926, 29.959061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380974, 30.709370, 30.062176>,  <39.073215, 30.898441, 30.234035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380974, 30.709370, 30.062176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112423, -0.762328, 0.637352,
		-0.628797, -0.442075, -0.639674,
		0.769399, -0.472679, -0.429650,
		39.611794, 30.567566, 29.933281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829914, 30.229698, 30.174580>,  <39.073215, 30.898441, 30.234035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829914, 30.229698, 30.174580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227673, 30.195934, 30.149109>,  <39.466328, 30.175676, 30.133825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227673, 30.195934, 30.149109>,  <38.829914, 30.229698, 30.174580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227673, 30.195934, 30.149109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036116, -0.837168, 0.545752,
		-0.099377, -0.540393, -0.835524,
		0.994395, -0.084411, -0.063678,
		39.525990, 30.170610, 30.130005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955204, 29.499952, 30.021074>,  <38.829914, 30.229698, 30.174580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955204, 29.499952, 30.021074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267578, 29.677109, 30.197250>,  <39.455002, 29.783401, 30.302956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267578, 29.677109, 30.197250>,  <38.955204, 29.499952, 30.021074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267578, 29.677109, 30.197250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093689, -0.780223, 0.618445,
		0.617544, -0.441702, -0.650799,
		0.780936, 0.442890, 0.440440,
		39.501858, 29.809977, 30.329382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605083, 28.921661, 30.084656>,  <38.955204, 29.499952, 30.021074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605083, 28.921661, 30.084656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646389, 29.226097, 30.340805>,  <39.671173, 29.408758, 30.494495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646389, 29.226097, 30.340805>,  <39.605083, 28.921661, 30.084656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646389, 29.226097, 30.340805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170832, -0.647821, 0.742391,
		0.979874, 0.032734, -0.196915,
		0.103264, 0.761089, 0.640375,
		39.677368, 29.454424, 30.532917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137402, 28.694031, 30.498672>,  <39.605083, 28.921661, 30.084656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137402, 28.694031, 30.498672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947430, 28.976227, 30.709091>,  <39.833447, 29.145544, 30.835342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947430, 28.976227, 30.709091>,  <40.137402, 28.694031, 30.498672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947430, 28.976227, 30.709091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044987, -0.616446, 0.786111,
		0.878874, 0.349681, 0.324505,
		-0.474928, 0.705491, 0.526047,
		39.804951, 29.187874, 30.866905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215813, 28.498764, 31.153801>,  <40.137402, 28.694031, 30.498672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215813, 28.498764, 31.153801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975330, 28.801617, 31.256020>,  <39.831039, 28.983328, 31.317350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975330, 28.801617, 31.256020>,  <40.215813, 28.498764, 31.153801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975330, 28.801617, 31.256020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368405, -0.546398, 0.752148,
		0.709104, 0.358052, 0.607429,
		-0.601206, 0.757131, 0.255545,
		39.794968, 29.028755, 31.332684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333061, 28.674990, 31.814493>,  <40.215813, 28.498764, 31.153801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333061, 28.674990, 31.814493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953346, 28.779648, 31.744755>,  <39.725517, 28.842442, 31.702911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953346, 28.779648, 31.744755>,  <40.333061, 28.674990, 31.814493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953346, 28.779648, 31.744755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308205, -0.664746, 0.680531,
		0.062160, 0.699754, 0.711675,
		-0.949287, 0.261643, -0.174347,
		39.668560, 28.858141, 31.692451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015747, 28.915897, 32.420029>,  <40.333061, 28.674990, 31.814493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015747, 28.915897, 32.420029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756733, 28.738766, 32.171967>,  <39.601322, 28.632486, 32.023129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756733, 28.738766, 32.171967>,  <40.015747, 28.915897, 32.420029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756733, 28.738766, 32.171967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342309, -0.558059, 0.755907,
		-0.680822, 0.701764, 0.209781,
		-0.647538, -0.442828, -0.620159,
		39.562473, 28.605917, 31.985918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660213, 28.538942, 32.614273>,  <40.015747, 28.915897, 32.420029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660213, 28.538942, 32.614273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903748, 28.729168, 32.360294>,  <41.049870, 28.843304, 32.207909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903748, 28.729168, 32.360294>,  <40.660213, 28.538942, 32.614273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903748, 28.729168, 32.360294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792213, -0.322712, 0.517934,
		0.041407, -0.818349, -0.573228,
		0.608838, 0.475565, -0.634944,
		41.086399, 28.871838, 32.169811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123337, 28.029642, 32.263565>,  <40.660213, 28.538942, 32.614273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123337, 28.029642, 32.263565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298626, 28.388767, 32.246181>,  <41.403801, 28.604242, 32.235752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298626, 28.388767, 32.246181>,  <41.123337, 28.029642, 32.263565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298626, 28.388767, 32.246181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867195, -0.409572, 0.283236,
		0.236492, -0.161813, -0.958065,
		0.438228, 0.897813, -0.043463,
		41.430096, 28.658112, 32.233143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485504, 27.239780, 32.375546>,  <41.123337, 28.029642, 32.263565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485504, 27.239780, 32.375546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548428, 26.853397, 32.293392>,  <41.586182, 26.621569, 32.244099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548428, 26.853397, 32.293392>,  <41.485504, 27.239780, 32.375546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548428, 26.853397, 32.293392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968857, -0.191231, 0.157311,
		-0.191231, 0.174239, -0.965956,
		-0.157311, 0.965956, 0.205382,
		41.595619, 26.563610, 32.231777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202690, 27.080666, 31.718422>,  <41.485504, 27.239780, 32.375546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202690, 27.080666, 31.718422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178833, 26.748840, 31.940510>,  <41.164520, 26.549746, 32.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178833, 26.748840, 31.940510>,  <41.202690, 27.080666, 31.718422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178833, 26.748840, 31.940510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966271, -0.091615, -0.240681,
		0.250527, -0.550846, -0.796119,
		-0.059641, -0.829564, 0.555218,
		41.160942, 26.499971, 32.107075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728012, 26.572916, 31.378296>,  <41.202690, 27.080666, 31.718422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728012, 26.572916, 31.378296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752750, 26.416847, 31.745762>,  <40.767593, 26.323206, 31.966242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752750, 26.416847, 31.745762>,  <40.728012, 26.572916, 31.378296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752750, 26.416847, 31.745762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888310, -0.441169, -0.127569,
		0.455060, -0.808168, -0.373877,
		0.061846, -0.390171, 0.918663,
		40.771305, 26.299795, 32.021362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410763, 26.028429, 30.990793>,  <40.728012, 26.572916, 31.378296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410763, 26.028429, 30.990793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026131, 25.926506, 31.031666>,  <39.795353, 25.865353, 31.056189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026131, 25.926506, 31.031666>,  <40.410763, 26.028429, 30.990793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026131, 25.926506, 31.031666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116803, 0.042887, -0.992229,
		0.248447, -0.966040, -0.071002,
		-0.961578, -0.254809, 0.102181,
		39.737656, 25.850063, 31.062321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140415, 25.339006, 30.608717>,  <40.410763, 26.028429, 30.990793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140415, 25.339006, 30.608717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852383, 25.614681, 30.640991>,  <39.679565, 25.780087, 30.660355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852383, 25.614681, 30.640991>,  <40.140415, 25.339006, 30.608717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852383, 25.614681, 30.640991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016962, 0.098759, -0.994967,
		-0.693687, -0.717821, -0.059424,
		-0.720077, 0.689187, 0.080683,
		39.636360, 25.821438, 30.665195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810047, 25.396355, 29.961349>,  <40.140415, 25.339006, 30.608717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810047, 25.396355, 29.961349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618916, 25.684910, 30.161861>,  <39.504238, 25.858044, 30.282169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618916, 25.684910, 30.161861>,  <39.810047, 25.396355, 29.961349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618916, 25.684910, 30.161861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234458, 0.445212, -0.864185,
		-0.846588, -0.530459, -0.043599,
		-0.477826, 0.721387, 0.501281,
		39.475567, 25.901325, 30.312246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085201, 25.494762, 29.774807>,  <39.810047, 25.396355, 29.961349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085201, 25.494762, 29.774807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296227, 25.820042, 29.873096>,  <39.422844, 26.015209, 29.932070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296227, 25.820042, 29.873096>,  <39.085201, 25.494762, 29.774807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296227, 25.820042, 29.873096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148090, 0.372861, -0.915994,
		-0.836506, 0.446859, 0.317136,
		0.527568, 0.813198, 0.245725,
		39.454498, 26.064001, 29.946814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746410, 25.936958, 29.375572>,  <39.085201, 25.494762, 29.774807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746410, 25.936958, 29.375572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111580, 26.078514, 29.456890>,  <39.330681, 26.163448, 29.505680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111580, 26.078514, 29.456890>,  <38.746410, 25.936958, 29.375572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111580, 26.078514, 29.456890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064015, 0.616114, -0.785051,
		-0.403073, 0.703679, 0.585121,
		0.912926, 0.353890, 0.203293,
		39.385456, 26.184681, 29.517878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702457, 26.653797, 29.393425>,  <38.746410, 25.936958, 29.375572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702457, 26.653797, 29.393425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100395, 26.634922, 29.357521>,  <39.339157, 26.623596, 29.335979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100395, 26.634922, 29.357521>,  <38.702457, 26.653797, 29.393425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100395, 26.634922, 29.357521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033473, 0.682714, -0.729919,
		0.095723, 0.729161, 0.677615,
		0.994845, -0.047188, -0.089759,
		39.398849, 26.620766, 29.330593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847660, 27.326097, 29.429274>,  <38.702457, 26.653797, 29.393425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847660, 27.326097, 29.429274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153969, 27.135368, 29.256653>,  <39.337753, 27.020931, 29.153080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153969, 27.135368, 29.256653>,  <38.847660, 27.326097, 29.429274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153969, 27.135368, 29.256653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031584, 0.642341, -0.765768,
		0.642341, 0.600030, 0.476824,
		0.765768, -0.476824, -0.431554,
		39.383698, 26.992321, 29.127186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332771, 27.864182, 29.225811>,  <38.847660, 27.326097, 29.429274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332771, 27.864182, 29.225811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413513, 27.551594, 28.989655>,  <39.461960, 27.364040, 28.847961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413513, 27.551594, 28.989655>,  <39.332771, 27.864182, 29.225811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413513, 27.551594, 28.989655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071430, 0.589446, -0.804643,
		0.976806, 0.204597, 0.063165,
		0.201859, -0.781469, -0.590389,
		39.474072, 27.317154, 28.812538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767334, 28.133886, 28.806004>,  <39.332771, 27.864182, 29.225811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767334, 28.133886, 28.806004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615227, 27.812702, 28.622417>,  <39.523964, 27.619991, 28.512266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615227, 27.812702, 28.622417>,  <39.767334, 28.133886, 28.806004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615227, 27.812702, 28.622417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040286, 0.510156, -0.859138,
		0.924000, -0.308210, -0.226342,
		-0.380264, -0.802962, -0.458967,
		39.501148, 27.571814, 28.484728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253677, 27.883690, 28.383224>,  <39.767334, 28.133886, 28.806004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253677, 27.883690, 28.383224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902847, 27.763229, 28.233536>,  <39.692348, 27.690952, 28.143723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902847, 27.763229, 28.233536>,  <40.253677, 27.883690, 28.383224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902847, 27.763229, 28.233536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152479, 0.564219, -0.811423,
		0.455503, -0.768742, -0.448946,
		-0.877079, -0.301151, -0.374221,
		39.639725, 27.672884, 28.121269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473885, 27.824068, 27.629850>,  <40.253677, 27.883690, 28.383224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473885, 27.824068, 27.629850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078072, 27.848328, 27.682228>,  <39.840584, 27.862885, 27.713655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078072, 27.848328, 27.682228>,  <40.473885, 27.824068, 27.629850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078072, 27.848328, 27.682228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055640, 0.676880, -0.733988,
		-0.133150, -0.733591, -0.666420,
		-0.989533, 0.060651, 0.130944,
		39.781212, 27.866524, 27.721512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196022, 27.746059, 27.004906>,  <40.473885, 27.824068, 27.629850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196022, 27.746059, 27.004906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871586, 27.882824, 27.194736>,  <39.676922, 27.964882, 27.308636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871586, 27.882824, 27.194736>,  <40.196022, 27.746059, 27.004906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871586, 27.882824, 27.194736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195403, 0.606355, -0.770812,
		-0.551311, -0.717935, -0.425001,
		-0.811095, 0.341910, 0.474577,
		39.628258, 27.985397, 27.337109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578564, 27.838263, 26.481535>,  <40.196022, 27.746059, 27.004906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578564, 27.838263, 26.481535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523029, 28.086346, 26.790356>,  <39.489708, 28.235195, 26.975649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523029, 28.086346, 26.790356>,  <39.578564, 27.838263, 26.481535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523029, 28.086346, 26.790356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181872, 0.750375, -0.635500,
		-0.973472, -0.228644, 0.008620,
		-0.138835, 0.620209, 0.772053,
		39.481380, 28.272408, 27.021971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975010, 28.182417, 26.324490>,  <39.578564, 27.838263, 26.481535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975010, 28.182417, 26.324490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173119, 28.414192, 26.583397>,  <39.291985, 28.553257, 26.738741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173119, 28.414192, 26.583397>,  <38.975010, 28.182417, 26.324490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173119, 28.414192, 26.583397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134557, 0.787244, -0.601782,
		-0.858253, 0.210953, 0.467869,
		0.495275, 0.579436, 0.647269,
		39.321701, 28.588022, 26.777578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498432, 28.697502, 26.433931>,  <38.975010, 28.182417, 26.324490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498432, 28.697502, 26.433931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834858, 28.863281, 26.572987>,  <39.036713, 28.962749, 26.656420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834858, 28.863281, 26.572987>,  <38.498432, 28.697502, 26.433931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834858, 28.863281, 26.572987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252890, 0.869349, -0.424593,
		-0.478189, 0.269195, 0.835984,
		0.841060, 0.414448, 0.347636,
		39.087177, 28.987616, 26.677277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263935, 29.280060, 26.710506>,  <38.498432, 28.697502, 26.433931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263935, 29.280060, 26.710506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654251, 29.359966, 26.674881>,  <38.888439, 29.407909, 26.653505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654251, 29.359966, 26.674881>,  <38.263935, 29.280060, 26.710506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654251, 29.359966, 26.674881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216491, 0.824160, -0.523347,
		-0.031142, 0.529957, 0.847452,
		0.975788, 0.199764, -0.089065,
		38.946987, 29.419895, 26.648161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328186, 29.941034, 26.743263>,  <38.263935, 29.280060, 26.710506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328186, 29.941034, 26.743263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687305, 29.870346, 26.581902>,  <38.902775, 29.827934, 26.485085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687305, 29.870346, 26.581902>,  <38.328186, 29.941034, 26.743263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687305, 29.870346, 26.581902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102747, 0.806646, -0.582035,
		0.428260, 0.563996, 0.706046,
		0.897795, -0.176718, -0.403403,
		38.956646, 29.817331, 26.460880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741138, 30.614450, 26.791239>,  <38.328186, 29.941034, 26.743263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741138, 30.614450, 26.791239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865337, 30.394566, 26.481037>,  <38.939857, 30.262634, 26.294916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865337, 30.394566, 26.481037>,  <38.741138, 30.614450, 26.791239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865337, 30.394566, 26.481037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206511, 0.757333, -0.619516,
		0.927872, 0.352508, 0.121627,
		0.310496, -0.549714, -0.775504,
		38.958485, 30.229650, 26.248386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231731, 30.976093, 26.399797>,  <38.741138, 30.614450, 26.791239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231731, 30.976093, 26.399797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131748, 30.693642, 26.134800>,  <39.071758, 30.524170, 25.975801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131748, 30.693642, 26.134800>,  <39.231731, 30.976093, 26.399797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131748, 30.693642, 26.134800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107465, 0.700220, -0.705793,
		0.962274, -0.105223, -0.250910,
		-0.249958, -0.706130, -0.662496,
		39.056759, 30.481802, 25.936050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567268, 31.190382, 25.797426>,  <39.231731, 30.976093, 26.399797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567268, 31.190382, 25.797426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312538, 30.919209, 25.650528>,  <39.159702, 30.756504, 25.562389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312538, 30.919209, 25.650528>,  <39.567268, 31.190382, 25.797426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312538, 30.919209, 25.650528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045640, 0.442333, -0.895689,
		0.769660, -0.587154, -0.250746,
		-0.636820, -0.677932, -0.367243,
		39.121490, 30.715830, 25.540356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848721, 31.069937, 25.192827>,  <39.567268, 31.190382, 25.797426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848721, 31.069937, 25.192827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466366, 30.955235, 25.167389>,  <39.236954, 30.886414, 25.152126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466366, 30.955235, 25.167389>,  <39.848721, 31.069937, 25.192827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466366, 30.955235, 25.167389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074032, 0.444734, -0.892597,
		0.284240, -0.848517, -0.446347,
		-0.955890, -0.286756, -0.063594,
		39.179600, 30.869207, 25.148310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793083, 30.843420, 24.514532>,  <39.848721, 31.069937, 25.192827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793083, 30.843420, 24.514532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423824, 30.932652, 24.639778>,  <39.202271, 30.986191, 24.714926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423824, 30.932652, 24.639778>,  <39.793083, 30.843420, 24.514532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423824, 30.932652, 24.639778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133351, 0.578080, -0.805010,
		-0.360585, -0.784895, -0.503903,
		-0.923145, 0.223079, 0.313113,
		39.146881, 30.999575, 24.733711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376926, 30.948471, 23.899868>,  <39.793083, 30.843420, 24.514532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376926, 30.948471, 23.899868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126282, 31.125565, 24.156414>,  <38.975895, 31.231821, 24.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126282, 31.125565, 24.156414>,  <39.376926, 30.948471, 23.899868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126282, 31.125565, 24.156414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287004, 0.634035, -0.718073,
		-0.724562, -0.634025, -0.270226,
		-0.626609, 0.442732, 0.641365,
		38.938297, 31.258385, 24.348824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868851, 31.094828, 23.444054>,  <39.376926, 30.948471, 23.899868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868851, 31.094828, 23.444054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800053, 31.324219, 23.764439>,  <38.758774, 31.461853, 23.956671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800053, 31.324219, 23.764439>,  <38.868851, 31.094828, 23.444054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800053, 31.324219, 23.764439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355070, 0.722337, -0.593426,
		-0.918881, -0.386465, 0.079385,
		-0.171996, 0.573476, 0.800964,
		38.748455, 31.496262, 24.004728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218864, 31.272657, 23.311716>,  <38.868851, 31.094828, 23.444054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218864, 31.272657, 23.311716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400272, 31.529198, 23.559261>,  <38.509117, 31.683123, 23.707788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400272, 31.529198, 23.559261>,  <38.218864, 31.272657, 23.311716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400272, 31.529198, 23.559261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339479, 0.766343, -0.545411,
		-0.824060, 0.037264, 0.565276,
		0.453519, 0.641351, 0.618862,
		38.536327, 31.721603, 23.744921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695808, 31.754370, 23.362944>,  <38.218864, 31.272657, 23.311716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695808, 31.754370, 23.362944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075428, 31.879753, 23.375885>,  <38.303200, 31.954983, 23.383650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075428, 31.879753, 23.375885>,  <37.695808, 31.754370, 23.362944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075428, 31.879753, 23.375885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267369, 0.855317, -0.443788,
		-0.166781, 0.412527, 0.895548,
		0.949051, 0.313457, 0.032354,
		38.360142, 31.973791, 23.385592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756866, 32.311996, 23.775093>,  <37.695808, 31.754370, 23.362944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756866, 32.311996, 23.775093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027103, 32.291904, 23.480869>,  <38.189247, 32.279850, 23.304335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027103, 32.291904, 23.480869>,  <37.756866, 32.311996, 23.775093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027103, 32.291904, 23.480869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419855, 0.793890, -0.439842,
		0.606047, 0.605983, 0.515258,
		0.675595, -0.050231, -0.735560,
		38.229782, 32.276836, 23.260201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159935, 33.025772, 23.916803>,  <37.756866, 32.311996, 23.775093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159935, 33.025772, 23.916803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079128, 32.848072, 23.567673>,  <38.030643, 32.741451, 23.358194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079128, 32.848072, 23.567673>,  <38.159935, 33.025772, 23.916803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079128, 32.848072, 23.567673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696234, 0.691927, -0.191035,
		0.688802, 0.569102, -0.449083,
		-0.202014, -0.444252, -0.872829,
		38.018524, 32.714798, 23.305824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940636, 33.568272, 23.517454>,  <38.159935, 33.025772, 23.916803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940636, 33.568272, 23.517454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737026, 33.247482, 23.392399>,  <37.614861, 33.055008, 23.317366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737026, 33.247482, 23.392399>,  <37.940636, 33.568272, 23.517454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737026, 33.247482, 23.392399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859837, 0.490511, 0.141703,
		0.039711, 0.340947, -0.939243,
		-0.509022, -0.801969, -0.312637,
		37.584320, 33.006893, 23.298607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564629, 33.738388, 22.832678>,  <37.940636, 33.568272, 23.517454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564629, 33.738388, 22.832678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390671, 33.497623, 23.100578>,  <37.286297, 33.353165, 23.261318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390671, 33.497623, 23.100578>,  <37.564629, 33.738388, 22.832678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390671, 33.497623, 23.100578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738577, 0.663925, 0.117084,
		-0.515139, -0.443743, -0.733297,
		-0.434899, -0.601910, 0.669752,
		37.260201, 33.317051, 23.301504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043083, 33.954372, 22.335083>,  <37.564629, 33.738388, 22.832678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043083, 33.954372, 22.335083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296753, 33.690281, 22.174129>,  <37.448956, 33.531826, 22.077557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296753, 33.690281, 22.174129>,  <37.043083, 33.954372, 22.335083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296753, 33.690281, 22.174129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458833, -0.740239, 0.491445,
		-0.622328, -0.127036, -0.772379,
		0.634177, -0.660233, -0.402383,
		37.487007, 33.492210, 22.053415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679863, 33.523621, 21.996040>,  <37.043083, 33.954372, 22.335083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679863, 33.523621, 21.996040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015827, 33.347546, 22.123028>,  <37.217407, 33.241901, 22.199221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015827, 33.347546, 22.123028>,  <36.679863, 33.523621, 21.996040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015827, 33.347546, 22.123028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517076, -0.826727, 0.221712,
		0.164867, -0.350374, -0.921985,
		0.839912, -0.440183, 0.317470,
		37.267799, 33.215492, 22.218269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305290, 32.848385, 22.017895>,  <36.679863, 33.523621, 21.996040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305290, 32.848385, 22.017895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169632, 32.953003, 22.379353>,  <36.088238, 33.015774, 22.596228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169632, 32.953003, 22.379353>,  <36.305290, 32.848385, 22.017895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169632, 32.953003, 22.379353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203932, -0.958172, 0.200793,
		0.918362, -0.116182, 0.378302,
		-0.339150, 0.261548, 0.903643,
		36.067886, 33.031467, 22.650446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320251, 32.261246, 22.416647>,  <36.305290, 32.848385, 22.017895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320251, 32.261246, 22.416647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083469, 32.484211, 22.649502>,  <35.941399, 32.617989, 22.789215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083469, 32.484211, 22.649502>,  <36.320251, 32.261246, 22.416647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083469, 32.484211, 22.649502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347927, -0.828244, 0.439270,
		0.727004, 0.057488, 0.684222,
		-0.591956, 0.557411, 0.582136,
		35.905884, 32.651436, 22.824142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396801, 32.020775, 23.044249>,  <36.320251, 32.261246, 22.416647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396801, 32.020775, 23.044249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048153, 32.215919, 23.063320>,  <35.838966, 32.333008, 23.074764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048153, 32.215919, 23.063320>,  <36.396801, 32.020775, 23.044249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048153, 32.215919, 23.063320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434333, -0.813735, 0.386251,
		0.227236, 0.315955, 0.921160,
		-0.871618, 0.487861, 0.047680,
		35.786667, 32.362278, 23.077623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146141, 31.809088, 23.723753>,  <36.396801, 32.020775, 23.044249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146141, 31.809088, 23.723753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850166, 31.932037, 23.484417>,  <35.672581, 32.005806, 23.340815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850166, 31.932037, 23.484417>,  <36.146141, 31.809088, 23.723753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850166, 31.932037, 23.484417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574530, -0.751415, 0.324485,
		-0.349863, 0.583863, 0.732598,
		-0.739940, 0.307374, -0.598339,
		35.628185, 32.024250, 23.304914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583321, 31.864021, 24.158018>,  <36.146141, 31.809088, 23.723753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583321, 31.864021, 24.158018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431908, 31.836193, 23.788830>,  <35.341061, 31.819496, 23.567318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431908, 31.836193, 23.788830>,  <35.583321, 31.864021, 24.158018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431908, 31.836193, 23.788830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524599, -0.805416, 0.275862,
		-0.762567, 0.588612, 0.268378,
		-0.378532, -0.069573, -0.922970,
		35.318348, 31.815321, 23.511938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977112, 31.655464, 24.344175>,  <35.583321, 31.864021, 24.158018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977112, 31.655464, 24.344175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992306, 31.592926, 23.949387>,  <35.001423, 31.555403, 23.712513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992306, 31.592926, 23.949387>,  <34.977112, 31.655464, 24.344175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992306, 31.592926, 23.949387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555046, -0.824612, 0.109265,
		-0.830952, 0.543665, -0.118098,
		0.037981, -0.156344, -0.986972,
		35.003700, 31.546022, 23.653296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314674, 31.518490, 24.055300>,  <34.977112, 31.655464, 24.344175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314674, 31.518490, 24.055300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540554, 31.366909, 23.762039>,  <34.676083, 31.275961, 23.586082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540554, 31.366909, 23.762039>,  <34.314674, 31.518490, 24.055300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540554, 31.366909, 23.762039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480377, -0.873278, 0.081379,
		-0.671083, 0.306235, -0.675180,
		0.564699, -0.378953, -0.733150,
		34.709965, 31.253223, 23.542093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814407, 31.148268, 23.589809>,  <34.314674, 31.518490, 24.055300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814407, 31.148268, 23.589809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172974, 30.975346, 23.550728>,  <34.388115, 30.871592, 23.527279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172974, 30.975346, 23.550728>,  <33.814407, 31.148268, 23.589809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172974, 30.975346, 23.550728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412273, -0.894250, 0.174204,
		-0.162680, -0.115880, -0.979851,
		0.896419, -0.432306, -0.097703,
		34.441898, 30.845654, 23.521418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673843, 30.489859, 23.186426>,  <33.814407, 31.148268, 23.589809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673843, 30.489859, 23.186426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013584, 30.429604, 23.388779>,  <34.217426, 30.393450, 23.510189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013584, 30.429604, 23.388779>,  <33.673843, 30.489859, 23.186426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013584, 30.429604, 23.388779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310014, -0.918053, 0.247122,
		0.427199, -0.366723, -0.826448,
		0.849348, -0.150640, 0.505880,
		34.268387, 30.384411, 23.540543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637501, 29.802984, 23.209684>,  <33.673843, 30.489859, 23.186426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637501, 29.802984, 23.209684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918854, 29.878475, 23.483803>,  <34.087666, 29.923771, 23.648273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918854, 29.878475, 23.483803>,  <33.637501, 29.802984, 23.209684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918854, 29.878475, 23.483803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115122, -0.921131, 0.371839,
		0.701423, -0.340439, -0.626184,
		0.703386, 0.188729, 0.685295,
		34.129871, 29.935095, 23.689392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069767, 29.222857, 23.138151>,  <33.637501, 29.802984, 23.209684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069767, 29.222857, 23.138151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147430, 29.385551, 23.495220>,  <34.194027, 29.483168, 23.709461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147430, 29.385551, 23.495220>,  <34.069767, 29.222857, 23.138151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147430, 29.385551, 23.495220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118007, -0.893699, 0.432870,
		0.973846, -0.189388, -0.125522,
		0.194159, 0.406736, 0.892675,
		34.205677, 29.507572, 23.763023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556610, 28.772728, 23.522423>,  <34.069767, 29.222857, 23.138151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556610, 28.772728, 23.522423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350296, 28.961967, 23.808121>,  <34.226509, 29.075512, 23.979540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350296, 28.961967, 23.808121>,  <34.556610, 28.772728, 23.522423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350296, 28.961967, 23.808121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029979, -0.823220, 0.566930,
		0.856196, 0.313824, 0.410418,
		-0.515781, 0.473099, 0.714246,
		34.195560, 29.103897, 24.022394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761757, 28.478024, 24.113895>,  <34.556610, 28.772728, 23.522423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761757, 28.478024, 24.113895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410320, 28.639851, 24.215401>,  <34.199459, 28.736948, 24.276304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410320, 28.639851, 24.215401>,  <34.761757, 28.478024, 24.113895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410320, 28.639851, 24.215401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179259, -0.771889, 0.609962,
		0.442651, 0.490419, 0.750699,
		-0.878593, 0.404570, 0.253765,
		34.146744, 28.761221, 24.291531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725288, 28.354002, 24.922007>,  <34.761757, 28.478024, 24.113895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725288, 28.354002, 24.922007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359074, 28.460510, 24.801407>,  <34.139347, 28.524414, 24.729048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359074, 28.460510, 24.801407>,  <34.725288, 28.354002, 24.922007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359074, 28.460510, 24.801407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397518, -0.484361, 0.779342,
		0.061481, 0.833364, 0.549295,
		-0.915532, 0.266269, -0.301499,
		34.084415, 28.540390, 24.710957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452110, 28.680220, 25.453030>,  <34.725288, 28.354002, 24.922007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452110, 28.680220, 25.453030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154156, 28.525703, 25.235432>,  <33.975384, 28.432995, 25.104874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154156, 28.525703, 25.235432>,  <34.452110, 28.680220, 25.453030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154156, 28.525703, 25.235432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216762, -0.631003, 0.744882,
		-0.631003, 0.672767, 0.386290,
		-0.744882, -0.386290, -0.543995,
		33.930691, 28.409817, 25.072233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988564, 28.560955, 25.967758>,  <34.452110, 28.680220, 25.453030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988564, 28.560955, 25.967758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850212, 28.331406, 25.670830>,  <33.767200, 28.193676, 25.492672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850212, 28.331406, 25.670830>,  <33.988564, 28.560955, 25.967758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850212, 28.331406, 25.670830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253704, -0.704479, 0.662830,
		-0.903329, 0.417586, 0.098068,
		-0.345875, -0.573873, -0.742320,
		33.746449, 28.159245, 25.448133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406281, 28.224459, 26.224112>,  <33.988564, 28.560955, 25.967758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406281, 28.224459, 26.224112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500443, 27.991539, 25.912853>,  <33.556938, 27.851788, 25.726097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500443, 27.991539, 25.912853>,  <33.406281, 28.224459, 26.224112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500443, 27.991539, 25.912853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246292, -0.810254, 0.531817,
		-0.940174, 0.066461, -0.334151,
		0.235402, -0.582299, -0.778148,
		33.571064, 27.816849, 25.679409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917484, 27.807579, 26.151356>,  <33.406281, 28.224459, 26.224112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917484, 27.807579, 26.151356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236599, 27.630722, 25.987381>,  <33.428066, 27.524609, 25.888996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236599, 27.630722, 25.987381>,  <32.917484, 27.807579, 26.151356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236599, 27.630722, 25.987381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227834, -0.850551, 0.473978,
		-0.558235, -0.284737, -0.779294,
		0.797788, -0.442141, -0.409935,
		33.475937, 27.498079, 25.864401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719402, 27.070625, 26.084688>,  <32.917484, 27.807579, 26.151356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719402, 27.070625, 26.084688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114700, 27.077209, 26.023899>,  <33.351879, 27.081160, 25.987425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114700, 27.077209, 26.023899>,  <32.719402, 27.070625, 26.084688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114700, 27.077209, 26.023899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045306, -0.981057, 0.188345,
		-0.145994, -0.193017, -0.970273,
		0.988248, 0.016462, -0.151973,
		33.411175, 27.082148, 25.978308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818081, 26.619738, 25.543316>,  <32.719402, 27.070625, 26.084688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818081, 26.619738, 25.543316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159134, 26.646606, 25.750587>,  <33.363766, 26.662727, 25.874950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159134, 26.646606, 25.750587>,  <32.818081, 26.619738, 25.543316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159134, 26.646606, 25.750587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008013, -0.989904, 0.141511,
		0.522451, -0.124809, -0.843485,
		0.852632, 0.067173, 0.518177,
		33.414925, 26.666758, 25.906040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975487, 25.978205, 25.467125>,  <32.818081, 26.619738, 25.543316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975487, 25.978205, 25.467125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214188, 26.141567, 25.743412>,  <33.357407, 26.239586, 25.909184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214188, 26.141567, 25.743412>,  <32.975487, 25.978205, 25.467125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214188, 26.141567, 25.743412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180269, -0.907017, 0.380556,
		0.781915, -0.102582, -0.614887,
		0.596751, 0.408408, 0.690718,
		33.393211, 26.264090, 25.950628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514469, 25.446537, 25.540592>,  <32.975487, 25.978205, 25.467125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514469, 25.446537, 25.540592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530811, 25.695431, 25.853298>,  <33.540615, 25.844767, 26.040922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530811, 25.695431, 25.853298>,  <33.514469, 25.446537, 25.540592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530811, 25.695431, 25.853298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042474, -0.782792, 0.620833,
		0.998262, 0.007843, -0.058407,
		0.040852, 0.622235, 0.781764,
		33.543068, 25.882101, 26.087828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107403, 25.164461, 25.907879>,  <33.514469, 25.446537, 25.540592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107403, 25.164461, 25.907879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864342, 25.366665, 26.152901>,  <33.718506, 25.487988, 26.299913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864342, 25.366665, 26.152901>,  <34.107403, 25.164461, 25.907879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864342, 25.366665, 26.152901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109537, -0.710566, 0.695052,
		0.786616, 0.489445, 0.376402,
		-0.607648, 0.505509, 0.612555,
		33.682049, 25.518318, 26.336668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495655, 25.153770, 26.578871>,  <34.107403, 25.164461, 25.907879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495655, 25.153770, 26.578871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107445, 25.218483, 26.650326>,  <33.874519, 25.257311, 26.693199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107445, 25.218483, 26.650326>,  <34.495655, 25.153770, 26.578871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107445, 25.218483, 26.650326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042648, -0.614220, 0.787981,
		0.237204, 0.772372, 0.589216,
		-0.970523, 0.161783, 0.178636,
		33.816288, 25.267017, 26.703917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429173, 25.335091, 27.277889>,  <34.495655, 25.153770, 26.578871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429173, 25.335091, 27.277889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049938, 25.233505, 27.201321>,  <33.822399, 25.172554, 27.155380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049938, 25.233505, 27.201321>,  <34.429173, 25.335091, 27.277889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049938, 25.233505, 27.201321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039935, -0.502074, 0.863902,
		-0.315507, 0.826695, 0.465866,
		-0.948083, -0.253963, -0.191422,
		33.765514, 25.157316, 27.143894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985325, 25.564674, 27.957033>,  <34.429173, 25.335091, 27.277889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985325, 25.564674, 27.957033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782009, 25.290821, 27.748066>,  <33.660019, 25.126509, 27.622686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782009, 25.290821, 27.748066>,  <33.985325, 25.564674, 27.957033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782009, 25.290821, 27.748066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113610, -0.548015, 0.828717,
		-0.853662, 0.480577, 0.200767,
		-0.508286, -0.684635, -0.522418,
		33.629524, 25.085430, 27.591341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376553, 25.315742, 28.388588>,  <33.985325, 25.564674, 27.957033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376553, 25.315742, 28.388588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406246, 25.027870, 28.112457>,  <33.424061, 24.855146, 27.946779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406246, 25.027870, 28.112457>,  <33.376553, 25.315742, 28.388588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406246, 25.027870, 28.112457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292204, -0.677551, 0.674938,
		-0.953471, 0.151614, -0.260589,
		0.074232, -0.719679, -0.690327,
		33.428516, 24.811966, 27.905359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710575, 25.044636, 28.302679>,  <33.376553, 25.315742, 28.388588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710575, 25.044636, 28.302679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961613, 24.755386, 28.187286>,  <33.112236, 24.581837, 28.118052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961613, 24.755386, 28.187286>,  <32.710575, 25.044636, 28.302679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961613, 24.755386, 28.187286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402764, -0.618665, 0.674563,
		-0.666266, -0.307159, -0.679516,
		0.627591, -0.723124, -0.288483,
		33.149891, 24.538450, 28.100742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362328, 24.458088, 28.048988>,  <32.710575, 25.044636, 28.302679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362328, 24.458088, 28.048988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718620, 24.319782, 28.167007>,  <32.932396, 24.236799, 28.237818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718620, 24.319782, 28.167007>,  <32.362328, 24.458088, 28.048988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718620, 24.319782, 28.167007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447334, -0.781937, 0.434127,
		0.080603, -0.518673, -0.851165,
		0.890727, -0.345764, 0.295047,
		32.985840, 24.216053, 28.255522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214172, 23.786131, 27.915775>,  <32.362328, 24.458088, 28.048988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214172, 23.786131, 27.915775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538418, 23.790359, 28.149971>,  <32.732964, 23.792896, 28.290489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538418, 23.790359, 28.149971>,  <32.214172, 23.786131, 27.915775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538418, 23.790359, 28.149971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388173, -0.738901, 0.550769,
		0.438442, -0.673730, -0.594858,
		0.810611, 0.010573, 0.585490,
		32.781601, 23.793531, 28.325619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368835, 23.139372, 27.879206>,  <32.214172, 23.786131, 27.915775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368835, 23.139372, 27.879206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564964, 23.282852, 28.196926>,  <32.682640, 23.368940, 28.387558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564964, 23.282852, 28.196926>,  <32.368835, 23.139372, 27.879206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564964, 23.282852, 28.196926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261387, -0.808899, 0.526648,
		0.831420, -0.465848, -0.302862,
		0.490323, 0.358702, 0.794302,
		32.712063, 23.390463, 28.435217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849781, 22.694426, 28.078602>,  <32.368835, 23.139372, 27.879206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849781, 22.694426, 28.078602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809402, 22.902096, 28.418076>,  <32.785175, 23.026699, 28.621759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809402, 22.902096, 28.418076>,  <32.849781, 22.694426, 28.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809402, 22.902096, 28.418076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171755, -0.849328, 0.499142,
		0.979954, -0.095379, 0.174908,
		-0.100947, 0.519177, 0.848684,
		32.779118, 23.057850, 28.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279461, 22.431799, 28.491199>,  <32.849781, 22.694426, 28.078602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279461, 22.431799, 28.491199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001266, 22.594494, 28.728134>,  <32.834351, 22.692112, 28.870295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001266, 22.594494, 28.728134>,  <33.279461, 22.431799, 28.491199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001266, 22.594494, 28.728134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081837, -0.863835, 0.497083,
		0.713863, 0.297240, 0.634073,
		-0.695488, 0.406739, 0.592334,
		32.792622, 22.716516, 28.905834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384113, 22.181482, 29.219084>,  <33.279461, 22.431799, 28.491199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384113, 22.181482, 29.219084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005741, 22.309669, 29.199024>,  <32.778717, 22.386581, 29.186989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005741, 22.309669, 29.199024>,  <33.384113, 22.181482, 29.219084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005741, 22.309669, 29.199024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273564, -0.705107, 0.654207,
		0.174292, 0.632554, 0.754651,
		-0.945931, 0.320468, -0.050149,
		32.721962, 22.405809, 29.183979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241074, 22.399109, 29.865959>,  <33.384113, 22.181482, 29.219084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241074, 22.399109, 29.865959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883068, 22.316883, 29.707619>,  <32.668266, 22.267548, 29.612614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883068, 22.316883, 29.707619>,  <33.241074, 22.399109, 29.865959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883068, 22.316883, 29.707619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251043, -0.501415, 0.827986,
		-0.368690, 0.840433, 0.397166,
		-0.895011, -0.205564, -0.395851,
		32.614563, 22.255215, 29.588863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689281, 22.453117, 30.455765>,  <33.241074, 22.399109, 29.865959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689281, 22.453117, 30.455765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508232, 22.246841, 30.164780>,  <32.399605, 22.123075, 29.990189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508232, 22.246841, 30.164780>,  <32.689281, 22.453117, 30.455765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508232, 22.246841, 30.164780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521790, -0.508383, 0.685041,
		-0.723098, 0.689645, -0.038978,
		-0.452619, -0.515691, -0.727461,
		32.372448, 22.092134, 29.946541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047886, 22.470963, 30.631548>,  <32.689281, 22.453117, 30.455765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047886, 22.470963, 30.631548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096497, 22.152992, 30.393784>,  <32.125664, 21.962210, 30.251125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096497, 22.152992, 30.393784>,  <32.047886, 22.470963, 30.631548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096497, 22.152992, 30.393784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314267, -0.598853, 0.736622,
		-0.941525, 0.097287, -0.322593,
		0.121523, -0.794928, -0.594409,
		32.132954, 21.914515, 30.215462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424122, 22.023561, 30.640965>,  <32.047886, 22.470963, 30.631548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424122, 22.023561, 30.640965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719727, 21.785213, 30.515232>,  <31.897089, 21.642204, 30.439793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719727, 21.785213, 30.515232>,  <31.424122, 22.023561, 30.640965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719727, 21.785213, 30.515232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320781, -0.721522, 0.613601,
		-0.592422, -0.352627, -0.724356,
		0.739010, -0.595870, -0.314329,
		31.941429, 21.606453, 30.420933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018932, 21.354734, 30.753941>,  <31.424122, 22.023561, 30.640965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018932, 21.354734, 30.753941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412643, 21.301502, 30.707493>,  <31.648870, 21.269564, 30.679625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412643, 21.301502, 30.707493>,  <31.018932, 21.354734, 30.753941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412643, 21.301502, 30.707493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025284, -0.756861, 0.653087,
		-0.174799, -0.639884, -0.748327,
		0.984280, -0.133079, -0.116120,
		31.707928, 21.261578, 30.672657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161415, 20.555101, 30.696838>,  <31.018932, 21.354734, 30.753941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161415, 20.555101, 30.696838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517912, 20.711830, 30.788193>,  <31.731810, 20.805868, 30.843006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517912, 20.711830, 30.788193>,  <31.161415, 20.555101, 30.696838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517912, 20.711830, 30.788193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230605, -0.825141, 0.515718,
		0.390522, -0.406962, -0.825757,
		0.891243, 0.391822, 0.228388,
		31.785284, 20.829376, 30.856709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641203, 20.062843, 30.498224>,  <31.161415, 20.555101, 30.696838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641203, 20.062843, 30.498224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815046, 20.295193, 30.773529>,  <31.919352, 20.434603, 30.938711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815046, 20.295193, 30.773529>,  <31.641203, 20.062843, 30.498224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815046, 20.295193, 30.773529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230106, -0.810462, 0.538704,
		0.870729, -0.075751, -0.485894,
		0.434607, 0.580872, 0.688262,
		31.945429, 20.469454, 30.980007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272923, 19.730938, 30.644114>,  <31.641203, 20.062843, 30.498224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272923, 19.730938, 30.644114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179966, 19.976944, 30.945511>,  <32.124191, 20.124548, 31.126348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179966, 19.976944, 30.945511>,  <32.272923, 19.730938, 30.644114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179966, 19.976944, 30.945511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399255, -0.646101, 0.650499,
		0.886899, 0.452006, -0.095400,
		-0.232392, 0.615015, 0.753492,
		32.110249, 20.161449, 31.171558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756920, 19.504705, 31.159828>,  <32.272923, 19.730938, 30.644114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756920, 19.504705, 31.159828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484432, 19.740799, 31.333065>,  <32.320942, 19.882456, 31.437008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484432, 19.740799, 31.333065>,  <32.756920, 19.504705, 31.159828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484432, 19.740799, 31.333065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064376, -0.541002, 0.838554,
		0.729246, 0.599118, 0.330543,
		-0.681217, 0.590233, 0.433092,
		32.280067, 19.917870, 31.462992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005745, 19.846991, 31.760082>,  <32.756920, 19.504705, 31.159828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005745, 19.846991, 31.760082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613148, 19.839188, 31.836273>,  <32.377590, 19.834505, 31.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613148, 19.839188, 31.836273>,  <33.005745, 19.846991, 31.760082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613148, 19.839188, 31.836273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169524, -0.551030, 0.817085,
		0.089020, 0.834257, 0.544142,
		-0.981497, -0.019508, 0.190479,
		32.318699, 19.833336, 31.893417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778755, 20.016174, 32.567127>,  <33.005745, 19.846991, 31.760082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778755, 20.016174, 32.567127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528336, 19.764858, 32.382385>,  <32.378082, 19.614069, 32.271538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528336, 19.764858, 32.382385>,  <32.778755, 20.016174, 32.567127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528336, 19.764858, 32.382385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125005, -0.665495, 0.735860,
		-0.769697, 0.402952, 0.495173,
		-0.626051, -0.628289, -0.461859,
		32.340519, 19.576372, 32.243828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226730, 19.374989, 32.445332>,  <32.778755, 20.016174, 32.567127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226730, 19.374989, 32.445332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550022, 19.365028, 32.680668>,  <33.743999, 19.359053, 32.821869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550022, 19.365028, 32.680668>,  <33.226730, 19.374989, 32.445332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550022, 19.365028, 32.680668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539298, 0.369912, 0.756520,
		-0.236470, -0.928733, 0.285547,
		0.808232, -0.024899, 0.588337,
		33.792492, 19.357559, 32.857170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997173, 18.992447, 33.010746>,  <33.226730, 19.374989, 32.445332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997173, 18.992447, 33.010746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279255, 19.266998, 33.081814>,  <33.448505, 19.431728, 33.124454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279255, 19.266998, 33.081814>,  <32.997173, 18.992447, 33.010746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279255, 19.266998, 33.081814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624123, 0.482081, 0.614873,
		0.336384, -0.544501, 0.768352,
		0.705206, 0.686380, 0.177672,
		33.490818, 19.472912, 33.135117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495583, 19.118614, 33.495495>,  <32.997173, 18.992447, 33.010746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495583, 19.118614, 33.495495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178898, 19.049084, 33.729752>,  <31.988886, 19.007366, 33.870304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178898, 19.049084, 33.729752>,  <32.495583, 19.118614, 33.495495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178898, 19.049084, 33.729752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546952, 0.628679, -0.552817,
		-0.272086, -0.757990, -0.592808,
		-0.791715, -0.173824, 0.585639,
		31.941383, 18.996937, 33.905441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869335, 19.037125, 33.010090>,  <32.495583, 19.118614, 33.495495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869335, 19.037125, 33.010090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778368, 19.166573, 33.377472>,  <31.723787, 19.244242, 33.597900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778368, 19.166573, 33.377472>,  <31.869335, 19.037125, 33.010090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778368, 19.166573, 33.377472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482310, 0.781922, -0.394937,
		-0.845967, -0.532793, -0.021736,
		-0.227416, 0.323620, 0.918451,
		31.710144, 19.263659, 33.653008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232534, 19.230654, 32.918968>,  <31.869335, 19.037125, 33.010090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232534, 19.230654, 32.918968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338526, 19.425087, 33.252079>,  <31.402121, 19.541746, 33.451946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338526, 19.425087, 33.252079>,  <31.232534, 19.230654, 32.918968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338526, 19.425087, 33.252079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556773, 0.782253, -0.279436,
		-0.787268, -0.389622, 0.477916,
		0.264977, 0.486082, 0.832774,
		31.418018, 19.570911, 33.501911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603271, 19.544691, 33.367550>,  <31.232534, 19.230654, 32.918968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603271, 19.544691, 33.367550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943598, 19.749924, 33.412899>,  <31.147795, 19.873064, 33.440109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943598, 19.749924, 33.412899>,  <30.603271, 19.544691, 33.367550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943598, 19.749924, 33.412899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432013, 0.805856, -0.404919,
		-0.299120, 0.295534, 0.907296,
		0.850818, 0.513084, 0.113373,
		31.198843, 19.903849, 33.446911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423882, 20.238886, 33.431110>,  <30.603271, 19.544691, 33.367550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423882, 20.238886, 33.431110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814880, 20.249382, 33.347385>,  <31.049480, 20.255680, 33.297150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814880, 20.249382, 33.347385>,  <30.423882, 20.238886, 33.431110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814880, 20.249382, 33.347385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089282, 0.950445, -0.297798,
		0.191121, 0.309784, 0.931400,
		0.977498, 0.026242, -0.209308,
		31.108130, 20.257254, 33.284592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631363, 20.754007, 33.740936>,  <30.423882, 20.238886, 33.431110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631363, 20.754007, 33.740936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913990, 20.712078, 33.460999>,  <31.083567, 20.686920, 33.293037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913990, 20.712078, 33.460999>,  <30.631363, 20.754007, 33.740936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913990, 20.712078, 33.460999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027244, 0.984206, -0.174920,
		0.707122, 0.142658, 0.692551,
		0.706567, -0.104822, -0.699840,
		31.125959, 20.680632, 33.251045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989260, 21.408180, 33.803780>,  <30.631363, 20.754007, 33.740936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989260, 21.408180, 33.803780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096010, 21.249580, 33.452423>,  <31.160061, 21.154421, 33.241611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096010, 21.249580, 33.452423>,  <30.989260, 21.408180, 33.803780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096010, 21.249580, 33.452423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043244, 0.905601, -0.421921,
		0.962761, 0.150585, 0.224536,
		0.266874, -0.396499, -0.878389,
		31.176073, 21.130630, 33.188908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518620, 21.848330, 33.506226>,  <30.989260, 21.408180, 33.803780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518620, 21.848330, 33.506226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379107, 21.659355, 33.182461>,  <31.295399, 21.545971, 32.988201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379107, 21.659355, 33.182461>,  <31.518620, 21.848330, 33.506226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379107, 21.659355, 33.182461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000639, 0.863770, -0.503886,
		0.937203, -0.175230, -0.301570,
		-0.348783, -0.472437, -0.809416,
		31.274471, 21.517624, 32.939636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963371, 21.920645, 32.994743>,  <31.518620, 21.848330, 33.506226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963371, 21.920645, 32.994743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635614, 21.848969, 32.776943>,  <31.438959, 21.805962, 32.646263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635614, 21.848969, 32.776943>,  <31.963371, 21.920645, 32.994743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635614, 21.848969, 32.776943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164444, 0.836480, -0.522742,
		0.549138, -0.517872, -0.655939,
		-0.819393, -0.179192, -0.544504,
		31.389797, 21.795210, 32.613590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132782, 22.037365, 32.348057>,  <31.963371, 21.920645, 32.994743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132782, 22.037365, 32.348057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738052, 22.102081, 32.347076>,  <31.501215, 22.140911, 32.346489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738052, 22.102081, 32.347076>,  <32.132782, 22.037365, 32.348057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738052, 22.102081, 32.347076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145762, 0.882272, -0.447604,
		-0.070255, -0.442063, -0.894228,
		-0.986822, 0.161791, -0.002452,
		31.442005, 22.150620, 32.346340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930412, 22.252932, 31.710901>,  <32.132782, 22.037365, 32.348057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930412, 22.252932, 31.710901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617180, 22.360069, 31.935417>,  <31.429241, 22.424351, 32.070126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617180, 22.360069, 31.935417>,  <31.930412, 22.252932, 31.710901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617180, 22.360069, 31.935417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033677, 0.882925, -0.468306,
		-0.621010, -0.385623, -0.682379,
		-0.783079, 0.267842, 0.561292,
		31.382256, 22.440422, 32.103806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365442, 22.489391, 31.292068>,  <31.930412, 22.252932, 31.710901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365442, 22.489391, 31.292068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252365, 22.654613, 31.638355>,  <31.184519, 22.753748, 31.846128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252365, 22.654613, 31.638355>,  <31.365442, 22.489391, 31.292068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252365, 22.654613, 31.638355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176115, 0.864839, -0.470146,
		-0.942904, -0.285373, -0.171739,
		-0.282693, 0.413057, 0.865719,
		31.167557, 22.778530, 31.898071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624348, 22.710098, 31.154793>,  <31.365442, 22.489391, 31.292068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624348, 22.710098, 31.154793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799116, 22.927391, 31.441566>,  <30.903978, 23.057768, 31.613630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799116, 22.927391, 31.441566>,  <30.624348, 22.710098, 31.154793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799116, 22.927391, 31.441566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191375, 0.834931, -0.516010,
		-0.878905, 0.088253, 0.468762,
		0.436923, 0.543233, 0.716935,
		30.930193, 23.090361, 31.656647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241465, 23.218990, 31.278397>,  <30.624348, 22.710098, 31.154793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241465, 23.218990, 31.278397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566393, 23.376011, 31.450924>,  <30.761351, 23.470224, 31.554440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566393, 23.376011, 31.450924>,  <30.241465, 23.218990, 31.278397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566393, 23.376011, 31.450924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199239, 0.881854, -0.427360,
		-0.548122, 0.261218, 0.794561,
		0.812322, 0.392553, 0.431318,
		30.810089, 23.493776, 31.580320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041006, 23.959543, 31.487392>,  <30.241465, 23.218990, 31.278397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041006, 23.959543, 31.487392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440559, 23.975758, 31.477688>,  <30.680292, 23.985485, 31.471865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440559, 23.975758, 31.477688>,  <30.041006, 23.959543, 31.487392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440559, 23.975758, 31.477688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047240, 0.853904, -0.518281,
		-0.000291, 0.518849, 0.854866,
		0.998883, 0.040535, -0.024262,
		30.740225, 23.987919, 31.470409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266336, 24.683033, 31.778301>,  <30.041006, 23.959543, 31.487392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266336, 24.683033, 31.778301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557924, 24.513924, 31.562943>,  <30.732876, 24.412458, 31.433727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557924, 24.513924, 31.562943>,  <30.266336, 24.683033, 31.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557924, 24.513924, 31.562943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196720, 0.882699, -0.426783,
		0.655673, 0.205198, 0.726627,
		0.728968, -0.422772, -0.538395,
		30.776615, 24.387093, 31.401424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764156, 25.127024, 31.778210>,  <30.266336, 24.683033, 31.778301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764156, 25.127024, 31.778210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905966, 24.913643, 31.471031>,  <30.991051, 24.785614, 31.286724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905966, 24.913643, 31.471031>,  <30.764156, 25.127024, 31.778210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905966, 24.913643, 31.471031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356793, 0.836326, -0.416241,
		0.864299, -0.126430, 0.486829,
		0.354523, -0.533454, -0.767945,
		31.012323, 24.753607, 31.240648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486996, 25.286856, 31.706186>,  <30.764156, 25.127024, 31.778210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486996, 25.286856, 31.706186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362366, 25.138191, 31.356377>,  <31.287588, 25.048992, 31.146492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362366, 25.138191, 31.356377>,  <31.486996, 25.286856, 31.706186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362366, 25.138191, 31.356377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330490, 0.820491, -0.466445,
		0.890897, -0.434353, -0.132814,
		-0.311574, -0.371661, -0.874522,
		31.268892, 25.026693, 31.094021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994951, 25.417049, 31.303577>,  <31.486996, 25.286856, 31.706186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994951, 25.417049, 31.303577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704399, 25.372051, 31.032368>,  <31.530067, 25.345053, 30.869642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704399, 25.372051, 31.032368>,  <31.994951, 25.417049, 31.303577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704399, 25.372051, 31.032368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418941, 0.709581, -0.566553,
		0.544848, -0.695586, -0.468297,
		-0.726381, -0.112496, -0.678023,
		31.486485, 25.338303, 30.828960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246445, 25.400890, 30.655912>,  <31.994951, 25.417049, 31.303577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246445, 25.400890, 30.655912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868597, 25.496094, 30.565533>,  <31.641890, 25.553215, 30.511305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868597, 25.496094, 30.565533>,  <32.246445, 25.400890, 30.655912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868597, 25.496094, 30.565533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327748, 0.648899, -0.686667,
		-0.016812, -0.722691, -0.690966,
		-0.944616, 0.238007, -0.225951,
		31.585213, 25.567495, 30.497747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439590, 25.683668, 30.086248>,  <32.246445, 25.400890, 30.655912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439590, 25.683668, 30.086248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052181, 25.781090, 30.106815>,  <31.819736, 25.839542, 30.119156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052181, 25.781090, 30.106815>,  <32.439590, 25.683668, 30.086248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052181, 25.781090, 30.106815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154167, 0.749079, -0.644292,
		-0.195438, -0.616085, -0.763049,
		-0.968523, 0.243556, 0.051419,
		31.761623, 25.854156, 30.122240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281452, 25.726208, 29.450672>,  <32.439590, 25.683668, 30.086248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281452, 25.726208, 29.450672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033073, 25.956570, 29.663376>,  <31.884047, 26.094786, 29.790998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033073, 25.956570, 29.663376>,  <32.281452, 25.726208, 29.450672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033073, 25.956570, 29.663376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242211, 0.786157, -0.568587,
		-0.745496, -0.224262, -0.627648,
		-0.620942, 0.575903, 0.531758,
		31.846790, 26.129341, 29.822903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775299, 26.098080, 28.961588>,  <32.281452, 25.726208, 29.450672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775299, 26.098080, 28.961588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808714, 26.288818, 29.311592>,  <31.828762, 26.403261, 29.521595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808714, 26.288818, 29.311592>,  <31.775299, 26.098080, 28.961588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808714, 26.288818, 29.311592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372253, 0.799578, -0.471277,
		-0.924364, 0.365093, -0.110714,
		0.083535, 0.476846, 0.875009,
		31.833775, 26.431871, 29.574095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685350, 26.665501, 28.724215>,  <31.775299, 26.098080, 28.961588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685350, 26.665501, 28.724215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820871, 26.767258, 29.086540>,  <31.902184, 26.828312, 29.303936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820871, 26.767258, 29.086540>,  <31.685350, 26.665501, 28.724215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820871, 26.767258, 29.086540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501494, 0.765761, -0.402634,
		-0.796064, 0.590672, 0.131863,
		0.338800, 0.254394, 0.905813,
		31.922512, 26.843576, 29.358284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420368, 27.386860, 28.856831>,  <31.685350, 26.665501, 28.724215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420368, 27.386860, 28.856831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724297, 27.319248, 29.107941>,  <31.906652, 27.278681, 29.258608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724297, 27.319248, 29.107941>,  <31.420368, 27.386860, 28.856831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724297, 27.319248, 29.107941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468207, 0.812205, -0.348002,
		-0.451062, 0.558348, 0.696269,
		0.759819, -0.169027, 0.627777,
		31.952242, 27.268539, 29.296274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500801, 28.015139, 29.224682>,  <31.420368, 27.386860, 28.856831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500801, 28.015139, 29.224682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844584, 27.811562, 29.243900>,  <32.050854, 27.689415, 29.255432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844584, 27.811562, 29.243900>,  <31.500801, 28.015139, 29.224682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844584, 27.811562, 29.243900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468080, 0.745681, -0.474195,
		0.205510, 0.430041, 0.879107,
		0.859457, -0.508945, 0.048048,
		32.102421, 27.658878, 29.258314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961197, 28.498936, 29.492142>,  <31.500801, 28.015139, 29.224682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961197, 28.498936, 29.492142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212669, 28.233654, 29.329700>,  <32.363552, 28.074484, 29.232235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212669, 28.233654, 29.329700>,  <31.961197, 28.498936, 29.492142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212669, 28.233654, 29.329700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503134, 0.745067, -0.437871,
		0.592974, 0.070955, 0.802089,
		0.628679, -0.663205, -0.406105,
		32.401272, 28.034693, 29.207869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628357, 28.725904, 29.680050>,  <31.961197, 28.498936, 29.492142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628357, 28.725904, 29.680050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710487, 28.477848, 29.377193>,  <32.759766, 28.329014, 29.195478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710487, 28.477848, 29.377193>,  <32.628357, 28.725904, 29.680050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710487, 28.477848, 29.377193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344007, 0.769991, -0.537376,
		0.916243, -0.150126, 0.371431,
		0.205325, -0.620142, -0.757143,
		32.772083, 28.291805, 29.150051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328712, 28.826662, 29.407307>,  <32.628357, 28.725904, 29.680050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328712, 28.826662, 29.407307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091209, 28.676018, 29.122879>,  <32.948708, 28.585632, 28.952223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091209, 28.676018, 29.122879>,  <33.328712, 28.826662, 29.407307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091209, 28.676018, 29.122879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159960, 0.810822, -0.563010,
		0.788584, -0.448034, -0.421189,
		-0.593757, -0.376607, -0.711069,
		32.913082, 28.563034, 28.909557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736473, 28.976547, 28.821110>,  <33.328712, 28.826662, 29.407307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736473, 28.976547, 28.821110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385788, 28.867569, 28.662540>,  <33.175377, 28.802181, 28.567398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385788, 28.867569, 28.662540>,  <33.736473, 28.976547, 28.821110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385788, 28.867569, 28.662540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078300, 0.732314, -0.676451,
		0.474603, -0.624092, -0.620694,
		-0.876710, -0.272445, -0.396425,
		33.122776, 28.785835, 28.543613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840816, 29.047544, 28.138788>,  <33.736473, 28.976547, 28.821110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840816, 29.047544, 28.138788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445499, 29.058914, 28.198750>,  <33.208309, 29.065737, 28.234726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445499, 29.058914, 28.198750>,  <33.840816, 29.047544, 28.138788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445499, 29.058914, 28.198750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054848, 0.850627, -0.522901,
		-0.142373, -0.525001, -0.839109,
		-0.988292, 0.028424, 0.149902,
		33.149014, 29.067442, 28.243719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604469, 29.170969, 27.472937>,  <33.840816, 29.047544, 28.138788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604469, 29.170969, 27.472937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322876, 29.286297, 27.732559>,  <33.153919, 29.355494, 27.888332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322876, 29.286297, 27.732559>,  <33.604469, 29.170969, 27.472937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322876, 29.286297, 27.732559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119309, 0.852891, -0.508274,
		-0.700121, -0.435256, -0.566023,
		-0.703985, 0.288321, 0.649057,
		33.111679, 29.372793, 27.927277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965515, 29.441191, 27.059217>,  <33.604469, 29.170969, 27.472937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965515, 29.441191, 27.059217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898823, 29.585625, 27.426220>,  <32.858807, 29.672285, 27.646421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898823, 29.585625, 27.426220>,  <32.965515, 29.441191, 27.059217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898823, 29.585625, 27.426220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085746, 0.921696, -0.378317,
		-0.982266, -0.141751, -0.122716,
		-0.166734, 0.361086, 0.917506,
		32.848804, 29.693951, 27.701471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352074, 29.821959, 27.072445>,  <32.965515, 29.441191, 27.059217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352074, 29.821959, 27.072445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562656, 29.980686, 27.373211>,  <32.689007, 30.075922, 27.553671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562656, 29.980686, 27.373211>,  <32.352074, 29.821959, 27.072445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562656, 29.980686, 27.373211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077720, 0.858232, -0.507343,
		-0.846640, 0.325535, 0.420985,
		0.526461, 0.396818, 0.751914,
		32.720596, 30.099731, 27.598785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241322, 30.536232, 27.097990>,  <32.352074, 29.821959, 27.072445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241322, 30.536232, 27.097990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586613, 30.529469, 27.299801>,  <32.793789, 30.525412, 27.420887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586613, 30.529469, 27.299801>,  <32.241322, 30.536232, 27.097990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586613, 30.529469, 27.299801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336405, 0.764445, -0.549960,
		-0.376387, 0.644467, 0.665579,
		0.863229, -0.016906, 0.504529,
		32.845581, 30.524397, 27.451160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435677, 31.196697, 27.182001>,  <32.241322, 30.536232, 27.097990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435677, 31.196697, 27.182001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787640, 31.027088, 27.267765>,  <32.998817, 30.925322, 27.319223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787640, 31.027088, 27.267765>,  <32.435677, 31.196697, 27.182001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787640, 31.027088, 27.267765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474992, 0.773314, -0.419961,
		0.012267, 0.471369, 0.881851,
		0.879905, -0.424024, 0.214410,
		33.051613, 30.899881, 27.332088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875629, 31.707968, 27.427006>,  <32.435677, 31.196697, 27.182001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875629, 31.707968, 27.427006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153393, 31.436699, 27.330776>,  <33.320049, 31.273937, 27.273039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153393, 31.436699, 27.330776>,  <32.875629, 31.707968, 27.427006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153393, 31.436699, 27.330776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553243, 0.716951, -0.424150,
		0.460128, 0.161437, 0.873052,
		0.694409, -0.678173, -0.240576,
		33.361717, 31.233248, 27.258604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562191, 32.001377, 27.580559>,  <32.875629, 31.707968, 27.427006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562191, 32.001377, 27.580559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575241, 31.715687, 27.300896>,  <33.583073, 31.544273, 27.133099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575241, 31.715687, 27.300896>,  <33.562191, 32.001377, 27.580559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575241, 31.715687, 27.300896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510642, 0.613249, -0.602635,
		0.859174, -0.337358, 0.384720,
		0.032625, -0.714223, -0.699158,
		33.585030, 31.501419, 27.091148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257771, 31.884436, 27.335047>,  <33.562191, 32.001377, 27.580559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257771, 31.884436, 27.335047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048981, 31.715340, 27.038712>,  <33.923706, 31.613882, 26.860910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048981, 31.715340, 27.038712>,  <34.257771, 31.884436, 27.335047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048981, 31.715340, 27.038712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624438, 0.402285, -0.669511,
		0.581055, -0.812071, 0.053993,
		-0.521970, -0.422738, -0.740837,
		33.892391, 31.588518, 26.816460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731491, 31.817322, 26.810925>,  <34.257771, 31.884436, 27.335047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731491, 31.817322, 26.810925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398521, 31.742462, 26.602291>,  <34.198742, 31.697546, 26.477112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398521, 31.742462, 26.602291>,  <34.731491, 31.817322, 26.810925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398521, 31.742462, 26.602291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388180, 0.474781, -0.789873,
		0.395461, -0.859976, -0.322571,
		-0.832422, -0.187149, -0.521582,
		34.148796, 31.686317, 26.445816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943764, 31.528828, 26.156301>,  <34.731491, 31.817322, 26.810925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943764, 31.528828, 26.156301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581738, 31.694492, 26.117687>,  <34.364521, 31.793890, 26.094519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581738, 31.694492, 26.117687>,  <34.943764, 31.528828, 26.156301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581738, 31.694492, 26.117687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314108, 0.498023, -0.808275,
		-0.286678, -0.761869, -0.580837,
		-0.905070, 0.414160, -0.096537,
		34.310215, 31.818741, 26.088726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721432, 31.417122, 25.440132>,  <34.943764, 31.528828, 26.156301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721432, 31.417122, 25.440132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484604, 31.711357, 25.571808>,  <34.342506, 31.887899, 25.650812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484604, 31.711357, 25.571808>,  <34.721432, 31.417122, 25.440132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484604, 31.711357, 25.571808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201769, 0.530772, -0.823146,
		-0.780223, -0.420937, -0.462672,
		-0.592066, 0.735590, 0.329188,
		34.306984, 31.932034, 25.670565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414230, 31.592716, 24.798239>,  <34.721432, 31.417122, 25.440132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414230, 31.592716, 24.798239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320915, 31.879349, 25.061172>,  <34.264927, 32.051327, 25.218933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320915, 31.879349, 25.061172>,  <34.414230, 31.592716, 24.798239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320915, 31.879349, 25.061172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107494, 0.690849, -0.714963,
		-0.966448, -0.096134, -0.238196,
		-0.233290, 0.716579, 0.657335,
		34.250927, 32.094322, 25.258373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873703, 31.978596, 24.534428>,  <34.414230, 31.592716, 24.798239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873703, 31.978596, 24.534428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044075, 32.229221, 24.795502>,  <34.146297, 32.379597, 24.952147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044075, 32.229221, 24.795502>,  <33.873703, 31.978596, 24.534428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044075, 32.229221, 24.795502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209913, 0.633272, -0.744918,
		-0.880066, 0.454294, 0.138208,
		0.425935, 0.626566, 0.652683,
		34.171856, 32.417191, 24.991306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552704, 32.553818, 24.429375>,  <33.873703, 31.978596, 24.534428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552704, 32.553818, 24.429375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908382, 32.656105, 24.581135>,  <34.121788, 32.717476, 24.672192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908382, 32.656105, 24.581135>,  <33.552704, 32.553818, 24.429375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908382, 32.656105, 24.581135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167044, 0.590547, -0.789525,
		-0.425950, 0.765417, 0.482394,
		0.889192, 0.255717, 0.379402,
		34.175140, 32.732819, 24.694956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243538, 32.582024, 23.779829>,  <33.552704, 32.553818, 24.429375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243538, 32.582024, 23.779829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881580, 32.710484, 23.668095>,  <32.664406, 32.787560, 23.601053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881580, 32.710484, 23.668095>,  <33.243538, 32.582024, 23.779829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881580, 32.710484, 23.668095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411254, -0.490513, 0.768289,
		0.109718, 0.810098, 0.575936,
		-0.904893, 0.321152, -0.279338,
		32.610111, 32.806828, 23.584293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846703, 32.810947, 24.365028>,  <33.243538, 32.582024, 23.779829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846703, 32.810947, 24.365028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566254, 32.722660, 24.093822>,  <32.397984, 32.669689, 23.931099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566254, 32.722660, 24.093822>,  <32.846703, 32.810947, 24.365028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566254, 32.722660, 24.093822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385898, -0.682135, 0.621107,
		-0.599587, 0.697120, 0.393090,
		-0.701127, -0.220715, -0.678016,
		32.355915, 32.656445, 23.890417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213779, 32.742260, 24.694248>,  <32.846703, 32.810947, 24.365028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213779, 32.742260, 24.694248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141182, 32.541409, 24.356033>,  <32.097622, 32.420898, 24.153105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141182, 32.541409, 24.356033>,  <32.213779, 32.742260, 24.694248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141182, 32.541409, 24.356033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473890, -0.708738, 0.522607,
		-0.861678, 0.495541, -0.109321,
		-0.181493, -0.502125, -0.845536,
		32.086735, 32.390770, 24.102373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582983, 32.568054, 24.820263>,  <32.213779, 32.742260, 24.694248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582983, 32.568054, 24.820263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697634, 32.328671, 24.521015>,  <31.766424, 32.185040, 24.341467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697634, 32.328671, 24.521015>,  <31.582983, 32.568054, 24.820263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697634, 32.328671, 24.521015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340698, -0.793513, 0.504243,
		-0.895416, 0.110353, -0.431339,
		0.286628, -0.598464, -0.748122,
		31.783623, 32.149132, 24.296579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018267, 32.165466, 24.695473>,  <31.582983, 32.568054, 24.820263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018267, 32.165466, 24.695473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332506, 31.961636, 24.555096>,  <31.521049, 31.839336, 24.470869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332506, 31.961636, 24.555096>,  <31.018267, 32.165466, 24.695473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332506, 31.961636, 24.555096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297552, -0.808450, 0.507810,
		-0.542488, -0.294512, -0.786746,
		0.785601, -0.509579, -0.350942,
		31.568186, 31.808762, 24.449814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743183, 31.524366, 24.635019>,  <31.018267, 32.165466, 24.695473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743183, 31.524366, 24.635019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138435, 31.477184, 24.674374>,  <31.375587, 31.448875, 24.697987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138435, 31.477184, 24.674374>,  <30.743183, 31.524366, 24.635019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138435, 31.477184, 24.674374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153565, -0.772466, 0.616209,
		0.003312, -0.624005, -0.781413,
		0.988133, -0.117957, 0.098384,
		31.434875, 31.441797, 24.703888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693426, 31.003746, 24.334286>,  <30.743183, 31.524366, 24.635019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693426, 31.003746, 24.334286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009266, 31.048630, 24.575596>,  <31.198769, 31.075560, 24.720383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009266, 31.048630, 24.575596>,  <30.693426, 31.003746, 24.334286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009266, 31.048630, 24.575596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251162, -0.837911, 0.484586,
		0.559868, -0.534149, -0.633429,
		0.789598, 0.112211, 0.603278,
		31.246145, 31.082293, 24.756578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923750, 30.310831, 24.578897>,  <30.693426, 31.003746, 24.334286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923750, 30.310831, 24.578897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096586, 30.556587, 24.842964>,  <31.200289, 30.704041, 25.001404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096586, 30.556587, 24.842964>,  <30.923750, 30.310831, 24.578897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096586, 30.556587, 24.842964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155913, -0.670115, 0.725698,
		0.888251, -0.416495, -0.193758,
		0.432090, 0.614392, 0.660167,
		31.226213, 30.740904, 25.041014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307291, 29.837923, 24.955812>,  <30.923750, 30.310831, 24.578897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307291, 29.837923, 24.955812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289984, 30.167107, 25.182392>,  <31.279598, 30.364616, 25.318340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289984, 30.167107, 25.182392>,  <31.307291, 29.837923, 24.955812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289984, 30.167107, 25.182392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134890, -0.566603, 0.812875,
		0.989915, -0.041236, 0.135525,
		-0.043269, 0.822959, 0.566451,
		31.277002, 30.413994, 25.352327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648294, 29.620983, 25.528059>,  <31.307291, 29.837923, 24.955812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648294, 29.620983, 25.528059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419405, 29.929081, 25.640686>,  <31.282072, 30.113939, 25.708263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419405, 29.929081, 25.640686>,  <31.648294, 29.620983, 25.528059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419405, 29.929081, 25.640686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135649, -0.427502, 0.893779,
		0.808802, 0.473247, 0.349110,
		-0.572223, 0.770246, 0.281569,
		31.247738, 30.160154, 25.725157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789394, 29.856773, 26.262157>,  <31.648294, 29.620983, 25.528059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789394, 29.856773, 26.262157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411591, 29.975113, 26.205059>,  <31.184908, 30.046116, 26.170799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411591, 29.975113, 26.205059>,  <31.789394, 29.856773, 26.262157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411591, 29.975113, 26.205059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275379, -0.476227, 0.835089,
		0.179079, 0.828059, 0.531271,
		-0.944509, 0.295848, -0.142747,
		31.128239, 30.063868, 26.162235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603497, 29.986233, 26.896673>,  <31.789394, 29.856773, 26.262157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603497, 29.986233, 26.896673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244032, 29.982601, 26.721252>,  <31.028353, 29.980423, 26.616001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244032, 29.982601, 26.721252>,  <31.603497, 29.986233, 26.896673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244032, 29.982601, 26.721252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396455, -0.411013, 0.820909,
		-0.187702, 0.911584, 0.365762,
		-0.898661, -0.009078, -0.438550,
		30.974434, 29.979877, 26.589687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016390, 30.194937, 27.357384>,  <31.603497, 29.986233, 26.896673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016390, 30.194937, 27.357384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793667, 30.029087, 27.069481>,  <30.660032, 29.929577, 26.896738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793667, 30.029087, 27.069481>,  <31.016390, 30.194937, 27.357384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793667, 30.029087, 27.069481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532043, -0.487402, 0.692365,
		-0.637882, 0.768457, 0.050792,
		-0.556809, -0.414623, -0.719758,
		30.626625, 29.904699, 26.853554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355642, 30.287567, 27.593536>,  <31.016390, 30.194937, 27.357384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355642, 30.287567, 27.593536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353638, 29.977810, 27.340462>,  <30.352436, 29.791956, 27.188618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353638, 29.977810, 27.340462>,  <30.355642, 30.287567, 27.593536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353638, 29.977810, 27.340462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451068, -0.562922, 0.692573,
		-0.892476, 0.288854, -0.346483,
		-0.005010, -0.774391, -0.632687,
		30.352135, 29.745493, 27.150656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712894, 30.005276, 27.705399>,  <30.355642, 30.287567, 27.593536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712894, 30.005276, 27.705399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907673, 29.706078, 27.525005>,  <30.024540, 29.526558, 27.416769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907673, 29.706078, 27.525005>,  <29.712894, 30.005276, 27.705399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907673, 29.706078, 27.525005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411793, -0.651954, 0.636696,
		-0.770267, -0.124324, -0.625485,
		0.486944, -0.747997, -0.450983,
		30.053757, 29.481678, 27.389709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124655, 29.521257, 27.636744>,  <29.712894, 30.005276, 27.705399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124655, 29.521257, 27.636744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469370, 29.318897, 27.621849>,  <29.676199, 29.197481, 27.612913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469370, 29.318897, 27.621849>,  <29.124655, 29.521257, 27.636744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469370, 29.318897, 27.621849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433720, -0.772914, 0.463132,
		-0.263080, -0.382971, -0.885507,
		0.861787, -0.505902, -0.037236,
		29.727905, 29.167126, 27.610678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909594, 28.761183, 27.440811>,  <29.124655, 29.521257, 27.636744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909594, 28.761183, 27.440811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269850, 28.719700, 27.609615>,  <29.486004, 28.694811, 27.710897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269850, 28.719700, 27.609615>,  <28.909594, 28.761183, 27.440811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269850, 28.719700, 27.609615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276936, -0.885344, 0.373460,
		0.334895, -0.453222, -0.826096,
		0.900640, -0.103706, 0.422011,
		29.540041, 28.688587, 27.736217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075722, 27.966612, 27.341524>,  <28.909594, 28.761183, 27.440811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075722, 27.966612, 27.341524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308969, 28.140198, 27.616230>,  <29.448917, 28.244349, 27.781054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308969, 28.140198, 27.616230>,  <29.075722, 27.966612, 27.341524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308969, 28.140198, 27.616230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091539, -0.875083, 0.475237,
		0.807213, -0.214254, -0.550002,
		0.583119, 0.433964, 0.686766,
		29.483906, 28.270388, 27.822260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788631, 27.625700, 27.352770>,  <29.075722, 27.966612, 27.341524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788631, 27.625700, 27.352770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751770, 27.773956, 27.722446>,  <29.729652, 27.862909, 27.944252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751770, 27.773956, 27.722446>,  <29.788631, 27.625700, 27.352770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751770, 27.773956, 27.722446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113710, -0.918154, 0.379557,
		0.989231, 0.140067, 0.042465,
		-0.092153, 0.370641, 0.924193,
		29.724125, 27.885149, 27.999704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145420, 27.229486, 27.668310>,  <29.788631, 27.625700, 27.352770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145420, 27.229486, 27.668310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964304, 27.405224, 27.978653>,  <29.855635, 27.510666, 28.164860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964304, 27.405224, 27.978653>,  <30.145420, 27.229486, 27.668310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964304, 27.405224, 27.978653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042497, -0.858547, 0.510970,
		0.890603, 0.264334, 0.370073,
		-0.452792, 0.439345, 0.775858,
		29.828466, 27.537027, 28.211411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503551, 27.100935, 28.371981>,  <30.145420, 27.229486, 27.668310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503551, 27.100935, 28.371981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115126, 27.173847, 28.433704>,  <29.882071, 27.217594, 28.470739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115126, 27.173847, 28.433704>,  <30.503551, 27.100935, 28.371981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115126, 27.173847, 28.433704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072262, -0.840089, 0.537614,
		0.227630, 0.510906, 0.828951,
		-0.971063, 0.182278, 0.154311,
		29.823807, 27.228531, 28.479998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496693, 26.966566, 29.060127>,  <30.503551, 27.100935, 28.371981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496693, 26.966566, 29.060127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124781, 26.941948, 28.914955>,  <29.901632, 26.927177, 28.827852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124781, 26.941948, 28.914955>,  <30.496693, 26.966566, 29.060127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124781, 26.941948, 28.914955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153732, -0.830913, 0.534743,
		-0.334474, 0.552988, 0.763106,
		-0.929781, -0.061544, -0.362931,
		29.845846, 26.923485, 28.806076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071053, 26.849689, 29.812113>,  <30.496693, 26.966566, 29.060127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071053, 26.849689, 29.812113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841063, 26.744007, 29.502377>,  <29.703070, 26.680597, 29.316536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841063, 26.744007, 29.502377>,  <30.071053, 26.849689, 29.812113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841063, 26.744007, 29.502377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245777, -0.846938, 0.471477,
		-0.780384, 0.461401, 0.422030,
		-0.574973, -0.264208, -0.774339,
		29.668571, 26.664745, 29.270075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500099, 26.534101, 30.215618>,  <30.071053, 26.849689, 29.812113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500099, 26.534101, 30.215618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456661, 26.423828, 29.833580>,  <29.430599, 26.357664, 29.604357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456661, 26.423828, 29.833580>,  <29.500099, 26.534101, 30.215618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456661, 26.423828, 29.833580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362922, -0.883465, 0.296272,
		-0.925470, 0.378798, -0.004111,
		-0.108596, -0.275683, -0.955095,
		29.424082, 26.341124, 29.547052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878046, 26.196716, 30.132854>,  <29.500099, 26.534101, 30.215618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878046, 26.196716, 30.132854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077568, 26.043697, 29.821766>,  <29.197281, 25.951887, 29.635113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077568, 26.043697, 29.821766>,  <28.878046, 26.196716, 30.132854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077568, 26.043697, 29.821766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199817, -0.923908, 0.326294,
		-0.843366, -0.007356, -0.537289,
		0.498805, -0.382545, -0.777722,
		29.227209, 25.928934, 29.588449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428762, 25.643045, 29.929550>,  <28.878046, 26.196716, 30.132854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428762, 25.643045, 29.929550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795382, 25.563770, 29.790604>,  <29.015352, 25.516205, 29.707235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795382, 25.563770, 29.790604>,  <28.428762, 25.643045, 29.929550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795382, 25.563770, 29.790604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075634, -0.938801, 0.336055,
		-0.392710, -0.281737, -0.875444,
		0.916546, -0.198186, -0.347368,
		29.070345, 25.504314, 29.686394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331730, 25.051674, 29.553480>,  <28.428762, 25.643045, 29.929550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331730, 25.051674, 29.553480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694267, 25.091694, 29.717693>,  <28.911789, 25.115705, 29.816221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694267, 25.091694, 29.717693>,  <28.331730, 25.051674, 29.553480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694267, 25.091694, 29.717693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110006, -0.882194, 0.457857,
		0.407976, -0.460136, -0.788562,
		0.906341, 0.100048, 0.410532,
		28.966169, 25.121708, 29.840853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800972, 24.594807, 29.223644>,  <28.331730, 25.051674, 29.553480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800972, 24.594807, 29.223644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921555, 24.669300, 29.597691>,  <28.993904, 24.713997, 29.822119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921555, 24.669300, 29.597691>,  <28.800972, 24.594807, 29.223644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921555, 24.669300, 29.597691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188285, -0.949800, 0.249857,
		0.934704, -0.251390, -0.251260,
		0.301458, 0.186234, 0.935115,
		29.011992, 24.725170, 29.878225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327324, 24.038969, 29.332355>,  <28.800972, 24.594807, 29.223644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327324, 24.038969, 29.332355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230555, 24.168125, 29.698353>,  <29.172493, 24.245619, 29.917952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230555, 24.168125, 29.698353>,  <29.327324, 24.038969, 29.332355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230555, 24.168125, 29.698353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399155, -0.892636, 0.209466,
		0.884391, -0.314549, 0.344834,
		-0.241924, 0.322892, 0.914994,
		29.157978, 24.264994, 29.972851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439192, 23.472137, 29.721371>,  <29.327324, 24.038969, 29.332355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439192, 23.472137, 29.721371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195635, 23.693233, 29.948959>,  <29.049501, 23.825891, 30.085512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195635, 23.693233, 29.948959>,  <29.439192, 23.472137, 29.721371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195635, 23.693233, 29.948959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447501, -0.831582, 0.328958,
		0.654975, -0.054316, 0.753696,
		-0.608893, 0.552740, 0.568972,
		29.012966, 23.859055, 30.119652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522940, 23.239967, 30.447599>,  <29.439192, 23.472137, 29.721371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522940, 23.239967, 30.447599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167658, 23.423744, 30.448391>,  <28.954489, 23.534010, 30.448866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167658, 23.423744, 30.448391>,  <29.522940, 23.239967, 30.447599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167658, 23.423744, 30.448391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427134, -0.827321, 0.364824,
		0.169250, 0.323195, 0.931074,
		-0.888207, 0.459440, 0.001977,
		28.901196, 23.561577, 30.448984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296856, 22.994453, 31.007711>,  <29.522940, 23.239967, 30.447599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296856, 22.994453, 31.007711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957228, 23.132847, 30.848022>,  <28.753450, 23.215883, 30.752209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957228, 23.132847, 30.848022>,  <29.296856, 22.994453, 31.007711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957228, 23.132847, 30.848022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501060, -0.766872, 0.401055,
		-0.167395, 0.540558, 0.824485,
		-0.849069, 0.345982, -0.399222,
		28.702507, 23.236641, 30.728256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824860, 23.109726, 31.554880>,  <29.296856, 22.994453, 31.007711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824860, 23.109726, 31.554880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614689, 23.038185, 31.222149>,  <28.488586, 22.995260, 31.022511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614689, 23.038185, 31.222149>,  <28.824860, 23.109726, 31.554880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614689, 23.038185, 31.222149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511350, -0.715016, 0.476732,
		-0.680036, 0.675843, 0.284232,
		-0.525426, -0.178853, -0.831829,
		28.457062, 22.984529, 30.972601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086380, 23.084627, 31.726271>,  <28.824860, 23.109726, 31.554880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086380, 23.084627, 31.726271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108530, 22.902763, 31.370693>,  <28.121820, 22.793644, 31.157347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108530, 22.902763, 31.370693>,  <28.086380, 23.084627, 31.726271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108530, 22.902763, 31.370693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552600, -0.755477, 0.351976,
		-0.831605, 0.471739, -0.293078,
		0.055373, -0.454660, -0.888942,
		28.125141, 22.766365, 31.104012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472805, 22.633017, 31.668495>,  <28.086380, 23.084627, 31.726271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472805, 22.633017, 31.668495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669672, 22.499550, 31.346889>,  <27.787792, 22.419470, 31.153927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669672, 22.499550, 31.346889>,  <27.472805, 22.633017, 31.668495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669672, 22.499550, 31.346889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512857, -0.857451, 0.041902,
		-0.703383, 0.391721, -0.593133,
		0.492169, -0.333665, -0.804013,
		27.817324, 22.399450, 31.105686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934769, 22.238150, 31.382448>,  <27.472805, 22.633017, 31.668495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934769, 22.238150, 31.382448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271057, 22.101048, 31.214779>,  <27.472830, 22.018787, 31.114178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271057, 22.101048, 31.214779>,  <26.934769, 22.238150, 31.382448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271057, 22.101048, 31.214779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423126, -0.898919, -0.113614,
		-0.337862, 0.272881, -0.900769,
		0.840722, -0.342753, -0.419174,
		27.523273, 21.998222, 31.089027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749983, 21.926615, 30.661659>,  <26.934769, 22.238150, 31.382448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749983, 21.926615, 30.661659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086077, 21.748196, 30.784981>,  <27.287733, 21.641144, 30.858974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086077, 21.748196, 30.784981>,  <26.749983, 21.926615, 30.661659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086077, 21.748196, 30.784981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414861, -0.894954, -0.164158,
		0.349139, 0.010028, -0.937017,
		0.840233, -0.446046, 0.308303,
		27.338146, 21.614382, 30.877472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872120, 21.448725, 30.109020>,  <26.749983, 21.926615, 30.661659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872120, 21.448725, 30.109020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059568, 21.325363, 30.440147>,  <27.172037, 21.251347, 30.638824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059568, 21.325363, 30.440147>,  <26.872120, 21.448725, 30.109020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059568, 21.325363, 30.440147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305321, -0.935877, -0.175819,
		0.828959, -0.170358, -0.532734,
		0.468622, -0.308402, 0.827818,
		27.200155, 21.232843, 30.688492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078682, 20.822573, 30.357805>,  <26.872120, 21.448725, 30.109020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078682, 20.822573, 30.357805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905916, 20.701069, 30.018116>,  <26.802258, 20.628166, 29.814302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905916, 20.701069, 30.018116>,  <27.078682, 20.822573, 30.357805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905916, 20.701069, 30.018116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177764, 0.894439, -0.410341,
		0.884222, -0.328194, -0.332326,
		-0.431916, -0.303757, -0.849223,
		26.776342, 20.609941, 29.763350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497272, 20.954557, 29.775736>,  <27.078682, 20.822573, 30.357805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497272, 20.954557, 29.775736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122517, 20.938087, 29.636860>,  <26.897663, 20.928205, 29.553534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122517, 20.938087, 29.636860>,  <27.497272, 20.954557, 29.775736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122517, 20.938087, 29.636860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152228, 0.845930, -0.511106,
		0.314741, -0.531702, -0.786277,
		-0.936891, -0.041173, -0.347189,
		26.841450, 20.925735, 29.532703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481667, 20.902546, 29.092354>,  <27.497272, 20.954557, 29.775736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481667, 20.902546, 29.092354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125645, 21.068180, 29.168602>,  <26.912031, 21.167561, 29.214352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125645, 21.068180, 29.168602>,  <27.481667, 20.902546, 29.092354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125645, 21.068180, 29.168602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276965, 0.823356, -0.495354,
		-0.362068, -0.388097, -0.847518,
		-0.890054, 0.414085, 0.190621,
		26.858629, 21.192406, 29.225788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328024, 21.289955, 28.490274>,  <27.481667, 20.902546, 29.092354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328024, 21.289955, 28.490274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018021, 21.436996, 28.695889>,  <26.832020, 21.525221, 28.819258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018021, 21.436996, 28.695889>,  <27.328024, 21.289955, 28.490274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018021, 21.436996, 28.695889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101683, 0.875345, -0.472685,
		-0.623719, -0.314065, -0.715777,
		-0.775006, 0.367606, 0.514035,
		26.785519, 21.547277, 28.850100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843870, 21.478792, 28.011065>,  <27.328024, 21.289955, 28.490274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843870, 21.478792, 28.011065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769838, 21.677299, 28.350349>,  <26.725420, 21.796404, 28.553921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769838, 21.677299, 28.350349>,  <26.843870, 21.478792, 28.011065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769838, 21.677299, 28.350349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111195, 0.868157, -0.483672,
		-0.976413, 0.004800, -0.215859,
		-0.185078, 0.496266, 0.848213,
		26.714315, 21.826180, 28.604813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423500, 21.959166, 27.760998>,  <26.843870, 21.478792, 28.011065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423500, 21.959166, 27.760998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530994, 22.090755, 28.123116>,  <26.595491, 22.169710, 28.340385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530994, 22.090755, 28.123116>,  <26.423500, 21.959166, 27.760998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530994, 22.090755, 28.123116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020045, 0.937753, -0.346723,
		-0.963006, 0.111323, 0.245412,
		0.268734, 0.328977, 0.905293,
		26.611614, 22.189449, 28.394703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900442, 22.454842, 27.945389>,  <26.423500, 21.959166, 27.760998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900442, 22.454842, 27.945389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252146, 22.520142, 28.124390>,  <26.463167, 22.559320, 28.231791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252146, 22.520142, 28.124390>,  <25.900442, 22.454842, 27.945389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252146, 22.520142, 28.124390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041238, 0.909829, -0.412929,
		-0.474558, 0.381525, 0.793242,
		0.879258, 0.163248, 0.447500,
		26.515923, 22.569117, 28.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815662, 23.132170, 27.950150>,  <25.900442, 22.454842, 27.945389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815662, 23.132170, 27.950150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201441, 23.050259, 28.016975>,  <26.432907, 23.001112, 28.057072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201441, 23.050259, 28.016975>,  <25.815662, 23.132170, 27.950150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201441, 23.050259, 28.016975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258612, 0.861490, -0.436984,
		-0.054440, 0.464652, 0.883818,
		0.964446, -0.204776, 0.167064,
		26.490774, 22.988825, 28.067095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143991, 23.715868, 28.293030>,  <25.815662, 23.132170, 27.950150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143991, 23.715868, 28.293030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433489, 23.490608, 28.133503>,  <26.607187, 23.355452, 28.037786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433489, 23.490608, 28.133503>,  <26.143991, 23.715868, 28.293030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433489, 23.490608, 28.133503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416364, 0.817255, -0.398417,
		0.550304, 0.122299, 0.825959,
		0.723745, -0.563150, -0.398818,
		26.650612, 23.321663, 28.013857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672392, 24.156895, 28.462440>,  <26.143991, 23.715868, 28.293030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672392, 24.156895, 28.462440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789757, 23.907711, 28.172382>,  <26.860176, 23.758202, 27.998348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789757, 23.907711, 28.172382>,  <26.672392, 24.156895, 28.462440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789757, 23.907711, 28.172382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427399, 0.763981, -0.483387,
		0.855126, -0.168094, 0.490412,
		0.293411, -0.622959, -0.725143,
		26.877781, 23.720823, 27.954840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272526, 24.459782, 28.226097>,  <26.672392, 24.156895, 28.462440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272526, 24.459782, 28.226097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201620, 24.209366, 27.922348>,  <27.159077, 24.059116, 27.740099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201620, 24.209366, 27.922348>,  <27.272526, 24.459782, 28.226097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201620, 24.209366, 27.922348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436925, 0.641325, -0.630713,
		0.881858, -0.443592, 0.159849,
		-0.177264, -0.626041, -0.759375,
		27.148441, 24.021553, 27.694536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006701, 24.356152, 27.826479>,  <27.272526, 24.459782, 28.226097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006701, 24.356152, 27.826479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674400, 24.325058, 27.606003>,  <27.475019, 24.306402, 27.473717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674400, 24.325058, 27.606003>,  <28.006701, 24.356152, 27.826479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674400, 24.325058, 27.606003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377616, 0.648813, -0.660642,
		0.408971, -0.756967, -0.509650,
		-0.830752, -0.077731, -0.551188,
		27.425175, 24.301739, 27.440647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196898, 24.245934, 27.133972>,  <28.006701, 24.356152, 27.826479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196898, 24.245934, 27.133972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818890, 24.374073, 27.107689>,  <27.592085, 24.450956, 27.091919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818890, 24.374073, 27.107689>,  <28.196898, 24.245934, 27.133972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818890, 24.374073, 27.107689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276110, 0.673960, -0.685231,
		-0.175229, -0.665698, -0.725356,
		-0.945018, 0.320350, -0.065709,
		27.535385, 24.470179, 27.087976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089001, 24.404808, 26.332769>,  <28.196898, 24.245934, 27.133972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089001, 24.404808, 26.332769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805965, 24.594055, 26.542713>,  <27.636145, 24.707603, 26.668680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805965, 24.594055, 26.542713>,  <28.089001, 24.404808, 26.332769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805965, 24.594055, 26.542713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232240, 0.857214, -0.459618,
		-0.667373, -0.203325, -0.716430,
		-0.707586, 0.473120, 0.524862,
		27.593689, 24.735991, 26.700172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719360, 24.781576, 25.777405>,  <28.089001, 24.404808, 26.332769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719360, 24.781576, 25.777405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627993, 24.962814, 26.122086>,  <27.573172, 25.071558, 26.328894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627993, 24.962814, 26.122086>,  <27.719360, 24.781576, 25.777405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627993, 24.962814, 26.122086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133974, 0.891308, -0.433152,
		-0.964300, 0.016505, -0.264296,
		-0.228420, 0.453097, 0.861700,
		27.559467, 25.098743, 26.380596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308645, 25.328453, 25.638403>,  <27.719360, 24.781576, 25.777405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308645, 25.328453, 25.638403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449041, 25.426422, 25.999916>,  <27.533279, 25.485203, 26.216824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449041, 25.426422, 25.999916>,  <27.308645, 25.328453, 25.638403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449041, 25.426422, 25.999916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288805, 0.889817, -0.353296,
		-0.890729, 0.385019, 0.241582,
		0.350990, 0.244921, 0.903781,
		27.554338, 25.499899, 26.271049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113190, 25.921198, 25.650640>,  <27.308645, 25.328453, 25.638403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113190, 25.921198, 25.650640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359983, 25.953617, 25.963757>,  <27.508060, 25.973068, 26.151627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359983, 25.953617, 25.963757>,  <27.113190, 25.921198, 25.650640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359983, 25.953617, 25.963757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183636, 0.952397, -0.243348,
		-0.765251, 0.293890, 0.572731,
		0.616984, 0.081048, 0.782791,
		27.545078, 25.977932, 26.198593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005144, 26.600384, 25.882172>,  <27.113190, 25.921198, 25.650640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005144, 26.600384, 25.882172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363159, 26.508327, 26.034981>,  <27.577969, 26.453093, 26.126667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363159, 26.508327, 26.034981>,  <27.005144, 26.600384, 25.882172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363159, 26.508327, 26.034981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370388, 0.860715, -0.349259,
		-0.248434, 0.454097, 0.855615,
		0.895038, -0.230142, 0.382024,
		27.631670, 26.439285, 26.149588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266727, 27.229160, 26.076021>,  <27.005144, 26.600384, 25.882172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266727, 27.229160, 26.076021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593250, 26.998192, 26.070011>,  <27.789164, 26.859610, 26.066406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593250, 26.998192, 26.070011>,  <27.266727, 27.229160, 26.076021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593250, 26.998192, 26.070011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533040, 0.763071, -0.365501,
		0.222513, 0.290353, 0.930690,
		0.816307, -0.577423, -0.015024,
		27.838142, 26.824965, 26.065504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812941, 27.581457, 26.408175>,  <27.266727, 27.229160, 26.076021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812941, 27.581457, 26.408175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990582, 27.327766, 26.155025>,  <28.097166, 27.175552, 26.003136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990582, 27.327766, 26.155025>,  <27.812941, 27.581457, 26.408175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990582, 27.327766, 26.155025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660416, 0.709060, -0.247151,
		0.605496, -0.308201, 0.733749,
		0.444100, -0.634228, -0.632874,
		28.123812, 27.137497, 25.965164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534952, 27.597429, 26.560659>,  <27.812941, 27.581457, 26.408175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534952, 27.597429, 26.560659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478691, 27.468323, 26.186272>,  <28.444935, 27.390860, 25.961639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478691, 27.468323, 26.186272>,  <28.534952, 27.597429, 26.560659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478691, 27.468323, 26.186272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717372, 0.618320, -0.321027,
		0.682345, -0.716592, 0.144573,
		-0.140653, -0.322764, -0.935970,
		28.436495, 27.371494, 25.905481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180483, 27.608257, 26.278292>,  <28.534952, 27.597429, 26.560659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180483, 27.608257, 26.278292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928303, 27.570896, 25.970055>,  <28.776995, 27.548479, 25.785112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928303, 27.570896, 25.970055>,  <29.180483, 27.608257, 26.278292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928303, 27.570896, 25.970055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541799, 0.657958, -0.523016,
		0.555867, -0.747240, -0.364204,
		-0.630449, -0.093402, -0.770590,
		28.739168, 27.542875, 25.738878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632042, 27.455709, 25.721642>,  <29.180483, 27.608257, 26.278292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632042, 27.455709, 25.721642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300880, 27.603085, 25.552490>,  <29.102184, 27.691509, 25.451000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300880, 27.603085, 25.552490>,  <29.632042, 27.455709, 25.721642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300880, 27.603085, 25.552490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538568, 0.732727, -0.415999,
		0.156584, -0.572156, -0.805058,
		-0.827904, 0.368440, -0.422879,
		29.052509, 27.713617, 25.425627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930115, 27.681311, 25.107138>,  <29.632042, 27.455709, 25.721642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930115, 27.681311, 25.107138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564913, 27.843472, 25.125347>,  <29.345791, 27.940767, 25.136272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564913, 27.843472, 25.125347>,  <29.930115, 27.681311, 25.107138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564913, 27.843472, 25.125347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354029, 0.842828, -0.405345,
		-0.202695, -0.353966, -0.913030,
		-0.913005, 0.405401, 0.045523,
		29.291012, 27.965092, 25.139004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678085, 27.959497, 24.458317>,  <29.930115, 27.681311, 25.107138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678085, 27.959497, 24.458317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449135, 28.158932, 24.718716>,  <29.311766, 28.278593, 24.874956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449135, 28.158932, 24.718716>,  <29.678085, 27.959497, 24.458317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449135, 28.158932, 24.718716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184302, 0.851818, -0.490346,
		-0.799012, -0.160681, -0.579450,
		-0.572375, 0.498586, 0.650998,
		29.277422, 28.308508, 24.914015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306662, 28.352118, 24.027214>,  <29.678085, 27.959497, 24.458317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306662, 28.352118, 24.027214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293491, 28.543781, 24.378059>,  <29.285589, 28.658779, 24.588566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293491, 28.543781, 24.378059>,  <29.306662, 28.352118, 24.027214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293491, 28.543781, 24.378059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010164, 0.877702, -0.479099,
		-0.999406, -0.006860, -0.033770,
		-0.032926, 0.479157, 0.877111,
		29.283613, 28.687529, 24.641193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684729, 28.695395, 24.156939>,  <29.306662, 28.352118, 24.027214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684729, 28.695395, 24.156939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958439, 28.893337, 24.371185>,  <29.122665, 29.012102, 24.499733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958439, 28.893337, 24.371185>,  <28.684729, 28.695395, 24.156939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958439, 28.893337, 24.371185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338266, 0.866098, -0.368036,
		-0.646022, 0.070656, 0.760041,
		0.684274, 0.494856, 0.535618,
		29.163721, 29.041794, 24.531870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322260, 29.172670, 24.591934>,  <28.684729, 28.695395, 24.156939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322260, 29.172670, 24.591934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691910, 29.316105, 24.539158>,  <28.913700, 29.402164, 24.507492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691910, 29.316105, 24.539158>,  <28.322260, 29.172670, 24.591934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691910, 29.316105, 24.539158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381982, 0.875190, -0.296870,
		0.009022, 0.324745, 0.945759,
		0.924126, 0.358584, -0.131943,
		28.969147, 29.423679, 24.499575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381268, 29.836399, 24.933289>,  <28.322260, 29.172670, 24.591934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381268, 29.836399, 24.933289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682323, 29.848625, 24.670200>,  <28.862957, 29.855961, 24.512346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682323, 29.848625, 24.670200>,  <28.381268, 29.836399, 24.933289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682323, 29.848625, 24.670200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319517, 0.890378, -0.324248,
		0.575710, 0.454195, 0.679901,
		0.752640, 0.030567, -0.657723,
		28.908115, 29.857796, 24.472883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532564, 30.604849, 24.880581>,  <28.381268, 29.836399, 24.933289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532564, 30.604849, 24.880581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693811, 30.427189, 24.560524>,  <28.790560, 30.320593, 24.368490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693811, 30.427189, 24.560524>,  <28.532564, 30.604849, 24.880581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693811, 30.427189, 24.560524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190929, 0.814272, -0.548185,
		0.895009, 0.373754, 0.243448,
		0.403119, -0.444149, -0.800142,
		28.814747, 30.293943, 24.320482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976425, 31.140955, 24.653278>,  <28.532564, 30.604849, 24.880581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976425, 31.140955, 24.653278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856949, 30.889400, 24.366146>,  <28.785263, 30.738468, 24.193867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856949, 30.889400, 24.366146>,  <28.976425, 31.140955, 24.653278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856949, 30.889400, 24.366146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094887, 0.768012, -0.633367,
		0.949622, -0.121067, -0.289070,
		-0.298689, -0.628888, -0.717833,
		28.767342, 30.700733, 24.150797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058979, 31.571360, 24.035496>,  <28.976425, 31.140955, 24.653278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058979, 31.571360, 24.035496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880035, 31.252647, 23.873009>,  <28.772669, 31.061420, 23.775517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880035, 31.252647, 23.873009>,  <29.058979, 31.571360, 24.035496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880035, 31.252647, 23.873009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344241, 0.572612, -0.744053,
		0.825451, -0.193022, -0.530447,
		-0.447358, -0.796780, -0.406217,
		28.745829, 31.013613, 23.751144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354794, 31.524288, 23.289270>,  <29.058979, 31.571360, 24.035496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354794, 31.524288, 23.289270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001993, 31.338573, 23.321541>,  <28.790312, 31.227144, 23.340902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001993, 31.338573, 23.321541>,  <29.354794, 31.524288, 23.289270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001993, 31.338573, 23.321541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389484, 0.621845, -0.679420,
		0.265279, -0.630672, -0.729301,
		-0.882003, -0.464287, 0.080674,
		28.737392, 31.199287, 23.345743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108488, 31.385754, 22.616173>,  <29.354794, 31.524288, 23.289270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108488, 31.385754, 22.616173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770748, 31.367893, 22.829746>,  <28.568104, 31.357178, 22.957890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770748, 31.367893, 22.829746>,  <29.108488, 31.385754, 22.616173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770748, 31.367893, 22.829746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455635, 0.584159, -0.671681,
		-0.281912, -0.810410, -0.513577,
		-0.844348, -0.044649, 0.533932,
		28.517445, 31.354498, 22.989925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527260, 31.131516, 22.186533>,  <29.108488, 31.385754, 22.616173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527260, 31.131516, 22.186533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316380, 31.308125, 22.476944>,  <28.189852, 31.414091, 22.651190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316380, 31.308125, 22.476944>,  <28.527260, 31.131516, 22.186533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316380, 31.308125, 22.476944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516346, 0.512119, -0.686382,
		-0.674866, -0.736743, -0.042011,
		-0.527202, 0.441524, 0.726027,
		28.158218, 31.440582, 22.694752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835918, 31.051010, 21.973167>,  <28.527260, 31.131516, 22.186533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835918, 31.051010, 21.973167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850342, 31.358425, 22.228683>,  <27.858995, 31.542873, 22.381992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850342, 31.358425, 22.228683>,  <27.835918, 31.051010, 21.973167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850342, 31.358425, 22.228683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330895, 0.612331, -0.718024,
		-0.942979, -0.185483, 0.276383,
		0.036056, 0.768535, 0.638791,
		27.861158, 31.588985, 22.420321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129522, 31.479116, 21.959967>,  <27.835918, 31.051010, 21.973167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129522, 31.479116, 21.959967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411207, 31.724949, 22.102165>,  <27.580217, 31.872448, 22.187485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411207, 31.724949, 22.102165>,  <27.129522, 31.479116, 21.959967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411207, 31.724949, 22.102165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264737, 0.691890, -0.671716,
		-0.658787, 0.378917, 0.649939,
		0.704211, 0.614581, 0.355495,
		27.622471, 31.909323, 22.208813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783030, 32.054710, 21.933313>,  <27.129522, 31.479116, 21.959967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783030, 32.054710, 21.933313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155350, 32.197014, 21.966888>,  <27.378742, 32.282394, 21.987034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155350, 32.197014, 21.966888>,  <26.783030, 32.054710, 21.933313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155350, 32.197014, 21.966888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265351, 0.815582, -0.514212,
		-0.251393, 0.456357, 0.853545,
		0.930801, 0.355758, 0.083937,
		27.434589, 32.303741, 21.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725985, 32.647106, 22.212744>,  <26.783030, 32.054710, 21.933313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725985, 32.647106, 22.212744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074175, 32.673740, 22.017670>,  <27.283089, 32.689720, 21.900625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074175, 32.673740, 22.017670>,  <26.725985, 32.647106, 22.212744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074175, 32.673740, 22.017670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372416, 0.736941, -0.564114,
		0.321833, 0.672670, 0.666287,
		0.870477, 0.066586, -0.487685,
		27.335318, 32.693718, 21.871365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859861, 33.372551, 22.141851>,  <26.725985, 32.647106, 22.212744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859861, 33.372551, 22.141851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109024, 33.238209, 21.859238>,  <27.258522, 33.157604, 21.689671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109024, 33.238209, 21.859238>,  <26.859861, 33.372551, 22.141851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109024, 33.238209, 21.859238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315099, 0.718935, -0.619551,
		0.716029, 0.608552, 0.342005,
		0.622909, -0.335851, -0.706533,
		27.295897, 33.137455, 21.647278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091789, 34.037956, 21.707712>,  <26.859861, 33.372551, 22.141851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091789, 34.037956, 21.707712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145334, 33.718098, 21.473568>,  <27.177462, 33.526184, 21.333080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145334, 33.718098, 21.473568>,  <27.091789, 34.037956, 21.707712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145334, 33.718098, 21.473568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270539, 0.538754, -0.797842,
		0.953357, 0.265166, -0.144214,
		0.133865, -0.799644, -0.585363,
		27.185493, 33.478203, 21.297958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013893, 34.325947, 22.392481>,  <27.091789, 34.037956, 21.707712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013893, 34.325947, 22.392481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718805, 34.249401, 22.133514>,  <26.541752, 34.203472, 21.978134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718805, 34.249401, 22.133514>,  <27.013893, 34.325947, 22.392481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718805, 34.249401, 22.133514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164091, -0.879399, 0.446914,
		-0.654862, 0.435933, 0.617348,
		-0.737720, -0.191365, -0.647417,
		26.497490, 34.191990, 21.939289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350018, 34.366764, 22.706936>,  <27.013893, 34.325947, 22.392481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350018, 34.366764, 22.706936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361374, 34.099098, 22.409908>,  <26.368189, 33.938499, 22.231691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361374, 34.099098, 22.409908>,  <26.350018, 34.366764, 22.706936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361374, 34.099098, 22.409908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156794, -0.736653, 0.657843,
		-0.987223, 0.097753, -0.125837,
		0.028392, -0.669168, -0.742568,
		26.369892, 33.898346, 22.187138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792200, 33.939041, 22.671198>,  <26.350018, 34.366764, 22.706936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792200, 33.939041, 22.671198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099829, 33.725475, 22.530651>,  <26.284407, 33.597336, 22.446323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099829, 33.725475, 22.530651>,  <25.792200, 33.939041, 22.671198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099829, 33.725475, 22.530651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155229, -0.689297, 0.707654,
		-0.620025, -0.489695, -0.612999,
		0.769073, -0.533918, -0.351367,
		26.330549, 33.565300, 22.425241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101418, 34.144611, 22.797392>,  <25.792200, 33.939041, 22.671198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101418, 34.144611, 22.797392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890903, 34.101089, 22.460064>,  <24.764595, 34.074978, 22.257668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890903, 34.101089, 22.460064>,  <25.101418, 34.144611, 22.797392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890903, 34.101089, 22.460064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562671, -0.699022, 0.441327,
		-0.637516, 0.706775, 0.306664,
		-0.526284, -0.108803, -0.843319,
		24.733019, 34.068447, 22.207067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.302402, 34.242222, 22.825331>,  <25.101418, 34.144611, 22.797392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.302402, 34.242222, 22.825331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447683, 33.936913, 22.611599>,  <24.534851, 33.753727, 22.483360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447683, 33.936913, 22.611599>,  <24.302402, 34.242222, 22.825331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447683, 33.936913, 22.611599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531385, -0.640769, 0.554116,
		-0.765320, 0.082677, -0.638318,
		0.363202, -0.763269, -0.534327,
		24.556644, 33.707932, 22.451302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790886, 33.755417, 22.590990>,  <24.302402, 34.242222, 22.825331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790886, 33.755417, 22.590990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119495, 33.530121, 22.626469>,  <24.316660, 33.394943, 22.647757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119495, 33.530121, 22.626469>,  <23.790886, 33.755417, 22.590990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.119495, 33.530121, 22.626469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537262, -0.712586, 0.451189,
		-0.190922, -0.418315, -0.888010,
		0.821522, -0.563236, 0.088696,
		24.365952, 33.361149, 22.653078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.989935, 34.025021, 22.470341>,  <23.790886, 33.755417, 22.590990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.989935, 34.025021, 22.470341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745514, 34.313515, 22.339840>,  <22.598862, 34.486610, 22.261539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745514, 34.313515, 22.339840>,  <22.989935, 34.025021, 22.470341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.745514, 34.313515, 22.339840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557130, 0.099057, -0.824496,
		-0.562337, -0.685573, -0.462350,
		-0.611051, 0.721234, -0.326250,
		22.562199, 34.529884, 22.241964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.969229, 34.008984, 21.771662>,  <22.989935, 34.025021, 22.470341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.969229, 34.008984, 21.771662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.820093, 34.374508, 21.836090>,  <22.730612, 34.593822, 21.874746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.820093, 34.374508, 21.836090>,  <22.969229, 34.008984, 21.771662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.820093, 34.374508, 21.836090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341618, 0.296578, -0.891818,
		-0.862721, -0.277480, -0.422749,
		-0.372840, 0.913809, 0.161072,
		22.708241, 34.648651, 21.884411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703449, 34.136223, 21.166090>,  <22.969229, 34.008984, 21.771662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703449, 34.136223, 21.166090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771414, 34.495239, 21.328838>,  <22.812193, 34.710651, 21.426487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771414, 34.495239, 21.328838>,  <22.703449, 34.136223, 21.166090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771414, 34.495239, 21.328838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415849, 0.309012, -0.855326,
		-0.893421, 0.314525, -0.320738,
		0.169910, 0.897544, 0.406872,
		22.822386, 34.764503, 21.450899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.540337, 34.513260, 20.679741>,  <22.703449, 34.136223, 21.166090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.540337, 34.513260, 20.679741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771084, 34.730656, 20.923656>,  <22.909533, 34.861092, 21.070005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771084, 34.730656, 20.923656>,  <22.540337, 34.513260, 20.679741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771084, 34.730656, 20.923656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530535, 0.318339, -0.785617,
		-0.621094, 0.776711, -0.104701,
		0.576867, 0.543489, 0.609790,
		22.944143, 34.893703, 21.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.342455, 35.285355, 20.535858>,  <22.540337, 34.513260, 20.679741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.342455, 35.285355, 20.535858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.706720, 35.297249, 20.700687>,  <22.925280, 35.304386, 20.799585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.706720, 35.297249, 20.700687>,  <22.342455, 35.285355, 20.535858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.706720, 35.297249, 20.700687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339160, 0.515745, -0.786751,
		-0.235922, 0.856226, 0.459584,
		0.910665, 0.029739, 0.412073,
		22.979919, 35.306171, 20.824310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.591524, 35.999645, 20.449194>,  <22.342455, 35.285355, 20.535858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.591524, 35.999645, 20.449194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.929409, 35.802307, 20.532215>,  <23.132139, 35.683907, 20.582027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.929409, 35.802307, 20.532215>,  <22.591524, 35.999645, 20.449194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.929409, 35.802307, 20.532215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457077, 0.463172, -0.759311,
		0.278467, 0.736265, 0.616741,
		0.844711, -0.493341, 0.207552,
		23.182823, 35.654305, 20.594481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.110104, 36.516552, 20.492704>,  <22.591524, 35.999645, 20.449194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.110104, 36.516552, 20.492704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.293682, 36.169701, 20.415291>,  <23.403830, 35.961590, 20.368843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.293682, 36.169701, 20.415291>,  <23.110104, 36.516552, 20.492704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.293682, 36.169701, 20.415291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592699, 0.461087, -0.660384,
		0.661874, 0.188374, 0.725560,
		0.458945, -0.867130, -0.193533,
		23.431366, 35.909561, 20.357231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.803255, 36.657818, 20.538074>,  <23.110104, 36.516552, 20.492704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.803255, 36.657818, 20.538074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800791, 36.320457, 20.323177>,  <23.799313, 36.118042, 20.194239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800791, 36.320457, 20.323177>,  <23.803255, 36.657818, 20.538074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.800791, 36.320457, 20.323177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733531, 0.361327, -0.575652,
		0.679628, -0.397630, 0.616438,
		-0.006161, -0.843406, -0.537242,
		23.798943, 36.067436, 20.162004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463053, 36.629818, 20.347702>,  <23.803255, 36.657818, 20.538074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463053, 36.629818, 20.347702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284363, 36.384731, 20.086929>,  <24.177149, 36.237679, 19.930466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284363, 36.384731, 20.086929>,  <24.463053, 36.629818, 20.347702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284363, 36.384731, 20.086929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620032, 0.313288, -0.719313,
		0.644978, -0.725552, 0.239952,
		-0.446725, -0.612719, -0.651930,
		24.150345, 36.200916, 19.891350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020550, 36.364296, 19.926563>,  <24.463053, 36.629818, 20.347702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020550, 36.364296, 19.926563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666861, 36.353489, 19.740051>,  <24.454647, 36.347004, 19.628143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666861, 36.353489, 19.740051>,  <25.020550, 36.364296, 19.926563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666861, 36.353489, 19.740051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438440, 0.296088, -0.848588,
		0.160992, -0.954778, -0.249960,
		-0.884224, -0.027023, -0.466281,
		24.401594, 36.345383, 19.600166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201946, 35.988102, 19.338011>,  <25.020550, 36.364296, 19.926563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201946, 35.988102, 19.338011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852802, 36.158531, 19.242867>,  <24.643316, 36.260788, 19.185780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852802, 36.158531, 19.242867>,  <25.201946, 35.988102, 19.338011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852802, 36.158531, 19.242867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402172, 0.352069, -0.845166,
		-0.276358, -0.833373, -0.478661,
		-0.872860, 0.426072, -0.237862,
		24.590944, 36.286354, 19.171509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067173, 35.824894, 18.722445>,  <25.201946, 35.988102, 19.338011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067173, 35.824894, 18.722445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843189, 36.153671, 18.764114>,  <24.708799, 36.350937, 18.789116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843189, 36.153671, 18.764114>,  <25.067173, 35.824894, 18.722445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843189, 36.153671, 18.764114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362009, 0.355822, -0.861592,
		-0.745247, -0.444746, -0.496798,
		-0.559961, 0.821944, 0.104173,
		24.675201, 36.400253, 18.795366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.946630, 35.993790, 18.084227>,  <25.067173, 35.824894, 18.722445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.946630, 35.993790, 18.084227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852430, 36.322380, 18.291962>,  <24.795910, 36.519535, 18.416603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852430, 36.322380, 18.291962>,  <24.946630, 35.993790, 18.084227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852430, 36.322380, 18.291962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134566, 0.556783, -0.819686,
		-0.962513, -0.123152, -0.241666,
		-0.235501, 0.821478, 0.519339,
		24.781780, 36.568825, 18.447763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660709, 36.406868, 17.565605>,  <24.946630, 35.993790, 18.084227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660709, 36.406868, 17.565605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759418, 36.662712, 17.856812>,  <24.818644, 36.816219, 18.031536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759418, 36.662712, 17.856812>,  <24.660709, 36.406868, 17.565605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759418, 36.662712, 17.856812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141803, 0.719330, -0.680041,
		-0.958642, 0.271050, 0.086812,
		0.246772, 0.639606, 0.728016,
		24.833450, 36.854595, 18.075216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160360, 37.014679, 17.464186>,  <24.660709, 36.406868, 17.565605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160360, 37.014679, 17.464186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514996, 37.104031, 17.626202>,  <24.727777, 37.157642, 17.723412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514996, 37.104031, 17.626202>,  <24.160360, 37.014679, 17.464186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514996, 37.104031, 17.626202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123736, 0.729211, -0.673009,
		-0.445699, 0.646801, 0.618871,
		0.886590, 0.223383, 0.405040,
		24.780973, 37.171047, 17.747713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.222021, 37.767712, 17.618362>,  <24.160360, 37.014679, 17.464186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.222021, 37.767712, 17.618362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615398, 37.697365, 17.635845>,  <24.851425, 37.655155, 17.646336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615398, 37.697365, 17.635845>,  <24.222021, 37.767712, 17.618362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615398, 37.697365, 17.635845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169516, 0.807510, -0.564972,
		0.064066, 0.563026, 0.823952,
		0.983443, -0.175868, 0.043708,
		24.910431, 37.644604, 17.648958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477163, 38.423183, 17.498779>,  <24.222021, 37.767712, 17.618362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477163, 38.423183, 17.498779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794830, 38.184879, 17.450832>,  <24.985430, 38.041897, 17.422064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794830, 38.184879, 17.450832>,  <24.477163, 38.423183, 17.498779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794830, 38.184879, 17.450832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336297, 0.595145, -0.729868,
		0.506165, 0.539326, 0.672997,
		0.794167, -0.595760, -0.119868,
		25.033081, 38.006153, 17.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102919, 38.697124, 17.692091>,  <24.477163, 38.423183, 17.498779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102919, 38.697124, 17.692091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223024, 38.416199, 17.433914>,  <25.295088, 38.247643, 17.279007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223024, 38.416199, 17.433914>,  <25.102919, 38.697124, 17.692091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223024, 38.416199, 17.433914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484463, 0.695180, -0.531057,
		0.821668, -0.153237, 0.548982,
		0.300264, -0.702313, -0.645444,
		25.313103, 38.205505, 17.240280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764711, 38.846237, 17.653984>,  <25.102919, 38.697124, 17.692091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764711, 38.846237, 17.653984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675615, 38.632088, 17.328098>,  <25.622158, 38.503597, 17.132566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675615, 38.632088, 17.328098>,  <25.764711, 38.846237, 17.653984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675615, 38.632088, 17.328098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398475, 0.712711, -0.577287,
		0.889722, -0.453228, 0.054586,
		-0.222739, -0.535376, -0.814715,
		25.608793, 38.471474, 17.083683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410484, 38.815182, 17.289480>,  <25.764711, 38.846237, 17.653984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410484, 38.815182, 17.289480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105799, 38.759705, 17.036324>,  <25.922987, 38.726418, 16.884430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105799, 38.759705, 17.036324>,  <26.410484, 38.815182, 17.289480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105799, 38.759705, 17.036324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303360, 0.786788, -0.537529,
		0.572504, -0.601439, -0.557235,
		-0.761717, -0.138695, -0.632891,
		25.877283, 38.718098, 16.846457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673279, 38.870960, 16.676216>,  <26.410484, 38.815182, 17.289480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673279, 38.870960, 16.676216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290234, 38.920902, 16.572380>,  <26.060406, 38.950867, 16.510078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290234, 38.920902, 16.572380>,  <26.673279, 38.870960, 16.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290234, 38.920902, 16.572380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244565, 0.828568, -0.503650,
		0.152204, -0.545788, -0.823984,
		-0.957613, 0.124860, -0.259592,
		26.002951, 38.958359, 16.494503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611622, 39.110268, 15.968079>,  <26.673279, 38.870960, 16.676216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611622, 39.110268, 15.968079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238995, 39.179340, 16.096058>,  <26.015419, 39.220783, 16.172846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238995, 39.179340, 16.096058>,  <26.611622, 39.110268, 15.968079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238995, 39.179340, 16.096058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001874, 0.877721, -0.479168,
		-0.363567, -0.446977, -0.817331,
		-0.931566, 0.172678, 0.319948,
		25.959524, 39.231144, 16.192041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296818, 39.408691, 15.403709>,  <26.611622, 39.110268, 15.968079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296818, 39.408691, 15.403709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110762, 39.525169, 15.738097>,  <25.999128, 39.595058, 15.938730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110762, 39.525169, 15.738097>,  <26.296818, 39.408691, 15.403709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110762, 39.525169, 15.738097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059439, 0.952490, -0.298715,
		-0.883238, -0.089256, -0.460352,
		-0.465143, 0.291199, 0.835970,
		25.971218, 39.612530, 15.988888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455187, 40.045273, 14.920184>,  <26.296818, 39.408691, 15.403709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455187, 40.045273, 14.920184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535355, 40.258938, 14.591672>,  <26.583454, 40.387138, 14.394565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535355, 40.258938, 14.591672>,  <26.455187, 40.045273, 14.920184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535355, 40.258938, 14.591672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059679, -0.830077, -0.554446,
		-0.977891, 0.160134, -0.134484,
		0.200417, 0.534163, -0.821281,
		26.595480, 40.419186, 14.345287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921841, 39.917717, 14.473188>,  <26.455187, 40.045273, 14.920184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921841, 39.917717, 14.473188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243250, 40.021793, 14.259028>,  <26.436096, 40.084240, 14.130532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243250, 40.021793, 14.259028>,  <25.921841, 39.917717, 14.473188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243250, 40.021793, 14.259028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105968, -0.822529, -0.558764,
		-0.585767, 0.505715, -0.633348,
		0.803522, 0.260190, -0.535400,
		26.484306, 40.099850, 14.098409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161568, 39.834896, 14.625495>,  <25.921841, 39.917717, 14.473188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161568, 39.834896, 14.625495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876501, 39.929649, 14.361377>,  <24.705462, 39.986504, 14.202906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876501, 39.929649, 14.361377>,  <25.161568, 39.834896, 14.625495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876501, 39.929649, 14.361377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297271, -0.954549, -0.021601,
		-0.635401, 0.180893, 0.750695,
		-0.712668, 0.236885, -0.660296,
		24.662701, 40.000713, 14.163288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571917, 39.607578, 14.905159>,  <25.161568, 39.834896, 14.625495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571917, 39.607578, 14.905159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557737, 39.620861, 14.505631>,  <24.549231, 39.628830, 14.265915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557737, 39.620861, 14.505631>,  <24.571917, 39.607578, 14.905159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557737, 39.620861, 14.505631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328129, -0.944426, -0.019757,
		-0.943968, 0.327042, 0.044368,
		-0.035441, 0.033208, -0.998820,
		24.547104, 39.630825, 14.205986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.959915, 39.302895, 14.632343>,  <24.571917, 39.607578, 14.905159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.959915, 39.302895, 14.632343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252216, 39.256771, 14.363210>,  <24.427597, 39.229095, 14.201730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252216, 39.256771, 14.363210>,  <23.959915, 39.302895, 14.632343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252216, 39.256771, 14.363210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226572, -0.970727, -0.079714,
		-0.643946, 0.210696, -0.735487,
		0.730752, -0.115310, -0.672834,
		24.471441, 39.222179, 14.161360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.890350, 38.933262, 13.915965>,  <23.959915, 39.302895, 14.632343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.890350, 38.933262, 13.915965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242483, 38.861088, 14.091445>,  <24.453762, 38.817783, 14.196733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242483, 38.861088, 14.091445>,  <23.890350, 38.933262, 13.915965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242483, 38.861088, 14.091445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158000, -0.983557, -0.087478,
		0.447271, 0.007695, -0.894366,
		0.880332, -0.180436, 0.438700,
		24.506582, 38.806957, 14.223055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.468691, 38.537853, 14.416664>,  <23.890350, 38.933262, 13.915965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.468691, 38.537853, 14.416664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.221416, 38.326092, 14.184258>,  <23.073051, 38.199036, 14.044815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.221416, 38.326092, 14.184258>,  <23.468691, 38.537853, 14.416664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.221416, 38.326092, 14.184258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602515, -0.155558, 0.782801,
		-0.504801, 0.833985, -0.222812,
		-0.618184, -0.529407, -0.581014,
		23.035961, 38.167271, 14.009954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.850500, 38.975914, 14.397664>,  <23.468691, 38.537853, 14.416664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.850500, 38.975914, 14.397664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.787146, 38.586624, 14.331025>,  <22.749134, 38.353050, 14.291042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.787146, 38.586624, 14.331025>,  <22.850500, 38.975914, 14.397664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.787146, 38.586624, 14.331025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549697, -0.053248, 0.833665,
		-0.820212, 0.223618, -0.526543,
		-0.158385, -0.973221, -0.166596,
		22.739630, 38.294659, 14.281046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.168812, 38.750622, 14.713277>,  <22.850500, 38.975914, 14.397664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.168812, 38.750622, 14.713277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395397, 38.422459, 14.682168>,  <22.531349, 38.225559, 14.663503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395397, 38.422459, 14.682168>,  <22.168812, 38.750622, 14.713277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395397, 38.422459, 14.682168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164800, -0.205244, 0.964736,
		-0.807439, -0.533673, -0.251466,
		0.566465, -0.820408, -0.077772,
		22.565336, 38.176338, 14.658836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.757113, 38.110001, 14.876065>,  <22.168812, 38.750622, 14.713277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.757113, 38.110001, 14.876065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142796, 38.028297, 14.943686>,  <22.374207, 37.979275, 14.984260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142796, 38.028297, 14.943686>,  <21.757113, 38.110001, 14.876065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.142796, 38.028297, 14.943686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229813, -0.325835, 0.917070,
		-0.132232, -0.923099, -0.361114,
		0.964210, -0.204254, 0.169054,
		22.432058, 37.967022, 14.994403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.598040, 37.440212, 15.268605>,  <21.757113, 38.110001, 14.876065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.598040, 37.440212, 15.268605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.963156, 37.587009, 15.340304>,  <22.182226, 37.675087, 15.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.963156, 37.587009, 15.340304>,  <21.598040, 37.440212, 15.268605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963156, 37.587009, 15.340304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086593, -0.255006, 0.963054,
		0.399143, -0.894588, -0.200989,
		0.912790, 0.366992, 0.179249,
		22.236994, 37.697105, 15.394079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.863354, 36.937061, 15.703791>,  <21.598040, 37.440212, 15.268605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.863354, 36.937061, 15.703791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.081430, 37.267746, 15.759389>,  <22.212276, 37.466156, 15.792748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.081430, 37.267746, 15.759389>,  <21.863354, 36.937061, 15.703791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.081430, 37.267746, 15.759389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044353, -0.194018, 0.979995,
		0.837137, -0.528121, -0.142445,
		0.545193, 0.826707, 0.138996,
		22.244987, 37.515759, 15.801087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412731, 36.725079, 16.182566>,  <21.863354, 36.937061, 15.703791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412731, 36.725079, 16.182566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.361898, 37.121429, 16.200531>,  <22.331398, 37.359238, 16.211309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.361898, 37.121429, 16.200531>,  <22.412731, 36.725079, 16.182566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.361898, 37.121429, 16.200531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010267, -0.043963, 0.998981,
		0.991839, 0.127415, -0.004586,
		-0.127084, 0.990875, 0.044913,
		22.323772, 37.418694, 16.214005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.963665, 36.878826, 16.563913>,  <22.412731, 36.725079, 16.182566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.963665, 36.878826, 16.563913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.706823, 37.185459, 16.566921>,  <22.552719, 37.369438, 16.568726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.706823, 37.185459, 16.566921>,  <22.963665, 36.878826, 16.563913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.706823, 37.185459, 16.566921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029889, -0.034838, 0.998946,
		0.766035, 0.641202, 0.045282,
		-0.642103, 0.766581, 0.007522,
		22.514193, 37.415432, 16.569178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.258274, 37.439621, 16.938192>,  <22.963665, 36.878826, 16.563913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.258274, 37.439621, 16.938192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.866165, 37.517418, 16.952286>,  <22.630899, 37.564095, 16.960743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.866165, 37.517418, 16.952286>,  <23.258274, 37.439621, 16.938192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866165, 37.517418, 16.952286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042375, 0.032675, 0.998567,
		0.193063, 0.980359, -0.040272,
		-0.980271, 0.194493, 0.035234,
		22.572084, 37.575768, 16.962856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.214268, 37.713470, 17.585588>,  <23.258274, 37.439621, 16.938192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.214268, 37.713470, 17.585588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.833326, 37.650158, 17.481300>,  <22.604761, 37.612171, 17.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.833326, 37.650158, 17.481300>,  <23.214268, 37.713470, 17.585588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.833326, 37.650158, 17.481300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244236, -0.116269, 0.962720,
		-0.182691, 0.980525, 0.072072,
		-0.952351, -0.158277, -0.260721,
		22.547621, 37.602676, 17.403084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.761440, 38.027939, 18.110983>,  <23.214268, 37.713470, 17.585588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.761440, 38.027939, 18.110983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536020, 37.744808, 17.940620>,  <22.400768, 37.574932, 17.838402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536020, 37.744808, 17.940620>,  <22.761440, 38.027939, 18.110983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536020, 37.744808, 17.940620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451539, -0.167798, 0.876331,
		-0.691753, 0.686172, -0.225046,
		-0.563551, -0.707822, -0.425909,
		22.366955, 37.532463, 17.812847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.182714, 38.169441, 18.247332>,  <22.761440, 38.027939, 18.110983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.182714, 38.169441, 18.247332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.140106, 37.781933, 18.157772>,  <22.114542, 37.549427, 18.104036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.140106, 37.781933, 18.157772>,  <22.182714, 38.169441, 18.247332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.140106, 37.781933, 18.157772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378253, -0.168769, 0.910188,
		-0.919553, 0.181643, -0.348465,
		-0.106519, -0.968774, -0.223899,
		22.108150, 37.491302, 18.090603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471378, 37.960705, 18.435692>,  <22.182714, 38.169441, 18.247332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471378, 37.960705, 18.435692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.648773, 37.602200, 18.433491>,  <21.755211, 37.387096, 18.432171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.648773, 37.602200, 18.433491>,  <21.471378, 37.960705, 18.435692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.648773, 37.602200, 18.433491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545085, -0.274582, 0.792141,
		-0.711477, -0.348306, -0.610314,
		0.443489, -0.896263, -0.005502,
		21.781820, 37.333321, 18.431841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.949879, 37.384445, 18.548630>,  <21.471378, 37.960705, 18.435692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.949879, 37.384445, 18.548630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307848, 37.249584, 18.665550>,  <21.522631, 37.168667, 18.735703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307848, 37.249584, 18.665550>,  <20.949879, 37.384445, 18.548630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.307848, 37.249584, 18.665550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406002, -0.343470, 0.846871,
		-0.185126, -0.876560, -0.444264,
		0.894925, -0.337150, 0.292300,
		21.576326, 37.148438, 18.753241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788221, 36.801113, 18.799671>,  <20.949879, 37.384445, 18.548630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788221, 36.801113, 18.799671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.146053, 36.800018, 18.978432>,  <21.360752, 36.799362, 19.085688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.146053, 36.800018, 18.978432>,  <20.788221, 36.801113, 18.799671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.146053, 36.800018, 18.978432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399722, -0.452139, 0.797366,
		0.199877, -0.891943, -0.405569,
		0.894579, -0.002740, 0.446901,
		21.414427, 36.799194, 19.112501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.923985, 36.130795, 19.127316>,  <20.788221, 36.801113, 18.799671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.923985, 36.130795, 19.127316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165806, 36.376999, 19.329567>,  <21.310900, 36.524723, 19.450918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165806, 36.376999, 19.329567>,  <20.923985, 36.130795, 19.127316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.165806, 36.376999, 19.329567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243238, -0.461797, 0.852982,
		0.758517, -0.638663, -0.129467,
		0.604555, 0.615510, 0.505628,
		21.347172, 36.561653, 19.481255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373463, 35.667969, 19.604689>,  <20.923985, 36.130795, 19.127316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373463, 35.667969, 19.604689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371870, 36.043591, 19.742188>,  <21.370914, 36.268963, 19.824688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371870, 36.043591, 19.742188>,  <21.373463, 35.667969, 19.604689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.371870, 36.043591, 19.742188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132023, -0.341237, 0.930660,
		0.991239, -0.041678, 0.125335,
		-0.003981, 0.939053, 0.343749,
		21.370676, 36.325306, 19.845312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520700, 35.492393, 20.325489>,  <21.373463, 35.667969, 19.604689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520700, 35.492393, 20.325489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.390236, 35.870518, 20.324547>,  <21.311956, 36.097393, 20.323982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.390236, 35.870518, 20.324547>,  <21.520700, 35.492393, 20.325489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.390236, 35.870518, 20.324547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338706, -0.114537, 0.933895,
		0.882551, 0.305398, 0.357540,
		-0.326161, 0.945311, -0.002356,
		21.292387, 36.154110, 20.323841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.821224, 35.778610, 20.885586>,  <21.520700, 35.492393, 20.325489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.821224, 35.778610, 20.885586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526808, 36.038818, 20.810680>,  <21.350157, 36.194942, 20.765738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526808, 36.038818, 20.810680>,  <21.821224, 35.778610, 20.885586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.526808, 36.038818, 20.810680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231918, 0.017569, 0.972577,
		0.635968, 0.759288, 0.137935,
		-0.736042, 0.650517, -0.187266,
		21.305996, 36.233974, 20.754501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891195, 36.222099, 21.376444>,  <21.821224, 35.778610, 20.885586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891195, 36.222099, 21.376444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518932, 36.298470, 21.251591>,  <21.295574, 36.344292, 21.176680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518932, 36.298470, 21.251591>,  <21.891195, 36.222099, 21.376444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.518932, 36.298470, 21.251591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330086, -0.070029, 0.941349,
		0.157873, 0.979102, 0.128196,
		-0.930655, 0.190929, -0.312133,
		21.239737, 36.355747, 21.157951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.671122, 36.776321, 21.788328>,  <21.891195, 36.222099, 21.376444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.671122, 36.776321, 21.788328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328766, 36.609535, 21.665958>,  <21.123352, 36.509464, 21.592537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328766, 36.609535, 21.665958>,  <21.671122, 36.776321, 21.788328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328766, 36.609535, 21.665958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315364, -0.048021, 0.947755,
		-0.409876, 0.907651, -0.090396,
		-0.855890, -0.416970, -0.305923,
		21.071999, 36.484444, 21.574181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121777, 37.221371, 21.980751>,  <21.671122, 36.776321, 21.788328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121777, 37.221371, 21.980751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.976433, 36.851105, 21.938595>,  <20.889227, 36.628944, 21.913301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.976433, 36.851105, 21.938595>,  <21.121777, 37.221371, 21.980751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976433, 36.851105, 21.938595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327738, 0.021109, 0.944533,
		-0.872101, 0.377744, -0.311047,
		-0.363358, -0.925669, -0.105391,
		20.867426, 36.573402, 21.906977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.444035, 37.182575, 22.325735>,  <21.121777, 37.221371, 21.980751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.444035, 37.182575, 22.325735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585665, 36.810287, 22.289078>,  <20.670643, 36.586914, 22.267084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585665, 36.810287, 22.289078>,  <20.444035, 37.182575, 22.325735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585665, 36.810287, 22.289078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191218, -0.167968, 0.967069,
		-0.915461, -0.324889, -0.237443,
		0.354073, -0.930717, -0.091643,
		20.691887, 36.531071, 22.261585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897732, 36.682663, 22.564329>,  <20.444035, 37.182575, 22.325735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897732, 36.682663, 22.564329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276335, 36.555935, 22.588818>,  <20.503496, 36.479897, 22.603510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276335, 36.555935, 22.588818>,  <19.897732, 36.682663, 22.564329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276335, 36.555935, 22.588818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144297, -0.245868, 0.958503,
		-0.288629, -0.916061, -0.278433,
		0.946505, -0.316829, 0.061220,
		20.560287, 36.460888, 22.607183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.876270, 36.005013, 22.822142>,  <19.897732, 36.682663, 22.564329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.876270, 36.005013, 22.822142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240780, 36.143578, 22.911205>,  <20.459486, 36.226715, 22.964643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240780, 36.143578, 22.911205>,  <19.876270, 36.005013, 22.822142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240780, 36.143578, 22.911205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173141, -0.168272, 0.970416,
		0.373630, -0.922867, -0.093364,
		0.911275, 0.346411, 0.222658,
		20.514162, 36.247501, 22.978003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093735, 36.217281, 22.700485>,  <19.876270, 36.005013, 22.822142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093735, 36.217281, 22.700485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902355, 36.092731, 23.028908>,  <18.787527, 36.018002, 23.225962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902355, 36.092731, 23.028908>,  <19.093735, 36.217281, 22.700485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902355, 36.092731, 23.028908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788077, 0.564686, -0.245081,
		-0.387326, -0.764313, -0.515562,
		-0.478450, -0.311376, 0.821055,
		18.758820, 35.999317, 23.275225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.473297, 36.550095, 22.874542>,  <19.093735, 36.217281, 22.700485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.473297, 36.550095, 22.874542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252367, 36.606247, 23.203232>,  <18.119808, 36.639938, 23.400446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252367, 36.606247, 23.203232>,  <18.473297, 36.550095, 22.874542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252367, 36.606247, 23.203232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485805, 0.855242, 0.180426,
		-0.677442, 0.498851, -0.540573,
		-0.552327, 0.140385, 0.821722,
		18.086668, 36.648361, 23.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277590, 37.225872, 22.897881>,  <18.473297, 36.550095, 22.874542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277590, 37.225872, 22.897881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.302952, 37.074303, 23.267181>,  <18.318169, 36.983360, 23.488762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.302952, 37.074303, 23.267181>,  <18.277590, 37.225872, 22.897881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.302952, 37.074303, 23.267181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615009, 0.743411, 0.262876,
		-0.785966, 0.551142, 0.280178,
		0.063405, -0.378924, 0.923253,
		18.321974, 36.960625, 23.544157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.125742, 24.264734, 23.925665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.377382, 24.321026, 24.231457>,  <31.528366, 24.354801, 24.414932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.377382, 24.321026, 24.231457>,  <31.125742, 24.264734, 23.925665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377382, 24.321026, 24.231457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113133, 0.956427, -0.269162,
		-0.769048, 0.255818, 0.585767,
		0.629100, 0.140729, 0.764480,
		31.566113, 24.363245, 24.460800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900314, 24.862122, 24.371790>,  <31.125742, 24.264734, 23.925665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900314, 24.862122, 24.371790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287151, 24.810814, 24.459682>,  <31.519253, 24.780029, 24.512417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287151, 24.810814, 24.459682>,  <30.900314, 24.862122, 24.371790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287151, 24.810814, 24.459682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147276, 0.986445, -0.072359,
		-0.207471, 0.102339, 0.972873,
		0.967091, -0.128269, 0.219731,
		31.577278, 24.772333, 24.525602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082888, 25.517765, 24.764849>,  <30.900314, 24.862122, 24.371790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082888, 25.517765, 24.764849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.417130, 25.338058, 24.638405>,  <31.617676, 25.230234, 24.562538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.417130, 25.338058, 24.638405>,  <31.082888, 25.517765, 24.764849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417130, 25.338058, 24.638405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402989, 0.892398, -0.203039,
		0.373313, 0.042272, 0.926742,
		0.835606, -0.449264, -0.316109,
		31.667810, 25.203279, 24.543571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546877, 25.794750, 25.115269>,  <31.082888, 25.517765, 24.764849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546877, 25.794750, 25.115269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.764391, 25.650208, 24.812290>,  <31.894899, 25.563482, 24.630503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.764391, 25.650208, 24.812290>,  <31.546877, 25.794750, 25.115269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764391, 25.650208, 24.812290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464067, 0.881481, -0.087367,
		0.699243, -0.303996, 0.647028,
		0.543784, -0.361356, -0.757444,
		31.927526, 25.541801, 24.585056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230404, 26.108953, 25.071211>,  <31.546877, 25.794750, 25.115269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230404, 26.108953, 25.071211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.165932, 25.956894, 24.706902>,  <32.127247, 25.865658, 24.488316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.165932, 25.956894, 24.706902>,  <32.230404, 26.108953, 25.071211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165932, 25.956894, 24.706902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407224, 0.815001, -0.412241,
		0.898994, -0.437333, 0.023444,
		-0.161179, -0.380149, -0.910773,
		32.117577, 25.842850, 24.433670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714371, 26.409826, 24.758385>,  <32.230404, 26.108953, 25.071211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714371, 26.409826, 24.758385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480255, 26.274113, 24.463814>,  <32.339787, 26.192684, 24.287071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480255, 26.274113, 24.463814>,  <32.714371, 26.409826, 24.758385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480255, 26.274113, 24.463814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251673, 0.787367, -0.562773,
		0.770774, -0.514726, -0.375453,
		-0.585293, -0.339280, -0.736425,
		32.304668, 26.172327, 24.242886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064034, 26.434793, 24.165806>,  <32.714371, 26.409826, 24.758385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064034, 26.434793, 24.165806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.684055, 26.480022, 24.049309>,  <32.456070, 26.507160, 23.979410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.684055, 26.480022, 24.049309>,  <33.064034, 26.434793, 24.165806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684055, 26.480022, 24.049309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250120, 0.833846, -0.492078,
		0.187209, -0.540292, -0.820388,
		-0.949943, 0.113074, -0.291242,
		32.399071, 26.513945, 23.961937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119225, 26.920034, 23.571545>,  <33.064034, 26.434793, 24.165806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119225, 26.920034, 23.571545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.725632, 26.939621, 23.640102>,  <32.489475, 26.951372, 23.681236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.725632, 26.939621, 23.640102>,  <33.119225, 26.920034, 23.571545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725632, 26.939621, 23.640102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074638, 0.759997, -0.645626,
		-0.161872, -0.648079, -0.744172,
		-0.983985, 0.048965, 0.171394,
		32.430435, 26.954311, 23.691521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897575, 27.041412, 22.839109>,  <33.119225, 26.920034, 23.571545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897575, 27.041412, 22.839109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.619217, 27.126904, 23.113350>,  <32.452202, 27.178198, 23.277893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.619217, 27.126904, 23.113350>,  <32.897575, 27.041412, 22.839109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619217, 27.126904, 23.113350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252173, 0.821168, -0.511949,
		-0.672409, -0.529154, -0.517553,
		-0.695898, 0.213726, 0.685599,
		32.410446, 27.191021, 23.319029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347073, 27.129181, 22.552345>,  <32.897575, 27.041412, 22.839109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347073, 27.129181, 22.552345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288452, 27.336369, 22.889446>,  <32.253281, 27.460682, 23.091707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288452, 27.336369, 22.889446>,  <32.347073, 27.129181, 22.552345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288452, 27.336369, 22.889446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271877, 0.798051, -0.537771,
		-0.951108, -0.307934, 0.023872,
		-0.146547, 0.517969, 0.842753,
		32.244488, 27.491758, 23.142273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727987, 27.438715, 22.421204>,  <32.347073, 27.129181, 22.552345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727987, 27.438715, 22.421204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.904341, 27.667049, 22.698265>,  <32.010155, 27.804050, 22.864502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.904341, 27.667049, 22.698265>,  <31.727987, 27.438715, 22.421204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904341, 27.667049, 22.698265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264531, 0.820065, -0.507461,
		-0.857697, 0.040504, 0.512558,
		0.440885, 0.570835, 0.692653,
		32.036606, 27.838301, 22.906061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186142, 27.881845, 22.512728>,  <31.727987, 27.438715, 22.421204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186142, 27.881845, 22.512728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.511971, 28.038940, 22.683479>,  <31.707468, 28.133198, 22.785931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.511971, 28.038940, 22.683479>,  <31.186142, 27.881845, 22.512728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511971, 28.038940, 22.683479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302292, 0.915508, -0.265451,
		-0.495065, 0.087186, 0.864470,
		0.814573, 0.392738, 0.426880,
		31.756342, 28.156761, 22.811543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873020, 28.424253, 22.932802>,  <31.186142, 27.881845, 22.512728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873020, 28.424253, 22.932802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.260082, 28.497169, 22.863045>,  <31.492319, 28.540918, 22.821190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.260082, 28.497169, 22.863045>,  <30.873020, 28.424253, 22.932802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260082, 28.497169, 22.863045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242888, 0.860004, -0.448775,
		0.068174, 0.476618, 0.876463,
		0.967655, 0.182288, -0.174395,
		31.550379, 28.551855, 22.810726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960768, 29.125151, 23.032478>,  <30.873020, 28.424253, 22.932802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960768, 29.125151, 23.032478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.284422, 29.048538, 22.810265>,  <31.478615, 29.002571, 22.676937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.284422, 29.048538, 22.810265>,  <30.960768, 29.125151, 23.032478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284422, 29.048538, 22.810265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164945, 0.833355, -0.527554,
		0.564000, 0.518494, 0.642703,
		0.809133, -0.191530, -0.555535,
		31.527163, 28.991079, 22.643604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405199, 29.734671, 23.041523>,  <30.960768, 29.125151, 23.032478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405199, 29.734671, 23.041523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.468967, 29.531521, 22.702904>,  <31.507229, 29.409630, 22.499731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.468967, 29.531521, 22.702904>,  <31.405199, 29.734671, 23.041523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468967, 29.531521, 22.702904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242277, 0.811165, -0.532272,
		0.957020, 0.289954, 0.006269,
		0.159419, -0.507876, -0.846550,
		31.516792, 29.379158, 22.448938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654011, 30.164389, 22.590525>,  <31.405199, 29.734671, 23.041523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654011, 30.164389, 22.590525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.559042, 29.877583, 22.328373>,  <31.502062, 29.705500, 22.171082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.559042, 29.877583, 22.328373>,  <31.654011, 30.164389, 22.590525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559042, 29.877583, 22.328373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161399, 0.694409, -0.701246,
		0.957905, -0.060712, -0.280593,
		-0.237420, -0.717015, -0.655379,
		31.487816, 29.662477, 22.131760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053955, 30.375256, 21.911755>,  <31.654011, 30.164389, 22.590525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053955, 30.375256, 21.911755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.765234, 30.114864, 21.817745>,  <31.592003, 29.958630, 21.761339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.765234, 30.114864, 21.817745>,  <32.053955, 30.375256, 21.911755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765234, 30.114864, 21.817745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256378, 0.566909, -0.782870,
		0.642868, -0.504818, -0.576090,
		-0.721797, -0.650978, -0.235023,
		31.548695, 29.919571, 21.747238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157925, 30.252338, 21.222231>,  <32.053955, 30.375256, 21.911755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157925, 30.252338, 21.222231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.777239, 30.179718, 21.321251>,  <31.548828, 30.136147, 21.380663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.777239, 30.179718, 21.321251>,  <32.157925, 30.252338, 21.222231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777239, 30.179718, 21.321251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301615, 0.703202, -0.643844,
		-0.057187, -0.687420, -0.724005,
		-0.951713, -0.181551, 0.247550,
		31.491724, 30.125252, 21.395515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852940, 30.213663, 20.620289>,  <32.157925, 30.252338, 21.222231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852940, 30.213663, 20.620289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.549870, 30.281734, 20.872311>,  <31.368029, 30.322577, 21.023523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.549870, 30.281734, 20.872311>,  <31.852940, 30.213663, 20.620289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549870, 30.281734, 20.872311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398006, 0.644617, -0.652733,
		-0.517225, -0.745324, -0.420678,
		-0.757674, 0.170177, 0.630055,
		31.322567, 30.332788, 21.061327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178900, 30.339918, 20.259533>,  <31.852940, 30.213663, 20.620289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178900, 30.339918, 20.259533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.086981, 30.506409, 20.611431>,  <31.031830, 30.606304, 20.822569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.086981, 30.506409, 20.611431>,  <31.178900, 30.339918, 20.259533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086981, 30.506409, 20.611431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559280, 0.683297, -0.469373,
		-0.796492, -0.599883, 0.075769,
		-0.229796, 0.416228, 0.879743,
		31.018042, 30.631277, 20.875355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458483, 30.504965, 20.203348>,  <31.178900, 30.339918, 20.259533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458483, 30.504965, 20.203348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.606459, 30.725163, 20.502708>,  <30.695244, 30.857281, 20.682323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.606459, 30.725163, 20.502708>,  <30.458483, 30.504965, 20.203348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606459, 30.725163, 20.502708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610440, 0.751284, -0.250868,
		-0.700362, -0.364046, 0.613973,
		0.369941, 0.550492, 0.748399,
		30.717442, 30.890310, 20.727228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876385, 30.890144, 20.431553>,  <30.458483, 30.504965, 20.203348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876385, 30.890144, 20.431553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.185701, 31.083286, 20.595928>,  <30.371292, 31.199171, 20.694553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.185701, 31.083286, 20.595928>,  <29.876385, 30.890144, 20.431553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185701, 31.083286, 20.595928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368653, 0.869704, -0.328191,
		-0.515864, 0.102293, 0.850541,
		0.773291, 0.482857, 0.410939,
		30.417688, 31.228144, 20.719210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628780, 31.484318, 20.677216>,  <29.876385, 30.890144, 20.431553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628780, 31.484318, 20.677216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.014084, 31.559830, 20.600800>,  <30.245266, 31.605137, 20.554951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.014084, 31.559830, 20.600800>,  <29.628780, 31.484318, 20.677216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014084, 31.559830, 20.600800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266565, 0.758925, -0.594118,
		0.032826, 0.623214, 0.781362,
		0.963258, 0.188781, -0.191040,
		30.303061, 31.616465, 20.543488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109106, 31.060707, 20.834757>,  <29.628780, 31.484318, 20.677216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109106, 31.060707, 20.834757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.790010, 30.932056, 20.630730>,  <28.598553, 30.854866, 20.508314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.790010, 30.932056, 20.630730>,  <29.109106, 31.060707, 20.834757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790010, 30.932056, 20.630730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168252, -0.931007, 0.323911,
		-0.579053, 0.172577, 0.796815,
		-0.797740, -0.321627, -0.510066,
		28.550688, 30.835567, 20.477711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905935, 30.598969, 21.234869>,  <29.109106, 31.060707, 20.834757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905935, 30.598969, 21.234869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.718895, 30.488716, 20.898922>,  <28.606670, 30.422564, 20.697353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.718895, 30.488716, 20.898922>,  <28.905935, 30.598969, 21.234869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718895, 30.488716, 20.898922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064095, -0.958212, 0.278787,
		-0.881614, 0.076529, 0.465726,
		-0.467599, -0.275633, -0.839868,
		28.578615, 30.406027, 20.646961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292480, 30.291849, 21.461653>,  <28.905935, 30.598969, 21.234869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292480, 30.291849, 21.461653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.352583, 30.152496, 21.091560>,  <28.388645, 30.068884, 20.869505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.352583, 30.152496, 21.091560>,  <28.292480, 30.291849, 21.461653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352583, 30.152496, 21.091560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183072, -0.929475, 0.320251,
		-0.971549, 0.121264, -0.203440,
		0.150257, -0.348383, -0.925230,
		28.397659, 30.047981, 20.813992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654312, 29.867817, 21.282539>,  <28.292480, 30.291849, 21.461653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654312, 29.867817, 21.282539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.948751, 29.775204, 21.028122>,  <28.125416, 29.719635, 20.875471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.948751, 29.775204, 21.028122>,  <27.654312, 29.867817, 21.282539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948751, 29.775204, 21.028122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097479, -0.966143, 0.238885,
		-0.669819, -0.113842, -0.733745,
		0.736098, -0.231535, -0.636044,
		28.169580, 29.705744, 20.837309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399513, 29.132378, 21.019480>,  <27.654312, 29.867817, 21.282539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399513, 29.132378, 21.019480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.788336, 29.197128, 20.951473>,  <28.021629, 29.235979, 20.910669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.788336, 29.197128, 20.951473>,  <27.399513, 29.132378, 21.019480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788336, 29.197128, 20.951473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194894, -0.960207, 0.200046,
		-0.130868, -0.227591, -0.964923,
		0.972055, 0.161878, -0.170017,
		28.079952, 29.245691, 20.900469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532549, 28.646097, 20.508827>,  <27.399513, 29.132378, 21.019480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532549, 28.646097, 20.508827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.855284, 28.744305, 20.723763>,  <28.048925, 28.803228, 20.852724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.855284, 28.744305, 20.723763>,  <27.532549, 28.646097, 20.508827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855284, 28.744305, 20.723763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215833, -0.969183, 0.118748,
		0.549933, 0.020165, -0.834965,
		0.806839, 0.245517, 0.537338,
		28.097336, 28.817959, 20.884964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041513, 28.283073, 20.174053>,  <27.532549, 28.646097, 20.508827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041513, 28.283073, 20.174053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.150921, 28.365921, 20.549774>,  <28.216566, 28.415630, 20.775208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.150921, 28.365921, 20.549774>,  <28.041513, 28.283073, 20.174053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150921, 28.365921, 20.549774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251982, -0.957865, 0.137837,
		0.928274, 0.198986, -0.314185,
		0.273519, 0.207120, 0.939302,
		28.232977, 28.428057, 20.831564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539495, 27.660139, 20.263994>,  <28.041513, 28.283073, 20.174053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539495, 27.660139, 20.263994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.540802, 27.833363, 20.624538>,  <28.541586, 27.937296, 20.840864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.540802, 27.833363, 20.624538>,  <28.539495, 27.660139, 20.263994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540802, 27.833363, 20.624538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250557, -0.872967, 0.418510,
		0.968096, 0.224476, -0.111355,
		0.003264, 0.433059, 0.901360,
		28.541780, 27.963280, 20.894947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141628, 27.470709, 20.587437>,  <28.539495, 27.660139, 20.263994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141628, 27.470709, 20.587437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849562, 27.538593, 20.852180>,  <28.674322, 27.579323, 21.011026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849562, 27.538593, 20.852180>,  <29.141628, 27.470709, 20.587437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849562, 27.538593, 20.852180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083404, -0.939282, 0.332856,
		0.678161, 0.298242, 0.671677,
		-0.730165, 0.169709, 0.661859,
		28.630512, 27.589506, 21.050737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469193, 27.248190, 21.186504>,  <29.141628, 27.470709, 20.587437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469193, 27.248190, 21.186504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.083212, 27.264317, 21.290234>,  <28.851624, 27.273993, 21.352470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.083212, 27.264317, 21.290234>,  <29.469193, 27.248190, 21.186504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083212, 27.264317, 21.290234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061623, -0.925692, 0.373225,
		0.255100, 0.376124, 0.890761,
		-0.964949, 0.040318, 0.259322,
		28.793728, 27.276413, 21.368031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361298, 27.093330, 21.958359>,  <29.469193, 27.248190, 21.186504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361298, 27.093330, 21.958359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.003515, 27.023594, 21.793652>,  <28.788845, 26.981752, 21.694828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.003515, 27.023594, 21.793652>,  <29.361298, 27.093330, 21.958359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003515, 27.023594, 21.793652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054666, -0.871319, 0.487663,
		-0.443802, 0.458702, 0.769826,
		-0.894456, -0.174342, -0.411769,
		28.735178, 26.971291, 21.670120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923872, 26.831615, 22.468517>,  <29.361298, 27.093330, 21.958359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923872, 26.831615, 22.468517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.775391, 26.727890, 22.111874>,  <28.686302, 26.665655, 21.897888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.775391, 26.727890, 22.111874>,  <28.923872, 26.831615, 22.468517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775391, 26.727890, 22.111874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022737, -0.962464, 0.270453,
		-0.928273, 0.080121, 0.363166,
		-0.371204, -0.259312, -0.891608,
		28.664030, 26.650097, 21.844391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307550, 26.435966, 22.634521>,  <28.923872, 26.831615, 22.468517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307550, 26.435966, 22.634521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.435789, 26.344666, 22.266800>,  <28.512732, 26.289885, 22.046167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.435789, 26.344666, 22.266800>,  <28.307550, 26.435966, 22.634521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435789, 26.344666, 22.266800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007785, -0.969864, 0.243523,
		-0.947184, -0.085230, -0.309158,
		0.320596, -0.228254, -0.919303,
		28.531967, 26.276190, 21.991009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973902, 25.781988, 22.506695>,  <28.307550, 26.435966, 22.634521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973902, 25.781988, 22.506695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.267288, 25.797146, 22.235226>,  <28.443319, 25.806240, 22.072344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.267288, 25.797146, 22.235226>,  <27.973902, 25.781988, 22.506695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267288, 25.797146, 22.235226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180823, -0.973345, 0.141076,
		-0.655235, -0.226193, -0.720766,
		0.733464, 0.037893, -0.678671,
		28.487328, 25.808514, 22.031624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859213, 25.231968, 22.040678>,  <27.973902, 25.781988, 22.506695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859213, 25.231968, 22.040678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.249352, 25.319843, 22.032368>,  <28.483435, 25.372568, 22.027382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.249352, 25.319843, 22.032368>,  <27.859213, 25.231968, 22.040678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249352, 25.319843, 22.032368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219643, -0.957440, 0.187260,
		0.021247, -0.187207, -0.982091,
		0.975349, 0.219688, -0.020776,
		28.541956, 25.385750, 22.026134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217218, 24.755007, 21.614702>,  <27.859213, 25.231968, 22.040678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217218, 24.755007, 21.614702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.511988, 24.920013, 21.828907>,  <28.688848, 25.019018, 21.957430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.511988, 24.920013, 21.828907>,  <28.217218, 24.755007, 21.614702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511988, 24.920013, 21.828907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372582, -0.908877, 0.187418,
		0.564027, 0.061408, -0.823470,
		0.736924, 0.412519, 0.535510,
		28.733065, 25.043770, 21.989559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809893, 24.379213, 21.457237>,  <28.217218, 24.755007, 21.614702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809893, 24.379213, 21.457237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.877600, 24.515896, 21.827011>,  <28.918224, 24.597906, 22.048876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.877600, 24.515896, 21.827011>,  <28.809893, 24.379213, 21.457237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877600, 24.515896, 21.827011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239744, -0.924074, 0.297675,
		0.955966, 0.171241, -0.238340,
		0.169269, 0.341708, 0.924437,
		28.928381, 24.618408, 22.104342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.527113, 23.826456, 22.017990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333969, 24.070145, 22.269608>,  <29.218082, 24.216358, 22.420578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333969, 24.070145, 22.269608>,  <29.527113, 23.826456, 22.017990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333969, 24.070145, 22.269608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076771, -0.745019, 0.662610,
		0.872327, 0.271655, 0.406509,
		-0.482859, 0.609221, 0.629045,
		29.189112, 24.252911, 22.458321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947987, 23.751665, 22.588970>,  <29.527113, 23.826456, 22.017990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947987, 23.751665, 22.588970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578753, 23.871708, 22.685173>,  <29.357212, 23.943733, 22.742895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578753, 23.871708, 22.685173>,  <29.947987, 23.751665, 22.588970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578753, 23.871708, 22.685173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024895, -0.577426, 0.816063,
		0.383784, 0.759285, 0.525544,
		-0.923087, 0.300108, 0.240509,
		29.301826, 23.961740, 22.757326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007788, 24.029358, 23.192728>,  <29.947987, 23.751665, 22.588970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007788, 24.029358, 23.192728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.618795, 23.937233, 23.178680>,  <29.385399, 23.881958, 23.170252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.618795, 23.937233, 23.178680>,  <30.007788, 24.029358, 23.192728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618795, 23.937233, 23.178680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057080, -0.381691, 0.922526,
		-0.225874, 0.895136, 0.384334,
		-0.972483, -0.230313, -0.035120,
		29.327051, 23.868139, 23.168144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725130, 24.116606, 23.921171>,  <30.007788, 24.029358, 23.192728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725130, 24.116606, 23.921171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474501, 23.874340, 23.724979>,  <29.324123, 23.728981, 23.607264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474501, 23.874340, 23.724979>,  <29.725130, 24.116606, 23.921171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474501, 23.874340, 23.724979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033135, -0.608067, 0.793194,
		-0.778656, 0.513248, 0.360931,
		-0.626576, -0.605666, -0.490482,
		29.286528, 23.692640, 23.577835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267735, 23.980499, 24.363680>,  <29.725130, 24.116606, 23.921171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267735, 23.980499, 24.363680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196737, 23.664852, 24.128464>,  <29.154139, 23.475464, 23.987333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196737, 23.664852, 24.128464>,  <29.267735, 23.980499, 24.363680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196737, 23.664852, 24.128464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212635, -0.552662, 0.805824,
		-0.960876, 0.268065, -0.069701,
		-0.177492, -0.789117, -0.588040,
		29.143490, 23.428118, 23.952051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545938, 23.720776, 24.577528>,  <29.267735, 23.980499, 24.363680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545938, 23.720776, 24.577528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762598, 23.444244, 24.386246>,  <28.892593, 23.278326, 24.271477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762598, 23.444244, 24.386246>,  <28.545938, 23.720776, 24.577528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762598, 23.444244, 24.386246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115239, -0.624579, 0.772412,
		-0.832670, -0.363267, -0.417969,
		0.541647, -0.691330, -0.478206,
		28.925093, 23.236845, 24.242785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172728, 23.141047, 24.851187>,  <28.545938, 23.720776, 24.577528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172728, 23.141047, 24.851187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498880, 22.989967, 24.675690>,  <28.694572, 22.899319, 24.570391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498880, 22.989967, 24.675690>,  <28.172728, 23.141047, 24.851187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498880, 22.989967, 24.675690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051894, -0.802495, 0.594398,
		-0.576592, -0.461894, -0.673940,
		0.815383, -0.377699, -0.438742,
		28.743496, 22.876657, 24.544067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063932, 22.435558, 24.813316>,  <28.172728, 23.141047, 24.851187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063932, 22.435558, 24.813316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.460409, 22.443134, 24.760895>,  <28.698296, 22.447680, 24.729441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.460409, 22.443134, 24.760895>,  <28.063932, 22.435558, 24.813316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460409, 22.443134, 24.760895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066565, -0.926853, 0.369476,
		-0.114471, -0.374946, -0.919952,
		0.991194, 0.018942, -0.131056,
		28.757767, 22.448816, 24.721579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275438, 21.714825, 24.513058>,  <28.063932, 22.435558, 24.813316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275438, 21.714825, 24.513058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.562651, 21.908054, 24.713486>,  <28.734978, 22.023993, 24.833742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.562651, 21.908054, 24.713486>,  <28.275438, 21.714825, 24.513058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562651, 21.908054, 24.713486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171660, -0.820588, 0.545131,
		0.674513, -0.305406, -0.672131,
		0.718029, 0.483076, 0.501071,
		28.778059, 22.052977, 24.863808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750610, 21.112337, 24.641165>,  <28.275438, 21.714825, 24.513058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750610, 21.112337, 24.641165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.827774, 21.408955, 24.898193>,  <28.874073, 21.586926, 25.052410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.827774, 21.408955, 24.898193>,  <28.750610, 21.112337, 24.641165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827774, 21.408955, 24.898193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049528, -0.661395, 0.748401,
		0.979966, -0.112548, -0.164316,
		0.192908, 0.741545, 0.642570,
		28.885647, 21.631418, 25.090965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184828, 20.825195, 25.046177>,  <28.750610, 21.112337, 24.641165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184828, 20.825195, 25.046177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056644, 21.134602, 25.264893>,  <28.979734, 21.320246, 25.396122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056644, 21.134602, 25.264893>,  <29.184828, 20.825195, 25.046177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056644, 21.134602, 25.264893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099646, -0.601554, 0.792593,
		0.942007, 0.199509, 0.269851,
		-0.320459, 0.773517, 0.546787,
		28.960506, 21.366657, 25.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471750, 20.635036, 25.611643>,  <29.184828, 20.825195, 25.046177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471750, 20.635036, 25.611643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175943, 20.886555, 25.707752>,  <28.998459, 21.037466, 25.765417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175943, 20.886555, 25.707752>,  <29.471750, 20.635036, 25.611643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175943, 20.886555, 25.707752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110602, -0.465596, 0.878059,
		0.663989, 0.622765, 0.413863,
		-0.739517, 0.628796, 0.240272,
		28.954088, 21.075193, 25.779835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635508, 20.898397, 26.278458>,  <29.471750, 20.635036, 25.611643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635508, 20.898397, 26.278458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.240118, 20.910217, 26.219070>,  <29.002884, 20.917309, 26.183439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.240118, 20.910217, 26.219070>,  <29.635508, 20.898397, 26.278458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240118, 20.910217, 26.219070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140258, -0.547720, 0.824822,
		-0.056946, 0.836140, 0.545552,
		-0.988476, 0.029548, -0.148466,
		28.943575, 20.919081, 26.174530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437178, 20.991837, 26.975563>,  <29.635508, 20.898397, 26.278458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437178, 20.991837, 26.975563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.099163, 20.898319, 26.783207>,  <28.896355, 20.842209, 26.667793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.099163, 20.898319, 26.783207>,  <29.437178, 20.991837, 26.975563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099163, 20.898319, 26.783207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279823, -0.573017, 0.770293,
		-0.455646, 0.785489, 0.418800,
		-0.845036, -0.233791, -0.480890,
		28.845652, 20.828182, 26.638939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893343, 21.076368, 27.444830>,  <29.437178, 20.991837, 26.975563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893343, 21.076368, 27.444830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707823, 20.832802, 27.187424>,  <28.596510, 20.686663, 27.032980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707823, 20.832802, 27.187424>,  <28.893343, 21.076368, 27.444830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707823, 20.832802, 27.187424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224977, -0.621603, 0.750330,
		-0.856897, 0.492780, 0.151308,
		-0.463802, -0.608915, -0.643515,
		28.568682, 20.650127, 26.994370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122660, 20.932236, 27.662680>,  <28.893343, 21.076368, 27.444830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122660, 20.932236, 27.662680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.234030, 20.631966, 27.423023>,  <28.300852, 20.451803, 27.279230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.234030, 20.631966, 27.423023>,  <28.122660, 20.932236, 27.662680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234030, 20.631966, 27.423023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218532, -0.656956, 0.721562,
		-0.935267, -0.069969, -0.346959,
		0.278424, -0.750675, -0.599139,
		28.317556, 20.406763, 27.243282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529696, 20.415165, 27.721821>,  <28.122660, 20.932236, 27.662680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529696, 20.415165, 27.721821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.817539, 20.207333, 27.537560>,  <27.990246, 20.082634, 27.427004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.817539, 20.207333, 27.537560>,  <27.529696, 20.415165, 27.721821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817539, 20.207333, 27.537560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277624, -0.823354, 0.494989,
		-0.636465, -0.228310, -0.736741,
		0.719609, -0.519580, -0.460651,
		28.033422, 20.051458, 27.399364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222921, 19.833523, 27.660025>,  <27.529696, 20.415165, 27.721821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222921, 19.833523, 27.660025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.607565, 19.733025, 27.615875>,  <27.838352, 19.672726, 27.589386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.607565, 19.733025, 27.615875>,  <27.222921, 19.833523, 27.660025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607565, 19.733025, 27.615875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169838, -0.860801, 0.479767,
		-0.215546, -0.442604, -0.870426,
		0.961610, -0.251244, -0.110371,
		27.896048, 19.657652, 27.582764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225748, 19.188530, 27.334291>,  <27.222921, 19.833523, 27.660025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225748, 19.188530, 27.334291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.583057, 19.233047, 27.508499>,  <27.797443, 19.259758, 27.613024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.583057, 19.233047, 27.508499>,  <27.225748, 19.188530, 27.334291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583057, 19.233047, 27.508499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093940, -0.901255, 0.422982,
		0.439589, -0.418751, -0.794612,
		0.893273, 0.111293, 0.435519,
		27.851040, 19.266436, 27.639154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692211, 18.526348, 27.252176>,  <27.225748, 19.188530, 27.334291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692211, 18.526348, 27.252176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847742, 18.714828, 27.568855>,  <27.941061, 18.827917, 27.758862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847742, 18.714828, 27.568855>,  <27.692211, 18.526348, 27.252176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847742, 18.714828, 27.568855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022268, -0.863871, 0.503220,
		0.921041, -0.178037, -0.346390,
		0.388829, 0.471199, 0.791697,
		27.964390, 18.856188, 27.806364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361202, 18.211121, 27.514450>,  <27.692211, 18.526348, 27.252176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361202, 18.211121, 27.514450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.240942, 18.414219, 27.837387>,  <28.168785, 18.536077, 28.031149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.240942, 18.414219, 27.837387>,  <28.361202, 18.211121, 27.514450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240942, 18.414219, 27.837387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343411, -0.732095, 0.588308,
		0.889762, 0.454126, 0.045740,
		-0.300652, 0.507747, 0.807342,
		28.150745, 18.566544, 28.079590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867971, 18.169874, 28.016294>,  <28.361202, 18.211121, 27.514450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867971, 18.169874, 28.016294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561531, 18.287556, 28.244865>,  <28.377666, 18.358164, 28.382008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561531, 18.287556, 28.244865>,  <28.867971, 18.169874, 28.016294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561531, 18.287556, 28.244865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247882, -0.685046, 0.685031,
		0.592994, 0.666450, 0.451888,
		-0.766102, 0.294204, 0.571429,
		28.331699, 18.375816, 28.416294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043636, 17.841930, 28.650444>,  <28.867971, 18.169874, 28.016294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043636, 17.841930, 28.650444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.666817, 17.955959, 28.721191>,  <28.440725, 18.024376, 28.763639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.666817, 17.955959, 28.721191>,  <29.043636, 17.841930, 28.650444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666817, 17.955959, 28.721191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046545, -0.633167, 0.772614,
		0.332236, 0.719607, 0.609742,
		-0.942047, 0.285071, 0.176867,
		28.384203, 18.041481, 28.774252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599785, 17.983446, 29.072433>,  <29.043636, 17.841930, 28.650444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599785, 17.983446, 29.072433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633055, 18.120117, 29.446884>,  <29.653017, 18.202120, 29.671555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633055, 18.120117, 29.446884>,  <29.599785, 17.983446, 29.072433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633055, 18.120117, 29.446884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637908, 0.703445, -0.313429,
		-0.765608, 0.623233, -0.159452,
		0.083174, 0.341679, 0.936129,
		29.658007, 18.222622, 29.727722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378145, 18.721329, 29.130035>,  <29.599785, 17.983446, 29.072433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378145, 18.721329, 29.130035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664352, 18.623535, 29.391804>,  <29.836077, 18.564859, 29.548864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664352, 18.623535, 29.391804>,  <29.378145, 18.721329, 29.130035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664352, 18.623535, 29.391804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535659, 0.793337, -0.289285,
		-0.448449, 0.557533, 0.698606,
		0.715516, -0.244485, 0.654419,
		29.879007, 18.550190, 29.588129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703854, 19.363617, 29.405590>,  <29.378145, 18.721329, 29.130035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703854, 19.363617, 29.405590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975382, 19.082348, 29.490208>,  <30.138298, 18.913586, 29.540977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975382, 19.082348, 29.490208>,  <29.703854, 19.363617, 29.405590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975382, 19.082348, 29.490208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723687, 0.591831, -0.354982,
		0.124415, 0.394061, 0.910624,
		0.678821, -0.703173, 0.211544,
		30.179028, 18.871397, 29.553671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124685, 19.735085, 29.809944>,  <29.703854, 19.363617, 29.405590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124685, 19.735085, 29.809944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340731, 19.431816, 29.663818>,  <30.470358, 19.249855, 29.576143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340731, 19.431816, 29.663818>,  <30.124685, 19.735085, 29.809944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340731, 19.431816, 29.663818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741289, 0.634101, -0.220014,
		0.398455, -0.151972, 0.904510,
		0.540115, -0.758169, -0.365316,
		30.502766, 19.204365, 29.554224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804609, 19.971058, 29.915468>,  <30.124685, 19.735085, 29.809944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804609, 19.971058, 29.915468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870537, 19.670166, 29.660286>,  <30.910093, 19.489632, 29.507177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870537, 19.670166, 29.660286>,  <30.804609, 19.971058, 29.915468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870537, 19.670166, 29.660286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580706, 0.596823, -0.553700,
		0.797255, -0.279205, 0.535191,
		0.164818, -0.752228, -0.637956,
		30.919983, 19.444498, 29.468899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492580, 20.023697, 29.776112>,  <30.804609, 19.971058, 29.915468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492580, 20.023697, 29.776112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318432, 19.831329, 29.471699>,  <31.213942, 19.715910, 29.289051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318432, 19.831329, 29.471699>,  <31.492580, 20.023697, 29.776112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318432, 19.831329, 29.471699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430213, 0.631436, -0.645140,
		0.790802, -0.608282, -0.068013,
		-0.435373, -0.480918, -0.761031,
		31.187820, 19.687054, 29.243389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999256, 20.003408, 29.196781>,  <31.492580, 20.023697, 29.776112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999256, 20.003408, 29.196781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.638733, 19.955666, 29.030216>,  <31.422419, 19.927021, 28.930277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.638733, 19.955666, 29.030216>,  <31.999256, 20.003408, 29.196781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638733, 19.955666, 29.030216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286362, 0.557116, -0.779499,
		0.325027, -0.821813, -0.467954,
		-0.901307, -0.119354, -0.416414,
		31.368341, 19.919859, 28.905293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102211, 19.980190, 28.443485>,  <31.999256, 20.003408, 29.196781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102211, 19.980190, 28.443485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718643, 20.085052, 28.486824>,  <31.488501, 20.147970, 28.512827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718643, 20.085052, 28.486824>,  <32.102211, 19.980190, 28.443485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718643, 20.085052, 28.486824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086969, 0.635276, -0.767372,
		-0.270002, -0.726429, -0.631981,
		-0.958924, 0.262155, 0.108349,
		31.430965, 20.163698, 28.519329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013111, 20.263340, 27.718042>,  <32.102211, 19.980190, 28.443485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013111, 20.263340, 27.718042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.714729, 20.379227, 27.957912>,  <31.535700, 20.448759, 28.101835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.714729, 20.379227, 27.957912>,  <32.013111, 20.263340, 27.718042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714729, 20.379227, 27.957912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160118, 0.795997, -0.583739,
		-0.646458, -0.531464, -0.547392,
		-0.745959, 0.289715, 0.599675,
		31.490942, 20.466141, 28.137815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389654, 20.251492, 27.290276>,  <32.013111, 20.263340, 27.718042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389654, 20.251492, 27.290276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281504, 20.496639, 27.587269>,  <31.216614, 20.643728, 27.765465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281504, 20.496639, 27.587269>,  <31.389654, 20.251492, 27.290276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281504, 20.496639, 27.587269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374101, 0.643725, -0.667582,
		-0.887098, -0.458264, 0.055227,
		-0.270378, 0.612872, 0.742485,
		31.200390, 20.680500, 27.810015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800591, 20.471140, 27.088686>,  <31.389654, 20.251492, 27.290276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800591, 20.471140, 27.088686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.875084, 20.761093, 27.353973>,  <30.919779, 20.935066, 27.513145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.875084, 20.761093, 27.353973>,  <30.800591, 20.471140, 27.088686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875084, 20.761093, 27.353973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496958, 0.651810, -0.572867,
		-0.847556, -0.222906, 0.481625,
		0.186232, 0.724884, 0.663220,
		30.930954, 20.978558, 27.552940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228441, 20.949320, 27.163792>,  <30.800591, 20.471140, 27.088686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228441, 20.949320, 27.163792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545851, 21.155628, 27.292976>,  <30.736296, 21.279413, 27.370487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545851, 21.155628, 27.292976>,  <30.228441, 20.949320, 27.163792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545851, 21.155628, 27.292976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284484, 0.783560, -0.552361,
		-0.537951, 0.346434, 0.768500,
		0.793522, 0.515769, 0.322962,
		30.783907, 21.310360, 27.389864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018858, 21.746761, 27.168884>,  <30.228441, 20.949320, 27.163792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018858, 21.746761, 27.168884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418350, 21.726654, 27.167355>,  <30.658045, 21.714590, 27.166437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418350, 21.726654, 27.167355>,  <30.018858, 21.746761, 27.168884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418350, 21.726654, 27.167355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041746, 0.867129, -0.496331,
		0.028265, 0.495540, 0.868125,
		0.998729, -0.050269, -0.003822,
		30.717968, 21.711573, 27.166208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158905, 22.404463, 27.174524>,  <30.018858, 21.746761, 27.168884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158905, 22.404463, 27.174524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.505205, 22.226208, 27.083412>,  <30.712986, 22.119255, 27.028746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.505205, 22.226208, 27.083412>,  <30.158905, 22.404463, 27.174524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505205, 22.226208, 27.083412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285626, 0.813681, -0.506302,
		0.410968, 0.373270, 0.831730,
		0.865750, -0.445638, -0.227781,
		30.764931, 22.092516, 27.015078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769037, 22.941254, 27.204546>,  <30.158905, 22.404463, 27.174524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769037, 22.941254, 27.204546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886551, 22.650772, 26.955929>,  <30.957060, 22.476482, 26.806759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886551, 22.650772, 26.955929>,  <30.769037, 22.941254, 27.204546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886551, 22.650772, 26.955929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240923, 0.685500, -0.687056,
		0.925012, 0.052102, 0.376349,
		0.293784, -0.726206, -0.621543,
		30.974686, 22.432911, 26.769466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404469, 23.210436, 26.962734>,  <30.769037, 22.941254, 27.204546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404469, 23.210436, 26.962734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274738, 22.930305, 26.708378>,  <31.196899, 22.762226, 26.555765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274738, 22.930305, 26.708378>,  <31.404469, 23.210436, 26.962734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274738, 22.930305, 26.708378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186213, 0.611805, -0.768778,
		0.927436, -0.367745, -0.068013,
		-0.324325, -0.700328, -0.635889,
		31.177441, 22.720207, 26.517611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927256, 23.253214, 26.375399>,  <31.404469, 23.210436, 26.962734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927256, 23.253214, 26.375399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632366, 23.056885, 26.189671>,  <31.455433, 22.939087, 26.078234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632366, 23.056885, 26.189671>,  <31.927256, 23.253214, 26.375399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632366, 23.056885, 26.189671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107425, 0.593328, -0.797761,
		0.667057, -0.638005, -0.384687,
		-0.737221, -0.490827, -0.464321,
		31.411200, 22.909637, 26.050375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167061, 23.104141, 25.794943>,  <31.927256, 23.253214, 26.375399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167061, 23.104141, 25.794943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.781534, 23.072819, 25.693024>,  <31.550219, 23.054026, 25.631872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.781534, 23.072819, 25.693024>,  <32.167061, 23.104141, 25.794943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781534, 23.072819, 25.693024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161837, 0.587641, -0.792772,
		0.211809, -0.805323, -0.553706,
		-0.963818, -0.078306, -0.254799,
		31.492388, 23.049328, 25.616585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134735, 22.863190, 25.040291>,  <32.167061, 23.104141, 25.794943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134735, 22.863190, 25.040291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787172, 23.043247, 25.122631>,  <31.578634, 23.151281, 25.172035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787172, 23.043247, 25.122631>,  <32.134735, 22.863190, 25.040291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787172, 23.043247, 25.122631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127286, 0.605093, -0.785914,
		-0.478332, -0.656683, -0.583066,
		-0.868905, 0.450144, 0.205849,
		31.526501, 23.178289, 25.184385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830273, 22.922821, 24.379391>,  <32.134735, 22.863190, 25.040291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830273, 22.922821, 24.379391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650839, 23.202072, 24.602600>,  <31.543179, 23.369623, 24.736526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650839, 23.202072, 24.602600>,  <31.830273, 22.922821, 24.379391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650839, 23.202072, 24.602600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105085, 0.661239, -0.742779,
		-0.887541, -0.274559, -0.369984,
		-0.448585, 0.698127, 0.558024,
		31.516264, 23.411510, 24.770008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367180, 23.386730, 23.962570>,  <31.830273, 22.922821, 24.379391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367180, 23.386730, 23.962570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455378, 23.638165, 24.260902>,  <31.508297, 23.789024, 24.439901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455378, 23.638165, 24.260902>,  <31.367180, 23.386730, 23.962570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455378, 23.638165, 24.260902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171206, 0.727836, -0.664036,
		-0.960245, 0.274107, 0.052867,
		0.220495, 0.628586, 0.745830,
		31.521526, 23.826740, 24.484652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.747232, 39.077366, 16.298065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.144178, 39.037754, 16.327469>,  <25.382347, 39.013988, 16.345110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.144178, 39.037754, 16.327469>,  <24.747232, 39.077366, 16.298065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144178, 39.037754, 16.327469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123325, -0.801755, 0.584791,
		0.001024, -0.589392, -0.807847,
		0.992366, -0.099029, 0.073507,
		25.441889, 39.008045, 16.349522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930481, 38.414070, 16.087637>,  <24.747232, 39.077366, 16.298065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930481, 38.414070, 16.087637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.243605, 38.510082, 16.317280>,  <25.431479, 38.567688, 16.455065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.243605, 38.510082, 16.317280>,  <24.930481, 38.414070, 16.087637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243605, 38.510082, 16.317280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182043, -0.793910, 0.580144,
		0.595039, -0.558654, -0.577784,
		0.782808, 0.240027, 0.574107,
		25.478447, 38.582092, 16.489511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393106, 37.848274, 15.971675>,  <24.930481, 38.414070, 16.087637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393106, 37.848274, 15.971675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.453362, 38.034641, 16.320438>,  <25.489513, 38.146461, 16.529697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.453362, 38.034641, 16.320438>,  <25.393106, 37.848274, 15.971675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453362, 38.034641, 16.320438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285175, -0.824001, 0.489589,
		0.946564, -0.322396, 0.008746,
		0.150635, 0.465921, 0.871909,
		25.498552, 38.174419, 16.582012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614315, 37.328712, 16.363344>,  <25.393106, 37.848274, 15.971675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614315, 37.328712, 16.363344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.530439, 37.601776, 16.643349>,  <25.480114, 37.765614, 16.811352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.530439, 37.601776, 16.643349>,  <25.614315, 37.328712, 16.363344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530439, 37.601776, 16.643349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287333, -0.727337, 0.623234,
		0.934597, -0.070452, 0.348663,
		-0.209687, 0.682655, 0.700010,
		25.467533, 37.806572, 16.853352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923313, 37.148270, 17.007500>,  <25.614315, 37.328712, 16.363344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923313, 37.148270, 17.007500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.646338, 37.406017, 17.137310>,  <25.480152, 37.560665, 17.215197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.646338, 37.406017, 17.137310>,  <25.923313, 37.148270, 17.007500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646338, 37.406017, 17.137310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199095, -0.603002, 0.772496,
		0.693460, 0.470297, 0.545834,
		-0.692441, 0.644367, 0.324524,
		25.438604, 37.599327, 17.234667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109730, 37.344978, 17.650494>,  <25.923313, 37.148270, 17.007500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109730, 37.344978, 17.650494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.717648, 37.418369, 17.620739>,  <25.482399, 37.462406, 17.602886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.717648, 37.418369, 17.620739>,  <26.109730, 37.344978, 17.650494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717648, 37.418369, 17.620739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157118, -0.492272, 0.856144,
		0.120469, 0.850883, 0.511356,
		-0.980205, 0.183482, -0.074386,
		25.423586, 37.473415, 17.598423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901304, 37.594845, 18.345602>,  <26.109730, 37.344978, 17.650494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901304, 37.594845, 18.345602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.580765, 37.459949, 18.147972>,  <25.388441, 37.379013, 18.029394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.580765, 37.459949, 18.147972>,  <25.901304, 37.594845, 18.345602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580765, 37.459949, 18.147972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320561, -0.455244, 0.830659,
		-0.505052, 0.824030, 0.256705,
		-0.801350, -0.337237, -0.494074,
		25.340359, 37.358780, 17.999750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324793, 37.686169, 18.918570>,  <25.901304, 37.594845, 18.345602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324793, 37.686169, 18.918570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.179054, 37.435738, 18.642807>,  <25.091612, 37.285480, 18.477350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.179054, 37.435738, 18.642807>,  <25.324793, 37.686169, 18.918570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179054, 37.435738, 18.642807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577900, -0.428508, 0.694560,
		-0.730263, 0.651468, -0.205684,
		-0.364346, -0.626076, -0.689407,
		25.069750, 37.247913, 18.435986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575480, 37.729668, 19.004772>,  <25.324793, 37.686169, 18.918570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575480, 37.729668, 19.004772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.649611, 37.368996, 18.848499>,  <24.694090, 37.152592, 18.754736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.649611, 37.368996, 18.848499>,  <24.575480, 37.729668, 19.004772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649611, 37.368996, 18.848499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634229, -0.413431, 0.653321,
		-0.750605, 0.126702, -0.648490,
		0.185329, -0.901677, -0.390681,
		24.705210, 37.098492, 18.731295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.915758, 37.461704, 18.912910>,  <24.575480, 37.729668, 19.004772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.915758, 37.461704, 18.912910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149645, 37.139923, 18.871037>,  <24.289978, 36.946854, 18.845911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149645, 37.139923, 18.871037>,  <23.915758, 37.461704, 18.912910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.149645, 37.139923, 18.871037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573611, -0.501239, 0.647866,
		-0.573652, -0.318768, -0.754526,
		0.584716, -0.804454, -0.104688,
		24.325060, 36.898586, 18.839630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.498711, 36.940998, 18.944992>,  <23.915758, 37.461704, 18.912910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.498711, 36.940998, 18.944992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.837063, 36.746460, 19.032589>,  <24.040073, 36.629738, 19.085146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.837063, 36.746460, 19.032589>,  <23.498711, 36.940998, 18.944992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.837063, 36.746460, 19.032589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479114, -0.512408, 0.712662,
		-0.234386, -0.707749, -0.666450,
		0.845880, -0.486343, 0.218991,
		24.090826, 36.600555, 19.098286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.324871, 36.239594, 18.870386>,  <23.498711, 36.940998, 18.944992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.324871, 36.239594, 18.870386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.641954, 36.293690, 19.108150>,  <23.832205, 36.326145, 19.250809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.641954, 36.293690, 19.108150>,  <23.324871, 36.239594, 18.870386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.641954, 36.293690, 19.108150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396107, -0.626907, 0.670884,
		0.463368, -0.767266, -0.443387,
		0.792710, 0.135238, 0.594409,
		23.879766, 36.334263, 19.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.370750, 35.536781, 19.114548>,  <23.324871, 36.239594, 18.870386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.370750, 35.536781, 19.114548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.599281, 35.755924, 19.358986>,  <23.736401, 35.887409, 19.505650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.599281, 35.755924, 19.358986>,  <23.370750, 35.536781, 19.114548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.599281, 35.755924, 19.358986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333662, -0.525227, 0.782819,
		0.749836, -0.651146, -0.117278,
		0.571328, 0.547855, 0.611097,
		23.770679, 35.920280, 19.542315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.766928, 35.024857, 19.453962>,  <23.370750, 35.536781, 19.114548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.766928, 35.024857, 19.453962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.760237, 35.357788, 19.675571>,  <23.756222, 35.557549, 19.808537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.760237, 35.357788, 19.675571>,  <23.766928, 35.024857, 19.453962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.760237, 35.357788, 19.675571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319617, -0.529481, 0.785809,
		0.947399, -0.163929, 0.274886,
		-0.016730, 0.832333, 0.554024,
		23.755219, 35.607487, 19.841778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046566, 34.837379, 20.119967>,  <23.766928, 35.024857, 19.453962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046566, 34.837379, 20.119967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.854578, 35.178005, 20.204311>,  <23.739386, 35.382381, 20.254919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.854578, 35.178005, 20.204311>,  <24.046566, 34.837379, 20.119967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854578, 35.178005, 20.204311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240305, -0.358784, 0.901957,
		0.843732, 0.382240, 0.376842,
		-0.479969, 0.851567, 0.210863,
		23.710587, 35.433475, 20.267570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.192060, 34.895988, 20.803375>,  <24.046566, 34.837379, 20.119967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.192060, 34.895988, 20.803375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.885794, 35.148544, 20.754230>,  <23.702034, 35.300079, 20.724743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.885794, 35.148544, 20.754230>,  <24.192060, 34.895988, 20.803375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.885794, 35.148544, 20.754230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406880, -0.327470, 0.852768,
		0.498197, 0.702928, 0.507634,
		-0.765669, 0.631392, -0.122863,
		23.656094, 35.337963, 20.717371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.153988, 35.374130, 21.364784>,  <24.192060, 34.895988, 20.803375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.153988, 35.374130, 21.364784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.788412, 35.340508, 21.205963>,  <23.569067, 35.320335, 21.110670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.788412, 35.340508, 21.205963>,  <24.153988, 35.374130, 21.364784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.788412, 35.340508, 21.205963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356215, -0.302684, 0.884021,
		-0.194485, 0.949377, 0.246694,
		-0.913940, -0.084053, -0.397050,
		23.514231, 35.315292, 21.086847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.734053, 35.593334, 21.828737>,  <24.153988, 35.374130, 21.364784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.734053, 35.593334, 21.828737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460455, 35.409878, 21.601830>,  <23.296295, 35.299805, 21.465685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460455, 35.409878, 21.601830>,  <23.734053, 35.593334, 21.828737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460455, 35.409878, 21.601830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505113, -0.263281, 0.821914,
		-0.526317, 0.848722, -0.051583,
		-0.683996, -0.458643, -0.567270,
		23.255257, 35.272285, 21.431648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.087891, 35.874027, 22.051737>,  <23.734053, 35.593334, 21.828737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.087891, 35.874027, 22.051737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.001753, 35.536240, 21.855572>,  <22.950071, 35.333569, 21.737873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.001753, 35.536240, 21.855572>,  <23.087891, 35.874027, 22.051737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.001753, 35.536240, 21.855572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624130, -0.267223, 0.734203,
		-0.751059, 0.464188, -0.469512,
		-0.215343, -0.844465, -0.490413,
		22.937149, 35.282902, 21.708448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.430803, 35.871964, 21.992414>,  <23.087891, 35.874027, 22.051737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.430803, 35.871964, 21.992414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.531446, 35.486294, 21.958817>,  <22.591833, 35.254890, 21.938658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.531446, 35.486294, 21.958817>,  <22.430803, 35.871964, 21.992414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.531446, 35.486294, 21.958817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720833, -0.244603, 0.648513,
		-0.645828, -0.102623, -0.756555,
		0.251608, -0.964177, -0.083997,
		22.606930, 35.197041, 21.933617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795744, 35.446102, 21.832438>,  <22.430803, 35.871964, 21.992414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795744, 35.446102, 21.832438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046755, 35.170280, 21.977058>,  <22.197361, 35.004787, 22.063831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046755, 35.170280, 21.977058>,  <21.795744, 35.446102, 21.832438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046755, 35.170280, 21.977058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736782, -0.375792, 0.562079,
		-0.251717, -0.619105, -0.743873,
		0.627527, -0.689557, 0.361552,
		22.235012, 34.963413, 22.085524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036282, 35.365479, 22.050316>,  <21.795744, 35.446102, 21.832438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036282, 35.365479, 22.050316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.866514, 35.721897, 22.114697>,  <20.764654, 35.935749, 22.153324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.866514, 35.721897, 22.114697>,  <21.036282, 35.365479, 22.050316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866514, 35.721897, 22.114697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013110, 0.171687, -0.985064,
		-0.905371, -0.420191, -0.061186,
		-0.424420, 0.891046, 0.160949,
		20.739189, 35.989212, 22.162981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497286, 35.390415, 21.592888>,  <21.036282, 35.365479, 22.050316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497286, 35.390415, 21.592888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.589565, 35.766846, 21.691799>,  <20.644934, 35.992706, 21.751146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.589565, 35.766846, 21.691799>,  <20.497286, 35.390415, 21.592888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.589565, 35.766846, 21.691799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100465, 0.229736, -0.968054,
		-0.967825, 0.248173, -0.041545,
		0.230700, 0.941080, 0.247277,
		20.658775, 36.049171, 21.765982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.975437, 35.886379, 21.213442>,  <20.497286, 35.390415, 21.592888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.975437, 35.886379, 21.213442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324720, 36.052792, 21.314972>,  <20.534290, 36.152637, 21.375891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324720, 36.052792, 21.314972>,  <19.975437, 35.886379, 21.213442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324720, 36.052792, 21.314972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192526, 0.183989, -0.963889,
		-0.447707, 0.890544, 0.080564,
		0.873208, 0.416029, 0.253826,
		20.586683, 36.177601, 21.391119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983309, 36.511383, 20.863228>,  <19.975437, 35.886379, 21.213442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983309, 36.511383, 20.863228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.367508, 36.427704, 20.936638>,  <20.598028, 36.377495, 20.980684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.367508, 36.427704, 20.936638>,  <19.983309, 36.511383, 20.863228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367508, 36.427704, 20.936638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223371, 0.186206, -0.956783,
		0.165984, 0.959981, 0.225579,
		0.960497, -0.209199, 0.183524,
		20.655657, 36.364944, 20.991695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303331, 36.921276, 20.375465>,  <19.983309, 36.511383, 20.863228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303331, 36.921276, 20.375465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626408, 36.725742, 20.507332>,  <20.820253, 36.608421, 20.586451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626408, 36.725742, 20.507332>,  <20.303331, 36.921276, 20.375465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626408, 36.725742, 20.507332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528570, 0.352579, -0.772206,
		0.261247, 0.797954, 0.543157,
		0.807691, -0.488833, 0.329664,
		20.868715, 36.579094, 20.606232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.914511, 37.421532, 20.306957>,  <20.303331, 36.921276, 20.375465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.914511, 37.421532, 20.306957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032419, 37.039352, 20.313061>,  <21.103165, 36.810047, 20.316723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032419, 37.039352, 20.313061>,  <20.914511, 37.421532, 20.306957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032419, 37.039352, 20.313061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555181, 0.158240, -0.816538,
		0.777744, 0.249164, 0.577090,
		0.294770, -0.955446, 0.015261,
		21.120850, 36.752720, 20.317638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552132, 37.450336, 20.332293>,  <20.914511, 37.421532, 20.306957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552132, 37.450336, 20.332293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.491482, 37.082504, 20.187309>,  <21.455091, 36.861805, 20.100319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.491482, 37.082504, 20.187309>,  <21.552132, 37.450336, 20.332293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.491482, 37.082504, 20.187309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596723, 0.207175, -0.775242,
		0.787992, -0.333831, 0.517325,
		-0.151623, -0.919584, -0.362457,
		21.445995, 36.806629, 20.078571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.187168, 37.393204, 20.057068>,  <21.552132, 37.450336, 20.332293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.187168, 37.393204, 20.057068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924910, 37.143475, 19.887199>,  <21.767555, 36.993637, 19.785278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924910, 37.143475, 19.887199>,  <22.187168, 37.393204, 20.057068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924910, 37.143475, 19.887199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515398, 0.040985, -0.855970,
		0.551810, -0.780088, 0.294905,
		-0.655646, -0.624326, -0.424671,
		21.728216, 36.956177, 19.759798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.599417, 36.945850, 19.524038>,  <22.187168, 37.393204, 20.057068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.599417, 36.945850, 19.524038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.214216, 36.954254, 19.416565>,  <21.983097, 36.959297, 19.352081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.214216, 36.954254, 19.416565>,  <22.599417, 36.945850, 19.524038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.214216, 36.954254, 19.416565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267712, -0.040148, -0.962662,
		-0.030994, -0.998973, 0.033043,
		-0.963000, 0.020991, -0.268681,
		21.925316, 36.960556, 19.335960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.691498, 36.587582, 19.011444>,  <22.599417, 36.945850, 19.524038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.691498, 36.587582, 19.011444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.347555, 36.783367, 18.953384>,  <22.141190, 36.900841, 18.918549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.347555, 36.783367, 18.953384>,  <22.691498, 36.587582, 19.011444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.347555, 36.783367, 18.953384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207375, 0.075060, -0.975378,
		-0.466520, -0.868786, -0.166044,
		-0.859858, 0.489467, -0.145147,
		22.089598, 36.930206, 18.909840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.421951, 36.237232, 18.384804>,  <22.691498, 36.587582, 19.011444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.421951, 36.237232, 18.384804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.217072, 36.580715, 18.391510>,  <22.094143, 36.786804, 18.395535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.217072, 36.580715, 18.391510>,  <22.421951, 36.237232, 18.384804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.217072, 36.580715, 18.391510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236783, 0.159949, -0.958306,
		-0.825582, -0.486873, -0.285252,
		-0.512199, 0.858703, 0.016768,
		22.063412, 36.838326, 18.396540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830462, 36.301350, 17.719975>,  <22.421951, 36.237232, 18.384804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830462, 36.301350, 17.719975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.909805, 36.677235, 17.831402>,  <21.957411, 36.902763, 17.898258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.909805, 36.677235, 17.831402>,  <21.830462, 36.301350, 17.719975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.909805, 36.677235, 17.831402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042059, 0.275791, -0.960297,
		-0.979226, 0.202201, 0.015183,
		0.198360, 0.939709, 0.278566,
		21.969313, 36.959148, 17.914972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632833, 36.679996, 17.210535>,  <21.830462, 36.301350, 17.719975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632833, 36.679996, 17.210535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.857954, 36.960041, 17.386311>,  <21.993027, 37.128067, 17.491776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.857954, 36.960041, 17.386311>,  <21.632833, 36.679996, 17.210535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.857954, 36.960041, 17.386311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219855, 0.385689, -0.896051,
		-0.796818, 0.600911, 0.063144,
		0.562801, 0.700107, 0.439437,
		22.026794, 37.170074, 17.518141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318071, 37.333961, 17.142799>,  <21.632833, 36.679996, 17.210535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318071, 37.333961, 17.142799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.710506, 37.388126, 17.198120>,  <21.945969, 37.420624, 17.231312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.710506, 37.388126, 17.198120>,  <21.318071, 37.333961, 17.142799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.710506, 37.388126, 17.198120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082517, 0.353718, -0.931705,
		-0.175084, 0.925498, 0.335855,
		0.981089, 0.135413, 0.138300,
		22.004833, 37.428749, 17.239611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327391, 37.945827, 16.751711>,  <21.318071, 37.333961, 17.142799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.327391, 37.945827, 16.751711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697216, 37.818230, 16.835060>,  <21.919111, 37.741669, 16.885071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697216, 37.818230, 16.835060>,  <21.327391, 37.945827, 16.751711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697216, 37.818230, 16.835060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301200, 0.276949, -0.912457,
		0.233362, 0.906389, 0.352139,
		0.924565, -0.318997, 0.208375,
		21.974586, 37.722530, 16.897573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808008, 38.527973, 16.584606>,  <21.327391, 37.945827, 16.751711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808008, 38.527973, 16.584606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.017384, 38.187481, 16.599663>,  <22.143009, 37.983185, 16.608698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.017384, 38.187481, 16.599663>,  <21.808008, 38.527973, 16.584606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.017384, 38.187481, 16.599663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427489, 0.224143, -0.875793,
		0.737064, 0.474518, 0.481217,
		0.523441, -0.851230, 0.037643,
		22.174416, 37.932114, 16.610956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.464556, 38.710361, 16.372740>,  <21.808008, 38.527973, 16.584606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.464556, 38.710361, 16.372740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.398575, 38.321751, 16.304718>,  <22.358986, 38.088585, 16.263905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.398575, 38.321751, 16.304718>,  <22.464556, 38.710361, 16.372740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.398575, 38.321751, 16.304718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205007, 0.134880, -0.969422,
		0.964761, -0.194770, 0.176922,
		-0.164951, -0.971531, -0.170056,
		22.349089, 38.030293, 16.253700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.034901, 38.490410, 16.055565>,  <22.464556, 38.710361, 16.372740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.034901, 38.490410, 16.055565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.795784, 38.178974, 15.979209>,  <22.652313, 37.992111, 15.933396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.795784, 38.178974, 15.979209>,  <23.034901, 38.490410, 16.055565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.795784, 38.178974, 15.979209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263745, 0.033844, -0.963998,
		0.757022, -0.626617, 0.185119,
		-0.597792, -0.778592, -0.190888,
		22.616446, 37.945396, 15.921943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.458851, 38.084290, 15.581179>,  <23.034901, 38.490410, 16.055565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.458851, 38.084290, 15.581179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.084997, 37.955116, 15.521609>,  <22.860685, 37.877613, 15.485868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.084997, 37.955116, 15.521609>,  <23.458851, 38.084290, 15.581179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.084997, 37.955116, 15.521609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152076, 0.015597, -0.988246,
		0.321460, -0.946293, 0.034534,
		-0.934631, -0.322934, -0.148922,
		22.804607, 37.858238, 15.476933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.554533, 37.474964, 15.251427>,  <23.458851, 38.084290, 15.581179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.554533, 37.474964, 15.251427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.199333, 37.626400, 15.147021>,  <22.986214, 37.717262, 15.084378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.199333, 37.626400, 15.147021>,  <23.554533, 37.474964, 15.251427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.199333, 37.626400, 15.147021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319793, 0.100546, -0.942138,
		-0.330440, -0.920087, -0.210355,
		-0.887999, 0.378590, -0.261013,
		22.932934, 37.739975, 15.068718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.400768, 37.139282, 14.599656>,  <23.554533, 37.474964, 15.251427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.400768, 37.139282, 14.599656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.154659, 37.454151, 14.616632>,  <23.006994, 37.643074, 14.626817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.154659, 37.454151, 14.616632>,  <23.400768, 37.139282, 14.599656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.154659, 37.454151, 14.616632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228708, 0.229765, -0.945992,
		-0.754409, -0.572335, -0.321401,
		-0.615272, 0.787172, 0.042439,
		22.970078, 37.690304, 14.629363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.691879, 26.740812, 20.974277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011484, 26.814983, 21.203083>,  <28.203247, 26.859486, 21.340366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011484, 26.814983, 21.203083>,  <27.691879, 26.740812, 20.974277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011484, 26.814983, 21.203083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059288, 0.970926, -0.231923,
		-0.598388, 0.151395, 0.786773,
		0.799010, 0.185426, 0.572014,
		28.251186, 26.870611, 21.374687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481213, 27.266411, 21.634489>,  <27.691879, 26.740812, 20.974277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481213, 27.266411, 21.634489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872854, 27.278267, 21.554012>,  <28.107840, 27.285381, 21.505726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872854, 27.278267, 21.554012>,  <27.481213, 27.266411, 21.634489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872854, 27.278267, 21.554012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031830, 0.999464, -0.007648,
		0.200858, 0.013893, 0.979522,
		0.979103, 0.029642, -0.201193,
		28.166586, 27.287159, 21.493654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731443, 27.731491, 22.041420>,  <27.481213, 27.266411, 21.634489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731443, 27.731491, 22.041420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006792, 27.700089, 21.752979>,  <28.172001, 27.681248, 21.579916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006792, 27.700089, 21.752979>,  <27.731443, 27.731491, 22.041420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006792, 27.700089, 21.752979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070233, 0.996668, -0.041462,
		0.721952, -0.022104, 0.691589,
		0.688369, -0.078506, -0.721099,
		28.213303, 27.676537, 21.536650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297928, 28.240564, 22.135183>,  <27.731443, 27.731491, 22.041420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297928, 28.240564, 22.135183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348598, 28.180878, 21.742920>,  <28.379000, 28.145065, 21.507563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348598, 28.180878, 21.742920>,  <28.297928, 28.240564, 22.135183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348598, 28.180878, 21.742920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019928, 0.988038, -0.152913,
		0.991744, 0.038912, 0.122186,
		0.126675, -0.149216, -0.980657,
		28.386600, 28.136112, 21.448723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716248, 28.844320, 21.952581>,  <28.297928, 28.240564, 22.135183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716248, 28.844320, 21.952581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585548, 28.697277, 21.604305>,  <28.507128, 28.609051, 21.395340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585548, 28.697277, 21.604305>,  <28.716248, 28.844320, 21.952581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585548, 28.697277, 21.604305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077580, 0.907715, -0.412354,
		0.941922, -0.202283, -0.268075,
		-0.326748, -0.367608, -0.870690,
		28.487524, 28.586994, 21.343098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199030, 29.171202, 21.499826>,  <28.716248, 28.844320, 21.952581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199030, 29.171202, 21.499826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869167, 29.064339, 21.300400>,  <28.671249, 29.000221, 21.180744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869167, 29.064339, 21.300400>,  <29.199030, 29.171202, 21.499826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869167, 29.064339, 21.300400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061303, 0.834025, -0.548311,
		0.562304, -0.482731, -0.671405,
		-0.824655, -0.267158, -0.498568,
		28.621771, 28.984192, 21.150829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350739, 29.420732, 20.744001>,  <29.199030, 29.171202, 21.499826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350739, 29.420732, 20.744001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958820, 29.365582, 20.801952>,  <28.723669, 29.332491, 20.836723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958820, 29.365582, 20.801952>,  <29.350739, 29.420732, 20.744001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958820, 29.365582, 20.801952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190090, 0.867166, -0.460314,
		-0.062167, -0.478553, -0.875855,
		-0.979796, -0.137875, 0.144877,
		28.664881, 29.324219, 20.845415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075037, 29.355043, 20.040331>,  <29.350739, 29.420732, 20.744001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075037, 29.355043, 20.040331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807165, 29.462696, 20.317200>,  <28.646442, 29.527287, 20.483320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807165, 29.462696, 20.317200>,  <29.075037, 29.355043, 20.040331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807165, 29.462696, 20.317200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148163, 0.864872, -0.479629,
		-0.727722, -0.423751, -0.539311,
		-0.669678, 0.269130, 0.692170,
		28.606262, 29.543436, 20.524851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637463, 29.678389, 19.588463>,  <29.075037, 29.355043, 20.040331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637463, 29.678389, 19.588463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549404, 29.790001, 19.962345>,  <28.496569, 29.856968, 20.186674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549404, 29.790001, 19.962345>,  <28.637463, 29.678389, 19.588463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549404, 29.790001, 19.962345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185726, 0.928697, -0.320979,
		-0.957623, -0.244262, -0.152626,
		-0.220146, 0.279030, 0.934708,
		28.483360, 29.873711, 20.242758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099913, 30.172171, 19.472500>,  <28.637463, 29.678389, 19.588463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099913, 30.172171, 19.472500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212057, 30.229046, 19.852222>,  <28.279343, 30.263170, 20.080055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212057, 30.229046, 19.852222>,  <28.099913, 30.172171, 19.472500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212057, 30.229046, 19.852222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257896, 0.963764, -0.068189,
		-0.924602, -0.225704, 0.306870,
		0.280360, 0.142189, 0.949305,
		28.296165, 30.271702, 20.137014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518232, 30.388056, 19.893881>,  <28.099913, 30.172171, 19.472500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518232, 30.388056, 19.893881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843082, 30.533981, 20.076031>,  <28.037992, 30.621536, 20.185320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843082, 30.533981, 20.076031>,  <27.518232, 30.388056, 19.893881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843082, 30.533981, 20.076031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346569, 0.929451, -0.126533,
		-0.469408, -0.055057, 0.881263,
		0.812124, 0.364815, 0.455373,
		28.086720, 30.643425, 20.212643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270689, 30.918098, 20.404724>,  <27.518232, 30.388056, 19.893881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270689, 30.918098, 20.404724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651186, 30.985489, 20.301376>,  <27.879484, 31.025923, 20.239368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651186, 30.985489, 20.301376>,  <27.270689, 30.918098, 20.404724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651186, 30.985489, 20.301376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206203, 0.970303, -0.126463,
		0.229390, 0.173573, 0.957733,
		0.951242, 0.168478, -0.258369,
		27.936558, 31.036032, 20.223866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691816, 31.394049, 20.922482>,  <27.270689, 30.918098, 20.404724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691816, 31.394049, 20.922482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764481, 31.417156, 20.529816>,  <27.808079, 31.431021, 20.294216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764481, 31.417156, 20.529816>,  <27.691816, 31.394049, 20.922482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764481, 31.417156, 20.529816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348322, 0.937329, -0.009296,
		0.919604, 0.343624, 0.190397,
		0.181659, 0.057771, -0.981663,
		27.818977, 31.434488, 20.235317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116497, 31.968439, 20.810034>,  <27.691816, 31.394049, 20.922482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116497, 31.968439, 20.810034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908150, 31.897179, 20.476097>,  <27.783142, 31.854422, 20.275736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908150, 31.897179, 20.476097>,  <28.116497, 31.968439, 20.810034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908150, 31.897179, 20.476097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281816, 0.959035, -0.028827,
		0.805777, 0.220256, -0.549737,
		-0.520868, -0.178153, -0.834840,
		27.751890, 31.843733, 20.225645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114174, 32.754608, 20.749033>,  <28.116497, 31.968439, 20.810034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114174, 32.754608, 20.749033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856974, 32.865009, 21.034794>,  <27.702654, 32.931252, 21.206251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856974, 32.865009, 21.034794>,  <28.114174, 32.754608, 20.749033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856974, 32.865009, 21.034794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491373, -0.566831, 0.661253,
		0.587453, 0.776225, 0.228853,
		-0.643002, 0.276003, 0.714402,
		27.664074, 32.947811, 21.249115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503435, 32.780865, 21.354885>,  <28.114174, 32.754608, 20.749033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503435, 32.780865, 21.354885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139517, 32.759243, 21.519493>,  <27.921165, 32.746269, 21.618258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139517, 32.759243, 21.519493>,  <28.503435, 32.780865, 21.354885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139517, 32.759243, 21.519493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349009, -0.636246, 0.688029,
		0.224636, 0.769591, 0.597720,
		-0.909797, -0.054053, 0.411518,
		27.866577, 32.743027, 21.642948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669069, 32.798733, 22.149000>,  <28.503435, 32.780865, 21.354885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669069, 32.798733, 22.149000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296503, 32.658649, 22.109367>,  <28.072964, 32.574600, 22.085588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296503, 32.658649, 22.109367>,  <28.669069, 32.798733, 22.149000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296503, 32.658649, 22.109367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111980, -0.534774, 0.837543,
		-0.346303, 0.769005, 0.537313,
		-0.931416, -0.350212, -0.099081,
		28.017078, 32.553585, 22.079643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265194, 32.883186, 22.769321>,  <28.669069, 32.798733, 22.149000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265194, 32.883186, 22.769321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085863, 32.574188, 22.589428>,  <27.978264, 32.388790, 22.481493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085863, 32.574188, 22.589428>,  <28.265194, 32.883186, 22.769321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085863, 32.574188, 22.589428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141029, -0.557957, 0.817799,
		-0.882673, 0.303217, 0.359092,
		-0.448329, -0.772491, -0.449732,
		27.951365, 32.342442, 22.454508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967363, 32.575474, 23.292030>,  <28.265194, 32.883186, 22.769321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967363, 32.575474, 23.292030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916054, 32.274174, 23.033989>,  <27.885267, 32.093395, 22.879164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916054, 32.274174, 23.033989>,  <27.967363, 32.575474, 23.292030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916054, 32.274174, 23.033989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119407, -0.657477, 0.743953,
		-0.984524, 0.018400, 0.174282,
		-0.128275, -0.753250, -0.645105,
		27.877571, 32.048199, 22.840458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573196, 32.110359, 23.631813>,  <27.967363, 32.575474, 23.292030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573196, 32.110359, 23.631813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768311, 31.908119, 23.347157>,  <27.885378, 31.786776, 23.176363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768311, 31.908119, 23.347157>,  <27.573196, 32.110359, 23.631813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768311, 31.908119, 23.347157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314810, -0.658468, 0.683604,
		-0.814224, -0.557483, -0.162022,
		0.487784, -0.505601, -0.711642,
		27.914646, 31.756439, 23.133663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435730, 31.404896, 23.698753>,  <27.573196, 32.110359, 23.631813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435730, 31.404896, 23.698753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774509, 31.381699, 23.487350>,  <27.977777, 31.367781, 23.360510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774509, 31.381699, 23.487350>,  <27.435730, 31.404896, 23.698753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774509, 31.381699, 23.487350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319138, -0.739590, 0.592585,
		-0.425243, -0.670554, -0.607886,
		0.846947, -0.057994, -0.528505,
		28.028593, 31.364300, 23.328798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501041, 30.672848, 23.504854>,  <27.435730, 31.404896, 23.698753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501041, 30.672848, 23.504854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869106, 30.825855, 23.471432>,  <28.089945, 30.917660, 23.451378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869106, 30.825855, 23.471432>,  <27.501041, 30.672848, 23.504854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869106, 30.825855, 23.471432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361324, -0.747400, 0.557528,
		0.150816, -0.543207, -0.825943,
		0.920163, 0.382518, -0.083554,
		28.145155, 30.940611, 23.446365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009298, 30.058432, 23.335577>,  <27.501041, 30.672848, 23.504854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009298, 30.058432, 23.335577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239626, 30.355251, 23.472862>,  <28.377823, 30.533342, 23.555233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239626, 30.355251, 23.472862>,  <28.009298, 30.058432, 23.335577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239626, 30.355251, 23.472862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563836, -0.664419, 0.490546,
		0.592047, -0.088950, -0.800980,
		0.575820, 0.742048, 0.343214,
		28.412373, 30.577866, 23.575827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683226, 29.831951, 23.202803>,  <28.009298, 30.058432, 23.335577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683226, 29.831951, 23.202803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699829, 30.099571, 23.499626>,  <28.709791, 30.260143, 23.677721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699829, 30.099571, 23.499626>,  <28.683226, 29.831951, 23.202803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699829, 30.099571, 23.499626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748401, -0.512872, 0.420546,
		0.661947, 0.537900, -0.522006,
		0.041511, 0.669048, 0.742059,
		28.712282, 30.300285, 23.722244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404707, 29.817701, 23.256273>,  <28.683226, 29.831951, 23.202803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404707, 29.817701, 23.256273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233427, 29.959869, 23.588615>,  <29.130659, 30.045170, 23.788021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233427, 29.959869, 23.588615>,  <29.404707, 29.817701, 23.256273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233427, 29.959869, 23.588615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581622, -0.595281, 0.554398,
		0.691636, 0.720638, 0.048181,
		-0.428201, 0.355418, 0.830856,
		29.104967, 30.066494, 23.837872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982193, 30.013620, 23.779675>,  <29.404707, 29.817701, 23.256273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982193, 30.013620, 23.779675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643303, 29.962704, 23.985977>,  <29.439968, 29.932154, 24.109758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643303, 29.962704, 23.985977>,  <29.982193, 30.013620, 23.779675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643303, 29.962704, 23.985977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432962, -0.728017, 0.531541,
		0.307817, 0.673638, 0.671908,
		-0.847227, -0.127294, 0.515755,
		29.389135, 29.924515, 24.140703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196030, 29.964146, 24.519241>,  <29.982193, 30.013620, 23.779675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196030, 29.964146, 24.519241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829865, 29.806755, 24.485310>,  <29.610165, 29.712320, 24.464951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829865, 29.806755, 24.485310>,  <30.196030, 29.964146, 24.519241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829865, 29.806755, 24.485310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312159, -0.827025, 0.467532,
		-0.254121, 0.401504, 0.879896,
		-0.915412, -0.393477, -0.084832,
		29.555241, 29.688711, 24.459860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965578, 29.803551, 25.246181>,  <30.196030, 29.964146, 24.519241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965578, 29.803551, 25.246181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745668, 29.571693, 25.005596>,  <29.613722, 29.432579, 24.861244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745668, 29.571693, 25.005596>,  <29.965578, 29.803551, 25.246181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745668, 29.571693, 25.005596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252339, -0.801654, 0.541918,
		-0.796286, 0.146160, 0.586997,
		-0.549776, -0.579644, -0.601464,
		29.580736, 29.397800, 24.825157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787622, 30.044327, 25.905533>,  <29.965578, 29.803551, 25.246181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787622, 30.044327, 25.905533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142099, 30.009502, 26.087559>,  <30.354786, 29.988607, 26.196774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142099, 30.009502, 26.087559>,  <29.787622, 30.044327, 25.905533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142099, 30.009502, 26.087559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416973, 0.578046, -0.701425,
		-0.201983, 0.811347, 0.548561,
		0.886192, -0.087059, 0.455065,
		30.407957, 29.983385, 26.224079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045431, 30.680052, 26.015574>,  <29.787622, 30.044327, 25.905533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045431, 30.680052, 26.015574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373491, 30.452328, 26.038345>,  <30.570328, 30.315693, 26.052010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373491, 30.452328, 26.038345>,  <30.045431, 30.680052, 26.015574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373491, 30.452328, 26.038345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457794, 0.593286, -0.662145,
		0.343189, 0.569121, 0.747210,
		0.820150, -0.569309, 0.056931,
		30.619535, 30.281534, 26.055424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557419, 31.117836, 26.212309>,  <30.045431, 30.680052, 26.015574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557419, 31.117836, 26.212309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748095, 30.814247, 26.034893>,  <30.862501, 30.632093, 25.928444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748095, 30.814247, 26.034893>,  <30.557419, 31.117836, 26.212309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748095, 30.814247, 26.034893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462804, 0.645645, -0.607416,
		0.747381, 0.084278, 0.659029,
		0.476691, -0.758973, -0.443538,
		30.891102, 30.586555, 25.901831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187016, 31.490961, 26.047216>,  <30.557419, 31.117836, 26.212309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187016, 31.490961, 26.047216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205919, 31.146858, 25.844151>,  <31.217262, 30.940395, 25.722311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205919, 31.146858, 25.844151>,  <31.187016, 31.490961, 26.047216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205919, 31.146858, 25.844151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585735, 0.435548, -0.683530,
		0.809124, -0.265053, 0.524467,
		0.047259, -0.860259, -0.507662,
		31.220097, 30.888781, 25.691853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938457, 31.368288, 25.947468>,  <31.187016, 31.490961, 26.047216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938457, 31.368288, 25.947468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714233, 31.188763, 25.669090>,  <31.579699, 31.081047, 25.502064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714233, 31.188763, 25.669090>,  <31.938457, 31.368288, 25.947468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714233, 31.188763, 25.669090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498993, 0.487633, -0.716393,
		0.660894, -0.748852, -0.049392,
		-0.560558, -0.448813, -0.695946,
		31.546066, 31.054119, 25.460306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379925, 31.293110, 25.423597>,  <31.938457, 31.368288, 25.947468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379925, 31.293110, 25.423597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042881, 31.222980, 25.219921>,  <31.840656, 31.180902, 25.097715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042881, 31.222980, 25.219921>,  <32.379925, 31.293110, 25.423597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042881, 31.222980, 25.219921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382918, 0.469787, -0.795408,
		0.378664, -0.865195, -0.328711,
		-0.842607, -0.175323, -0.509190,
		31.790098, 31.170383, 25.067163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683853, 31.127378, 24.749702>,  <32.379925, 31.293110, 25.423597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683853, 31.127378, 24.749702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298187, 31.230675, 24.725399>,  <32.066788, 31.292652, 24.710817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298187, 31.230675, 24.725399>,  <32.683853, 31.127378, 24.749702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298187, 31.230675, 24.725399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195722, 0.537817, -0.820028,
		-0.179089, -0.802536, -0.569090,
		-0.964168, 0.258241, -0.060757,
		32.008938, 31.308147, 24.707172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459530, 31.081614, 23.949818>,  <32.683853, 31.127378, 24.749702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459530, 31.081614, 23.949818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157700, 31.305576, 24.086708>,  <31.976601, 31.439953, 24.168842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157700, 31.305576, 24.086708>,  <32.459530, 31.081614, 23.949818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157700, 31.305576, 24.086708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135786, 0.643456, -0.753344,
		-0.642008, -0.521987, -0.561565,
		-0.754578, 0.559906, 0.342225,
		31.931326, 31.473549, 24.189375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146511, 31.335001, 23.310513>,  <32.459530, 31.081614, 23.949818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146511, 31.335001, 23.310513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031841, 31.567295, 23.615292>,  <31.963039, 31.706671, 23.798159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031841, 31.567295, 23.615292>,  <32.146511, 31.335001, 23.310513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031841, 31.567295, 23.615292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129041, 0.811489, -0.569942,
		-0.949298, -0.065065, -0.307572,
		-0.286675, 0.580734, 0.761948,
		31.945839, 31.741516, 23.843876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738958, 31.836966, 23.013039>,  <32.146511, 31.335001, 23.310513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738958, 31.836966, 23.013039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842722, 32.014038, 23.356373>,  <31.904980, 32.120281, 23.562374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842722, 32.014038, 23.356373>,  <31.738958, 31.836966, 23.013039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842722, 32.014038, 23.356373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242463, 0.830444, -0.501572,
		-0.934836, 0.338228, 0.108093,
		0.259411, 0.442679, 0.858336,
		31.920546, 32.146843, 23.613874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411932, 32.486778, 23.017225>,  <31.738958, 31.836966, 23.013039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411932, 32.486778, 23.017225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697807, 32.550560, 23.289635>,  <31.869333, 32.588829, 23.453081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697807, 32.550560, 23.289635>,  <31.411932, 32.486778, 23.017225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697807, 32.550560, 23.289635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349281, 0.762211, -0.545011,
		-0.605989, 0.627382, 0.489049,
		0.714689, 0.159455, 0.681024,
		31.912214, 32.598396, 23.493942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410133, 33.255096, 23.179079>,  <31.411932, 32.486778, 23.017225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410133, 33.255096, 23.179079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770662, 33.114399, 23.280190>,  <31.986979, 33.029980, 23.340855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770662, 33.114399, 23.280190>,  <31.410133, 33.255096, 23.179079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770662, 33.114399, 23.280190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432980, 0.715212, -0.548635,
		0.012193, 0.603942, 0.796935,
		0.901321, -0.351746, 0.252774,
		32.041058, 33.008877, 23.356022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.617674, 27.543036, 28.761457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.002001, 27.445026, 28.709625>,  <29.232597, 27.386221, 28.678526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.002001, 27.445026, 28.709625>,  <28.617674, 27.543036, 28.761457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002001, 27.445026, 28.709625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226367, 0.963442, -0.143311,
		0.159959, 0.108363, 0.981158,
		0.960818, -0.245025, -0.129582,
		29.290247, 27.371519, 28.670752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972910, 28.046375, 29.016485>,  <28.617674, 27.543036, 28.761457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972910, 28.046375, 29.016485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.244911, 27.867767, 28.783859>,  <29.408112, 27.760603, 28.644283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.244911, 27.867767, 28.783859>,  <28.972910, 28.046375, 29.016485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244911, 27.867767, 28.783859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360157, 0.894307, -0.265523,
		0.638657, -0.028897, 0.768949,
		0.680003, -0.446520, -0.581563,
		29.448912, 27.733810, 28.609390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610203, 28.420309, 29.178083>,  <28.972910, 28.046375, 29.016485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610203, 28.420309, 29.178083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.625252, 28.252636, 28.815235>,  <29.634281, 28.152033, 28.597527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.625252, 28.252636, 28.815235>,  <29.610203, 28.420309, 29.178083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625252, 28.252636, 28.815235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328260, 0.862574, -0.384983,
		0.943838, -0.283288, 0.170053,
		0.037623, -0.419183, -0.907122,
		29.636539, 28.126881, 28.543098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259245, 28.597435, 28.855400>,  <29.610203, 28.420309, 29.178083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259245, 28.597435, 28.855400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.032846, 28.494850, 28.542000>,  <29.897007, 28.433300, 28.353960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.032846, 28.494850, 28.542000>,  <30.259245, 28.597435, 28.855400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032846, 28.494850, 28.542000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431163, 0.717958, -0.546475,
		0.702670, -0.647120, -0.295786,
		-0.565998, -0.256460, -0.783502,
		29.863047, 28.417912, 28.306950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698978, 28.662725, 28.253143>,  <30.259245, 28.597435, 28.855400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698978, 28.662725, 28.253143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.326340, 28.692177, 28.110760>,  <30.102757, 28.709846, 28.025330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.326340, 28.692177, 28.110760>,  <30.698978, 28.662725, 28.253143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326340, 28.692177, 28.110760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311214, 0.667534, -0.676420,
		0.187811, -0.740930, -0.644787,
		-0.931597, 0.073628, -0.355958,
		30.046860, 28.714266, 28.003973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807596, 28.450531, 27.550825>,  <30.698978, 28.662725, 28.253143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807596, 28.450531, 27.550825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.468981, 28.662659, 27.532372>,  <30.265812, 28.789936, 27.521299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.468981, 28.662659, 27.532372>,  <30.807596, 28.450531, 27.550825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468981, 28.662659, 27.532372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346466, 0.483103, -0.804098,
		-0.404141, -0.696686, -0.592704,
		-0.846541, 0.530321, -0.046136,
		30.215019, 28.821754, 27.518530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778723, 28.563734, 26.903435>,  <30.807596, 28.450531, 27.550825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778723, 28.563734, 26.903435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.520889, 28.847240, 27.018093>,  <30.366190, 29.017344, 27.086889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.520889, 28.847240, 27.018093>,  <30.778723, 28.563734, 26.903435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520889, 28.847240, 27.018093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394310, 0.629410, -0.669599,
		-0.655007, -0.318583, -0.685179,
		-0.644582, 0.708765, 0.286647,
		30.327515, 29.059870, 27.104088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312908, 28.760921, 26.307255>,  <30.778723, 28.563734, 26.903435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312908, 28.760921, 26.307255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.340538, 29.056168, 26.575706>,  <30.357117, 29.233315, 26.736778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.340538, 29.056168, 26.575706>,  <30.312908, 28.760921, 26.307255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340538, 29.056168, 26.575706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351336, 0.611638, -0.708845,
		-0.933698, 0.284757, -0.217076,
		0.069077, 0.738114, 0.671131,
		30.361261, 29.277601, 26.777046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952625, 29.220461, 25.916552>,  <30.312908, 28.760921, 26.307255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952625, 29.220461, 25.916552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.169621, 29.418907, 26.187721>,  <30.299818, 29.537975, 26.350422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.169621, 29.418907, 26.187721>,  <29.952625, 29.220461, 25.916552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169621, 29.418907, 26.187721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308663, 0.632826, -0.710111,
		-0.781303, 0.594476, 0.190168,
		0.542487, 0.496114, 0.677922,
		30.332367, 29.567741, 26.391098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267008, 29.270596, 25.822401>,  <29.952625, 29.220461, 25.916552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267008, 29.270596, 25.822401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.195507, 29.107491, 25.464233>,  <29.152607, 29.009628, 25.249332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.195507, 29.107491, 25.464233>,  <29.267008, 29.270596, 25.822401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195507, 29.107491, 25.464233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473449, -0.762136, 0.441581,
		-0.862493, 0.502869, -0.056822,
		-0.178752, -0.407763, -0.895420,
		29.141882, 28.985161, 25.195608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531889, 28.945339, 25.828028>,  <29.267008, 29.270596, 25.822401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531889, 28.945339, 25.828028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.752226, 28.765053, 25.547050>,  <28.884428, 28.656881, 25.378464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.752226, 28.765053, 25.547050>,  <28.531889, 28.945339, 25.828028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752226, 28.765053, 25.547050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302755, -0.892226, 0.335071,
		-0.777760, 0.028096, -0.627933,
		0.550844, -0.450715, -0.702444,
		28.917479, 28.629839, 25.336317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099083, 28.558619, 25.386808>,  <28.531889, 28.945339, 25.828028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099083, 28.558619, 25.386808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.448088, 28.381969, 25.303200>,  <28.657490, 28.275980, 25.253035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.448088, 28.381969, 25.303200>,  <28.099083, 28.558619, 25.386808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448088, 28.381969, 25.303200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404299, -0.892793, 0.198654,
		-0.274344, -0.088820, -0.957521,
		0.872512, -0.441625, -0.209023,
		28.709841, 28.249481, 25.240494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024881, 28.074736, 24.788521>,  <28.099083, 28.558619, 25.386808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024881, 28.074736, 24.788521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.337965, 27.960468, 25.009705>,  <28.525814, 27.891907, 25.142414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.337965, 27.960468, 25.009705>,  <28.024881, 28.074736, 24.788521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337965, 27.960468, 25.009705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437847, -0.884150, 0.162999,
		0.442334, -0.369692, -0.817110,
		0.782707, -0.285670, 0.552958,
		28.572777, 27.874767, 25.175592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124830, 27.346865, 24.651529>,  <28.024881, 28.074736, 24.788521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124830, 27.346865, 24.651529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.313438, 27.414425, 24.997742>,  <28.426603, 27.454962, 25.205469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.313438, 27.414425, 24.997742>,  <28.124830, 27.346865, 24.651529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313438, 27.414425, 24.997742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378530, -0.847703, 0.371638,
		0.796482, -0.502864, -0.335774,
		0.471520, 0.168903, 0.865529,
		28.454895, 27.465096, 25.257401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377918, 26.734243, 24.750452>,  <28.124830, 27.346865, 24.651529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377918, 26.734243, 24.750452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.384642, 26.924992, 25.101978>,  <28.388676, 27.039440, 25.312893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.384642, 26.924992, 25.101978>,  <28.377918, 26.734243, 24.750452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384642, 26.924992, 25.101978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381825, -0.809264, 0.446432,
		0.924082, -0.343057, 0.168478,
		0.016808, 0.476868, 0.878814,
		28.389685, 27.068052, 25.365622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717005, 26.276701, 25.227821>,  <28.377918, 26.734243, 24.750452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717005, 26.276701, 25.227821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.536009, 26.549244, 25.457954>,  <28.427410, 26.712769, 25.596033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.536009, 26.549244, 25.457954>,  <28.717005, 26.276701, 25.227821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536009, 26.549244, 25.457954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353314, -0.729337, 0.585864,
		0.818792, 0.061827, 0.570752,
		-0.452492, 0.681356, 0.575330,
		28.400261, 26.753651, 25.630554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856813, 26.016916, 25.869774>,  <28.717005, 26.276701, 25.227821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856813, 26.016916, 25.869774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.549511, 26.266727, 25.925991>,  <28.365129, 26.416615, 25.959721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.549511, 26.266727, 25.925991>,  <28.856813, 26.016916, 25.869774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549511, 26.266727, 25.925991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440518, -0.675075, 0.591792,
		0.464467, 0.392735, 0.793744,
		-0.768254, 0.624527, 0.140543,
		28.319035, 26.454086, 25.968155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810652, 26.117311, 26.491819>,  <28.856813, 26.016916, 25.869774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810652, 26.117311, 26.491819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.439901, 26.218964, 26.381317>,  <28.217451, 26.279955, 26.315016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.439901, 26.218964, 26.381317>,  <28.810652, 26.117311, 26.491819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439901, 26.218964, 26.381317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369744, -0.745023, 0.555184,
		-0.064729, 0.616732, 0.784507,
		-0.926876, 0.254130, -0.276258,
		28.161839, 26.295202, 26.298439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488064, 25.973022, 27.068510>,  <28.810652, 26.117311, 26.491819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488064, 25.973022, 27.068510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.193100, 25.986729, 26.798679>,  <28.016121, 25.994953, 26.636782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.193100, 25.986729, 26.798679>,  <28.488064, 25.973022, 27.068510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193100, 25.986729, 26.798679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410365, -0.815990, 0.407138,
		-0.536496, 0.577050, 0.615780,
		-0.737409, 0.034267, -0.674577,
		27.971878, 25.997009, 26.596306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948889, 25.975145, 27.383842>,  <28.488064, 25.973022, 27.068510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948889, 25.975145, 27.383842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.815678, 25.824696, 27.037983>,  <27.735750, 25.734425, 26.830467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.815678, 25.824696, 27.037983>,  <27.948889, 25.975145, 27.383842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815678, 25.824696, 27.037983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227794, -0.857741, 0.460858,
		-0.914987, 0.350442, 0.199974,
		-0.333030, -0.376126, -0.864650,
		27.715769, 25.711857, 26.778587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321365, 25.596703, 27.593348>,  <27.948889, 25.975145, 27.383842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321365, 25.596703, 27.593348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.396683, 25.450718, 27.228634>,  <27.441874, 25.363127, 27.009806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.396683, 25.450718, 27.228634>,  <27.321365, 25.596703, 27.593348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396683, 25.450718, 27.228634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373410, -0.885271, 0.277236,
		-0.908356, 0.288267, -0.302970,
		0.188293, -0.364961, -0.911784,
		27.453171, 25.341230, 26.955099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695456, 25.410501, 27.324635>,  <27.321365, 25.596703, 27.593348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695456, 25.410501, 27.324635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.982479, 25.194153, 27.149105>,  <27.154694, 25.064344, 27.043787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.982479, 25.194153, 27.149105>,  <26.695456, 25.410501, 27.324635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982479, 25.194153, 27.149105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494532, -0.839308, 0.225833,
		-0.490456, 0.054965, -0.869731,
		0.717560, -0.540871, -0.438826,
		27.197746, 25.031891, 27.017458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262247, 24.875839, 27.049068>,  <26.695456, 25.410501, 27.324635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262247, 24.875839, 27.049068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.640518, 24.745808, 27.047565>,  <26.867481, 24.667788, 27.046663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.640518, 24.745808, 27.047565>,  <26.262247, 24.875839, 27.049068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640518, 24.745808, 27.047565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314586, -0.917944, 0.241691,
		-0.082020, -0.227380, -0.970346,
		0.945679, -0.325080, -0.003760,
		26.924221, 24.648283, 27.046438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.009205, 23.654993, 27.704201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745335, 23.935379, 27.812630>,  <33.587013, 24.103611, 27.877687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745335, 23.935379, 27.812630>,  <34.009205, 23.654993, 27.704201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745335, 23.935379, 27.812630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266717, 0.555556, -0.787540,
		-0.702633, -0.447220, -0.553445,
		-0.659674, 0.700965, 0.271071,
		33.547432, 24.145668, 27.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583054, 23.828526, 27.126453>,  <34.009205, 23.654993, 27.704201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583054, 23.828526, 27.126453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532082, 24.143730, 27.367386>,  <33.501499, 24.332853, 27.511946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532082, 24.143730, 27.367386>,  <33.583054, 23.828526, 27.126453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532082, 24.143730, 27.367386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057451, 0.612127, -0.788670,
		-0.990182, -0.065896, -0.123276,
		-0.127431, 0.788009, 0.602331,
		33.493851, 24.380133, 27.548084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019127, 24.243151, 26.821930>,  <33.583054, 23.828526, 27.126453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019127, 24.243151, 26.821930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212379, 24.489071, 27.071281>,  <33.328331, 24.636623, 27.220892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212379, 24.489071, 27.071281>,  <33.019127, 24.243151, 26.821930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212379, 24.489071, 27.071281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017134, 0.718490, -0.695327,
		-0.875378, 0.325256, 0.357662,
		0.483135, 0.614802, 0.623377,
		33.357319, 24.673512, 27.258295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599678, 24.903021, 26.724525>,  <33.019127, 24.243151, 26.821930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599678, 24.903021, 26.724525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965603, 24.956326, 26.877033>,  <33.185158, 24.988308, 26.968538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965603, 24.956326, 26.877033>,  <32.599678, 24.903021, 26.724525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965603, 24.956326, 26.877033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096773, 0.844179, -0.527254,
		-0.392121, 0.519234, 0.759366,
		0.914809, 0.133261, 0.381268,
		33.240047, 24.996304, 26.991413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629238, 25.569435, 27.170799>,  <32.599678, 24.903021, 26.724525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629238, 25.569435, 27.170799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974995, 25.462593, 27.000393>,  <33.182449, 25.398487, 26.898149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974995, 25.462593, 27.000393>,  <32.629238, 25.569435, 27.170799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974995, 25.462593, 27.000393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055866, 0.893010, -0.446555,
		0.499715, 0.362196, 0.786828,
		0.864387, -0.267107, -0.426016,
		33.234310, 25.382462, 26.872587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919956, 26.130184, 27.255329>,  <32.629238, 25.569435, 27.170799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919956, 26.130184, 27.255329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146198, 25.956917, 26.974628>,  <33.281944, 25.852957, 26.806208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146198, 25.956917, 26.974628>,  <32.919956, 26.130184, 27.255329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146198, 25.956917, 26.974628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180268, 0.895304, -0.407350,
		0.804734, 0.103894, 0.584473,
		0.565603, -0.433170, -0.701753,
		33.315880, 25.826965, 26.764103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491085, 26.485748, 27.211334>,  <32.919956, 26.130184, 27.255329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491085, 26.485748, 27.211334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473038, 26.317066, 26.849091>,  <33.462208, 26.215857, 26.631744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473038, 26.317066, 26.849091>,  <33.491085, 26.485748, 27.211334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473038, 26.317066, 26.849091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243503, 0.874546, -0.419374,
		0.968850, -0.239442, 0.063225,
		-0.045123, -0.421706, -0.905609,
		33.459499, 26.190554, 26.577408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171486, 26.612059, 26.927952>,  <33.491085, 26.485748, 27.211334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171486, 26.612059, 26.927952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910934, 26.537960, 26.633636>,  <33.754604, 26.493500, 26.457047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910934, 26.537960, 26.633636>,  <34.171486, 26.612059, 26.927952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910934, 26.537960, 26.633636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269422, 0.850072, -0.452536,
		0.709304, -0.493012, -0.503813,
		-0.651383, -0.185248, -0.735788,
		33.715519, 26.482386, 26.412901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577999, 26.679705, 26.378231>,  <34.171486, 26.612059, 26.927952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577999, 26.679705, 26.378231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201019, 26.702713, 26.246483>,  <33.974831, 26.716518, 26.167435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201019, 26.702713, 26.246483>,  <34.577999, 26.679705, 26.378231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201019, 26.702713, 26.246483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265385, 0.727902, -0.632241,
		0.203381, -0.683264, -0.701275,
		-0.942447, 0.057522, -0.329370,
		33.918285, 26.719969, 26.147673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666092, 27.086788, 25.865953>,  <34.577999, 26.679705, 26.378231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666092, 27.086788, 25.865953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267101, 27.070881, 25.889458>,  <34.027706, 27.061337, 25.903561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267101, 27.070881, 25.889458>,  <34.666092, 27.086788, 25.865953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267101, 27.070881, 25.889458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069518, 0.713528, -0.697170,
		-0.014202, -0.699497, -0.714494,
		-0.997479, -0.039769, 0.058762,
		33.967857, 27.058950, 25.907085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527679, 26.994555, 25.243254>,  <34.666092, 27.086788, 25.865953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527679, 26.994555, 25.243254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188255, 27.128017, 25.407509>,  <33.984600, 27.208096, 25.506062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188255, 27.128017, 25.407509>,  <34.527679, 26.994555, 25.243254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188255, 27.128017, 25.407509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086488, 0.678190, -0.729780,
		-0.521988, -0.654775, -0.546625,
		-0.848557, 0.333659, 0.410637,
		33.933689, 27.228115, 25.530701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972595, 27.074350, 24.737930>,  <34.527679, 26.994555, 25.243254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972595, 27.074350, 24.737930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852139, 27.301762, 25.044155>,  <33.779865, 27.438210, 25.227890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852139, 27.301762, 25.044155>,  <33.972595, 27.074350, 24.737930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852139, 27.301762, 25.044155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000694, 0.802700, -0.596383,
		-0.953578, -0.180129, -0.241335,
		-0.301145, 0.568531, 0.765562,
		33.761795, 27.472321, 25.273823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417236, 27.473007, 24.356268>,  <33.972595, 27.074350, 24.737930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417236, 27.473007, 24.356268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517334, 27.653099, 24.699120>,  <33.577393, 27.761154, 24.904831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517334, 27.653099, 24.699120>,  <33.417236, 27.473007, 24.356268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517334, 27.653099, 24.699120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019587, 0.882762, -0.469411,
		-0.967984, 0.134257, 0.212089,
		0.250246, 0.450228, 0.857130,
		33.592407, 27.788168, 24.956259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897686, 28.015167, 24.465311>,  <33.417236, 27.473007, 24.356268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897686, 28.015167, 24.465311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251602, 28.124199, 24.616493>,  <33.463951, 28.189617, 24.707203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251602, 28.124199, 24.616493>,  <32.897686, 28.015167, 24.465311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251602, 28.124199, 24.616493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136985, 0.927379, -0.348143,
		-0.445403, 0.256259, 0.857874,
		0.884789, 0.272580, 0.377954,
		33.517040, 28.205973, 24.729879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114616, 28.046122, 24.299427>,  <32.897686, 28.015167, 24.465311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114616, 28.046122, 24.299427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137329, 27.909115, 23.924309>,  <32.150955, 27.826910, 23.699238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137329, 27.909115, 23.924309>,  <32.114616, 28.046122, 24.299427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137329, 27.909115, 23.924309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019313, -0.938756, 0.344039,
		-0.998200, -0.037647, -0.046690,
		0.056782, -0.342518, -0.937793,
		32.154366, 27.806360, 23.642971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530434, 27.597052, 24.240423>,  <32.114616, 28.046122, 24.299427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530434, 27.597052, 24.240423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781672, 27.475178, 23.954021>,  <31.932415, 27.402054, 23.782181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781672, 27.475178, 23.954021>,  <31.530434, 27.597052, 24.240423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781672, 27.475178, 23.954021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093139, -0.942976, 0.319564,
		-0.772541, -0.134029, -0.620658,
		0.628096, -0.304684, -0.716004,
		31.970100, 27.383772, 23.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213434, 27.130821, 23.814735>,  <31.530434, 27.597052, 24.240423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213434, 27.130821, 23.814735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606581, 27.061581, 23.789398>,  <31.842468, 27.020037, 23.774197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606581, 27.061581, 23.789398>,  <31.213434, 27.130821, 23.814735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606581, 27.061581, 23.789398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148778, -0.947868, 0.281800,
		-0.108820, -0.267548, -0.957380,
		0.982865, -0.173103, -0.063342,
		31.901440, 27.009649, 23.770395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147871, 26.468035, 23.569218>,  <31.213434, 27.130821, 23.814735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147871, 26.468035, 23.569218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518013, 26.502602, 23.716866>,  <31.740099, 26.523342, 23.805454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518013, 26.502602, 23.716866>,  <31.147871, 26.468035, 23.569218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518013, 26.502602, 23.716866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048341, -0.938825, 0.340985,
		0.376005, -0.333376, -0.864569,
		0.925356, 0.086418, 0.369119,
		31.795620, 26.528526, 23.827600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462246, 25.806112, 23.271025>,  <31.147871, 26.468035, 23.569218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462246, 25.806112, 23.271025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.691267, 25.936642, 23.571877>,  <31.828680, 26.014959, 23.752388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.691267, 25.936642, 23.571877>,  <31.462246, 25.806112, 23.271025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691267, 25.936642, 23.571877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045727, -0.903240, 0.426693,
		0.818593, -0.278696, -0.502229,
		0.572551, 0.326322, 0.752130,
		31.863033, 26.034538, 23.797516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137733, 25.384193, 23.289055>,  <31.462246, 25.806112, 23.271025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137733, 25.384193, 23.289055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075542, 25.552094, 23.646744>,  <32.038227, 25.652834, 23.861357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075542, 25.552094, 23.646744>,  <32.137733, 25.384193, 23.289055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075542, 25.552094, 23.646744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174374, -0.879354, 0.443091,
		0.972327, 0.224821, 0.063529,
		-0.155481, 0.419752, 0.894223,
		32.028896, 25.678019, 23.915010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817032, 25.237411, 23.646841>,  <32.137733, 25.384193, 23.289055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817032, 25.237411, 23.646841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487526, 25.279572, 23.869659>,  <32.289822, 25.304869, 24.003349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487526, 25.279572, 23.869659>,  <32.817032, 25.237411, 23.646841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487526, 25.279572, 23.869659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227280, -0.838753, 0.494810,
		0.519376, 0.534213, 0.666982,
		-0.823767, 0.105401, 0.557045,
		32.240395, 25.311192, 24.036774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814606, 24.602846, 24.104738>,  <32.817032, 25.237411, 23.646841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814606, 24.602846, 24.104738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491390, 24.783672, 24.255844>,  <32.297459, 24.892168, 24.346508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491390, 24.783672, 24.255844>,  <32.814606, 24.602846, 24.104738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491390, 24.783672, 24.255844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100262, -0.737400, 0.667973,
		0.580529, 0.501876, 0.641176,
		-0.808043, 0.452063, 0.377764,
		32.248978, 24.919291, 24.369173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820774, 24.447823, 24.753105>,  <32.814606, 24.602846, 24.104738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820774, 24.447823, 24.753105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436878, 24.547794, 24.701820>,  <32.206543, 24.607779, 24.671049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436878, 24.547794, 24.701820>,  <32.820774, 24.447823, 24.753105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436878, 24.547794, 24.701820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280784, -0.840561, 0.463268,
		0.008014, 0.480616, 0.876895,
		-0.959738, 0.249931, -0.128213,
		32.148956, 24.622774, 24.663357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309013, 24.423050, 25.431829>,  <32.820774, 24.447823, 24.753105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309013, 24.423050, 25.431829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086723, 24.369392, 25.103642>,  <31.953348, 24.337198, 24.906729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086723, 24.369392, 25.103642>,  <32.309013, 24.423050, 25.431829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086723, 24.369392, 25.103642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466911, -0.766194, 0.441522,
		-0.687868, 0.628452, 0.363160,
		-0.555727, -0.134145, -0.820471,
		31.920006, 24.329149, 24.857500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522934, 24.486378, 25.559866>,  <32.309013, 24.423050, 25.431829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522934, 24.486378, 25.559866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504787, 24.268646, 25.224808>,  <31.493900, 24.138008, 25.023773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504787, 24.268646, 25.224808>,  <31.522934, 24.486378, 25.559866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504787, 24.268646, 25.224808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547645, -0.687727, 0.476568,
		-0.835480, 0.480351, -0.266900,
		-0.045366, -0.544329, -0.837644,
		31.491179, 24.105347, 24.973515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813808, 24.232758, 25.453150>,  <31.522934, 24.486378, 25.559866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813808, 24.232758, 25.453150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026711, 23.968891, 25.240906>,  <31.154451, 23.810572, 25.113560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026711, 23.968891, 25.240906>,  <30.813808, 24.232758, 25.453150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026711, 23.968891, 25.240906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441903, -0.751090, 0.490495,
		-0.722097, -0.026591, -0.691280,
		0.532257, -0.659664, -0.530609,
		31.186386, 23.770992, 25.081722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387117, 23.750341, 25.322277>,  <30.813808, 24.232758, 25.453150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387117, 23.750341, 25.322277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749285, 23.580830, 25.312286>,  <30.966585, 23.479122, 25.306292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749285, 23.580830, 25.312286>,  <30.387117, 23.750341, 25.322277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749285, 23.580830, 25.312286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312801, -0.705768, 0.635647,
		-0.287003, -0.567715, -0.771576,
		0.905420, -0.423782, -0.024976,
		31.020910, 23.453695, 25.304794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272213, 23.058716, 25.365047>,  <30.387117, 23.750341, 25.322277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272213, 23.058716, 25.365047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659115, 23.068909, 25.466061>,  <30.891256, 23.075024, 25.526669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659115, 23.068909, 25.466061>,  <30.272213, 23.058716, 25.365047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659115, 23.068909, 25.466061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174489, -0.655790, 0.734501,
		0.184324, -0.754513, -0.629869,
		0.967253, 0.025481, 0.252532,
		30.949291, 23.076553, 25.541821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029064, 22.572430, 24.761076>,  <30.272213, 23.058716, 25.365047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029064, 22.572430, 24.761076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.634106, 22.516109, 24.732174>,  <29.397131, 22.482317, 24.714832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.634106, 22.516109, 24.732174>,  <30.029064, 22.572430, 24.761076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634106, 22.516109, 24.732174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034792, 0.638518, -0.768820,
		0.154387, -0.756617, -0.635370,
		-0.987398, -0.140801, -0.072255,
		29.337887, 22.473869, 24.710497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894449, 22.365631, 24.055178>,  <30.029064, 22.572430, 24.761076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894449, 22.365631, 24.055178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554916, 22.508419, 24.211155>,  <29.351196, 22.594091, 24.304741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554916, 22.508419, 24.211155>,  <29.894449, 22.365631, 24.055178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554916, 22.508419, 24.211155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180338, 0.497846, -0.848309,
		-0.496955, -0.790393, -0.358211,
		-0.848831, 0.356971, 0.389945,
		29.300266, 22.615511, 24.328138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513695, 22.302731, 23.547546>,  <29.894449, 22.365631, 24.055178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513695, 22.302731, 23.547546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.324713, 22.585266, 23.758400>,  <29.211323, 22.754787, 23.884912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.324713, 22.585266, 23.758400>,  <29.513695, 22.302731, 23.547546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324713, 22.585266, 23.758400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103819, 0.549332, -0.829129,
		-0.875218, -0.446454, -0.186204,
		-0.472456, 0.706338, 0.527136,
		29.182976, 22.797167, 23.916540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911118, 22.459869, 23.165236>,  <29.513695, 22.302731, 23.547546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911118, 22.459869, 23.165236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.980743, 22.770309, 23.407681>,  <29.022518, 22.956573, 23.553146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.980743, 22.770309, 23.407681>,  <28.911118, 22.459869, 23.165236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980743, 22.770309, 23.407681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108154, 0.626851, -0.771596,
		-0.978777, 0.068755, 0.193051,
		0.174065, 0.776100, 0.606111,
		29.032963, 23.003139, 23.589514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433149, 22.932583, 23.003454>,  <28.911118, 22.459869, 23.165236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433149, 22.932583, 23.003454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.689190, 23.174282, 23.193256>,  <28.842813, 23.319302, 23.307138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.689190, 23.174282, 23.193256>,  <28.433149, 22.932583, 23.003454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689190, 23.174282, 23.193256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258046, 0.750820, -0.608015,
		-0.723660, 0.266747, 0.636524,
		0.640101, 0.604248, 0.474505,
		28.881220, 23.355556, 23.335608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067562, 23.621840, 23.206486>,  <28.433149, 22.932583, 23.003454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067562, 23.621840, 23.206486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.462627, 23.683720, 23.196743>,  <28.699667, 23.720848, 23.190897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.462627, 23.683720, 23.196743>,  <28.067562, 23.621840, 23.206486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462627, 23.683720, 23.196743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138314, 0.788759, -0.598939,
		-0.073443, 0.594918, 0.800424,
		0.987661, 0.154698, -0.024357,
		28.758926, 23.730129, 23.189436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178532, 24.311359, 23.374048>,  <28.067562, 23.621840, 23.206486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178532, 24.311359, 23.374048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.509575, 24.213917, 23.171772>,  <28.708200, 24.155451, 23.050406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.509575, 24.213917, 23.171772>,  <28.178532, 24.311359, 23.374048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509575, 24.213917, 23.171772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053671, 0.862443, -0.503301,
		0.558736, 0.443677, 0.700689,
		0.827607, -0.243605, -0.505690,
		28.757856, 24.140835, 23.020065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485001, 24.948143, 23.316820>,  <28.178532, 24.311359, 23.374048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485001, 24.948143, 23.316820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.692022, 24.745506, 23.040993>,  <28.816236, 24.623924, 22.875496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.692022, 24.745506, 23.040993>,  <28.485001, 24.948143, 23.316820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692022, 24.745506, 23.040993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148559, 0.846860, -0.510644,
		0.842654, 0.161845, 0.513556,
		0.517556, -0.506590, -0.689567,
		28.847288, 24.593529, 22.834122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072659, 25.307337, 23.174623>,  <28.485001, 24.948143, 23.316820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072659, 25.307337, 23.174623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.054214, 25.080746, 22.845509>,  <29.043148, 24.944792, 22.648041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.054214, 25.080746, 22.845509>,  <29.072659, 25.307337, 23.174623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054214, 25.080746, 22.845509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033392, 0.822327, -0.568034,
		0.998378, -0.053667, -0.019003,
		-0.046112, -0.566478, -0.822786,
		29.040380, 24.910803, 22.598673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634781, 25.575493, 22.766821>,  <29.072659, 25.307337, 23.174623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634781, 25.575493, 22.766821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.363386, 25.403351, 22.528679>,  <29.200548, 25.300066, 22.385794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.363386, 25.403351, 22.528679>,  <29.634781, 25.575493, 22.766821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363386, 25.403351, 22.528679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155588, 0.876233, -0.456080,
		0.717946, -0.216815, -0.661472,
		-0.678489, -0.430357, -0.595354,
		29.159840, 25.274244, 22.350073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806013, 25.665661, 22.008074>,  <29.634781, 25.575493, 22.766821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806013, 25.665661, 22.008074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.415888, 25.579720, 22.028484>,  <29.181812, 25.528154, 22.040731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.415888, 25.579720, 22.028484>,  <29.806013, 25.665661, 22.008074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415888, 25.579720, 22.028484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206191, 0.803273, -0.558782,
		0.079067, -0.555508, -0.827743,
		-0.975312, -0.214854, 0.051028,
		29.123295, 25.515263, 22.043793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550350, 25.755436, 21.346197>,  <29.806013, 25.665661, 22.008074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550350, 25.755436, 21.346197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221457, 25.764023, 21.573696>,  <29.024120, 25.769175, 21.710196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221457, 25.764023, 21.573696>,  <29.550350, 25.755436, 21.346197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221457, 25.764023, 21.573696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321040, 0.807647, -0.494611,
		-0.469965, -0.589276, -0.657181,
		-0.822233, 0.021468, 0.568746,
		28.974787, 25.770464, 21.744320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949713, 25.830301, 20.858637>,  <29.550350, 25.755436, 21.346197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949713, 25.830301, 20.858637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.849949, 25.980347, 21.215755>,  <28.790091, 26.070374, 21.430027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.849949, 25.980347, 21.215755>,  <28.949713, 25.830301, 20.858637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849949, 25.980347, 21.215755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426659, 0.785065, -0.449038,
		-0.869343, -0.492913, -0.035756,
		-0.249408, 0.375113, 0.892797,
		28.775127, 26.092880, 21.483595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338135, 26.176622, 20.687536>,  <28.949713, 25.830301, 20.858637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338135, 26.176622, 20.687536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.444239, 26.327087, 21.042645>,  <28.507902, 26.417366, 21.255709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.444239, 26.327087, 21.042645>,  <28.338135, 26.176622, 20.687536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444239, 26.327087, 21.042645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360649, 0.892627, -0.270461,
		-0.894186, -0.248431, 0.372442,
		0.265261, 0.376163, 0.887771,
		28.523817, 26.439936, 21.308975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.429253, 29.354446, 31.555729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798733, 29.204693, 31.588249>,  <39.020420, 29.114841, 31.607761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798733, 29.204693, 31.588249>,  <38.429253, 29.354446, 31.555729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798733, 29.204693, 31.588249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333032, 0.679775, -0.653449,
		0.189375, 0.630668, 0.752592,
		0.923703, -0.374384, 0.081300,
		39.075844, 29.092377, 31.612638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915112, 29.913986, 31.597109>,  <38.429253, 29.354446, 31.555729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915112, 29.913986, 31.597109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207291, 29.647224, 31.538200>,  <39.382599, 29.487167, 31.502855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207291, 29.647224, 31.538200>,  <38.915112, 29.913986, 31.597109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207291, 29.647224, 31.538200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431049, 0.617427, -0.658013,
		0.529761, 0.417161, 0.738465,
		0.730445, -0.666904, -0.147272,
		39.426426, 29.447153, 31.494019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489094, 30.225822, 31.602648>,  <38.915112, 29.913986, 31.597109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489094, 30.225822, 31.602648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585411, 29.902008, 31.388481>,  <39.643200, 29.707720, 31.259981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585411, 29.902008, 31.388481>,  <39.489094, 30.225822, 31.602648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585411, 29.902008, 31.388481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371770, 0.586504, -0.719583,
		0.896553, -0.025785, 0.442185,
		0.240789, -0.809536, -0.535418,
		39.657646, 29.659147, 31.227856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081749, 30.354824, 31.369829>,  <39.489094, 30.225822, 31.602648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081749, 30.354824, 31.369829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966808, 30.081535, 31.101311>,  <39.897846, 29.917562, 30.940201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966808, 30.081535, 31.101311>,  <40.081749, 30.354824, 31.369829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966808, 30.081535, 31.101311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481503, 0.502820, -0.717863,
		0.828001, -0.529507, 0.184489,
		-0.287349, -0.683223, -0.671295,
		39.880604, 29.876568, 30.899921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588699, 30.410837, 30.863716>,  <40.081749, 30.354824, 31.369829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588699, 30.410837, 30.863716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269028, 30.237331, 30.697262>,  <40.077225, 30.133228, 30.597389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269028, 30.237331, 30.697262>,  <40.588699, 30.410837, 30.863716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269028, 30.237331, 30.697262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267942, 0.362640, -0.892580,
		0.538075, -0.824828, -0.173589,
		-0.799176, -0.433764, -0.416134,
		40.029274, 30.107203, 30.572422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793896, 30.084713, 30.213400>,  <40.588699, 30.410837, 30.863716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793896, 30.084713, 30.213400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.396858, 30.119617, 30.179592>,  <40.158634, 30.140560, 30.159307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.396858, 30.119617, 30.179592>,  <40.793896, 30.084713, 30.213400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396858, 30.119617, 30.179592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108838, 0.329685, -0.937796,
		-0.053967, -0.940050, -0.336741,
		-0.992593, 0.087260, -0.084521,
		40.099079, 30.145796, 30.154236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643539, 29.941727, 29.537277>,  <40.793896, 30.084713, 30.213400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643539, 29.941727, 29.537277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.322865, 30.146370, 29.660923>,  <40.130459, 30.269156, 29.735111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.322865, 30.146370, 29.660923>,  <40.643539, 29.941727, 29.537277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322865, 30.146370, 29.660923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124809, 0.362464, -0.923603,
		-0.584566, -0.779022, -0.226730,
		-0.801689, 0.511609, 0.309114,
		40.082359, 30.299852, 29.753656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172119, 29.813793, 29.070097>,  <40.643539, 29.941727, 29.537277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172119, 29.813793, 29.070097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.034866, 30.144867, 29.247723>,  <39.952515, 30.343512, 29.354298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.034866, 30.144867, 29.247723>,  <40.172119, 29.813793, 29.070097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034866, 30.144867, 29.247723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311135, 0.345919, -0.885175,
		-0.886258, -0.441898, 0.138825,
		-0.343135, 0.827687, 0.444064,
		39.931927, 30.393173, 29.380941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595352, 30.026197, 28.656467>,  <40.172119, 29.813793, 29.070097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595352, 30.026197, 28.656467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707108, 30.346966, 28.867699>,  <39.774162, 30.539427, 28.994438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707108, 30.346966, 28.867699>,  <39.595352, 30.026197, 28.656467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707108, 30.346966, 28.867699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041525, 0.539374, -0.841042,
		-0.959279, 0.256909, 0.117397,
		0.279392, 0.801919, 0.528078,
		39.790924, 30.587542, 29.026123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347622, 30.656412, 28.242208>,  <39.595352, 30.026197, 28.656467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347622, 30.656412, 28.242208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.620571, 30.812923, 28.489197>,  <39.784340, 30.906830, 28.637390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.620571, 30.812923, 28.489197>,  <39.347622, 30.656412, 28.242208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620571, 30.812923, 28.489197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210222, 0.703967, -0.678407,
		-0.700125, 0.592732, 0.398112,
		0.682372, 0.391278, 0.617471,
		39.825283, 30.930307, 28.674438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259689, 31.362951, 28.234634>,  <39.347622, 30.656412, 28.242208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259689, 31.362951, 28.234634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635090, 31.326984, 28.367977>,  <39.860329, 31.305405, 28.447983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635090, 31.326984, 28.367977>,  <39.259689, 31.362951, 28.234634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635090, 31.326984, 28.367977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299946, 0.690533, -0.658177,
		-0.171013, 0.717690, 0.675038,
		0.938503, -0.089918, 0.333358,
		39.916641, 31.300009, 28.467985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530586, 32.072304, 28.356205>,  <39.259689, 31.362951, 28.234634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530586, 32.072304, 28.356205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846188, 31.829544, 28.317936>,  <40.035549, 31.683889, 28.294975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846188, 31.829544, 28.317936>,  <39.530586, 32.072304, 28.356205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846188, 31.829544, 28.317936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396095, 0.621498, -0.675907,
		0.469664, 0.495397, 0.730751,
		0.789002, -0.606896, -0.095671,
		40.082890, 31.647476, 28.289234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029636, 32.481300, 28.263950>,  <39.530586, 32.072304, 28.356205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029636, 32.481300, 28.263950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228703, 32.154175, 28.148357>,  <40.348141, 31.957899, 28.079000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228703, 32.154175, 28.148357>,  <40.029636, 32.481300, 28.263950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228703, 32.154175, 28.148357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262043, 0.459366, -0.848715,
		0.826838, 0.346651, 0.442913,
		0.497667, -0.817812, -0.288984,
		40.378002, 31.908831, 28.061663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602039, 32.745800, 27.938061>,  <40.029636, 32.481300, 28.263950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602039, 32.745800, 27.938061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544357, 32.378124, 27.791473>,  <40.509747, 32.157520, 27.703520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544357, 32.378124, 27.791473>,  <40.602039, 32.745800, 27.938061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544357, 32.378124, 27.791473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115882, 0.352106, -0.928759,
		0.982739, -0.176403, 0.055741,
		-0.144209, -0.919186, -0.366470,
		40.501095, 32.102367, 27.681532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259495, 32.489151, 27.546295>,  <40.602039, 32.745800, 27.938061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259495, 32.489151, 27.546295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931389, 32.300457, 27.416912>,  <40.734524, 32.187241, 27.339283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931389, 32.300457, 27.416912>,  <41.259495, 32.489151, 27.546295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931389, 32.300457, 27.416912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274622, 0.171252, -0.946179,
		0.501741, -0.864949, -0.010923,
		-0.820268, -0.471737, -0.323458,
		40.685310, 32.158936, 27.319874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526802, 32.287933, 26.932575>,  <41.259495, 32.489151, 27.546295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526802, 32.287933, 26.932575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.130535, 32.253010, 26.890709>,  <40.892776, 32.232056, 26.865589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.130535, 32.253010, 26.890709>,  <41.526802, 32.287933, 26.932575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130535, 32.253010, 26.890709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075136, 0.290871, -0.953807,
		0.113721, -0.952770, -0.281596,
		-0.990667, -0.087310, -0.104665,
		40.833336, 32.226818, 26.859308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467186, 31.981552, 26.326508>,  <41.526802, 32.287933, 26.932575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467186, 31.981552, 26.326508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110687, 32.150139, 26.393497>,  <40.896790, 32.251289, 26.433691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110687, 32.150139, 26.393497>,  <41.467186, 31.981552, 26.326508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110687, 32.150139, 26.393497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043868, 0.447658, -0.893128,
		-0.451393, -0.788650, -0.417462,
		-0.891246, 0.421465, 0.167473,
		40.843315, 32.276577, 26.443739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258362, 31.853584, 25.757154>,  <41.467186, 31.981552, 26.326508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258362, 31.853584, 25.757154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.989479, 32.117382, 25.891743>,  <40.828152, 32.275661, 25.972496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.989479, 32.117382, 25.891743>,  <41.258362, 31.853584, 25.757154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989479, 32.117382, 25.891743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140851, 0.332248, -0.932616,
		-0.726846, -0.674299, -0.130448,
		-0.672202, 0.659494, 0.336469,
		40.787819, 32.315231, 25.992683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664707, 31.711050, 25.384140>,  <41.258362, 31.853584, 25.757154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664707, 31.711050, 25.384140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616806, 32.085861, 25.515373>,  <40.588066, 32.310749, 25.594114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616806, 32.085861, 25.515373>,  <40.664707, 31.711050, 25.384140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616806, 32.085861, 25.515373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103300, 0.316909, -0.942814,
		-0.987415, -0.146793, 0.058846,
		-0.119750, 0.937028, 0.328084,
		40.580879, 32.366970, 25.613798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069527, 32.079826, 24.973154>,  <40.664707, 31.711050, 25.384140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069527, 32.079826, 24.973154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.265003, 32.405804, 25.097767>,  <40.382290, 32.601391, 25.172535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.265003, 32.405804, 25.097767>,  <40.069527, 32.079826, 24.973154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265003, 32.405804, 25.097767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202888, 0.453440, -0.867887,
		-0.848537, 0.360924, 0.386934,
		0.488693, 0.814939, 0.311534,
		40.411610, 32.650284, 25.191227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713947, 32.668652, 24.802052>,  <40.069527, 32.079826, 24.973154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713947, 32.668652, 24.802052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.088482, 32.801220, 24.848423>,  <40.313202, 32.880760, 24.876247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.088482, 32.801220, 24.848423>,  <39.713947, 32.668652, 24.802052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088482, 32.801220, 24.848423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064501, 0.486927, -0.871057,
		-0.345136, 0.808123, 0.477304,
		0.936334, 0.331420, 0.115931,
		40.369381, 32.900646, 24.883202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087307, 32.537056, 24.587906>,  <39.713947, 32.668652, 24.802052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087307, 32.537056, 24.587906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868683, 32.312088, 24.339729>,  <38.737507, 32.177105, 24.190823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868683, 32.312088, 24.339729>,  <39.087307, 32.537056, 24.587906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868683, 32.312088, 24.339729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032991, -0.725863, 0.687048,
		-0.836768, 0.395984, 0.378175,
		-0.546563, -0.562423, -0.620443,
		38.704716, 32.143360, 24.153597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552429, 32.370289, 24.972549>,  <39.087307, 32.537056, 24.587906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552429, 32.370289, 24.972549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.628227, 32.101364, 24.686306>,  <38.673706, 31.940010, 24.514561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.628227, 32.101364, 24.686306>,  <38.552429, 32.370289, 24.972549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628227, 32.101364, 24.686306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020945, -0.725878, 0.687505,
		-0.981659, -0.145267, -0.123468,
		0.189494, -0.672309, -0.715606,
		38.685074, 31.899672, 24.471624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239807, 31.827097, 25.222124>,  <38.552429, 32.370289, 24.972549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239807, 31.827097, 25.222124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.434868, 31.660191, 24.915379>,  <38.551907, 31.560047, 24.731331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.434868, 31.660191, 24.915379>,  <38.239807, 31.827097, 25.222124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434868, 31.660191, 24.915379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014368, -0.882105, 0.470834,
		-0.872922, -0.218583, -0.436152,
		0.487648, -0.417268, -0.766868,
		38.581165, 31.535011, 24.685320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904404, 31.200588, 25.078659>,  <38.239807, 31.827097, 25.222124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904404, 31.200588, 25.078659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290192, 31.153275, 24.984169>,  <38.521664, 31.124886, 24.927475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290192, 31.153275, 24.984169>,  <37.904404, 31.200588, 25.078659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290192, 31.153275, 24.984169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056344, -0.781499, 0.621357,
		-0.258107, -0.612591, -0.747070,
		0.964472, -0.118284, -0.236226,
		38.579533, 31.117790, 24.913301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937176, 30.516842, 24.980587>,  <37.904404, 31.200588, 25.078659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937176, 30.516842, 24.980587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308262, 30.649696, 25.048744>,  <38.530914, 30.729408, 25.089638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308262, 30.649696, 25.048744>,  <37.937176, 30.516842, 24.980587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308262, 30.649696, 25.048744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124961, -0.706438, 0.696656,
		0.351756, -0.625005, -0.696876,
		0.927713, 0.332135, 0.170393,
		38.586575, 30.749336, 25.099861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212963, 29.923044, 24.985432>,  <37.937176, 30.516842, 24.980587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212963, 29.923044, 24.985432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461380, 30.177059, 25.169186>,  <38.610432, 30.329468, 25.279438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461380, 30.177059, 25.169186>,  <38.212963, 29.923044, 24.985432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461380, 30.177059, 25.169186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284761, -0.728881, 0.622610,
		0.730215, -0.255854, -0.633502,
		0.621045, 0.635036, 0.459383,
		38.647694, 30.367569, 25.307001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778088, 29.544586, 25.098783>,  <38.212963, 29.923044, 24.985432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778088, 29.544586, 25.098783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819698, 29.847149, 25.357094>,  <38.844666, 30.028687, 25.512079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819698, 29.847149, 25.357094>,  <38.778088, 29.544586, 25.098783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819698, 29.847149, 25.357094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468493, -0.610019, 0.639055,
		0.877321, 0.236062, -0.417830,
		0.104027, 0.756407, 0.645776,
		38.850906, 30.074072, 25.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478321, 29.476192, 25.284788>,  <38.778088, 29.544586, 25.098783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478321, 29.476192, 25.284788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330044, 29.692154, 25.587070>,  <39.241077, 29.821730, 25.768440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330044, 29.692154, 25.587070>,  <39.478321, 29.476192, 25.284788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330044, 29.692154, 25.587070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494427, -0.574076, 0.652671,
		0.786210, 0.615583, -0.054134,
		-0.370696, 0.539902, 0.755705,
		39.218834, 29.854124, 25.813782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022255, 29.419235, 25.803652>,  <39.478321, 29.476192, 25.284788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022255, 29.419235, 25.803652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.691135, 29.553524, 25.983444>,  <39.492462, 29.634098, 26.091320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.691135, 29.553524, 25.983444>,  <40.022255, 29.419235, 25.803652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691135, 29.553524, 25.983444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143621, -0.647674, 0.748259,
		0.542325, 0.683966, 0.487929,
		-0.827802, 0.335723, 0.449482,
		39.442795, 29.654242, 26.118288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196560, 29.706842, 26.549868>,  <40.022255, 29.419235, 25.803652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196560, 29.706842, 26.549868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809242, 29.607712, 26.562393>,  <39.576851, 29.548233, 26.569908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809242, 29.607712, 26.562393>,  <40.196560, 29.706842, 26.549868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809242, 29.607712, 26.562393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178712, -0.599699, 0.780015,
		-0.174531, 0.760883, 0.624977,
		-0.968298, -0.247827, 0.031313,
		39.518753, 29.533363, 26.571787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110249, 29.578495, 27.205284>,  <40.196560, 29.706842, 26.549868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110249, 29.578495, 27.205284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791332, 29.396496, 27.046635>,  <39.599983, 29.287296, 26.951445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791332, 29.396496, 27.046635>,  <40.110249, 29.578495, 27.205284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791332, 29.396496, 27.046635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037725, -0.693372, 0.719591,
		-0.602420, 0.558758, 0.569982,
		-0.797287, -0.454999, -0.396622,
		39.552147, 29.259996, 26.927649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664745, 29.385695, 27.751289>,  <40.110249, 29.578495, 27.205284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664745, 29.385695, 27.751289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.561035, 29.151009, 27.444424>,  <39.498810, 29.010197, 27.260305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.561035, 29.151009, 27.444424>,  <39.664745, 29.385695, 27.751289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561035, 29.151009, 27.444424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076000, -0.779469, 0.621814,
		-0.962808, 0.219528, 0.157509,
		-0.259279, -0.586716, -0.767163,
		39.483253, 28.974993, 27.214275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154163, 29.034876, 27.978167>,  <39.664745, 29.385695, 27.751289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154163, 29.034876, 27.978167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.277328, 28.796257, 27.681702>,  <39.351227, 28.653086, 27.503822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.277328, 28.796257, 27.681702>,  <39.154163, 29.034876, 27.978167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277328, 28.796257, 27.681702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006685, -0.780349, 0.625309,
		-0.951391, -0.187587, -0.244269,
		0.307914, -0.596546, -0.741162,
		39.369701, 28.617292, 27.459352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611980, 28.492348, 27.930456>,  <39.154163, 29.034876, 27.978167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611980, 28.492348, 27.930456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.945206, 28.341740, 27.768353>,  <39.145142, 28.251375, 27.671091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.945206, 28.341740, 27.768353>,  <38.611980, 28.492348, 27.930456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945206, 28.341740, 27.768353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118651, -0.837180, 0.533902,
		-0.540299, -0.396691, -0.742100,
		0.833066, -0.376518, -0.405260,
		39.195126, 28.228785, 27.646774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510674, 27.761122, 27.776543>,  <38.611980, 28.492348, 27.930456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510674, 27.761122, 27.776543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.906441, 27.814304, 27.799805>,  <39.143902, 27.846214, 27.813761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.906441, 27.814304, 27.799805>,  <38.510674, 27.761122, 27.776543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906441, 27.814304, 27.799805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065040, -0.764513, 0.641319,
		0.129726, -0.630748, -0.765068,
		0.989415, 0.132956, 0.058154,
		39.203266, 27.854191, 27.817251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544674, 27.148186, 27.799622>,  <38.510674, 27.761122, 27.776543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544674, 27.148186, 27.799622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905216, 27.299389, 27.884151>,  <39.121544, 27.390112, 27.934870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905216, 27.299389, 27.884151>,  <38.544674, 27.148186, 27.799622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905216, 27.299389, 27.884151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175133, -0.764456, 0.620432,
		0.396079, -0.522222, -0.755252,
		0.901360, 0.378009, 0.211327,
		39.175625, 27.412792, 27.947550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144062, 26.569735, 27.779774>,  <38.544674, 27.148186, 27.799622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144062, 26.569735, 27.779774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272747, 26.875542, 28.003208>,  <39.349957, 27.059025, 28.137268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272747, 26.875542, 28.003208>,  <39.144062, 26.569735, 27.779774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272747, 26.875542, 28.003208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315045, -0.642764, 0.698284,
		0.892888, -0.048666, -0.447641,
		0.321710, 0.764517, 0.558585,
		39.369259, 27.104897, 28.170784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646675, 26.248306, 28.089766>,  <39.144062, 26.569735, 27.779774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646675, 26.248306, 28.089766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590202, 26.580322, 28.305580>,  <39.556320, 26.779531, 28.435068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590202, 26.580322, 28.305580>,  <39.646675, 26.248306, 28.089766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590202, 26.580322, 28.305580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539340, -0.392528, 0.745007,
		0.830169, 0.396173, -0.392257,
		-0.141180, 0.830042, 0.539536,
		39.547848, 26.829334, 28.467442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283226, 26.235327, 28.438707>,  <39.646675, 26.248306, 28.089766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283226, 26.235327, 28.438707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027611, 26.463257, 28.645370>,  <39.874241, 26.600014, 28.769367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027611, 26.463257, 28.645370>,  <40.283226, 26.235327, 28.438707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027611, 26.463257, 28.645370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360518, -0.371457, 0.855597,
		0.679455, 0.733021, 0.031942,
		-0.639036, 0.569824, 0.516656,
		39.835899, 26.634205, 28.800367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666431, 26.469868, 29.004868>,  <40.283226, 26.235327, 28.438707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666431, 26.469868, 29.004868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284592, 26.521561, 29.112228>,  <40.055489, 26.552576, 29.176645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284592, 26.521561, 29.112228>,  <40.666431, 26.469868, 29.004868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284592, 26.521561, 29.112228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200183, -0.388946, 0.899248,
		0.220607, 0.912151, 0.345417,
		-0.954599, 0.129234, 0.268402,
		39.998211, 26.560331, 29.192749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549995, 26.740582, 29.745550>,  <40.666431, 26.469868, 29.004868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549995, 26.740582, 29.745550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203995, 26.548943, 29.685894>,  <39.996395, 26.433958, 29.650101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203995, 26.548943, 29.685894>,  <40.549995, 26.740582, 29.745550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203995, 26.548943, 29.685894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217615, -0.626006, 0.748839,
		-0.452130, 0.615289, 0.645753,
		-0.864998, -0.479098, -0.149141,
		39.944496, 26.405212, 29.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.413122, 24.010376, 26.620884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.702000, 24.102390, 26.881813>,  <26.875326, 24.157598, 27.038370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.702000, 24.102390, 26.881813>,  <26.413122, 24.010376, 26.620884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702000, 24.102390, 26.881813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117478, -0.888585, 0.443413,
		0.681644, -0.396862, -0.614704,
		0.722191, 0.230035, 0.652322,
		26.918657, 24.171400, 27.077509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697378, 23.356848, 26.679857>,  <26.413122, 24.010376, 26.620884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697378, 23.356848, 26.679857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.850132, 23.563675, 26.986271>,  <26.941784, 23.687771, 27.170118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.850132, 23.563675, 26.986271>,  <26.697378, 23.356848, 26.679857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850132, 23.563675, 26.986271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118420, -0.849394, 0.514301,
		0.916592, -0.105689, -0.385601,
		0.381884, 0.517068, 0.766033,
		26.964697, 23.718796, 27.216080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167131, 22.834646, 27.033615>,  <26.697378, 23.356848, 26.679857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167131, 22.834646, 27.033615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.082571, 23.114769, 27.306343>,  <27.031836, 23.282843, 27.469980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.082571, 23.114769, 27.306343>,  <27.167131, 22.834646, 27.033615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082571, 23.114769, 27.306343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038411, -0.703000, 0.710152,
		0.976645, 0.123936, 0.175513,
		-0.211399, 0.700308, 0.681821,
		27.019152, 23.324862, 27.510889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667103, 22.707914, 27.442368>,  <27.167131, 22.834646, 27.033615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667103, 22.707914, 27.442368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.360126, 22.885342, 27.627529>,  <27.175940, 22.991798, 27.738626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.360126, 22.885342, 27.627529>,  <27.667103, 22.707914, 27.442368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360126, 22.885342, 27.627529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018289, -0.706586, 0.707391,
		0.640857, 0.551348, 0.534151,
		-0.767442, 0.443568, 0.462904,
		27.129894, 23.018412, 27.766399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801922, 22.731016, 28.149900>,  <27.667103, 22.707914, 27.442368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801922, 22.731016, 28.149900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.404705, 22.777863, 28.144958>,  <27.166374, 22.805969, 28.141993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.404705, 22.777863, 28.144958>,  <27.801922, 22.731016, 28.149900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404705, 22.777863, 28.144958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087639, -0.664857, 0.741812,
		0.078663, 0.737733, 0.670494,
		-0.993042, 0.117114, -0.012355,
		27.106792, 22.812996, 28.141253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609711, 22.863087, 28.865437>,  <27.801922, 22.731016, 28.149900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609711, 22.863087, 28.865437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.280010, 22.748634, 28.669994>,  <27.082190, 22.679962, 28.552729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.280010, 22.748634, 28.669994>,  <27.609711, 22.863087, 28.865437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280010, 22.748634, 28.669994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235597, -0.611371, 0.755460,
		-0.514882, 0.737804, 0.436512,
		-0.824252, -0.286132, -0.488608,
		27.032734, 22.662794, 28.523413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188940, 22.702198, 29.425449>,  <27.609711, 22.863087, 28.865437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188940, 22.702198, 29.425449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.992619, 22.544712, 29.114555>,  <26.874825, 22.450220, 28.928019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.992619, 22.544712, 29.114555>,  <27.188940, 22.702198, 29.425449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992619, 22.544712, 29.114555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377260, -0.708075, 0.596912,
		-0.785356, 0.586188, 0.198994,
		-0.490805, -0.393717, -0.777237,
		26.845377, 22.426598, 28.881384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570778, 22.476665, 29.788326>,  <27.188940, 22.702198, 29.425449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570778, 22.476665, 29.788326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.609974, 22.300636, 29.431286>,  <26.633492, 22.195019, 29.217062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.609974, 22.300636, 29.431286>,  <26.570778, 22.476665, 29.788326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609974, 22.300636, 29.431286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382156, -0.844791, 0.374547,
		-0.918888, 0.304411, -0.250957,
		0.097990, -0.440071, -0.892600,
		26.639372, 22.168615, 29.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045290, 22.003311, 29.807592>,  <26.570778, 22.476665, 29.788326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045290, 22.003311, 29.807592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.268694, 21.877438, 29.500595>,  <26.402737, 21.801914, 29.316397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.268694, 21.877438, 29.500595>,  <26.045290, 22.003311, 29.807592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268694, 21.877438, 29.500595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156691, -0.948614, 0.274919,
		-0.814565, -0.033285, -0.579117,
		0.558508, -0.314682, -0.767492,
		26.436247, 21.783033, 29.270348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653595, 21.520878, 29.379635>,  <26.045290, 22.003311, 29.807592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653595, 21.520878, 29.379635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.044018, 21.438869, 29.350582>,  <26.278273, 21.389664, 29.333151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.044018, 21.438869, 29.350582>,  <25.653595, 21.520878, 29.379635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044018, 21.438869, 29.350582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181285, -0.951337, 0.249184,
		-0.120186, -0.230051, -0.965729,
		0.976059, -0.205020, -0.072632,
		26.336836, 21.377363, 29.328793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049112, 21.145296, 28.707056>,  <25.653595, 21.520878, 29.379635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049112, 21.145296, 28.707056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.243710, 21.074806, 29.049347>,  <26.360468, 21.032513, 29.254721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.243710, 21.074806, 29.049347>,  <26.049112, 21.145296, 28.707056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243710, 21.074806, 29.049347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031494, -0.975273, -0.218748,
		0.873117, 0.133369, -0.468913,
		0.486492, -0.176225, 0.855728,
		26.389658, 21.021938, 29.306065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249395, 20.411188, 28.577646>,  <26.049112, 21.145296, 28.707056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249395, 20.411188, 28.577646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.387829, 20.474167, 28.947605>,  <26.470888, 20.511953, 29.169580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.387829, 20.474167, 28.947605>,  <26.249395, 20.411188, 28.577646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387829, 20.474167, 28.947605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105129, -0.986118, 0.128531,
		0.932295, 0.052751, -0.357831,
		0.346083, 0.157447, 0.924898,
		26.491653, 20.521400, 29.225075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682100, 19.800667, 28.655493>,  <26.249395, 20.411188, 28.577646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682100, 19.800667, 28.655493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.609955, 19.941414, 29.022896>,  <26.566668, 20.025862, 29.243338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.609955, 19.941414, 29.022896>,  <26.682100, 19.800667, 28.655493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609955, 19.941414, 29.022896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115660, -0.934932, 0.335446,
		0.976776, -0.045733, 0.209323,
		-0.180362, 0.351866, 0.918509,
		26.555845, 20.046974, 29.298449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174767, 19.545090, 29.275345>,  <26.682100, 19.800667, 28.655493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174767, 19.545090, 29.275345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.800825, 19.645134, 29.376141>,  <26.576460, 19.705160, 29.436619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.800825, 19.645134, 29.376141>,  <27.174767, 19.545090, 29.275345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800825, 19.645134, 29.376141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121336, -0.892081, 0.435280,
		0.333662, 0.376347, 0.864311,
		-0.934852, 0.250109, 0.251989,
		26.520370, 19.720167, 29.451736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426361, 18.885386, 29.198046>,  <27.174767, 19.545090, 29.275345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426361, 18.885386, 29.198046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.707125, 18.728165, 28.960445>,  <27.875584, 18.633833, 28.817886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.707125, 18.728165, 28.960445>,  <27.426361, 18.885386, 29.198046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707125, 18.728165, 28.960445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033109, 0.851060, -0.524024,
		0.711496, 0.348150, 0.610381,
		0.701910, -0.393050, -0.593999,
		27.917698, 18.610250, 28.782246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867208, 19.376638, 29.059731>,  <27.426361, 18.885386, 29.198046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867208, 19.376638, 29.059731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.944229, 19.118675, 28.763889>,  <27.990442, 18.963898, 28.586384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.944229, 19.118675, 28.763889>,  <27.867208, 19.376638, 29.059731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944229, 19.118675, 28.763889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193328, 0.763869, -0.615735,
		0.962054, -0.024426, 0.271763,
		0.192551, -0.644909, -0.739605,
		28.001995, 18.925203, 28.542007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485460, 19.549877, 28.760784>,  <27.867208, 19.376638, 29.059731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485460, 19.549877, 28.760784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.334713, 19.328011, 28.464050>,  <28.244265, 19.194891, 28.286011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.334713, 19.328011, 28.464050>,  <28.485460, 19.549877, 28.760784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334713, 19.328011, 28.464050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284550, 0.692831, -0.662583,
		0.881478, -0.460794, -0.103274,
		-0.376866, -0.554666, -0.741834,
		28.221653, 19.161612, 28.241501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967251, 19.644522, 28.243149>,  <28.485460, 19.549877, 28.760784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967251, 19.644522, 28.243149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.650959, 19.496471, 28.048107>,  <28.461184, 19.407642, 27.931082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.650959, 19.496471, 28.048107>,  <28.967251, 19.644522, 28.243149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650959, 19.496471, 28.048107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260478, 0.517392, -0.815142,
		0.553986, -0.771566, -0.312707,
		-0.790728, -0.370124, -0.487604,
		28.413740, 19.385433, 27.901827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215685, 19.480360, 27.564081>,  <28.967251, 19.644522, 28.243149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215685, 19.480360, 27.564081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.819418, 19.532143, 27.547024>,  <28.581657, 19.563211, 27.536789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.819418, 19.532143, 27.547024>,  <29.215685, 19.480360, 27.564081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819418, 19.532143, 27.547024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114306, 0.618714, -0.777256,
		-0.074236, -0.774877, -0.627738,
		-0.990668, 0.129455, -0.042643,
		28.522217, 19.570978, 27.534231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004227, 19.197075, 26.958221>,  <29.215685, 19.480360, 27.564081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004227, 19.197075, 26.958221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.726543, 19.455284, 27.085579>,  <28.559933, 19.610210, 27.161993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.726543, 19.455284, 27.085579>,  <29.004227, 19.197075, 26.958221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726543, 19.455284, 27.085579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107445, 0.530334, -0.840952,
		-0.711710, -0.549586, -0.437521,
		-0.694208, 0.645524, 0.318394,
		28.518282, 19.648941, 27.181097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682922, 19.505678, 26.385450>,  <29.004227, 19.197075, 26.958221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682922, 19.505678, 26.385450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.563181, 19.778553, 26.652287>,  <28.491337, 19.942278, 26.812389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.563181, 19.778553, 26.652287>,  <28.682922, 19.505678, 26.385450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563181, 19.778553, 26.652287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028451, 0.705224, -0.708414,
		-0.953718, -0.193086, -0.230519,
		-0.299353, 0.682185, 0.667091,
		28.473375, 19.983208, 26.852413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084709, 19.800903, 26.160748>,  <28.682922, 19.505678, 26.385450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084709, 19.800903, 26.160748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.249851, 20.064713, 26.412010>,  <28.348936, 20.222998, 26.562767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.249851, 20.064713, 26.412010>,  <28.084709, 19.800903, 26.160748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249851, 20.064713, 26.412010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110075, 0.720752, -0.684398,
		-0.904122, 0.213411, 0.370162,
		0.412853, 0.659524, 0.628156,
		28.373707, 20.262569, 26.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732038, 20.489214, 26.124603>,  <28.084709, 19.800903, 26.160748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732038, 20.489214, 26.124603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.085939, 20.593361, 26.279224>,  <28.298279, 20.655849, 26.371998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.085939, 20.593361, 26.279224>,  <27.732038, 20.489214, 26.124603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085939, 20.593361, 26.279224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064234, 0.753365, -0.654458,
		-0.461616, 0.603862, 0.649816,
		0.884751, 0.260368, 0.386553,
		28.351364, 20.671471, 26.395191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714529, 21.215076, 26.096363>,  <27.732038, 20.489214, 26.124603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714529, 21.215076, 26.096363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.104635, 21.130524, 26.122223>,  <28.338699, 21.079792, 26.137739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.104635, 21.130524, 26.122223>,  <27.714529, 21.215076, 26.096363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104635, 21.130524, 26.122223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198773, 0.710705, -0.674824,
		0.096698, 0.670982, 0.735141,
		0.975263, -0.211381, 0.064649,
		28.397215, 21.067110, 26.141617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075266, 21.832083, 26.235771>,  <27.714529, 21.215076, 26.096363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075266, 21.832083, 26.235771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.357077, 21.604790, 26.065712>,  <28.526163, 21.468414, 25.963676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.357077, 21.604790, 26.065712>,  <28.075266, 21.832083, 26.235771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357077, 21.604790, 26.065712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269491, 0.768413, -0.580445,
		0.656518, 0.294365, 0.694502,
		0.704527, -0.568234, -0.425149,
		28.568436, 21.434319, 25.938168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443933, 22.399683, 26.098646>,  <28.075266, 21.832083, 26.235771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443933, 22.399683, 26.098646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.595953, 22.084362, 25.905094>,  <28.687164, 21.895170, 25.788963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.595953, 22.084362, 25.905094>,  <28.443933, 22.399683, 26.098646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595953, 22.084362, 25.905094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460662, 0.614953, -0.640019,
		0.802092, 0.020334, 0.596854,
		0.380051, -0.788302, -0.483882,
		28.709969, 21.847872, 25.759930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087181, 22.639278, 25.910200>,  <28.443933, 22.399683, 26.098646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087181, 22.639278, 25.910200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.022272, 22.326336, 25.669670>,  <28.983328, 22.138571, 25.525352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.022272, 22.326336, 25.669670>,  <29.087181, 22.639278, 25.910200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022272, 22.326336, 25.669670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325442, 0.532869, -0.781113,
		0.931534, -0.322448, 0.168142,
		-0.162271, -0.782354, -0.601324,
		28.973591, 22.091629, 25.489273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734337, 22.520834, 25.602514>,  <29.087181, 22.639278, 25.910200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734337, 22.520834, 25.602514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.447245, 22.392952, 25.355080>,  <29.274988, 22.316223, 25.206619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.447245, 22.392952, 25.355080>,  <29.734337, 22.520834, 25.602514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447245, 22.392952, 25.355080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289184, 0.671273, -0.682470,
		0.633429, -0.668716, -0.389341,
		-0.717732, -0.319705, -0.618586,
		29.231926, 22.297041, 25.169504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442043, 22.265577, 25.467695>,  <29.734337, 22.520834, 25.602514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442043, 22.265577, 25.467695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730091, 22.471542, 25.653725>,  <30.902920, 22.595121, 25.765343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.730091, 22.471542, 25.653725>,  <30.442043, 22.265577, 25.467695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730091, 22.471542, 25.653725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024924, -0.650651, 0.758968,
		0.693404, -0.558138, -0.455711,
		0.720118, 0.514913, 0.465075,
		30.946127, 22.626017, 25.793247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906708, 21.829374, 25.614071>,  <30.442043, 22.265577, 25.467695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906708, 21.829374, 25.614071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.967367, 22.099850, 25.902451>,  <31.003763, 22.262135, 26.075480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.967367, 22.099850, 25.902451>,  <30.906708, 21.829374, 25.614071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967367, 22.099850, 25.902451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062197, -0.734468, 0.675787,
		0.986476, -0.057642, -0.153438,
		0.151649, 0.676190, 0.720950,
		31.012861, 22.302708, 26.118736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376762, 21.467865, 25.942402>,  <30.906708, 21.829374, 25.614071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376762, 21.467865, 25.942402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268255, 21.754780, 26.199123>,  <31.203150, 21.926929, 26.353157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268255, 21.754780, 26.199123>,  <31.376762, 21.467865, 25.942402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268255, 21.754780, 26.199123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037330, -0.658464, 0.751686,
		0.961779, 0.227868, 0.151844,
		-0.271269, 0.717288, 0.641803,
		31.186874, 21.969967, 26.391665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839687, 21.437542, 26.576515>,  <31.376762, 21.467865, 25.942402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839687, 21.437542, 26.576515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524164, 21.641285, 26.714115>,  <31.334850, 21.763531, 26.796675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.524164, 21.641285, 26.714115>,  <31.839687, 21.437542, 26.576515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524164, 21.641285, 26.714115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082203, -0.467219, 0.880312,
		0.609118, 0.722675, 0.326676,
		-0.788808, 0.509360, 0.343998,
		31.287521, 21.794092, 26.817314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076923, 21.713964, 27.191233>,  <31.839687, 21.437542, 26.576515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076923, 21.713964, 27.191233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678183, 21.728630, 27.219345>,  <31.438938, 21.737429, 27.236212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678183, 21.728630, 27.219345>,  <32.076923, 21.713964, 27.191233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678183, 21.728630, 27.219345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042156, -0.505629, 0.861720,
		0.067128, 0.861971, 0.502493,
		-0.996853, 0.036662, 0.070279,
		31.379128, 21.739630, 27.240429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911175, 21.877546, 27.827032>,  <32.076923, 21.713964, 27.191233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911175, 21.877546, 27.827032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573084, 21.709175, 27.695328>,  <31.370230, 21.608152, 27.616306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573084, 21.709175, 27.695328>,  <31.911175, 21.877546, 27.827032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573084, 21.709175, 27.695328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094868, -0.488153, 0.867587,
		-0.525920, 0.764544, 0.372667,
		-0.845227, -0.420927, -0.329260,
		31.319515, 21.582897, 27.596550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452412, 21.775015, 28.426886>,  <31.911175, 21.877546, 27.827032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452412, 21.775015, 28.426886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.292067, 21.539467, 28.146160>,  <31.195860, 21.398138, 27.977726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.292067, 21.539467, 28.146160>,  <31.452412, 21.775015, 28.426886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292067, 21.539467, 28.146160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129317, -0.722014, 0.679686,
		-0.906965, 0.363218, 0.213279,
		-0.400865, -0.588870, -0.701812,
		31.171806, 21.362806, 27.935617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468847, 22.168156, 28.953913>,  <31.452412, 21.775015, 28.426886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468847, 22.168156, 28.953913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802782, 22.194454, 29.172535>,  <32.003143, 22.210234, 29.303709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802782, 22.194454, 29.172535>,  <31.468847, 22.168156, 28.953913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802782, 22.194454, 29.172535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234479, 0.855806, -0.461103,
		-0.498061, 0.513102, 0.699043,
		0.834838, 0.065747, 0.546556,
		32.053234, 22.214178, 29.336502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494240, 22.840990, 29.253271>,  <31.468847, 22.168156, 28.953913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494240, 22.840990, 29.253271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872816, 22.713150, 29.234905>,  <32.099960, 22.636446, 29.223886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872816, 22.713150, 29.234905>,  <31.494240, 22.840990, 29.253271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872816, 22.713150, 29.234905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278271, 0.879510, -0.386041,
		0.163761, 0.352588, 0.921338,
		0.946440, -0.319600, -0.045914,
		32.156750, 22.617270, 29.221130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954124, 23.364470, 29.655590>,  <31.494240, 22.840990, 29.253271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954124, 23.364470, 29.655590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.201542, 23.159687, 29.417160>,  <32.349991, 23.036818, 29.274103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.201542, 23.159687, 29.417160>,  <31.954124, 23.364470, 29.655590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201542, 23.159687, 29.417160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399603, 0.858135, -0.322369,
		0.676551, -0.038793, 0.735373,
		0.618544, -0.511956, -0.596074,
		32.387104, 23.006100, 29.238338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539162, 23.679640, 29.758238>,  <31.954124, 23.364470, 29.655590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539162, 23.679640, 29.758238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589745, 23.492138, 29.408546>,  <32.620094, 23.379637, 29.198730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589745, 23.492138, 29.408546>,  <32.539162, 23.679640, 29.758238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589745, 23.492138, 29.408546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518866, 0.782386, -0.344456,
		0.845451, -0.410052, 0.342156,
		0.126453, -0.468754, -0.874231,
		32.627682, 23.351511, 29.146276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183651, 23.807341, 29.624458>,  <32.539162, 23.679640, 29.758238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183651, 23.807341, 29.624458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040222, 23.685429, 29.271519>,  <32.954166, 23.612282, 29.059755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040222, 23.685429, 29.271519>,  <33.183651, 23.807341, 29.624458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040222, 23.685429, 29.271519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441227, 0.777620, -0.447913,
		0.822647, -0.549923, -0.144352,
		-0.358568, -0.304783, -0.882347,
		32.932652, 23.593994, 29.006815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800713, 23.781450, 29.109167>,  <33.183651, 23.807341, 29.624458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800713, 23.781450, 29.109167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484272, 23.756550, 28.865765>,  <33.294407, 23.741610, 28.719723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484272, 23.756550, 28.865765>,  <33.800713, 23.781450, 29.109167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484272, 23.756550, 28.865765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434508, 0.643001, -0.630676,
		0.430531, -0.763331, -0.481632,
		-0.791104, -0.062252, -0.608505,
		33.246941, 23.737873, 28.683212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167477, 23.740211, 28.487497>,  <33.800713, 23.781450, 29.109167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167477, 23.740211, 28.487497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795219, 23.861843, 28.406078>,  <33.571865, 23.934822, 28.357227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795219, 23.861843, 28.406078>,  <34.167477, 23.740211, 28.487497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795219, 23.861843, 28.406078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354187, 0.608856, -0.709821,
		-0.091909, -0.732688, -0.674331,
		-0.930647, 0.304078, -0.203549,
		33.516026, 23.953066, 28.345013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.938986, 20.929283, 31.761589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.745117, 21.000439, 31.419022>,  <27.628796, 21.043131, 31.213482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.745117, 21.000439, 31.419022>,  <27.938986, 20.929283, 31.761589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745117, 21.000439, 31.419022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437981, 0.896873, -0.061576,
		0.757145, -0.404939, -0.512598,
		-0.484670, 0.177887, -0.856418,
		27.599716, 21.053804, 31.162096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518965, 21.184319, 31.288799>,  <27.938986, 20.929283, 31.761589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518965, 21.184319, 31.288799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.156044, 21.300064, 31.166771>,  <27.938292, 21.369511, 31.093554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.156044, 21.300064, 31.166771>,  <28.518965, 21.184319, 31.288799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156044, 21.300064, 31.166771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367564, 0.898164, -0.241244,
		0.204196, -0.331015, -0.921267,
		-0.907304, 0.289364, -0.305070,
		27.883852, 21.386873, 31.075251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612387, 21.414495, 30.638443>,  <28.518965, 21.184319, 31.288799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612387, 21.414495, 30.638443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.288931, 21.601341, 30.781498>,  <28.094856, 21.713449, 30.867331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.288931, 21.601341, 30.781498>,  <28.612387, 21.414495, 30.638443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288931, 21.601341, 30.781498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416724, 0.883908, -0.212246,
		-0.415260, -0.022595, -0.909422,
		-0.808641, 0.467115, 0.357635,
		28.046339, 21.741476, 30.888788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368759, 21.886520, 30.090790>,  <28.612387, 21.414495, 30.638443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368759, 21.886520, 30.090790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.206398, 22.046097, 30.419689>,  <28.108982, 22.141842, 30.617029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.206398, 22.046097, 30.419689>,  <28.368759, 21.886520, 30.090790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206398, 22.046097, 30.419689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223683, 0.915698, -0.333860,
		-0.886120, 0.048408, -0.460921,
		-0.405903, 0.398940, 0.822247,
		28.084627, 22.165779, 30.666363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122782, 22.429161, 29.879301>,  <28.368759, 21.886520, 30.090790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122782, 22.429161, 29.879301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.120314, 22.508999, 30.271244>,  <28.118834, 22.556902, 30.506411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.120314, 22.508999, 30.271244>,  <28.122782, 22.429161, 29.879301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120314, 22.508999, 30.271244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213356, 0.957578, -0.193711,
		-0.976955, 0.207864, -0.048494,
		-0.006171, 0.199594, 0.979859,
		28.118462, 22.568876, 30.565203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713596, 22.958681, 29.893599>,  <28.122782, 22.429161, 29.879301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713596, 22.958681, 29.893599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.930014, 22.966747, 30.229900>,  <28.059864, 22.971586, 30.431681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.930014, 22.966747, 30.229900>,  <27.713596, 22.958681, 29.893599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930014, 22.966747, 30.229900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217441, 0.962366, -0.163008,
		-0.812399, 0.271009, 0.516297,
		0.541043, 0.020163, 0.840753,
		28.092327, 22.972795, 30.482126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597992, 23.615019, 30.154406>,  <27.713596, 22.958681, 29.893599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597992, 23.615019, 30.154406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.945271, 23.496040, 30.313282>,  <28.153637, 23.424652, 30.408607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.945271, 23.496040, 30.313282>,  <27.597992, 23.615019, 30.154406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945271, 23.496040, 30.313282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366781, 0.923790, -0.109922,
		-0.334223, 0.241115, 0.911130,
		0.868197, -0.297447, 0.397189,
		28.205730, 23.406807, 30.432438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731831, 24.153011, 30.610245>,  <27.597992, 23.615019, 30.154406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731831, 24.153011, 30.610245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.085947, 23.972885, 30.563812>,  <28.298416, 23.864809, 30.535954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.085947, 23.972885, 30.563812>,  <27.731831, 24.153011, 30.610245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085947, 23.972885, 30.563812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440129, 0.891946, -0.103530,
		0.150157, 0.040564, 0.987830,
		0.885291, -0.450318, -0.116079,
		28.351534, 23.837790, 30.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307356, 24.553459, 30.985113>,  <27.731831, 24.153011, 30.610245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307356, 24.553459, 30.985113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.528065, 24.341991, 30.727104>,  <28.660490, 24.215111, 30.572298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.528065, 24.341991, 30.727104>,  <28.307356, 24.553459, 30.985113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528065, 24.341991, 30.727104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554918, 0.810089, -0.189268,
		0.622586, -0.253501, 0.740354,
		0.551773, -0.528672, -0.645022,
		28.693596, 24.183390, 30.533598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942820, 24.788567, 31.168262>,  <28.307356, 24.553459, 30.985113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942820, 24.788567, 31.168262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.993233, 24.625027, 30.806721>,  <29.023479, 24.526903, 30.589796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.993233, 24.625027, 30.806721>,  <28.942820, 24.788567, 31.168262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993233, 24.625027, 30.806721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563203, 0.779538, -0.274085,
		0.816650, -0.474512, 0.328513,
		0.126032, -0.408851, -0.903856,
		29.031042, 24.502371, 30.535564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642639, 24.832455, 30.958012>,  <28.942820, 24.788567, 31.168262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642639, 24.832455, 30.958012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.429752, 24.809563, 30.620144>,  <29.302019, 24.795828, 30.417423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.429752, 24.809563, 30.620144>,  <29.642639, 24.832455, 30.958012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429752, 24.809563, 30.620144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400350, 0.862093, -0.310669,
		0.745965, -0.503507, -0.435910,
		-0.532219, -0.057232, -0.844670,
		29.270086, 24.792393, 30.366743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102215, 25.153034, 30.497751>,  <29.642639, 24.832455, 30.958012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102215, 25.153034, 30.497751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742416, 25.153164, 30.322979>,  <29.526537, 25.153242, 30.218117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742416, 25.153164, 30.322979>,  <30.102215, 25.153034, 30.497751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742416, 25.153164, 30.322979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191508, 0.899120, -0.393584,
		0.392723, -0.437703, -0.808817,
		-0.899496, 0.000325, -0.436929,
		29.472569, 25.153261, 30.191900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568657, 24.992813, 29.967857>,  <30.102215, 25.153034, 30.497751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568657, 24.992813, 29.967857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846594, 25.110493, 30.230350>,  <31.013357, 25.181101, 30.387846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846594, 25.110493, 30.230350>,  <30.568657, 24.992813, 29.967857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846594, 25.110493, 30.230350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010421, -0.916520, 0.399854,
		0.719085, -0.270998, -0.639904,
		0.694844, 0.294197, 0.656232,
		31.055046, 25.198751, 30.427219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742071, 24.330511, 30.114033>,  <30.568657, 24.992813, 29.967857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742071, 24.330511, 30.114033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.927816, 24.565964, 30.378723>,  <31.039263, 24.707235, 30.537537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.927816, 24.565964, 30.378723>,  <30.742071, 24.330511, 30.114033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927816, 24.565964, 30.378723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215103, -0.799755, 0.560466,
		0.859127, -0.117919, -0.497991,
		0.464361, 0.588631, 0.661727,
		31.067125, 24.742554, 30.577242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380156, 24.014811, 30.227709>,  <30.742071, 24.330511, 30.114033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380156, 24.014811, 30.227709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.295717, 24.239883, 30.547417>,  <31.245054, 24.374928, 30.739241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.295717, 24.239883, 30.547417>,  <31.380156, 24.014811, 30.227709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295717, 24.239883, 30.547417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190968, -0.778196, 0.598283,
		0.958629, 0.278930, 0.056821,
		-0.211097, 0.562680, 0.799268,
		31.232388, 24.408688, 30.787197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774021, 23.807621, 30.786337>,  <31.380156, 24.014811, 30.227709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774021, 23.807621, 30.786337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.504503, 24.014118, 30.997807>,  <31.342793, 24.138018, 31.124687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.504503, 24.014118, 30.997807>,  <31.774021, 23.807621, 30.786337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504503, 24.014118, 30.997807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024232, -0.699644, 0.714080,
		0.738523, 0.493953, 0.458906,
		-0.673793, 0.516244, 0.528673,
		31.302366, 24.168991, 31.156408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991678, 23.827927, 31.610954>,  <31.774021, 23.807621, 30.786337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991678, 23.827927, 31.610954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.596176, 23.877460, 31.577423>,  <31.358875, 23.907181, 31.557304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.596176, 23.877460, 31.577423>,  <31.991678, 23.827927, 31.610954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596176, 23.877460, 31.577423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148390, -0.743097, 0.652524,
		0.018512, 0.657626, 0.753117,
		-0.988756, 0.123835, -0.083829,
		31.299549, 23.914610, 31.552275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690042, 24.046543, 32.306042>,  <31.991678, 23.827927, 31.610954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690042, 24.046543, 32.306042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.412043, 23.866791, 32.081528>,  <31.245243, 23.758940, 31.946821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.412043, 23.866791, 32.081528>,  <31.690042, 24.046543, 32.306042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412043, 23.866791, 32.081528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040671, -0.754808, 0.654684,
		-0.717860, 0.477832, 0.506314,
		-0.694999, -0.449379, -0.561280,
		31.203543, 23.731977, 31.913143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343077, 23.767956, 32.776310>,  <31.690042, 24.046543, 32.306042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343077, 23.767956, 32.776310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.218157, 23.556671, 32.460472>,  <31.143204, 23.429901, 32.270969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.218157, 23.556671, 32.460472>,  <31.343077, 23.767956, 32.776310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218157, 23.556671, 32.460472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135559, -0.797884, 0.587371,
		-0.940261, 0.290474, 0.177577,
		-0.312302, -0.528210, -0.789596,
		31.124466, 23.398209, 32.223595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988848, 23.151049, 33.119312>,  <31.343077, 23.767956, 32.776310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988848, 23.151049, 33.119312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.008320, 23.073608, 32.727364>,  <31.020002, 23.027145, 32.492195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.008320, 23.073608, 32.727364>,  <30.988848, 23.151049, 33.119312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008320, 23.073608, 32.727364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116732, -0.975415, 0.186920,
		-0.991970, 0.105284, -0.070082,
		0.048680, -0.193600, -0.979872,
		31.022924, 23.015528, 32.433403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424765, 22.840809, 32.837334>,  <30.988848, 23.151049, 33.119312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424765, 22.840809, 32.837334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741192, 22.731964, 32.618183>,  <30.931047, 22.666656, 32.486694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741192, 22.731964, 32.618183>,  <30.424765, 22.840809, 32.837334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741192, 22.731964, 32.618183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165256, -0.957379, 0.236888,
		-0.588985, -0.096855, -0.802320,
		0.791068, -0.272112, -0.547876,
		30.978512, 22.650331, 32.453819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146688, 22.309748, 32.450306>,  <30.424765, 22.840809, 32.837334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146688, 22.309748, 32.450306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.544540, 22.269066, 32.457962>,  <30.783253, 22.244658, 32.462555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.544540, 22.269066, 32.457962>,  <30.146688, 22.309748, 32.450306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544540, 22.269066, 32.457962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103371, -0.967559, 0.230532,
		-0.004925, -0.231273, -0.972876,
		0.994631, -0.101703, 0.019142,
		30.842930, 22.238556, 32.463703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276690, 21.746908, 32.025459>,  <30.146688, 22.309748, 32.450306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276690, 21.746908, 32.025459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.633434, 21.749695, 32.206360>,  <30.847481, 21.751366, 32.314899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.633434, 21.749695, 32.206360>,  <30.276690, 21.746908, 32.025459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633434, 21.749695, 32.206360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191136, -0.900412, 0.390801,
		0.409933, -0.434983, -0.801714,
		0.891864, 0.006966, 0.452250,
		30.900993, 21.751785, 32.342033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604210, 21.053991, 31.930204>,  <30.276690, 21.746908, 32.025459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604210, 21.053991, 31.930204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.831089, 21.176849, 32.235870>,  <30.967216, 21.250565, 32.419270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.831089, 21.176849, 32.235870>,  <30.604210, 21.053991, 31.930204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831089, 21.176849, 32.235870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001835, -0.928324, 0.371769,
		0.823578, -0.209465, -0.527108,
		0.567200, 0.307147, 0.764163,
		31.001249, 21.268993, 32.465118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131395, 20.636763, 31.956966>,  <30.604210, 21.053991, 31.930204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131395, 20.636763, 31.956966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115747, 20.794731, 32.324120>,  <31.106359, 20.889513, 32.544411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115747, 20.794731, 32.324120>,  <31.131395, 20.636763, 31.956966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115747, 20.794731, 32.324120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086539, -0.913794, 0.396852,
		0.995480, 0.094957, 0.001569,
		-0.039118, 0.394922, 0.917881,
		31.104012, 20.913208, 32.599483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668390, 20.426413, 32.419193>,  <31.131395, 20.636763, 31.956966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668390, 20.426413, 32.419193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.355055, 20.501480, 32.656231>,  <31.167053, 20.546520, 32.798454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.355055, 20.501480, 32.656231>,  <31.668390, 20.426413, 32.419193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355055, 20.501480, 32.656231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205717, -0.821345, 0.532045,
		0.586570, 0.538677, 0.604783,
		-0.783337, 0.187667, 0.592592,
		31.120054, 20.557781, 32.834007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957853, 20.986980, 32.097645>,  <31.668390, 20.426413, 32.419193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957853, 20.986980, 32.097645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.072067, 20.739567, 31.804829>,  <32.140594, 20.591118, 31.629139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.072067, 20.739567, 31.804829>,  <31.957853, 20.986980, 32.097645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072067, 20.739567, 31.804829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040911, 0.755278, -0.654127,
		0.957495, 0.216723, 0.190351,
		0.285533, -0.618536, -0.732041,
		32.157726, 20.554007, 31.585217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615791, 21.279018, 31.764036>,  <31.957853, 20.986980, 32.097645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615791, 21.279018, 31.764036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.394142, 21.041901, 31.530270>,  <32.261150, 20.899630, 31.390009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.394142, 21.041901, 31.530270>,  <32.615791, 21.279018, 31.764036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394142, 21.041901, 31.530270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015560, 0.694559, -0.719268,
		0.832289, -0.407657, -0.375648,
		-0.554124, -0.592793, -0.584416,
		32.227905, 20.864063, 31.354944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938904, 21.348204, 31.099178>,  <32.615791, 21.279018, 31.764036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938904, 21.348204, 31.099178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.589996, 21.164028, 31.033276>,  <32.380653, 21.053524, 30.993734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.589996, 21.164028, 31.033276>,  <32.938904, 21.348204, 31.099178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589996, 21.164028, 31.033276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008890, 0.351778, -0.936041,
		0.488946, -0.815015, -0.310939,
		-0.872269, -0.460437, -0.164755,
		32.328316, 21.025896, 30.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005310, 21.045135, 30.503580>,  <32.938904, 21.348204, 31.099178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005310, 21.045135, 30.503580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.615921, 21.124763, 30.548698>,  <32.382286, 21.172541, 30.575769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.615921, 21.124763, 30.548698>,  <33.005310, 21.045135, 30.503580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615921, 21.124763, 30.548698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001976, 0.500281, -0.865861,
		-0.228798, -0.842669, -0.487403,
		-0.973472, 0.199070, 0.112798,
		32.323879, 21.184484, 30.582539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787853, 20.872080, 29.872967>,  <33.005310, 21.045135, 30.503580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787853, 20.872080, 29.872967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482254, 21.075024, 30.032410>,  <32.298893, 21.196791, 30.128075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482254, 21.075024, 30.032410>,  <32.787853, 20.872080, 29.872967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482254, 21.075024, 30.032410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185287, 0.419245, -0.888764,
		-0.618037, -0.752875, -0.226297,
		-0.764002, 0.507359, 0.398607,
		32.253052, 21.227232, 30.151991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298386, 20.912111, 29.407366>,  <32.787853, 20.872080, 29.872967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298386, 20.912111, 29.407366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.223907, 21.220993, 29.650356>,  <32.179222, 21.406322, 29.796150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.223907, 21.220993, 29.650356>,  <32.298386, 20.912111, 29.407366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223907, 21.220993, 29.650356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129549, 0.593595, -0.794268,
		-0.973934, -0.226588, -0.010486,
		-0.186196, 0.772206, 0.607477,
		32.168049, 21.452656, 29.832600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707474, 21.360376, 29.105335>,  <32.298386, 20.912111, 29.407366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707474, 21.360376, 29.105335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.928225, 21.578014, 29.358124>,  <32.060677, 21.708597, 29.509796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.928225, 21.578014, 29.358124>,  <31.707474, 21.360376, 29.105335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928225, 21.578014, 29.358124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139557, 0.807400, -0.573262,
		-0.822164, 0.228175, 0.521519,
		0.551878, 0.544097, 0.631972,
		32.093788, 21.741243, 29.547716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053776, 21.371002, 28.867847>,  <31.707474, 21.360376, 29.105335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053776, 21.371002, 28.867847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060658, 21.171627, 28.521145>,  <31.064787, 21.052002, 28.313124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.060658, 21.171627, 28.521145>,  <31.053776, 21.371002, 28.867847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060658, 21.171627, 28.521145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019948, -0.866881, 0.498116,
		-0.999653, 0.008721, -0.024857,
		0.017204, -0.498439, -0.866754,
		31.065819, 21.022095, 28.261118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457075, 20.964527, 28.722748>,  <31.053776, 21.371002, 28.867847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457075, 20.964527, 28.722748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.792402, 20.813374, 28.565559>,  <30.993599, 20.722681, 28.471247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.792402, 20.813374, 28.565559>,  <30.457075, 20.964527, 28.722748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792402, 20.813374, 28.565559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115146, -0.827273, 0.549874,
		-0.532883, -0.415720, -0.737030,
		0.838318, -0.377884, -0.392971,
		31.043898, 20.700008, 28.447668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156950, 20.398207, 28.514639>,  <30.457075, 20.964527, 28.722748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156950, 20.398207, 28.514639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551739, 20.336971, 28.534443>,  <30.788612, 20.300230, 28.546326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551739, 20.336971, 28.534443>,  <30.156950, 20.398207, 28.514639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551739, 20.336971, 28.534443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154279, -0.813135, 0.561257,
		-0.045662, -0.561584, -0.826159,
		0.986972, -0.153087, 0.049511,
		30.847830, 20.291044, 28.549295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279718, 19.729357, 28.285950>,  <30.156950, 20.398207, 28.514639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279718, 19.729357, 28.285950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623819, 19.784470, 28.482307>,  <30.830280, 19.817537, 28.600122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623819, 19.784470, 28.482307>,  <30.279718, 19.729357, 28.285950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623819, 19.784470, 28.482307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251306, -0.723143, 0.643358,
		0.443631, -0.676817, -0.587461,
		0.860254, 0.137781, 0.490897,
		30.881895, 19.825804, 28.629576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703381, 19.084478, 28.182213>,  <30.279718, 19.729357, 28.285950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703381, 19.084478, 28.182213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814142, 19.273094, 28.517109>,  <30.880600, 19.386265, 28.718046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814142, 19.273094, 28.517109>,  <30.703381, 19.084478, 28.182213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814142, 19.273094, 28.517109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272735, -0.796909, 0.539028,
		0.921379, -0.377604, -0.092062,
		0.276904, 0.471541, 0.837241,
		30.897213, 19.414557, 28.768282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089880, 18.573160, 28.576288>,  <30.703381, 19.084478, 28.182213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089880, 18.573160, 28.576288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.030819, 18.845837, 28.862923>,  <30.995382, 19.009443, 29.034903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.030819, 18.845837, 28.862923>,  <31.089880, 18.573160, 28.576288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030819, 18.845837, 28.862923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332901, -0.716505, 0.613023,
		0.931330, -0.148037, 0.332731,
		-0.147653, 0.681693, 0.716584,
		30.986523, 19.050344, 29.077898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223127, 18.186590, 29.177376>,  <31.089880, 18.573160, 28.576288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223127, 18.186590, 29.177376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.999668, 18.492756, 29.305157>,  <30.865593, 18.676456, 29.381826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.999668, 18.492756, 29.305157>,  <31.223127, 18.186590, 29.177376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999668, 18.492756, 29.305157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510424, -0.620861, 0.594978,
		0.653742, 0.169327, 0.737530,
		-0.558649, 0.765415, 0.319454,
		30.832073, 18.722380, 29.400993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024054, 17.942747, 29.807106>,  <31.223127, 18.186590, 29.177376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024054, 17.942747, 29.807106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.760098, 18.236935, 29.745617>,  <30.601723, 18.413446, 29.708723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.760098, 18.236935, 29.745617>,  <31.024054, 17.942747, 29.807106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760098, 18.236935, 29.745617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675480, -0.491102, 0.550042,
		0.329045, 0.466804, 0.820868,
		-0.659891, 0.735468, -0.153722,
		30.562130, 18.457575, 29.699501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800508, 18.192829, 30.415684>,  <31.024054, 17.942747, 29.807106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800508, 18.192829, 30.415684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.504164, 18.280079, 30.161583>,  <30.326357, 18.332428, 30.009123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.504164, 18.280079, 30.161583>,  <30.800508, 18.192829, 30.415684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504164, 18.280079, 30.161583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654615, -0.446201, 0.610233,
		-0.150344, 0.867944, 0.473361,
		-0.740862, 0.218125, -0.635253,
		30.281906, 18.345516, 29.971006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.405411, 31.957733, 21.132032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095207, 31.731449, 21.019920>,  <30.909084, 31.595678, 20.952654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095207, 31.731449, 21.019920>,  <31.405411, 31.957733, 21.132032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095207, 31.731449, 21.019920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419112, -0.793319, 0.441577,
		-0.472156, 0.224979, 0.852322,
		-0.775509, -0.565712, -0.280279,
		30.862555, 31.561735, 20.935837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172626, 31.597206, 21.711479>,  <31.405411, 31.957733, 21.132032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172626, 31.597206, 21.711479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049551, 31.380219, 21.398800>,  <30.975706, 31.250025, 21.211193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049551, 31.380219, 21.398800>,  <31.172626, 31.597206, 21.711479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049551, 31.380219, 21.398800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372056, -0.824737, 0.425891,
		-0.875729, -0.159792, 0.455594,
		-0.307691, -0.542471, -0.781698,
		30.957243, 31.217478, 21.164291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644423, 31.116562, 21.986610>,  <31.172626, 31.597206, 21.711479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644423, 31.116562, 21.986610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766642, 30.963364, 21.637909>,  <30.839973, 30.871445, 21.428688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766642, 30.963364, 21.637909>,  <30.644423, 31.116562, 21.986610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766642, 30.963364, 21.637909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327072, -0.817614, 0.473847,
		-0.894239, -0.429910, -0.124553,
		0.305548, -0.382995, -0.871754,
		30.858307, 30.848465, 21.376383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384989, 30.466188, 22.027348>,  <30.644423, 31.116562, 21.986610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384989, 30.466188, 22.027348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649063, 30.422508, 21.730099>,  <30.807508, 30.396301, 21.551750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649063, 30.422508, 21.730099>,  <30.384989, 30.466188, 22.027348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649063, 30.422508, 21.730099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364943, -0.818106, 0.444431,
		-0.656483, -0.564604, -0.500252,
		0.660187, -0.109198, -0.743121,
		30.847118, 30.389750, 21.507162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265884, 29.759203, 21.772762>,  <30.384989, 30.466188, 22.027348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265884, 29.759203, 21.772762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626291, 29.877720, 21.646030>,  <30.842535, 29.948830, 21.569990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626291, 29.877720, 21.646030>,  <30.265884, 29.759203, 21.772762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626291, 29.877720, 21.646030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413192, -0.808582, 0.418888,
		-0.132070, -0.508337, -0.850971,
		0.901016, 0.296292, -0.316830,
		30.896597, 29.966608, 21.550982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571611, 29.162388, 21.303436>,  <30.265884, 29.759203, 21.772762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571611, 29.162388, 21.303436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858009, 29.385338, 21.471573>,  <31.029848, 29.519108, 21.572454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858009, 29.385338, 21.471573>,  <30.571611, 29.162388, 21.303436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858009, 29.385338, 21.471573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422142, -0.825236, 0.375209,
		0.556013, -0.091204, -0.826155,
		0.715993, 0.557376, 0.420341,
		31.072807, 29.552551, 21.597675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197197, 28.662237, 21.337610>,  <30.571611, 29.162388, 21.303436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197197, 28.662237, 21.337610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295271, 28.979015, 21.561291>,  <31.354115, 29.169083, 21.695499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295271, 28.979015, 21.561291>,  <31.197197, 28.662237, 21.337610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295271, 28.979015, 21.561291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404834, -0.607746, 0.683194,
		0.880905, 0.058874, -0.469617,
		0.245185, 0.791946, 0.559201,
		31.368826, 29.216599, 21.729052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874971, 28.654142, 21.400597>,  <31.197197, 28.662237, 21.337610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874971, 28.654142, 21.400597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763861, 28.877407, 21.713337>,  <31.697193, 29.011366, 21.900982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763861, 28.877407, 21.713337>,  <31.874971, 28.654142, 21.400597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763861, 28.877407, 21.713337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479659, -0.624580, 0.616301,
		0.832326, 0.546218, -0.094233,
		-0.277779, 0.558162, 0.781853,
		31.680527, 29.044855, 21.947893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487591, 28.698475, 21.807560>,  <31.874971, 28.654142, 21.400597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487591, 28.698475, 21.807560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199371, 28.778637, 22.073086>,  <32.026440, 28.826735, 22.232401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199371, 28.778637, 22.073086>,  <32.487591, 28.698475, 21.807560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199371, 28.778637, 22.073086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370193, -0.698297, 0.612649,
		0.586319, 0.687181, 0.428967,
		-0.720547, 0.200407, 0.663814,
		31.983208, 28.838758, 22.272230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853165, 28.774778, 22.505718>,  <32.487591, 28.698475, 21.807560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853165, 28.774778, 22.505718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469723, 28.709869, 22.599308>,  <32.239658, 28.670925, 22.655462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469723, 28.709869, 22.599308>,  <32.853165, 28.774778, 22.505718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469723, 28.709869, 22.599308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279870, -0.688240, 0.669327,
		0.052417, 0.707103, 0.705165,
		-0.958606, -0.162270, 0.233972,
		32.182140, 28.661188, 22.669500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782009, 28.773649, 23.250860>,  <32.853165, 28.774778, 22.505718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782009, 28.773649, 23.250860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462452, 28.578800, 23.109737>,  <32.270718, 28.461891, 23.025063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462452, 28.578800, 23.109737>,  <32.782009, 28.773649, 23.250860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462452, 28.578800, 23.109737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173444, -0.748241, 0.640354,
		-0.575917, 0.450384, 0.682257,
		-0.798898, -0.487124, -0.352808,
		32.222782, 28.432663, 23.003895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440750, 28.595259, 23.831177>,  <32.782009, 28.773649, 23.250860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440750, 28.595259, 23.831177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300270, 28.342293, 23.555000>,  <32.215981, 28.190514, 23.389294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300270, 28.342293, 23.555000>,  <32.440750, 28.595259, 23.831177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300270, 28.342293, 23.555000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029100, -0.744431, 0.667065,
		-0.935847, 0.214183, 0.279849,
		-0.351202, -0.632415, -0.690441,
		32.194908, 28.152569, 23.347868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762852, 28.810387, 24.459185>,  <32.440750, 28.595259, 23.831177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762852, 28.810387, 24.459185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148163, 28.727749, 24.527798>,  <33.379349, 28.678167, 24.568966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148163, 28.727749, 24.527798>,  <32.762852, 28.810387, 24.459185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148163, 28.727749, 24.527798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259276, 0.881777, -0.394012,
		-0.069853, 0.424015, 0.902957,
		0.963274, -0.206592, 0.171531,
		33.437145, 28.665771, 24.579256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076641, 29.430576, 24.619484>,  <32.762852, 28.810387, 24.459185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076641, 29.430576, 24.619484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390289, 29.207027, 24.511543>,  <33.578476, 29.072897, 24.446779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390289, 29.207027, 24.511543>,  <33.076641, 29.430576, 24.619484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390289, 29.207027, 24.511543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482398, 0.822416, -0.301535,
		0.390450, 0.106263, 0.914471,
		0.784118, -0.558874, -0.269852,
		33.625526, 29.039366, 24.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614460, 29.894302, 24.828218>,  <33.076641, 29.430576, 24.619484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614460, 29.894302, 24.828218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769352, 29.634251, 24.566719>,  <33.862286, 29.478220, 24.409821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769352, 29.634251, 24.566719>,  <33.614460, 29.894302, 24.828218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769352, 29.634251, 24.566719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586644, 0.720749, -0.369281,
		0.711269, -0.240521, 0.660489,
		0.387227, -0.650131, -0.653747,
		33.885521, 29.439211, 24.370594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330017, 29.969139, 24.965958>,  <33.614460, 29.894302, 24.828218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330017, 29.969139, 24.965958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281651, 29.832012, 24.593323>,  <34.252628, 29.749735, 24.369741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281651, 29.832012, 24.593323>,  <34.330017, 29.969139, 24.965958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281651, 29.832012, 24.593323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403967, 0.840253, -0.361644,
		0.906746, -0.420060, 0.036884,
		-0.120920, -0.342820, -0.931586,
		34.245373, 29.729166, 24.313847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967056, 30.094944, 24.651897>,  <34.330017, 29.969139, 24.965958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967056, 30.094944, 24.651897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707310, 30.057842, 24.349979>,  <34.551460, 30.035582, 24.168829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707310, 30.057842, 24.349979>,  <34.967056, 30.094944, 24.651897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707310, 30.057842, 24.349979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455215, 0.747660, -0.483512,
		0.609177, -0.657572, -0.443285,
		-0.649371, -0.092755, -0.754794,
		34.512497, 30.030016, 24.123541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442062, 30.098045, 24.045557>,  <34.967056, 30.094944, 24.651897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442062, 30.098045, 24.045557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072598, 30.165646, 23.907982>,  <34.850918, 30.206205, 23.825436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072598, 30.165646, 23.907982>,  <35.442062, 30.098045, 24.045557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072598, 30.165646, 23.907982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363595, 0.669995, -0.647229,
		0.121056, -0.722872, -0.680294,
		-0.923658, 0.169001, -0.343940,
		34.795502, 30.216347, 23.804800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621586, 30.284937, 23.324257>,  <35.442062, 30.098045, 24.045557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621586, 30.284937, 23.324257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259583, 30.446072, 23.378918>,  <35.042381, 30.542753, 23.411715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259583, 30.446072, 23.378918>,  <35.621586, 30.284937, 23.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259583, 30.446072, 23.378918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306921, 0.840798, -0.445935,
		-0.294537, -0.361636, -0.884572,
		-0.905013, 0.402838, 0.136653,
		34.988079, 30.566923, 23.419914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456886, 30.618961, 22.695137>,  <35.621586, 30.284937, 23.324257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456886, 30.618961, 22.695137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239113, 30.791195, 22.983078>,  <35.108448, 30.894535, 23.155842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239113, 30.791195, 22.983078>,  <35.456886, 30.618961, 22.695137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239113, 30.791195, 22.983078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253282, 0.902520, -0.348290,
		-0.799648, -0.007296, -0.600424,
		-0.544436, 0.430586, 0.719851,
		35.075783, 30.920370, 23.199034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128418, 31.180513, 22.372740>,  <35.456886, 30.618961, 22.695137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128418, 31.180513, 22.372740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116650, 31.282665, 22.759296>,  <35.109589, 31.343956, 22.991230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116650, 31.282665, 22.759296>,  <35.128418, 31.180513, 22.372740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116650, 31.282665, 22.759296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135744, 0.958876, -0.249259,
		-0.990307, 0.123848, -0.062882,
		-0.029425, 0.255379, 0.966393,
		35.107822, 31.359280, 23.049213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784512, 31.751022, 22.336084>,  <35.128418, 31.180513, 22.372740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784512, 31.751022, 22.336084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948044, 31.785774, 22.699471>,  <35.046162, 31.806625, 22.917501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948044, 31.785774, 22.699471>,  <34.784512, 31.751022, 22.336084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948044, 31.785774, 22.699471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185912, 0.966655, -0.176108,
		-0.893473, 0.240893, 0.379047,
		0.408831, 0.086879, 0.908466,
		35.070694, 31.811838, 22.972010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604275, 32.371479, 22.573547>,  <34.784512, 31.751022, 22.336084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604275, 32.371479, 22.573547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922070, 32.281391, 22.799137>,  <35.112747, 32.227337, 22.934490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922070, 32.281391, 22.799137>,  <34.604275, 32.371479, 22.573547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922070, 32.281391, 22.799137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367660, 0.917534, -0.151516,
		-0.483341, 0.327728, 0.811773,
		0.794486, -0.225222, 0.563975,
		35.160416, 32.213825, 22.968330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598160, 32.978931, 22.962358>,  <34.604275, 32.371479, 22.573547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598160, 32.978931, 22.962358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949638, 32.788078, 22.968525>,  <35.160526, 32.673565, 22.972225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949638, 32.788078, 22.968525>,  <34.598160, 32.978931, 22.962358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949638, 32.788078, 22.968525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471236, 0.872095, 0.131862,
		-0.076358, -0.108603, 0.991148,
		0.878696, -0.477133, 0.015414,
		35.213245, 32.644939, 22.973148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973831, 33.323349, 23.437492>,  <34.598160, 32.978931, 22.962358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973831, 33.323349, 23.437492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247105, 33.100826, 23.248272>,  <35.411068, 32.967312, 23.134741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247105, 33.100826, 23.248272>,  <34.973831, 33.323349, 23.437492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247105, 33.100826, 23.248272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626541, 0.779302, -0.011601,
		0.375103, -0.288459, 0.880959,
		0.683187, -0.556309, -0.473050,
		35.452061, 32.933933, 23.106358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580906, 33.372536, 23.803160>,  <34.973831, 33.323349, 23.437492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580906, 33.372536, 23.803160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703636, 33.291405, 23.431198>,  <35.777275, 33.242725, 23.208021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703636, 33.291405, 23.431198>,  <35.580906, 33.372536, 23.803160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703636, 33.291405, 23.431198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723695, 0.684289, 0.089526,
		0.618163, -0.700435, 0.356742,
		0.306822, -0.202831, -0.929903,
		35.795681, 33.230556, 23.152227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280983, 32.710251, 24.032354>,  <35.580906, 33.372536, 23.803160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280983, 32.710251, 24.032354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080376, 33.004093, 24.215149>,  <34.960011, 33.180401, 24.324825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080376, 33.004093, 24.215149>,  <35.280983, 32.710251, 24.032354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080376, 33.004093, 24.215149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269294, -0.634525, 0.724471,
		0.822170, 0.240269, 0.516050,
		-0.501515, 0.734608, 0.456984,
		34.929920, 33.224476, 24.352243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457546, 32.675842, 24.727198>,  <35.280983, 32.710251, 24.032354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457546, 32.675842, 24.727198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101665, 32.856014, 24.697426>,  <34.888138, 32.964115, 24.679562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101665, 32.856014, 24.697426>,  <35.457546, 32.675842, 24.727198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101665, 32.856014, 24.697426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313563, -0.484407, 0.816718,
		0.331817, 0.749977, 0.572217,
		-0.889705, 0.450427, -0.074431,
		34.834755, 32.991142, 24.675097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269497, 32.997807, 25.340296>,  <35.457546, 32.675842, 24.727198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269497, 32.997807, 25.340296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919479, 32.924858, 25.160946>,  <34.709469, 32.881088, 25.053337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919479, 32.924858, 25.160946>,  <35.269497, 32.997807, 25.340296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919479, 32.924858, 25.160946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378665, -0.319087, 0.868790,
		-0.301515, 0.930012, 0.210156,
		-0.875044, -0.182375, -0.448372,
		34.656967, 32.870144, 25.026434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803593, 33.112568, 25.860126>,  <35.269497, 32.997807, 25.340296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803593, 33.112568, 25.860126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605465, 32.904678, 25.581692>,  <34.486588, 32.779945, 25.414631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605465, 32.904678, 25.581692>,  <34.803593, 33.112568, 25.860126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605465, 32.904678, 25.581692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505802, -0.478915, 0.717499,
		-0.706271, 0.707476, -0.025662,
		-0.495323, -0.519729, -0.696087,
		34.456867, 32.748760, 25.372866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021683, 33.114471, 26.036264>,  <34.803593, 33.112568, 25.860126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021683, 33.114471, 26.036264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105648, 32.789707, 25.818371>,  <34.156025, 32.594849, 25.687635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105648, 32.789707, 25.818371>,  <34.021683, 33.114471, 26.036264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105648, 32.789707, 25.818371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524562, -0.563692, 0.638033,
		-0.825090, 0.151817, -0.544223,
		0.209910, -0.811913, -0.544734,
		34.168621, 32.546135, 25.654951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348118, 32.746151, 25.931837>,  <34.021683, 33.114471, 26.036264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348118, 32.746151, 25.931837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660374, 32.501717, 25.879406>,  <33.847725, 32.355057, 25.847948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660374, 32.501717, 25.879406>,  <33.348118, 32.746151, 25.931837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660374, 32.501717, 25.879406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483999, -0.723781, 0.491819,
		-0.395415, -0.320490, -0.860774,
		0.780636, -0.611087, -0.131077,
		33.894566, 32.318390, 25.840082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049610, 32.189976, 25.989248>,  <33.348118, 32.746151, 25.931837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049610, 32.189976, 25.989248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432617, 32.074692, 25.993176>,  <33.662422, 32.005520, 25.995531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432617, 32.074692, 25.993176>,  <33.049610, 32.189976, 25.989248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432617, 32.074692, 25.993176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243880, -0.791120, 0.560938,
		-0.153903, -0.539501, -0.827800,
		0.957516, -0.288214, 0.009817,
		33.719872, 31.988228, 25.996120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064777, 31.422054, 25.847399>,  <33.049610, 32.189976, 25.989248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064777, 31.422054, 25.847399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413361, 31.484768, 26.033291>,  <33.622513, 31.522396, 26.144827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413361, 31.484768, 26.033291>,  <33.064777, 31.422054, 25.847399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413361, 31.484768, 26.033291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180755, -0.778169, 0.601482,
		0.455943, -0.608170, -0.649804,
		0.871460, 0.156786, 0.464731,
		33.674797, 31.531803, 26.172710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340141, 30.853718, 25.914068>,  <33.064777, 31.422054, 25.847399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340141, 30.853718, 25.914068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526524, 31.070679, 26.193691>,  <33.638355, 31.200855, 26.361465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526524, 31.070679, 26.193691>,  <33.340141, 30.853718, 25.914068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526524, 31.070679, 26.193691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249778, -0.677298, 0.692010,
		0.848819, -0.497057, -0.180113,
		0.465959, 0.542403, 0.699058,
		33.666313, 31.233400, 26.403408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744736, 30.428295, 26.303518>,  <33.340141, 30.853718, 25.914068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744736, 30.428295, 26.303518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718113, 30.748890, 26.541237>,  <33.702141, 30.941246, 26.683868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718113, 30.748890, 26.541237>,  <33.744736, 30.428295, 26.303518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718113, 30.748890, 26.541237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247797, -0.590234, 0.768258,
		0.966523, -0.096134, 0.237889,
		-0.066555, 0.801488, 0.594296,
		33.698147, 30.989336, 26.719526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097027, 30.217438, 26.887241>,  <33.744736, 30.428295, 26.303518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097027, 30.217438, 26.887241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880680, 30.533718, 27.001961>,  <33.750870, 30.723486, 27.070791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880680, 30.533718, 27.001961>,  <34.097027, 30.217438, 26.887241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880680, 30.533718, 27.001961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263944, -0.483308, 0.834713,
		0.798620, 0.375773, 0.470107,
		-0.540869, 0.790701, 0.286797,
		33.718418, 30.770929, 27.087999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189148, 30.211916, 27.643257>,  <34.097027, 30.217438, 26.887241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189148, 30.211916, 27.643257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861145, 30.421692, 27.551567>,  <33.664341, 30.547558, 27.496553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861145, 30.421692, 27.551567>,  <34.189148, 30.211916, 27.643257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861145, 30.421692, 27.551567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514740, -0.500632, 0.695995,
		0.250251, 0.688715, 0.680475,
		-0.820010, 0.524442, -0.229226,
		33.615143, 30.579025, 27.482800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856880, 30.384275, 28.231884>,  <34.189148, 30.211916, 27.643257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856880, 30.384275, 28.231884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549534, 30.439190, 27.981838>,  <33.365128, 30.472139, 27.831812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549534, 30.439190, 27.981838>,  <33.856880, 30.384275, 28.231884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549534, 30.439190, 27.981838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597891, -0.502449, 0.624557,
		-0.228344, 0.853638, 0.468148,
		-0.768365, 0.137288, -0.625113,
		33.319023, 30.480377, 27.794304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266296, 30.686337, 28.587027>,  <33.856880, 30.384275, 28.231884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266296, 30.686337, 28.587027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106850, 30.501720, 28.270020>,  <33.011181, 30.390951, 28.079815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106850, 30.501720, 28.270020>,  <33.266296, 30.686337, 28.587027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106850, 30.501720, 28.270020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397580, -0.691756, 0.602830,
		-0.826461, 0.555386, 0.092242,
		-0.398612, -0.461542, -0.792520,
		32.987267, 30.363258, 28.032263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753723, 30.179701, 28.879705>,  <33.266296, 30.686337, 28.587027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753723, 30.179701, 28.879705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797142, 30.025375, 28.513237>,  <32.823193, 29.932781, 28.293356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797142, 30.025375, 28.513237>,  <32.753723, 30.179701, 28.879705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797142, 30.025375, 28.513237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043674, -0.922575, 0.383336,
		-0.993131, -0.001598, -0.116995,
		0.108549, -0.385813, -0.916169,
		32.829708, 29.909632, 28.238386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160652, 29.762899, 28.777958>,  <32.753723, 30.179701, 28.879705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160652, 29.762899, 28.777958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449154, 29.640244, 28.529518>,  <32.622257, 29.566650, 28.380455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449154, 29.640244, 28.529518>,  <32.160652, 29.762899, 28.777958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449154, 29.640244, 28.529518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097187, -0.932604, 0.347570,
		-0.685815, -0.190324, -0.702448,
		0.721257, -0.306637, -0.621097,
		32.665531, 29.548252, 28.343189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882032, 29.128824, 28.427195>,  <32.160652, 29.762899, 28.777958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882032, 29.128824, 28.427195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277004, 29.109417, 28.367027>,  <32.513988, 29.097773, 28.330927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277004, 29.109417, 28.367027>,  <31.882032, 29.128824, 28.427195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277004, 29.109417, 28.367027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004179, -0.943368, 0.331723,
		-0.157996, -0.328182, -0.931307,
		0.987431, -0.048519, -0.150420,
		32.573235, 29.094862, 28.321901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945902, 28.456121, 28.142113>,  <31.882032, 29.128824, 28.427195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945902, 28.456121, 28.142113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318798, 28.574398, 28.225536>,  <32.542534, 28.645365, 28.275591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318798, 28.574398, 28.225536>,  <31.945902, 28.456121, 28.142113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318798, 28.574398, 28.225536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238179, -0.935356, 0.261496,
		0.272402, -0.194102, -0.942402,
		0.932238, 0.295693, 0.208561,
		32.598469, 28.663105, 28.288105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465919, 27.988747, 27.874743>,  <31.945902, 28.456121, 28.142113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465919, 27.988747, 27.874743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600895, 28.157078, 28.211559>,  <32.681881, 28.258076, 28.413651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600895, 28.157078, 28.211559>,  <32.465919, 27.988747, 27.874743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600895, 28.157078, 28.211559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324510, -0.891681, 0.315591,
		0.883644, 0.166758, -0.437453,
		0.337441, 0.420828, 0.842044,
		32.702126, 28.283327, 28.464172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871052, 27.486628, 28.158577>,  <32.465919, 27.988747, 27.874743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871052, 27.486628, 28.158577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882111, 27.728039, 28.477322>,  <32.888744, 27.872885, 28.668570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882111, 27.728039, 28.477322>,  <32.871052, 27.486628, 28.158577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882111, 27.728039, 28.477322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073620, -0.793773, 0.603742,
		0.996903, -0.075357, 0.022485,
		0.027648, 0.603527, 0.796863,
		32.890404, 27.909098, 28.716381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094189, 27.069433, 28.639881>,  <32.871052, 27.486628, 28.158577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094189, 27.069433, 28.639881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 27.357426, 28.840008>,  <32.786385, 27.530222, 28.960083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 27.357426, 28.840008>,  <33.094189, 27.069433, 28.639881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901810, 27.357426, 28.840008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418182, -0.689933, 0.590861,
		0.770594, 0.074949, 0.632904,
		-0.480945, 0.719983, 0.500316,
		32.757526, 27.573421, 28.990103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252560, 27.050198, 29.392027>,  <33.094189, 27.069433, 28.639881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252560, 27.050198, 29.392027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899620, 27.232597, 29.345516>,  <32.687855, 27.342037, 29.317610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899620, 27.232597, 29.345516>,  <33.252560, 27.050198, 29.392027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899620, 27.232597, 29.345516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437014, -0.702331, 0.561917,
		0.174571, 0.546622, 0.818981,
		-0.882351, 0.456000, -0.116275,
		32.634914, 27.369398, 29.310635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969841, 27.077318, 30.037348>,  <33.252560, 27.050198, 29.392027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969841, 27.077318, 30.037348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661228, 27.132679, 29.788967>,  <32.476059, 27.165895, 29.639938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661228, 27.132679, 29.788967>,  <32.969841, 27.077318, 30.037348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661228, 27.132679, 29.788967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507723, -0.722088, 0.469900,
		-0.383347, 0.677815, 0.627385,
		-0.771532, 0.138403, -0.620953,
		32.429768, 27.174200, 29.602682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464355, 27.152519, 30.471811>,  <32.969841, 27.077318, 30.037348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464355, 27.152519, 30.471811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293373, 27.048714, 30.125416>,  <32.190784, 26.986431, 29.917580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293373, 27.048714, 30.125416>,  <32.464355, 27.152519, 30.471811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293373, 27.048714, 30.125416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580519, -0.655528, 0.482991,
		-0.693021, 0.709180, 0.129558,
		-0.427456, -0.259512, -0.865988,
		32.165134, 26.970860, 29.865620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724438, 27.153639, 30.650597>,  <32.464355, 27.152519, 30.471811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724438, 27.153639, 30.650597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767443, 26.920303, 30.328564>,  <31.793245, 26.780302, 30.135344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767443, 26.920303, 30.328564>,  <31.724438, 27.153639, 30.650597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767443, 26.920303, 30.328564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606799, -0.679959, 0.411644,
		-0.787550, 0.444265, -0.427075,
		0.107514, -0.583339, -0.805082,
		31.799698, 26.745302, 30.087040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953030, 26.944439, 30.430222>,  <31.724438, 27.153639, 30.650597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953030, 26.944439, 30.430222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225132, 26.696571, 30.273624>,  <31.388393, 26.547852, 30.179667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225132, 26.696571, 30.273624>,  <30.953030, 26.944439, 30.430222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225132, 26.696571, 30.273624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591988, -0.779422, 0.205066,
		-0.432210, 0.092261, -0.897041,
		0.680254, -0.619669, -0.391491,
		31.429209, 26.510672, 30.156178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522240, 26.418867, 30.228720>,  <30.953030, 26.944439, 30.430222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522240, 26.418867, 30.228720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885479, 26.251404, 30.225014>,  <31.103422, 26.150925, 30.222790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885479, 26.251404, 30.225014>,  <30.522240, 26.418867, 30.228720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885479, 26.251404, 30.225014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409382, -0.892195, 0.190772,
		-0.088136, -0.169445, -0.981591,
		0.908096, -0.418660, -0.009267,
		31.157907, 26.125807, 30.222233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413942, 25.772686, 29.878529>,  <30.522240, 26.418867, 30.228720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413942, 25.772686, 29.878529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744333, 25.741764, 30.101879>,  <30.942568, 25.723211, 30.235889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744333, 25.741764, 30.101879>,  <30.413942, 25.772686, 29.878529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744333, 25.741764, 30.101879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275806, -0.919311, 0.280709,
		0.491620, -0.385863, -0.780653,
		0.825979, -0.077306, 0.558375,
		30.992126, 25.718573, 30.269392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279976, 25.340492, 29.251238>,  <30.413942, 25.772686, 29.878529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279976, 25.340492, 29.251238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892155, 25.366299, 29.345730>,  <29.659462, 25.381783, 29.402426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892155, 25.366299, 29.345730>,  <30.279976, 25.340492, 29.251238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892155, 25.366299, 29.345730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068115, 0.855551, -0.513217,
		-0.235218, -0.513682, -0.825108,
		-0.969553, 0.064516, 0.236230,
		29.601288, 25.385653, 29.416599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925770, 25.470140, 28.629713>,  <30.279976, 25.340492, 29.251238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925770, 25.470140, 28.629713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708845, 25.611515, 28.934601>,  <29.578690, 25.696341, 29.117533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708845, 25.611515, 28.934601>,  <29.925770, 25.470140, 28.629713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708845, 25.611515, 28.934601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150120, 0.851853, -0.501808,
		-0.826656, -0.386561, -0.408913,
		-0.542313, 0.353437, 0.762220,
		29.546152, 25.717546, 29.163267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500120, 25.986074, 28.258532>,  <29.925770, 25.470140, 28.629713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500120, 25.986074, 28.258532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472994, 26.069721, 28.648746>,  <29.456718, 26.119909, 28.882875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472994, 26.069721, 28.648746>,  <29.500120, 25.986074, 28.258532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472994, 26.069721, 28.648746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199945, 0.955102, -0.218637,
		-0.977457, -0.209880, -0.022958,
		-0.067815, 0.209118, 0.975536,
		29.452650, 26.132456, 28.941408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818882, 26.335344, 28.340961>,  <29.500120, 25.986074, 28.258532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818882, 26.335344, 28.340961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082561, 26.421776, 28.629063>,  <29.240770, 26.473635, 28.801924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082561, 26.421776, 28.629063>,  <28.818882, 26.335344, 28.340961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082561, 26.421776, 28.629063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101461, 0.923507, -0.369920,
		-0.745090, 0.316929, 0.586853,
		0.659201, 0.216081, 0.720252,
		29.280321, 26.486601, 28.845139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638662, 26.999220, 28.298365>,  <28.818882, 26.335344, 28.340961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638662, 26.999220, 28.298365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991922, 26.977119, 28.484695>,  <29.203878, 26.963860, 28.596495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991922, 26.977119, 28.484695>,  <28.638662, 26.999220, 28.298365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991922, 26.977119, 28.484695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166234, 0.965458, -0.200644,
		-0.438650, 0.254634, 0.861828,
		0.883149, -0.055252, 0.465827,
		29.256866, 26.960545, 28.624443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
