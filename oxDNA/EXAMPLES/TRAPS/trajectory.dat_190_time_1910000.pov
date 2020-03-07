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
	<35.464314, 53.010056, 49.579945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740116, 52.781708, 49.401649>,  <35.905598, 52.644699, 49.294674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740116, 52.781708, 49.401649>,  <35.464314, 53.010056, 49.579945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740116, 52.781708, 49.401649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681657, 0.719485, 0.132985,
		0.244783, -0.395534, 0.885231,
		0.689511, -0.570871, -0.445736,
		35.946968, 52.610447, 49.267929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947292, 52.955364, 50.023155>,  <35.464314, 53.010056, 49.579945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947292, 52.955364, 50.023155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107449, 52.915886, 49.658749>,  <36.203541, 52.892200, 49.440105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107449, 52.915886, 49.658749>,  <35.947292, 52.955364, 50.023155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107449, 52.915886, 49.658749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684731, 0.692910, 0.225872,
		0.608959, -0.714237, 0.345013,
		0.400389, -0.098694, -0.911015,
		36.227566, 52.886276, 49.385445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794983, 52.725056, 50.030807>,  <35.947292, 52.955364, 50.023155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794983, 52.725056, 50.030807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660225, 52.940144, 49.721653>,  <36.579369, 53.069199, 49.536160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660225, 52.940144, 49.721653>,  <36.794983, 52.725056, 50.030807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660225, 52.940144, 49.721653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691126, 0.698696, 0.184848,
		0.639411, -0.471888, -0.607022,
		-0.336896, 0.537723, -0.772888,
		36.559155, 53.101460, 49.489788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436264, 52.435417, 50.329536>,  <36.794983, 52.725056, 50.030807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436264, 52.435417, 50.329536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612206, 52.401764, 50.687183>,  <37.717770, 52.381573, 50.901772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612206, 52.401764, 50.687183>,  <37.436264, 52.435417, 50.329536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612206, 52.401764, 50.687183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627308, -0.741241, 0.238844,
		0.642664, -0.665945, -0.378814,
		0.439850, -0.084136, 0.894122,
		37.744160, 52.376522, 50.955421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863403, 51.796284, 50.501884>,  <37.436264, 52.435417, 50.329536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863403, 51.796284, 50.501884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669361, 51.946781, 50.817635>,  <37.552937, 52.037079, 51.007084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669361, 51.946781, 50.817635>,  <37.863403, 51.796284, 50.501884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669361, 51.946781, 50.817635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570696, -0.820176, 0.040214,
		0.662557, -0.430986, 0.612592,
		-0.485102, 0.376248, 0.789375,
		37.523830, 52.059654, 51.054447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573425, 51.778439, 50.853149>,  <37.863403, 51.796284, 50.501884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573425, 51.778439, 50.853149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781841, 52.097645, 50.974270>,  <38.906891, 52.289169, 51.046944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781841, 52.097645, 50.974270>,  <38.573425, 51.778439, 50.853149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781841, 52.097645, 50.974270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115579, -0.417462, 0.901314,
		0.845668, -0.434626, -0.309750,
		0.521043, 0.798013, 0.302801,
		38.938156, 52.337048, 51.065109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090374, 51.544224, 51.242668>,  <38.573425, 51.778439, 50.853149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090374, 51.544224, 51.242668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093975, 51.928658, 51.353111>,  <39.096134, 52.159317, 51.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093975, 51.928658, 51.353111>,  <39.090374, 51.544224, 51.242668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093975, 51.928658, 51.353111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392951, -0.257303, 0.882828,
		0.919515, 0.100548, -0.379976,
		0.009002, 0.961086, 0.276104,
		39.096676, 52.216984, 51.435944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733128, 51.803474, 51.228153>,  <39.090374, 51.544224, 51.242668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733128, 51.803474, 51.228153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493332, 51.970627, 51.501205>,  <39.349453, 52.070919, 51.665039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493332, 51.970627, 51.501205>,  <39.733128, 51.803474, 51.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493332, 51.970627, 51.501205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506294, -0.462576, 0.727798,
		0.619903, 0.781920, 0.065738,
		-0.599489, 0.417881, 0.682633,
		39.313484, 52.095993, 51.705994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117882, 52.462555, 50.882812>,  <39.733128, 51.803474, 51.228153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117882, 52.462555, 50.882812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295109, 52.775742, 50.708153>,  <40.401443, 52.963654, 50.603355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295109, 52.775742, 50.708153>,  <40.117882, 52.462555, 50.882812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295109, 52.775742, 50.708153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124045, 0.535923, 0.835104,
		0.887866, -0.315841, 0.334572,
		0.443065, 0.782963, -0.436649,
		40.428028, 53.010632, 50.577156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688553, 52.792614, 51.286980>,  <40.117882, 52.462555, 50.882812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688553, 52.792614, 51.286980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576565, 53.076302, 51.028175>,  <40.509373, 53.246513, 50.872894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576565, 53.076302, 51.028175>,  <40.688553, 52.792614, 51.286980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576565, 53.076302, 51.028175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128497, 0.640212, 0.757375,
		0.951370, 0.295180, -0.088106,
		-0.279969, 0.709223, -0.647008,
		40.492573, 53.289070, 50.834072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100700, 53.434185, 51.336273>,  <40.688553, 52.792614, 51.286980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100700, 53.434185, 51.336273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716808, 53.489376, 51.238396>,  <40.486473, 53.522491, 51.179668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716808, 53.489376, 51.238396>,  <41.100700, 53.434185, 51.336273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716808, 53.489376, 51.238396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111570, 0.612187, 0.782802,
		0.257803, 0.778582, -0.572143,
		-0.959734, 0.137975, -0.244690,
		40.428886, 53.530769, 51.164989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895283, 54.163994, 51.074669>,  <41.100700, 53.434185, 51.336273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895283, 54.163994, 51.074669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665367, 53.915398, 51.287598>,  <40.527416, 53.766239, 51.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665367, 53.915398, 51.287598>,  <40.895283, 54.163994, 51.074669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665367, 53.915398, 51.287598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181516, 0.537482, 0.823507,
		-0.797914, 0.569970, -0.196130,
		-0.574791, -0.621488, 0.532324,
		40.492931, 53.728951, 51.447296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650955, 53.830467, 51.075405>,  <40.895283, 54.163994, 51.074669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650955, 53.830467, 51.075405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897797, 53.808472, 51.389389>,  <42.045902, 53.795273, 51.577778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897797, 53.808472, 51.389389>,  <41.650955, 53.830467, 51.075405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897797, 53.808472, 51.389389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699194, -0.495958, 0.514931,
		0.360993, -0.866604, -0.344503,
		0.617100, -0.054988, 0.784961,
		42.082928, 53.791977, 51.624878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467560, 54.444656, 51.389263>,  <41.650955, 53.830467, 51.075405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467560, 54.444656, 51.389263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495605, 54.473579, 51.787228>,  <41.512432, 54.490932, 52.026009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495605, 54.473579, 51.787228>,  <41.467560, 54.444656, 51.389263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495605, 54.473579, 51.787228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764917, 0.636296, -0.100151,
		-0.640302, 0.768049, -0.010694,
		0.070116, 0.072307, 0.994915,
		41.516640, 54.495270, 52.085701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444954, 55.157063, 51.627338>,  <41.467560, 54.444656, 51.389263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444954, 55.157063, 51.627338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713814, 54.963501, 51.851501>,  <41.875130, 54.847363, 51.986000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713814, 54.963501, 51.851501>,  <41.444954, 55.157063, 51.627338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713814, 54.963501, 51.851501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726856, 0.575445, -0.374891,
		-0.141070, 0.659315, 0.738514,
		0.672146, -0.483907, 0.560405,
		41.915459, 54.818329, 52.019623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763325, 55.561855, 52.218258>,  <41.444954, 55.157063, 51.627338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763325, 55.561855, 52.218258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000919, 55.307880, 52.020660>,  <42.143475, 55.155495, 51.902103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000919, 55.307880, 52.020660>,  <41.763325, 55.561855, 52.218258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000919, 55.307880, 52.020660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649954, 0.740620, -0.170417,
		0.474066, -0.219847, 0.852601,
		0.593988, -0.634941, -0.493993,
		42.179115, 55.117397, 51.872463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433846, 55.689579, 52.524616>,  <41.763325, 55.561855, 52.218258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433846, 55.689579, 52.524616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490284, 55.567596, 52.147873>,  <42.524147, 55.494408, 51.921829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490284, 55.567596, 52.147873>,  <42.433846, 55.689579, 52.524616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490284, 55.567596, 52.147873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954077, 0.295828, 0.047145,
		0.264249, -0.905254, 0.332698,
		0.141099, -0.304961, -0.941854,
		42.532612, 55.476109, 51.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006611, 55.453106, 52.559475>,  <42.433846, 55.689579, 52.524616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006611, 55.453106, 52.559475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988789, 55.488205, 52.161415>,  <42.978096, 55.509266, 51.922581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988789, 55.488205, 52.161415>,  <43.006611, 55.453106, 52.559475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988789, 55.488205, 52.161415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968154, 0.249441, -0.021353,
		0.246356, -0.964407, -0.096065,
		-0.044555, 0.087745, -0.995146,
		42.975422, 55.514530, 51.862873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279221, 54.919098, 52.113438>,  <43.006611, 55.453106, 52.559475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279221, 54.919098, 52.113438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333344, 55.296558, 51.992630>,  <43.365818, 55.523033, 51.920147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333344, 55.296558, 51.992630>,  <43.279221, 54.919098, 52.113438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333344, 55.296558, 51.992630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983806, -0.164125, -0.072038,
		-0.117546, -0.287377, -0.950577,
		0.135311, 0.943651, -0.302015,
		43.373936, 55.579655, 51.902027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690987, 54.962379, 51.480618>,  <43.279221, 54.919098, 52.113438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690987, 54.962379, 51.480618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746433, 55.274487, 51.724571>,  <43.779701, 55.461750, 51.870945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746433, 55.274487, 51.724571>,  <43.690987, 54.962379, 51.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746433, 55.274487, 51.724571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987977, -0.151520, -0.030706,
		0.068451, 0.606811, -0.791893,
		0.138621, 0.780271, 0.609887,
		43.788021, 55.508568, 51.907536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360523, 55.135880, 51.178440>,  <43.690987, 54.962379, 51.480618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360523, 55.135880, 51.178440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553082, 55.065315, 50.835014>,  <44.668617, 55.022976, 50.628960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553082, 55.065315, 50.835014>,  <44.360523, 55.135880, 51.178440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553082, 55.065315, 50.835014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874660, 0.160147, 0.457519,
		0.056787, -0.971202, 0.231391,
		0.481400, -0.176408, -0.858565,
		44.697502, 55.012394, 50.577446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816200, 54.485947, 51.124550>,  <44.360523, 55.135880, 51.178440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816200, 54.485947, 51.124550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926914, 54.801422, 50.904961>,  <44.993343, 54.990707, 50.773209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926914, 54.801422, 50.904961>,  <44.816200, 54.485947, 51.124550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926914, 54.801422, 50.904961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827564, 0.094720, 0.553323,
		0.488396, -0.607457, -0.626471,
		0.276780, 0.788685, -0.548970,
		45.009949, 55.038029, 50.740269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512070, 54.487808, 50.772957>,  <44.816200, 54.485947, 51.124550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512070, 54.487808, 50.772957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418240, 54.862801, 50.875801>,  <45.361942, 55.087795, 50.937508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418240, 54.862801, 50.875801>,  <45.512070, 54.487808, 50.772957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418240, 54.862801, 50.875801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873338, 0.087082, 0.479267,
		0.426913, 0.336972, -0.839164,
		-0.234576, 0.937479, 0.257114,
		45.347866, 55.144043, 50.952934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.066723, 54.990292, 50.546822>,  <45.512070, 54.487808, 50.772957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.066723, 54.990292, 50.546822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895321, 55.132614, 50.879036>,  <45.792480, 55.218010, 51.078365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895321, 55.132614, 50.879036>,  <46.066723, 54.990292, 50.546822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895321, 55.132614, 50.879036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896640, 0.280840, 0.342295,
		-0.111456, 0.891363, -0.439374,
		-0.428503, 0.355809, 0.830533,
		45.766769, 55.239357, 51.128197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168503, 55.784683, 50.667381>,  <46.066723, 54.990292, 50.546822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168503, 55.784683, 50.667381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178238, 55.531952, 50.977272>,  <46.184078, 55.380310, 51.163204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178238, 55.531952, 50.977272>,  <46.168503, 55.784683, 50.667381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178238, 55.531952, 50.977272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877280, 0.385088, 0.286508,
		-0.479362, 0.672677, 0.563665,
		0.024333, -0.631833, 0.774722,
		46.185539, 55.342403, 51.209690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157520, 56.171806, 51.349087>,  <46.168503, 55.784683, 50.667381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157520, 56.171806, 51.349087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348434, 55.820930, 51.370026>,  <46.462982, 55.610405, 51.382587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348434, 55.820930, 51.370026>,  <46.157520, 56.171806, 51.349087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348434, 55.820930, 51.370026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840646, 0.473128, 0.263561,
		-0.255958, -0.081790, 0.963222,
		0.477284, -0.877189, 0.052344,
		46.491619, 55.557774, 51.385731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592636, 55.933514, 52.031715>,  <46.157520, 56.171806, 51.349087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592636, 55.933514, 52.031715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934364, 56.004478, 51.836304>,  <47.139400, 56.047058, 51.719055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934364, 56.004478, 51.836304>,  <46.592636, 55.933514, 52.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934364, 56.004478, 51.836304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261727, 0.665226, 0.699266,
		0.449039, -0.725259, 0.521884,
		0.854320, 0.177407, -0.488533,
		47.190659, 56.057701, 51.689743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.143017, 55.884651, 52.397118>,  <46.592636, 55.933514, 52.031715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.143017, 55.884651, 52.397118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257900, 56.158215, 52.128853>,  <47.326832, 56.322353, 51.967896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257900, 56.158215, 52.128853>,  <47.143017, 55.884651, 52.397118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257900, 56.158215, 52.128853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246959, 0.623616, 0.741697,
		0.925485, -0.378647, 0.010211,
		0.287209, 0.683907, -0.670657,
		47.344063, 56.363388, 51.927654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716778, 56.244331, 52.636761>,  <47.143017, 55.884651, 52.397118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716778, 56.244331, 52.636761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590553, 56.537102, 52.395195>,  <47.514820, 56.712765, 52.250256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590553, 56.537102, 52.395195>,  <47.716778, 56.244331, 52.636761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.590553, 56.537102, 52.395195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374346, 0.680837, 0.629544,
		0.871944, -0.027413, -0.488838,
		-0.315562, 0.731921, -0.603914,
		47.495884, 56.756680, 52.214020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.222733, 56.720604, 52.625572>,  <47.716778, 56.244331, 52.636761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.222733, 56.720604, 52.625572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.856510, 56.866894, 52.558632>,  <47.636776, 56.954666, 52.518467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.856510, 56.866894, 52.558632>,  <48.222733, 56.720604, 52.625572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.856510, 56.866894, 52.558632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235087, 0.824244, 0.515126,
		0.326333, 0.432283, -0.840617,
		-0.915555, 0.365721, -0.167354,
		47.581844, 56.976612, 52.508427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.891907, 56.463753, 52.401218>,  <48.222733, 56.720604, 52.625572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.891907, 56.463753, 52.401218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.239101, 56.548939, 52.580658>,  <49.447418, 56.600052, 52.688320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.239101, 56.548939, 52.580658>,  <48.891907, 56.463753, 52.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.239101, 56.548939, 52.580658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432362, -0.120223, 0.893650,
		0.244250, -0.969634, -0.012273,
		0.867989, 0.212968, 0.448597,
		49.499496, 56.612827, 52.715237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.347408, 56.148331, 52.741688>,  <48.891907, 56.463753, 52.401218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.347408, 56.148331, 52.741688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.416462, 56.347408, 52.401688>,  <49.457893, 56.466854, 52.197689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.416462, 56.347408, 52.401688>,  <49.347408, 56.148331, 52.741688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.416462, 56.347408, 52.401688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978064, 0.015508, 0.207726,
		0.116565, -0.867216, -0.484096,
		0.172635, 0.497691, -0.850001,
		49.468254, 56.496716, 52.146687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.890549, 55.811626, 52.346321>,  <49.347408, 56.148331, 52.741688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.890549, 55.811626, 52.346321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.896515, 56.206974, 52.285782>,  <49.900093, 56.444183, 52.249458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.896515, 56.206974, 52.285782>,  <49.890549, 55.811626, 52.346321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.896515, 56.206974, 52.285782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994162, 0.001519, 0.107885,
		0.106860, -0.152070, -0.982576,
		0.014913, 0.988369, -0.151345,
		49.900990, 56.503483, 52.240379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.004700, 56.157772, 52.996586>,  <49.890549, 55.811626, 52.346321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.004700, 56.157772, 52.996586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.200676, 55.816956, 53.070328>,  <50.318264, 55.612465, 53.114571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.200676, 55.816956, 53.070328>,  <50.004700, 56.157772, 52.996586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.200676, 55.816956, 53.070328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713692, 0.513475, 0.476431,
		-0.500597, -0.101855, 0.859667,
		0.489945, -0.852038, 0.184351,
		50.347660, 55.561344, 53.125633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.199612, 56.114559, 53.694153>,  <50.004700, 56.157772, 52.996586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.199612, 56.114559, 53.694153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.485294, 55.892647, 53.523445>,  <50.656704, 55.759499, 53.421021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.485294, 55.892647, 53.523445>,  <50.199612, 56.114559, 53.694153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.485294, 55.892647, 53.523445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687363, 0.440861, 0.577212,
		-0.132081, -0.705592, 0.696200,
		0.714203, -0.554781, -0.426768,
		50.699554, 55.726212, 53.395416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.534153, 56.604820, 54.105335>,  <50.199612, 56.114559, 53.694153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.534153, 56.604820, 54.105335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.786137, 56.420311, 53.855412>,  <50.937325, 56.309605, 53.705460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.786137, 56.420311, 53.855412>,  <50.534153, 56.604820, 54.105335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.786137, 56.420311, 53.855412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469722, -0.414384, 0.779517,
		-0.618479, -0.784547, -0.044376,
		0.629957, -0.461271, -0.624807,
		50.975124, 56.281929, 53.667969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.662693, 55.987572, 54.415710>,  <50.534153, 56.604820, 54.105335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.662693, 55.987572, 54.415710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.978691, 56.047527, 54.177910>,  <51.168289, 56.083500, 54.035229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.978691, 56.047527, 54.177910>,  <50.662693, 55.987572, 54.415710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.978691, 56.047527, 54.177910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608994, -0.303978, 0.732614,
		-0.070901, -0.940813, -0.331427,
		0.789999, 0.149894, -0.594502,
		51.215691, 56.092495, 53.999557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.017506, 55.468670, 54.598820>,  <50.662693, 55.987572, 54.415710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.017506, 55.468670, 54.598820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.275074, 55.715969, 54.418533>,  <51.429615, 55.864349, 54.310360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.275074, 55.715969, 54.418533>,  <51.017506, 55.468670, 54.598820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.275074, 55.715969, 54.418533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676458, -0.184814, 0.712915,
		0.357456, -0.763949, -0.537221,
		0.643917, 0.618244, -0.450717,
		51.468250, 55.901443, 54.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.656166, 55.264606, 54.821854>,  <51.017506, 55.468670, 54.598820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.656166, 55.264606, 54.821854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.714386, 55.636810, 54.687416>,  <51.749317, 55.860134, 54.606754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.714386, 55.636810, 54.687416>,  <51.656166, 55.264606, 54.821854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.714386, 55.636810, 54.687416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555070, 0.204407, 0.806297,
		0.818971, -0.303910, -0.486750,
		0.145547, 0.930514, -0.336094,
		51.758049, 55.915966, 54.586586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.875492, 55.497246, 55.405605>,  <51.656166, 55.264606, 54.821854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.875492, 55.497246, 55.405605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.919159, 55.795975, 55.143204>,  <51.945358, 55.975212, 54.985764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.919159, 55.795975, 55.143204>,  <51.875492, 55.497246, 55.405605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.919159, 55.795975, 55.143204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715235, 0.399289, 0.573592,
		0.690306, -0.531813, -0.490564,
		0.109167, 0.746822, -0.656003,
		51.951908, 56.020020, 54.946404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.508099, 55.344357, 55.164310>,  <51.875492, 55.497246, 55.405605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.508099, 55.344357, 55.164310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.399319, 55.728737, 55.143875>,  <52.334049, 55.959366, 55.131615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.399319, 55.728737, 55.143875>,  <52.508099, 55.344357, 55.164310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.399319, 55.728737, 55.143875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738545, 0.242452, 0.629102,
		0.616923, 0.133357, -0.775643,
		-0.271951, 0.960954, -0.051084,
		52.317734, 56.017025, 55.128551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.031433, 55.639069, 55.438324>,  <52.508099, 55.344357, 55.164310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.031433, 55.639069, 55.438324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.806808, 55.963696, 55.373825>,  <52.672035, 56.158474, 55.335125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.806808, 55.963696, 55.373825>,  <53.031433, 55.639069, 55.438324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.806808, 55.963696, 55.373825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712619, 0.573401, 0.404211,
		0.420504, 0.112083, -0.900341,
		-0.561561, 0.811572, -0.161245,
		52.638340, 56.207169, 55.325451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.395302, 56.229202, 55.101448>,  <53.031433, 55.639069, 55.438324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.395302, 56.229202, 55.101448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.131962, 56.409561, 55.342537>,  <52.973957, 56.517776, 55.487190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.131962, 56.409561, 55.342537>,  <53.395302, 56.229202, 55.101448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.131962, 56.409561, 55.342537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721461, 0.606329, 0.334453,
		-0.214646, 0.655027, -0.724477,
		-0.658347, 0.450894, 0.602722,
		52.934456, 56.544830, 55.523354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.447075, 57.033474, 54.938866>,  <53.395302, 56.229202, 55.101448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.447075, 57.033474, 54.938866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.331059, 56.870514, 55.285255>,  <53.261448, 56.772739, 55.493088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.331059, 56.870514, 55.285255>,  <53.447075, 57.033474, 54.938866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.331059, 56.870514, 55.285255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890121, 0.217522, 0.400461,
		-0.351515, 0.886967, 0.299545,
		-0.290038, -0.407399, 0.865970,
		53.244045, 56.748295, 55.545048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.801918, 57.339634, 55.399387>,  <53.447075, 57.033474, 54.938866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.801918, 57.339634, 55.399387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.657768, 57.056122, 55.641960>,  <53.571278, 56.886017, 55.787506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.657768, 57.056122, 55.641960>,  <53.801918, 57.339634, 55.399387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.657768, 57.056122, 55.641960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750435, 0.165856, 0.639796,
		-0.554053, 0.685660, 0.472119,
		-0.360379, -0.708776, 0.606436,
		53.549656, 56.843491, 55.823891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.695629, 57.557110, 56.152485>,  <53.801918, 57.339634, 55.399387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.695629, 57.557110, 56.152485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.814510, 57.188438, 56.052734>,  <53.885838, 56.967236, 55.992886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.814510, 57.188438, 56.052734>,  <53.695629, 57.557110, 56.152485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.814510, 57.188438, 56.052734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841660, 0.129558, 0.524235,
		-0.450865, -0.365693, 0.814241,
		0.297201, -0.921674, -0.249376,
		53.903671, 56.911938, 55.977921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.743286, 57.133858, 56.789524>,  <53.695629, 57.557110, 56.152485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.743286, 57.133858, 56.789524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.003403, 56.862152, 56.653450>,  <54.159473, 56.699127, 56.571804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.003403, 56.862152, 56.653450>,  <53.743286, 57.133858, 56.789524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.003403, 56.862152, 56.653450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693678, 0.348351, 0.630446,
		-0.309735, -0.645952, 0.697718,
		0.650289, -0.679263, -0.340186,
		54.198490, 56.658375, 56.551395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.161629, 57.156494, 57.308411>,  <53.743286, 57.133858, 56.789524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.161629, 57.156494, 57.308411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.392799, 56.955635, 57.051086>,  <54.531502, 56.835117, 56.896694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.392799, 56.955635, 57.051086>,  <54.161629, 57.156494, 57.308411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.392799, 56.955635, 57.051086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814110, 0.409622, 0.411626,
		0.056815, -0.761613, 0.645537,
		0.577925, -0.502151, -0.643309,
		54.566177, 56.804989, 56.858093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.728203, 56.797226, 57.629902>,  <54.161629, 57.156494, 57.308411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.728203, 56.797226, 57.629902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.812683, 56.903397, 57.253616>,  <54.863373, 56.967098, 57.027843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.812683, 56.903397, 57.253616>,  <54.728203, 56.797226, 57.629902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.812683, 56.903397, 57.253616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689171, 0.642047, 0.335885,
		0.693135, -0.719252, -0.047325,
		0.211201, 0.265429, -0.940713,
		54.876045, 56.983025, 56.971401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.536983, 56.758503, 57.451733>,  <54.728203, 56.797226, 57.629902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.536983, 56.758503, 57.451733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.305717, 57.035454, 57.279060>,  <55.166958, 57.201622, 57.175457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.305717, 57.035454, 57.279060>,  <55.536983, 56.758503, 57.451733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.305717, 57.035454, 57.279060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629908, 0.715041, 0.303203,
		0.518597, -0.096615, -0.849543,
		-0.578164, 0.692374, -0.431676,
		55.132267, 57.243168, 57.149559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.877392, 57.405460, 57.291100>,  <55.536983, 56.758503, 57.451733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.877392, 57.405460, 57.291100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.538429, 57.603977, 57.215630>,  <55.335052, 57.723087, 57.170349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.538429, 57.603977, 57.215630>,  <55.877392, 57.405460, 57.291100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.538429, 57.603977, 57.215630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304714, 0.745592, 0.592657,
		0.434805, 0.444729, -0.783046,
		-0.847404, 0.496295, -0.188672,
		55.284206, 57.752865, 57.159027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.153965, 57.969349, 56.909897>,  <55.877392, 57.405460, 57.291100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.153965, 57.969349, 56.909897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.855049, 58.034439, 57.167603>,  <55.675697, 58.073494, 57.322227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.855049, 58.034439, 57.167603>,  <56.153965, 57.969349, 56.909897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.855049, 58.034439, 57.167603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561130, 0.673863, 0.480668,
		-0.355930, 0.720715, -0.594881,
		-0.747293, 0.162722, 0.644263,
		55.630859, 58.083256, 57.360882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.073551, 58.730671, 56.945152>,  <56.153965, 57.969349, 56.909897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.073551, 58.730671, 56.945152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.978485, 58.537827, 57.282455>,  <55.921444, 58.422119, 57.484837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.978485, 58.537827, 57.282455>,  <56.073551, 58.730671, 56.945152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.978485, 58.537827, 57.282455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684079, 0.533253, 0.497672,
		-0.689602, 0.695136, 0.203063,
		-0.237666, -0.482107, 0.843260,
		55.907185, 58.393196, 57.535435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.560070, 59.229965, 56.700230>,  <56.073551, 58.730671, 56.945152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.560070, 59.229965, 56.700230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.301102, 59.524456, 56.779045>,  <55.145721, 59.701149, 56.826336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.301102, 59.524456, 56.779045>,  <55.560070, 59.229965, 56.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.301102, 59.524456, 56.779045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758153, 0.648533, 0.067891,
		-0.077804, 0.193341, -0.978042,
		-0.647418, 0.736223, 0.197041,
		55.106876, 59.745323, 56.838158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.622852, 59.873322, 56.324642>,  <55.560070, 59.229965, 56.700230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.622852, 59.873322, 56.324642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502434, 60.012077, 56.679955>,  <55.430183, 60.095329, 56.893143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502434, 60.012077, 56.679955>,  <55.622852, 59.873322, 56.324642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.502434, 60.012077, 56.679955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864631, 0.492187, 0.100821,
		-0.402226, 0.798386, -0.448100,
		-0.301043, 0.346889, 0.888280,
		55.412121, 60.116142, 56.946438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.644558, 60.528561, 56.396053>,  <55.622852, 59.873322, 56.324642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.644558, 60.528561, 56.396053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.663162, 60.409386, 56.777435>,  <55.674324, 60.337883, 57.006264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.663162, 60.409386, 56.777435>,  <55.644558, 60.528561, 56.396053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.663162, 60.409386, 56.777435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851921, 0.510231, 0.117875,
		-0.521600, 0.806784, 0.277548,
		0.046514, -0.297933, 0.953453,
		55.677116, 60.320007, 57.063473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.646927, 61.147968, 57.011593>,  <55.644558, 60.528561, 56.396053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.646927, 61.147968, 57.011593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.833824, 60.798492, 57.065781>,  <55.945965, 60.588806, 57.098293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.833824, 60.798492, 57.065781>,  <55.646927, 61.147968, 57.011593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.833824, 60.798492, 57.065781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858225, 0.485018, 0.167949,
		-0.212440, 0.037789, 0.976443,
		0.467246, -0.873687, 0.135468,
		55.973999, 60.536385, 57.106422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.908070, 61.042080, 57.703400>,  <55.646927, 61.147968, 57.011593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.908070, 61.042080, 57.703400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.133583, 60.861336, 57.426857>,  <56.268890, 60.752892, 57.260929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.133583, 60.861336, 57.426857>,  <55.908070, 61.042080, 57.703400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.133583, 60.861336, 57.426857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790730, 0.537049, 0.293809,
		0.238535, -0.712323, 0.660074,
		0.563779, -0.451856, -0.691360,
		56.302715, 60.725780, 57.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.403828, 60.853825, 58.092484>,  <55.908070, 61.042080, 57.703400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.403828, 60.853825, 58.092484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.492065, 60.924259, 57.708748>,  <56.545010, 60.966518, 57.478508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.492065, 60.924259, 57.708748>,  <56.403828, 60.853825, 58.092484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.492065, 60.924259, 57.708748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642893, 0.713424, 0.278774,
		0.733504, -0.678248, 0.044174,
		0.220593, 0.176083, -0.959340,
		56.558243, 60.977085, 57.420944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.992218, 60.944134, 58.243153>,  <56.403828, 60.853825, 58.092484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.992218, 60.944134, 58.243153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.960945, 61.058704, 57.861191>,  <56.942181, 61.127445, 57.632011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.960945, 61.058704, 57.861191>,  <56.992218, 60.944134, 58.243153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.960945, 61.058704, 57.861191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710316, 0.688096, 0.148238,
		0.699527, -0.666695, -0.257254,
		-0.078186, 0.286428, -0.954906,
		56.937489, 61.144634, 57.574718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.720867, 60.921116, 57.882183>,  <56.992218, 60.944134, 58.243153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.720867, 60.921116, 57.882183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.448883, 61.197285, 57.783417>,  <57.285694, 61.362988, 57.724155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.448883, 61.197285, 57.783417>,  <57.720867, 60.921116, 57.882183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.448883, 61.197285, 57.783417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717565, 0.695829, -0.030358,
		0.150850, -0.197819, -0.968562,
		-0.679959, 0.690426, -0.246914,
		57.244896, 61.404411, 57.709343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.082264, 61.554386, 57.625202>,  <57.720867, 60.921116, 57.882183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.082264, 61.554386, 57.625202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.718842, 61.719872, 57.648399>,  <57.500786, 61.819164, 57.662319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.718842, 61.719872, 57.648399>,  <58.082264, 61.554386, 57.625202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.718842, 61.719872, 57.648399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417701, 0.897321, 0.142625,
		0.006964, 0.153808, -0.988076,
		-0.908558, 0.413713, 0.057997,
		57.446274, 61.843987, 57.665798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.678753, 61.013176, 57.833881>,  <58.082264, 61.554386, 57.625202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.678753, 61.013176, 57.833881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.396095, 60.862240, 57.594460>,  <58.226501, 60.771679, 57.450806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.396095, 60.862240, 57.594460>,  <58.678753, 61.013176, 57.833881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.396095, 60.862240, 57.594460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254914, 0.653365, -0.712835,
		0.660070, -0.656293, -0.365495,
		-0.706631, -0.377351, -0.598564,
		58.184101, 60.749039, 57.414894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.920547, 60.589561, 57.209869>,  <58.678753, 61.013176, 57.833881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.920547, 60.589561, 57.209869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.597992, 60.824715, 57.184158>,  <58.404457, 60.965805, 57.168732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.597992, 60.824715, 57.184158>,  <58.920547, 60.589561, 57.209869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.597992, 60.824715, 57.184158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477318, 0.582830, -0.657629,
		-0.349146, -0.560986, -0.750594,
		-0.806390, 0.587880, -0.064276,
		58.356075, 61.001080, 57.164875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.524578, 60.492695, 56.810360>,  <58.920547, 60.589561, 57.209869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.524578, 60.492695, 56.810360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.821182, 60.550556, 56.548294>,  <59.999146, 60.585274, 56.391052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.821182, 60.550556, 56.548294>,  <59.524578, 60.492695, 56.810360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.821182, 60.550556, 56.548294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456592, 0.606704, 0.650718,
		0.491621, -0.781656, 0.383827,
		0.741506, 0.144654, -0.655166,
		60.043633, 60.593952, 56.351746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.249611, 60.198898, 57.021046>,  <59.524578, 60.492695, 56.810360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.249611, 60.198898, 57.021046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.314301, 60.519146, 56.790268>,  <60.353115, 60.711292, 56.651802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.314301, 60.519146, 56.790268>,  <60.249611, 60.198898, 57.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.314301, 60.519146, 56.790268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551940, 0.411261, 0.725415,
		0.818052, -0.435753, -0.375381,
		0.161722, 0.800615, -0.576942,
		60.362816, 60.759331, 56.617184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.899464, 60.354507, 56.818222>,  <60.249611, 60.198898, 57.021046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.899464, 60.354507, 56.818222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.725319, 60.714279, 56.833649>,  <60.620834, 60.930141, 56.842907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.725319, 60.714279, 56.833649>,  <60.899464, 60.354507, 56.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.725319, 60.714279, 56.833649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743859, 0.335264, 0.578163,
		0.507086, 0.280398, -0.815010,
		-0.435359, 0.899430, 0.038569,
		60.594711, 60.984108, 56.845219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.337696, 59.875412, 57.108841>,  <60.899464, 60.354507, 56.818222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.337696, 59.875412, 57.108841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.626762, 60.056385, 57.317863>,  <61.800201, 60.164967, 57.443275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.626762, 60.056385, 57.317863>,  <61.337696, 59.875412, 57.108841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.626762, 60.056385, 57.317863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297056, -0.885924, 0.356225,
		0.624109, -0.102204, -0.774624,
		0.722666, 0.452430, 0.522552,
		61.843563, 60.192116, 57.474628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.925945, 59.623817, 56.738255>,  <61.337696, 59.875412, 57.108841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.925945, 59.623817, 56.738255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.019882, 59.742855, 57.108398>,  <62.076244, 59.814278, 57.330482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.019882, 59.742855, 57.108398>,  <61.925945, 59.623817, 56.738255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.019882, 59.742855, 57.108398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630793, -0.770962, 0.087854,
		0.739560, 0.563076, -0.368776,
		0.234844, 0.297594, 0.925357,
		62.090336, 59.832134, 57.386005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.599358, 60.019730, 56.908646>,  <61.925945, 59.623817, 56.738255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.599358, 60.019730, 56.908646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.436554, 59.752766, 57.158096>,  <62.338871, 59.592587, 57.307766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.436554, 59.752766, 57.158096>,  <62.599358, 60.019730, 56.908646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.436554, 59.752766, 57.158096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858233, -0.513143, 0.010952,
		0.312698, 0.539672, 0.781648,
		-0.407008, -0.667412, 0.623624,
		62.314453, 59.552544, 57.345184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.011642, 59.853832, 57.556488>,  <62.599358, 60.019730, 56.908646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.011642, 59.853832, 57.556488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.803879, 59.516811, 57.499474>,  <62.679222, 59.314598, 57.465263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.803879, 59.516811, 57.499474>,  <63.011642, 59.853832, 57.556488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.803879, 59.516811, 57.499474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778156, -0.535293, 0.328534,
		-0.353108, 0.059725, 0.933674,
		-0.519411, -0.842553, -0.142541,
		62.648056, 59.264046, 57.456711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.996487, 59.369526, 58.130802>,  <63.011642, 59.853832, 57.556488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.996487, 59.369526, 58.130802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.985977, 59.183022, 57.777100>,  <62.979671, 59.071121, 57.564877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.985977, 59.183022, 57.777100>,  <62.996487, 59.369526, 58.130802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.985977, 59.183022, 57.777100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748548, -0.595457, 0.291733,
		-0.662560, -0.654244, 0.364661,
		-0.026276, -0.466257, -0.884259,
		62.978096, 59.043144, 57.511822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.114052, 58.674946, 58.270172>,  <62.996487, 59.369526, 58.130802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.114052, 58.674946, 58.270172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.267700, 58.776428, 57.915077>,  <63.359890, 58.837318, 57.702019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.267700, 58.776428, 57.915077>,  <63.114052, 58.674946, 58.270172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.267700, 58.776428, 57.915077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791386, -0.585720, 0.175043,
		-0.475558, -0.769783, -0.425767,
		0.384126, 0.253704, -0.887740,
		63.382938, 58.852539, 57.648754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.286495, 58.052570, 57.812485>,  <63.114052, 58.674946, 58.270172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.286495, 58.052570, 57.812485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.529610, 58.369728, 57.829971>,  <63.675480, 58.560024, 57.840462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.529610, 58.369728, 57.829971>,  <63.286495, 58.052570, 57.812485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.529610, 58.369728, 57.829971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769989, -0.601899, 0.211739,
		0.194200, -0.095030, -0.976348,
		0.607785, 0.792898, 0.043717,
		63.711945, 58.607597, 57.843086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.845627, 58.138115, 57.284981>,  <63.286495, 58.052570, 57.812485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.845627, 58.138115, 57.284981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.903610, 58.278137, 57.655159>,  <63.938400, 58.362152, 57.877266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.903610, 58.278137, 57.655159>,  <63.845627, 58.138115, 57.284981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.903610, 58.278137, 57.655159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458970, -0.852395, 0.250536,
		0.876546, 0.388434, -0.284228,
		0.144958, 0.350059, 0.925444,
		63.947098, 58.383156, 57.932793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.562469, 58.114750, 57.610691>,  <63.845627, 58.138115, 57.284981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.562469, 58.114750, 57.610691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.304100, 58.104355, 57.915878>,  <64.149078, 58.098118, 58.098991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.304100, 58.104355, 57.915878>,  <64.562469, 58.114750, 57.610691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.304100, 58.104355, 57.915878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435717, -0.833195, 0.340495,
		0.626852, 0.552368, 0.549496,
		-0.645916, -0.025985, 0.762966,
		64.110329, 58.096558, 58.144768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.989510, 58.024750, 58.147778>,  <64.562469, 58.114750, 57.610691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.989510, 58.024750, 58.147778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.626144, 57.870602, 58.212624>,  <64.408127, 57.778114, 58.251530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.626144, 57.870602, 58.212624>,  <64.989510, 58.024750, 58.147778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.626144, 57.870602, 58.212624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412896, -0.766108, 0.492539,
		-0.065613, 0.514364, 0.855058,
		-0.908412, -0.385367, 0.162112,
		64.353622, 57.754990, 58.261257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.462646, 57.815376, 58.665974>,  <64.989510, 58.024750, 58.147778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.462646, 57.815376, 58.665974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.457291, 57.421570, 58.735893>,  <65.454079, 57.185287, 58.777843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.457291, 57.421570, 58.735893>,  <65.462646, 57.815376, 58.665974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.457291, 57.421570, 58.735893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843121, -0.105105, -0.527352,
		0.537557, 0.140311, 0.831472,
		-0.013398, -0.984513, 0.174800,
		65.453270, 57.126217, 58.788334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.054420, 57.479774, 59.097286>,  <65.462646, 57.815376, 58.665974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.054420, 57.479774, 59.097286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.913345, 57.236412, 58.812904>,  <65.828697, 57.090393, 58.642277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.913345, 57.236412, 58.812904>,  <66.054420, 57.479774, 59.097286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.913345, 57.236412, 58.812904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926278, -0.119228, -0.357482,
		0.132729, -0.784619, 0.605604,
		-0.352692, -0.608406, -0.710951,
		65.807541, 57.053890, 58.599621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.704369, 57.687279, 59.422707>,  <66.054420, 57.479774, 59.097286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.704369, 57.687279, 59.422707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.826088, 57.640461, 59.044563>,  <66.899124, 57.612370, 58.817677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.826088, 57.640461, 59.044563>,  <66.704369, 57.687279, 59.422707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.826088, 57.640461, 59.044563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562486, 0.778850, -0.277493,
		0.768770, 0.616192, 0.171173,
		0.304307, -0.117046, -0.945356,
		66.917381, 57.605347, 58.760956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.238617, 58.202049, 59.244263>,  <66.704369, 57.687279, 59.422707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.238617, 58.202049, 59.244263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.009102, 58.064152, 58.947098>,  <66.871391, 57.981415, 58.768799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.009102, 58.064152, 58.947098>,  <67.238617, 58.202049, 59.244263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.009102, 58.064152, 58.947098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464993, 0.883844, -0.051003,
		0.674204, 0.316185, -0.667440,
		-0.573787, -0.344742, -0.742915,
		66.836967, 57.960728, 58.724224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.549393, 58.885487, 59.069241>,  <67.238617, 58.202049, 59.244263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.549393, 58.885487, 59.069241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.341476, 59.127312, 59.310677>,  <67.216728, 59.272408, 59.455536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.341476, 59.127312, 59.310677>,  <67.549393, 58.885487, 59.069241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.341476, 59.127312, 59.310677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835884, 0.214060, 0.505446,
		0.176368, 0.767259, -0.616610,
		-0.519800, 0.604559, 0.603586,
		67.185539, 59.308678, 59.491753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.795868, 59.654434, 59.133987>,  <67.549393, 58.885487, 59.069241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.795868, 59.654434, 59.133987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.621170, 59.521099, 59.468208>,  <67.516350, 59.441097, 59.668739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.621170, 59.521099, 59.468208>,  <67.795868, 59.654434, 59.133987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.621170, 59.521099, 59.468208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783488, 0.315462, 0.535379,
		-0.442046, 0.888465, 0.123390,
		-0.436740, -0.333337, 0.835550,
		67.490150, 59.421097, 59.718872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.799530, 60.186848, 59.690060>,  <67.795868, 59.654434, 59.133987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.799530, 60.186848, 59.690060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.786613, 59.816803, 59.841393>,  <67.778862, 59.594776, 59.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.786613, 59.816803, 59.841393>,  <67.799530, 60.186848, 59.690060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.786613, 59.816803, 59.841393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740078, 0.232273, 0.631137,
		-0.671746, 0.300374, 0.677151,
		-0.032294, -0.925108, 0.378329,
		67.776924, 59.539272, 59.954891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.827087, 60.293945, 60.436577>,  <67.799530, 60.186848, 59.690060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.827087, 60.293945, 60.436577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.952324, 59.924633, 60.347557>,  <68.027466, 59.703045, 60.294144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.952324, 59.924633, 60.347557>,  <67.827087, 60.293945, 60.436577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.952324, 59.924633, 60.347557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688529, 0.059260, 0.722784,
		-0.654144, -0.379527, 0.654259,
		0.313088, -0.923281, -0.222551,
		68.046249, 59.647648, 60.280792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.377625, 60.167427, 60.985973>,  <67.827087, 60.293945, 60.436577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.377625, 60.167427, 60.985973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.421623, 59.846321, 60.751549>,  <68.448021, 59.653656, 60.610893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.421623, 59.846321, 60.751549>,  <68.377625, 60.167427, 60.985973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.421623, 59.846321, 60.751549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903345, -0.165192, 0.395829,
		-0.414571, -0.572953, 0.707005,
		0.109999, -0.802768, -0.586058,
		68.454620, 59.605492, 60.575729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.539238, 59.462440, 61.292183>,  <68.377625, 60.167427, 60.985973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.539238, 59.462440, 61.292183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.692131, 59.526428, 60.928139>,  <68.783867, 59.564819, 60.709713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.692131, 59.526428, 60.928139>,  <68.539238, 59.462440, 61.292183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.692131, 59.526428, 60.928139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920655, -0.150434, 0.360229,
		-0.079286, -0.975592, -0.204780,
		0.382242, 0.159970, -0.910110,
		68.806801, 59.574421, 60.655106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.977928, 58.948189, 60.981018>,  <68.539238, 59.462440, 61.292183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.977928, 58.948189, 60.981018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.090034, 59.270729, 60.772690>,  <69.157295, 59.464252, 60.647694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.090034, 59.270729, 60.772690>,  <68.977928, 58.948189, 60.981018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.090034, 59.270729, 60.772690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955718, -0.285124, 0.072853,
		-0.089752, -0.518172, -0.850554,
		0.280264, 0.806351, -0.520817,
		69.174110, 59.512634, 60.616444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.537201, 58.884785, 60.542870>,  <68.977928, 58.948189, 60.981018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.537201, 58.884785, 60.542870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.572151, 59.283028, 60.529434>,  <69.593124, 59.521973, 60.521374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.572151, 59.283028, 60.529434>,  <69.537201, 58.884785, 60.542870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.572151, 59.283028, 60.529434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996030, -0.087891, -0.014110,
		-0.017000, -0.032224, -0.999336,
		0.087378, 0.995609, -0.033590,
		69.598366, 59.581711, 60.519356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.879166, 59.187668, 59.889328>,  <69.537201, 58.884785, 60.542870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.879166, 59.187668, 59.889328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.934235, 59.394730, 60.227104>,  <69.967278, 59.518967, 60.429771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.934235, 59.394730, 60.227104>,  <69.879166, 59.187668, 59.889328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.934235, 59.394730, 60.227104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942438, -0.330757, 0.049100,
		0.304721, 0.789074, -0.533393,
		0.137680, 0.517651, 0.844442,
		69.975540, 59.550026, 60.480438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.030624, 59.808884, 59.545383>,  <69.879166, 59.187668, 59.889328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.030624, 59.808884, 59.545383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.989159, 60.177563, 59.395866>,  <69.964279, 60.398769, 59.306156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.989159, 60.177563, 59.395866>,  <70.030624, 59.808884, 59.545383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.989159, 60.177563, 59.395866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347078, 0.385714, 0.854846,
		0.932089, -0.041114, -0.359889,
		-0.103668, 0.921702, -0.373790,
		69.958061, 60.454075, 59.283730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.820435, 59.755299, 59.589794>,  <70.030624, 59.808884, 59.545383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.820435, 59.755299, 59.589794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.045975, 59.425793, 59.566162>,  <71.181297, 59.228088, 59.551983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.045975, 59.425793, 59.566162>,  <70.820435, 59.755299, 59.589794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.045975, 59.425793, 59.566162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440695, -0.360607, 0.822040,
		-0.698472, -0.437468, -0.566355,
		0.563849, -0.823762, -0.059084,
		71.215126, 59.178665, 59.548435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.512978, 59.024124, 59.437794>,  <70.820435, 59.755299, 59.589794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.512978, 59.024124, 59.437794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.839615, 59.070084, 59.664055>,  <71.035599, 59.097660, 59.799812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.839615, 59.070084, 59.664055>,  <70.512978, 59.024124, 59.437794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.839615, 59.070084, 59.664055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468020, -0.441747, 0.765386,
		0.337815, -0.889752, -0.306958,
		0.816601, 0.114896, 0.565651,
		71.084595, 59.104553, 59.833752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.498451, 58.358200, 59.764313>,  <70.512978, 59.024124, 59.437794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.498451, 58.358200, 59.764313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.685890, 58.647423, 59.967331>,  <70.798355, 58.820957, 60.089142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.685890, 58.647423, 59.967331>,  <70.498451, 58.358200, 59.764313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.685890, 58.647423, 59.967331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601575, -0.159554, 0.782720,
		0.646933, -0.672107, 0.360208,
		0.468599, 0.723059, 0.507543,
		70.826469, 58.864342, 60.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.810295, 58.081524, 60.511490>,  <70.498451, 58.358200, 59.764313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.810295, 58.081524, 60.511490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.709068, 58.468212, 60.496475>,  <70.648331, 58.700226, 60.487469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.709068, 58.468212, 60.496475>,  <70.810295, 58.081524, 60.511490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.709068, 58.468212, 60.496475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696696, -0.155184, 0.700380,
		0.671249, 0.203387, 0.712782,
		-0.253061, 0.966722, -0.037533,
		70.633148, 58.758228, 60.485214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.244003, 57.609055, 60.946274>,  <70.810295, 58.081524, 60.511490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.244003, 57.609055, 60.946274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.510780, 57.724350, 60.671432>,  <71.670845, 57.793530, 60.506527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.510780, 57.724350, 60.671432>,  <71.244003, 57.609055, 60.946274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.510780, 57.724350, 60.671432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497163, 0.859007, -0.122214,
		0.555000, 0.423112, 0.716206,
		0.666937, 0.288242, -0.687104,
		71.710861, 57.810822, 60.465302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.958061, 57.942230, 60.905670>,  <71.244003, 57.609055, 60.946274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.958061, 57.942230, 60.905670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.339508, 58.062630, 60.907867>,  <72.568375, 58.134869, 60.909187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.339508, 58.062630, 60.907867>,  <71.958061, 57.942230, 60.905670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.339508, 58.062630, 60.907867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291047, -0.917119, -0.272370,
		-0.076945, 0.261333, -0.962177,
		0.953609, 0.300997, 0.005492,
		72.625587, 58.152927, 60.909515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.394882, 57.952770, 60.244385>,  <71.958061, 57.942230, 60.905670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.394882, 57.952770, 60.244385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.646721, 57.881599, 60.546898>,  <72.797821, 57.838898, 60.728405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.646721, 57.881599, 60.546898>,  <72.394882, 57.952770, 60.244385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.646721, 57.881599, 60.546898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267542, -0.864239, -0.426043,
		0.729411, 0.470569, -0.496513,
		0.629588, -0.177922, 0.756282,
		72.835594, 57.828224, 60.773781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.126122, 57.797901, 60.040230>,  <72.394882, 57.952770, 60.244385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.126122, 57.797901, 60.040230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.015129, 57.603840, 60.371925>,  <72.948532, 57.487404, 60.570942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.015129, 57.603840, 60.371925>,  <73.126122, 57.797901, 60.040230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.015129, 57.603840, 60.371925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319575, -0.860586, -0.396564,
		0.906024, 0.154965, 0.393837,
		-0.277477, -0.485157, 0.829234,
		72.931885, 57.458294, 60.620697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.679321, 57.529011, 60.449829>,  <73.126122, 57.797901, 60.040230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.679321, 57.529011, 60.449829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.364822, 57.284557, 60.486320>,  <73.176125, 57.137886, 60.508217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.364822, 57.284557, 60.486320>,  <73.679321, 57.529011, 60.449829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.364822, 57.284557, 60.486320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483161, -0.700099, -0.525754,
		0.385176, -0.369297, 0.845730,
		-0.786254, -0.611131, 0.091231,
		73.128944, 57.101219, 60.513691>
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
