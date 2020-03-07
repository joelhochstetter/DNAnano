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
	<36.258472, 52.268345, 50.550095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068954, 52.567451, 50.364037>,  <35.955242, 52.746914, 50.252403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068954, 52.567451, 50.364037>,  <36.258472, 52.268345, 50.550095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068954, 52.567451, 50.364037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681972, 0.645737, 0.343421,
		0.557160, -0.154504, -0.815905,
		-0.473800, 0.747765, -0.465146,
		35.926815, 52.791782, 50.224491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701797, 52.556549, 50.062252>,  <36.258472, 52.268345, 50.550095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701797, 52.556549, 50.062252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416100, 52.778671, 50.232658>,  <36.244682, 52.911945, 50.334904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416100, 52.778671, 50.232658>,  <36.701797, 52.556549, 50.062252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416100, 52.778671, 50.232658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683877, 0.683197, 0.256035,
		-0.148879, 0.474217, -0.867728,
		-0.714246, 0.555302, 0.426020,
		36.201824, 52.945263, 50.360466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975822, 53.142410, 50.388512>,  <36.701797, 52.556549, 50.062252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975822, 53.142410, 50.388512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290764, 53.141224, 50.635113>,  <37.479729, 53.140511, 50.783073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290764, 53.141224, 50.635113>,  <36.975822, 53.142410, 50.388512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290764, 53.141224, 50.635113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115464, 0.983003, -0.142733,
		-0.605597, 0.183564, 0.774310,
		0.787350, -0.002966, 0.616499,
		37.526970, 53.140335, 50.820061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078598, 53.657528, 51.055901>,  <36.975822, 53.142410, 50.388512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078598, 53.657528, 51.055901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450924, 53.586327, 50.928215>,  <37.674320, 53.543606, 50.851604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450924, 53.586327, 50.928215>,  <37.078598, 53.657528, 51.055901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450924, 53.586327, 50.928215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220884, 0.969816, 0.103285,
		0.291195, -0.166649, 0.942037,
		0.930815, -0.178005, -0.319216,
		37.730167, 53.532925, 50.832451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537956, 53.960163, 51.546242>,  <37.078598, 53.657528, 51.055901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537956, 53.960163, 51.546242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658451, 53.936996, 51.165527>,  <37.730747, 53.923096, 50.937099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658451, 53.936996, 51.165527>,  <37.537956, 53.960163, 51.546242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658451, 53.936996, 51.165527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152069, 0.988297, -0.012012,
		0.941345, -0.141119, 0.306521,
		0.301239, -0.057920, -0.951788,
		37.748821, 53.919621, 50.879990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297516, 54.212471, 51.321754>,  <37.537956, 53.960163, 51.546242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297516, 54.212471, 51.321754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991623, 54.282784, 51.073792>,  <37.808086, 54.324970, 50.925014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991623, 54.282784, 51.073792>,  <38.297516, 54.212471, 51.321754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991623, 54.282784, 51.073792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054640, 0.940912, 0.334214,
		0.642030, 0.289456, -0.709939,
		-0.764730, 0.175784, -0.619909,
		37.762203, 54.335518, 50.887817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317875, 53.856899, 51.966099>,  <38.297516, 54.212471, 51.321754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317875, 53.856899, 51.966099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476696, 54.197647, 52.102722>,  <38.571987, 54.402096, 52.184696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476696, 54.197647, 52.102722>,  <38.317875, 53.856899, 51.966099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476696, 54.197647, 52.102722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489139, 0.511305, -0.706619,
		-0.776590, 0.113495, 0.619699,
		0.397053, 0.851872, 0.341560,
		38.595814, 54.453209, 52.205189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197632, 54.355541, 52.504028>,  <38.317875, 53.856899, 51.966099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197632, 54.355541, 52.504028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516842, 54.214096, 52.699215>,  <38.708370, 54.129230, 52.816326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516842, 54.214096, 52.699215>,  <38.197632, 54.355541, 52.504028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516842, 54.214096, 52.699215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072432, 0.860151, 0.504869,
		-0.598252, -0.367555, 0.712037,
		0.798027, -0.353614, 0.487965,
		38.756248, 54.108013, 52.845604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053848, 54.209084, 53.244774>,  <38.197632, 54.355541, 52.504028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053848, 54.209084, 53.244774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440701, 54.292847, 53.187080>,  <38.672813, 54.343105, 53.152466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440701, 54.292847, 53.187080>,  <38.053848, 54.209084, 53.244774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440701, 54.292847, 53.187080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060549, 0.740585, 0.669229,
		0.246955, -0.638501, 0.728924,
		0.967133, 0.209405, -0.144231,
		38.730839, 54.355667, 53.143810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577915, 54.301826, 53.882931>,  <38.053848, 54.209084, 53.244774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577915, 54.301826, 53.882931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664726, 54.536743, 53.571033>,  <38.716812, 54.677692, 53.383896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664726, 54.536743, 53.571033>,  <38.577915, 54.301826, 53.882931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664726, 54.536743, 53.571033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025836, 0.795042, 0.606004,
		0.975824, -0.151663, 0.157370,
		0.217024, 0.587288, -0.779740,
		38.729832, 54.712929, 53.337112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108910, 54.743126, 54.021496>,  <38.577915, 54.301826, 53.882931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108910, 54.743126, 54.021496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925930, 54.943317, 53.727486>,  <38.816143, 55.063431, 53.551079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925930, 54.943317, 53.727486>,  <39.108910, 54.743126, 54.021496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925930, 54.943317, 53.727486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147850, 0.772269, 0.617852,
		0.876860, 0.391307, -0.279275,
		-0.457445, 0.500479, -0.735027,
		38.788696, 55.093460, 53.506977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388454, 55.359665, 54.130997>,  <39.108910, 54.743126, 54.021496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388454, 55.359665, 54.130997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043159, 55.399666, 53.933079>,  <38.835983, 55.423668, 53.814327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043159, 55.399666, 53.933079>,  <39.388454, 55.359665, 54.130997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043159, 55.399666, 53.933079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145926, 0.888896, 0.434245,
		0.483249, 0.447059, -0.752734,
		-0.863236, 0.100005, -0.494796,
		38.784187, 55.429668, 53.784641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335667, 55.955498, 53.703365>,  <39.388454, 55.359665, 54.130997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335667, 55.955498, 53.703365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969906, 55.854935, 53.830276>,  <38.750450, 55.794598, 53.906422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969906, 55.854935, 53.830276>,  <39.335667, 55.955498, 53.703365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969906, 55.854935, 53.830276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082477, 0.883028, 0.462017,
		-0.396320, 0.396301, -0.828177,
		-0.914401, -0.251412, 0.317276,
		38.695587, 55.779510, 53.925461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609432, 56.576672, 54.021210>,  <39.335667, 55.955498, 53.703365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609432, 56.576672, 54.021210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316792, 56.811478, 54.159874>,  <39.141209, 56.952362, 54.243073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316792, 56.811478, 54.159874>,  <39.609432, 56.576672, 54.021210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316792, 56.811478, 54.159874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340337, -0.126111, 0.931808,
		0.590705, 0.799691, -0.107521,
		-0.731600, 0.587017, 0.346659,
		39.097313, 56.987583, 54.263870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936855, 57.003944, 54.425369>,  <39.609432, 56.576672, 54.021210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936855, 57.003944, 54.425369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561302, 57.003204, 54.563057>,  <39.335968, 57.002762, 54.645672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561302, 57.003204, 54.563057>,  <39.936855, 57.003944, 54.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561302, 57.003204, 54.563057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337323, -0.204222, 0.918970,
		0.068600, 0.978923, 0.192365,
		-0.938886, -0.001847, 0.344223,
		39.279636, 57.002651, 54.666325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440166, 57.058708, 54.119877>,  <39.936855, 57.003944, 54.425369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440166, 57.058708, 54.119877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473083, 57.127075, 54.512615>,  <40.492836, 57.168095, 54.748257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473083, 57.127075, 54.512615>,  <40.440166, 57.058708, 54.119877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473083, 57.127075, 54.512615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944183, 0.301949, -0.131704,
		-0.318977, 0.937877, -0.136531,
		0.082297, 0.170921, 0.981842,
		40.497772, 57.178352, 54.807167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937592, 57.597694, 54.207909>,  <40.440166, 57.058708, 54.119877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937592, 57.597694, 54.207909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943264, 57.399612, 54.555374>,  <40.946667, 57.280762, 54.763851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943264, 57.399612, 54.555374>,  <40.937592, 57.597694, 54.207909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943264, 57.399612, 54.555374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992664, -0.097353, -0.071702,
		0.120074, 0.863304, 0.490191,
		0.014179, -0.495205, 0.868661,
		40.947517, 57.251053, 54.815971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450958, 57.925041, 54.701611>,  <40.937592, 57.597694, 54.207909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450958, 57.925041, 54.701611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407536, 57.527752, 54.718178>,  <41.381481, 57.289379, 54.728119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407536, 57.527752, 54.718178>,  <41.450958, 57.925041, 54.701611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407536, 57.527752, 54.718178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984831, -0.113125, -0.131567,
		0.135362, 0.026508, 0.990442,
		-0.108556, -0.993227, 0.041419,
		41.374969, 57.229782, 54.730602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840832, 57.513954, 55.266254>,  <41.450958, 57.925041, 54.701611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840832, 57.513954, 55.266254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778671, 57.268921, 54.956261>,  <41.741375, 57.121902, 54.770264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778671, 57.268921, 54.956261>,  <41.840832, 57.513954, 55.266254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778671, 57.268921, 54.956261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982628, -0.015284, -0.184959,
		0.101457, -0.790260, 0.604314,
		-0.155402, -0.612581, -0.774981,
		41.732052, 57.085148, 54.723766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371929, 56.930733, 55.394161>,  <41.840832, 57.513954, 55.266254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371929, 56.930733, 55.394161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239372, 56.994087, 55.022118>,  <42.159840, 57.032101, 54.798893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239372, 56.994087, 55.022118>,  <42.371929, 56.930733, 55.394161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239372, 56.994087, 55.022118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920449, -0.162277, -0.355583,
		-0.207254, -0.973951, -0.092010,
		-0.331389, 0.158387, -0.930105,
		42.139954, 57.041603, 54.743088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478252, 56.260269, 54.894489>,  <42.371929, 56.930733, 55.394161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478252, 56.260269, 54.894489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488155, 56.628376, 54.738281>,  <42.494095, 56.849239, 54.644558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488155, 56.628376, 54.738281>,  <42.478252, 56.260269, 54.894489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488155, 56.628376, 54.738281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905757, -0.185965, -0.380818,
		-0.423075, -0.344288, -0.838137,
		0.024753, 0.920262, -0.390518,
		42.495583, 56.904453, 54.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514008, 56.275841, 54.085423>,  <42.478252, 56.260269, 54.894489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514008, 56.275841, 54.085423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719643, 56.579426, 54.245270>,  <42.843025, 56.761578, 54.341179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719643, 56.579426, 54.245270>,  <42.514008, 56.275841, 54.085423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719643, 56.579426, 54.245270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728883, -0.140955, -0.669971,
		-0.452152, 0.635700, -0.625655,
		0.514090, 0.758958, 0.399618,
		42.873871, 56.807114, 54.365154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875511, 56.533798, 53.406307>,  <42.514008, 56.275841, 54.085423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875511, 56.533798, 53.406307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015842, 56.632504, 53.767643>,  <43.100040, 56.691727, 53.984444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015842, 56.632504, 53.767643>,  <42.875511, 56.533798, 53.406307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015842, 56.632504, 53.767643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932145, 0.000269, -0.362086,
		-0.089593, 0.969076, -0.229924,
		0.350827, 0.246763, 0.903343,
		43.121090, 56.706532, 54.038647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697155, 56.781635, 53.352360>,  <42.875511, 56.533798, 53.406307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697155, 56.781635, 53.352360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645222, 56.625645, 53.717010>,  <43.614063, 56.532051, 53.935799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645222, 56.625645, 53.717010>,  <43.697155, 56.781635, 53.352360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645222, 56.625645, 53.717010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953524, -0.301236, 0.006937,
		0.271909, 0.870157, 0.410966,
		-0.129834, -0.389980, 0.911624,
		43.606270, 56.508652, 53.990498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101654, 57.068245, 53.934822>,  <43.697155, 56.781635, 53.352360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101654, 57.068245, 53.934822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044285, 56.674088, 53.971527>,  <44.009865, 56.437592, 53.993549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044285, 56.674088, 53.971527>,  <44.101654, 57.068245, 53.934822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044285, 56.674088, 53.971527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989660, -0.142653, 0.014913,
		-0.001605, 0.092955, 0.995669,
		-0.143422, -0.985398, 0.091765,
		44.001259, 56.378468, 53.999058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390606, 56.633636, 54.572948>,  <44.101654, 57.068245, 53.934822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390606, 56.633636, 54.572948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431293, 56.455742, 54.217003>,  <44.455708, 56.349007, 54.003433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431293, 56.455742, 54.217003>,  <44.390606, 56.633636, 54.572948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431293, 56.455742, 54.217003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990378, -0.039101, 0.132748,
		-0.093832, -0.894808, 0.436479,
		0.101718, -0.444735, -0.889867,
		44.461807, 56.322323, 53.950043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838734, 56.107319, 54.554588>,  <44.390606, 56.633636, 54.572948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838734, 56.107319, 54.554588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852081, 56.243580, 54.178749>,  <44.860092, 56.325336, 53.953247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852081, 56.243580, 54.178749>,  <44.838734, 56.107319, 54.554588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852081, 56.243580, 54.178749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984637, 0.150012, 0.089361,
		0.171392, -0.928144, -0.330415,
		0.033374, 0.340655, -0.939596,
		44.862095, 56.345776, 53.896870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316448, 55.846821, 54.033211>,  <44.838734, 56.107319, 54.554588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316448, 55.846821, 54.033211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224392, 56.230480, 53.967392>,  <45.169159, 56.460674, 53.927902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224392, 56.230480, 53.967392>,  <45.316448, 55.846821, 54.033211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224392, 56.230480, 53.967392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882201, 0.277000, 0.380777,
		0.410799, -0.057528, -0.909909,
		-0.230140, 0.959146, -0.164543,
		45.155350, 56.518223, 53.918030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632812, 56.237503, 53.490364>,  <45.316448, 55.846821, 54.033211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632812, 56.237503, 53.490364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540874, 56.455238, 53.813068>,  <45.485714, 56.585880, 54.006691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540874, 56.455238, 53.813068>,  <45.632812, 56.237503, 53.490364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540874, 56.455238, 53.813068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970177, 0.062568, 0.234182,
		0.076997, 0.836528, -0.542487,
		-0.229842, 0.544340, 0.806763,
		45.471924, 56.618542, 54.055096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081093, 56.804611, 53.464039>,  <45.632812, 56.237503, 53.490364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081093, 56.804611, 53.464039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960808, 56.745510, 53.840919>,  <45.888638, 56.710049, 54.067047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960808, 56.745510, 53.840919>,  <46.081093, 56.804611, 53.464039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960808, 56.745510, 53.840919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939647, 0.123163, 0.319210,
		-0.163208, 0.981326, 0.101797,
		-0.300711, -0.147750, 0.942201,
		45.870594, 56.701183, 54.123581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397144, 57.278736, 54.053394>,  <46.081093, 56.804611, 53.464039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397144, 57.278736, 54.053394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295815, 56.941841, 54.243748>,  <46.235016, 56.739704, 54.357960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295815, 56.941841, 54.243748>,  <46.397144, 57.278736, 54.053394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295815, 56.941841, 54.243748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900377, -0.025379, 0.434369,
		-0.353763, 0.538513, 0.764758,
		-0.253323, -0.842235, 0.475887,
		46.219818, 56.689171, 54.386513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341053, 57.343830, 54.804020>,  <46.397144, 57.278736, 54.053394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341053, 57.343830, 54.804020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423378, 56.960987, 54.722443>,  <46.472775, 56.731281, 54.673496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423378, 56.960987, 54.722443>,  <46.341053, 57.343830, 54.804020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423378, 56.960987, 54.722443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850374, 0.071796, 0.521257,
		-0.484255, -0.280708, 0.828674,
		0.205817, -0.957104, -0.203939,
		46.485123, 56.673855, 54.661263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539658, 56.910187, 55.427395>,  <46.341053, 57.343830, 54.804020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539658, 56.910187, 55.427395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700283, 56.778885, 55.085403>,  <46.796658, 56.700104, 54.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700283, 56.778885, 55.085403>,  <46.539658, 56.910187, 55.427395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700283, 56.778885, 55.085403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912117, 0.059351, 0.405611,
		-0.082399, -0.942723, 0.323240,
		0.401563, -0.328254, -0.854983,
		46.820751, 56.680408, 54.828907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006466, 56.314819, 55.480854>,  <46.539658, 56.910187, 55.427395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006466, 56.314819, 55.480854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082085, 56.581772, 55.192726>,  <47.127457, 56.741943, 55.019852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082085, 56.581772, 55.192726>,  <47.006466, 56.314819, 55.480854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082085, 56.581772, 55.192726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795989, 0.325407, 0.510403,
		0.575032, -0.669855, -0.469714,
		0.189048, 0.667386, -0.720317,
		47.138798, 56.781986, 54.976631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.628414, 56.344696, 55.139984>,  <47.006466, 56.314819, 55.480854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.628414, 56.344696, 55.139984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494663, 56.721657, 55.143433>,  <47.414413, 56.947834, 55.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494663, 56.721657, 55.143433>,  <47.628414, 56.344696, 55.139984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.494663, 56.721657, 55.143433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724719, 0.251271, 0.641596,
		0.602474, 0.220782, -0.766994,
		-0.334376, 0.942400, 0.008621,
		47.394352, 57.004375, 55.146019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.155838, 56.762257, 54.886616>,  <47.628414, 56.344696, 55.139984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.155838, 56.762257, 54.886616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.929451, 56.969963, 55.142754>,  <47.793621, 57.094589, 55.296436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.929451, 56.969963, 55.142754>,  <48.155838, 56.762257, 54.886616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.929451, 56.969963, 55.142754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792606, 0.128996, 0.595932,
		0.226847, 0.844819, -0.484584,
		-0.565964, 0.519270, 0.640346,
		47.759663, 57.125744, 55.334858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.282383, 57.437664, 54.818626>,  <48.155838, 56.762257, 54.886616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.282383, 57.437664, 54.818626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.229866, 57.310822, 55.194328>,  <48.198357, 57.234715, 55.419750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.229866, 57.310822, 55.194328>,  <48.282383, 57.437664, 54.818626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.229866, 57.310822, 55.194328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989029, 0.022813, 0.145949,
		-0.067709, 0.948115, 0.310633,
		-0.131290, -0.317107, 0.939258,
		48.190479, 57.215691, 55.476105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.433834, 58.049252, 55.346359>,  <48.282383, 57.437664, 54.818626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.433834, 58.049252, 55.346359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.491501, 57.666992, 55.449081>,  <48.526100, 57.437637, 55.510715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.491501, 57.666992, 55.449081>,  <48.433834, 58.049252, 55.346359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.491501, 57.666992, 55.449081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973986, 0.182889, 0.133798,
		-0.174831, 0.230838, 0.957156,
		0.144168, -0.955649, 0.256807,
		48.534752, 57.380299, 55.526123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.835003, 57.931843, 55.946167>,  <48.433834, 58.049252, 55.346359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.835003, 57.931843, 55.946167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.903538, 57.612709, 55.714958>,  <48.944660, 57.421230, 55.576233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.903538, 57.612709, 55.714958>,  <48.835003, 57.931843, 55.946167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.903538, 57.612709, 55.714958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965558, 0.019376, 0.259465,
		-0.195809, -0.602570, 0.773672,
		0.171336, -0.797831, -0.578023,
		48.954937, 57.373360, 55.541550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.327774, 57.537979, 56.298435>,  <48.835003, 57.931843, 55.946167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.327774, 57.537979, 56.298435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.387199, 57.435802, 55.916298>,  <49.422855, 57.374496, 55.687016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.387199, 57.435802, 55.916298>,  <49.327774, 57.537979, 56.298435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.387199, 57.435802, 55.916298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986676, 0.103075, 0.125880,
		0.066317, -0.961315, 0.267350,
		0.148568, -0.255440, -0.955342,
		49.431770, 57.359169, 55.629696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.906628, 57.143009, 56.296116>,  <49.327774, 57.537979, 56.298435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.906628, 57.143009, 56.296116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.872791, 57.328865, 55.943535>,  <49.852489, 57.440380, 55.731987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.872791, 57.328865, 55.943535>,  <49.906628, 57.143009, 56.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.872791, 57.328865, 55.943535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996172, 0.019858, -0.085135,
		-0.022054, -0.885276, -0.464543,
		-0.084592, 0.464642, -0.881448,
		49.847412, 57.468258, 55.679100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.328259, 56.712761, 55.858425>,  <49.906628, 57.143009, 56.296116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.328259, 56.712761, 55.858425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.300274, 57.092705, 55.736526>,  <50.283482, 57.320671, 55.663387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.300274, 57.092705, 55.736526>,  <50.328259, 56.712761, 55.858425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.300274, 57.092705, 55.736526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992023, 0.098363, 0.078839,
		0.104862, -0.296802, -0.949164,
		-0.069963, 0.949860, -0.304749,
		50.279285, 57.377663, 55.645103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.884537, 56.970879, 55.364063>,  <50.328259, 56.712761, 55.858425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.884537, 56.970879, 55.364063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.781910, 57.333961, 55.496872>,  <50.720333, 57.551811, 55.576557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.781910, 57.333961, 55.496872>,  <50.884537, 56.970879, 55.364063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.781910, 57.333961, 55.496872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964071, 0.215863, 0.154824,
		0.068863, 0.359819, -0.930477,
		-0.256564, 0.907708, 0.332026,
		50.704941, 57.606274, 55.596481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.290405, 56.626663, 55.059273>,  <50.884537, 56.970879, 55.364063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.290405, 56.626663, 55.059273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.509502, 56.349148, 54.872238>,  <50.640961, 56.182640, 54.760017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.509502, 56.349148, 54.872238>,  <50.290405, 56.626663, 55.059273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.509502, 56.349148, 54.872238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744459, 0.149143, 0.650797,
		-0.381779, -0.704567, 0.598189,
		0.547746, -0.693787, -0.467582,
		50.673828, 56.141010, 54.731964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.620617, 56.150059, 55.500610>,  <50.290405, 56.626663, 55.059273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.620617, 56.150059, 55.500610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.863808, 56.175152, 55.184021>,  <51.009720, 56.190208, 54.994068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.863808, 56.175152, 55.184021>,  <50.620617, 56.150059, 55.500610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.863808, 56.175152, 55.184021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793910, -0.037107, 0.606902,
		0.008704, -0.997340, -0.072365,
		0.607973, 0.062733, -0.791475,
		51.046200, 56.193970, 54.946579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.139191, 55.495720, 55.391724>,  <50.620617, 56.150059, 55.500610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.139191, 55.495720, 55.391724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.283810, 55.848175, 55.269821>,  <51.370579, 56.059650, 55.196682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.283810, 55.848175, 55.269821>,  <51.139191, 55.495720, 55.391724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.283810, 55.848175, 55.269821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701340, -0.041653, 0.711609,
		0.614335, -0.471013, -0.633039,
		0.361545, 0.881142, -0.304751,
		51.392273, 56.112518, 55.178394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.909943, 55.492542, 55.006351>,  <51.139191, 55.495720, 55.391724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.909943, 55.492542, 55.006351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.829323, 55.827148, 55.210167>,  <51.780952, 56.027912, 55.332455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.829323, 55.827148, 55.210167>,  <51.909943, 55.492542, 55.006351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.829323, 55.827148, 55.210167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838540, -0.121484, 0.531124,
		0.506192, 0.534313, -0.676963,
		-0.201547, 0.836511, 0.509537,
		51.768860, 56.078102, 55.363029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.485760, 55.864590, 55.143356>,  <51.909943, 55.492542, 55.006351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.485760, 55.864590, 55.143356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.250126, 56.006416, 55.433807>,  <52.108746, 56.091511, 55.608078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.250126, 56.006416, 55.433807>,  <52.485760, 55.864590, 55.143356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.250126, 56.006416, 55.433807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753617, -0.083218, 0.652025,
		0.291611, 0.931321, -0.218183,
		-0.589088, 0.354564, 0.726127,
		52.073399, 56.112785, 55.651646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.850327, 56.402573, 55.425941>,  <52.485760, 55.864590, 55.143356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.850327, 56.402573, 55.425941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.602097, 56.269737, 55.710083>,  <52.453159, 56.190037, 55.880569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.602097, 56.269737, 55.710083>,  <52.850327, 56.402573, 55.425941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.602097, 56.269737, 55.710083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777868, -0.146287, 0.611164,
		-0.099042, 0.931837, 0.349100,
		-0.620574, -0.332085, 0.710358,
		52.415924, 56.170113, 55.923191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.535641, 56.480007, 55.782528>,  <52.850327, 56.402573, 55.425941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.535641, 56.480007, 55.782528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.514252, 56.496651, 56.181610>,  <53.501419, 56.506638, 56.421059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.514252, 56.496651, 56.181610>,  <53.535641, 56.480007, 55.782528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.514252, 56.496651, 56.181610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997605, -0.041670, 0.055207,
		0.043871, 0.998265, -0.039278,
		-0.053474, 0.041606, 0.997702,
		53.498211, 56.509132, 56.480919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.188393, 56.766697, 56.111938>,  <53.535641, 56.480007, 55.782528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.188393, 56.766697, 56.111938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.044579, 56.583458, 56.437119>,  <53.958290, 56.473515, 56.632225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.044579, 56.583458, 56.437119>,  <54.188393, 56.766697, 56.111938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.044579, 56.583458, 56.437119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917436, -0.014409, 0.397623,
		-0.170434, 0.888787, 0.425452,
		-0.359533, -0.458093, 0.812950,
		53.936718, 56.446030, 56.681004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.340969, 57.172726, 56.735958>,  <54.188393, 56.766697, 56.111938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.340969, 57.172726, 56.735958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.351471, 56.776680, 56.791061>,  <54.357773, 56.539051, 56.824123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.351471, 56.776680, 56.791061>,  <54.340969, 57.172726, 56.735958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.351471, 56.776680, 56.791061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929802, 0.074798, 0.360379,
		-0.367122, 0.118628, 0.922577,
		0.026256, -0.990117, 0.137761,
		54.359348, 56.479645, 56.832390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.240444, 57.559601, 56.072330>,  <54.340969, 57.172726, 56.735958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.240444, 57.559601, 56.072330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.467888, 57.887711, 56.047554>,  <54.604355, 58.084576, 56.032688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.467888, 57.887711, 56.047554>,  <54.240444, 57.559601, 56.072330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.467888, 57.887711, 56.047554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649120, -0.401169, 0.646302,
		0.505294, -0.407702, -0.760563,
		0.568613, 0.820270, -0.061939,
		54.638474, 58.133793, 56.028973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.941402, 57.341019, 56.359352>,  <54.240444, 57.559601, 56.072330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.941402, 57.341019, 56.359352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.999748, 57.724636, 56.262222>,  <55.034756, 57.954807, 56.203945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.999748, 57.724636, 56.262222>,  <54.941402, 57.341019, 56.359352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.999748, 57.724636, 56.262222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912166, -0.035352, 0.408293,
		0.382985, -0.281054, -0.879961,
		0.145860, 0.959041, -0.242828,
		55.043507, 58.012348, 56.189373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.569733, 57.433662, 55.877777>,  <54.941402, 57.341019, 56.359352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.569733, 57.433662, 55.877777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.498169, 57.762390, 56.094147>,  <55.455231, 57.959629, 56.223969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.498169, 57.762390, 56.094147>,  <55.569733, 57.433662, 55.877777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.498169, 57.762390, 56.094147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892449, -0.095881, 0.440842,
		0.414158, 0.561620, -0.716279,
		-0.178908, 0.821821, 0.540927,
		55.444496, 58.008938, 56.256424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.046432, 58.010174, 55.697701>,  <55.569733, 57.433662, 55.877777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.046432, 58.010174, 55.697701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.932686, 58.024773, 56.080910>,  <55.864437, 58.033531, 56.310833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.932686, 58.024773, 56.080910>,  <56.046432, 58.010174, 55.697701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.932686, 58.024773, 56.080910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958364, -0.016208, 0.285090,
		0.025933, 0.999202, -0.030369,
		-0.284370, 0.036498, 0.958020,
		55.847374, 58.035721, 56.368317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.393036, 58.525406, 55.975098>,  <56.046432, 58.010174, 55.697701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.393036, 58.525406, 55.975098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.329483, 58.303596, 56.301842>,  <56.291351, 58.170509, 56.497887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.329483, 58.303596, 56.301842>,  <56.393036, 58.525406, 55.975098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.329483, 58.303596, 56.301842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956079, 0.119998, 0.267420,
		-0.246312, 0.823472, 0.511102,
		-0.158881, -0.554522, 0.816861,
		56.281818, 58.137241, 56.546902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.263042, 58.591862, 56.118336>,  <56.393036, 58.525406, 55.975098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.263042, 58.591862, 56.118336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.556427, 58.833595, 56.242790>,  <57.732460, 58.978638, 56.317463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.556427, 58.833595, 56.242790>,  <57.263042, 58.591862, 56.118336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.556427, 58.833595, 56.242790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634360, -0.773014, 0.006049,
		0.244170, 0.192937, -0.950345,
		0.733463, 0.604338, 0.311138,
		57.776466, 59.014896, 56.336132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.829834, 58.335808, 55.803394>,  <57.263042, 58.591862, 56.118336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.829834, 58.335808, 55.803394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.952255, 58.550320, 56.118034>,  <58.025707, 58.679028, 56.306816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.952255, 58.550320, 56.118034>,  <57.829834, 58.335808, 55.803394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.952255, 58.550320, 56.118034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756597, -0.638513, 0.140932,
		0.577831, 0.552005, -0.601167,
		0.306058, 0.536276, 0.786598,
		58.044071, 58.711201, 56.354015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.546635, 58.594631, 55.734505>,  <57.829834, 58.335808, 55.803394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.546635, 58.594631, 55.734505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.451172, 58.487499, 56.107880>,  <58.393894, 58.423222, 56.331905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.451172, 58.487499, 56.107880>,  <58.546635, 58.594631, 55.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.451172, 58.487499, 56.107880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857177, -0.509841, 0.072874,
		0.456388, 0.817515, 0.351253,
		-0.238659, -0.267827, 0.933440,
		58.379574, 58.407150, 56.387913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.073410, 58.707058, 56.270500>,  <58.546635, 58.594631, 55.734505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.073410, 58.707058, 56.270500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.840759, 58.390854, 56.347237>,  <58.701168, 58.201130, 56.393276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.840759, 58.390854, 56.347237>,  <59.073410, 58.707058, 56.270500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.840759, 58.390854, 56.347237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806651, -0.530050, 0.261460,
		-0.105004, 0.306817, 0.945958,
		-0.581626, -0.790512, 0.191837,
		58.666271, 58.153702, 56.404789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.114613, 58.345787, 56.934353>,  <59.073410, 58.707058, 56.270500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.114613, 58.345787, 56.934353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.015442, 58.051113, 56.682693>,  <58.955940, 57.874310, 56.531696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.015442, 58.051113, 56.682693>,  <59.114613, 58.345787, 56.934353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.015442, 58.051113, 56.682693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761751, -0.549486, 0.343221,
		-0.598553, -0.394159, 0.697404,
		-0.247930, -0.736684, -0.629148,
		58.941063, 57.830109, 56.493950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.061123, 57.899654, 57.390251>,  <59.114613, 58.345787, 56.934353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.061123, 57.899654, 57.390251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.160400, 57.755707, 57.030495>,  <59.219967, 57.669338, 56.814640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.160400, 57.755707, 57.030495>,  <59.061123, 57.899654, 57.390251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.160400, 57.755707, 57.030495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879198, -0.306121, 0.365103,
		-0.406709, -0.881355, 0.240417,
		0.248189, -0.359865, -0.899388,
		59.234856, 57.647747, 56.760677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.724915, 57.836273, 57.470181>,  <59.061123, 57.899654, 57.390251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.724915, 57.836273, 57.470181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.051552, 58.045464, 57.372467>,  <60.247536, 58.170979, 57.313839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.051552, 58.045464, 57.372467>,  <59.724915, 57.836273, 57.470181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.051552, 58.045464, 57.372467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308821, -0.038299, 0.950348,
		0.487650, -0.851489, -0.192780,
		0.816595, 0.522972, -0.244282,
		60.296532, 58.202354, 57.299183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.311306, 57.427139, 57.786762>,  <59.724915, 57.836273, 57.470181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.311306, 57.427139, 57.786762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.326050, 57.824955, 57.747704>,  <60.334896, 58.063644, 57.724266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.326050, 57.824955, 57.747704>,  <60.311306, 57.427139, 57.786762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.326050, 57.824955, 57.747704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059644, 0.095351, 0.993655,
		0.997539, -0.042448, -0.055803,
		0.036858, 0.994538, -0.097648,
		60.337109, 58.123318, 57.718410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.248394, 57.645134, 58.463505>,  <60.311306, 57.427139, 57.786762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.248394, 57.645134, 58.463505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.316124, 57.989281, 58.271210>,  <60.356762, 58.195766, 58.155834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.316124, 57.989281, 58.271210>,  <60.248394, 57.645134, 58.463505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.316124, 57.989281, 58.271210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096807, 0.470899, 0.876859,
		0.980795, -0.195010, -0.003555,
		0.169322, 0.860363, -0.480734,
		60.366920, 58.247391, 58.126991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.164089, 56.938053, 58.684158>,  <60.248394, 57.645134, 58.463505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.164089, 56.938053, 58.684158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.004402, 56.625290, 58.492645>,  <59.908588, 56.437630, 58.377735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.004402, 56.625290, 58.492645>,  <60.164089, 56.938053, 58.684158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.004402, 56.625290, 58.492645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705007, 0.072060, -0.705530,
		0.586164, -0.619209, 0.522487,
		-0.399221, -0.781913, -0.478786,
		59.884636, 56.390717, 58.349010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.716469, 56.432407, 58.469196>,  <60.164089, 56.938053, 58.684158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.716469, 56.432407, 58.469196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.408737, 56.395569, 58.216324>,  <60.224098, 56.373466, 58.064598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.408737, 56.395569, 58.216324>,  <60.716469, 56.432407, 58.469196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.408737, 56.395569, 58.216324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631130, 0.043882, -0.774435,
		0.099065, -0.994783, 0.024367,
		-0.769325, -0.092098, -0.632184,
		60.177940, 56.367939, 58.026669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.890579, 56.088459, 57.838188>,  <60.716469, 56.432407, 58.469196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.890579, 56.088459, 57.838188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.568237, 56.253559, 57.668373>,  <60.374832, 56.352619, 57.566483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.568237, 56.253559, 57.668373>,  <60.890579, 56.088459, 57.838188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.568237, 56.253559, 57.668373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542862, 0.228724, -0.808076,
		-0.236432, -0.881658, -0.408386,
		-0.805854, 0.412752, -0.424541,
		60.326481, 56.377384, 57.541012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.128353, 56.099491, 57.216064>,  <60.890579, 56.088459, 57.838188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.128353, 56.099491, 57.216064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.795380, 56.318726, 57.183456>,  <60.595596, 56.450268, 57.163891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.795380, 56.318726, 57.183456>,  <61.128353, 56.099491, 57.216064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.795380, 56.318726, 57.183456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293146, 0.310751, -0.904157,
		-0.470227, -0.776551, -0.419351,
		-0.832437, 0.548090, -0.081519,
		60.545647, 56.483154, 57.159000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.138592, 55.987801, 56.464619>,  <61.128353, 56.099491, 57.216064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.138592, 55.987801, 56.464619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.492699, 55.922207, 56.290535>,  <61.705162, 55.882851, 56.186085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.492699, 55.922207, 56.290535>,  <61.138592, 55.987801, 56.464619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.492699, 55.922207, 56.290535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131278, -0.809615, 0.572092,
		-0.446168, -0.563589, -0.695200,
		0.885269, -0.163984, -0.435211,
		61.758278, 55.873013, 56.159973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.126606, 55.441959, 55.965748>,  <61.138592, 55.987801, 56.464619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.126606, 55.441959, 55.965748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.442421, 55.513042, 56.200714>,  <61.631908, 55.555691, 56.341694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.442421, 55.513042, 56.200714>,  <61.126606, 55.441959, 55.965748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.442421, 55.513042, 56.200714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254611, -0.776051, 0.576990,
		0.558395, -0.605117, -0.567476,
		0.789536, 0.177703, 0.587413,
		61.679283, 55.566353, 56.376938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.796543, 55.195091, 55.706921>,  <61.126606, 55.441959, 55.965748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.796543, 55.195091, 55.706921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.134254, 54.990971, 55.772385>,  <62.336880, 54.868496, 55.811661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.134254, 54.990971, 55.772385>,  <61.796543, 55.195091, 55.706921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.134254, 54.990971, 55.772385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535722, 0.811678, -0.232769,
		-0.014053, 0.284197, 0.958663,
		0.844278, -0.510305, 0.163657,
		62.387539, 54.837879, 55.821480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.302395, 55.732403, 55.487274>,  <61.796543, 55.195091, 55.706921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.302395, 55.732403, 55.487274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536026, 55.434181, 55.615646>,  <62.676205, 55.255249, 55.692669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536026, 55.434181, 55.615646>,  <62.302395, 55.732403, 55.487274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.536026, 55.434181, 55.615646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797097, 0.601491, -0.053341,
		-0.153271, 0.286971, 0.945598,
		0.584076, -0.745558, 0.320934,
		62.711250, 55.210514, 55.711926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.635235, 55.774338, 56.222996>,  <62.302395, 55.732403, 55.487274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.635235, 55.774338, 56.222996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.876076, 55.574829, 55.973610>,  <63.020580, 55.455124, 55.823978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.876076, 55.574829, 55.973610>,  <62.635235, 55.774338, 56.222996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.876076, 55.574829, 55.973610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678403, 0.731339, 0.070089,
		0.421003, -0.465159, 0.778706,
		0.602101, -0.498769, -0.623461,
		63.056705, 55.425198, 55.786572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.339081, 55.914272, 56.531349>,  <62.635235, 55.774338, 56.222996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.339081, 55.914272, 56.531349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.365669, 55.793274, 56.151016>,  <63.381622, 55.720673, 55.922817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.365669, 55.793274, 56.151016>,  <63.339081, 55.914272, 56.531349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.365669, 55.793274, 56.151016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877851, 0.470709, -0.088380,
		0.474298, -0.828811, 0.296839,
		0.066474, -0.302499, -0.950829,
		63.385612, 55.702526, 55.865768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.013069, 55.504616, 56.331909>,  <63.339081, 55.914272, 56.531349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.013069, 55.504616, 56.331909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.867058, 55.662663, 55.994713>,  <63.779453, 55.757488, 55.792393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.867058, 55.662663, 55.994713>,  <64.013069, 55.504616, 56.331909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.867058, 55.662663, 55.994713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858652, 0.492838, -0.140810,
		0.359824, -0.775239, -0.519164,
		-0.365025, 0.395115, -0.842995,
		63.757549, 55.781197, 55.741814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.489090, 55.322632, 55.762096>,  <64.013069, 55.504616, 56.331909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.489090, 55.322632, 55.762096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.265739, 55.639919, 55.664909>,  <64.131729, 55.830292, 55.606598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.265739, 55.639919, 55.664909>,  <64.489090, 55.322632, 55.762096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.265739, 55.639919, 55.664909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826132, 0.558381, -0.075601,
		0.075700, -0.242936, -0.967084,
		-0.558368, 0.793216, -0.242967,
		64.098228, 55.877884, 55.592018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.918755, 56.011593, 55.707729>,  <64.489090, 55.322632, 55.762096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.918755, 56.011593, 55.707729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.177689, 56.312889, 55.754341>,  <65.333054, 56.493668, 55.782307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.177689, 56.312889, 55.754341>,  <64.918755, 56.011593, 55.707729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.177689, 56.312889, 55.754341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624496, -0.611807, 0.485486,
		0.436979, -0.241505, -0.866443,
		0.647344, 0.753238, 0.116528,
		65.371895, 56.538860, 55.789299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.643791, 55.992905, 55.321556>,  <64.918755, 56.011593, 55.707729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.643791, 55.992905, 55.321556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.613670, 56.122311, 55.698845>,  <65.595596, 56.199955, 55.925217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.613670, 56.122311, 55.698845>,  <65.643791, 55.992905, 55.321556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.613670, 56.122311, 55.698845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705884, -0.650820, 0.279573,
		0.704313, 0.686858, -0.179357,
		-0.075298, 0.323512, 0.943223,
		65.591080, 56.219364, 55.981812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.378769, 56.149345, 55.374271>,  <65.643791, 55.992905, 55.321556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.378769, 56.149345, 55.374271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.197975, 56.131187, 55.730621>,  <66.089500, 56.120293, 55.944431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.197975, 56.131187, 55.730621>,  <66.378769, 56.149345, 55.374271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.197975, 56.131187, 55.730621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746574, -0.565835, 0.349939,
		0.488198, 0.823268, 0.289642,
		-0.451983, -0.045400, 0.890870,
		66.062378, 56.117569, 55.997883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.640221, 56.550179, 56.099747>,  <66.378769, 56.149345, 55.374271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.640221, 56.550179, 56.099747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.496582, 56.177086, 56.086700>,  <66.410400, 55.953228, 56.078873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.496582, 56.177086, 56.086700>,  <66.640221, 56.550179, 56.099747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.496582, 56.177086, 56.086700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879448, -0.349859, 0.322754,
		-0.312453, 0.087217, 0.945921,
		-0.359089, -0.932733, -0.032612,
		66.388855, 55.897266, 56.076916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.729752, 56.208263, 56.815254>,  <66.640221, 56.550179, 56.099747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.729752, 56.208263, 56.815254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.702148, 55.957298, 56.505005>,  <66.685585, 55.806717, 56.318855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.702148, 55.957298, 56.505005>,  <66.729752, 56.208263, 56.815254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.702148, 55.957298, 56.505005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893215, -0.385118, 0.232059,
		-0.444303, -0.676782, 0.586993,
		-0.069009, -0.627415, -0.775621,
		66.681442, 55.769073, 56.272320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.409233, 56.733982, 56.953850>,  <66.729752, 56.208263, 56.815254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.409233, 56.733982, 56.953850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.481720, 57.120922, 56.882988>,  <67.525215, 57.353088, 56.840473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.481720, 57.120922, 56.882988>,  <67.409233, 56.733982, 56.953850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.481720, 57.120922, 56.882988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978984, -0.160320, 0.126050,
		0.093534, -0.196273, -0.976078,
		0.181225, 0.967354, -0.177152,
		67.536087, 57.411129, 56.829842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.930122, 56.788052, 56.447506>,  <67.409233, 56.733982, 56.953850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.930122, 56.788052, 56.447506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.922722, 57.137978, 56.641151>,  <67.918282, 57.347931, 56.757339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.922722, 57.137978, 56.641151>,  <67.930122, 56.788052, 56.447506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.922722, 57.137978, 56.641151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998385, -0.009839, 0.055952,
		0.053711, 0.484364, -0.873216,
		-0.018510, 0.874811, 0.484110,
		67.917168, 57.400421, 56.786385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.652779, 57.016670, 56.458115>,  <67.930122, 56.788052, 56.447506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.652779, 57.016670, 56.458115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.473259, 57.304440, 56.670158>,  <68.365547, 57.477100, 56.797386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.473259, 57.304440, 56.670158>,  <68.652779, 57.016670, 56.458115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.473259, 57.304440, 56.670158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893427, 0.374029, 0.248778,
		-0.019302, 0.585268, -0.810610,
		-0.448793, 0.719419, 0.530114,
		68.338623, 57.520264, 56.829193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.954193, 57.658718, 56.360058>,  <68.652779, 57.016670, 56.458115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.954193, 57.658718, 56.360058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.790871, 57.655655, 56.725182>,  <68.692879, 57.653816, 56.944256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.790871, 57.655655, 56.725182>,  <68.954193, 57.658718, 56.360058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.790871, 57.655655, 56.725182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833929, 0.403575, 0.376417,
		-0.371270, 0.914915, -0.158396,
		-0.408314, -0.007661, 0.912809,
		68.668373, 57.653358, 56.999023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.810600, 58.279453, 56.663849>,  <68.954193, 57.658718, 56.360058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.810600, 58.279453, 56.663849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.901810, 58.038422, 56.969765>,  <68.956535, 57.893803, 57.153313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.901810, 58.038422, 56.969765>,  <68.810600, 58.279453, 56.663849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.901810, 58.038422, 56.969765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634062, 0.687995, 0.353027,
		-0.738896, 0.404421, 0.538958,
		0.228029, -0.602583, 0.764785,
		68.970215, 57.857647, 57.199200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.795822, 58.622982, 57.259415>,  <68.810600, 58.279453, 56.663849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.795822, 58.622982, 57.259415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.053574, 58.322834, 57.318359>,  <69.208221, 58.142746, 57.353725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.053574, 58.322834, 57.318359>,  <68.795822, 58.622982, 57.259415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.053574, 58.322834, 57.318359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715499, 0.659624, 0.230125,
		-0.269881, -0.042853, 0.961940,
		0.644380, -0.750373, 0.147359,
		69.246887, 58.097721, 57.362568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.098267, 58.507458, 57.961601>,  <68.795822, 58.622982, 57.259415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.098267, 58.507458, 57.961601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.319344, 58.420708, 57.639732>,  <69.451988, 58.368660, 57.446613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.319344, 58.420708, 57.639732>,  <69.098267, 58.507458, 57.961601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.319344, 58.420708, 57.639732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718969, 0.612356, 0.328793,
		0.421437, -0.760254, 0.494373,
		0.552698, -0.216873, -0.804668,
		69.485153, 58.355644, 57.398331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.713814, 58.207417, 58.111977>,  <69.098267, 58.507458, 57.961601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.713814, 58.207417, 58.111977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.746185, 58.449867, 57.795479>,  <69.765610, 58.595337, 57.605579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.746185, 58.449867, 57.795479>,  <69.713814, 58.207417, 58.111977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.746185, 58.449867, 57.795479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720125, 0.513293, 0.466852,
		0.689109, -0.607574, -0.394946,
		0.080924, 0.606122, -0.791244,
		69.770462, 58.631702, 57.558105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.299919, 58.150318, 57.584778>,  <69.713814, 58.207417, 58.111977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.299919, 58.150318, 57.584778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.164719, 58.523705, 57.632767>,  <70.083595, 58.747738, 57.661560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.164719, 58.523705, 57.632767>,  <70.299919, 58.150318, 57.584778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.164719, 58.523705, 57.632767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775090, 0.203789, 0.598086,
		0.533843, 0.295147, -0.792402,
		-0.338006, 0.933466, 0.119973,
		70.063316, 58.803745, 57.668758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.807549, 58.525669, 57.318882>,  <70.299919, 58.150318, 57.584778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.807549, 58.525669, 57.318882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.593086, 58.724205, 57.591995>,  <70.464409, 58.843327, 57.755863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.593086, 58.724205, 57.591995>,  <70.807549, 58.525669, 57.318882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.593086, 58.724205, 57.591995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829174, 0.158139, 0.536155,
		0.158139, 0.853606, -0.496336,
		-0.536155, 0.496336, 0.682780,
		70.432243, 58.873104, 57.796829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.065666, 59.224358, 57.478714>,  <70.807549, 58.525669, 57.318882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.065666, 59.224358, 57.478714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.875725, 59.081352, 57.800385>,  <70.761757, 58.995548, 57.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.875725, 59.081352, 57.800385>,  <71.065666, 59.224358, 57.478714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.875725, 59.081352, 57.800385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840294, 0.087394, 0.535041,
		-0.261562, 0.929812, 0.258912,
		-0.474860, -0.357509, 0.804174,
		70.733269, 58.974098, 58.041637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.194679, 59.590431, 58.130535>,  <71.065666, 59.224358, 57.478714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.194679, 59.590431, 58.130535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.165016, 59.194202, 58.176620>,  <71.147217, 58.956467, 58.204273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.165016, 59.194202, 58.176620>,  <71.194679, 59.590431, 58.130535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.165016, 59.194202, 58.176620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954974, -0.037253, 0.294341,
		-0.287273, 0.131854, 0.948730,
		-0.074153, -0.990569, 0.115215,
		71.142769, 58.897030, 58.211185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.334946, 59.268272, 58.827068>,  <71.194679, 59.590431, 58.130535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.334946, 59.268272, 58.827068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.405609, 58.945606, 58.601471>,  <71.448006, 58.752007, 58.466114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.405609, 58.945606, 58.601471>,  <71.334946, 59.268272, 58.827068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.405609, 58.945606, 58.601471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804775, -0.211513, 0.554616,
		-0.566679, -0.551868, 0.611814,
		0.176668, -0.806662, -0.563990,
		71.458611, 58.703606, 58.432274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.458092, 58.803783, 59.294914>,  <71.334946, 59.268272, 58.827068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.458092, 58.803783, 59.294914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.617210, 58.715515, 58.938698>,  <71.712685, 58.662552, 58.724968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.617210, 58.715515, 58.938698>,  <71.458092, 58.803783, 59.294914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.617210, 58.715515, 58.938698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899647, -0.096586, 0.425800,
		-0.179976, -0.970554, 0.160106,
		0.397798, -0.220673, -0.890539,
		71.736549, 58.649315, 58.671535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.763916, 58.105930, 59.236385>,  <71.458092, 58.803783, 59.294914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.763916, 58.105930, 59.236385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.950378, 58.370277, 59.001114>,  <72.062256, 58.528885, 58.859951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.950378, 58.370277, 59.001114>,  <71.763916, 58.105930, 59.236385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.950378, 58.370277, 59.001114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836801, -0.113549, 0.535604,
		0.287176, -0.741862, -0.605946,
		0.466148, 0.660869, -0.588182,
		72.090225, 58.568539, 58.824657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.544815, 58.078449, 59.248577>,  <71.763916, 58.105930, 59.236385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.544815, 58.078449, 59.248577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650711, 58.198166, 59.615257>,  <72.714249, 58.269997, 59.835266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650711, 58.198166, 59.615257>,  <72.544815, 58.078449, 59.248577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.650711, 58.198166, 59.615257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201868, -0.912354, 0.356172,
		0.942952, -0.279348, -0.181127,
		0.264748, 0.299290, 0.916698,
		72.730133, 58.287952, 59.890266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.102470, 57.638790, 59.517872>,  <72.544815, 58.078449, 59.248577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.102470, 57.638790, 59.517872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.885834, 57.825844, 59.797302>,  <72.755852, 57.938076, 59.964958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.885834, 57.825844, 59.797302>,  <73.102470, 57.638790, 59.517872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.885834, 57.825844, 59.797302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242320, -0.882566, 0.402936,
		0.804964, 0.048946, 0.591301,
		-0.541585, 0.467633, 0.698574,
		72.723358, 57.966133, 60.006874>
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
