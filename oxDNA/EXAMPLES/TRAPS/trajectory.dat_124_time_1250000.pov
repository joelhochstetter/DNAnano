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
	<36.389992, 53.307144, 49.815742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601753, 53.197777, 50.136982>,  <36.728809, 53.132156, 50.329727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601753, 53.197777, 50.136982>,  <36.389992, 53.307144, 49.815742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601753, 53.197777, 50.136982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645770, -0.484046, -0.590492,
		0.550189, 0.831229, -0.079691,
		0.529408, -0.273420, 0.803099,
		36.760574, 53.115749, 50.377911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174183, 53.503822, 49.700211>,  <36.389992, 53.307144, 49.815742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174183, 53.503822, 49.700211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150036, 53.152504, 49.889931>,  <37.135548, 52.941715, 50.003761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150036, 53.152504, 49.889931>,  <37.174183, 53.503822, 49.700211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150036, 53.152504, 49.889931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859119, -0.287636, -0.423297,
		0.508203, 0.381924, 0.771922,
		-0.060365, -0.878293, 0.474296,
		37.131927, 52.889015, 50.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788490, 53.301147, 50.068161>,  <37.174183, 53.503822, 49.700211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788490, 53.301147, 50.068161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588284, 52.967236, 49.976402>,  <37.468159, 52.766888, 49.921345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588284, 52.967236, 49.976402>,  <37.788490, 53.301147, 50.068161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588284, 52.967236, 49.976402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814263, -0.363930, -0.452250,
		0.294044, -0.413150, 0.861885,
		-0.500513, -0.834783, -0.229401,
		37.438129, 52.716801, 49.907581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236416, 52.892792, 50.368500>,  <37.788490, 53.301147, 50.068161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236416, 52.892792, 50.368500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005699, 52.703037, 50.102486>,  <37.867271, 52.589184, 49.942879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005699, 52.703037, 50.102486>,  <38.236416, 52.892792, 50.368500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005699, 52.703037, 50.102486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806667, -0.459172, -0.372088,
		-0.128851, -0.751077, 0.647518,
		-0.576789, -0.474388, -0.665034,
		37.832661, 52.560722, 49.902977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277035, 52.195072, 50.619251>,  <38.236416, 52.892792, 50.368500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277035, 52.195072, 50.619251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351559, 52.262424, 51.006432>,  <38.396275, 52.302837, 51.238739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351559, 52.262424, 51.006432>,  <38.277035, 52.195072, 50.619251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351559, 52.262424, 51.006432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326049, -0.918775, 0.222584,
		0.926812, -0.357071, -0.116277,
		0.186310, 0.168381, 0.967955,
		38.407452, 52.312939, 51.296818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069035, 52.120270, 50.753540>,  <38.277035, 52.195072, 50.619251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069035, 52.120270, 50.753540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223022, 52.435188, 50.560890>,  <39.315414, 52.624138, 50.445301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223022, 52.435188, 50.560890>,  <39.069035, 52.120270, 50.753540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223022, 52.435188, 50.560890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756963, 0.029206, 0.652805,
		0.528017, -0.615882, -0.584711,
		0.384974, 0.787297, -0.481621,
		39.338516, 52.671379, 50.416405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681652, 51.980522, 50.601131>,  <39.069035, 52.120270, 50.753540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681652, 51.980522, 50.601131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676147, 52.379372, 50.630943>,  <39.672844, 52.618683, 50.648830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676147, 52.379372, 50.630943>,  <39.681652, 51.980522, 50.601131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676147, 52.379372, 50.630943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784581, -0.035440, 0.619012,
		0.619873, 0.066996, -0.781837,
		-0.013763, 0.997124, 0.074532,
		39.672020, 52.678509, 50.653301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381218, 52.268532, 50.493351>,  <39.681652, 51.980522, 50.601131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381218, 52.268532, 50.493351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189587, 52.541714, 50.713917>,  <40.074608, 52.705624, 50.846256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189587, 52.541714, 50.713917>,  <40.381218, 52.268532, 50.493351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189587, 52.541714, 50.713917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823445, 0.132107, 0.551803,
		0.304012, 0.718413, -0.625667,
		-0.479077, 0.682957, 0.551411,
		40.045864, 52.746601, 50.879341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765472, 52.943264, 50.527096>,  <40.381218, 52.268532, 50.493351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765472, 52.943264, 50.527096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537712, 52.890209, 50.851612>,  <40.401058, 52.858376, 51.046322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537712, 52.890209, 50.851612>,  <40.765472, 52.943264, 50.527096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537712, 52.890209, 50.851612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818802, -0.003721, 0.574063,
		-0.073126, 0.991157, 0.110726,
		-0.569399, -0.132642, 0.811290,
		40.366894, 52.850418, 51.094997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001503, 53.393963, 51.100491>,  <40.765472, 52.943264, 50.527096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001503, 53.393963, 51.100491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829842, 53.068481, 51.257317>,  <40.726845, 52.873192, 51.351414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829842, 53.068481, 51.257317>,  <41.001503, 53.393963, 51.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829842, 53.068481, 51.257317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833886, -0.190142, 0.518151,
		-0.347073, 0.549304, 0.760135,
		-0.429156, -0.813702, 0.392064,
		40.701096, 52.824371, 51.374935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261841, 52.637489, 50.973736>,  <41.001503, 53.393963, 51.100491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261841, 52.637489, 50.973736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163658, 52.435974, 50.642448>,  <41.104748, 52.315063, 50.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163658, 52.435974, 50.642448>,  <41.261841, 52.637489, 50.973736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163658, 52.435974, 50.642448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691507, -0.689748, 0.214626,
		-0.679389, -0.520038, 0.517677,
		-0.245453, -0.503793, -0.828218,
		41.090023, 52.284836, 50.393982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426682, 52.842739, 50.233604>,  <41.261841, 52.637489, 50.973736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426682, 52.842739, 50.233604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484406, 52.977451, 50.605789>,  <41.519039, 53.058277, 50.829098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484406, 52.977451, 50.605789>,  <41.426682, 52.842739, 50.233604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484406, 52.977451, 50.605789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937625, 0.254011, -0.237358,
		-0.316284, 0.906673, -0.279119,
		0.144307, 0.336782, 0.930459,
		41.527699, 53.078487, 50.884926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876083, 53.506672, 50.220123>,  <41.426682, 52.842739, 50.233604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876083, 53.506672, 50.220123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898514, 53.360928, 50.591949>,  <41.911972, 53.273479, 50.815044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898514, 53.360928, 50.591949>,  <41.876083, 53.506672, 50.220123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898514, 53.360928, 50.591949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987427, 0.158059, 0.002390,
		-0.147798, 0.917745, 0.368646,
		0.056074, -0.364364, 0.929567,
		41.915337, 53.251617, 50.870819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119759, 53.961559, 50.734177>,  <41.876083, 53.506672, 50.220123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119759, 53.961559, 50.734177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258820, 53.615276, 50.878223>,  <42.342255, 53.407505, 50.964653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258820, 53.615276, 50.878223>,  <42.119759, 53.961559, 50.734177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258820, 53.615276, 50.878223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922770, 0.383997, 0.032289,
		-0.166237, 0.321082, 0.932347,
		0.347651, -0.865709, 0.360120,
		42.363113, 53.355564, 50.986259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716228, 54.315235, 50.497753>,  <42.119759, 53.961559, 50.734177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716228, 54.315235, 50.497753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991219, 54.209320, 50.227268>,  <43.156212, 54.145771, 50.064976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991219, 54.209320, 50.227268>,  <42.716228, 54.315235, 50.497753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991219, 54.209320, 50.227268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459673, -0.562211, 0.687474,
		-0.562211, -0.783458, -0.264789,
		-0.687474, 0.264789, 0.676215,
		43.197460, 54.129883, 50.024403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889324, 53.612850, 50.651405>,  <42.716228, 54.315235, 50.497753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889324, 53.612850, 50.651405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209965, 53.743988, 50.451424>,  <43.402348, 53.822670, 50.331436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209965, 53.743988, 50.451424>,  <42.889324, 53.612850, 50.651405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209965, 53.743988, 50.451424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584518, -0.605424, 0.540185,
		-0.125587, -0.725245, -0.676940,
		0.801603, 0.327844, -0.499952,
		43.450447, 53.842342, 50.301437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320568, 53.012917, 50.587746>,  <42.889324, 53.612850, 50.651405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320568, 53.012917, 50.587746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547520, 53.342228, 50.594650>,  <43.683689, 53.539814, 50.598793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547520, 53.342228, 50.594650>,  <43.320568, 53.012917, 50.587746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547520, 53.342228, 50.594650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629687, -0.447281, 0.635165,
		0.530639, -0.349506, -0.772184,
		0.567377, 0.823277, 0.017265,
		43.717731, 53.589211, 50.599831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650883, 52.829102, 51.224892>,  <43.320568, 53.012917, 50.587746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650883, 52.829102, 51.224892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980331, 52.741936, 51.434334>,  <44.178001, 52.689636, 51.559998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980331, 52.741936, 51.434334>,  <43.650883, 52.829102, 51.224892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980331, 52.741936, 51.434334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545534, 0.052020, -0.836472,
		0.155043, 0.974580, 0.161726,
		0.823622, -0.217916, 0.523602,
		44.227417, 52.676559, 51.591415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185059, 53.332024, 51.081364>,  <43.650883, 52.829102, 51.224892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185059, 53.332024, 51.081364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385124, 52.998993, 51.176563>,  <44.505165, 52.799175, 51.233685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385124, 52.998993, 51.176563>,  <44.185059, 53.332024, 51.081364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385124, 52.998993, 51.176563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614331, 0.147470, -0.775145,
		0.610271, 0.533916, 0.585238,
		0.500168, -0.832578, 0.238004,
		44.535175, 52.749218, 51.247963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956924, 53.383713, 51.329636>,  <44.185059, 53.332024, 51.081364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956924, 53.383713, 51.329636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215179, 53.322594, 51.628918>,  <45.370132, 53.285923, 51.808487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215179, 53.322594, 51.628918>,  <44.956924, 53.383713, 51.329636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215179, 53.322594, 51.628918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126142, 0.944980, 0.301829,
		-0.753157, -0.289251, 0.590837,
		0.645634, -0.152795, 0.748205,
		45.408871, 53.276756, 51.853378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734985, 53.714874, 51.981243>,  <44.956924, 53.383713, 51.329636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734985, 53.714874, 51.981243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133888, 53.690285, 51.964745>,  <45.373230, 53.675529, 51.954845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133888, 53.690285, 51.964745>,  <44.734985, 53.714874, 51.981243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133888, 53.690285, 51.964745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070924, 0.953098, 0.294233,
		0.021223, -0.296351, 0.954843,
		0.997256, -0.061477, -0.041247,
		45.433064, 53.671841, 51.952370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232594, 54.324528, 51.833828>,  <44.734985, 53.714874, 51.981243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232594, 54.324528, 51.833828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158504, 54.490963, 52.189934>,  <45.114052, 54.590824, 52.403595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158504, 54.490963, 52.189934>,  <45.232594, 54.324528, 51.833828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158504, 54.490963, 52.189934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982415, 0.056702, 0.177894,
		0.023540, 0.907555, -0.419273,
		-0.185222, 0.416087, 0.890261,
		45.102940, 54.615788, 52.457012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877411, 54.385571, 52.172215>,  <45.232594, 54.324528, 51.833828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877411, 54.385571, 52.172215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638519, 54.528370, 52.459511>,  <45.495182, 54.614048, 52.631889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638519, 54.528370, 52.459511>,  <45.877411, 54.385571, 52.172215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638519, 54.528370, 52.459511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800346, 0.323897, 0.504517,
		-0.052526, 0.876154, -0.479161,
		-0.597233, 0.356994, 0.718239,
		45.459351, 54.635468, 52.674984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138523, 55.026707, 52.381695>,  <45.877411, 54.385571, 52.172215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138523, 55.026707, 52.381695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952618, 54.817276, 52.667313>,  <45.841072, 54.691616, 52.838684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952618, 54.817276, 52.667313>,  <46.138523, 55.026707, 52.381695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952618, 54.817276, 52.667313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838663, -0.001683, 0.544648,
		-0.283964, 0.851975, 0.439889,
		-0.464768, -0.523579, 0.714042,
		45.813187, 54.660202, 52.881527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.277130, 55.248924, 53.141491>,  <46.138523, 55.026707, 52.381695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.277130, 55.248924, 53.141491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214848, 54.854263, 53.122444>,  <46.177479, 54.617466, 53.111015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214848, 54.854263, 53.122444>,  <46.277130, 55.248924, 53.141491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214848, 54.854263, 53.122444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872279, -0.159959, 0.462106,
		-0.463556, 0.030417, 0.885545,
		-0.155707, -0.986655, -0.047618,
		46.168137, 54.558266, 53.108158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577679, 54.953331, 53.667282>,  <46.277130, 55.248924, 53.141491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577679, 54.953331, 53.667282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569389, 54.626553, 53.436745>,  <46.564415, 54.430485, 53.298424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569389, 54.626553, 53.436745>,  <46.577679, 54.953331, 53.667282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569389, 54.626553, 53.436745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817980, -0.345323, 0.460067,
		-0.574874, -0.461902, 0.675401,
		-0.020725, -0.816945, -0.576343,
		46.563171, 54.381470, 53.263844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741478, 54.314251, 54.083698>,  <46.577679, 54.953331, 53.667282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741478, 54.314251, 54.083698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848961, 54.289677, 53.699192>,  <46.913452, 54.274933, 53.468491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848961, 54.289677, 53.699192>,  <46.741478, 54.314251, 54.083698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.848961, 54.289677, 53.699192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866862, -0.419661, 0.269138,
		-0.419946, -0.905598, -0.059482,
		0.268694, -0.061461, -0.961263,
		46.929573, 54.271248, 53.410812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015419, 53.636452, 53.982037>,  <46.741478, 54.314251, 54.083698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015419, 53.636452, 53.982037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145336, 53.888271, 53.699711>,  <47.223286, 54.039364, 53.530315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145336, 53.888271, 53.699711>,  <47.015419, 53.636452, 53.982037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.145336, 53.888271, 53.699711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927810, -0.067286, 0.366936,
		0.183511, -0.774044, -0.605953,
		0.324797, 0.629546, -0.705818,
		47.242775, 54.077137, 53.487965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.568722, 53.334057, 53.439434>,  <47.015419, 53.636452, 53.982037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.568722, 53.334057, 53.439434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636784, 53.722427, 53.506775>,  <47.677620, 53.955452, 53.547180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636784, 53.722427, 53.506775>,  <47.568722, 53.334057, 53.439434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636784, 53.722427, 53.506775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971016, -0.194302, 0.139192,
		0.167857, 0.139789, -0.975850,
		0.170152, 0.970931, 0.168352,
		47.687828, 54.013706, 53.557281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.033966, 53.545708, 52.966732>,  <47.568722, 53.334057, 53.439434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.033966, 53.545708, 52.966732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.091885, 53.788601, 53.279221>,  <48.126637, 53.934338, 53.466713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.091885, 53.788601, 53.279221>,  <48.033966, 53.545708, 52.966732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.091885, 53.788601, 53.279221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988400, -0.125327, -0.085777,
		0.045821, 0.784578, -0.618335,
		0.144793, 0.607232, 0.781220,
		48.135323, 53.970772, 53.513588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.732128, 53.676643, 52.512020>,  <48.033966, 53.545708, 52.966732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.732128, 53.676643, 52.512020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.646259, 54.008743, 52.717781>,  <48.594738, 54.208004, 52.841236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.646259, 54.008743, 52.717781>,  <48.732128, 53.676643, 52.512020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.646259, 54.008743, 52.717781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912158, 0.358689, -0.198267,
		-0.349121, 0.426655, -0.834314,
		-0.214668, 0.830246, 0.514403,
		48.581860, 54.257816, 52.872101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.664967, 54.445518, 52.197964>,  <48.732128, 53.676643, 52.512020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.664967, 54.445518, 52.197964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.840042, 54.355789, 52.546242>,  <48.945087, 54.301952, 52.755207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.840042, 54.355789, 52.546242>,  <48.664967, 54.445518, 52.197964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.840042, 54.355789, 52.546242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846933, 0.427995, -0.315476,
		-0.301886, 0.875500, 0.377313,
		0.437687, -0.224321, 0.870695,
		48.971348, 54.288494, 52.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.882092, 55.075371, 52.568558>,  <48.664967, 54.445518, 52.197964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.882092, 55.075371, 52.568558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.098370, 54.756596, 52.676292>,  <49.228134, 54.565331, 52.740932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.098370, 54.756596, 52.676292>,  <48.882092, 55.075371, 52.568558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.098370, 54.756596, 52.676292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827602, 0.446559, -0.340089,
		0.150755, 0.406787, 0.900998,
		0.540692, -0.796938, 0.269336,
		49.260578, 54.517513, 52.757092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.391994, 55.170033, 53.077858>,  <48.882092, 55.075371, 52.568558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.391994, 55.170033, 53.077858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.503971, 54.881195, 52.824806>,  <49.571156, 54.707893, 52.672977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.503971, 54.881195, 52.824806>,  <49.391994, 55.170033, 53.077858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.503971, 54.881195, 52.824806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712609, 0.597861, -0.367083,
		0.643290, -0.348054, 0.681935,
		0.279938, -0.722094, -0.632625,
		49.587952, 54.664566, 52.635017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.186249, 55.220798, 53.194111>,  <49.391994, 55.170033, 53.077858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.186249, 55.220798, 53.194111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.109097, 55.011505, 52.862083>,  <50.062805, 54.885929, 52.662865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.109097, 55.011505, 52.862083>,  <50.186249, 55.220798, 53.194111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.109097, 55.011505, 52.862083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841655, 0.346635, -0.414078,
		0.504393, -0.778502, 0.373526,
		-0.192883, -0.523238, -0.830071,
		50.051231, 54.854534, 52.613064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.755630, 54.780708, 53.066368>,  <50.186249, 55.220798, 53.194111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.755630, 54.780708, 53.066368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.565037, 54.787125, 52.714752>,  <50.450680, 54.790974, 52.503784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.565037, 54.787125, 52.714752>,  <50.755630, 54.780708, 53.066368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.565037, 54.787125, 52.714752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788625, 0.449756, -0.419273,
		0.388628, -0.893007, -0.226948,
		-0.476485, 0.016036, -0.879036,
		50.422092, 54.791935, 52.451042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.179062, 54.485149, 52.570103>,  <50.755630, 54.780708, 53.066368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.179062, 54.485149, 52.570103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.937405, 54.782333, 52.454849>,  <50.792412, 54.960644, 52.385696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.937405, 54.782333, 52.454849>,  <51.179062, 54.485149, 52.570103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.937405, 54.782333, 52.454849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785908, 0.495733, -0.369591,
		-0.131754, -0.449732, -0.883392,
		-0.604144, 0.742960, -0.288133,
		50.756161, 55.005222, 52.368408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.348003, 54.555954, 51.937366>,  <51.179062, 54.485149, 52.570103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.348003, 54.555954, 51.937366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.181847, 54.887058, 52.088238>,  <51.082153, 55.085720, 52.178761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.181847, 54.887058, 52.088238>,  <51.348003, 54.555954, 51.937366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.181847, 54.887058, 52.088238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809309, 0.525607, -0.262214,
		-0.415296, 0.196330, -0.888247,
		-0.415388, 0.827763, 0.377175,
		51.057232, 55.135387, 52.201389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.393970, 55.142654, 51.454983>,  <51.348003, 54.555954, 51.937366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.393970, 55.142654, 51.454983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.352322, 55.306133, 51.817665>,  <51.327332, 55.404221, 52.035275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.352322, 55.306133, 51.817665>,  <51.393970, 55.142654, 51.454983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.352322, 55.306133, 51.817665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675824, 0.697926, -0.236984,
		-0.729672, 0.588101, -0.348878,
		-0.104120, 0.408701, 0.906710,
		51.321087, 55.428745, 52.089680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.140308, 55.902737, 51.504803>,  <51.393970, 55.142654, 51.454983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.140308, 55.902737, 51.504803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.396519, 55.770741, 51.782169>,  <51.550243, 55.691544, 51.948589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.396519, 55.770741, 51.782169>,  <51.140308, 55.902737, 51.504803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.396519, 55.770741, 51.782169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644583, 0.721846, -0.251896,
		-0.417419, 0.608313, 0.675068,
		0.640527, -0.329991, 0.693420,
		51.588676, 55.671741, 51.990196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.271988, 56.459244, 51.944286>,  <51.140308, 55.902737, 51.504803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.271988, 56.459244, 51.944286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.590721, 56.222633, 51.993515>,  <51.781963, 56.080666, 52.023052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.590721, 56.222633, 51.993515>,  <51.271988, 56.459244, 51.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.590721, 56.222633, 51.993515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602221, 0.761114, -0.240904,
		0.048826, 0.266079, 0.962714,
		0.796835, -0.591529, 0.123076,
		51.829773, 56.045174, 52.030437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.620934, 56.726887, 52.429752>,  <51.271988, 56.459244, 51.944286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.620934, 56.726887, 52.429752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.875172, 56.531040, 52.190994>,  <52.027714, 56.413532, 52.047737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.875172, 56.531040, 52.190994>,  <51.620934, 56.726887, 52.429752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.875172, 56.531040, 52.190994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551687, 0.828909, -0.092476,
		0.540052, -0.270523, 0.796970,
		0.635598, -0.489620, -0.596898,
		52.065849, 56.384155, 52.011925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.452579, 56.763771, 52.647705>,  <51.620934, 56.726887, 52.429752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.452579, 56.763771, 52.647705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.340214, 56.748104, 52.264130>,  <52.272797, 56.738705, 52.033985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.340214, 56.748104, 52.264130>,  <52.452579, 56.763771, 52.647705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.340214, 56.748104, 52.264130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392311, 0.907192, -0.151973,
		0.875889, -0.418891, -0.239476,
		-0.280911, -0.039162, -0.958934,
		52.255939, 56.736355, 51.976448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.981064, 57.053810, 52.358135>,  <52.452579, 56.763771, 52.647705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.981064, 57.053810, 52.358135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.677792, 57.106506, 52.102695>,  <52.495831, 57.138123, 51.949432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.677792, 57.106506, 52.102695>,  <52.981064, 57.053810, 52.358135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.677792, 57.106506, 52.102695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172140, 0.985072, -0.001163,
		0.628915, -0.110811, -0.769537,
		-0.758178, 0.131736, -0.638601,
		52.450336, 57.146027, 51.911114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.594559, 57.275627, 52.884377>,  <52.981064, 57.053810, 52.358135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.594559, 57.275627, 52.884377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.706726, 57.622002, 52.718719>,  <53.774025, 57.829826, 52.619324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.706726, 57.622002, 52.718719>,  <53.594559, 57.275627, 52.884377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.706726, 57.622002, 52.718719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873490, -0.409091, -0.263931,
		-0.397972, -0.287742, -0.871104,
		0.280417, 0.865938, -0.414146,
		53.790852, 57.881783, 52.594475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.859829, 57.109390, 52.139500>,  <53.594559, 57.275627, 52.884377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.859829, 57.109390, 52.139500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.011444, 57.449520, 52.285526>,  <54.102413, 57.653599, 52.373142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.011444, 57.449520, 52.285526>,  <53.859829, 57.109390, 52.139500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.011444, 57.449520, 52.285526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923570, -0.322954, -0.206687,
		-0.057850, 0.415511, -0.907747,
		0.379041, 0.850324, 0.365070,
		54.125156, 57.704617, 52.395046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.340168, 57.450214, 51.695541>,  <53.859829, 57.109390, 52.139500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.340168, 57.450214, 51.695541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.409195, 57.445831, 52.089516>,  <54.450611, 57.443203, 52.325901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.409195, 57.445831, 52.089516>,  <54.340168, 57.450214, 51.695541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.409195, 57.445831, 52.089516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890514, -0.425608, -0.160755,
		0.420958, 0.904841, -0.063689,
		0.172564, -0.010955, 0.984937,
		54.460964, 57.442543, 52.384998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.950909, 57.865513, 51.995380>,  <54.340168, 57.450214, 51.695541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.950909, 57.865513, 51.995380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.865517, 57.532562, 52.199959>,  <54.814281, 57.332790, 52.322704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.865517, 57.532562, 52.199959>,  <54.950909, 57.865513, 51.995380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.865517, 57.532562, 52.199959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971693, -0.235132, 0.022915,
		0.101183, 0.501860, 0.859010,
		-0.213481, -0.832376, 0.511446,
		54.801472, 57.282848, 52.353394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.309475, 57.750099, 52.680073>,  <54.950909, 57.865513, 51.995380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.309475, 57.750099, 52.680073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.237465, 57.413979, 52.475529>,  <55.194260, 57.212307, 52.352802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.237465, 57.413979, 52.475529>,  <55.309475, 57.750099, 52.680073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.237465, 57.413979, 52.475529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983614, -0.158880, -0.085210,
		-0.009643, -0.518318, 0.855134,
		-0.180029, -0.840300, -0.511357,
		55.183456, 57.161888, 52.322121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.698273, 57.200497, 52.967663>,  <55.309475, 57.750099, 52.680073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.698273, 57.200497, 52.967663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.623604, 57.101551, 52.587353>,  <55.578804, 57.042183, 52.359169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.623604, 57.101551, 52.587353>,  <55.698273, 57.200497, 52.967663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.623604, 57.101551, 52.587353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973660, -0.175558, -0.145488,
		-0.130927, -0.952885, 0.273622,
		-0.186670, -0.247366, -0.950770,
		55.567604, 57.027340, 52.302120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.726326, 56.435856, 52.868366>,  <55.698273, 57.200497, 52.967663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.726326, 56.435856, 52.868366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.791908, 56.639584, 52.530441>,  <55.831257, 56.761822, 52.327686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.791908, 56.639584, 52.530441>,  <55.726326, 56.435856, 52.868366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.791908, 56.639584, 52.530441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986333, -0.098835, 0.131830,
		-0.016353, -0.854883, -0.518563,
		0.163952, 0.509320, -0.844815,
		55.841095, 56.792381, 52.276997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.272491, 56.149349, 52.449718>,  <55.726326, 56.435856, 52.868366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.272491, 56.149349, 52.449718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.259491, 56.528969, 52.324333>,  <56.251690, 56.756741, 52.249104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.259491, 56.528969, 52.324333>,  <56.272491, 56.149349, 52.449718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.259491, 56.528969, 52.324333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993135, -0.004594, -0.116887,
		-0.112371, -0.315109, -0.942379,
		-0.032502, 0.949044, -0.313462,
		56.249741, 56.813683, 52.230293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.667458, 56.185211, 51.886452>,  <56.272491, 56.149349, 52.449718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.667458, 56.185211, 51.886452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.642929, 56.550217, 52.048218>,  <56.628212, 56.769222, 52.145279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.642929, 56.550217, 52.048218>,  <56.667458, 56.185211, 51.886452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.642929, 56.550217, 52.048218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991325, 0.102872, -0.081803,
		-0.116250, 0.395892, -0.910909,
		-0.061322, 0.912517, 0.404417,
		56.624531, 56.823971, 52.169544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.733871, 55.744541, 51.337841>,  <56.667458, 56.185211, 51.886452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.733871, 55.744541, 51.337841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.050812, 55.906067, 51.154930>,  <57.240978, 56.002983, 51.045181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.050812, 55.906067, 51.154930>,  <56.733871, 55.744541, 51.337841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.050812, 55.906067, 51.154930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575395, -0.743753, 0.340223,
		-0.202716, -0.532695, -0.821670,
		0.792355, 0.403816, -0.457281,
		57.288517, 56.027210, 51.017746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.094982, 55.238289, 50.963253>,  <56.733871, 55.744541, 51.337841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.094982, 55.238289, 50.963253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.344597, 55.531960, 51.070263>,  <57.494366, 55.708160, 51.134468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.344597, 55.531960, 51.070263>,  <57.094982, 55.238289, 50.963253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.344597, 55.531960, 51.070263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544200, -0.654031, 0.525443,
		0.560738, -0.182306, -0.807674,
		0.624035, 0.734172, 0.267529,
		57.531807, 55.752213, 51.150520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.832638, 55.157650, 50.882149>,  <57.094982, 55.238289, 50.963253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.832638, 55.157650, 50.882149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.768692, 55.405182, 51.189785>,  <57.730324, 55.553699, 51.374367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.768692, 55.405182, 51.189785>,  <57.832638, 55.157650, 50.882149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.768692, 55.405182, 51.189785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666388, -0.507137, 0.546570,
		0.728265, 0.599890, -0.331304,
		-0.159865, 0.618825, 0.769089,
		57.720734, 55.590828, 51.420513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.568886, 55.317226, 51.022888>,  <57.832638, 55.157650, 50.882149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.568886, 55.317226, 51.022888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.669106, 55.115501, 50.692337>,  <58.729237, 54.994465, 50.494007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.669106, 55.115501, 50.692337>,  <58.568886, 55.317226, 51.022888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.669106, 55.115501, 50.692337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949230, 0.295707, 0.107332,
		0.190235, -0.811311, 0.552798,
		0.250546, -0.504314, -0.826374,
		58.744270, 54.964207, 50.444424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.155216, 54.835503, 51.205914>,  <58.568886, 55.317226, 51.022888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.155216, 54.835503, 51.205914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.140076, 54.967678, 50.828686>,  <59.130989, 55.046982, 50.602348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.140076, 54.967678, 50.828686>,  <59.155216, 54.835503, 51.205914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.140076, 54.967678, 50.828686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893332, 0.434103, 0.116243,
		0.447800, -0.838074, -0.311620,
		-0.037855, 0.330434, -0.943070,
		59.128719, 55.066807, 50.545765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.802704, 54.693588, 50.691738>,  <59.155216, 54.835503, 51.205914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.802704, 54.693588, 50.691738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.635536, 55.011848, 50.516335>,  <59.535236, 55.202805, 50.411091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.635536, 55.011848, 50.516335>,  <59.802704, 54.693588, 50.691738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.635536, 55.011848, 50.516335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898705, 0.432702, -0.071400,
		0.132934, -0.423929, -0.895887,
		-0.417920, 0.795647, -0.438508,
		59.510159, 55.250542, 50.384781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.544258, 54.317970, 50.904442>,  <59.802704, 54.693588, 50.691738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.544258, 54.317970, 50.904442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.687134, 54.653809, 51.068146>,  <60.772858, 54.855312, 51.166367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.687134, 54.653809, 51.068146>,  <60.544258, 54.317970, 50.904442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.687134, 54.653809, 51.068146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933611, 0.334084, 0.129456,
		-0.028036, -0.428329, 0.903188,
		0.357190, 0.839597, 0.409259,
		60.794292, 54.905689, 51.190922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.206379, 54.768791, 50.914177>,  <60.544258, 54.317970, 50.904442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.206379, 54.768791, 50.914177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.595505, 54.808537, 50.997849>,  <61.828979, 54.832382, 51.048050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.595505, 54.808537, 50.997849>,  <61.206379, 54.768791, 50.914177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.595505, 54.808537, 50.997849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167917, -0.319379, 0.932631,
		0.159477, -0.942403, -0.294013,
		0.972816, 0.099364, 0.209180,
		61.887348, 54.838345, 51.060604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.484543, 54.198212, 51.168850>,  <61.206379, 54.768791, 50.914177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.484543, 54.198212, 51.168850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.649170, 54.526276, 51.327820>,  <61.747948, 54.723114, 51.423203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.649170, 54.526276, 51.327820>,  <61.484543, 54.198212, 51.168850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.649170, 54.526276, 51.327820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294354, -0.293074, 0.909650,
		0.862535, -0.491366, 0.120798,
		0.411569, 0.820163, 0.397422,
		61.772640, 54.772324, 51.447048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.077976, 53.921379, 51.702023>,  <61.484543, 54.198212, 51.168850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.077976, 53.921379, 51.702023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.900169, 54.267838, 51.793407>,  <61.793484, 54.475712, 51.848240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.900169, 54.267838, 51.793407>,  <62.077976, 53.921379, 51.702023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.900169, 54.267838, 51.793407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120922, -0.310737, 0.942773,
		0.887571, 0.391452, 0.242863,
		-0.444517, 0.866146, 0.228467,
		61.766815, 54.527679, 51.861946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.474133, 54.382736, 52.107071>,  <62.077976, 53.921379, 51.702023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.474133, 54.382736, 52.107071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.083221, 54.372658, 52.191261>,  <61.848675, 54.366611, 52.241776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.083221, 54.372658, 52.191261>,  <62.474133, 54.382736, 52.107071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.083221, 54.372658, 52.191261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203773, -0.385241, 0.900037,
		0.058405, 0.922472, 0.381620,
		-0.977274, -0.025197, 0.210475,
		61.790039, 54.365097, 52.254402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.937321, 54.925655, 51.901360>,  <62.474133, 54.382736, 52.107071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.937321, 54.925655, 51.901360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.218918, 55.191628, 52.001167>,  <63.387875, 55.351212, 52.061054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.218918, 55.191628, 52.001167>,  <62.937321, 54.925655, 51.901360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.218918, 55.191628, 52.001167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635164, -0.432271, -0.640085,
		-0.317753, 0.609101, -0.726657,
		0.703988, 0.664935, 0.249524,
		63.430115, 55.391109, 52.076023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.142151, 55.351540, 51.395519>,  <62.937321, 54.925655, 51.901360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.142151, 55.351540, 51.395519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.435783, 55.269112, 51.654339>,  <63.611961, 55.219654, 51.809631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.435783, 55.269112, 51.654339>,  <63.142151, 55.351540, 51.395519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.435783, 55.269112, 51.654339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424071, -0.605088, -0.673819,
		0.530372, 0.769028, -0.356793,
		0.734077, -0.206070, 0.647044,
		63.656006, 55.207291, 51.848454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.851528, 55.504284, 51.092842>,  <63.142151, 55.351540, 51.395519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.851528, 55.504284, 51.092842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.858315, 55.226780, 51.380844>,  <63.862385, 55.060276, 51.553646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.858315, 55.226780, 51.380844>,  <63.851528, 55.504284, 51.092842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.858315, 55.226780, 51.380844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411410, -0.651481, -0.637428,
		0.911292, 0.307032, 0.274368,
		0.016965, -0.693761, 0.720006,
		63.863403, 55.018650, 51.596848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.577408, 55.283718, 51.171112>,  <63.851528, 55.504284, 51.092842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.577408, 55.283718, 51.171112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.319717, 54.988579, 51.251663>,  <64.165100, 54.811497, 51.299995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.319717, 54.988579, 51.251663>,  <64.577408, 55.283718, 51.171112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.319717, 54.988579, 51.251663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494289, -0.602580, -0.626559,
		0.583650, -0.304109, 0.752908,
		-0.644229, -0.737845, 0.201378,
		64.126450, 54.767223, 51.312077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.115715, 55.006989, 51.673912>,  <64.577408, 55.283718, 51.171112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.115715, 55.006989, 51.673912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.398506, 55.261929, 51.796524>,  <65.568184, 55.414890, 51.870090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.398506, 55.261929, 51.796524>,  <65.115715, 55.006989, 51.673912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.398506, 55.261929, 51.796524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671386, -0.741069, -0.007640,
		0.222289, 0.211200, -0.951831,
		0.706985, 0.637348, 0.306529,
		65.610603, 55.453133, 51.888481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.704323, 55.076370, 51.133930>,  <65.115715, 55.006989, 51.673912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.704323, 55.076370, 51.133930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.764656, 55.102650, 51.528481>,  <65.800858, 55.118420, 51.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.764656, 55.102650, 51.528481>,  <65.704323, 55.076370, 51.133930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.764656, 55.102650, 51.528481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481230, -0.876463, -0.015204,
		0.863522, 0.476966, -0.163809,
		0.150824, 0.065701, 0.986375,
		65.809906, 55.122360, 51.824394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.466606, 55.231575, 51.234127>,  <65.704323, 55.076370, 51.133930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.466606, 55.231575, 51.234127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.268715, 55.047272, 51.528870>,  <66.149979, 54.936691, 51.705715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.268715, 55.047272, 51.528870>,  <66.466606, 55.231575, 51.234127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.268715, 55.047272, 51.528870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482818, -0.850712, -0.207788,
		0.722591, 0.252969, 0.643327,
		-0.494722, -0.460756, 0.736854,
		66.120300, 54.909046, 51.749928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.917122, 54.819050, 51.607220>,  <66.466606, 55.231575, 51.234127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.917122, 54.819050, 51.607220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.558884, 54.641533, 51.594833>,  <66.343941, 54.535023, 51.587402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.558884, 54.641533, 51.594833>,  <66.917122, 54.819050, 51.607220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.558884, 54.641533, 51.594833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444422, -0.895650, -0.017347,
		-0.020039, -0.029299, 0.999370,
		-0.895593, -0.443794, -0.030969,
		66.290207, 54.508396, 51.585545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.883438, 54.361450, 52.195797>,  <66.917122, 54.819050, 51.607220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.883438, 54.361450, 52.195797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.701843, 54.270023, 51.851318>,  <66.592888, 54.215168, 51.644630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.701843, 54.270023, 51.851318>,  <66.883438, 54.361450, 52.195797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.701843, 54.270023, 51.851318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500189, -0.865247, -0.034028,
		-0.737370, -0.446209, 0.507133,
		-0.453979, -0.228571, -0.861196,
		66.565651, 54.201450, 51.592960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.524239, 54.633907, 52.757244>,  <66.883438, 54.361450, 52.195797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.524239, 54.633907, 52.757244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.699944, 54.878128, 52.493645>,  <66.805367, 55.024662, 52.335484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.699944, 54.878128, 52.493645>,  <66.524239, 54.633907, 52.757244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.699944, 54.878128, 52.493645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227175, 0.785207, 0.576057,
		0.869164, -0.103328, 0.483609,
		0.439256, 0.610551, -0.659000,
		66.831718, 55.061295, 52.295944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.007156, 55.161919, 53.062035>,  <66.524239, 54.633907, 52.757244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.007156, 55.161919, 53.062035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.845749, 55.300140, 52.723148>,  <66.748901, 55.383072, 52.519817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.845749, 55.300140, 52.723148>,  <67.007156, 55.161919, 53.062035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.845749, 55.300140, 52.723148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319757, 0.814301, 0.484427,
		0.857281, 0.466376, -0.218090,
		-0.403516, 0.345555, -0.847211,
		66.724693, 55.403809, 52.468987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.565414, 55.707920, 53.284554>,  <67.007156, 55.161919, 53.062035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.565414, 55.707920, 53.284554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.449371, 55.870445, 53.631138>,  <66.379745, 55.967960, 53.839088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.449371, 55.870445, 53.631138>,  <66.565414, 55.707920, 53.284554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.449371, 55.870445, 53.631138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214394, -0.854788, 0.472623,
		0.932669, 0.322876, 0.160873,
		-0.290111, 0.406310, 0.866457,
		66.362335, 55.992340, 53.891075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.071571, 55.455971, 53.750481>,  <66.565414, 55.707920, 53.284554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.071571, 55.455971, 53.750481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.721031, 55.562046, 53.911316>,  <66.510704, 55.625690, 54.007816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.721031, 55.562046, 53.911316>,  <67.071571, 55.455971, 53.750481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.721031, 55.562046, 53.911316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014659, -0.849090, 0.528045,
		0.481434, 0.456863, 0.747996,
		-0.876360, 0.265184, 0.402084,
		66.458122, 55.641602, 54.031940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.148819, 55.480946, 54.596451>,  <67.071571, 55.455971, 53.750481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.148819, 55.480946, 54.596451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.331955, 55.224934, 54.349632>,  <67.441833, 55.071327, 54.201542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.331955, 55.224934, 54.349632>,  <67.148819, 55.480946, 54.596451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.331955, 55.224934, 54.349632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785918, 0.615825, -0.055621,
		0.415591, -0.459482, 0.784959,
		0.457840, -0.640028, -0.617046,
		67.469307, 55.032925, 54.164520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.871002, 55.374134, 54.723728>,  <67.148819, 55.480946, 54.596451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.871002, 55.374134, 54.723728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.768791, 55.337334, 54.338760>,  <67.707466, 55.315254, 54.107780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.768791, 55.337334, 54.338760>,  <67.871002, 55.374134, 54.723728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.768791, 55.337334, 54.338760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879264, 0.391800, -0.270900,
		0.401998, -0.915439, -0.019218,
		-0.255522, -0.092004, -0.962416,
		67.692131, 55.309734, 54.050037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.317284, 55.615540, 55.330406>,  <67.871002, 55.374134, 54.723728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.317284, 55.615540, 55.330406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.715446, 55.627743, 55.366745>,  <68.954346, 55.635063, 55.388550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.715446, 55.627743, 55.366745>,  <68.317284, 55.615540, 55.330406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.715446, 55.627743, 55.366745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093603, 0.512675, 0.853465,
		-0.020541, -0.858040, 0.513171,
		0.995398, 0.030504, 0.090846,
		69.014069, 55.636894, 55.393997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.511108, 55.759369, 56.110577>,  <68.317284, 55.615540, 55.330406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.511108, 55.759369, 56.110577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.443741, 55.398354, 56.269104>,  <68.403320, 55.181744, 56.364220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.443741, 55.398354, 56.269104>,  <68.511108, 55.759369, 56.110577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.443741, 55.398354, 56.269104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281016, -0.341410, -0.896922,
		0.944809, -0.262434, -0.196125,
		-0.168424, -0.902534, 0.396315,
		68.393211, 55.127594, 56.387997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.205185, 55.959667, 55.907383>,  <68.511108, 55.759369, 56.110577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.205185, 55.959667, 55.907383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.548950, 55.881035, 55.718590>,  <69.755211, 55.833855, 55.605312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.548950, 55.881035, 55.718590>,  <69.205185, 55.959667, 55.907383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.548950, 55.881035, 55.718590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300480, 0.552704, -0.777322,
		0.413673, 0.809861, 0.415932,
		0.859410, -0.196578, -0.471986,
		69.806770, 55.822060, 55.576992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.618866, 56.198494, 56.439342>,  <69.205185, 55.959667, 55.907383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.618866, 56.198494, 56.439342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.954231, 56.346680, 56.279427>,  <70.155449, 56.435593, 56.183475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.954231, 56.346680, 56.279427>,  <69.618866, 56.198494, 56.439342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.954231, 56.346680, 56.279427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521074, 0.329651, -0.787282,
		-0.159868, 0.868382, 0.469420,
		0.838406, 0.370463, -0.399791,
		70.205750, 56.457817, 56.159489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.518517, 56.919682, 56.127140>,  <69.618866, 56.198494, 56.439342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.518517, 56.919682, 56.127140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.833092, 56.752159, 55.945534>,  <70.021835, 56.651646, 55.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.833092, 56.752159, 55.945534>,  <69.518517, 56.919682, 56.127140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.833092, 56.752159, 55.945534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155774, 0.576796, -0.801899,
		0.597714, 0.701360, 0.388370,
		0.786430, -0.418808, -0.454012,
		70.069023, 56.626518, 55.809330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.148987, 57.398167, 55.988148>,  <69.518517, 56.919682, 56.127140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.148987, 57.398167, 55.988148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.080833, 57.107624, 55.721802>,  <70.039940, 56.933300, 55.561993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.080833, 57.107624, 55.721802>,  <70.148987, 57.398167, 55.988148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.080833, 57.107624, 55.721802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362845, 0.674515, -0.642941,
		0.916139, 0.132056, -0.378484,
		-0.170389, -0.726354, -0.665865,
		70.029716, 56.889717, 55.522041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.379211, 57.583309, 55.184929>,  <70.148987, 57.398167, 55.988148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.379211, 57.583309, 55.184929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.069489, 57.333748, 55.227272>,  <69.883659, 57.184013, 55.252678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.069489, 57.333748, 55.227272>,  <70.379211, 57.583309, 55.184929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.069489, 57.333748, 55.227272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608825, 0.688824, -0.393514,
		0.172598, -0.369147, -0.913204,
		-0.774301, -0.623901, 0.105856,
		69.837196, 57.146576, 55.259029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.486824, 56.844360, 54.969543>,  <70.379211, 57.583309, 55.184929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.486824, 56.844360, 54.969543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.667618, 56.888107, 54.615425>,  <70.776093, 56.914356, 54.402954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.667618, 56.888107, 54.615425>,  <70.486824, 56.844360, 54.969543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.667618, 56.888107, 54.615425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574268, 0.723761, 0.382603,
		0.682588, -0.681328, 0.264321,
		0.451984, 0.109369, -0.885296,
		70.803215, 56.920918, 54.349834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.736298, 56.169186, 55.077961>,  <70.486824, 56.844360, 54.969543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.736298, 56.169186, 55.077961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.915115, 55.811394, 55.081116>,  <71.022408, 55.596718, 55.083008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.915115, 55.811394, 55.081116>,  <70.736298, 56.169186, 55.077961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.915115, 55.811394, 55.081116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213992, 0.115504, 0.969983,
		-0.868542, -0.431930, 0.243046,
		0.447037, -0.894480, 0.007890,
		71.049225, 55.543049, 55.083485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.439980, 55.826672, 55.611946>,  <70.736298, 56.169186, 55.077961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.439980, 55.826672, 55.611946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.805267, 55.694130, 55.517075>,  <71.024437, 55.614605, 55.460152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.805267, 55.694130, 55.517075>,  <70.439980, 55.826672, 55.611946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.805267, 55.694130, 55.517075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329210, 0.256924, 0.908631,
		-0.240142, -0.907852, 0.343711,
		0.913210, -0.331353, -0.237175,
		71.079231, 55.594723, 55.445923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.729233, 55.281387, 56.054504>,  <70.439980, 55.826672, 55.611946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.729233, 55.281387, 56.054504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.037544, 55.494659, 55.915009>,  <71.222534, 55.622623, 55.831310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.037544, 55.494659, 55.915009>,  <70.729233, 55.281387, 56.054504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.037544, 55.494659, 55.915009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201634, 0.315098, 0.927393,
		0.604358, -0.785130, 0.135361,
		0.770775, 0.533184, -0.348741,
		71.268776, 55.654613, 55.810387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.869171, 55.359638, 56.642693>,  <70.729233, 55.281387, 56.054504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.869171, 55.359638, 56.642693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.100311, 55.594406, 56.415848>,  <71.238991, 55.735268, 56.279739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.100311, 55.594406, 56.415848>,  <70.869171, 55.359638, 56.642693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.100311, 55.594406, 56.415848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246219, 0.537127, 0.806766,
		0.778120, -0.605819, 0.165865,
		0.577845, 0.586922, -0.567113,
		71.273666, 55.770481, 56.245712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.499268, 55.547142, 57.112766>,  <70.869171, 55.359638, 56.642693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.499268, 55.547142, 57.112766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.434052, 55.831268, 56.838867>,  <71.394920, 56.001743, 56.674530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.434052, 55.831268, 56.838867>,  <71.499268, 55.547142, 57.112766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.434052, 55.831268, 56.838867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136633, 0.703598, 0.697339,
		0.977114, 0.020131, -0.211763,
		-0.163034, 0.710313, -0.684745,
		71.385139, 56.044361, 56.633442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.745857, 56.095558, 57.616016>,  <71.499268, 55.547142, 57.112766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.745857, 56.095558, 57.616016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.073944, 56.323475, 57.595665>,  <72.270798, 56.460224, 57.583454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.073944, 56.323475, 57.595665>,  <71.745857, 56.095558, 57.616016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.073944, 56.323475, 57.595665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564064, 0.790736, -0.237844,
		-0.095287, 0.223783, 0.969970,
		0.820215, 0.569788, -0.050881,
		72.320007, 56.494411, 57.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.756042, 56.795422, 57.956841>,  <71.745857, 56.095558, 57.616016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.756042, 56.795422, 57.956841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.624565, 57.151043, 58.084312>,  <71.545677, 57.364414, 58.160793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.624565, 57.151043, 58.084312>,  <71.756042, 56.795422, 57.956841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.624565, 57.151043, 58.084312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509919, -0.116959, 0.852234,
		0.794951, 0.442616, -0.414901,
		-0.328686, 0.889051, 0.318676,
		71.525963, 57.417759, 58.179916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.872795, 56.495060, 58.561161>,  <71.756042, 56.795422, 57.956841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.872795, 56.495060, 58.561161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.023262, 56.811035, 58.754860>,  <72.113541, 57.000622, 58.871078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.023262, 56.811035, 58.754860>,  <71.872795, 56.495060, 58.561161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.023262, 56.811035, 58.754860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331170, -0.602738, 0.725971,
		0.865345, -0.112720, -0.488336,
		0.376170, 0.789937, 0.484247,
		72.136116, 57.048016, 58.900135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.179543, 56.216740, 59.105556>,  <71.872795, 56.495060, 58.561161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.179543, 56.216740, 59.105556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.262016, 56.597317, 59.196991>,  <72.311501, 56.825661, 59.251850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.262016, 56.597317, 59.196991>,  <72.179543, 56.216740, 59.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.262016, 56.597317, 59.196991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203438, -0.270181, 0.941071,
		0.957133, -0.147525, -0.249264,
		0.206178, 0.951440, 0.228587,
		72.323868, 56.882748, 59.265568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.880112, 56.345062, 59.503651>,  <72.179543, 56.216740, 59.105556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.880112, 56.345062, 59.503651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.575829, 56.592529, 59.582222>,  <72.393257, 56.741009, 59.629364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.575829, 56.592529, 59.582222>,  <72.880112, 56.345062, 59.503651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.575829, 56.592529, 59.582222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160221, -0.114281, 0.980443,
		0.629016, 0.777297, -0.012190,
		-0.760703, 0.618667, 0.196424,
		72.347618, 56.778130, 59.641148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.045578, 56.750832, 60.160538>,  <72.880112, 56.345062, 59.503651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.045578, 56.750832, 60.160538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650070, 56.770958, 60.104256>,  <72.412766, 56.783031, 60.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650070, 56.770958, 60.104256>,  <73.045578, 56.750832, 60.160538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.650070, 56.770958, 60.104256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146936, -0.156086, 0.976753,
		0.027180, 0.986461, 0.161727,
		-0.988773, 0.050312, -0.140704,
		72.353439, 56.786053, 60.062046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.569496, 56.959881, 59.814819>,  <73.045578, 56.750832, 60.160538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.569496, 56.959881, 59.814819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.633171, 57.255936, 59.553482>,  <73.671379, 57.433567, 59.396679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.633171, 57.255936, 59.553482>,  <73.569496, 56.959881, 59.814819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.633171, 57.255936, 59.553482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986984, 0.134615, -0.087981,
		0.022833, 0.658849, 0.751929,
		0.159187, 0.740133, -0.653347,
		73.680923, 57.477974, 59.357479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.340034, 57.610092, 60.052616>,  <73.569496, 56.959881, 59.814819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.340034, 57.610092, 60.052616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.299461, 57.575890, 59.656151>,  <73.275116, 57.555367, 59.418274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.299461, 57.575890, 59.656151>,  <73.340034, 57.610092, 60.052616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.299461, 57.575890, 59.656151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992663, -0.057214, 0.106522,
		-0.065817, 0.994693, -0.079079,
		-0.101433, -0.085510, -0.991161,
		73.269035, 57.550236, 59.358803>
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
