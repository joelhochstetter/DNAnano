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
	<36.032310, 54.121449, 50.238068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219208, 53.793262, 50.369839>,  <36.331345, 53.596352, 50.448902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219208, 53.793262, 50.369839>,  <36.032310, 54.121449, 50.238068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219208, 53.793262, 50.369839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850264, 0.314847, -0.421809,
		0.242362, 0.477184, 0.844722,
		0.467239, -0.820467, 0.329426,
		36.359379, 53.547123, 50.468666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638935, 54.277840, 50.627426>,  <36.032310, 54.121449, 50.238068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638935, 54.277840, 50.627426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679955, 53.927971, 50.437931>,  <36.704567, 53.718048, 50.324234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679955, 53.927971, 50.437931>,  <36.638935, 54.277840, 50.627426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679955, 53.927971, 50.437931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865019, 0.313560, -0.391691,
		0.491148, -0.369628, 0.788764,
		0.102545, -0.874675, -0.473739,
		36.710716, 53.665569, 50.295811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296555, 54.079597, 50.824196>,  <36.638935, 54.277840, 50.627426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296555, 54.079597, 50.824196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206284, 53.880070, 50.489471>,  <37.152122, 53.760353, 50.288635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206284, 53.880070, 50.489471>,  <37.296555, 54.079597, 50.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206284, 53.880070, 50.489471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891715, 0.240148, -0.383631,
		0.392321, -0.832772, 0.390609,
		-0.225673, -0.498819, -0.836810,
		37.138580, 53.730423, 50.238430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725319, 53.355350, 50.604576>,  <37.296555, 54.079597, 50.824196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725319, 53.355350, 50.604576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604172, 53.605923, 50.317284>,  <37.531483, 53.756264, 50.144909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604172, 53.605923, 50.317284>,  <37.725319, 53.355350, 50.604576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604172, 53.605923, 50.317284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952184, 0.167109, -0.255776,
		-0.040202, -0.761357, -0.647086,
		-0.302870, 0.626427, -0.718233,
		37.513309, 53.793850, 50.101814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959499, 53.094208, 49.963177>,  <37.725319, 53.355350, 50.604576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959499, 53.094208, 49.963177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934689, 53.492939, 49.943233>,  <37.919804, 53.732178, 49.931267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934689, 53.492939, 49.943233>,  <37.959499, 53.094208, 49.963177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934689, 53.492939, 49.943233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994929, 0.057789, -0.082318,
		-0.079176, -0.054713, -0.995358,
		-0.062025, 0.996828, -0.049860,
		37.916080, 53.791988, 49.928276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415661, 53.408291, 49.406017>,  <37.959499, 53.094208, 49.963177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415661, 53.408291, 49.406017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351208, 53.684906, 49.687675>,  <38.312538, 53.850876, 49.856670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351208, 53.684906, 49.687675>,  <38.415661, 53.408291, 49.406017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351208, 53.684906, 49.687675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986930, 0.111109, 0.116720,
		0.002479, 0.713746, -0.700401,
		-0.161130, 0.691536, 0.704142,
		38.302868, 53.892368, 49.898918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702190, 54.145580, 49.263062>,  <38.415661, 53.408291, 49.406017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702190, 54.145580, 49.263062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679607, 54.090988, 49.658676>,  <38.666058, 54.058235, 49.896046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679607, 54.090988, 49.658676>,  <38.702190, 54.145580, 49.263062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679607, 54.090988, 49.658676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991650, 0.107371, 0.071425,
		-0.115942, 0.984808, 0.129274,
		-0.056460, -0.136475, 0.989033,
		38.662670, 54.050045, 49.955387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180573, 54.671234, 49.692707>,  <38.702190, 54.145580, 49.263062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180573, 54.671234, 49.692707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111088, 54.353104, 49.925011>,  <39.069397, 54.162228, 50.064392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111088, 54.353104, 49.925011>,  <39.180573, 54.671234, 49.692707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111088, 54.353104, 49.925011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958356, -0.000781, 0.285576,
		-0.226672, 0.606185, 0.762339,
		-0.173707, -0.795324, 0.580764,
		39.058975, 54.114506, 50.099239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365063, 54.787930, 50.435375>,  <39.180573, 54.671234, 49.692707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365063, 54.787930, 50.435375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412594, 54.397308, 50.363564>,  <39.441113, 54.162937, 50.320477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412594, 54.397308, 50.363564>,  <39.365063, 54.787930, 50.435375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412594, 54.397308, 50.363564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944873, 0.055655, 0.322673,
		-0.305114, -0.207975, 0.929329,
		0.118829, -0.976550, -0.179529,
		39.448242, 54.104343, 50.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687378, 54.426502, 51.093575>,  <39.365063, 54.787930, 50.435375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687378, 54.426502, 51.093575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750587, 54.221851, 50.755756>,  <39.788513, 54.099060, 50.553066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750587, 54.221851, 50.755756>,  <39.687378, 54.426502, 51.093575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750587, 54.221851, 50.755756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987092, 0.104393, 0.121456,
		0.026024, -0.852842, 0.521521,
		0.158026, -0.511628, -0.844550,
		39.797997, 54.068363, 50.502392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224983, 53.919296, 51.203228>,  <39.687378, 54.426502, 51.093575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224983, 53.919296, 51.203228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201183, 54.036613, 50.821560>,  <40.186901, 54.107002, 50.592560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201183, 54.036613, 50.821560>,  <40.224983, 53.919296, 51.203228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201183, 54.036613, 50.821560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993538, 0.109945, -0.028164,
		0.096646, -0.949679, -0.297941,
		-0.059504, 0.293294, -0.954169,
		40.183331, 54.124603, 50.535309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596107, 53.503506, 50.656094>,  <40.224983, 53.919296, 51.203228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596107, 53.503506, 50.656094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571934, 53.888725, 50.551109>,  <40.557430, 54.119858, 50.488117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571934, 53.888725, 50.551109>,  <40.596107, 53.503506, 50.656094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571934, 53.888725, 50.551109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997585, 0.067295, 0.017213,
		0.034239, -0.260788, -0.964789,
		-0.060437, 0.963048, -0.262462,
		40.553802, 54.177639, 50.472370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212952, 53.588043, 50.181946>,  <40.596107, 53.503506, 50.656094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212952, 53.588043, 50.181946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093723, 53.945320, 50.316628>,  <41.022186, 54.159687, 50.397434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093723, 53.945320, 50.316628>,  <41.212952, 53.588043, 50.181946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093723, 53.945320, 50.316628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953415, 0.295724, 0.059552,
		-0.046379, 0.338766, -0.939727,
		-0.298074, 0.893188, 0.336700,
		41.004299, 54.213276, 50.417637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472473, 54.085056, 49.714001>,  <41.212952, 53.588043, 50.181946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472473, 54.085056, 49.714001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440990, 54.190533, 50.098557>,  <41.422100, 54.253819, 50.329292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440990, 54.190533, 50.098557>,  <41.472473, 54.085056, 49.714001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440990, 54.190533, 50.098557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955968, 0.293461, -0.002228,
		-0.282719, 0.918884, -0.275176,
		-0.078706, 0.263690, 0.961391,
		41.417377, 54.269638, 50.386974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576111, 54.838078, 49.765549>,  <41.472473, 54.085056, 49.714001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576111, 54.838078, 49.765549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680416, 54.599987, 50.069576>,  <41.743000, 54.457134, 50.251995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680416, 54.599987, 50.069576>,  <41.576111, 54.838078, 49.765549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680416, 54.599987, 50.069576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961816, 0.227982, -0.151443,
		-0.083140, 0.770539, 0.631947,
		0.260766, -0.595226, 0.760071,
		41.758644, 54.421421, 50.297596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006718, 55.246815, 50.314190>,  <41.576111, 54.838078, 49.765549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006718, 55.246815, 50.314190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080990, 54.854660, 50.287754>,  <42.125553, 54.619370, 50.271893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080990, 54.854660, 50.287754>,  <42.006718, 55.246815, 50.314190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080990, 54.854660, 50.287754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982558, 0.184565, 0.022719,
		-0.010076, -0.069154, 0.997555,
		0.185685, -0.980385, -0.066088,
		42.136696, 54.560543, 50.267929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641937, 55.039818, 50.749264>,  <42.006718, 55.246815, 50.314190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641937, 55.039818, 50.749264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590904, 54.782230, 50.447525>,  <42.560284, 54.627678, 50.266483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590904, 54.782230, 50.447525>,  <42.641937, 55.039818, 50.749264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590904, 54.782230, 50.447525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975324, 0.056712, -0.213370,
		0.180183, -0.762950, 0.620839,
		-0.127581, -0.643965, -0.754342,
		42.552631, 54.589043, 50.221222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989639, 54.323750, 50.871586>,  <42.641937, 55.039818, 50.749264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989639, 54.323750, 50.871586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914375, 54.045818, 51.149235>,  <42.869217, 53.879059, 51.315826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914375, 54.045818, 51.149235>,  <42.989639, 54.323750, 50.871586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914375, 54.045818, 51.149235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700273, 0.400627, 0.590860,
		-0.688631, 0.597255, 0.411185,
		-0.188162, -0.694827, 0.694126,
		42.857925, 53.837372, 51.357471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095207, 54.686470, 51.562340>,  <42.989639, 54.323750, 50.871586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095207, 54.686470, 51.562340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138000, 54.291069, 51.605072>,  <43.163677, 54.053829, 51.630711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138000, 54.291069, 51.605072>,  <43.095207, 54.686470, 51.562340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138000, 54.291069, 51.605072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812637, 0.148847, 0.563440,
		-0.572865, 0.026536, 0.819220,
		0.106988, -0.988504, 0.106833,
		43.170097, 53.994518, 51.637123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478870, 54.475765, 52.153507>,  <43.095207, 54.686470, 51.562340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478870, 54.475765, 52.153507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517525, 54.136566, 51.945061>,  <43.540718, 53.933048, 51.819992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517525, 54.136566, 51.945061>,  <43.478870, 54.475765, 52.153507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517525, 54.136566, 51.945061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923729, -0.118567, 0.364233,
		-0.370656, -0.516566, 0.771864,
		0.096632, -0.847999, -0.521114,
		43.546513, 53.882168, 51.788727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138149, 54.168770, 52.143242>,  <43.478870, 54.475765, 52.153507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138149, 54.168770, 52.143242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259594, 54.137585, 52.523083>,  <44.332462, 54.118874, 52.750988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259594, 54.137585, 52.523083>,  <44.138149, 54.168770, 52.143242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259594, 54.137585, 52.523083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823335, 0.523056, -0.220298,
		-0.479519, 0.848724, 0.222999,
		0.303613, -0.077966, 0.949600,
		44.350677, 54.114197, 52.807964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289993, 54.887875, 52.423981>,  <44.138149, 54.168770, 52.143242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289993, 54.887875, 52.423981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505959, 54.595081, 52.590210>,  <44.635536, 54.419407, 52.689949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505959, 54.595081, 52.590210>,  <44.289993, 54.887875, 52.423981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505959, 54.595081, 52.590210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820819, 0.567206, -0.067335,
		-0.186428, 0.377466, 0.907063,
		0.539909, -0.731981, 0.415574,
		44.667931, 54.375488, 52.714882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533642, 55.059837, 53.084789>,  <44.289993, 54.887875, 52.423981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533642, 55.059837, 53.084789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768822, 54.808971, 52.880444>,  <44.909931, 54.658451, 52.757835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768822, 54.808971, 52.880444>,  <44.533642, 55.059837, 53.084789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768822, 54.808971, 52.880444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608369, 0.759077, -0.231710,
		0.533103, -0.174558, 0.827847,
		0.587952, -0.627162, -0.510862,
		44.945206, 54.620823, 52.727184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181778, 55.077312, 53.428059>,  <44.533642, 55.059837, 53.084789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181778, 55.077312, 53.428059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263699, 54.953739, 53.056549>,  <45.312851, 54.879597, 52.833645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263699, 54.953739, 53.056549>,  <45.181778, 55.077312, 53.428059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263699, 54.953739, 53.056549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744399, 0.665285, -0.057142,
		0.635552, -0.679675, 0.366218,
		0.204801, -0.308930, -0.928773,
		45.325138, 54.861061, 52.777916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875603, 54.794601, 53.339962>,  <45.181778, 55.077312, 53.428059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875603, 54.794601, 53.339962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741924, 54.967323, 53.004852>,  <45.661716, 55.070957, 52.803787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741924, 54.967323, 53.004852>,  <45.875603, 54.794601, 53.339962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741924, 54.967323, 53.004852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818160, 0.574186, -0.030423,
		0.467900, -0.695599, -0.545171,
		-0.334192, 0.431802, -0.837772,
		45.641666, 55.096863, 52.753521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388374, 54.788979, 52.692936>,  <45.875603, 54.794601, 53.339962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.388374, 54.788979, 52.692936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144699, 55.106182, 52.690689>,  <45.998493, 55.296505, 52.689342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144699, 55.106182, 52.690689>,  <46.388374, 54.788979, 52.692936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144699, 55.106182, 52.690689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792998, 0.609093, -0.012632,
		-0.006596, -0.012150, -0.999905,
		-0.609189, 0.793006, -0.005617,
		45.961941, 55.344086, 52.689003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675121, 55.140598, 52.204414>,  <46.388374, 54.788979, 52.692936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675121, 55.140598, 52.204414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459732, 55.377636, 52.444038>,  <46.330498, 55.519859, 52.587814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459732, 55.377636, 52.444038>,  <46.675121, 55.140598, 52.204414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459732, 55.377636, 52.444038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732796, 0.680299, -0.014269,
		-0.415999, 0.431308, -0.800573,
		-0.538475, 0.592593, 0.599065,
		46.298191, 55.555412, 52.623756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693306, 55.819077, 51.886879>,  <46.675121, 55.140598, 52.204414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693306, 55.819077, 51.886879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655449, 55.826805, 52.285007>,  <46.632736, 55.831440, 52.523884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655449, 55.826805, 52.285007>,  <46.693306, 55.819077, 51.886879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655449, 55.826805, 52.285007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777759, 0.625515, 0.061814,
		-0.621396, 0.779973, -0.074227,
		-0.094644, 0.019320, 0.995324,
		46.627056, 55.832600, 52.583603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548710, 56.468979, 52.040859>,  <46.693306, 55.819077, 51.886879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548710, 56.468979, 52.040859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727562, 56.293678, 52.352760>,  <46.834873, 56.188499, 52.539902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727562, 56.293678, 52.352760>,  <46.548710, 56.468979, 52.040859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727562, 56.293678, 52.352760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818537, 0.551970, -0.159140,
		-0.360658, 0.709413, 0.605523,
		0.447127, -0.438248, 0.779754,
		46.861702, 56.162205, 52.586685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666161, 56.812504, 52.736885>,  <46.548710, 56.468979, 52.040859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666161, 56.812504, 52.736885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973568, 56.580620, 52.628586>,  <47.158012, 56.441490, 52.563606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973568, 56.580620, 52.628586>,  <46.666161, 56.812504, 52.736885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973568, 56.580620, 52.628586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558276, 0.814302, -0.158872,
		0.312571, -0.029056, 0.949450,
		0.768523, -0.579714, -0.270748,
		47.204124, 56.406704, 52.547359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251213, 57.073746, 53.067268>,  <46.666161, 56.812504, 52.736885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251213, 57.073746, 53.067268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345974, 56.868198, 52.737465>,  <47.402832, 56.744869, 52.539581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345974, 56.868198, 52.737465>,  <47.251213, 57.073746, 53.067268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.345974, 56.868198, 52.737465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545947, 0.772414, -0.324528,
		0.803628, -0.373257, 0.463531,
		0.236906, -0.513864, -0.824512,
		47.417046, 56.714039, 52.490112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.949512, 56.965397, 53.019619>,  <47.251213, 57.073746, 53.067268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.949512, 56.965397, 53.019619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.807465, 56.952782, 52.645905>,  <47.722237, 56.945213, 52.421677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.807465, 56.952782, 52.645905>,  <47.949512, 56.965397, 53.019619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.807465, 56.952782, 52.645905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735640, 0.607262, -0.300112,
		0.576824, -0.793875, -0.192445,
		-0.355116, -0.031541, -0.934290,
		47.700932, 56.943317, 52.365616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.393570, 56.580303, 52.517727>,  <47.949512, 56.965397, 53.019619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.393570, 56.580303, 52.517727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.187664, 56.848423, 52.303917>,  <48.064121, 57.009293, 52.175629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.187664, 56.848423, 52.303917>,  <48.393570, 56.580303, 52.517727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.187664, 56.848423, 52.303917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848610, 0.487076, -0.206442,
		0.121977, -0.559874, -0.819550,
		-0.514765, 0.670297, -0.534527,
		48.033234, 57.049511, 52.143559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.778152, 56.232414, 52.000984>,  <48.393570, 56.580303, 52.517727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.778152, 56.232414, 52.000984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.892002, 55.902378, 52.196213>,  <48.960312, 55.704357, 52.313351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.892002, 55.902378, 52.196213>,  <48.778152, 56.232414, 52.000984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.892002, 55.902378, 52.196213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277252, -0.416523, -0.865818,
		0.917670, 0.381755, 0.110204,
		0.284628, -0.825089, 0.488073,
		48.977390, 55.654850, 52.342636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.526100, 56.068256, 52.121376>,  <48.778152, 56.232414, 52.000984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.526100, 56.068256, 52.121376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.348179, 55.734184, 51.991997>,  <49.241425, 55.533741, 51.914368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.348179, 55.734184, 51.991997>,  <49.526100, 56.068256, 52.121376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.348179, 55.734184, 51.991997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653265, -0.055489, -0.755094,
		0.612694, -0.547166, 0.570277,
		-0.444806, -0.835183, -0.323447,
		49.214737, 55.483631, 51.894962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.033508, 55.534870, 51.967525>,  <49.526100, 56.068256, 52.121376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.033508, 55.534870, 51.967525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710526, 55.554768, 51.732395>,  <49.516735, 55.566708, 51.591316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710526, 55.554768, 51.732395>,  <50.033508, 55.534870, 51.967525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.710526, 55.554768, 51.732395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589589, 0.034418, -0.806969,
		-0.019915, -0.998169, -0.057123,
		-0.807457, 0.049749, -0.587824,
		49.468288, 55.569691, 51.556049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.615074, 55.205585, 51.991573>,  <50.033508, 55.534870, 51.967525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.615074, 55.205585, 51.991573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.728607, 54.822052, 51.995159>,  <50.796726, 54.591934, 51.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.728607, 54.822052, 51.995159>,  <50.615074, 55.205585, 51.991573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.728607, 54.822052, 51.995159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947562, 0.281907, 0.150518,
		-0.146849, -0.034225, 0.988567,
		0.283836, -0.958831, 0.008967,
		50.813759, 54.534401, 51.997849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.076965, 55.273674, 52.556358>,  <50.615074, 55.205585, 51.991573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.076965, 55.273674, 52.556358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.163124, 55.030521, 52.250656>,  <51.214817, 54.884628, 52.067234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.163124, 55.030521, 52.250656>,  <51.076965, 55.273674, 52.556358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.163124, 55.030521, 52.250656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921464, 0.385609, -0.047012,
		0.323281, -0.694106, 0.643201,
		0.215392, -0.607884, -0.764253,
		51.227741, 54.848156, 52.021381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.707417, 55.633846, 52.420109>,  <51.076965, 55.273674, 52.556358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.707417, 55.633846, 52.420109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.659660, 55.309978, 52.190262>,  <51.631008, 55.115658, 52.052353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.659660, 55.309978, 52.190262>,  <51.707417, 55.633846, 52.420109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.659660, 55.309978, 52.190262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948770, 0.077493, -0.306317,
		0.292544, -0.581749, 0.758937,
		-0.119387, -0.809668, -0.574616,
		51.623844, 55.067078, 52.017876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.101162, 54.934765, 52.640129>,  <51.707417, 55.633846, 52.420109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.101162, 54.934765, 52.640129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061859, 54.937634, 52.242073>,  <52.038277, 54.939354, 52.003239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061859, 54.937634, 52.242073>,  <52.101162, 54.934765, 52.640129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.061859, 54.937634, 52.242073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948848, 0.302182, -0.091509,
		0.300056, -0.953223, -0.036493,
		-0.098256, 0.007169, -0.995135,
		52.032383, 54.939785, 51.943531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.678848, 54.536617, 52.243080>,  <52.101162, 54.934765, 52.640129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.678848, 54.536617, 52.243080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.538738, 54.847301, 52.033688>,  <52.454670, 55.033710, 51.908054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.538738, 54.847301, 52.033688>,  <52.678848, 54.536617, 52.243080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.538738, 54.847301, 52.033688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936556, 0.298158, -0.184293,
		0.012938, -0.554821, -0.831869,
		-0.350278, 0.776708, -0.523479,
		52.433655, 55.080315, 51.876644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.830635, 54.545380, 51.530453>,  <52.678848, 54.536617, 52.243080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.830635, 54.545380, 51.530453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.795452, 54.927464, 51.643471>,  <52.774342, 55.156715, 51.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.795452, 54.927464, 51.643471>,  <52.830635, 54.545380, 51.530453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.795452, 54.927464, 51.643471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944886, 0.169809, -0.279918,
		-0.315360, 0.242352, -0.917504,
		-0.087962, 0.955212, 0.282546,
		52.769062, 55.214027, 51.728233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.226189, 54.835957, 51.030613>,  <52.830635, 54.545380, 51.530453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.226189, 54.835957, 51.030613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.218666, 55.114651, 51.317444>,  <53.214153, 55.281868, 51.489544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.218666, 55.114651, 51.317444>,  <53.226189, 54.835957, 51.030613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.218666, 55.114651, 51.317444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986029, 0.131650, -0.102058,
		-0.165511, 0.705143, -0.689477,
		-0.018804, 0.696736, 0.717081,
		53.213024, 55.323673, 51.532570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.353374, 55.543491, 50.768887>,  <53.226189, 54.835957, 51.030613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.353374, 55.543491, 50.768887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.486153, 55.476002, 51.140121>,  <53.565819, 55.435509, 51.362862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.486153, 55.476002, 51.140121>,  <53.353374, 55.543491, 50.768887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.486153, 55.476002, 51.140121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939831, 0.143460, -0.310061,
		-0.080827, 0.975167, 0.206196,
		0.331942, -0.168728, 0.928087,
		53.585735, 55.425385, 51.418549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.796299, 56.071106, 51.103256>,  <53.353374, 55.543491, 50.768887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.796299, 56.071106, 51.103256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.882114, 55.731918, 51.297134>,  <53.933605, 55.528408, 51.413460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.882114, 55.731918, 51.297134>,  <53.796299, 56.071106, 51.103256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.882114, 55.731918, 51.297134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966586, 0.113045, -0.230070,
		0.140300, 0.517855, 0.843885,
		0.214540, -0.847966, 0.484691,
		53.946476, 55.477528, 51.442543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.211891, 56.125961, 51.738659>,  <53.796299, 56.071106, 51.103256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.211891, 56.125961, 51.738659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274277, 55.760853, 51.587646>,  <54.311707, 55.541790, 51.497040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274277, 55.760853, 51.587646>,  <54.211891, 56.125961, 51.738659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.274277, 55.760853, 51.587646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939867, 0.254706, -0.227542,
		0.303853, -0.319345, 0.897604,
		0.155961, -0.912767, -0.377535,
		54.321064, 55.487022, 51.474384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.616497, 55.726418, 52.246727>,  <54.211891, 56.125961, 51.738659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.616497, 55.726418, 52.246727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.642342, 55.710949, 51.847862>,  <54.657848, 55.701668, 51.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.642342, 55.710949, 51.847862>,  <54.616497, 55.726418, 52.246727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.642342, 55.710949, 51.847862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978806, 0.197046, 0.055776,
		0.194330, -0.979631, 0.050587,
		0.064608, -0.038676, -0.997161,
		54.661724, 55.699345, 51.548714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.192780, 55.313408, 52.036514>,  <54.616497, 55.726418, 52.246727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.192780, 55.313408, 52.036514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.105698, 55.576714, 51.748268>,  <55.053448, 55.734695, 51.575321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.105698, 55.576714, 51.748268>,  <55.192780, 55.313408, 52.036514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.105698, 55.576714, 51.748268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974694, 0.108243, -0.195591,
		-0.050748, -0.744964, -0.665172,
		-0.217708, 0.658264, -0.720619,
		55.040386, 55.774193, 51.532082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.683743, 55.152256, 51.529015>,  <55.192780, 55.313408, 52.036514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.683743, 55.152256, 51.529015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.556305, 55.530338, 51.500504>,  <55.479843, 55.757187, 51.483395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.556305, 55.530338, 51.500504>,  <55.683743, 55.152256, 51.529015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.556305, 55.530338, 51.500504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910503, 0.284253, -0.300306,
		-0.263589, -0.160579, -0.951176,
		-0.318597, 0.945206, -0.071282,
		55.460724, 55.813900, 51.479118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.908222, 55.420452, 50.887367>,  <55.683743, 55.152256, 51.529015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.908222, 55.420452, 50.887367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.872902, 55.720177, 51.149887>,  <55.851711, 55.900013, 51.307400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.872902, 55.720177, 51.149887>,  <55.908222, 55.420452, 50.887367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.872902, 55.720177, 51.149887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938545, 0.283297, -0.197172,
		-0.333672, 0.598555, -0.728282,
		-0.088301, 0.749316, 0.656299,
		55.846413, 55.944973, 51.346775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.232380, 55.943073, 50.554993>,  <55.908222, 55.420452, 50.887367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.232380, 55.943073, 50.554993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.233215, 56.045841, 50.941563>,  <56.233715, 56.107502, 51.173504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.233215, 56.045841, 50.941563>,  <56.232380, 55.943073, 50.554993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.233215, 56.045841, 50.941563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966359, 0.248037, -0.068029,
		-0.257189, 0.934060, -0.247761,
		0.002090, 0.256923, 0.966430,
		56.233841, 56.122917, 51.231491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.448345, 56.681396, 50.640976>,  <56.232380, 55.943073, 50.554993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.448345, 56.681396, 50.640976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.516891, 56.502464, 50.992096>,  <56.558018, 56.395103, 51.202766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.516891, 56.502464, 50.992096>,  <56.448345, 56.681396, 50.640976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.516891, 56.502464, 50.992096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969946, 0.232821, -0.070709,
		-0.172739, 0.863533, 0.473784,
		0.171367, -0.447331, 0.877798,
		56.568302, 56.368263, 51.255436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.901356, 57.100201, 51.070244>,  <56.448345, 56.681396, 50.640976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.901356, 57.100201, 51.070244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.946381, 56.727238, 51.207619>,  <56.973396, 56.503460, 51.290043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.946381, 56.727238, 51.207619>,  <56.901356, 57.100201, 51.070244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.946381, 56.727238, 51.207619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993300, 0.114697, -0.014162,
		-0.026186, 0.342728, 0.939070,
		0.112562, -0.932407, 0.343435,
		56.980148, 56.447517, 51.310650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.315407, 57.007248, 51.784264>,  <56.901356, 57.100201, 51.070244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.315407, 57.007248, 51.784264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.349953, 56.672852, 51.567505>,  <57.370682, 56.472214, 51.437450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.349953, 56.672852, 51.567505>,  <57.315407, 57.007248, 51.784264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.349953, 56.672852, 51.567505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993708, 0.111224, -0.013214,
		0.071319, -0.537349, 0.840339,
		0.086365, -0.835994, -0.541900,
		57.375862, 56.422054, 51.404934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.917770, 56.569920, 52.019962>,  <57.315407, 57.007248, 51.784264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.917770, 56.569920, 52.019962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.855789, 56.519180, 51.628063>,  <57.818600, 56.488735, 51.392925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.855789, 56.519180, 51.628063>,  <57.917770, 56.569920, 52.019962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.855789, 56.519180, 51.628063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905940, 0.377303, -0.192131,
		0.394032, -0.917361, 0.056454,
		-0.154954, -0.126850, -0.979744,
		57.809303, 56.481125, 51.334141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.970676, 56.636711, 52.830002>,  <57.917770, 56.569920, 52.019962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.970676, 56.636711, 52.830002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.941681, 56.975502, 52.619339>,  <57.924282, 57.178776, 52.492939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.941681, 56.975502, 52.619339>,  <57.970676, 56.636711, 52.830002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.941681, 56.975502, 52.619339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125530, 0.531599, 0.837643,
		0.989438, -0.005388, -0.144859,
		-0.072493, 0.846979, -0.526660,
		57.919933, 57.229595, 52.461342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.760345, 56.361103, 52.895195>,  <57.970676, 56.636711, 52.830002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.760345, 56.361103, 52.895195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.863571, 56.236992, 53.261173>,  <58.925507, 56.162525, 53.480759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.863571, 56.236992, 53.261173>,  <58.760345, 56.361103, 52.895195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.863571, 56.236992, 53.261173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963891, 0.018283, -0.265670,
		0.065704, 0.950469, 0.303795,
		0.258066, -0.310281, 0.914947,
		58.940990, 56.143909, 53.535656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.043724, 56.851521, 53.280533>,  <58.760345, 56.361103, 52.895195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.043724, 56.851521, 53.280533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.202446, 56.507568, 53.409000>,  <59.297680, 56.301197, 53.486080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.202446, 56.507568, 53.409000>,  <59.043724, 56.851521, 53.280533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.202446, 56.507568, 53.409000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867353, 0.236738, -0.437783,
		0.300410, 0.452280, 0.839760,
		0.396804, -0.859883, 0.321168,
		59.321487, 56.249603, 53.505352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.651814, 56.941807, 53.657967>,  <59.043724, 56.851521, 53.280533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.651814, 56.941807, 53.657967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.667221, 56.592438, 53.463791>,  <59.676468, 56.382816, 53.347286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.667221, 56.592438, 53.463791>,  <59.651814, 56.941807, 53.657967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.667221, 56.592438, 53.463791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887073, 0.253533, -0.385775,
		0.460019, -0.415759, 0.784555,
		0.038521, -0.873422, -0.485439,
		59.678776, 56.330410, 53.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.336967, 56.620586, 53.735332>,  <59.651814, 56.941807, 53.657967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.336967, 56.620586, 53.735332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.164734, 56.485474, 53.400547>,  <60.061394, 56.404408, 53.199677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.164734, 56.485474, 53.400547>,  <60.336967, 56.620586, 53.735332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.164734, 56.485474, 53.400547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887021, 0.012915, -0.461549,
		0.166711, -0.941137, 0.294057,
		-0.430583, -0.337780, -0.836961,
		60.035561, 56.384140, 53.149460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.795887, 56.144382, 53.560722>,  <60.336967, 56.620586, 53.735332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.795887, 56.144382, 53.560722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.581970, 56.213184, 53.229805>,  <60.453621, 56.254467, 53.031254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.581970, 56.213184, 53.229805>,  <60.795887, 56.144382, 53.560722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.581970, 56.213184, 53.229805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844829, 0.090189, -0.527380,
		-0.016099, -0.980959, -0.193547,
		-0.534795, 0.172004, -0.827291,
		60.421532, 56.264786, 52.981617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.074505, 55.622822, 53.017769>,  <60.795887, 56.144382, 53.560722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.074505, 55.622822, 53.017769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.926437, 55.966049, 52.875389>,  <60.837597, 56.171986, 52.789959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.926437, 55.966049, 52.875389>,  <61.074505, 55.622822, 53.017769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.926437, 55.966049, 52.875389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869260, 0.184787, -0.458519,
		-0.327664, -0.479143, -0.814284,
		-0.370166, 0.858065, -0.355952,
		60.815388, 56.223469, 52.768604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.410572, 56.345875, 52.870319>,  <61.074505, 55.622822, 53.017769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.410572, 56.345875, 52.870319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.748924, 56.557652, 52.896172>,  <61.951935, 56.684715, 52.911682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.748924, 56.557652, 52.896172>,  <61.410572, 56.345875, 52.870319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.748924, 56.557652, 52.896172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398240, -0.546326, -0.736840,
		-0.354804, 0.649017, -0.672972,
		0.845883, 0.529438, 0.064626,
		62.002689, 56.716484, 52.915558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.680191, 56.579384, 52.176182>,  <61.410572, 56.345875, 52.870319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.680191, 56.579384, 52.176182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.991013, 56.558769, 52.427109>,  <62.177505, 56.546402, 52.577663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.991013, 56.558769, 52.427109>,  <61.680191, 56.579384, 52.176182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.991013, 56.558769, 52.427109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534212, -0.473062, -0.700592,
		0.332866, 0.879520, -0.340065,
		0.777057, -0.051536, 0.627316,
		62.224129, 56.543308, 52.615303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.044556, 55.970997, 51.937523>,  <61.680191, 56.579384, 52.176182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.044556, 55.970997, 51.937523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.348320, 56.022175, 52.192688>,  <62.530579, 56.052883, 52.345787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.348320, 56.022175, 52.192688>,  <62.044556, 55.970997, 51.937523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.348320, 56.022175, 52.192688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282909, -0.947865, -0.146680,
		0.585884, 0.291860, -0.756014,
		0.759409, 0.127946, 0.637909,
		62.576141, 56.060558, 52.384060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.735382, 55.863789, 51.663105>,  <62.044556, 55.970997, 51.937523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.735382, 55.863789, 51.663105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.703659, 55.771400, 52.050995>,  <62.684624, 55.715965, 52.283730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.703659, 55.771400, 52.050995>,  <62.735382, 55.863789, 51.663105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.703659, 55.771400, 52.050995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248097, -0.946751, -0.205210,
		0.965483, 0.224310, 0.132390,
		-0.079310, -0.230972, 0.969723,
		62.679867, 55.702110, 52.341911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.076752, 55.300648, 51.890499>,  <62.735382, 55.863789, 51.663105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.076752, 55.300648, 51.890499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.882576, 55.326313, 52.239262>,  <62.766071, 55.341713, 52.448521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.882576, 55.326313, 52.239262>,  <63.076752, 55.300648, 51.890499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.882576, 55.326313, 52.239262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243795, -0.947808, 0.205486,
		0.839589, 0.312319, 0.444463,
		-0.485443, 0.064166, 0.871911,
		62.736942, 55.345562, 52.500835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.453163, 55.005238, 52.381371>,  <63.076752, 55.300648, 51.890499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.453163, 55.005238, 52.381371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.076790, 54.997387, 52.516579>,  <62.850964, 54.992676, 52.597702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.076790, 54.997387, 52.516579>,  <63.453163, 55.005238, 52.381371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.076790, 54.997387, 52.516579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142501, -0.928549, 0.342769,
		0.307137, 0.370691, 0.876501,
		-0.940936, -0.019625, 0.338016,
		62.794510, 54.991501, 52.617985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.467041, 54.936756, 53.167400>,  <63.453163, 55.005238, 52.381371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.467041, 54.936756, 53.167400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.146362, 54.791630, 52.977394>,  <62.953953, 54.704556, 52.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.146362, 54.791630, 52.977394>,  <63.467041, 54.936756, 53.167400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.146362, 54.791630, 52.977394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246802, -0.924731, 0.289760,
		-0.544393, 0.115065, 0.830901,
		-0.801701, -0.362812, -0.475019,
		62.905853, 54.682785, 52.834888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.990753, 54.729591, 53.617985>,  <63.467041, 54.936756, 53.167400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.990753, 54.729591, 53.617985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.177467, 54.949684, 53.341045>,  <64.289497, 55.081741, 53.174881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.177467, 54.949684, 53.341045>,  <63.990753, 54.729591, 53.617985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.177467, 54.949684, 53.341045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496058, 0.811025, 0.310104,
		0.732144, 0.198693, 0.651527,
		0.466789, 0.550236, -0.692351,
		64.317505, 55.114754, 53.133339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.380898, 55.411369, 53.821186>,  <63.990753, 54.729591, 53.617985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.380898, 55.411369, 53.821186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.309334, 55.461388, 53.430832>,  <64.266396, 55.491398, 53.196617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.309334, 55.461388, 53.430832>,  <64.380898, 55.411369, 53.821186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.309334, 55.461388, 53.430832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352655, 0.917832, 0.182259,
		0.918492, 0.376758, -0.120104,
		-0.178903, 0.125048, -0.975888,
		64.255661, 55.498901, 53.138065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.637138, 56.083160, 53.510075>,  <64.380898, 55.411369, 53.821186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.637138, 56.083160, 53.510075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.311447, 55.962837, 53.311459>,  <64.116035, 55.890644, 53.192291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.311447, 55.962837, 53.311459>,  <64.637138, 56.083160, 53.510075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.311447, 55.962837, 53.311459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378887, 0.923369, 0.061920,
		0.439860, 0.238548, -0.865805,
		-0.814228, -0.300806, -0.496536,
		64.067177, 55.872597, 53.162498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.400917, 56.330513, 53.613205>,  <64.637138, 56.083160, 53.510075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.400917, 56.330513, 53.613205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.402176, 56.189930, 53.987686>,  <65.402931, 56.105579, 54.212376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.402176, 56.189930, 53.987686>,  <65.400917, 56.330513, 53.613205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.402176, 56.189930, 53.987686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402866, -0.856422, -0.322863,
		0.915254, 0.378180, 0.138892,
		0.003151, -0.351456, 0.936199,
		65.403122, 56.084492, 54.268547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.013390, 56.105965, 53.751068>,  <65.400917, 56.330513, 53.613205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.013390, 56.105965, 53.751068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.732216, 55.894241, 53.941101>,  <65.563507, 55.767208, 54.055122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.732216, 55.894241, 53.941101>,  <66.013390, 56.105965, 53.751068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.732216, 55.894241, 53.941101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385649, -0.844892, -0.370720,
		0.597621, -0.077378, 0.798036,
		-0.702940, -0.529312, 0.475084,
		65.521332, 55.735447, 54.083626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.250313, 55.568329, 54.203030>,  <66.013390, 56.105965, 53.751068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.250313, 55.568329, 54.203030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.914558, 55.471157, 54.008537>,  <65.713104, 55.412853, 53.891842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.914558, 55.471157, 54.008537>,  <66.250313, 55.568329, 54.203030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.914558, 55.471157, 54.008537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461463, -0.791186, -0.401344,
		-0.287200, -0.561259, 0.776211,
		-0.839385, -0.242927, -0.486229,
		65.662743, 55.398277, 53.862667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.118126, 54.894939, 54.357014>,  <66.250313, 55.568329, 54.203030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.118126, 54.894939, 54.357014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.969215, 54.998177, 54.000408>,  <65.879868, 55.060120, 53.786446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.969215, 54.998177, 54.000408>,  <66.118126, 54.894939, 54.357014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.969215, 54.998177, 54.000408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624175, -0.641271, -0.446293,
		-0.686885, -0.722607, 0.077641,
		-0.372283, 0.258091, -0.891512,
		65.857529, 55.075603, 53.732956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.750465, 54.750164, 54.031780>,  <66.118126, 54.894939, 54.357014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.750465, 54.750164, 54.031780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.952934, 54.990784, 53.784580>,  <67.074417, 55.135155, 53.636261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.952934, 54.990784, 53.784580>,  <66.750465, 54.750164, 54.031780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.952934, 54.990784, 53.784580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527555, 0.350902, 0.773663,
		0.682253, -0.717639, -0.139731,
		0.506179, 0.601549, -0.617998,
		67.104790, 55.171249, 53.599182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.471939, 54.700836, 54.195419>,  <66.750465, 54.750164, 54.031780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.471939, 54.700836, 54.195419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406166, 55.063763, 54.040630>,  <67.366699, 55.281517, 53.947758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406166, 55.063763, 54.040630>,  <67.471939, 54.700836, 54.195419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.406166, 55.063763, 54.040630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383712, 0.420249, 0.822287,
		0.908695, -0.013273, -0.417250,
		-0.164434, 0.907312, -0.386971,
		67.356834, 55.335957, 53.924538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.414581, 54.730000, 54.934547>,  <67.471939, 54.700836, 54.195419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.414581, 54.730000, 54.934547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.134521, 55.001907, 55.021904>,  <66.966484, 55.165054, 55.074318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.134521, 55.001907, 55.021904>,  <67.414581, 54.730000, 54.934547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.134521, 55.001907, 55.021904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657750, 0.495094, 0.567668,
		0.277762, 0.541100, -0.793763,
		-0.700152, 0.679774, 0.218391,
		66.924477, 55.205841, 55.087421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.718697, 55.381207, 54.756577>,  <67.414581, 54.730000, 54.934547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.718697, 55.381207, 54.756577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.455627, 55.374641, 55.057831>,  <67.297791, 55.370701, 55.238583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.455627, 55.374641, 55.057831>,  <67.718697, 55.381207, 54.756577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.455627, 55.374641, 55.057831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617589, 0.560717, 0.551526,
		-0.431347, 0.827845, -0.358626,
		-0.657666, -0.016416, 0.753131,
		67.258331, 55.369717, 55.283772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.449097, 56.046200, 54.960564>,  <67.718697, 55.381207, 54.756577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.449097, 56.046200, 54.960564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.466797, 55.800724, 55.275887>,  <67.477417, 55.653439, 55.465080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.466797, 55.800724, 55.275887>,  <67.449097, 56.046200, 54.960564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.466797, 55.800724, 55.275887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657975, 0.611665, 0.439243,
		-0.751739, 0.499251, 0.430857,
		0.044247, -0.613689, 0.788307,
		67.480072, 55.616619, 55.512379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.567352, 56.463306, 55.612335>,  <67.449097, 56.046200, 54.960564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.567352, 56.463306, 55.612335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.713058, 56.098320, 55.686867>,  <67.800484, 55.879330, 55.731586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.713058, 56.098320, 55.686867>,  <67.567352, 56.463306, 55.612335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.713058, 56.098320, 55.686867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775315, 0.407962, 0.482135,
		-0.515949, -0.031155, 0.856053,
		0.364258, -0.912467, 0.186333,
		67.822334, 55.824581, 55.742767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.811310, 56.454571, 56.200111>,  <67.567352, 56.463306, 55.612335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.811310, 56.454571, 56.200111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.008621, 56.150711, 56.030594>,  <68.127007, 55.968395, 55.928883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.008621, 56.150711, 56.030594>,  <67.811310, 56.454571, 56.200111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.008621, 56.150711, 56.030594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856363, 0.338586, 0.389874,
		-0.152674, -0.555245, 0.817553,
		0.493288, -0.759646, -0.423798,
		68.156609, 55.922817, 55.903454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.293999, 56.130939, 56.708611>,  <67.811310, 56.454571, 56.200111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.293999, 56.130939, 56.708611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.433281, 56.028828, 56.347816>,  <68.516853, 55.967560, 56.131340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.433281, 56.028828, 56.347816>,  <68.293999, 56.130939, 56.708611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.433281, 56.028828, 56.347816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925891, 0.244081, 0.288359,
		0.146546, -0.935552, 0.321352,
		0.348210, -0.255279, -0.901988,
		68.537743, 55.952244, 56.077221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.803337, 55.645298, 56.789597>,  <68.293999, 56.130939, 56.708611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.803337, 55.645298, 56.789597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.874359, 55.856472, 56.457390>,  <68.916977, 55.983177, 56.258064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.874359, 55.856472, 56.457390>,  <68.803337, 55.645298, 56.789597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.874359, 55.856472, 56.457390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931805, 0.181277, 0.314451,
		0.316562, -0.829714, -0.459743,
		0.177564, 0.527934, -0.830516,
		68.927628, 56.014851, 56.208237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.472054, 55.540581, 56.453396>,  <68.803337, 55.645298, 56.789597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.472054, 55.540581, 56.453396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.429222, 55.905445, 56.295151>,  <69.403526, 56.124363, 56.200203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.429222, 55.905445, 56.295151>,  <69.472054, 55.540581, 56.453396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.429222, 55.905445, 56.295151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983017, 0.156766, 0.095408,
		0.149045, -0.378675, -0.913450,
		-0.107069, 0.912157, -0.395609,
		69.397102, 56.179092, 56.176468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.054756, 55.710724, 55.944557>,  <69.472054, 55.540581, 56.453396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.054756, 55.710724, 55.944557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.886826, 56.055706, 56.057640>,  <69.786064, 56.262695, 56.125492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.886826, 56.055706, 56.057640>,  <70.054756, 55.710724, 55.944557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.886826, 56.055706, 56.057640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885252, 0.320407, 0.337149,
		0.200191, 0.391814, -0.898001,
		-0.419825, 0.862451, 0.282711,
		69.760880, 56.314442, 56.142452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.555405, 56.161587, 55.682270>,  <70.054756, 55.710724, 55.944557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.555405, 56.161587, 55.682270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.357697, 56.342236, 55.979385>,  <70.239067, 56.450623, 56.157654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.357697, 56.342236, 55.979385>,  <70.555405, 56.161587, 55.682270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.357697, 56.342236, 55.979385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864197, 0.162775, 0.476097,
		0.094107, 0.877237, -0.470743,
		-0.494275, 0.451619, 0.742787,
		70.209412, 56.477722, 56.202221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.934021, 56.689404, 55.889793>,  <70.555405, 56.161587, 55.682270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.934021, 56.689404, 55.889793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703560, 56.614227, 56.207970>,  <70.565285, 56.569122, 56.398876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703560, 56.614227, 56.207970>,  <70.934021, 56.689404, 55.889793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.703560, 56.614227, 56.207970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810404, -0.004825, 0.585851,
		-0.106266, 0.982169, 0.155085,
		-0.576154, -0.187937, 0.795441,
		70.530716, 56.557846, 56.446602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.244987, 57.077625, 56.441277>,  <70.934021, 56.689404, 55.889793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.244987, 57.077625, 56.441277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.047089, 56.757057, 56.575706>,  <70.928345, 56.564716, 56.656364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.047089, 56.757057, 56.575706>,  <71.244987, 57.077625, 56.441277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.047089, 56.757057, 56.575706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762329, -0.214572, 0.610584,
		-0.417220, 0.558290, 0.717105,
		-0.494754, -0.801418, 0.336077,
		70.898659, 56.516632, 56.676529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.013878, 57.199326, 57.064259>,  <71.244987, 57.077625, 56.441277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.013878, 57.199326, 57.064259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.083504, 56.807911, 57.020134>,  <71.125282, 56.573063, 56.993660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.083504, 56.807911, 57.020134>,  <71.013878, 57.199326, 57.064259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.083504, 56.807911, 57.020134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777747, 0.067902, 0.624899,
		-0.603995, -0.194569, 0.772873,
		0.174066, -0.978536, -0.110313,
		71.135727, 56.514351, 56.987041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.943024, 56.882477, 57.670464>,  <71.013878, 57.199326, 57.064259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.943024, 56.882477, 57.670464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.209450, 56.728512, 57.414902>,  <71.369308, 56.636131, 57.261566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.209450, 56.728512, 57.414902>,  <70.943024, 56.882477, 57.670464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.209450, 56.728512, 57.414902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701709, 0.032931, 0.711702,
		-0.252903, -0.922365, 0.292031,
		0.666067, -0.384912, -0.638903,
		71.409271, 56.613037, 57.223232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.419403, 56.506779, 58.082764>,  <70.943024, 56.882477, 57.670464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.419403, 56.506779, 58.082764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.611687, 56.597290, 57.743889>,  <71.727058, 56.651596, 57.540565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.611687, 56.597290, 57.743889>,  <71.419403, 56.506779, 58.082764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.611687, 56.597290, 57.743889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852058, 0.107729, 0.512242,
		0.207175, -0.968087, -0.141016,
		0.480704, 0.226277, -0.847185,
		71.755898, 56.665173, 57.489735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.047874, 56.041428, 57.833466>,  <71.419403, 56.506779, 58.082764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.047874, 56.041428, 57.833466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108231, 56.420368, 57.720505>,  <72.144447, 56.647732, 57.652729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108231, 56.420368, 57.720505>,  <72.047874, 56.041428, 57.833466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.108231, 56.420368, 57.720505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835954, 0.030199, 0.547968,
		0.527648, -0.318757, -0.787389,
		0.150890, 0.947355, -0.282401,
		72.153496, 56.704575, 57.635784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.757736, 56.176132, 57.785290>,  <72.047874, 56.041428, 57.833466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.757736, 56.176132, 57.785290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630630, 56.555393, 57.787079>,  <72.554367, 56.782951, 57.788151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630630, 56.555393, 57.787079>,  <72.757736, 56.176132, 57.785290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.630630, 56.555393, 57.787079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565134, 0.185613, 0.803848,
		0.761344, 0.257967, -0.594818,
		-0.317772, 0.948157, 0.004471,
		72.535301, 56.839840, 57.788422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.350479, 56.672523, 57.727097>,  <72.757736, 56.176132, 57.785290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.350479, 56.672523, 57.727097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.045341, 56.857182, 57.908188>,  <72.862259, 56.967976, 58.016842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.045341, 56.857182, 57.908188>,  <73.350479, 56.672523, 57.727097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.045341, 56.857182, 57.908188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608472, 0.275693, 0.744148,
		0.218718, 0.843136, -0.491206,
		-0.762840, 0.461643, 0.452726,
		72.816490, 56.995674, 58.044006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.548149, 57.279411, 58.086571>,  <73.350479, 56.672523, 57.727097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.548149, 57.279411, 58.086571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.232986, 57.141403, 58.290588>,  <73.043884, 57.058598, 58.412998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.232986, 57.141403, 58.290588>,  <73.548149, 57.279411, 58.086571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.232986, 57.141403, 58.290588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507083, 0.106389, 0.855306,
		-0.349363, 0.932545, 0.091129,
		-0.787916, -0.345023, 0.510047,
		72.996613, 57.037895, 58.443604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.669220, 57.559994, 58.833229>,  <73.548149, 57.279411, 58.086571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.669220, 57.559994, 58.833229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.457382, 57.226196, 58.772369>,  <73.330276, 57.025917, 58.735855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.457382, 57.226196, 58.772369>,  <73.669220, 57.559994, 58.833229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.457382, 57.226196, 58.772369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463504, -0.434915, 0.772019,
		-0.710414, 0.338340, 0.617121,
		-0.529600, -0.834491, -0.152148,
		73.298500, 56.975849, 58.726727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.238579, 57.323818, 59.418926>,  <73.669220, 57.559994, 58.833229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.238579, 57.323818, 59.418926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.350876, 57.011456, 59.195724>,  <73.418251, 56.824036, 59.061802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.350876, 57.011456, 59.195724>,  <73.238579, 57.323818, 59.418926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.350876, 57.011456, 59.195724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444924, -0.409260, 0.796586,
		-0.850430, -0.471898, 0.232552,
		0.280733, -0.780909, -0.558006,
		73.435097, 56.777184, 59.028324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.084236, 57.399010, 60.250893>,  <73.238579, 57.323818, 59.418926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.084236, 57.399010, 60.250893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.111649, 57.701969, 60.510628>,  <73.128098, 57.883747, 60.666470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.111649, 57.701969, 60.510628>,  <73.084236, 57.399010, 60.250893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.111649, 57.701969, 60.510628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980004, 0.172980, -0.098332,
		-0.186800, -0.629618, 0.754114,
		0.068535, 0.757403, 0.649341,
		73.132210, 57.929192, 60.705429>
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
