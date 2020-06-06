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
	<42.875660, 32.757904, 23.463736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800976, 32.385906, 23.337093>,  <42.756165, 32.162708, 23.261108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800976, 32.385906, 23.337093>,  <42.875660, 32.757904, 23.463736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800976, 32.385906, 23.337093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111722, -0.300082, 0.947348,
		-0.976041, 0.212256, -0.047872,
		-0.186715, -0.929999, -0.316606,
		42.744961, 32.106907, 23.242111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228256, 32.577545, 23.785803>,  <42.875660, 32.757904, 23.463736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228256, 32.577545, 23.785803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435917, 32.259655, 23.660019>,  <42.560513, 32.068920, 23.584549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435917, 32.259655, 23.660019>,  <42.228256, 32.577545, 23.785803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435917, 32.259655, 23.660019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191993, -0.466965, 0.863182,
		-0.832838, -0.387749, -0.395009,
		0.519153, -0.794729, -0.314460,
		42.591663, 32.021236, 23.565681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122524, 31.980284, 24.249863>,  <42.228256, 32.577545, 23.785803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122524, 31.980284, 24.249863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795433, 31.750286, 24.260464>,  <41.599178, 31.612288, 24.266825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795433, 31.750286, 24.260464>,  <42.122524, 31.980284, 24.249863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795433, 31.750286, 24.260464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425764, -0.573237, 0.700089,
		-0.387355, 0.583766, 0.713564,
		-0.817729, -0.574993, 0.026501,
		41.550114, 31.577787, 24.268414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765636, 31.980320, 24.923164>,  <42.122524, 31.980284, 24.249863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765636, 31.980320, 24.923164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708359, 31.625713, 24.747173>,  <41.673992, 31.412949, 24.641579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708359, 31.625713, 24.747173>,  <41.765636, 31.980320, 24.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708359, 31.625713, 24.747173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458901, -0.453356, 0.764120,
		-0.876873, -0.092489, 0.471742,
		-0.143194, -0.886518, -0.439979,
		41.665401, 31.359758, 24.615179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317764, 31.552032, 25.211029>,  <41.765636, 31.980320, 24.923164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317764, 31.552032, 25.211029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614063, 31.343845, 25.041134>,  <41.791843, 31.218933, 24.939196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614063, 31.343845, 25.041134>,  <41.317764, 31.552032, 25.211029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614063, 31.343845, 25.041134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241802, -0.383310, 0.891406,
		-0.626756, -0.763011, -0.158086,
		0.740749, -0.520468, -0.424739,
		41.836288, 31.187704, 24.913712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533070, 31.655903, 25.289585>,  <41.317764, 31.552032, 25.211029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533070, 31.655903, 25.289585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170666, 31.554455, 25.425129>,  <39.953224, 31.493586, 25.506454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170666, 31.554455, 25.425129>,  <40.533070, 31.655903, 25.289585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170666, 31.554455, 25.425129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346330, -0.904450, 0.249050,
		0.243316, 0.342998, 0.907276,
		-0.906009, -0.253619, 0.338858,
		39.898865, 31.478369, 25.526787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660511, 31.397238, 25.956186>,  <40.533070, 31.655903, 25.289585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660511, 31.397238, 25.956186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307476, 31.259258, 25.828407>,  <40.095654, 31.176472, 25.751740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307476, 31.259258, 25.828407>,  <40.660511, 31.397238, 25.956186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307476, 31.259258, 25.828407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251986, -0.920706, 0.297998,
		-0.396912, 0.182513, 0.899528,
		-0.882590, -0.344948, -0.319448,
		40.042698, 31.155773, 25.732573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482452, 30.948984, 26.458595>,  <40.660511, 31.397238, 25.956186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482452, 30.948984, 26.458595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237675, 30.834194, 26.163795>,  <40.090809, 30.765320, 25.986916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237675, 30.834194, 26.163795>,  <40.482452, 30.948984, 26.458595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237675, 30.834194, 26.163795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208099, -0.957437, 0.200024,
		-0.763034, -0.030965, 0.645617,
		-0.611943, -0.286977, -0.737000,
		40.054092, 30.748100, 25.942696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919621, 30.614334, 26.787096>,  <40.482452, 30.948984, 26.458595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919621, 30.614334, 26.787096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929165, 30.483974, 26.409054>,  <39.934891, 30.405760, 26.182228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929165, 30.483974, 26.409054>,  <39.919621, 30.614334, 26.787096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929165, 30.483974, 26.409054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100783, -0.939773, 0.326605,
		-0.994622, -0.103045, 0.010418,
		0.023864, -0.325898, -0.945104,
		39.936325, 30.386206, 26.125523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288036, 30.176756, 26.680405>,  <39.919621, 30.614334, 26.787096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288036, 30.176756, 26.680405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572819, 30.089111, 26.413540>,  <39.743690, 30.036526, 26.253422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572819, 30.089111, 26.413540>,  <39.288036, 30.176756, 26.680405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572819, 30.089111, 26.413540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044414, -0.962222, 0.268618,
		-0.700814, -0.161614, -0.694795,
		0.711960, -0.219110, -0.667161,
		39.786407, 30.023378, 26.213392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015919, 29.588287, 26.438276>,  <39.288036, 30.176756, 26.680405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015919, 29.588287, 26.438276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408096, 29.596222, 26.359966>,  <39.643402, 29.600983, 26.312981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408096, 29.596222, 26.359966>,  <39.015919, 29.588287, 26.438276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408096, 29.596222, 26.359966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078358, -0.951982, 0.295955,
		-0.180502, -0.305509, -0.934924,
		0.980448, 0.019838, -0.195774,
		39.702232, 29.602173, 26.301233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085865, 28.947865, 26.257299>,  <39.015919, 29.588287, 26.438276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085865, 28.947865, 26.257299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470898, 29.040882, 26.312954>,  <39.701916, 29.096693, 26.346346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470898, 29.040882, 26.312954>,  <39.085865, 28.947865, 26.257299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470898, 29.040882, 26.312954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142341, -0.870781, 0.470617,
		0.230596, -0.433202, -0.871298,
		0.962582, 0.232544, 0.139136,
		39.759674, 29.110645, 26.354694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470314, 28.442434, 25.912466>,  <39.085865, 28.947865, 26.257299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470314, 28.442434, 25.912466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718529, 28.565891, 26.200821>,  <39.867458, 28.639965, 26.373833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718529, 28.565891, 26.200821>,  <39.470314, 28.442434, 25.912466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718529, 28.565891, 26.200821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071421, -0.937711, 0.339996,
		0.780920, -0.159493, -0.603926,
		0.620535, 0.308643, 0.720886,
		39.904690, 28.658484, 26.417088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068779, 27.998198, 25.857744>,  <39.470314, 28.442434, 25.912466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068779, 27.998198, 25.857744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072765, 28.172256, 26.217865>,  <40.075157, 28.276691, 26.433937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072765, 28.172256, 26.217865>,  <40.068779, 27.998198, 25.857744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072765, 28.172256, 26.217865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338284, -0.848728, 0.406478,
		0.940991, 0.300509, -0.155658,
		0.009961, 0.435149, 0.900304,
		40.075752, 28.302801, 26.487957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647305, 27.817081, 26.195255>,  <40.068779, 27.998198, 25.857744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647305, 27.817081, 26.195255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444031, 27.953766, 26.511478>,  <40.322067, 28.035776, 26.701214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444031, 27.953766, 26.511478>,  <40.647305, 27.817081, 26.195255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444031, 27.953766, 26.511478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320416, -0.777020, 0.541825,
		0.799428, 0.528653, 0.285378,
		-0.508182, 0.341710, 0.790560,
		40.291576, 28.056278, 26.748646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034836, 27.566940, 26.714737>,  <40.647305, 27.817081, 26.195255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034836, 27.566940, 26.714737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675308, 27.658901, 26.864010>,  <40.459591, 27.714079, 26.953573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675308, 27.658901, 26.864010>,  <41.034836, 27.566940, 26.714737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675308, 27.658901, 26.864010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057628, -0.782026, 0.620576,
		0.434511, 0.579292, 0.689653,
		-0.898821, 0.229904, 0.373182,
		40.405663, 27.727873, 26.975964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114727, 27.410286, 27.478188>,  <41.034836, 27.566940, 26.714737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114727, 27.410286, 27.478188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726089, 27.420483, 27.384083>,  <40.492905, 27.426601, 27.327620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726089, 27.420483, 27.384083>,  <41.114727, 27.410286, 27.478188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726089, 27.420483, 27.384083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172020, -0.758798, 0.628200,
		-0.162502, 0.650827, 0.741631,
		-0.971598, 0.025492, -0.235262,
		40.434608, 27.428129, 27.313505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779415, 27.373846, 28.105263>,  <41.114727, 27.410286, 27.478188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779415, 27.373846, 28.105263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502441, 27.256931, 27.841412>,  <40.336258, 27.186783, 27.683102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502441, 27.256931, 27.841412>,  <40.779415, 27.373846, 28.105263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502441, 27.256931, 27.841412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187324, -0.810077, 0.555595,
		-0.696742, 0.508275, 0.506170,
		-0.692431, -0.292288, -0.659626,
		40.294712, 27.169245, 27.643524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180111, 27.198095, 28.480951>,  <40.779415, 27.373846, 28.105263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180111, 27.198095, 28.480951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118713, 27.013214, 28.131596>,  <40.081875, 26.902287, 27.921982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118713, 27.013214, 28.131596>,  <40.180111, 27.198095, 28.480951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118713, 27.013214, 28.131596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448074, -0.755218, 0.478409,
		-0.880722, 0.464774, -0.091182,
		-0.153490, -0.462202, -0.873390,
		40.072666, 26.874554, 27.869579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445694, 26.932972, 28.310007>,  <40.180111, 27.198095, 28.480951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445694, 26.932972, 28.310007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683811, 26.705635, 28.082809>,  <39.826679, 26.569233, 27.946491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683811, 26.705635, 28.082809>,  <39.445694, 26.932972, 28.310007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683811, 26.705635, 28.082809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331919, -0.817695, 0.470324,
		-0.731750, -0.091451, -0.675410,
		0.595291, -0.568341, -0.567994,
		39.862396, 26.535133, 27.912411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021423, 26.485474, 28.043137>,  <39.445694, 26.932972, 28.310007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021423, 26.485474, 28.043137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374271, 26.301083, 28.004421>,  <39.585979, 26.190447, 27.981192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374271, 26.301083, 28.004421>,  <39.021423, 26.485474, 28.043137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374271, 26.301083, 28.004421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386152, -0.825399, 0.411828,
		-0.269732, -0.325906, -0.906107,
		0.882117, -0.460979, -0.096788,
		39.638908, 26.162788, 27.975386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840992, 25.811695, 28.005915>,  <39.021423, 26.485474, 28.043137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840992, 25.811695, 28.005915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233616, 25.781590, 28.076195>,  <39.469193, 25.763525, 28.118362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233616, 25.781590, 28.076195>,  <38.840992, 25.811695, 28.005915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233616, 25.781590, 28.076195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138288, -0.914199, 0.380941,
		0.131952, -0.398214, -0.907752,
		0.981563, -0.075265, 0.175698,
		39.528084, 25.759010, 28.128904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035515, 25.127291, 27.698395>,  <38.840992, 25.811695, 28.005915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035515, 25.127291, 27.698395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298615, 25.241051, 27.977390>,  <39.456474, 25.309307, 28.144787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298615, 25.241051, 27.977390>,  <39.035515, 25.127291, 27.698395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298615, 25.241051, 27.977390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007810, -0.928507, 0.371234,
		0.753200, -0.238729, -0.612942,
		0.657745, 0.284400, 0.697487,
		39.495937, 25.326370, 28.186636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473606, 24.504650, 27.821156>,  <39.035515, 25.127291, 27.698395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473606, 24.504650, 27.821156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510391, 24.757236, 28.129128>,  <39.532463, 24.908789, 28.313911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510391, 24.757236, 28.129128>,  <39.473606, 24.504650, 27.821156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510391, 24.757236, 28.129128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067207, -0.775379, 0.627909,
		0.993492, -0.005999, -0.113745,
		0.091963, 0.631468, 0.769930,
		39.537979, 24.946676, 28.360106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161892, 24.299725, 28.122847>,  <39.473606, 24.504650, 27.821156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161892, 24.299725, 28.122847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962254, 24.500061, 28.405704>,  <39.842468, 24.620264, 28.575420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962254, 24.500061, 28.405704>,  <40.161892, 24.299725, 28.122847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962254, 24.500061, 28.405704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185049, -0.735628, 0.651620,
		0.846556, 0.456080, 0.274471,
		-0.499100, 0.500842, 0.707147,
		39.812523, 24.650314, 28.617849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550007, 24.254448, 28.787567>,  <40.161892, 24.299725, 28.122847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550007, 24.254448, 28.787567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167194, 24.327396, 28.877750>,  <39.937508, 24.371164, 28.931860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167194, 24.327396, 28.877750>,  <40.550007, 24.254448, 28.787567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167194, 24.327396, 28.877750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048515, -0.665838, 0.744518,
		0.285896, 0.723465, 0.628380,
		-0.957032, 0.182369, 0.225459,
		39.880085, 24.382107, 28.945389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569550, 23.978331, 29.461519>,  <40.550007, 24.254448, 28.787567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569550, 23.978331, 29.461519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182545, 24.039402, 29.380905>,  <39.950344, 24.076044, 29.332537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182545, 24.039402, 29.380905>,  <40.569550, 23.978331, 29.461519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182545, 24.039402, 29.380905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252366, -0.631880, 0.732829,
		-0.015461, 0.759880, 0.649880,
		-0.967508, 0.152677, -0.201537,
		39.892292, 24.085205, 29.320444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313805, 24.076643, 30.076754>,  <40.569550, 23.978331, 29.461519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313805, 24.076643, 30.076754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987263, 23.984009, 29.865116>,  <39.791340, 23.928429, 29.738134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987263, 23.984009, 29.865116>,  <40.313805, 24.076643, 30.076754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987263, 23.984009, 29.865116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369883, -0.493936, 0.786901,
		-0.443571, 0.838091, 0.317567,
		-0.816352, -0.231584, -0.529092,
		39.742355, 23.914534, 29.706388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693157, 24.383148, 30.304119>,  <40.313805, 24.076643, 30.076754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693157, 24.383148, 30.304119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634827, 24.018936, 30.149368>,  <39.599827, 23.800409, 30.056519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634827, 24.018936, 30.149368>,  <39.693157, 24.383148, 30.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634827, 24.018936, 30.149368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269020, -0.339824, 0.901192,
		-0.952031, 0.235496, -0.195395,
		-0.145828, -0.910528, -0.386876,
		39.591080, 23.745777, 30.033306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965374, 24.161993, 30.311340>,  <39.693157, 24.383148, 30.304119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965374, 24.161993, 30.311340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238857, 23.871277, 30.337635>,  <39.402946, 23.696848, 30.353413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238857, 23.871277, 30.337635>,  <38.965374, 24.161993, 30.311340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238857, 23.871277, 30.337635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163911, -0.065164, 0.984320,
		-0.711110, -0.683762, -0.163682,
		0.683707, -0.726790, 0.065737,
		39.443970, 23.653240, 30.357357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773224, 23.567177, 30.802057>,  <38.965374, 24.161993, 30.311340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773224, 23.567177, 30.802057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161892, 23.661449, 30.794949>,  <39.395092, 23.718014, 30.790684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161892, 23.661449, 30.794949>,  <38.773224, 23.567177, 30.802057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161892, 23.661449, 30.794949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021407, -0.012884, 0.999688,
		0.235382, -0.971744, -0.017564,
		0.971667, 0.235684, -0.017770,
		39.453392, 23.732155, 30.789618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348064, 23.626026, 30.192045>,  <38.773224, 23.567177, 30.802057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348064, 23.626026, 30.192045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115929, 23.918873, 30.049381>,  <37.976646, 24.094582, 29.963783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115929, 23.918873, 30.049381>,  <38.348064, 23.626026, 30.192045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115929, 23.918873, 30.049381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656098, -0.160885, 0.737327,
		0.482428, 0.661906, 0.573710,
		-0.580343, 0.732117, -0.356660,
		37.941826, 24.138508, 29.942383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271568, 24.233227, 30.618755>,  <38.348064, 23.626026, 30.192045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271568, 24.233227, 30.618755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945690, 24.144569, 30.404411>,  <37.750164, 24.091375, 30.275805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945690, 24.144569, 30.404411>,  <38.271568, 24.233227, 30.618755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945690, 24.144569, 30.404411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558208, 0.049429, 0.828228,
		-0.157084, 0.973874, -0.163993,
		-0.814695, -0.221643, -0.535860,
		37.701283, 24.078077, 30.243654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757153, 24.708649, 30.676762>,  <38.271568, 24.233227, 30.618755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757153, 24.708649, 30.676762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503273, 24.410603, 30.594822>,  <37.350945, 24.231775, 30.545658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503273, 24.410603, 30.594822>,  <37.757153, 24.708649, 30.676762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503273, 24.410603, 30.594822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659609, 0.384281, 0.645944,
		-0.402582, 0.545101, -0.735386,
		-0.634699, -0.745113, -0.204850,
		37.312862, 24.187069, 30.533367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234192, 25.017159, 30.467484>,  <37.757153, 24.708649, 30.676762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234192, 25.017159, 30.467484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137390, 24.678013, 30.656189>,  <37.079308, 24.474525, 30.769413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137390, 24.678013, 30.656189>,  <37.234192, 25.017159, 30.467484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137390, 24.678013, 30.656189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658553, 0.500607, 0.561872,
		-0.712559, -0.174705, -0.679513,
		-0.242007, -0.847863, 0.471764,
		37.064789, 24.423655, 30.797718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435154, 24.795197, 30.497925>,  <37.234192, 25.017159, 30.467484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435154, 24.795197, 30.497925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630116, 24.672333, 30.824871>,  <36.747093, 24.598616, 31.021038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630116, 24.672333, 30.824871>,  <36.435154, 24.795197, 30.497925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630116, 24.672333, 30.824871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685391, 0.445386, 0.576082,
		-0.540992, -0.841002, 0.006561,
		0.487408, -0.307159, 0.817366,
		36.776337, 24.580185, 31.070082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204365, 25.458101, 30.251297>,  <36.435154, 24.795197, 30.497925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204365, 25.458101, 30.251297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604237, 25.467163, 30.246868>,  <36.844162, 25.472601, 30.244211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604237, 25.467163, 30.246868>,  <36.204365, 25.458101, 30.251297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604237, 25.467163, 30.246868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025048, 0.841849, -0.539132,
		-0.002893, 0.539238, 0.842149,
		0.999682, 0.022654, -0.011072,
		36.904140, 25.473959, 30.243547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376762, 26.146868, 30.410748>,  <36.204365, 25.458101, 30.251297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376762, 26.146868, 30.410748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700775, 26.009991, 30.220276>,  <36.895184, 25.927864, 30.105993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700775, 26.009991, 30.220276>,  <36.376762, 26.146868, 30.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700775, 26.009991, 30.220276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009848, 0.819891, -0.572435,
		0.586297, 0.459004, 0.667511,
		0.810036, -0.342191, -0.476179,
		36.943787, 25.907333, 30.077421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018749, 26.559061, 30.487610>,  <36.376762, 26.146868, 30.410748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018749, 26.559061, 30.487610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046505, 26.354134, 30.145214>,  <37.063160, 26.231176, 29.939777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046505, 26.354134, 30.145214>,  <37.018749, 26.559061, 30.487610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046505, 26.354134, 30.145214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149044, 0.853750, -0.498897,
		0.986393, -0.092961, 0.135600,
		0.069390, -0.512319, -0.855988,
		37.067322, 26.200438, 29.888418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569752, 26.996656, 30.153816>,  <37.018749, 26.559061, 30.487610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569752, 26.996656, 30.153816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443005, 26.733192, 29.880829>,  <37.366955, 26.575115, 29.717037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443005, 26.733192, 29.880829>,  <37.569752, 26.996656, 30.153816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443005, 26.733192, 29.880829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125251, 0.684186, -0.718472,
		0.940163, -0.313141, -0.134300,
		-0.316869, -0.658659, -0.682468,
		37.347942, 26.535595, 29.676088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108780, 27.030714, 29.652611>,  <37.569752, 26.996656, 30.153816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108780, 27.030714, 29.652611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800976, 26.874706, 29.450325>,  <37.616295, 26.781101, 29.328955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800976, 26.874706, 29.450325>,  <38.108780, 27.030714, 29.652611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800976, 26.874706, 29.450325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218537, 0.583246, -0.782346,
		0.600093, -0.712533, -0.363573,
		-0.769500, -0.390027, -0.505717,
		37.570122, 26.757702, 29.298611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328716, 26.935976, 28.864174>,  <38.108780, 27.030714, 29.652611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328716, 26.935976, 28.864174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930122, 26.905735, 28.849716>,  <37.690968, 26.887590, 28.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930122, 26.905735, 28.849716>,  <38.328716, 26.935976, 28.864174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930122, 26.905735, 28.849716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020106, 0.634429, -0.772719,
		0.081348, -0.769275, -0.633718,
		-0.996483, -0.075601, -0.036143,
		37.631176, 26.883055, 28.838873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236729, 27.003630, 28.158571>,  <38.328716, 26.935976, 28.864174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236729, 27.003630, 28.158571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884403, 27.100315, 28.321415>,  <37.673008, 27.158327, 28.419121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884403, 27.100315, 28.321415>,  <38.236729, 27.003630, 28.158571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884403, 27.100315, 28.321415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253118, 0.486258, -0.836352,
		-0.400117, -0.839719, -0.367122,
		-0.880816, 0.241713, 0.407108,
		37.620159, 27.172829, 28.443548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767059, 26.852654, 27.629282>,  <38.236729, 27.003630, 28.158571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767059, 26.852654, 27.629282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603252, 27.114052, 27.883915>,  <37.504971, 27.270891, 28.036695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603252, 27.114052, 27.883915>,  <37.767059, 26.852654, 27.629282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603252, 27.114052, 27.883915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279671, 0.574256, -0.769425,
		-0.868379, -0.493124, -0.052402,
		-0.409514, 0.653497, 0.636584,
		37.480396, 27.310101, 28.074890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196625, 27.053112, 27.228830>,  <37.767059, 26.852654, 27.629282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196625, 27.053112, 27.228830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227299, 27.332191, 27.513741>,  <37.245705, 27.499640, 27.684687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227299, 27.332191, 27.513741>,  <37.196625, 27.053112, 27.228830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227299, 27.332191, 27.513741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142685, 0.714704, -0.684718,
		-0.986793, -0.049123, 0.154358,
		0.076685, 0.697700, 0.712274,
		37.250305, 27.541502, 27.727423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612209, 27.576797, 27.208635>,  <37.196625, 27.053112, 27.228830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612209, 27.576797, 27.208635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905472, 27.781506, 27.387775>,  <37.081429, 27.904329, 27.495260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905472, 27.781506, 27.387775>,  <36.612209, 27.576797, 27.208635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905472, 27.781506, 27.387775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121973, 0.746826, -0.653738,
		-0.669029, 0.424669, 0.609964,
		0.733159, 0.511769, 0.447850,
		37.125420, 27.935036, 27.522131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361301, 28.209082, 27.292006>,  <36.612209, 27.576797, 27.208635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361301, 28.209082, 27.292006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757351, 28.257137, 27.320927>,  <36.994980, 28.285971, 27.338280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757351, 28.257137, 27.320927>,  <36.361301, 28.209082, 27.292006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757351, 28.257137, 27.320927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044271, 0.757129, -0.651764,
		-0.133045, 0.642124, 0.754967,
		0.990121, 0.120137, 0.072305,
		37.054386, 28.293179, 27.342619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381786, 28.960438, 27.529570>,  <36.361301, 28.209082, 27.292006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381786, 28.960438, 27.529570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728748, 28.841305, 27.370121>,  <36.936928, 28.769825, 27.274452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728748, 28.841305, 27.370121>,  <36.381786, 28.960438, 27.529570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728748, 28.841305, 27.370121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041895, 0.841957, -0.537916,
		0.495830, 0.449892, 0.742799,
		0.867408, -0.297834, -0.398619,
		36.988972, 28.751955, 27.250536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845924, 29.570635, 27.493401>,  <36.381786, 28.960438, 27.529570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845924, 29.570635, 27.493401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008549, 29.315197, 27.232048>,  <37.106125, 29.161934, 27.075237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008549, 29.315197, 27.232048>,  <36.845924, 29.570635, 27.493401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008549, 29.315197, 27.232048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124049, 0.747113, -0.653019,
		0.905163, 0.184440, 0.382964,
		0.406560, -0.638595, -0.653380,
		37.130516, 29.123619, 27.036034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408894, 29.899248, 27.295530>,  <36.845924, 29.570635, 27.493401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408894, 29.899248, 27.295530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340725, 29.617176, 27.020233>,  <37.299824, 29.447933, 26.855055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340725, 29.617176, 27.020233>,  <37.408894, 29.899248, 27.295530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340725, 29.617176, 27.020233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249975, 0.644671, -0.722434,
		0.953137, -0.295160, 0.066414,
		-0.170419, -0.705181, -0.688242,
		37.289600, 29.405622, 26.813761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931492, 30.008196, 26.823654>,  <37.408894, 29.899248, 27.295530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931492, 30.008196, 26.823654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672626, 29.789303, 26.611347>,  <37.517307, 29.657967, 26.483963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672626, 29.789303, 26.611347>,  <37.931492, 30.008196, 26.823654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672626, 29.789303, 26.611347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061220, 0.656672, -0.751688,
		0.759890, -0.518958, -0.391472,
		-0.647163, -0.547233, -0.530769,
		37.478477, 29.625134, 26.452116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225998, 29.884636, 26.179556>,  <37.931492, 30.008196, 26.823654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225998, 29.884636, 26.179556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838165, 29.800442, 26.129574>,  <37.605465, 29.749926, 26.099585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838165, 29.800442, 26.129574>,  <38.225998, 29.884636, 26.179556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838165, 29.800442, 26.129574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007403, 0.535454, -0.844532,
		0.244669, -0.817915, -0.520723,
		-0.969578, -0.210486, -0.124954,
		37.547291, 29.737295, 26.092087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104771, 29.789268, 25.509712>,  <38.225998, 29.884636, 26.179556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104771, 29.789268, 25.509712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734711, 29.877441, 25.633335>,  <37.512676, 29.930346, 25.707508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734711, 29.877441, 25.633335>,  <38.104771, 29.789268, 25.509712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734711, 29.877441, 25.633335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081274, 0.680243, -0.728467,
		-0.370810, -0.699056, -0.611408,
		-0.925145, 0.220431, 0.309056,
		37.457169, 29.943571, 25.726051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677078, 29.835501, 24.921360>,  <38.104771, 29.789268, 25.509712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677078, 29.835501, 24.921360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469608, 30.034588, 25.199425>,  <37.345127, 30.154039, 25.366262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469608, 30.034588, 25.199425>,  <37.677078, 29.835501, 24.921360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469608, 30.034588, 25.199425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155715, 0.744490, -0.649220,
		-0.840669, -0.444984, -0.308649,
		-0.518679, 0.497718, 0.695161,
		37.314003, 30.183903, 25.407972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072296, 30.037441, 24.666613>,  <37.677078, 29.835501, 24.921360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072296, 30.037441, 24.666613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122238, 30.277233, 24.982849>,  <37.152203, 30.421108, 25.172592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122238, 30.277233, 24.982849>,  <37.072296, 30.037441, 24.666613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122238, 30.277233, 24.982849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359823, 0.769940, -0.526991,
		-0.924628, -0.218674, 0.311839,
		0.124858, 0.599478, 0.790592,
		37.159695, 30.457077, 25.220026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474876, 30.513933, 24.765545>,  <37.072296, 30.037441, 24.666613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474876, 30.513933, 24.765545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767853, 30.690983, 24.972473>,  <36.943638, 30.797213, 25.096630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767853, 30.690983, 24.972473>,  <36.474876, 30.513933, 24.765545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767853, 30.690983, 24.972473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376360, 0.896407, -0.234110,
		-0.567354, -0.023229, 0.823146,
		0.732436, 0.442623, 0.517323,
		36.987583, 30.823769, 25.127670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225758, 31.086624, 24.959332>,  <36.474876, 30.513933, 24.765545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225758, 31.086624, 24.959332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612480, 31.176102, 25.008720>,  <36.844513, 31.229788, 25.038355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612480, 31.176102, 25.008720>,  <36.225758, 31.086624, 24.959332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612480, 31.176102, 25.008720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186835, 0.948571, -0.255552,
		-0.174289, 0.224000, 0.958878,
		0.966807, 0.223692, 0.123474,
		36.902523, 31.243210, 25.045763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145416, 31.745586, 25.229933>,  <36.225758, 31.086624, 24.959332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145416, 31.745586, 25.229933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505474, 31.691086, 25.064438>,  <36.721508, 31.658386, 24.965141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505474, 31.691086, 25.064438>,  <36.145416, 31.745586, 25.229933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505474, 31.691086, 25.064438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022361, 0.963023, -0.268491,
		0.435022, 0.232428, 0.869904,
		0.900142, -0.136252, -0.413739,
		36.775517, 31.650209, 24.940317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872917, 32.073265, 25.786076>,  <36.145416, 31.745586, 25.229933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872917, 32.073265, 25.786076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989548, 32.334080, 26.066029>,  <36.059525, 32.490570, 26.233999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989548, 32.334080, 26.066029>,  <35.872917, 32.073265, 25.786076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989548, 32.334080, 26.066029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405305, 0.746961, -0.527046,
		-0.866437, -0.129991, 0.482068,
		0.291575, 0.652037, 0.699880,
		36.077019, 32.529690, 26.275993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313007, 32.567383, 25.905922>,  <35.872917, 32.073265, 25.786076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313007, 32.567383, 25.905922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647301, 32.751167, 26.026215>,  <35.847878, 32.861439, 26.098391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647301, 32.751167, 26.026215>,  <35.313007, 32.567383, 25.905922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647301, 32.751167, 26.026215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314901, 0.849654, -0.422996,
		-0.449867, 0.258814, 0.854772,
		0.835737, 0.459461, 0.300731,
		35.898022, 32.889004, 26.116434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472553, 33.249813, 25.927937>,  <35.313007, 32.567383, 25.905922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472553, 33.249813, 25.927937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268623, 33.559536, 26.077888>,  <35.146267, 33.745369, 26.167860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268623, 33.559536, 26.077888>,  <35.472553, 33.249813, 25.927937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268623, 33.559536, 26.077888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097851, 0.485128, -0.868951,
		-0.854697, -0.406328, -0.323095,
		-0.509821, 0.774305, 0.374878,
		35.115677, 33.791828, 26.190351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016781, 33.482159, 25.417622>,  <35.472553, 33.249813, 25.927937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016781, 33.482159, 25.417622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063816, 33.800697, 25.654942>,  <35.092037, 33.991821, 25.797333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063816, 33.800697, 25.654942>,  <35.016781, 33.482159, 25.417622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063816, 33.800697, 25.654942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234863, 0.558192, -0.795777,
		-0.964890, 0.232917, -0.121397,
		0.117587, 0.796349, 0.593298,
		35.099091, 34.039600, 25.832932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401947, 33.872391, 25.584318>,  <35.016781, 33.482159, 25.417622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401947, 33.872391, 25.584318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229778, 33.719025, 25.911179>,  <34.126476, 33.627007, 26.107294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229778, 33.719025, 25.911179>,  <34.401947, 33.872391, 25.584318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229778, 33.719025, 25.911179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432164, 0.707258, 0.559482,
		-0.792449, 0.593955, -0.138720,
		-0.430418, -0.383411, 0.817152,
		34.100655, 33.604000, 26.156324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015419, 34.407230, 25.803230>,  <34.401947, 33.872391, 25.584318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015419, 34.407230, 25.803230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112610, 34.168732, 26.109291>,  <34.170925, 34.025635, 26.292927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112610, 34.168732, 26.109291>,  <34.015419, 34.407230, 25.803230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112610, 34.168732, 26.109291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362713, 0.787415, 0.498414,
		-0.899668, 0.156427, 0.407589,
		0.242976, -0.596245, 0.765150,
		34.185501, 33.989857, 26.338837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770756, 34.773693, 26.441465>,  <34.015419, 34.407230, 25.803230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770756, 34.773693, 26.441465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466721, 34.792454, 26.700718>,  <33.284302, 34.803711, 26.856270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466721, 34.792454, 26.700718>,  <33.770756, 34.773693, 26.441465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466721, 34.792454, 26.700718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143723, -0.960560, 0.238052,
		0.633733, 0.274091, 0.723365,
		-0.760083, 0.046898, 0.648131,
		33.238697, 34.806522, 26.895157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014973, 34.495487, 27.081760>,  <33.770756, 34.773693, 26.441465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014973, 34.495487, 27.081760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618462, 34.457596, 27.045109>,  <33.380554, 34.434860, 27.023119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618462, 34.457596, 27.045109>,  <34.014973, 34.495487, 27.081760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618462, 34.457596, 27.045109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072608, -0.972758, 0.220161,
		-0.109987, 0.211588, 0.971151,
		-0.991277, -0.094728, -0.091627,
		33.321079, 34.429176, 27.017620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743702, 34.070705, 27.649157>,  <34.014973, 34.495487, 27.081760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743702, 34.070705, 27.649157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436695, 34.037998, 27.394840>,  <33.252491, 34.018375, 27.242250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436695, 34.037998, 27.394840>,  <33.743702, 34.070705, 27.649157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436695, 34.037998, 27.394840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056219, -0.979423, 0.193828,
		-0.638557, 0.184510, 0.747128,
		-0.767518, -0.081767, -0.635791,
		33.206440, 34.013470, 27.204103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106960, 33.810436, 27.993315>,  <33.743702, 34.070705, 27.649157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106960, 33.810436, 27.993315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061840, 33.719128, 27.606499>,  <33.034767, 33.664341, 27.374409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061840, 33.719128, 27.606499>,  <33.106960, 33.810436, 27.993315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061840, 33.719128, 27.606499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434045, -0.864161, 0.254619,
		-0.893801, 0.448461, -0.001601,
		-0.112803, -0.228273, -0.967040,
		33.028000, 33.650646, 27.316387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438915, 33.810658, 27.815990>,  <33.106960, 33.810436, 27.993315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438915, 33.810658, 27.815990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617485, 33.572330, 27.548946>,  <32.724628, 33.429333, 27.388720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617485, 33.572330, 27.548946>,  <32.438915, 33.810658, 27.815990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617485, 33.572330, 27.548946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539807, -0.774357, 0.330121,
		-0.713659, 0.213004, -0.667323,
		0.446429, -0.595819, -0.667608,
		32.751415, 33.393585, 27.348663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901951, 33.431541, 27.585649>,  <32.438915, 33.810658, 27.815990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901951, 33.431541, 27.585649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215519, 33.214016, 27.465824>,  <32.403660, 33.083500, 27.393929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215519, 33.214016, 27.465824>,  <31.901951, 33.431541, 27.585649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215519, 33.214016, 27.465824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490431, -0.838259, 0.238328,
		-0.380715, -0.039916, -0.923830,
		0.783922, -0.543810, -0.299562,
		32.450695, 33.050873, 27.375956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559088, 32.938511, 27.047302>,  <31.901951, 33.431541, 27.585649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559088, 32.938511, 27.047302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903852, 32.801899, 27.197216>,  <32.110710, 32.719933, 27.287165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903852, 32.801899, 27.197216>,  <31.559088, 32.938511, 27.047302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903852, 32.801899, 27.197216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432878, -0.880525, 0.193111,
		0.264053, -0.328680, -0.906778,
		0.861912, -0.341532, 0.374783,
		32.162426, 32.699440, 27.309650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641277, 32.246895, 26.735916>,  <31.559088, 32.938511, 27.047302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641277, 32.246895, 26.735916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877840, 32.264999, 27.057957>,  <32.019779, 32.275860, 27.251181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877840, 32.264999, 27.057957>,  <31.641277, 32.246895, 26.735916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877840, 32.264999, 27.057957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459809, -0.801272, 0.382804,
		0.662431, -0.596586, -0.453068,
		0.591406, 0.045257, 0.805103,
		32.055264, 32.278576, 27.299488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873943, 31.576365, 26.767750>,  <31.641277, 32.246895, 26.735916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873943, 31.576365, 26.767750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968103, 31.714275, 27.131226>,  <32.024597, 31.797022, 27.349312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968103, 31.714275, 27.131226>,  <31.873943, 31.576365, 26.767750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968103, 31.714275, 27.131226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261827, -0.877900, 0.400922,
		0.935967, -0.332296, -0.116384,
		0.235398, 0.344777, 0.908689,
		32.038723, 31.817709, 27.403831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363182, 31.115753, 27.167383>,  <31.873943, 31.576365, 26.767750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363182, 31.115753, 27.167383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180302, 31.343117, 27.440990>,  <32.070572, 31.479534, 27.605154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180302, 31.343117, 27.440990>,  <32.363182, 31.115753, 27.167383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180302, 31.343117, 27.440990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261494, -0.821028, 0.507478,
		0.850051, 0.053154, 0.524011,
		-0.457202, 0.568408, 0.684017,
		32.043140, 31.513639, 27.646194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634453, 30.879009, 27.803585>,  <32.363182, 31.115753, 27.167383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634453, 30.879009, 27.803585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297913, 31.072620, 27.899796>,  <32.095989, 31.188787, 27.957521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297913, 31.072620, 27.899796>,  <32.634453, 30.879009, 27.803585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297913, 31.072620, 27.899796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321385, -0.805804, 0.497386,
		0.434567, 0.341172, 0.833519,
		-0.841346, 0.484028, 0.240528,
		32.045509, 31.217829, 27.971954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477402, 30.665291, 28.517221>,  <32.634453, 30.879009, 27.803585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477402, 30.665291, 28.517221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133102, 30.822769, 28.388149>,  <31.926523, 30.917257, 28.310707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133102, 30.822769, 28.388149>,  <32.477402, 30.665291, 28.517221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133102, 30.822769, 28.388149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496262, -0.790132, 0.359743,
		-0.113330, 0.469780, 0.875478,
		-0.860744, 0.393697, -0.322679,
		31.874880, 30.940878, 28.291346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072651, 30.637951, 29.103210>,  <32.477402, 30.665291, 28.517221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072651, 30.637951, 29.103210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826975, 30.663765, 28.788605>,  <31.679569, 30.679255, 28.599840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826975, 30.663765, 28.788605>,  <32.072651, 30.637951, 29.103210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826975, 30.663765, 28.788605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575097, -0.719093, 0.390089,
		-0.540402, 0.691911, 0.478774,
		-0.614190, 0.064537, -0.786515,
		31.642717, 30.683126, 28.552650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393000, 30.712873, 29.371532>,  <32.072651, 30.637951, 29.103210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393000, 30.712873, 29.371532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383352, 30.559460, 29.002247>,  <31.377563, 30.467411, 28.780676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383352, 30.559460, 29.002247>,  <31.393000, 30.712873, 29.371532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383352, 30.559460, 29.002247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582177, -0.745347, 0.324850,
		-0.812704, 0.545308, -0.205309,
		-0.024117, -0.383534, -0.923212,
		31.376118, 30.444399, 28.725283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632271, 30.482073, 29.302851>,  <31.393000, 30.712873, 29.371532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632271, 30.482073, 29.302851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859354, 30.284599, 29.039341>,  <30.995604, 30.166115, 28.881235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859354, 30.284599, 29.039341>,  <30.632271, 30.482073, 29.302851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859354, 30.284599, 29.039341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388245, -0.866209, 0.314560,
		-0.725928, 0.077187, -0.683426,
		0.567709, -0.493685, -0.658773,
		31.029667, 30.136494, 28.841709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184013, 29.868765, 29.124245>,  <30.632271, 30.482073, 29.302851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184013, 29.868765, 29.124245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547346, 29.787563, 28.977970>,  <30.765345, 29.738842, 28.890205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547346, 29.787563, 28.977970>,  <30.184013, 29.868765, 29.124245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547346, 29.787563, 28.977970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131601, -0.968623, 0.210832,
		-0.397011, -0.143381, -0.906545,
		0.908330, -0.203005, -0.365685,
		30.819845, 29.726662, 28.868265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136215, 29.261478, 28.813818>,  <30.184013, 29.868765, 29.124245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136215, 29.261478, 28.813818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535131, 29.271523, 28.841480>,  <30.774481, 29.277550, 28.858078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535131, 29.271523, 28.841480>,  <30.136215, 29.261478, 28.813818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535131, 29.271523, 28.841480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016486, -0.992320, 0.122596,
		0.071704, -0.121123, -0.990044,
		0.997290, 0.025112, 0.069156,
		30.834318, 29.279057, 28.862226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416067, 28.630529, 28.477810>,  <30.136215, 29.261478, 28.813818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416067, 28.630529, 28.477810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727285, 28.752342, 28.697594>,  <30.914017, 28.825430, 28.829464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727285, 28.752342, 28.697594>,  <30.416067, 28.630529, 28.477810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727285, 28.752342, 28.697594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286749, -0.950372, 0.120696,
		0.558948, 0.063651, -0.826756,
		0.778044, 0.304534, 0.549461,
		30.960699, 28.843702, 28.862432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005196, 28.243795, 28.257181>,  <30.416067, 28.630529, 28.477810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005196, 28.243795, 28.257181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037315, 28.356884, 28.639515>,  <31.056587, 28.424738, 28.868916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037315, 28.356884, 28.639515>,  <31.005196, 28.243795, 28.257181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037315, 28.356884, 28.639515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139878, -0.952639, 0.270025,
		0.986907, 0.112017, -0.116045,
		0.080301, 0.282722, 0.955835,
		31.061405, 28.441700, 28.926266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589571, 27.886265, 28.570057>,  <31.005196, 28.243795, 28.257181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589571, 27.886265, 28.570057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413952, 28.013325, 28.906231>,  <31.308580, 28.089561, 29.107935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413952, 28.013325, 28.906231>,  <31.589571, 27.886265, 28.570057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413952, 28.013325, 28.906231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174530, -0.887444, 0.426594,
		0.881349, 0.333976, 0.334191,
		-0.439048, 0.317652, 0.840437,
		31.282238, 28.108620, 29.158361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984074, 27.614845, 29.087769>,  <31.589571, 27.886265, 28.570057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984074, 27.614845, 29.087769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646351, 27.698456, 29.285133>,  <31.443718, 27.748623, 29.403553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646351, 27.698456, 29.285133>,  <31.984074, 27.614845, 29.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646351, 27.698456, 29.285133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075144, -0.865501, 0.495238,
		0.530567, 0.455210, 0.715041,
		-0.844306, 0.209026, 0.493413,
		31.393059, 27.761164, 29.433157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215847, 27.476015, 29.733181>,  <31.984074, 27.614845, 29.087769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215847, 27.476015, 29.733181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816366, 27.477211, 29.753529>,  <31.576677, 27.477928, 29.765738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816366, 27.477211, 29.753529>,  <32.215847, 27.476015, 29.733181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816366, 27.477211, 29.753529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023223, -0.861871, 0.506596,
		0.045360, 0.507119, 0.860682,
		-0.998701, 0.002991, 0.050871,
		31.516756, 27.478109, 29.768789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006084, 27.362089, 30.463955>,  <32.215847, 27.476015, 29.733181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006084, 27.362089, 30.463955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694107, 27.245396, 30.242477>,  <31.506920, 27.175379, 30.109591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694107, 27.245396, 30.242477>,  <32.006084, 27.362089, 30.463955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694107, 27.245396, 30.242477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021715, -0.871561, 0.489806,
		-0.625471, 0.394045, 0.673435,
		-0.779945, -0.291736, -0.553692,
		31.460123, 27.157875, 30.076370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593216, 27.097776, 30.965525>,  <32.006084, 27.362089, 30.463955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593216, 27.097776, 30.965525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480959, 26.928825, 30.620773>,  <31.413605, 26.827454, 30.413923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480959, 26.928825, 30.620773>,  <31.593216, 27.097776, 30.965525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480959, 26.928825, 30.620773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144590, -0.869114, 0.473006,
		-0.948859, 0.257365, 0.182839,
		-0.280643, -0.422379, -0.861879,
		31.396767, 26.802113, 30.362209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958881, 26.681658, 31.111202>,  <31.593216, 27.097776, 30.965525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958881, 26.681658, 31.111202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129202, 26.535973, 30.779892>,  <31.231394, 26.448561, 30.581106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129202, 26.535973, 30.779892>,  <30.958881, 26.681658, 31.111202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129202, 26.535973, 30.779892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002479, -0.915875, 0.401457,
		-0.904814, -0.168887, -0.390882,
		0.425800, -0.364213, -0.828278,
		31.256943, 26.426708, 30.531408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667845, 26.069590, 31.045696>,  <30.958881, 26.681658, 31.111202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667845, 26.069590, 31.045696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999834, 26.055973, 30.822990>,  <31.199028, 26.047804, 30.689367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999834, 26.055973, 30.822990>,  <30.667845, 26.069590, 31.045696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999834, 26.055973, 30.822990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187466, -0.923056, 0.335893,
		-0.525357, -0.383157, -0.759731,
		0.829974, -0.034040, -0.556763,
		31.248827, 26.045761, 30.655962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538967, 25.569164, 30.658609>,  <30.667845, 26.069590, 31.045696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538967, 25.569164, 30.658609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937387, 25.602665, 30.670414>,  <31.176439, 25.622765, 30.677496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937387, 25.602665, 30.670414>,  <30.538967, 25.569164, 30.658609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937387, 25.602665, 30.670414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074456, -0.968800, 0.236395,
		0.048388, -0.233264, -0.971209,
		0.996050, 0.083751, 0.029510,
		31.236202, 25.627790, 30.679266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687565, 24.885458, 30.541008>,  <30.538967, 25.569164, 30.658609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687565, 24.885458, 30.541008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048330, 25.022095, 30.646732>,  <31.264790, 25.104076, 30.710167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048330, 25.022095, 30.646732>,  <30.687565, 24.885458, 30.541008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048330, 25.022095, 30.646732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265405, -0.921115, 0.284793,
		0.340747, -0.186709, -0.921429,
		0.901916, 0.341594, 0.264313,
		31.318905, 25.124573, 30.726027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211496, 24.397924, 30.291842>,  <30.687565, 24.885458, 30.541008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211496, 24.397924, 30.291842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400656, 24.611156, 30.572468>,  <31.514151, 24.739096, 30.740843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400656, 24.611156, 30.572468>,  <31.211496, 24.397924, 30.291842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400656, 24.611156, 30.572468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437712, -0.833155, 0.338025,
		0.764707, 0.147232, -0.627332,
		0.472897, 0.533081, 0.701565,
		31.542524, 24.771080, 30.782938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884907, 24.146967, 30.291153>,  <31.211496, 24.397924, 30.291842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884907, 24.146967, 30.291153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839289, 24.336468, 30.640450>,  <31.811918, 24.450169, 30.850027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839289, 24.336468, 30.640450>,  <31.884907, 24.146967, 30.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839289, 24.336468, 30.640450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282498, -0.827229, 0.485683,
		0.952464, 0.302079, -0.039493,
		-0.114045, 0.473752, 0.873243,
		31.805075, 24.478594, 30.902422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560749, 23.999924, 30.683969>,  <31.884907, 24.146967, 30.291153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560749, 23.999924, 30.683969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306465, 24.106640, 30.973713>,  <32.153896, 24.170670, 31.147558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306465, 24.106640, 30.973713>,  <32.560749, 23.999924, 30.683969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306465, 24.106640, 30.973713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348292, -0.738297, 0.577590,
		0.688886, 0.619469, 0.376423,
		-0.635711, 0.266789, 0.724358,
		32.115753, 24.186676, 31.191021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946896, 23.797419, 31.287901>,  <32.560749, 23.999924, 30.683969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946896, 23.797419, 31.287901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575809, 23.853317, 31.426357>,  <32.353157, 23.886856, 31.509432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575809, 23.853317, 31.426357>,  <32.946896, 23.797419, 31.287901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575809, 23.853317, 31.426357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122294, -0.762320, 0.635540,
		0.352685, 0.631932, 0.690127,
		-0.927716, 0.139747, 0.346141,
		32.297493, 23.895241, 31.530199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924744, 23.778093, 32.030952>,  <32.946896, 23.797419, 31.287901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924744, 23.778093, 32.030952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555420, 23.702374, 31.897282>,  <32.333828, 23.656940, 31.817080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555420, 23.702374, 31.897282>,  <32.924744, 23.778093, 32.030952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555420, 23.702374, 31.897282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074208, -0.765768, 0.638821,
		-0.376830, 0.614625, 0.692990,
		-0.923305, -0.189301, -0.334175,
		32.278427, 23.645582, 31.797029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394978, 23.870026, 32.592060>,  <32.924744, 23.778093, 32.030952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394978, 23.870026, 32.592060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254639, 23.600040, 32.332420>,  <32.170437, 23.438049, 32.176636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254639, 23.600040, 32.332420>,  <32.394978, 23.870026, 32.592060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254639, 23.600040, 32.332420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037981, -0.702849, 0.710324,
		-0.935663, 0.224560, 0.272227,
		-0.350845, -0.674963, -0.649101,
		32.149384, 23.397551, 32.137691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036301, 23.505758, 33.067036>,  <32.394978, 23.870026, 32.592060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036301, 23.505758, 33.067036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050934, 23.310631, 32.718163>,  <32.059711, 23.193554, 32.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050934, 23.310631, 32.718163>,  <32.036301, 23.505758, 33.067036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050934, 23.310631, 32.718163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349152, -0.824000, 0.446226,
		-0.936352, 0.288200, -0.200464,
		0.036580, -0.487817, -0.872179,
		32.061909, 23.164286, 32.456509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369175, 23.152718, 32.956905>,  <32.036301, 23.505758, 33.067036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369175, 23.152718, 32.956905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657711, 22.954762, 32.763100>,  <31.830833, 22.835987, 32.646816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657711, 22.954762, 32.763100>,  <31.369175, 23.152718, 32.956905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657711, 22.954762, 32.763100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157203, -0.798309, 0.581369,
		-0.674505, -0.343198, -0.653651,
		0.721340, -0.494892, -0.484511,
		31.874113, 22.806293, 32.617744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205904, 22.541676, 33.039742>,  <31.369175, 23.152718, 32.956905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205904, 22.541676, 33.039742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566832, 22.465816, 32.884899>,  <31.783388, 22.420301, 32.791992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566832, 22.465816, 32.884899>,  <31.205904, 22.541676, 33.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566832, 22.465816, 32.884899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012491, -0.886144, 0.463241,
		-0.430887, -0.422826, -0.797216,
		0.902319, -0.189647, -0.387110,
		31.837528, 22.408922, 32.768764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201294, 21.874002, 32.746735>,  <31.205904, 22.541676, 33.039742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201294, 21.874002, 32.746735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590546, 21.933189, 32.817310>,  <31.824097, 21.968702, 32.859653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590546, 21.933189, 32.817310>,  <31.201294, 21.874002, 32.746735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590546, 21.933189, 32.817310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027605, -0.835652, 0.548564,
		0.228608, -0.528952, -0.817280,
		0.973127, 0.147968, 0.176435,
		31.882484, 21.977579, 32.870239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517273, 21.200573, 32.728775>,  <31.201294, 21.874002, 32.746735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517273, 21.200573, 32.728775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794611, 21.416119, 32.920147>,  <31.961014, 21.545446, 33.034969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794611, 21.416119, 32.920147>,  <31.517273, 21.200573, 32.728775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794611, 21.416119, 32.920147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208649, -0.785615, 0.582474,
		0.689738, -0.304030, -0.657135,
		0.693344, 0.538865, 0.478433,
		32.002613, 21.577778, 33.063675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111080, 20.829645, 32.763969>,  <31.517273, 21.200573, 32.728775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111080, 20.829645, 32.763969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157066, 21.096977, 33.057941>,  <32.184658, 21.257378, 33.234325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157066, 21.096977, 33.057941>,  <32.111080, 20.829645, 32.763969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157066, 21.096977, 33.057941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103435, -0.743864, 0.660279,
		0.987969, 0.000106, -0.154650,
		0.114969, 0.668331, 0.734925,
		32.191559, 21.297476, 33.278419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605381, 20.479593, 33.192299>,  <32.111080, 20.829645, 32.763969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605381, 20.479593, 33.192299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413528, 20.758121, 33.405876>,  <32.298416, 20.925238, 33.534023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413528, 20.758121, 33.405876>,  <32.605381, 20.479593, 33.192299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413528, 20.758121, 33.405876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113599, -0.652656, 0.749090,
		0.870086, 0.298631, 0.392134,
		-0.479630, 0.696319, 0.533943,
		32.269638, 20.967016, 33.566059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038864, 20.538927, 33.758629>,  <32.605381, 20.479593, 33.192299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038864, 20.538927, 33.758629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663830, 20.656467, 33.833015>,  <32.438808, 20.726992, 33.877647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663830, 20.656467, 33.833015>,  <33.038864, 20.538927, 33.758629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663830, 20.656467, 33.833015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061848, -0.667149, 0.742352,
		0.342208, 0.684518, 0.643684,
		-0.937587, 0.293850, 0.185968,
		32.382553, 20.744623, 33.888805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797531, 20.735586, 34.525860>,  <33.038864, 20.538927, 33.758629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797531, 20.735586, 34.525860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512802, 20.585865, 34.288136>,  <32.341965, 20.496033, 34.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512802, 20.585865, 34.288136>,  <32.797531, 20.735586, 34.525860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512802, 20.585865, 34.288136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204632, -0.698934, 0.685287,
		-0.671888, 0.609418, 0.420923,
		-0.711824, -0.374301, -0.594311,
		32.299255, 20.473576, 34.109840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148022, 20.762455, 34.813431>,  <32.797531, 20.735586, 34.525860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148022, 20.762455, 34.813431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191879, 20.443211, 34.576450>,  <32.218193, 20.251665, 34.434261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191879, 20.443211, 34.576450>,  <32.148022, 20.762455, 34.813431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191879, 20.443211, 34.576450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337125, -0.590575, 0.733190,
		-0.935054, 0.119341, -0.333815,
		0.109643, -0.798109, -0.592453,
		32.224773, 20.203777, 34.398716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469976, 20.304958, 34.934174>,  <32.148022, 20.762455, 34.813431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469976, 20.304958, 34.934174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781694, 20.098801, 34.791584>,  <31.968725, 19.975107, 34.706032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781694, 20.098801, 34.791584>,  <31.469976, 20.304958, 34.934174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781694, 20.098801, 34.791584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210370, -0.750992, 0.625904,
		-0.590293, -0.412772, -0.693667,
		0.779294, -0.515393, -0.356470,
		32.015484, 19.944183, 34.684643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196836, 19.571293, 34.854668>,  <31.469976, 20.304958, 34.934174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196836, 19.571293, 34.854668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592377, 19.597343, 34.908234>,  <31.829700, 19.612974, 34.940372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592377, 19.597343, 34.908234>,  <31.196836, 19.571293, 34.854668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592377, 19.597343, 34.908234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053805, -0.682257, 0.729130,
		0.138849, -0.728206, -0.671146,
		0.988851, 0.065128, 0.133912,
		31.889032, 19.616882, 34.948406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387537, 18.926163, 35.066925>,  <31.196836, 19.571293, 34.854668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387537, 18.926163, 35.066925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672911, 19.178692, 35.188538>,  <31.844135, 19.330210, 35.261505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672911, 19.178692, 35.188538>,  <31.387537, 18.926163, 35.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672911, 19.178692, 35.188538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096169, -0.518001, 0.849957,
		0.694089, -0.577151, -0.430275,
		0.713436, 0.631325, 0.304035,
		31.886942, 19.368090, 35.279747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645536, 18.953526, 35.180763>,  <31.387537, 18.926163, 35.066925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645536, 18.953526, 35.180763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262518, 19.049072, 35.245323>,  <30.032707, 19.106400, 35.284061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262518, 19.049072, 35.245323>,  <30.645536, 18.953526, 35.180763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262518, 19.049072, 35.245323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222913, 0.968513, -0.110872,
		-0.182803, -0.070186, -0.980641,
		-0.957545, 0.238866, 0.161402,
		29.975254, 19.120731, 35.293743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323204, 19.405960, 34.813087>,  <30.645536, 18.953526, 35.180763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323204, 19.405960, 34.813087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106441, 19.451374, 35.146179>,  <29.976383, 19.478622, 35.346035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106441, 19.451374, 35.146179>,  <30.323204, 19.405960, 34.813087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106441, 19.451374, 35.146179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169636, 0.985216, -0.023933,
		-0.823140, 0.128292, -0.553157,
		-0.541908, 0.113535, 0.832733,
		29.943869, 19.485435, 35.396000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280043, 20.063995, 34.693821>,  <30.323204, 19.405960, 34.813087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280043, 20.063995, 34.693821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126133, 19.989712, 35.055477>,  <30.033787, 19.945143, 35.272469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126133, 19.989712, 35.055477>,  <30.280043, 20.063995, 34.693821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126133, 19.989712, 35.055477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018034, 0.980876, 0.193794,
		-0.922835, 0.058261, -0.380764,
		-0.384773, -0.185707, 0.904136,
		30.010700, 19.934000, 35.326717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583395, 20.273289, 34.901989>,  <30.280043, 20.063995, 34.693821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583395, 20.273289, 34.901989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808626, 20.324329, 35.228588>,  <29.943764, 20.354954, 35.424545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808626, 20.324329, 35.228588>,  <29.583395, 20.273289, 34.901989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808626, 20.324329, 35.228588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273110, 0.961227, 0.038125,
		-0.779972, -0.244460, 0.576092,
		0.563075, 0.127600, 0.816495,
		29.977549, 20.362610, 35.473537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135487, 20.463066, 35.424274>,  <29.583395, 20.273289, 34.901989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135487, 20.463066, 35.424274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514858, 20.585072, 35.458797>,  <29.742481, 20.658276, 35.479511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514858, 20.585072, 35.458797>,  <29.135487, 20.463066, 35.424274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514858, 20.585072, 35.458797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304360, 0.952326, -0.020976,
		-0.088589, -0.006374, 0.996048,
		0.948429, 0.305016, 0.086305,
		29.799387, 20.676577, 35.484688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258629, 21.031267, 35.837250>,  <29.135487, 20.463066, 35.424274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258629, 21.031267, 35.837250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589306, 21.075706, 35.616619>,  <29.787712, 21.102369, 35.484241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589306, 21.075706, 35.616619>,  <29.258629, 21.031267, 35.837250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589306, 21.075706, 35.616619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305884, 0.911530, -0.274858,
		0.472240, 0.395942, 0.787540,
		0.826695, 0.111097, -0.551573,
		29.837315, 21.109035, 35.451149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570253, 21.720316, 36.042599>,  <29.258629, 21.031267, 35.837250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570253, 21.720316, 36.042599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677992, 21.638229, 35.666229>,  <29.742636, 21.588978, 35.440407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677992, 21.638229, 35.666229>,  <29.570253, 21.720316, 36.042599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677992, 21.638229, 35.666229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363890, 0.882913, -0.296729,
		0.891648, 0.422316, 0.163136,
		0.269349, -0.205214, -0.940924,
		29.758797, 21.576666, 35.383953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931738, 22.401649, 35.788078>,  <29.570253, 21.720316, 36.042599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931738, 22.401649, 35.788078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830414, 22.198772, 35.458572>,  <29.769619, 22.077045, 35.260868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830414, 22.198772, 35.458572>,  <29.931738, 22.401649, 35.788078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830414, 22.198772, 35.458572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311069, 0.849018, -0.427088,
		0.916007, 0.148061, -0.372839,
		-0.253312, -0.507195, -0.823764,
		29.754419, 22.046614, 35.211445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208273, 22.788589, 35.324043>,  <29.931738, 22.401649, 35.788078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208273, 22.788589, 35.324043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928431, 22.577862, 35.130959>,  <29.760525, 22.451426, 35.015106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928431, 22.577862, 35.130959>,  <30.208273, 22.788589, 35.324043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928431, 22.577862, 35.130959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308947, 0.832185, -0.460457,
		0.644286, -0.173004, -0.744960,
		-0.699605, -0.526819, -0.482715,
		29.718550, 22.419817, 34.986145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227631, 22.976997, 34.615086>,  <30.208273, 22.788589, 35.324043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227631, 22.976997, 34.615086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854221, 22.841431, 34.661846>,  <29.630175, 22.760090, 34.689903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854221, 22.841431, 34.661846>,  <30.227631, 22.976997, 34.615086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854221, 22.841431, 34.661846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348870, 0.783647, -0.513992,
		0.082590, -0.520608, -0.849792,
		-0.933525, -0.338918, 0.116903,
		29.574163, 22.739756, 34.696918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953331, 23.177580, 34.009525>,  <30.227631, 22.976997, 34.615086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953331, 23.177580, 34.009525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621805, 23.074684, 34.208279>,  <29.422890, 23.012947, 34.327530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621805, 23.074684, 34.208279>,  <29.953331, 23.177580, 34.009525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621805, 23.074684, 34.208279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532445, 0.635529, -0.559111,
		-0.171961, -0.727964, -0.663700,
		-0.828814, -0.257238, 0.496886,
		29.373161, 22.997513, 34.357346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347687, 23.053568, 33.483433>,  <29.953331, 23.177580, 34.009525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347687, 23.053568, 33.483433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207497, 23.159046, 33.842907>,  <29.123383, 23.222334, 34.058590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207497, 23.159046, 33.842907>,  <29.347687, 23.053568, 33.483433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207497, 23.159046, 33.842907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546923, 0.721316, -0.424946,
		-0.760290, -0.640444, -0.108584,
		-0.350477, 0.263696, 0.898682,
		29.102354, 23.238155, 34.112511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909113, 23.537745, 33.322521>,  <29.347687, 23.053568, 33.483433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909113, 23.537745, 33.322521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874060, 23.597061, 33.716541>,  <28.853027, 23.632652, 33.952953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874060, 23.597061, 33.716541>,  <28.909113, 23.537745, 33.322521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874060, 23.597061, 33.716541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310356, 0.935576, -0.168455,
		-0.946573, -0.320479, -0.035962,
		-0.087632, 0.148294, 0.985053,
		28.847771, 23.641550, 34.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200327, 23.770399, 33.509769>,  <28.909113, 23.537745, 33.322521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200327, 23.770399, 33.509769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472038, 23.889938, 33.777882>,  <28.635065, 23.961662, 33.938747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472038, 23.889938, 33.777882>,  <28.200327, 23.770399, 33.509769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472038, 23.889938, 33.777882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240340, 0.953554, -0.181583,
		-0.693410, -0.037749, 0.719554,
		0.679279, 0.298849, 0.670276,
		28.675821, 23.979593, 33.978966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783195, 24.251110, 33.708267>,  <28.200327, 23.770399, 33.509769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783195, 24.251110, 33.708267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168543, 24.315029, 33.794418>,  <28.399752, 24.353380, 33.846107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168543, 24.315029, 33.794418>,  <27.783195, 24.251110, 33.708267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168543, 24.315029, 33.794418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101876, 0.960947, -0.257297,
		-0.248082, 0.225930, 0.942025,
		0.963367, 0.159800, 0.215377,
		28.457554, 24.362968, 33.859032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834829, 24.918009, 34.167469>,  <27.783195, 24.251110, 33.708267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834829, 24.918009, 34.167469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190937, 24.849075, 33.998840>,  <28.404602, 24.807714, 33.897663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190937, 24.849075, 33.998840>,  <27.834829, 24.918009, 34.167469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190937, 24.849075, 33.998840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015909, 0.936848, -0.349375,
		0.455161, 0.304331, 0.836787,
		0.890267, -0.172334, -0.421575,
		28.458017, 24.797375, 33.872368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036955, 25.527744, 34.306107>,  <27.834829, 24.918009, 34.167469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036955, 25.527744, 34.306107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282497, 25.393944, 34.020088>,  <28.429823, 25.313663, 33.848476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282497, 25.393944, 34.020088>,  <28.036955, 25.527744, 34.306107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282497, 25.393944, 34.020088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006288, 0.907832, -0.419287,
		0.789393, 0.252886, 0.559382,
		0.613856, -0.334499, -0.715046,
		28.466654, 25.293594, 33.805573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652943, 26.004074, 34.278259>,  <28.036955, 25.527744, 34.306107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652943, 26.004074, 34.278259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616924, 25.808098, 33.931423>,  <28.595314, 25.690512, 33.723320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616924, 25.808098, 33.931423>,  <28.652943, 26.004074, 34.278259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616924, 25.808098, 33.931423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001739, 0.870552, -0.492073,
		0.995936, -0.045817, -0.077537,
		-0.090045, -0.489939, -0.867094,
		28.589911, 25.661116, 33.671295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177219, 26.300579, 33.929852>,  <28.652943, 26.004074, 34.278259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177219, 26.300579, 33.929852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960678, 26.128151, 33.641098>,  <28.830753, 26.024694, 33.467846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960678, 26.128151, 33.641098>,  <29.177219, 26.300579, 33.929852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960678, 26.128151, 33.641098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149360, 0.795614, -0.587102,
		0.827427, -0.425647, -0.366319,
		-0.541347, -0.431071, -0.721887,
		28.798273, 25.998831, 33.424534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567284, 26.268492, 33.286930>,  <29.177219, 26.300579, 33.929852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567284, 26.268492, 33.286930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178499, 26.281990, 33.193848>,  <28.945229, 26.290089, 33.137997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178499, 26.281990, 33.193848>,  <29.567284, 26.268492, 33.286930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178499, 26.281990, 33.193848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180496, 0.741363, -0.646376,
		0.150706, -0.670255, -0.726668,
		-0.971961, 0.033748, -0.232707,
		28.886911, 26.292114, 33.124035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578112, 26.458500, 32.580231>,  <29.567284, 26.268492, 33.286930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578112, 26.458500, 32.580231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197617, 26.510792, 32.691982>,  <28.969318, 26.542168, 32.759033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197617, 26.510792, 32.691982>,  <29.578112, 26.458500, 32.580231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197617, 26.510792, 32.691982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048271, 0.831498, -0.553426,
		-0.304656, -0.539927, -0.784643,
		-0.951238, 0.130729, 0.279383,
		28.912245, 26.550011, 32.775799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251221, 26.588264, 31.901133>,  <29.578112, 26.458500, 32.580231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251221, 26.588264, 31.901133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009321, 26.726086, 32.188343>,  <28.864182, 26.808779, 32.360668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009321, 26.726086, 32.188343>,  <29.251221, 26.588264, 31.901133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009321, 26.726086, 32.188343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017849, 0.895482, -0.444740,
		-0.796217, -0.281771, -0.535391,
		-0.604748, 0.344553, 0.718027,
		28.827896, 26.829451, 32.403751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796797, 27.054823, 31.559015>,  <29.251221, 26.588264, 31.901133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796797, 27.054823, 31.559015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760546, 27.149799, 31.945881>,  <28.738794, 27.206785, 32.178001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760546, 27.149799, 31.945881>,  <28.796797, 27.054823, 31.559015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760546, 27.149799, 31.945881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166605, 0.953860, -0.249788,
		-0.981850, -0.183772, -0.046887,
		-0.090628, 0.237443, 0.967164,
		28.733356, 27.221033, 32.236031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469843, 27.711613, 31.431440>,  <28.796797, 27.054823, 31.559015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469843, 27.711613, 31.431440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592255, 27.697029, 31.811970>,  <28.665703, 27.688280, 32.040287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592255, 27.697029, 31.811970>,  <28.469843, 27.711613, 31.431440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592255, 27.697029, 31.811970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309276, 0.948875, -0.063127,
		-0.900385, 0.313540, 0.301659,
		0.306030, -0.036457, 0.951324,
		28.684063, 27.686092, 32.097366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190575, 28.342123, 31.671749>,  <28.469843, 27.711613, 31.431440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190575, 28.342123, 31.671749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503094, 28.227352, 31.893467>,  <28.690605, 28.158489, 32.026497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503094, 28.227352, 31.893467>,  <28.190575, 28.342123, 31.671749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503094, 28.227352, 31.893467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424768, 0.895124, -0.135369,
		-0.457323, 0.341211, 0.821237,
		0.781299, -0.286928, 0.554296,
		28.737484, 28.141273, 32.059757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343616, 28.910843, 32.049706>,  <28.190575, 28.342123, 31.671749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343616, 28.910843, 32.049706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684471, 28.701824, 32.061081>,  <28.888983, 28.576412, 32.067905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684471, 28.701824, 32.061081>,  <28.343616, 28.910843, 32.049706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684471, 28.701824, 32.061081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509309, 0.815604, -0.274581,
		0.120289, 0.248463, 0.961143,
		0.852136, -0.522548, 0.028436,
		28.940111, 28.545059, 32.069611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866089, 29.338011, 32.315136>,  <28.343616, 28.910843, 32.049706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866089, 29.338011, 32.315136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056293, 29.065331, 32.092724>,  <29.170416, 28.901722, 31.959276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056293, 29.065331, 32.092724>,  <28.866089, 29.338011, 32.315136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056293, 29.065331, 32.092724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563597, 0.721385, -0.402446,
		0.675460, -0.122008, 0.727233,
		0.475513, -0.681702, -0.556030,
		29.198948, 28.860819, 31.925915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554684, 29.532728, 32.508232>,  <28.866089, 29.338011, 32.315136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554684, 29.532728, 32.508232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613436, 29.325169, 32.171383>,  <29.648687, 29.200632, 31.969275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613436, 29.325169, 32.171383>,  <29.554684, 29.532728, 32.508232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613436, 29.325169, 32.171383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785281, 0.578846, -0.219708,
		0.601465, -0.629031, 0.492503,
		0.146881, -0.518900, -0.842122,
		29.657499, 29.169498, 31.918747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308657, 29.487129, 32.371342>,  <29.554684, 29.532728, 32.508232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308657, 29.487129, 32.371342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149544, 29.379673, 32.020435>,  <30.054075, 29.315199, 31.809891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149544, 29.379673, 32.020435>,  <30.308657, 29.487129, 32.371342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149544, 29.379673, 32.020435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629279, 0.615936, -0.473952,
		0.667665, -0.740577, -0.075958,
		-0.397783, -0.268642, -0.877269,
		30.030209, 29.299082, 31.757256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878075, 29.518974, 31.839882>,  <30.308657, 29.487129, 32.371342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878075, 29.518974, 31.839882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538725, 29.537182, 31.628906>,  <30.335115, 29.548107, 31.502321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538725, 29.537182, 31.628906>,  <30.878075, 29.518974, 31.839882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538725, 29.537182, 31.628906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375643, 0.753791, -0.539158,
		0.373036, -0.655535, -0.656595,
		-0.848373, 0.045520, -0.527438,
		30.284212, 29.550838, 31.470675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986916, 29.588490, 31.055634>,  <30.878075, 29.518974, 31.839882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986916, 29.588490, 31.055634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627703, 29.757622, 31.104214>,  <30.412174, 29.859102, 31.133362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627703, 29.757622, 31.104214>,  <30.986916, 29.588490, 31.055634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627703, 29.757622, 31.104214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273922, 0.753454, -0.597724,
		-0.344243, -0.503509, -0.792449,
		-0.898033, 0.422832, 0.121449,
		30.358294, 29.884472, 31.140648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838005, 29.910295, 30.364273>,  <30.986916, 29.588490, 31.055634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838005, 29.910295, 30.364273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545586, 30.064404, 30.589531>,  <30.370134, 30.156868, 30.724686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545586, 30.064404, 30.589531>,  <30.838005, 29.910295, 30.364273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545586, 30.064404, 30.589531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064425, 0.860620, -0.505156,
		-0.679275, -0.333014, -0.653978,
		-0.731050, 0.385272, 0.563144,
		30.326271, 30.179985, 30.758474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250376, 30.299171, 29.915293>,  <30.838005, 29.910295, 30.364273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250376, 30.299171, 29.915293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203163, 30.459663, 30.278629>,  <30.174835, 30.555960, 30.496632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203163, 30.459663, 30.278629>,  <30.250376, 30.299171, 29.915293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203163, 30.459663, 30.278629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026767, 0.913117, -0.406819,
		-0.992649, -0.072330, -0.097036,
		-0.118030, 0.401231, 0.908340,
		30.167753, 30.580032, 30.551132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720354, 30.718985, 29.822519>,  <30.250376, 30.299171, 29.915293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720354, 30.718985, 29.822519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901695, 30.848427, 30.154724>,  <30.010500, 30.926092, 30.354048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901695, 30.848427, 30.154724>,  <29.720354, 30.718985, 29.822519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901695, 30.848427, 30.154724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023478, 0.927108, -0.374058,
		-0.891023, 0.189079, 0.412708,
		0.453351, 0.323605, 0.830514,
		30.037701, 30.945509, 30.403879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337358, 31.318962, 30.069334>,  <29.720354, 30.718985, 29.822519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337358, 31.318962, 30.069334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705643, 31.314087, 30.225357>,  <29.926613, 31.311161, 30.318970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705643, 31.314087, 30.225357>,  <29.337358, 31.318962, 30.069334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705643, 31.314087, 30.225357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205932, 0.864194, -0.459088,
		-0.331488, 0.503011, 0.798182,
		0.920711, -0.012189, 0.390056,
		29.981855, 31.310431, 30.342373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434763, 31.960632, 30.482618>,  <29.337358, 31.318962, 30.069334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434763, 31.960632, 30.482618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786108, 31.810696, 30.363976>,  <29.996914, 31.720734, 30.292789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786108, 31.810696, 30.363976>,  <29.434763, 31.960632, 30.482618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786108, 31.810696, 30.363976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232463, 0.877177, -0.420144,
		0.417664, 0.300089, 0.857615,
		0.878361, -0.374843, -0.296606,
		30.049616, 31.698242, 30.274994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885548, 32.463783, 30.634956>,  <29.434763, 31.960632, 30.482618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885548, 32.463783, 30.634956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111324, 32.245869, 30.386887>,  <30.246790, 32.115120, 30.238045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111324, 32.245869, 30.386887>,  <29.885548, 32.463783, 30.634956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111324, 32.245869, 30.386887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325007, 0.837280, -0.439695,
		0.758799, 0.046621, 0.649654,
		0.564442, -0.544782, -0.620175,
		30.280657, 32.082436, 30.200834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530844, 32.828400, 30.591761>,  <29.885548, 32.463783, 30.634956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530844, 32.828400, 30.591761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515633, 32.587994, 30.272427>,  <30.506506, 32.443752, 30.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515633, 32.587994, 30.272427>,  <30.530844, 32.828400, 30.591761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515633, 32.587994, 30.272427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332879, 0.745664, -0.577215,
		0.942202, -0.287699, 0.171708,
		-0.038028, -0.601011, -0.798336,
		30.504225, 32.407692, 30.032927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188061, 33.009792, 30.344408>,  <30.530844, 32.828400, 30.591761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188061, 33.009792, 30.344408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947313, 32.864559, 30.059895>,  <30.802864, 32.777420, 29.889187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947313, 32.864559, 30.059895>,  <31.188061, 33.009792, 30.344408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947313, 32.864559, 30.059895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284023, 0.735114, -0.615581,
		0.746384, -0.572518, -0.339314,
		-0.601865, -0.363087, -0.711285,
		30.766752, 32.755634, 29.846510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591352, 33.175518, 29.810717>,  <31.188061, 33.009792, 30.344408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591352, 33.175518, 29.810717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222553, 33.106468, 29.672085>,  <31.001274, 33.065037, 29.588905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222553, 33.106468, 29.672085>,  <31.591352, 33.175518, 29.810717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222553, 33.106468, 29.672085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105583, 0.749102, -0.653987,
		0.372518, -0.639568, -0.672445,
		-0.921999, -0.172623, -0.346581,
		30.945953, 33.054680, 29.568110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721113, 33.251785, 29.171564>,  <31.591352, 33.175518, 29.810717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721113, 33.251785, 29.171564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332899, 33.327347, 29.231400>,  <31.099970, 33.372684, 29.267302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332899, 33.327347, 29.231400>,  <31.721113, 33.251785, 29.171564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332899, 33.327347, 29.231400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047232, 0.757901, -0.650658,
		-0.236287, -0.624421, -0.744491,
		-0.970535, 0.188906, 0.149590,
		31.041739, 33.384018, 29.276276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609751, 33.527039, 28.560999>,  <31.721113, 33.251785, 29.171564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609751, 33.527039, 28.560999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297895, 33.637653, 28.785744>,  <31.110783, 33.704021, 28.920591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297895, 33.637653, 28.785744>,  <31.609751, 33.527039, 28.560999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297895, 33.637653, 28.785744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227547, 0.710788, -0.665584,
		-0.583427, -0.646765, -0.491232,
		-0.779638, 0.276542, 0.561862,
		31.064005, 33.720615, 28.954302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072027, 33.690994, 28.067055>,  <31.609751, 33.527039, 28.560999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072027, 33.690994, 28.067055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981125, 33.898525, 28.396702>,  <30.926584, 34.023045, 28.594490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981125, 33.898525, 28.396702>,  <31.072027, 33.690994, 28.067055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981125, 33.898525, 28.396702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127546, 0.823112, -0.553370,
		-0.965447, -0.230869, -0.120882,
		-0.227256, 0.518831, 0.824117,
		30.912949, 34.054176, 28.643936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533306, 34.155422, 27.990047>,  <31.072027, 33.690994, 28.067055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533306, 34.155422, 27.990047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708303, 34.344509, 28.296024>,  <30.813301, 34.457962, 28.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708303, 34.344509, 28.296024>,  <30.533306, 34.155422, 27.990047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708303, 34.344509, 28.296024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171161, 0.878897, -0.445246,
		-0.882783, 0.063863, 0.465420,
		0.437491, 0.472717, 0.764944,
		30.839550, 34.486324, 28.525507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056290, 34.690258, 28.162519>,  <30.533306, 34.155422, 27.990047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056290, 34.690258, 28.162519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418568, 34.783031, 28.304466>,  <30.635935, 34.838696, 28.389633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418568, 34.783031, 28.304466>,  <30.056290, 34.690258, 28.162519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418568, 34.783031, 28.304466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101530, 0.931382, -0.349599,
		-0.411598, 0.280600, 0.867093,
		0.905692, 0.231930, 0.354865,
		30.690275, 34.852612, 28.410925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747971, 34.193230, 28.496784>,  <30.056290, 34.690258, 28.162519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747971, 34.193230, 28.496784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633169, 34.145531, 28.116592>,  <29.564287, 34.116913, 27.888477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633169, 34.145531, 28.116592>,  <29.747971, 34.193230, 28.496784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633169, 34.145531, 28.116592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853917, -0.417804, 0.310266,
		-0.434112, 0.900678, 0.018084,
		-0.287006, -0.119248, -0.950478,
		29.547068, 34.109756, 27.831450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048672, 34.379456, 28.479774>,  <29.747971, 34.193230, 28.496784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048672, 34.379456, 28.479774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054684, 34.120373, 28.175079>,  <29.058290, 33.964924, 27.992262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054684, 34.120373, 28.175079>,  <29.048672, 34.379456, 28.479774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054684, 34.120373, 28.175079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847381, -0.412653, 0.334160,
		-0.530772, 0.640460, -0.555061,
		0.015031, -0.647711, -0.761738,
		29.059193, 33.926060, 27.946558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356419, 34.228909, 28.306021>,  <29.048672, 34.379456, 28.479774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356419, 34.228909, 28.306021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545822, 33.916931, 28.142323>,  <28.659464, 33.729744, 28.044104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545822, 33.916931, 28.142323>,  <28.356419, 34.228909, 28.306021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545822, 33.916931, 28.142323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762859, -0.595404, 0.252072,
		-0.440266, 0.192836, -0.876915,
		0.473510, -0.779941, -0.409243,
		28.687876, 33.682949, 28.019550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855663, 33.823734, 27.863369>,  <28.356419, 34.228909, 28.306021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855663, 33.823734, 27.863369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157803, 33.586662, 27.975212>,  <28.339087, 33.444420, 28.042318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157803, 33.586662, 27.975212>,  <27.855663, 33.823734, 27.863369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157803, 33.586662, 27.975212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654917, -0.697739, 0.290249,
		0.023070, -0.402359, -0.915191,
		0.755348, -0.592679, 0.279609,
		28.384407, 33.408859, 28.059095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670866, 33.161053, 27.492733>,  <27.855663, 33.823734, 27.863369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670866, 33.161053, 27.492733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913141, 33.071217, 27.798073>,  <28.058506, 33.017315, 27.981277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913141, 33.071217, 27.798073>,  <27.670866, 33.161053, 27.492733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913141, 33.071217, 27.798073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523204, -0.835198, 0.169418,
		0.599500, -0.502002, -0.623373,
		0.605687, -0.224586, 0.763350,
		28.094847, 33.003841, 28.027079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821548, 32.442894, 27.396606>,  <27.670866, 33.161053, 27.492733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821548, 32.442894, 27.396606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955585, 32.483860, 27.771248>,  <28.036009, 32.508442, 27.996033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955585, 32.483860, 27.771248>,  <27.821548, 32.442894, 27.396606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955585, 32.483860, 27.771248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418427, -0.874490, 0.245330,
		0.844175, -0.474108, -0.250181,
		0.335094, 0.102419, 0.936601,
		28.056114, 32.514587, 28.052229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947567, 31.731909, 27.616585>,  <27.821548, 32.442894, 27.396606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947567, 31.731909, 27.616585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952156, 31.938129, 27.959297>,  <27.954908, 32.061863, 28.164925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952156, 31.938129, 27.959297>,  <27.947567, 31.731909, 27.616585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952156, 31.938129, 27.959297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328954, -0.807198, 0.490123,
		0.944276, -0.287464, 0.160334,
		0.011471, 0.515554, 0.856781,
		27.955597, 32.092796, 28.216331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294453, 31.285803, 27.997496>,  <27.947567, 31.731909, 27.616585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294453, 31.285803, 27.997496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118412, 31.552662, 28.237904>,  <28.012787, 31.712776, 28.382149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118412, 31.552662, 28.237904>,  <28.294453, 31.285803, 27.997496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118412, 31.552662, 28.237904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250054, -0.733907, 0.631549,
		0.862429, 0.127658, 0.489816,
		-0.440101, 0.667146, 0.601021,
		27.986382, 31.752806, 28.418209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643948, 31.189283, 28.682327>,  <28.294453, 31.285803, 27.997496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643948, 31.189283, 28.682327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280561, 31.351330, 28.723465>,  <28.062531, 31.448557, 28.748148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280561, 31.351330, 28.723465>,  <28.643948, 31.189283, 28.682327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280561, 31.351330, 28.723465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237854, -0.703417, 0.669798,
		0.343687, 0.584026, 0.735387,
		-0.908463, 0.405115, 0.102843,
		28.008022, 31.472864, 28.754318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494860, 31.106962, 29.405218>,  <28.643948, 31.189283, 28.682327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494860, 31.106962, 29.405218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140461, 31.137024, 29.222195>,  <27.927822, 31.155062, 29.112381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140461, 31.137024, 29.222195>,  <28.494860, 31.106962, 29.405218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140461, 31.137024, 29.222195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346565, -0.762910, 0.545766,
		-0.308058, 0.642122, 0.701983,
		-0.885998, 0.075155, -0.457558,
		27.874662, 31.159571, 29.084927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078291, 31.021477, 29.902655>,  <28.494860, 31.106962, 29.405218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078291, 31.021477, 29.902655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835094, 30.963367, 29.590439>,  <27.689177, 30.928503, 29.403109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835094, 30.963367, 29.590439>,  <28.078291, 31.021477, 29.902655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835094, 30.963367, 29.590439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549698, -0.632344, 0.545869,
		-0.572869, 0.760945, 0.304603,
		-0.607991, -0.145272, -0.780541,
		27.652697, 30.919786, 29.356277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386280, 31.034794, 30.108990>,  <28.078291, 31.021477, 29.902655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386280, 31.034794, 30.108990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372868, 30.801365, 29.784443>,  <27.364820, 30.661308, 29.589714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372868, 30.801365, 29.784443>,  <27.386280, 31.034794, 30.108990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372868, 30.801365, 29.784443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790888, -0.480844, 0.378529,
		-0.611041, 0.654394, -0.445417,
		-0.033531, -0.583572, -0.811369,
		27.362808, 30.626293, 29.541033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569431, 30.838135, 30.030233>,  <27.386280, 31.034794, 30.108990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569431, 30.838135, 30.030233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797312, 30.582935, 29.823006>,  <26.934040, 30.429815, 29.698669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797312, 30.582935, 29.823006>,  <26.569431, 30.838135, 30.030233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797312, 30.582935, 29.823006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579524, -0.758826, 0.297210,
		-0.582745, 0.130912, -0.802041,
		0.569702, -0.638000, -0.518069,
		26.968222, 30.391535, 29.667585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123880, 30.392263, 29.802401>,  <26.569431, 30.838135, 30.030233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123880, 30.392263, 29.802401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461411, 30.191860, 29.725513>,  <26.663929, 30.071619, 29.679380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461411, 30.191860, 29.725513>,  <26.123880, 30.392263, 29.802401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461411, 30.191860, 29.725513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397885, -0.824504, 0.402343,
		-0.360062, -0.263027, -0.895082,
		0.843826, -0.501008, -0.192219,
		26.714558, 30.041557, 29.667849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917397, 29.745155, 29.410624>,  <26.123880, 30.392263, 29.802401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917397, 29.745155, 29.410624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276371, 29.682152, 29.575451>,  <26.491756, 29.644350, 29.674347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276371, 29.682152, 29.575451>,  <25.917397, 29.745155, 29.410624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276371, 29.682152, 29.575451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288596, -0.916092, 0.278368,
		0.333647, -0.368738, -0.867590,
		0.897436, -0.157506, 0.412068,
		26.545603, 29.634899, 29.699072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086452, 29.062626, 29.175856>,  <25.917397, 29.745155, 29.410624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086452, 29.062626, 29.175856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308836, 29.135281, 29.500305>,  <26.442266, 29.178873, 29.694975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308836, 29.135281, 29.500305>,  <26.086452, 29.062626, 29.175856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308836, 29.135281, 29.500305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223960, -0.907010, 0.356616,
		0.800471, -0.379922, -0.463579,
		0.555957, 0.181637, 0.811123,
		26.475622, 29.189772, 29.743643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569048, 28.554693, 29.193041>,  <26.086452, 29.062626, 29.175856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569048, 28.554693, 29.193041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520243, 28.679573, 29.569901>,  <26.490959, 28.754501, 29.796017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520243, 28.679573, 29.569901>,  <26.569048, 28.554693, 29.193041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520243, 28.679573, 29.569901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157554, -0.943297, 0.292177,
		0.979944, -0.112790, 0.164282,
		-0.122012, 0.312200, 0.942149,
		26.483639, 28.773233, 29.852545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796495, 27.938606, 29.570065>,  <26.569048, 28.554693, 29.193041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796495, 27.938606, 29.570065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616440, 28.146286, 29.860664>,  <26.508406, 28.270893, 30.035025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616440, 28.146286, 29.860664>,  <26.796495, 27.938606, 29.570065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616440, 28.146286, 29.860664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080390, -0.833849, 0.546107,
		0.889331, 0.187422, 0.417088,
		-0.450141, 0.519199, 0.726502,
		26.481398, 28.302046, 30.078615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186068, 27.892664, 30.175608>,  <26.796495, 27.938606, 29.570065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186068, 27.892664, 30.175608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836157, 28.012791, 30.327702>,  <26.626211, 28.084867, 30.418957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836157, 28.012791, 30.327702>,  <27.186068, 27.892664, 30.175608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836157, 28.012791, 30.327702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056888, -0.715662, 0.696126,
		0.481177, 0.630585, 0.608959,
		-0.874775, 0.300318, 0.380233,
		26.573725, 28.102886, 30.441771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322567, 27.932037, 30.868078>,  <27.186068, 27.892664, 30.175608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322567, 27.932037, 30.868078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923716, 27.902046, 30.863842>,  <26.684404, 27.884052, 30.861300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923716, 27.902046, 30.863842>,  <27.322567, 27.932037, 30.868078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923716, 27.902046, 30.863842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051103, -0.769560, 0.636526,
		-0.055875, 0.634157, 0.771183,
		-0.997129, -0.074976, -0.010592,
		26.624577, 27.879553, 30.860664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100559, 27.735638, 31.500153>,  <27.322567, 27.932037, 30.868078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100559, 27.735638, 31.500153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829475, 27.598873, 31.239750>,  <26.666824, 27.516815, 31.083509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829475, 27.598873, 31.239750>,  <27.100559, 27.735638, 31.500153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829475, 27.598873, 31.239750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081664, -0.914844, 0.395464,
		-0.730782, 0.214846, 0.647920,
		-0.677709, -0.341910, -0.651006,
		26.626163, 27.496300, 31.044449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629177, 27.318697, 31.924446>,  <27.100559, 27.735638, 31.500153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629177, 27.318697, 31.924446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585514, 27.217800, 31.539852>,  <26.559317, 27.157261, 31.309095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585514, 27.217800, 31.539852>,  <26.629177, 27.318697, 31.924446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585514, 27.217800, 31.539852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188810, -0.954919, 0.229085,
		-0.975928, -0.156533, 0.151862,
		-0.109157, -0.252244, -0.961487,
		26.552767, 27.142126, 31.251406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229893, 26.689682, 31.950193>,  <26.629177, 27.318697, 31.924446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229893, 26.689682, 31.950193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426897, 26.723541, 31.603722>,  <26.545099, 26.743856, 31.395838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426897, 26.723541, 31.603722>,  <26.229893, 26.689682, 31.950193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426897, 26.723541, 31.603722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334367, -0.937279, 0.098527,
		-0.803512, -0.338148, -0.489923,
		0.492511, 0.084646, -0.866180,
		26.574650, 26.748936, 31.343868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063662, 26.052984, 31.625694>,  <26.229893, 26.689682, 31.950193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063662, 26.052984, 31.625694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388784, 26.183102, 31.432396>,  <26.583858, 26.261171, 31.316416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388784, 26.183102, 31.432396>,  <26.063662, 26.052984, 31.625694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388784, 26.183102, 31.432396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301555, -0.944720, -0.128721,
		-0.498405, -0.041100, -0.865970,
		0.812809, 0.325292, -0.483246,
		26.632627, 26.280689, 31.287422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151789, 25.591507, 30.960993>,  <26.063662, 26.052984, 31.625694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151789, 25.591507, 30.960993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505251, 25.761765, 31.038948>,  <26.717327, 25.863920, 31.085722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505251, 25.761765, 31.038948>,  <26.151789, 25.591507, 30.960993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505251, 25.761765, 31.038948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445140, -0.892852, -0.068306,
		0.144932, 0.147111, -0.978444,
		0.883654, 0.425645, 0.194888,
		26.770348, 25.889458, 31.097414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613632, 25.345671, 30.447426>,  <26.151789, 25.591507, 30.960993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613632, 25.345671, 30.447426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802835, 25.445599, 30.785385>,  <26.916357, 25.505556, 30.988161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802835, 25.445599, 30.785385>,  <26.613632, 25.345671, 30.447426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802835, 25.445599, 30.785385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447009, -0.894416, 0.014210,
		0.759241, 0.370956, -0.534738,
		0.473007, 0.249822, 0.844899,
		26.944738, 25.520546, 31.038855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198568, 24.980019, 30.353975>,  <26.613632, 25.345671, 30.447426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198568, 24.980019, 30.353975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222118, 25.096943, 30.735779>,  <27.236248, 25.167097, 30.964861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222118, 25.096943, 30.735779>,  <27.198568, 24.980019, 30.353975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222118, 25.096943, 30.735779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638386, -0.746122, 0.189117,
		0.767461, 0.598211, -0.230536,
		0.058876, 0.292311, 0.954509,
		27.239780, 25.184637, 31.022131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005640, 24.944946, 30.500065>,  <27.198568, 24.980019, 30.353975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005640, 24.944946, 30.500065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808977, 24.914143, 30.847015>,  <27.690979, 24.895660, 31.055185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808977, 24.914143, 30.847015>,  <28.005640, 24.944946, 30.500065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808977, 24.914143, 30.847015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520154, -0.824820, 0.221610,
		0.698363, 0.560126, 0.445587,
		-0.491659, -0.077009, 0.867376,
		27.661480, 24.891039, 31.107227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503267, 24.834915, 31.090118>,  <28.005640, 24.944946, 30.500065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503267, 24.834915, 31.090118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149769, 24.705978, 31.225815>,  <27.937670, 24.628616, 31.307234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149769, 24.705978, 31.225815>,  <28.503267, 24.834915, 31.090118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149769, 24.705978, 31.225815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424376, -0.857558, 0.290688,
		0.197219, 0.400862, 0.894659,
		-0.883747, -0.322343, 0.339243,
		27.884645, 24.609276, 31.327587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695686, 24.397463, 31.748743>,  <28.503267, 24.834915, 31.090118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695686, 24.397463, 31.748743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313908, 24.307617, 31.670177>,  <28.084841, 24.253710, 31.623039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313908, 24.307617, 31.670177>,  <28.695686, 24.397463, 31.748743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313908, 24.307617, 31.670177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128135, -0.903026, 0.410031,
		-0.269464, 0.366186, 0.890672,
		-0.954448, -0.224615, -0.196412,
		28.027573, 24.240232, 31.611254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435736, 24.062317, 32.339203>,  <28.695686, 24.397463, 31.748743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435736, 24.062317, 32.339203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214840, 23.939610, 32.029125>,  <28.082302, 23.865986, 31.843079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214840, 23.939610, 32.029125>,  <28.435736, 24.062317, 32.339203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214840, 23.939610, 32.029125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079258, -0.944947, 0.317481,
		-0.829910, 0.113885, 0.546149,
		-0.552238, -0.306767, -0.775195,
		28.049168, 23.847580, 31.796566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913990, 23.643532, 32.609493>,  <28.435736, 24.062317, 32.339203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913990, 23.643532, 32.609493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894032, 23.501526, 32.236080>,  <27.882055, 23.416323, 32.012032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894032, 23.501526, 32.236080>,  <27.913990, 23.643532, 32.609493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894032, 23.501526, 32.236080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003217, -0.934745, 0.355304,
		-0.998749, 0.014726, 0.047783,
		-0.049897, -0.355013, -0.933529,
		27.879063, 23.395021, 31.956022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388716, 23.078812, 32.512360>,  <27.913990, 23.643532, 32.609493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388716, 23.078812, 32.512360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638460, 23.026371, 32.204338>,  <27.788307, 22.994905, 32.019524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638460, 23.026371, 32.204338>,  <27.388716, 23.078812, 32.512360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638460, 23.026371, 32.204338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001742, -0.986046, 0.166464,
		-0.781133, -0.102592, -0.615878,
		0.624362, -0.131104, -0.770055,
		27.825769, 22.987040, 31.973322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067535, 22.547718, 32.165672>,  <27.388716, 23.078812, 32.512360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067535, 22.547718, 32.165672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444292, 22.564034, 32.032303>,  <27.670347, 22.573822, 31.952280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444292, 22.564034, 32.032303>,  <27.067535, 22.547718, 32.165672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444292, 22.564034, 32.032303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128574, -0.960786, 0.245681,
		-0.310330, -0.274275, -0.910202,
		0.941894, 0.040787, -0.333425,
		27.726860, 22.576269, 31.932276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181030, 21.975889, 31.803686>,  <27.067535, 22.547718, 32.165672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181030, 21.975889, 31.803686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556028, 22.077438, 31.898895>,  <27.781027, 22.138369, 31.956020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556028, 22.077438, 31.898895>,  <27.181030, 21.975889, 31.803686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556028, 22.077438, 31.898895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197481, -0.951273, 0.236812,
		0.286544, -0.175005, -0.941948,
		0.937493, 0.253874, 0.238022,
		27.837276, 22.153601, 31.970303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557213, 21.407648, 31.600246>,  <27.181030, 21.975889, 31.803686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557213, 21.407648, 31.600246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821709, 21.596302, 31.833595>,  <27.980406, 21.709494, 31.973604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821709, 21.596302, 31.833595>,  <27.557213, 21.407648, 31.600246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821709, 21.596302, 31.833595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263657, -0.874147, 0.407863,
		0.702315, -0.115885, -0.702371,
		0.661240, 0.471634, 0.583372,
		28.020081, 21.737793, 32.008606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214979, 21.021944, 31.608126>,  <27.557213, 21.407648, 31.600246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214979, 21.021944, 31.608126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219046, 21.242737, 31.941643>,  <28.221485, 21.375212, 32.141754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219046, 21.242737, 31.941643>,  <28.214979, 21.021944, 31.608126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219046, 21.242737, 31.941643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241740, -0.810460, 0.533588,
		0.970288, 0.196138, -0.141675,
		0.010165, 0.551982, 0.833794,
		28.222095, 21.408331, 32.191780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892626, 21.096327, 31.955894>,  <28.214979, 21.021944, 31.608126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892626, 21.096327, 31.955894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582705, 21.126465, 32.206974>,  <28.396751, 21.144548, 32.357620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582705, 21.126465, 32.206974>,  <28.892626, 21.096327, 31.955894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582705, 21.126465, 32.206974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291342, -0.838607, 0.460281,
		0.561071, 0.539501, 0.627804,
		-0.774803, 0.075345, 0.627697,
		28.350264, 21.149069, 32.395283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485018, 20.930471, 31.548491>,  <28.892626, 21.096327, 31.955894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485018, 20.930471, 31.548491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429623, 20.700417, 31.225990>,  <29.396385, 20.562384, 31.032490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429623, 20.700417, 31.225990>,  <29.485018, 20.930471, 31.548491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429623, 20.700417, 31.225990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093930, 0.802798, -0.588806,
		0.985900, -0.157275, -0.057156,
		-0.138489, -0.575135, -0.806251,
		29.388077, 20.527876, 30.984116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898300, 21.180101, 31.053707>,  <29.485018, 20.930471, 31.548491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898300, 21.180101, 31.053707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651314, 20.946442, 30.842991>,  <29.503122, 20.806246, 30.716562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651314, 20.946442, 30.842991>,  <29.898300, 21.180101, 31.053707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651314, 20.946442, 30.842991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067879, 0.627637, -0.775541,
		0.783666, -0.514626, -0.347891,
		-0.617463, -0.584150, -0.526790,
		29.466074, 20.771196, 30.684954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074215, 21.219866, 30.388863>,  <29.898300, 21.180101, 31.053707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074215, 21.219866, 30.388863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708399, 21.063740, 30.346401>,  <29.488909, 20.970064, 30.320925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708399, 21.063740, 30.346401>,  <30.074215, 21.219866, 30.388863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708399, 21.063740, 30.346401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145265, 0.561849, -0.814385,
		0.377509, -0.729369, -0.570534,
		-0.914541, -0.390316, -0.106151,
		29.434036, 20.946644, 30.314556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924358, 21.005302, 29.670996>,  <30.074215, 21.219866, 30.388863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924358, 21.005302, 29.670996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570698, 21.074688, 29.844517>,  <29.358501, 21.116320, 29.948629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570698, 21.074688, 29.844517>,  <29.924358, 21.005302, 29.670996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570698, 21.074688, 29.844517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189096, 0.716201, -0.671788,
		-0.427221, -0.675993, -0.600429,
		-0.884152, 0.173463, 0.433804,
		29.305452, 21.126726, 29.974657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510612, 21.105221, 29.107212>,  <29.924358, 21.005302, 29.670996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510612, 21.105221, 29.107212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317316, 21.273247, 29.414463>,  <29.201338, 21.374063, 29.598814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317316, 21.273247, 29.414463>,  <29.510612, 21.105221, 29.107212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317316, 21.273247, 29.414463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173128, 0.814196, -0.554176,
		-0.858198, -0.400786, -0.320728,
		-0.483241, 0.420066, 0.768129,
		29.172344, 21.399267, 29.644901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991568, 21.392754, 28.843208>,  <29.510612, 21.105221, 29.107212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991568, 21.392754, 28.843208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004181, 21.568745, 29.202190>,  <29.011749, 21.674339, 29.417580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004181, 21.568745, 29.202190>,  <28.991568, 21.392754, 28.843208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004181, 21.568745, 29.202190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169363, 0.887270, -0.429031,
		-0.985049, -0.138467, 0.102495,
		0.031534, 0.439976, 0.897456,
		29.013641, 21.700737, 29.471428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401037, 21.763033, 28.861448>,  <28.991568, 21.392754, 28.843208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401037, 21.763033, 28.861448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622923, 21.932858, 29.147675>,  <28.756054, 22.034752, 29.319410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622923, 21.932858, 29.147675>,  <28.401037, 21.763033, 28.861448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622923, 21.932858, 29.147675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243955, 0.905210, -0.347967,
		-0.795473, 0.018456, 0.605708,
		0.554715, 0.424564, 0.715567,
		28.789337, 22.060226, 29.362345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977623, 22.314096, 29.188652>,  <28.401037, 21.763033, 28.861448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977623, 22.314096, 29.188652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353888, 22.408401, 29.286282>,  <28.579647, 22.464985, 29.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353888, 22.408401, 29.286282>,  <27.977623, 22.314096, 29.188652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353888, 22.408401, 29.286282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206416, 0.968411, -0.139903,
		-0.269348, 0.081220, 0.959612,
		0.940662, 0.235762, 0.244074,
		28.636086, 22.479130, 29.359505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974020, 22.902805, 29.657494>,  <27.977623, 22.314096, 29.188652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974020, 22.902805, 29.657494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330631, 22.898922, 29.476349>,  <28.544598, 22.896591, 29.367662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330631, 22.898922, 29.476349>,  <27.974020, 22.902805, 29.657494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330631, 22.898922, 29.476349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094191, 0.973942, -0.206312,
		0.443063, 0.226588, 0.867383,
		0.891529, -0.009709, -0.452860,
		28.598089, 22.896009, 29.340490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212498, 23.518593, 29.826767>,  <27.974020, 22.902805, 29.657494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212498, 23.518593, 29.826767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429306, 23.399048, 29.512596>,  <28.559391, 23.327320, 29.324095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429306, 23.399048, 29.512596>,  <28.212498, 23.518593, 29.826767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429306, 23.399048, 29.512596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045776, 0.943737, -0.327514,
		0.839116, 0.141566, 0.525207,
		0.542022, -0.298864, -0.785425,
		28.591913, 23.309389, 29.276968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598783, 24.084112, 29.644629>,  <28.212498, 23.518593, 29.826767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598783, 24.084112, 29.644629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628313, 23.856773, 29.316841>,  <28.646030, 23.720369, 29.120169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628313, 23.856773, 29.316841>,  <28.598783, 24.084112, 29.644629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628313, 23.856773, 29.316841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076635, 0.822515, -0.563557,
		0.994323, -0.021197, 0.104275,
		0.073822, -0.568348, -0.819469,
		28.650459, 23.686270, 29.071001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096464, 24.401558, 29.267210>,  <28.598783, 24.084112, 29.644629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096464, 24.401558, 29.267210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859970, 24.187729, 29.025658>,  <28.718073, 24.059431, 28.880726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859970, 24.187729, 29.025658>,  <29.096464, 24.401558, 29.267210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859970, 24.187729, 29.025658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077795, 0.707476, -0.702443,
		0.802738, -0.462288, -0.376699,
		-0.591236, -0.534572, -0.603881,
		28.682600, 24.027357, 28.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366987, 24.435854, 28.599834>,  <29.096464, 24.401558, 29.267210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366987, 24.435854, 28.599834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973959, 24.371338, 28.562874>,  <28.738142, 24.332628, 28.540697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973959, 24.371338, 28.562874>,  <29.366987, 24.435854, 28.599834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973959, 24.371338, 28.562874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099754, 0.876985, -0.470049,
		0.156847, -0.452640, -0.877790,
		-0.982572, -0.161289, -0.092400,
		28.679188, 24.322950, 28.535154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208345, 24.567144, 27.818378>,  <29.366987, 24.435854, 28.599834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208345, 24.567144, 27.818378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889875, 24.613777, 28.055870>,  <28.698793, 24.641756, 28.198364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889875, 24.613777, 28.055870>,  <29.208345, 24.567144, 27.818378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889875, 24.613777, 28.055870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242759, 0.837276, -0.489936,
		-0.554230, -0.534208, -0.638319,
		-0.796176, 0.116580, 0.593727,
		28.651022, 24.648750, 28.233988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720308, 24.771931, 27.407068>,  <29.208345, 24.567144, 27.818378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720308, 24.771931, 27.407068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585161, 24.880527, 27.767544>,  <28.504074, 24.945686, 27.983829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585161, 24.880527, 27.767544>,  <28.720308, 24.771931, 27.407068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585161, 24.880527, 27.767544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203086, 0.913908, -0.351465,
		-0.919022, -0.301767, -0.253643,
		-0.337867, 0.271493, 0.901187,
		28.483801, 24.961975, 28.037899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081944, 25.073523, 27.197483>,  <28.720308, 24.771931, 27.407068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081944, 25.073523, 27.197483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185240, 25.185219, 27.567421>,  <28.247217, 25.252237, 27.789383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185240, 25.185219, 27.567421>,  <28.081944, 25.073523, 27.197483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185240, 25.185219, 27.567421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308392, 0.931057, -0.195007,
		-0.915536, -0.234855, 0.326553,
		0.258241, 0.279242, 0.924843,
		28.262712, 25.268991, 27.844873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613966, 25.496141, 27.367994>,  <28.081944, 25.073523, 27.197483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613966, 25.496141, 27.367994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910454, 25.600136, 27.615543>,  <28.088346, 25.662533, 27.764072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910454, 25.600136, 27.615543>,  <27.613966, 25.496141, 27.367994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910454, 25.600136, 27.615543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199165, 0.965612, -0.167116,
		-0.641037, 0.000612, 0.767510,
		0.741219, 0.259988, 0.618871,
		28.132820, 25.678133, 27.801205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287506, 26.083345, 27.782295>,  <27.613966, 25.496141, 27.367994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287506, 26.083345, 27.782295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680788, 26.108009, 27.851002>,  <27.916758, 26.122807, 27.892225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680788, 26.108009, 27.851002>,  <27.287506, 26.083345, 27.782295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680788, 26.108009, 27.851002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074825, 0.994647, 0.071261,
		-0.166452, -0.082917, 0.982557,
		0.983206, 0.061658, 0.171766,
		27.975750, 26.126507, 27.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397898, 26.613997, 28.306629>,  <27.287506, 26.083345, 27.782295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397898, 26.613997, 28.306629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753326, 26.598766, 28.123768>,  <27.966583, 26.589628, 28.014051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753326, 26.598766, 28.123768>,  <27.397898, 26.613997, 28.306629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753326, 26.598766, 28.123768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014798, 0.993652, -0.111522,
		0.458497, 0.105860, 0.882368,
		0.888573, -0.038075, -0.457153,
		28.019897, 26.587343, 27.986622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832150, 27.098791, 28.616968>,  <27.397898, 26.613997, 28.306629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832150, 27.098791, 28.616968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989418, 27.031384, 28.255413>,  <28.083778, 26.990938, 28.038479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989418, 27.031384, 28.255413>,  <27.832150, 27.098791, 28.616968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989418, 27.031384, 28.255413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154181, 0.981225, -0.115873,
		0.906446, -0.093805, 0.411773,
		0.393172, -0.168520, -0.903890,
		28.107370, 26.980827, 27.984245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496048, 27.398174, 28.654572>,  <27.832150, 27.098791, 28.616968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496048, 27.398174, 28.654572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371315, 27.356411, 28.276817>,  <28.296476, 27.331352, 28.050165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371315, 27.356411, 28.276817>,  <28.496048, 27.398174, 28.654572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371315, 27.356411, 28.276817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020286, 0.992986, -0.116482,
		0.949921, -0.055481, -0.307526,
		-0.311832, -0.104410, -0.944383,
		28.277765, 27.325089, 27.993502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889557, 27.869148, 28.235744>,  <28.496048, 27.398174, 28.654572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889557, 27.869148, 28.235744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606733, 27.791382, 27.963783>,  <28.437038, 27.744722, 27.800606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606733, 27.791382, 27.963783>,  <28.889557, 27.869148, 28.235744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606733, 27.791382, 27.963783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278591, 0.960291, 0.015128,
		0.649965, 0.200112, -0.733144,
		-0.707059, -0.194415, -0.679905,
		28.394615, 27.733057, 27.759811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975300, 28.308355, 27.673151>,  <28.889557, 27.869148, 28.235744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975300, 28.308355, 27.673151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594620, 28.186596, 27.657089>,  <28.366213, 28.113541, 27.647451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594620, 28.186596, 27.657089>,  <28.975300, 28.308355, 27.673151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594620, 28.186596, 27.657089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292474, 0.938574, -0.183135,
		0.093434, -0.162545, -0.982267,
		-0.951698, -0.304399, -0.040155,
		28.309111, 28.095276, 27.645042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751926, 28.679623, 27.182695>,  <28.975300, 28.308355, 27.673151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751926, 28.679623, 27.182695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411900, 28.530460, 27.331467>,  <28.207884, 28.440964, 27.420729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411900, 28.530460, 27.331467>,  <28.751926, 28.679623, 27.182695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411900, 28.530460, 27.331467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507613, 0.768367, -0.389795,
		-0.140421, -0.520147, -0.842454,
		-0.850065, -0.372905, 0.371929,
		28.156879, 28.418589, 27.443045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249285, 28.476589, 26.633429>,  <28.751926, 28.679623, 27.182695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249285, 28.476589, 26.633429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056433, 28.555401, 26.974892>,  <27.940722, 28.602688, 27.179770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056433, 28.555401, 26.974892>,  <28.249285, 28.476589, 26.633429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056433, 28.555401, 26.974892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443646, 0.785311, -0.431817,
		-0.755467, -0.586912, -0.291209,
		-0.482128, 0.197030, 0.853658,
		27.911795, 28.614510, 27.230989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524734, 28.497719, 26.461319>,  <28.249285, 28.476589, 26.633429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524734, 28.497719, 26.461319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533735, 28.710960, 26.799618>,  <27.539137, 28.838905, 27.002598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533735, 28.710960, 26.799618>,  <27.524734, 28.497719, 26.461319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533735, 28.710960, 26.799618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522577, 0.727466, -0.444643,
		-0.852295, -0.431963, 0.294959,
		0.022503, 0.533106, 0.845749,
		27.540485, 28.870892, 27.053343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828024, 28.646116, 26.593807>,  <27.524734, 28.497719, 26.461319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828024, 28.646116, 26.593807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038395, 28.904198, 26.815479>,  <27.164618, 29.059046, 26.948483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038395, 28.904198, 26.815479>,  <26.828024, 28.646116, 26.593807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038395, 28.904198, 26.815479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687711, 0.705974, -0.169277,
		-0.500454, -0.292087, 0.815004,
		0.525927, 0.645202, 0.554179,
		27.196173, 29.097759, 26.981733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304789, 28.875402, 27.103256>,  <26.828024, 28.646116, 26.593807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304789, 28.875402, 27.103256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594915, 29.148869, 27.070972>,  <26.768991, 29.312948, 27.051601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594915, 29.148869, 27.070972>,  <26.304789, 28.875402, 27.103256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594915, 29.148869, 27.070972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681125, 0.695674, -0.228269,
		-0.099911, 0.220541, 0.970247,
		0.725318, 0.683667, -0.080711,
		26.812511, 29.353968, 27.046759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996323, 29.480402, 27.352251>,  <26.304789, 28.875402, 27.103256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996323, 29.480402, 27.352251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312725, 29.609524, 27.144363>,  <26.502567, 29.686996, 27.019630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312725, 29.609524, 27.144363>,  <25.996323, 29.480402, 27.352251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312725, 29.609524, 27.144363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557005, 0.731378, -0.393488,
		0.253091, 0.600737, 0.758328,
		0.791006, 0.322804, -0.519718,
		26.550028, 29.706366, 26.988447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019608, 30.155001, 27.547815>,  <25.996323, 29.480402, 27.352251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019608, 30.155001, 27.547815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226011, 30.112167, 27.207870>,  <26.349854, 30.086468, 27.003902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226011, 30.112167, 27.207870>,  <26.019608, 30.155001, 27.547815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226011, 30.112167, 27.207870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511627, 0.757206, -0.406051,
		0.687003, 0.644339, 0.335938,
		0.516008, -0.107083, -0.849864,
		26.380814, 30.080042, 26.952911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293360, 30.760565, 27.317574>,  <26.019608, 30.155001, 27.547815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293360, 30.760565, 27.317574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283453, 30.555840, 26.974079>,  <26.277510, 30.433004, 26.767982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283453, 30.555840, 26.974079>,  <26.293360, 30.760565, 27.317574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283453, 30.555840, 26.974079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355587, 0.807335, -0.470923,
		0.934315, 0.293693, -0.201990,
		-0.024767, -0.511815, -0.858738,
		26.276022, 30.402294, 26.716457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517466, 31.254261, 26.864319>,  <26.293360, 30.760565, 27.317574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517466, 31.254261, 26.864319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323404, 30.980373, 26.646774>,  <26.206968, 30.816040, 26.516247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323404, 30.980373, 26.646774>,  <26.517466, 31.254261, 26.864319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323404, 30.980373, 26.646774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350629, 0.722103, -0.596344,
		0.801053, -0.098625, -0.590413,
		-0.485154, -0.684719, -0.543862,
		26.177858, 30.774958, 26.483616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762615, 31.383825, 26.210548>,  <26.517466, 31.254261, 26.864319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762615, 31.383825, 26.210548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426649, 31.173904, 26.155231>,  <26.225069, 31.047953, 26.122042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426649, 31.173904, 26.155231>,  <26.762615, 31.383825, 26.210548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426649, 31.173904, 26.155231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278457, 0.635436, -0.720197,
		0.465836, -0.566396, -0.679847,
		-0.839916, -0.524802, -0.138292,
		26.174675, 31.016464, 26.113743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599537, 31.286613, 25.514854>,  <26.762615, 31.383825, 26.210548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599537, 31.286613, 25.514854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229923, 31.188553, 25.632202>,  <26.008156, 31.129717, 25.702610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229923, 31.188553, 25.632202>,  <26.599537, 31.286613, 25.514854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229923, 31.188553, 25.632202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382252, 0.578654, -0.720446,
		0.006858, -0.777857, -0.628404,
		-0.924033, -0.245150, 0.293369,
		25.952713, 31.115007, 25.720213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194689, 31.073210, 24.928638>,  <26.599537, 31.286613, 25.514854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194689, 31.073210, 24.928638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943293, 31.196812, 25.214161>,  <25.792456, 31.270973, 25.385473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943293, 31.196812, 25.214161>,  <26.194689, 31.073210, 24.928638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943293, 31.196812, 25.214161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481892, 0.565672, -0.669175,
		-0.610558, -0.764546, -0.206611,
		-0.628489, 0.309006, 0.713804,
		25.754745, 31.289513, 25.428303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625599, 31.013783, 24.618698>,  <26.194689, 31.073210, 24.928638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625599, 31.013783, 24.618698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553307, 31.257595, 24.927452>,  <25.509932, 31.403883, 25.112705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553307, 31.257595, 24.927452>,  <25.625599, 31.013783, 24.618698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553307, 31.257595, 24.927452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461883, 0.640286, -0.613757,
		-0.868332, -0.467445, 0.165814,
		-0.180730, 0.609532, 0.771886,
		25.499088, 31.440454, 25.159018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868988, 30.953840, 24.658632>,  <25.625599, 31.013783, 24.618698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868988, 30.953840, 24.658632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990236, 31.264153, 24.880005>,  <25.062984, 31.450340, 25.012829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990236, 31.264153, 24.880005>,  <24.868988, 30.953840, 24.658632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990236, 31.264153, 24.880005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486601, 0.625338, -0.610059,
		-0.819352, -0.084379, 0.567048,
		0.303120, 0.775779, 0.553431,
		25.081173, 31.496885, 25.046034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276543, 31.284233, 24.671921>,  <24.868988, 30.953840, 24.658632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276543, 31.284233, 24.671921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586132, 31.527905, 24.741051>,  <24.771885, 31.674107, 24.782528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586132, 31.527905, 24.741051>,  <24.276543, 31.284233, 24.671921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586132, 31.527905, 24.741051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371914, 0.658218, -0.654545,
		-0.512491, 0.442324, 0.736005,
		0.773972, 0.609179, 0.172824,
		24.818323, 31.710659, 24.792898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010620, 31.924417, 24.864374>,  <24.276543, 31.284233, 24.671921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010620, 31.924417, 24.864374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381573, 32.021919, 24.750851>,  <24.604145, 32.080421, 24.682737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381573, 32.021919, 24.750851>,  <24.010620, 31.924417, 24.864374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381573, 32.021919, 24.750851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361086, 0.781652, -0.508564,
		0.097873, 0.574112, 0.812906,
		0.927382, 0.243754, -0.283806,
		24.659788, 32.095047, 24.665709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005718, 32.693455, 24.952574>,  <24.010620, 31.924417, 24.864374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005718, 32.693455, 24.952574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302568, 32.565838, 24.716789>,  <24.480679, 32.489269, 24.575319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302568, 32.565838, 24.716789>,  <24.005718, 32.693455, 24.952574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302568, 32.565838, 24.716789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354537, 0.559494, -0.749179,
		0.568816, 0.764971, 0.302104,
		0.742126, -0.319038, -0.589460,
		24.525206, 32.470127, 24.539951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461414, 33.293865, 24.700941>,  <24.005718, 32.693455, 24.952574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461414, 33.293865, 24.700941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.430996, 32.983723, 24.450172>,  <24.412745, 32.797638, 24.299711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.430996, 32.983723, 24.450172>,  <24.461414, 33.293865, 24.700941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.430996, 32.983723, 24.450172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254119, 0.623053, -0.739749,
		0.964179, 0.103059, -0.244413,
		-0.076045, -0.775360, -0.626924,
		24.408182, 32.751114, 24.262094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.820080, 33.354565, 24.296637>,  <24.461414, 33.293865, 24.700941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.820080, 33.354565, 24.296637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667919, 33.386463, 23.928085>,  <23.576624, 33.405602, 23.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667919, 33.386463, 23.928085>,  <23.820080, 33.354565, 24.296637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667919, 33.386463, 23.928085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054170, 0.996486, 0.063881,
		0.923234, -0.025610, -0.383383,
		-0.380400, 0.079745, -0.921377,
		23.553799, 33.410385, 23.651672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.334633, 33.730160, 23.894520>,  <23.820080, 33.354565, 24.296637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.334633, 33.730160, 23.894520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.951094, 33.790771, 23.798481>,  <23.720970, 33.827141, 23.740858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.951094, 33.790771, 23.798481>,  <24.334633, 33.730160, 23.894520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.951094, 33.790771, 23.798481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135917, 0.987451, 0.080419,
		0.249270, 0.044476, -0.967412,
		-0.958849, 0.151533, -0.240097,
		23.663439, 33.836231, 23.726452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.214087, 34.063839, 23.209934>,  <24.334633, 33.730160, 23.894520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.214087, 34.063839, 23.209934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.905842, 34.159454, 23.446247>,  <23.720896, 34.216824, 23.588036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.905842, 34.159454, 23.446247>,  <24.214087, 34.063839, 23.209934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.905842, 34.159454, 23.446247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071191, 0.953481, -0.292925,
		-0.633319, -0.183673, -0.751779,
		-0.770610, 0.239035, 0.590781,
		23.674660, 34.231163, 23.623482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595238, 34.336987, 22.899843>,  <24.214087, 34.063839, 23.209934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595238, 34.336987, 22.899843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.664215, 34.512733, 23.252483>,  <23.705601, 34.618183, 23.464067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.664215, 34.512733, 23.252483>,  <23.595238, 34.336987, 22.899843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.664215, 34.512733, 23.252483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113720, 0.880144, -0.460884,
		-0.978433, 0.179732, 0.101809,
		0.172442, 0.439366, 0.881601,
		23.715948, 34.644543, 23.516964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.954733, 34.673771, 23.138695>,  <23.595238, 34.336987, 22.899843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.954733, 34.673771, 23.138695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304026, 34.837116, 23.245056>,  <23.513601, 34.935123, 23.308872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304026, 34.837116, 23.245056>,  <22.954733, 34.673771, 23.138695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.304026, 34.837116, 23.245056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172460, 0.769330, -0.615134,
		-0.455764, 0.491298, 0.742230,
		0.873234, 0.408361, 0.265903,
		23.565996, 34.959625, 23.324827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.306822, 34.476742, 23.467005>,  <22.954733, 34.673771, 23.138695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.306822, 34.476742, 23.467005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.328838, 34.875305, 23.492741>,  <22.342049, 35.114445, 23.508183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.328838, 34.875305, 23.492741>,  <22.306822, 34.476742, 23.467005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.328838, 34.875305, 23.492741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891798, -0.020077, -0.451989,
		-0.449074, 0.082258, -0.889700,
		0.055042, 0.996409, 0.064341,
		22.345350, 35.174229, 23.512043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.448301, 34.388126, 22.644264>,  <22.306822, 34.476742, 23.467005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.448301, 34.388126, 22.644264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.212339, 34.708229, 22.601185>,  <22.070763, 34.900291, 22.575336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.212339, 34.708229, 22.601185>,  <22.448301, 34.388126, 22.644264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212339, 34.708229, 22.601185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216274, 0.028083, -0.975929,
		-0.777972, -0.598996, -0.189642,
		-0.589903, 0.800259, -0.107700,
		22.035368, 34.948307, 22.568874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089384, 34.242416, 22.069202>,  <22.448301, 34.388126, 22.644264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089384, 34.242416, 22.069202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.046127, 34.639683, 22.086769>,  <22.020174, 34.878044, 22.097309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.046127, 34.639683, 22.086769>,  <22.089384, 34.242416, 22.069202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046127, 34.639683, 22.086769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246854, 0.069618, -0.966549,
		-0.963000, -0.093682, -0.252695,
		-0.108140, 0.993165, 0.043916,
		22.013685, 34.937634, 22.099943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559824, 34.469322, 21.532244>,  <22.089384, 34.242416, 22.069202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559824, 34.469322, 21.532244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802069, 34.768990, 21.639561>,  <21.947416, 34.948788, 21.703951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802069, 34.768990, 21.639561>,  <21.559824, 34.469322, 21.532244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802069, 34.768990, 21.639561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324230, 0.075592, -0.942953,
		-0.726710, 0.658055, -0.197123,
		0.605614, 0.749166, 0.268295,
		21.983753, 34.993740, 21.720049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.363449, 35.050354, 21.112263>,  <21.559824, 34.469322, 21.532244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.363449, 35.050354, 21.112263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.725273, 35.129669, 21.263237>,  <21.942368, 35.177258, 21.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.725273, 35.129669, 21.263237>,  <21.363449, 35.050354, 21.112263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.725273, 35.129669, 21.263237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328614, 0.239774, -0.913521,
		-0.271640, 0.950363, 0.151729,
		0.904558, 0.198289, 0.377435,
		21.996641, 35.189156, 21.376467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460169, 35.706215, 20.786930>,  <21.363449, 35.050354, 21.112263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460169, 35.706215, 20.786930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819466, 35.589550, 20.918442>,  <22.035044, 35.519550, 20.997349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819466, 35.589550, 20.918442>,  <21.460169, 35.706215, 20.786930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819466, 35.589550, 20.918442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422378, 0.366082, -0.829205,
		0.121487, 0.883696, 0.452021,
		0.898242, -0.291661, 0.328779,
		22.088938, 35.502052, 21.017076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932539, 36.346470, 20.762505>,  <21.460169, 35.706215, 20.786930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932539, 36.346470, 20.762505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146799, 36.008938, 20.749649>,  <22.275354, 35.806419, 20.741936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146799, 36.008938, 20.749649>,  <21.932539, 36.346470, 20.762505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.146799, 36.008938, 20.749649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523420, 0.361644, -0.771521,
		0.662654, 0.396443, 0.635391,
		0.535650, -0.843828, -0.032139,
		22.307493, 35.755791, 20.740007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.655558, 36.688271, 20.668425>,  <21.932539, 36.346470, 20.762505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.655558, 36.688271, 20.668425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633354, 36.295246, 20.597443>,  <22.620031, 36.059433, 20.554853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633354, 36.295246, 20.597443>,  <22.655558, 36.688271, 20.668425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633354, 36.295246, 20.597443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814186, 0.058333, -0.577666,
		0.577944, -0.176546, 0.796751,
		-0.055508, -0.982562, -0.177455,
		22.616701, 36.000477, 20.544207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.305269, 36.386204, 20.754576>,  <22.655558, 36.688271, 20.668425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.305269, 36.386204, 20.754576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.135910, 36.127769, 20.500549>,  <23.034294, 35.972710, 20.348133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.135910, 36.127769, 20.500549>,  <23.305269, 36.386204, 20.754576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.135910, 36.127769, 20.500549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747509, 0.146893, -0.647806,
		0.511825, -0.748996, 0.420761,
		-0.423397, -0.646086, -0.635065,
		23.008890, 35.933945, 20.310030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938841, 36.042953, 20.476175>,  <23.305269, 36.386204, 20.754576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938841, 36.042953, 20.476175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.659880, 35.917576, 20.218376>,  <23.492502, 35.842350, 20.063696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.659880, 35.917576, 20.218376>,  <23.938841, 36.042953, 20.476175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.659880, 35.917576, 20.218376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612498, 0.206259, -0.763088,
		0.372122, -0.926934, 0.048141,
		-0.697403, -0.313448, -0.644499,
		23.450659, 35.823540, 20.025026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327042, 35.640343, 19.981379>,  <23.938841, 36.042953, 20.476175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327042, 35.640343, 19.981379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985428, 35.756882, 19.808987>,  <23.780460, 35.826805, 19.705551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985428, 35.756882, 19.808987>,  <24.327042, 35.640343, 19.981379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.985428, 35.756882, 19.808987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495798, 0.205003, -0.843894,
		-0.157515, -0.934393, -0.319529,
		-0.854033, 0.291348, -0.430980,
		23.729218, 35.844284, 19.679693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.391676, 35.364235, 19.256207>,  <24.327042, 35.640343, 19.981379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.391676, 35.364235, 19.256207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112762, 35.650845, 19.248295>,  <23.945414, 35.822811, 19.243547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112762, 35.650845, 19.248295>,  <24.391676, 35.364235, 19.256207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.112762, 35.650845, 19.248295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278296, 0.245188, -0.928673,
		-0.660566, -0.653053, -0.370371,
		-0.697283, 0.716523, -0.019779,
		23.903578, 35.865803, 19.242361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.001354, 35.318680, 18.641569>,  <24.391676, 35.364235, 19.256207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.001354, 35.318680, 18.641569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.957964, 35.701679, 18.748470>,  <23.931931, 35.931480, 18.812611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.957964, 35.701679, 18.748470>,  <24.001354, 35.318680, 18.641569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.957964, 35.701679, 18.748470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226797, 0.285587, -0.931130,
		-0.967883, -0.040392, -0.248137,
		-0.108475, 0.957501, 0.267254,
		23.925421, 35.988930, 18.828646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.744007, 35.569702, 18.109291>,  <24.001354, 35.318680, 18.641569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.744007, 35.569702, 18.109291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.874046, 35.898079, 18.297066>,  <23.952070, 36.095104, 18.409731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.874046, 35.898079, 18.297066>,  <23.744007, 35.569702, 18.109291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.874046, 35.898079, 18.297066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188738, 0.430089, -0.882837,
		-0.926655, 0.375609, -0.015122,
		0.325097, 0.820940, 0.469435,
		23.971575, 36.144360, 18.437897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.240974, 36.088158, 17.937140>,  <23.744007, 35.569702, 18.109291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.240974, 36.088158, 17.937140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.588034, 36.253284, 18.047966>,  <23.796268, 36.352360, 18.114462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.588034, 36.253284, 18.047966>,  <23.240974, 36.088158, 17.937140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.588034, 36.253284, 18.047966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015122, 0.535105, -0.844650,
		-0.496949, 0.737049, 0.458040,
		0.867648, 0.412821, 0.277065,
		23.848328, 36.377132, 18.131086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.167364, 36.769375, 17.825569>,  <23.240974, 36.088158, 17.937140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.167364, 36.769375, 17.825569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.564226, 36.720535, 17.814812>,  <23.802343, 36.691231, 17.808357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.564226, 36.720535, 17.814812>,  <23.167364, 36.769375, 17.825569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.564226, 36.720535, 17.814812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050831, 0.590440, -0.805479,
		0.114228, 0.797792, 0.592013,
		0.992153, -0.122101, -0.026893,
		23.861872, 36.683907, 17.806744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.494715, 37.431549, 17.591558>,  <23.167364, 36.769375, 17.825569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.494715, 37.431549, 17.591558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798004, 37.176441, 17.537384>,  <23.979979, 37.023376, 17.504879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798004, 37.176441, 17.537384>,  <23.494715, 37.431549, 17.591558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.798004, 37.176441, 17.537384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192163, 0.417100, -0.888313,
		0.623031, 0.647515, 0.438812,
		0.758225, -0.637771, -0.135437,
		24.025471, 36.985111, 17.496754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003355, 37.897972, 17.387199>,  <23.494715, 37.431549, 17.591558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003355, 37.897972, 17.387199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053297, 37.519939, 17.266384>,  <24.083261, 37.293118, 17.193895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053297, 37.519939, 17.266384>,  <24.003355, 37.897972, 17.387199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.053297, 37.519939, 17.266384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296215, 0.326044, -0.897748,
		0.946926, 0.022618, 0.320656,
		0.124853, -0.945084, -0.302040,
		24.090754, 37.236416, 17.175772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615515, 37.881344, 17.034023>,  <24.003355, 37.897972, 17.387199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615515, 37.881344, 17.034023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419611, 37.557835, 16.903774>,  <24.302069, 37.363731, 16.825624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419611, 37.557835, 16.903774>,  <24.615515, 37.881344, 17.034023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419611, 37.557835, 16.903774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267403, 0.216137, -0.939032,
		0.829838, -0.546972, 0.110412,
		-0.489759, -0.808769, -0.325621,
		24.272682, 37.315205, 16.806087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918751, 37.687817, 16.329006>,  <24.615515, 37.881344, 17.034023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918751, 37.687817, 16.329006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588348, 37.462376, 16.325653>,  <24.390108, 37.327110, 16.323641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588348, 37.462376, 16.325653>,  <24.918751, 37.687817, 16.329006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588348, 37.462376, 16.325653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108197, 0.173132, -0.978938,
		0.553182, -0.807700, -0.203988,
		-0.826005, -0.563602, -0.008383,
		24.340548, 37.293297, 16.323137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999166, 37.111366, 15.838155>,  <24.918751, 37.687817, 16.329006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999166, 37.111366, 15.838155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608221, 37.185913, 15.878213>,  <24.373653, 37.230640, 15.902247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608221, 37.185913, 15.878213>,  <24.999166, 37.111366, 15.838155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.608221, 37.185913, 15.878213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072533, 0.149498, -0.986098,
		-0.198747, -0.971040, -0.132596,
		-0.977363, 0.186366, 0.100145,
		24.315012, 37.241821, 15.908257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677263, 36.727859, 15.331727>,  <24.999166, 37.111366, 15.838155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677263, 36.727859, 15.331727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427187, 37.023815, 15.431079>,  <24.277142, 37.201389, 15.490690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427187, 37.023815, 15.431079>,  <24.677263, 36.727859, 15.331727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427187, 37.023815, 15.431079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346882, 0.021662, -0.937659,
		-0.699148, -0.672375, 0.243113,
		-0.625192, 0.739894, 0.248380,
		24.239630, 37.245785, 15.505592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.958538, 36.509010, 15.131089>,  <24.677263, 36.727859, 15.331727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.958538, 36.509010, 15.131089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.032177, 36.902008, 15.119630>,  <24.076361, 37.137806, 15.112754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.032177, 36.902008, 15.119630>,  <23.958538, 36.509010, 15.131089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.032177, 36.902008, 15.119630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588640, 0.086863, -0.803715,
		-0.787153, 0.164827, 0.594324,
		0.184099, 0.982490, -0.028649,
		24.087406, 37.196754, 15.111035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.553055, 35.916214, 15.056160>,  <23.958538, 36.509010, 15.131089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.553055, 35.916214, 15.056160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223797, 35.858200, 14.836562>,  <23.026241, 35.823391, 14.704803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223797, 35.858200, 14.836562>,  <23.553055, 35.916214, 15.056160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.223797, 35.858200, 14.836562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481736, 0.690191, 0.539969,
		0.300599, 0.708944, -0.637995,
		-0.823147, -0.145031, -0.548995,
		22.976852, 35.814690, 14.671864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.256155, 36.553066, 14.808593>,  <23.553055, 35.916214, 15.056160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.256155, 36.553066, 14.808593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980255, 36.265209, 14.840486>,  <22.814716, 36.092495, 14.859621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980255, 36.265209, 14.840486>,  <23.256155, 36.553066, 14.808593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.980255, 36.265209, 14.840486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566614, 0.605046, 0.559346,
		-0.450773, 0.340631, -0.825091,
		-0.689748, -0.719646, 0.079732,
		22.773331, 36.049316, 14.864406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.562792, 36.767303, 14.596405>,  <23.256155, 36.553066, 14.808593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.562792, 36.767303, 14.596405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511377, 36.477619, 14.867404>,  <22.480528, 36.303810, 15.030004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511377, 36.477619, 14.867404>,  <22.562792, 36.767303, 14.596405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511377, 36.477619, 14.867404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672827, 0.565565, 0.476906,
		-0.728548, -0.394538, -0.559962,
		-0.128537, -0.724207, 0.677497,
		22.472816, 36.260357, 15.070653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.900202, 37.044704, 14.455604>,  <22.562792, 36.767303, 14.596405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.900202, 37.044704, 14.455604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726768, 37.255653, 14.747872>,  <21.622707, 37.382221, 14.923234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726768, 37.255653, 14.747872>,  <21.900202, 37.044704, 14.455604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.726768, 37.255653, 14.747872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125386, 0.838276, -0.530634,
		-0.892347, -0.138458, -0.429589,
		-0.433585, 0.527374, 0.730672,
		21.596693, 37.413864, 14.967073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478086, 37.551777, 14.194635>,  <21.900202, 37.044704, 14.455604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478086, 37.551777, 14.194635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552313, 37.708752, 14.554982>,  <21.596849, 37.802937, 14.771191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552313, 37.708752, 14.554982>,  <21.478086, 37.551777, 14.194635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552313, 37.708752, 14.554982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015136, 0.917823, -0.396701,
		-0.982515, 0.059979, 0.176258,
		0.185567, 0.392432, 0.900867,
		21.607983, 37.826481, 14.825242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.952549, 38.108418, 14.389838>,  <21.478086, 37.551777, 14.194635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.952549, 38.108418, 14.389838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320988, 38.141476, 14.542020>,  <21.542051, 38.161312, 14.633329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320988, 38.141476, 14.542020>,  <20.952549, 38.108418, 14.389838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320988, 38.141476, 14.542020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027756, 0.960783, -0.275910,
		-0.388338, 0.264700, 0.882682,
		0.921099, 0.082646, 0.380455,
		21.597317, 38.166271, 14.656157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.063564, 38.711781, 14.692045>,  <20.952549, 38.108418, 14.389838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.063564, 38.711781, 14.692045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441494, 38.616474, 14.602120>,  <21.668251, 38.559292, 14.548165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441494, 38.616474, 14.602120>,  <21.063564, 38.711781, 14.692045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441494, 38.616474, 14.602120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136759, 0.910507, -0.390224,
		0.297668, 0.337947, 0.892852,
		0.944823, -0.238263, -0.224811,
		21.724941, 38.544994, 14.534678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.842953, 39.420933, 14.909463>,  <21.063564, 38.711781, 14.692045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.842953, 39.420933, 14.909463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.524937, 39.179699, 14.883542>,  <20.334127, 39.034958, 14.867990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.524937, 39.179699, 14.883542>,  <20.842953, 39.420933, 14.909463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.524937, 39.179699, 14.883542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330132, 0.340613, 0.880339,
		-0.508848, 0.721297, -0.469899,
		-0.795039, -0.603087, -0.064803,
		20.286425, 38.998772, 14.864101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183428, 39.813328, 14.954427>,  <20.842953, 39.420933, 14.909463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183428, 39.813328, 14.954427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229843, 39.435242, 15.076482>,  <20.257692, 39.208389, 15.149715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229843, 39.435242, 15.076482>,  <20.183428, 39.813328, 14.954427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229843, 39.435242, 15.076482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192468, 0.279992, 0.940511,
		-0.974418, -0.167866, -0.149432,
		0.116040, -0.945212, 0.305138,
		20.264654, 39.151680, 15.168023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618717, 39.592236, 15.405603>,  <20.183428, 39.813328, 14.954427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618717, 39.592236, 15.405603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.904406, 39.324039, 15.485936>,  <20.075819, 39.163124, 15.534136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.904406, 39.324039, 15.485936>,  <19.618717, 39.592236, 15.405603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.904406, 39.324039, 15.485936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128331, 0.156626, 0.979285,
		-0.688053, -0.725201, 0.025821,
		0.714223, -0.670486, 0.200833,
		20.118673, 39.122894, 15.546185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359715, 39.069874, 15.904785>,  <19.618717, 39.592236, 15.405603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.359715, 39.069874, 15.904785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757832, 39.043072, 15.932796>,  <19.996702, 39.026989, 15.949602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757832, 39.043072, 15.932796>,  <19.359715, 39.069874, 15.904785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757832, 39.043072, 15.932796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079487, -0.150930, 0.985344,
		-0.055451, -0.986271, -0.155545,
		0.995292, -0.067002, 0.070026,
		20.056419, 39.022972, 15.953803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.432005, 38.482391, 16.355364>,  <19.359715, 39.069874, 15.904785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.432005, 38.482391, 16.355364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778582, 38.681301, 16.373226>,  <19.986528, 38.800648, 16.383944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778582, 38.681301, 16.373226>,  <19.432005, 38.482391, 16.355364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778582, 38.681301, 16.373226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009063, -0.073762, 0.997235,
		0.499197, -0.864450, -0.059404,
		0.866441, 0.497277, 0.044657,
		20.038513, 38.830482, 16.386623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.801460, 38.108730, 16.863287>,  <19.432005, 38.482391, 16.355364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.801460, 38.108730, 16.863287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970480, 38.469234, 16.824951>,  <20.071892, 38.685535, 16.801950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970480, 38.469234, 16.824951>,  <19.801460, 38.108730, 16.863287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970480, 38.469234, 16.824951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015420, 0.098579, 0.995010,
		0.906209, -0.421918, 0.027756,
		0.422549, 0.901259, -0.095839,
		20.097244, 38.739613, 16.796200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264528, 38.040962, 17.424522>,  <19.801460, 38.108730, 16.863287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264528, 38.040962, 17.424522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243891, 38.427925, 17.325363>,  <20.231508, 38.660103, 17.265867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243891, 38.427925, 17.325363>,  <20.264528, 38.040962, 17.424522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243891, 38.427925, 17.325363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094193, 0.251838, 0.963174,
		0.994216, 0.026342, -0.104117,
		-0.051593, 0.967411, -0.247900,
		20.228413, 38.718147, 17.250994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.888220, 38.363762, 17.632948>,  <20.264528, 38.040962, 17.424522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.888220, 38.363762, 17.632948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.602306, 38.642776, 17.612858>,  <20.430758, 38.810184, 17.600803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.602306, 38.642776, 17.612858>,  <20.888220, 38.363762, 17.632948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.602306, 38.642776, 17.612858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149572, 0.222639, 0.963359,
		0.683163, 0.681081, -0.263471,
		-0.714784, 0.697539, -0.050227,
		20.387871, 38.852039, 17.597790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190948, 38.956409, 17.853466>,  <20.888220, 38.363762, 17.632948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190948, 38.956409, 17.853466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794958, 38.994545, 17.895142>,  <20.557364, 39.017426, 17.920147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794958, 38.994545, 17.895142>,  <21.190948, 38.956409, 17.853466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794958, 38.994545, 17.895142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122018, 0.205985, 0.970918,
		0.071101, 0.973900, -0.215553,
		-0.989978, 0.095335, 0.104187,
		20.497965, 39.023144, 17.926397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.042429, 39.591965, 18.224098>,  <21.190948, 38.956409, 17.853466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.042429, 39.591965, 18.224098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.723255, 39.354301, 18.264656>,  <20.531752, 39.211704, 18.288992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.723255, 39.354301, 18.264656>,  <21.042429, 39.591965, 18.224098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.723255, 39.354301, 18.264656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098602, 0.037286, 0.994428,
		-0.594626, 0.803485, 0.028834,
		-0.797933, -0.594156, 0.101397,
		20.483875, 39.176056, 18.295074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.795750, 39.838177, 18.873638>,  <21.042429, 39.591965, 18.224098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.795750, 39.838177, 18.873638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557802, 39.519257, 18.832752>,  <20.415035, 39.327904, 18.808220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557802, 39.519257, 18.832752>,  <20.795750, 39.838177, 18.873638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557802, 39.519257, 18.832752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001398, -0.126137, 0.992012,
		-0.803823, 0.590257, 0.073920,
		-0.594866, -0.797299, -0.102217,
		20.379343, 39.280067, 18.802088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188211, 39.836243, 19.382736>,  <20.795750, 39.838177, 18.873638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188211, 39.836243, 19.382736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254822, 39.456280, 19.276951>,  <20.294788, 39.228302, 19.213480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254822, 39.456280, 19.276951>,  <20.188211, 39.836243, 19.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.254822, 39.456280, 19.276951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114167, -0.284980, 0.951711,
		-0.979405, -0.128293, -0.155905,
		0.166527, -0.949909, -0.264464,
		20.304781, 39.171307, 19.197611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.700293, 39.585945, 19.862341>,  <20.188211, 39.836243, 19.382736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.700293, 39.585945, 19.862341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945028, 39.307014, 19.713001>,  <20.091869, 39.139656, 19.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945028, 39.307014, 19.713001>,  <19.700293, 39.585945, 19.862341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945028, 39.307014, 19.713001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124568, -0.381168, 0.916075,
		-0.781114, -0.606996, -0.146348,
		0.611837, -0.697329, -0.373348,
		20.128580, 39.097816, 19.600998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.408560, 38.991096, 20.134516>,  <19.700293, 39.585945, 19.862341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.408560, 38.991096, 20.134516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.787624, 38.912090, 20.034176>,  <20.015062, 38.864685, 19.973972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.787624, 38.912090, 20.034176>,  <19.408560, 38.991096, 20.134516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787624, 38.912090, 20.034176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136833, -0.458612, 0.878038,
		-0.288471, -0.866407, -0.407582,
		0.947661, -0.197518, -0.250849,
		20.071922, 38.852837, 19.958921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485374, 38.201382, 20.255810>,  <19.408560, 38.991096, 20.134516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485374, 38.201382, 20.255810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.854820, 38.354504, 20.247841>,  <20.076487, 38.446377, 20.243059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.854820, 38.354504, 20.247841>,  <19.485374, 38.201382, 20.255810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854820, 38.354504, 20.247841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199328, -0.435235, 0.877974,
		0.327424, -0.814879, -0.478293,
		0.923613, 0.382807, -0.019922,
		20.131905, 38.469345, 20.241865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.958651, 37.682068, 20.289400>,  <19.485374, 38.201382, 20.255810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.958651, 37.682068, 20.289400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160965, 38.004864, 20.411346>,  <20.282354, 38.198544, 20.484514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160965, 38.004864, 20.411346>,  <19.958651, 37.682068, 20.289400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.160965, 38.004864, 20.411346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096234, -0.298414, 0.949572,
		0.857273, -0.509621, -0.073274,
		0.505788, 0.806991, 0.304865,
		20.312702, 38.246960, 20.502806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521917, 37.389904, 20.821470>,  <19.958651, 37.682068, 20.289400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521917, 37.389904, 20.821470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.538641, 37.786255, 20.872719>,  <20.548676, 38.024067, 20.903467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.538641, 37.786255, 20.872719>,  <20.521917, 37.389904, 20.821470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538641, 37.786255, 20.872719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234033, -0.134378, 0.962897,
		0.971329, -0.010275, -0.237516,
		0.041811, 0.990877, 0.128121,
		20.551184, 38.083519, 20.911156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127333, 37.453552, 21.179073>,  <20.521917, 37.389904, 20.821470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127333, 37.453552, 21.179073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.923105, 37.789894, 21.250950>,  <20.800570, 37.991699, 21.294077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.923105, 37.789894, 21.250950>,  <21.127333, 37.453552, 21.179073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.923105, 37.789894, 21.250950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059852, -0.173722, 0.982974,
		0.857753, 0.512629, 0.038370,
		-0.510567, 0.840852, 0.179692,
		20.769936, 38.042149, 21.304857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520832, 37.804680, 21.760792>,  <21.127333, 37.453552, 21.179073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520832, 37.804680, 21.760792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.150898, 37.955715, 21.779148>,  <20.928938, 38.046337, 21.790163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.150898, 37.955715, 21.779148>,  <21.520832, 37.804680, 21.760792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.150898, 37.955715, 21.779148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010186, -0.145196, 0.989351,
		0.380233, 0.914518, 0.138128,
		-0.924835, 0.377591, 0.045893,
		20.873447, 38.068993, 21.792915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527998, 38.364414, 22.227873>,  <21.520832, 37.804680, 21.760792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527998, 38.364414, 22.227873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160091, 38.209675, 22.201416>,  <20.939346, 38.116833, 22.185543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160091, 38.209675, 22.201416>,  <21.527998, 38.364414, 22.227873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.160091, 38.209675, 22.201416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013991, -0.136100, 0.990596,
		-0.392212, 0.912044, 0.119768,
		-0.919768, -0.386848, -0.066140,
		20.884161, 38.093620, 22.181574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.245743, 38.464394, 22.890778>,  <21.527998, 38.364414, 22.227873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.245743, 38.464394, 22.890778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989100, 38.200714, 22.733913>,  <20.835114, 38.042507, 22.639795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989100, 38.200714, 22.733913>,  <21.245743, 38.464394, 22.890778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989100, 38.200714, 22.733913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218713, -0.332816, 0.917278,
		-0.735189, 0.674304, 0.069362,
		-0.641609, -0.659202, -0.392162,
		20.796618, 38.002953, 22.616264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679510, 38.386272, 23.344633>,  <21.245743, 38.464394, 22.890778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679510, 38.386272, 23.344633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682379, 38.048943, 23.129688>,  <20.684101, 37.846546, 23.000721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682379, 38.048943, 23.129688>,  <20.679510, 38.386272, 23.344633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682379, 38.048943, 23.129688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270293, -0.519008, 0.810908,
		-0.962751, 0.139428, -0.231667,
		0.007174, -0.843321, -0.537362,
		20.684530, 37.795948, 22.968479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152887, 37.998863, 23.592758>,  <20.679510, 38.386272, 23.344633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152887, 37.998863, 23.592758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356699, 37.712582, 23.401699>,  <20.478985, 37.540813, 23.287064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356699, 37.712582, 23.401699>,  <20.152887, 37.998863, 23.592758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356699, 37.712582, 23.401699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330038, -0.675214, 0.659668,
		-0.794643, -0.178477, -0.580249,
		0.509528, -0.715704, -0.477649,
		20.509558, 37.497871, 23.258404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815006, 37.405895, 23.798431>,  <20.152887, 37.998863, 23.592758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815006, 37.405895, 23.798431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.157978, 37.265079, 23.648293>,  <20.363760, 37.180592, 23.558208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.157978, 37.265079, 23.648293>,  <19.815006, 37.405895, 23.798431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.157978, 37.265079, 23.648293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001435, -0.731028, 0.682346,
		-0.514602, -0.584524, -0.627309,
		0.857428, -0.352037, -0.375350,
		20.415207, 37.159470, 23.535688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.566021, 37.682785, 24.451096>,  <19.815006, 37.405895, 23.798431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.566021, 37.682785, 24.451096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.570486, 37.881744, 24.798077>,  <19.573166, 38.001118, 25.006266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.570486, 37.881744, 24.798077>,  <19.566021, 37.682785, 24.451096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.570486, 37.881744, 24.798077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021381, -0.867189, 0.497519,
		0.999709, -0.024100, 0.000955,
		0.011162, 0.497395, 0.867453,
		19.573835, 38.030964, 25.058311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830908, 37.744637, 24.408827>,  <19.566021, 37.682785, 24.451096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830908, 37.744637, 24.408827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482174, 37.938606, 24.381248>,  <18.272934, 38.054989, 24.364700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482174, 37.938606, 24.381248>,  <18.830908, 37.744637, 24.408827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482174, 37.938606, 24.381248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097092, -0.309072, -0.946070,
		-0.480086, -0.818119, 0.316542,
		-0.871832, 0.484928, -0.068948,
		18.220625, 38.084084, 24.360563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576792, 37.405159, 23.864014>,  <18.830908, 37.744637, 24.408827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576792, 37.405159, 23.864014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.381868, 37.753235, 23.893154>,  <18.264915, 37.962078, 23.910639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.381868, 37.753235, 23.893154>,  <18.576792, 37.405159, 23.864014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381868, 37.753235, 23.893154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211253, -0.036532, -0.976749,
		-0.847292, -0.491366, 0.201632,
		-0.487307, 0.870187, 0.072849,
		18.235676, 38.014290, 23.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002670, 37.264515, 23.363592>,  <18.576792, 37.405159, 23.864014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002670, 37.264515, 23.363592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096163, 37.652405, 23.391861>,  <18.152258, 37.885139, 23.408821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096163, 37.652405, 23.391861>,  <18.002670, 37.264515, 23.363592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096163, 37.652405, 23.391861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126957, 0.041623, -0.991035,
		-0.963977, 0.240610, -0.113385,
		0.233733, 0.969729, 0.070671,
		18.166283, 37.943325, 23.413063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.525112, 24.932943, 27.490168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834574, 25.109993, 27.671516>,  <32.020252, 25.216223, 27.780325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834574, 25.109993, 27.671516>,  <31.525112, 24.932943, 27.490168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834574, 25.109993, 27.671516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316000, 0.889739, -0.329406,
		-0.549185, 0.111581, 0.828218,
		0.773654, 0.442622, 0.453372,
		32.066669, 25.242779, 27.807528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378286, 25.590286, 27.483019>,  <31.525112, 24.932943, 27.490168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378286, 25.590286, 27.483019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.759241, 25.638149, 27.595192>,  <31.987814, 25.666866, 27.662495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.759241, 25.638149, 27.595192>,  <31.378286, 25.590286, 27.483019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759241, 25.638149, 27.595192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041762, 0.962299, -0.268770,
		-0.302018, 0.244262, 0.921478,
		0.952387, 0.119656, 0.280431,
		32.044956, 25.674046, 27.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371662, 26.227032, 27.839396>,  <31.378286, 25.590286, 27.483019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371662, 26.227032, 27.839396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752329, 26.181152, 27.725433>,  <31.980730, 26.153624, 27.657055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752329, 26.181152, 27.725433>,  <31.371662, 26.227032, 27.839396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752329, 26.181152, 27.725433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001346, 0.929195, -0.369586,
		0.307126, 0.351339, 0.884440,
		0.951668, -0.114700, -0.284907,
		32.037830, 26.146742, 27.639961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645844, 26.843245, 28.028421>,  <31.371662, 26.227032, 27.839396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645844, 26.843245, 28.028421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.872751, 26.685448, 27.739262>,  <32.008896, 26.590769, 27.565765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.872751, 26.685448, 27.739262>,  <31.645844, 26.843245, 28.028421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872751, 26.685448, 27.739262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181961, 0.916146, -0.357165,
		0.803180, 0.071069, 0.591482,
		0.567267, -0.394494, -0.722898,
		32.042931, 26.567099, 27.522392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206284, 27.256397, 27.943811>,  <31.645844, 26.843245, 28.028421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206284, 27.256397, 27.943811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.152706, 27.069820, 27.594070>,  <32.120560, 26.957874, 27.384226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.152706, 27.069820, 27.594070>,  <32.206284, 27.256397, 27.943811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152706, 27.069820, 27.594070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120971, 0.883401, -0.452736,
		0.983578, 0.045132, -0.174748,
		-0.133940, -0.466440, -0.874353,
		32.112522, 26.929888, 27.331764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730976, 27.495895, 27.678207>,  <32.206284, 27.256397, 27.943811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730976, 27.495895, 27.678207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451420, 27.370247, 27.421185>,  <32.283688, 27.294857, 27.266972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451420, 27.370247, 27.421185>,  <32.730976, 27.495895, 27.678207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451420, 27.370247, 27.421185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024774, 0.908487, -0.417179,
		0.714798, -0.275644, -0.642717,
		-0.698892, -0.314121, -0.642555,
		32.241753, 27.276011, 27.228418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881851, 27.947847, 27.147100>,  <32.730976, 27.495895, 27.678207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881851, 27.947847, 27.147100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.527054, 27.791191, 27.049240>,  <32.314175, 27.697197, 26.990524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.527054, 27.791191, 27.049240>,  <32.881851, 27.947847, 27.147100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527054, 27.791191, 27.049240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226637, 0.830822, -0.508301,
		0.402334, -0.395414, -0.825696,
		-0.886996, -0.391641, -0.244653,
		32.260956, 27.673698, 26.975843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923840, 27.979845, 26.360514>,  <32.881851, 27.947847, 27.147100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923840, 27.979845, 26.360514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544075, 27.969322, 26.485691>,  <32.316216, 27.963009, 26.560797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544075, 27.969322, 26.485691>,  <32.923840, 27.979845, 26.360514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544075, 27.969322, 26.485691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179331, 0.863452, -0.471477,
		-0.257809, -0.503744, -0.824486,
		-0.949407, -0.026305, 0.312943,
		32.259254, 27.961430, 26.579575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599411, 28.216822, 25.844982>,  <32.923840, 27.979845, 26.360514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599411, 28.216822, 25.844982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.314613, 28.267532, 26.121239>,  <32.143734, 28.297958, 26.286993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.314613, 28.267532, 26.121239>,  <32.599411, 28.216822, 25.844982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314613, 28.267532, 26.121239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323123, 0.814087, -0.482550,
		-0.623420, -0.566736, -0.538662,
		-0.711996, 0.126777, 0.690644,
		32.101013, 28.305565, 26.328432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008461, 28.358145, 25.508230>,  <32.599411, 28.216822, 25.844982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008461, 28.358145, 25.508230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.941435, 28.502522, 25.875195>,  <31.901218, 28.589148, 26.095373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.941435, 28.502522, 25.875195>,  <32.008461, 28.358145, 25.508230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941435, 28.502522, 25.875195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501228, 0.770131, -0.394549,
		-0.848936, -0.525945, 0.051867,
		-0.167567, 0.360944, 0.917410,
		31.891165, 28.610806, 26.150417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285881, 28.301802, 25.605444>,  <32.008461, 28.358145, 25.508230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285881, 28.301802, 25.605444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.368053, 28.583298, 25.877487>,  <31.417356, 28.752195, 26.040714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.368053, 28.583298, 25.877487>,  <31.285881, 28.301802, 25.605444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368053, 28.583298, 25.877487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793208, 0.526781, -0.305489,
		-0.573253, -0.476712, 0.666428,
		0.205431, 0.703739, 0.680110,
		31.429684, 28.794420, 26.081520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666559, 28.565706, 25.880739>,  <31.285881, 28.301802, 25.605444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666559, 28.565706, 25.880739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.904999, 28.865139, 25.996872>,  <31.048061, 29.044798, 26.066551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.904999, 28.865139, 25.996872>,  <30.666559, 28.565706, 25.880739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904999, 28.865139, 25.996872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718196, 0.658790, -0.224032,
		-0.358975, -0.074972, 0.930331,
		0.596097, 0.748582, 0.290333,
		31.083828, 29.089714, 26.083971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311720, 29.033083, 26.336309>,  <30.666559, 28.565706, 25.880739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311720, 29.033083, 26.336309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601461, 29.270298, 26.195671>,  <30.775307, 29.412626, 26.111288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601461, 29.270298, 26.195671>,  <30.311720, 29.033083, 26.336309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601461, 29.270298, 26.195671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689016, 0.640332, -0.339459,
		0.023826, 0.488142, 0.872439,
		0.724354, 0.593037, -0.351594,
		30.818768, 29.448210, 26.090193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053282, 29.705801, 26.474449>,  <30.311720, 29.033083, 26.336309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053282, 29.705801, 26.474449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.343132, 29.773796, 26.207310>,  <30.517042, 29.814594, 26.047026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.343132, 29.773796, 26.207310>,  <30.053282, 29.705801, 26.474449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343132, 29.773796, 26.207310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535127, 0.749429, -0.389866,
		0.434233, 0.639891, 0.634021,
		0.724625, 0.169989, -0.667849,
		30.560520, 29.824793, 26.006954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179569, 30.469402, 26.539721>,  <30.053282, 29.705801, 26.474449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179569, 30.469402, 26.539721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.284010, 30.316792, 26.185036>,  <30.346674, 30.225225, 25.972225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.284010, 30.316792, 26.185036>,  <30.179569, 30.469402, 26.539721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284010, 30.316792, 26.185036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685040, 0.573947, -0.448671,
		0.680107, 0.724584, -0.111501,
		0.261104, -0.381527, -0.886714,
		30.362341, 30.202333, 25.919022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235767, 31.063971, 26.012911>,  <30.179569, 30.469402, 26.539721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235767, 31.063971, 26.012911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.205790, 30.733646, 25.789333>,  <30.187803, 30.535452, 25.655188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.205790, 30.733646, 25.789333>,  <30.235767, 31.063971, 26.012911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205790, 30.733646, 25.789333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741098, 0.421161, -0.522873,
		0.667200, 0.375045, -0.643572,
		-0.074947, -0.825811, -0.558944,
		30.183306, 30.485903, 25.621651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439947, 31.295710, 25.345825>,  <30.235767, 31.063971, 26.012911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439947, 31.295710, 25.345825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.270206, 30.956978, 25.217571>,  <30.168362, 30.753738, 25.140619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.270206, 30.956978, 25.217571>,  <30.439947, 31.295710, 25.345825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270206, 30.956978, 25.217571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640422, 0.531011, -0.554876,
		0.640145, -0.030121, -0.767663,
		-0.424351, -0.846829, -0.320634,
		30.142900, 30.702929, 25.121382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321697, 31.333138, 24.656916>,  <30.439947, 31.295710, 25.345825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321697, 31.333138, 24.656916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037222, 31.076004, 24.770741>,  <29.866537, 30.921724, 24.839035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037222, 31.076004, 24.770741>,  <30.321697, 31.333138, 24.656916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037222, 31.076004, 24.770741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674932, 0.511124, -0.532183,
		0.196658, -0.570543, -0.797374,
		-0.711191, -0.642832, 0.284561,
		29.823864, 30.883154, 24.856110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933868, 31.299971, 24.058916>,  <30.321697, 31.333138, 24.656916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933868, 31.299971, 24.058916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.706968, 31.151241, 24.352848>,  <29.570827, 31.062004, 24.529207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.706968, 31.151241, 24.352848>,  <29.933868, 31.299971, 24.058916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706968, 31.151241, 24.352848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803756, 0.444381, -0.395603,
		-0.179449, -0.815029, -0.550931,
		-0.567251, -0.371824, 0.734828,
		29.536793, 31.039694, 24.573296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350386, 31.200874, 23.687506>,  <29.933868, 31.299971, 24.058916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350386, 31.200874, 23.687506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.250238, 31.160927, 24.072701>,  <29.190149, 31.136959, 24.303818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.250238, 31.160927, 24.072701>,  <29.350386, 31.200874, 23.687506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250238, 31.160927, 24.072701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934636, 0.284377, -0.213505,
		-0.252529, -0.953497, -0.164539,
		-0.250368, -0.099868, 0.962986,
		29.175129, 31.130966, 24.361597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657982, 30.701147, 23.827761>,  <29.350386, 31.200874, 23.687506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657982, 30.701147, 23.827761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.705093, 30.963753, 24.125786>,  <28.733360, 31.121317, 24.304600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.705093, 30.963753, 24.125786>,  <28.657982, 30.701147, 23.827761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705093, 30.963753, 24.125786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947049, 0.299944, -0.114591,
		-0.298707, -0.692113, 0.657079,
		0.117777, 0.656516, 0.745061,
		28.740427, 31.160707, 24.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065660, 30.675966, 24.123325>,  <28.657982, 30.701147, 23.827761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065660, 30.675966, 24.123325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.220695, 30.979057, 24.333324>,  <28.313717, 31.160912, 24.459324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.220695, 30.979057, 24.333324>,  <28.065660, 30.675966, 24.123325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220695, 30.979057, 24.333324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902581, 0.427720, 0.049021,
		-0.187408, -0.492854, 0.849690,
		0.387589, 0.757727, 0.524999,
		28.336973, 31.206375, 24.490824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529888, 30.803728, 24.495937>,  <28.065660, 30.675966, 24.123325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529888, 30.803728, 24.495937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.750799, 31.136414, 24.473167>,  <27.883345, 31.336025, 24.459505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.750799, 31.136414, 24.473167>,  <27.529888, 30.803728, 24.495937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750799, 31.136414, 24.473167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833306, 0.552745, -0.008569,
		0.024337, 0.052168, 0.998342,
		0.552276, 0.831716, -0.056924,
		27.916481, 31.385929, 24.456091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968811, 30.953941, 24.127064>,  <27.529888, 30.803728, 24.495937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968811, 30.953941, 24.127064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.883944, 30.728062, 23.808041>,  <26.833023, 30.592535, 23.616627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.883944, 30.728062, 23.808041>,  <26.968811, 30.953941, 24.127064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883944, 30.728062, 23.808041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025334, -0.812688, 0.582148,
		-0.976905, 0.143719, 0.158121,
		-0.212169, -0.564697, -0.797559,
		26.820293, 30.558653, 23.568773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319317, 30.527847, 24.220329>,  <26.968811, 30.953941, 24.127064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319317, 30.527847, 24.220329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.527452, 30.318127, 23.950706>,  <26.652334, 30.192295, 23.788933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.527452, 30.318127, 23.950706>,  <26.319317, 30.527847, 24.220329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527452, 30.318127, 23.950706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169315, -0.837005, 0.520341,
		-0.837005, -0.156626, -0.524300,
		-0.520341, 0.524300, 0.674059,
		26.683556, 30.160837, 23.748489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170540, 29.747578, 24.369852>,  <26.319317, 30.527847, 24.220329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170540, 29.747578, 24.369852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.424007, 29.697601, 24.064472>,  <26.576088, 29.667616, 23.881245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.424007, 29.697601, 24.064472>,  <26.170540, 29.747578, 24.369852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424007, 29.697601, 24.064472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111980, -0.961665, 0.250321,
		-0.765458, -0.244111, -0.595385,
		0.633667, -0.124939, -0.763450,
		26.614107, 29.660120, 23.835438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932987, 29.071236, 24.002813>,  <26.170540, 29.747578, 24.369852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932987, 29.071236, 24.002813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.311245, 29.173344, 23.922222>,  <26.538200, 29.234608, 23.873867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.311245, 29.173344, 23.922222>,  <25.932987, 29.071236, 24.002813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311245, 29.173344, 23.922222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301939, -0.919302, 0.252420,
		-0.120785, -0.299534, -0.946409,
		0.945645, 0.255269, -0.201479,
		26.594938, 29.249924, 23.861778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211376, 28.591702, 23.433865>,  <25.932987, 29.071236, 24.002813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211376, 28.591702, 23.433865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.498425, 28.754536, 23.659893>,  <26.670652, 28.852236, 23.795509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.498425, 28.754536, 23.659893>,  <26.211376, 28.591702, 23.433865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498425, 28.754536, 23.659893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343935, -0.912683, 0.220723,
		0.605584, 0.035953, -0.794969,
		0.717619, 0.407084, 0.565072,
		26.713711, 28.876661, 23.829414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892826, 28.424431, 23.144218>,  <26.211376, 28.591702, 23.433865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892826, 28.424431, 23.144218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.965118, 28.493374, 23.531544>,  <27.008493, 28.534739, 23.763939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.965118, 28.493374, 23.531544>,  <26.892826, 28.424431, 23.144218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965118, 28.493374, 23.531544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480013, -0.874767, 0.066113,
		0.858443, 0.452854, -0.240831,
		0.180732, 0.172356, 0.968313,
		27.019339, 28.545080, 23.822037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583632, 28.336599, 23.244877>,  <26.892826, 28.424431, 23.144218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583632, 28.336599, 23.244877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.446899, 28.292667, 23.618206>,  <27.364861, 28.266308, 23.842203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.446899, 28.292667, 23.618206>,  <27.583632, 28.336599, 23.244877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446899, 28.292667, 23.618206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648408, -0.746442, 0.149640,
		0.680235, 0.656325, 0.326372,
		-0.341830, -0.109831, 0.933322,
		27.344351, 28.259718, 23.898203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163996, 28.210884, 23.621950>,  <27.583632, 28.336599, 23.244877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163996, 28.210884, 23.621950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.853519, 28.090084, 23.843338>,  <27.667234, 28.017605, 23.976170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.853519, 28.090084, 23.843338>,  <28.163996, 28.210884, 23.621950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853519, 28.090084, 23.843338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598399, -0.629381, 0.495780,
		0.198617, 0.716014, 0.669235,
		-0.776189, -0.301999, 0.553468,
		27.620663, 27.999485, 24.009378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485550, 28.175621, 24.343647>,  <28.163996, 28.210884, 23.621950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485550, 28.175621, 24.343647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.153362, 27.953888, 24.365704>,  <27.954050, 27.820848, 24.378937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.153362, 27.953888, 24.365704>,  <28.485550, 28.175621, 24.343647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153362, 27.953888, 24.365704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510510, -0.717708, 0.473577,
		-0.222943, 0.421441, 0.879025,
		-0.830468, -0.554331, 0.055142,
		27.904222, 27.787588, 24.382246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392420, 28.031750, 25.074522>,  <28.485550, 28.175621, 24.343647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392420, 28.031750, 25.074522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.201239, 27.757122, 24.855366>,  <28.086531, 27.592346, 24.723871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.201239, 27.757122, 24.855366>,  <28.392420, 28.031750, 25.074522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201239, 27.757122, 24.855366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527563, -0.723089, 0.445891,
		-0.702308, -0.075933, 0.707811,
		-0.477953, -0.686568, -0.547891,
		28.057852, 27.551151, 24.690998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296011, 27.415834, 25.628632>,  <28.392420, 28.031750, 25.074522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296011, 27.415834, 25.628632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.250834, 27.271740, 25.258232>,  <28.223728, 27.185284, 25.035992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.250834, 27.271740, 25.258232>,  <28.296011, 27.415834, 25.628632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250834, 27.271740, 25.258232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409355, -0.866063, 0.286989,
		-0.905358, -0.346649, 0.245279,
		-0.112943, -0.360234, -0.926000,
		28.216951, 27.163670, 24.980433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898325, 26.871460, 25.682058>,  <28.296011, 27.415834, 25.628632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898325, 26.871460, 25.682058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.127403, 26.827789, 25.357071>,  <28.264851, 26.801588, 25.162079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.127403, 26.827789, 25.357071>,  <27.898325, 26.871460, 25.682058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127403, 26.827789, 25.357071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304193, -0.892031, 0.334287,
		-0.761242, -0.438591, -0.477651,
		0.572694, -0.109175, -0.812467,
		28.299212, 26.795036, 25.113331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690359, 26.318737, 25.519577>,  <27.898325, 26.871460, 25.682058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690359, 26.318737, 25.519577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.038105, 26.350670, 25.324505>,  <28.246752, 26.369829, 25.207462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.038105, 26.350670, 25.324505>,  <27.690359, 26.318737, 25.519577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038105, 26.350670, 25.324505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157886, -0.980012, 0.121029,
		-0.468269, -0.182216, -0.864593,
		0.869365, 0.079833, -0.487679,
		28.298914, 26.374620, 25.178202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737112, 25.697006, 25.316380>,  <27.690359, 26.318737, 25.519577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737112, 25.697006, 25.316380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.111616, 25.791233, 25.212128>,  <28.336319, 25.847769, 25.149576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.111616, 25.791233, 25.212128>,  <27.737112, 25.697006, 25.316380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111616, 25.791233, 25.212128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294605, -0.930611, 0.217189,
		-0.191380, -0.280128, -0.940692,
		0.936259, 0.235567, -0.260628,
		28.392494, 25.861902, 25.133940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939648, 25.209034, 24.842842>,  <27.737112, 25.697006, 25.316380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939648, 25.209034, 24.842842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270649, 25.371918, 24.997459>,  <28.469250, 25.469648, 25.090231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270649, 25.371918, 24.997459>,  <27.939648, 25.209034, 24.842842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270649, 25.371918, 24.997459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365633, -0.913307, 0.179396,
		0.426086, -0.007118, -0.904655,
		0.827504, 0.407210, 0.386545,
		28.518900, 25.494081, 25.113422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505304, 24.754311, 24.679775>,  <27.939648, 25.209034, 24.842842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505304, 24.754311, 24.679775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.651039, 24.974186, 24.980469>,  <28.738480, 25.106112, 25.160885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.651039, 24.974186, 24.980469>,  <28.505304, 24.754311, 24.679775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651039, 24.974186, 24.980469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598010, -0.756892, 0.263624,
		0.713891, 0.353496, -0.604483,
		0.364339, 0.549686, 0.751733,
		28.760342, 25.139091, 25.205988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211403, 24.490339, 24.770115>,  <28.505304, 24.754311, 24.679775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211403, 24.490339, 24.770115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.096176, 24.677319, 25.104424>,  <29.027040, 24.789505, 25.305008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.096176, 24.677319, 25.104424>,  <29.211403, 24.490339, 24.770115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096176, 24.677319, 25.104424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361711, -0.754997, 0.546942,
		0.886670, 0.459862, 0.048407,
		-0.288065, 0.467447, 0.835770,
		29.009756, 24.817553, 25.355154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.238895, 24.967354, 25.404583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.900002, 24.935833, 25.614719>,  <29.696665, 24.916922, 25.740801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.900002, 24.935833, 25.614719>,  <30.238895, 24.967354, 25.404583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900002, 24.935833, 25.614719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492767, -0.485975, 0.721810,
		0.198423, 0.870413, 0.450566,
		-0.847236, -0.078801, 0.525339,
		29.645830, 24.912193, 25.772322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372282, 25.168795, 26.226645>,  <30.238895, 24.967354, 25.404583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372282, 25.168795, 26.226645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061041, 24.920216, 26.190071>,  <29.874296, 24.771069, 26.168127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061041, 24.920216, 26.190071>,  <30.372282, 25.168795, 26.226645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061041, 24.920216, 26.190071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391616, -0.593756, 0.702915,
		-0.491112, 0.511135, 0.705372,
		-0.778104, -0.621446, -0.091432,
		29.827610, 24.733782, 26.162642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270979, 24.871559, 26.865189>,  <30.372282, 25.168795, 26.226645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270979, 24.871559, 26.865189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.060896, 24.614349, 26.642235>,  <29.934847, 24.460024, 26.508463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.060896, 24.614349, 26.642235>,  <30.270979, 24.871559, 26.865189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060896, 24.614349, 26.642235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331216, -0.757814, 0.562152,
		-0.783871, 0.110631, 0.610988,
		-0.525206, -0.643024, -0.557386,
		29.903334, 24.421442, 26.475019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747618, 24.555746, 27.257862>,  <30.270979, 24.871559, 26.865189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747618, 24.555746, 27.257862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821711, 24.312950, 26.948734>,  <29.866167, 24.167273, 26.763258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821711, 24.312950, 26.948734>,  <29.747618, 24.555746, 27.257862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821711, 24.312950, 26.948734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175245, -0.753421, 0.633756,
		-0.966943, -0.252825, -0.033186,
		0.185233, -0.606990, -0.772821,
		29.877281, 24.130854, 26.716888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336842, 23.955263, 27.344927>,  <29.747618, 24.555746, 27.257862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336842, 23.955263, 27.344927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637306, 23.838562, 27.108067>,  <29.817585, 23.768541, 26.965950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637306, 23.838562, 27.108067>,  <29.336842, 23.955263, 27.344927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637306, 23.838562, 27.108067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132763, -0.811934, 0.568452,
		-0.646633, -0.505614, -0.571158,
		0.751159, -0.291751, -0.592150,
		29.862654, 23.751038, 26.930422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415983, 23.153381, 27.456659>,  <29.336842, 23.955263, 27.344927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415983, 23.153381, 27.456659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.752798, 23.254433, 27.266018>,  <29.954887, 23.315063, 27.151632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.752798, 23.254433, 27.266018>,  <29.415983, 23.153381, 27.456659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752798, 23.254433, 27.266018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432963, -0.843526, 0.317817,
		-0.321738, -0.473966, -0.819659,
		0.842038, 0.252628, -0.476604,
		30.005409, 23.330221, 27.123037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671215, 22.609982, 27.033234>,  <29.415983, 23.153381, 27.456659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671215, 22.609982, 27.033234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000925, 22.825581, 27.102573>,  <30.198751, 22.954941, 27.144178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000925, 22.825581, 27.102573>,  <29.671215, 22.609982, 27.033234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000925, 22.825581, 27.102573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508917, -0.839499, 0.190377,
		0.248141, -0.068702, -0.966285,
		0.824275, 0.539000, 0.173351,
		30.248207, 22.987280, 27.154579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144161, 22.272636, 26.680294>,  <29.671215, 22.609982, 27.033234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144161, 22.272636, 26.680294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.359282, 22.484325, 26.942802>,  <30.488354, 22.611340, 27.100307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.359282, 22.484325, 26.942802>,  <30.144161, 22.272636, 26.680294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359282, 22.484325, 26.942802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564624, -0.804166, 0.185788,
		0.626075, 0.270631, -0.731292,
		0.537800, 0.529223, 0.656273,
		30.520622, 22.643093, 27.139685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829208, 22.051796, 26.566425>,  <30.144161, 22.272636, 26.680294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829208, 22.051796, 26.566425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884369, 22.256577, 26.905575>,  <30.917465, 22.379444, 27.109064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884369, 22.256577, 26.905575>,  <30.829208, 22.051796, 26.566425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884369, 22.256577, 26.905575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612996, -0.716513, 0.332934,
		0.777959, 0.473831, -0.412632,
		0.137902, 0.511950, 0.847874,
		30.925739, 22.410162, 27.159937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567282, 22.070236, 26.634277>,  <30.829208, 22.051796, 26.566425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567282, 22.070236, 26.634277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412642, 22.141232, 26.996281>,  <31.319857, 22.183828, 27.213482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412642, 22.141232, 26.996281>,  <31.567282, 22.070236, 26.634277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412642, 22.141232, 26.996281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486748, -0.794231, 0.363694,
		0.783337, 0.581115, 0.220657,
		-0.386601, 0.177490, 0.905007,
		31.296661, 22.194479, 27.267782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175564, 21.991829, 27.103062>,  <31.567282, 22.070236, 26.634277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175564, 21.991829, 27.103062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832575, 21.933483, 27.300430>,  <31.626781, 21.898476, 27.418852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832575, 21.933483, 27.300430>,  <32.175564, 21.991829, 27.103062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832575, 21.933483, 27.300430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378891, -0.827813, 0.413723,
		0.348115, 0.541710, 0.765092,
		-0.857471, -0.145863, 0.493424,
		31.575333, 21.889725, 27.448458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385941, 21.746183, 27.686634>,  <32.175564, 21.991829, 27.103062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385941, 21.746183, 27.686634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996241, 21.658730, 27.708656>,  <31.762421, 21.606256, 27.721869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996241, 21.658730, 27.708656>,  <32.385941, 21.746183, 27.686634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996241, 21.658730, 27.708656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212000, -0.805246, 0.553747,
		-0.076736, 0.551160, 0.830863,
		-0.974252, -0.218635, 0.055054,
		31.703964, 21.593140, 27.725172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334187, 21.566090, 28.340149>,  <32.385941, 21.746183, 27.686634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334187, 21.566090, 28.340149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984850, 21.428570, 28.202114>,  <31.775249, 21.346058, 28.119293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984850, 21.428570, 28.202114>,  <32.334187, 21.566090, 28.340149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984850, 21.428570, 28.202114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010798, -0.694590, 0.719325,
		-0.486996, 0.631940, 0.602899,
		-0.873337, -0.343798, -0.345086,
		31.722849, 21.325430, 28.098589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738966, 21.448195, 28.928295>,  <32.334187, 21.566090, 28.340149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738966, 21.448195, 28.928295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647619, 21.202660, 28.626022>,  <31.592812, 21.055338, 28.444658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647619, 21.202660, 28.626022>,  <31.738966, 21.448195, 28.928295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647619, 21.202660, 28.626022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119256, -0.752708, 0.647463,
		-0.966244, 0.237977, 0.098689,
		-0.228365, -0.613838, -0.755680,
		31.579109, 21.018509, 28.399319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096897, 21.069761, 29.079840>,  <31.738966, 21.448195, 28.928295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096897, 21.069761, 29.079840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269665, 20.858292, 28.787552>,  <31.373325, 20.731409, 28.612179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269665, 20.858292, 28.787552>,  <31.096897, 21.069761, 29.079840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269665, 20.858292, 28.787552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086496, -0.830733, 0.549911,
		-0.897758, -0.174310, -0.404534,
		0.431915, -0.528677, -0.730720,
		31.399240, 20.699688, 28.568336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753233, 20.530865, 28.916954>,  <31.096897, 21.069761, 29.079840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753233, 20.530865, 28.916954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110277, 20.412804, 28.780643>,  <31.324503, 20.341967, 28.698856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.110277, 20.412804, 28.780643>,  <30.753233, 20.530865, 28.916954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110277, 20.412804, 28.780643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088599, -0.856002, 0.509324,
		-0.442035, -0.424435, -0.790228,
		0.892612, -0.295153, -0.340778,
		31.378061, 20.324257, 28.678410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611685, 19.800062, 28.823269>,  <30.753233, 20.530865, 28.916954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611685, 19.800062, 28.823269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004505, 19.872166, 28.845470>,  <31.240198, 19.915428, 28.858791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004505, 19.872166, 28.845470>,  <30.611685, 19.800062, 28.823269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004505, 19.872166, 28.845470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089614, -0.704881, 0.703642,
		0.165962, -0.686038, -0.708384,
		0.982052, 0.180259, 0.055505,
		31.299120, 19.926243, 28.862122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823400, 19.192135, 28.921000>,  <30.611685, 19.800062, 28.823269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823400, 19.192135, 28.921000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140661, 19.408539, 29.032871>,  <31.331017, 19.538382, 29.099995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140661, 19.408539, 29.032871>,  <30.823400, 19.192135, 28.921000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140661, 19.408539, 29.032871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112110, -0.581071, 0.806094,
		0.598619, -0.607999, -0.521529,
		0.793150, 0.541012, 0.279677,
		31.378607, 19.570843, 29.116774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295822, 18.673641, 29.281397>,  <30.823400, 19.192135, 28.921000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295822, 18.673641, 29.281397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.427753, 19.036610, 29.385551>,  <31.506912, 19.254391, 29.448044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.427753, 19.036610, 29.385551>,  <31.295822, 18.673641, 29.281397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427753, 19.036610, 29.385551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321121, -0.367217, 0.872945,
		0.887746, -0.204307, -0.412511,
		0.329830, 0.907420, 0.260388,
		31.526703, 19.308836, 29.463667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050350, 18.612099, 29.406811>,  <31.295822, 18.673641, 29.281397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050350, 18.612099, 29.406811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911348, 18.913929, 29.629471>,  <31.827948, 19.095026, 29.763067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911348, 18.913929, 29.629471>,  <32.050350, 18.612099, 29.406811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911348, 18.913929, 29.629471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414629, -0.408801, 0.812997,
		0.841025, 0.513323, -0.170808,
		-0.347504, 0.754573, 0.556650,
		31.807096, 19.140301, 29.796467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614338, 18.741858, 29.820494>,  <32.050350, 18.612099, 29.406811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614338, 18.741858, 29.820494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290443, 18.916210, 29.977638>,  <32.096107, 19.020823, 30.071924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290443, 18.916210, 29.977638>,  <32.614338, 18.741858, 29.820494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290443, 18.916210, 29.977638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257563, -0.337554, 0.905383,
		0.527252, 0.834305, 0.161061,
		-0.809733, 0.435882, 0.392862,
		32.047523, 19.046974, 30.095497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732937, 18.769106, 30.415878>,  <32.614338, 18.741858, 29.820494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732937, 18.769106, 30.415878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336273, 18.788895, 30.368271>,  <32.098274, 18.800768, 30.339706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336273, 18.788895, 30.368271>,  <32.732937, 18.769106, 30.415878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336273, 18.788895, 30.368271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126766, -0.541220, 0.831271,
		-0.023291, 0.839424, 0.542977,
		-0.991659, 0.049470, -0.119016,
		32.038776, 18.803736, 30.332565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328438, 19.107243, 31.011497>,  <32.732937, 18.769106, 30.415878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328438, 19.107243, 31.011497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171040, 18.795208, 30.816921>,  <32.076599, 18.607986, 30.700176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171040, 18.795208, 30.816921>,  <32.328438, 19.107243, 31.011497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171040, 18.795208, 30.816921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062165, -0.505337, 0.860680,
		-0.917221, 0.368915, 0.150355,
		-0.393498, -0.780087, -0.486440,
		32.052990, 18.561182, 30.670990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592392, 18.644081, 31.570208>,  <32.328438, 19.107243, 31.011497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592392, 18.644081, 31.570208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.266216, 18.468319, 31.419487>,  <32.070511, 18.362862, 31.329054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.266216, 18.468319, 31.419487>,  <32.592392, 18.644081, 31.570208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266216, 18.468319, 31.419487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521034, -0.840760, -0.147129,
		-0.252150, -0.316301, 0.914535,
		-0.815441, -0.439405, -0.376801,
		32.021584, 18.336498, 31.306446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949284, 18.123869, 31.934126>,  <32.592392, 18.644081, 31.570208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949284, 18.123869, 31.934126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267582, 18.321030, 32.074886>,  <33.458561, 18.439327, 32.159344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267582, 18.321030, 32.074886>,  <32.949284, 18.123869, 31.934126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267582, 18.321030, 32.074886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452423, 0.870077, -0.195652,
		-0.402620, -0.003520, 0.915361,
		0.795745, 0.492903, 0.351902,
		33.506306, 18.468901, 32.180458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736179, 18.697601, 32.359131>,  <32.949284, 18.123869, 31.934126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736179, 18.697601, 32.359131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.111050, 18.792122, 32.256481>,  <33.335972, 18.848835, 32.194893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.111050, 18.792122, 32.256481>,  <32.736179, 18.697601, 32.359131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111050, 18.792122, 32.256481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320008, 0.875221, -0.362743,
		0.138884, 0.422077, 0.895858,
		0.937180, 0.236303, -0.256622,
		33.392204, 18.863012, 32.179493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804939, 19.432045, 32.451408>,  <32.736179, 18.697601, 32.359131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804939, 19.432045, 32.451408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097713, 19.357647, 32.189209>,  <33.273376, 19.313009, 32.031891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097713, 19.357647, 32.189209>,  <32.804939, 19.432045, 32.451408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097713, 19.357647, 32.189209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045973, 0.946350, -0.319855,
		0.679822, 0.264248, 0.684116,
		0.731934, -0.185994, -0.655498,
		33.317295, 19.301849, 31.992559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218563, 20.039183, 32.515678>,  <32.804939, 19.432045, 32.451408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218563, 20.039183, 32.515678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298264, 19.884277, 32.155605>,  <33.346085, 19.791334, 31.939562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298264, 19.884277, 32.155605>,  <33.218563, 20.039183, 32.515678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298264, 19.884277, 32.155605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056334, 0.912555, -0.405055,
		0.978329, 0.131417, 0.160008,
		0.199247, -0.387263, -0.900182,
		33.358036, 19.768099, 31.885551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609169, 20.458570, 32.196583>,  <33.218563, 20.039183, 32.515678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609169, 20.458570, 32.196583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473671, 20.253532, 31.880989>,  <33.392372, 20.130508, 31.691633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473671, 20.253532, 31.880989>,  <33.609169, 20.458570, 32.196583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473671, 20.253532, 31.880989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136401, 0.856457, -0.497871,
		0.930937, -0.061035, -0.360042,
		-0.338748, -0.512597, -0.788983,
		33.372047, 20.099752, 31.644295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918282, 20.816851, 31.619324>,  <33.609169, 20.458570, 32.196583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918282, 20.816851, 31.619324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570648, 20.658756, 31.500336>,  <33.362068, 20.563900, 31.428944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570648, 20.658756, 31.500336>,  <33.918282, 20.816851, 31.619324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570648, 20.658756, 31.500336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262033, 0.877871, -0.400851,
		0.419571, -0.270424, -0.866505,
		-0.869079, -0.395238, -0.297469,
		33.309925, 20.540184, 31.411095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901821, 21.174288, 31.041046>,  <33.918282, 20.816851, 31.619324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901821, 21.174288, 31.041046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549828, 20.986771, 31.071667>,  <33.338631, 20.874260, 31.090040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549828, 20.986771, 31.071667>,  <33.901821, 21.174288, 31.041046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549828, 20.986771, 31.071667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432810, 0.724936, -0.535858,
		0.195710, -0.504679, -0.840831,
		-0.879984, -0.468793, 0.076553,
		33.285831, 20.846132, 31.094633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642864, 21.132090, 30.358126>,  <33.901821, 21.174288, 31.041046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642864, 21.132090, 30.358126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314781, 21.093689, 30.583706>,  <33.117931, 21.070648, 30.719053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314781, 21.093689, 30.583706>,  <33.642864, 21.132090, 30.358126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314781, 21.093689, 30.583706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470388, 0.674212, -0.569362,
		-0.325563, -0.732272, -0.598153,
		-0.820210, -0.096001, 0.563950,
		33.068718, 21.064888, 30.752892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125084, 20.847422, 29.960657>,  <33.642864, 21.132090, 30.358126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125084, 20.847422, 29.960657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964691, 21.057137, 30.261147>,  <32.868454, 21.182966, 30.441441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964691, 21.057137, 30.261147>,  <33.125084, 20.847422, 29.960657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964691, 21.057137, 30.261147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359145, 0.664420, -0.655409,
		-0.842751, -0.532605, -0.078124,
		-0.400981, 0.524289, 0.751223,
		32.844398, 21.214422, 30.486513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501385, 21.063509, 29.718222>,  <33.125084, 20.847422, 29.960657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501385, 21.063509, 29.718222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563000, 21.334469, 30.005943>,  <32.599968, 21.497046, 30.178577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563000, 21.334469, 30.005943>,  <32.501385, 21.063509, 29.718222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563000, 21.334469, 30.005943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414999, 0.705024, -0.575080,
		-0.896688, -0.209928, 0.389720,
		0.154037, 0.677400, 0.719306,
		32.609211, 21.537689, 30.221735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902081, 21.398720, 29.736406>,  <32.501385, 21.063509, 29.718222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902081, 21.398720, 29.736406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170948, 21.649097, 29.894588>,  <32.332268, 21.799324, 29.989498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170948, 21.649097, 29.894588>,  <31.902081, 21.398720, 29.736406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170948, 21.649097, 29.894588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336332, 0.733959, -0.590072,
		-0.659599, 0.263623, 0.703869,
		0.672168, 0.625945, 0.395454,
		32.372597, 21.836882, 30.013224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618969, 22.049295, 29.806238>,  <31.902081, 21.398720, 29.736406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618969, 22.049295, 29.806238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001884, 22.160809, 29.836899>,  <32.231632, 22.227716, 29.855295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001884, 22.160809, 29.836899>,  <31.618969, 22.049295, 29.806238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001884, 22.160809, 29.836899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177577, 0.776127, -0.605057,
		-0.228173, 0.565603, 0.792484,
		0.957290, 0.278784, 0.076653,
		32.289070, 22.244444, 29.859894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591322, 22.790712, 29.988007>,  <31.618969, 22.049295, 29.806238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591322, 22.790712, 29.988007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963865, 22.711571, 29.865742>,  <32.187389, 22.664085, 29.792383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963865, 22.711571, 29.865742>,  <31.591322, 22.790712, 29.988007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963865, 22.711571, 29.865742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049629, 0.900627, -0.431751,
		0.360709, 0.386944, 0.848624,
		0.931357, -0.197852, -0.305660,
		32.243271, 22.652216, 29.774044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047806, 23.414118, 30.126986>,  <31.591322, 22.790712, 29.988007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047806, 23.414118, 30.126986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.231686, 23.197666, 29.845318>,  <32.342014, 23.067795, 29.676317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.231686, 23.197666, 29.845318>,  <32.047806, 23.414118, 30.126986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231686, 23.197666, 29.845318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078795, 0.814644, -0.574584,
		0.884571, 0.208652, 0.417131,
		0.459701, -0.541128, -0.704170,
		32.369595, 23.035328, 29.634068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531944, 23.868423, 29.918043>,  <32.047806, 23.414118, 30.126986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531944, 23.868423, 29.918043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570068, 23.603466, 29.620815>,  <32.592941, 23.444490, 29.442478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570068, 23.603466, 29.620815>,  <32.531944, 23.868423, 29.918043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570068, 23.603466, 29.620815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032784, 0.748149, -0.662719,
		0.994908, 0.038803, 0.093022,
		0.095310, -0.662395, -0.743068,
		32.598660, 23.404747, 29.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155468, 23.994282, 29.541525>,  <32.531944, 23.868423, 29.918043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155468, 23.994282, 29.541525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912819, 23.814480, 29.279243>,  <32.767227, 23.706598, 29.121874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912819, 23.814480, 29.279243>,  <33.155468, 23.994282, 29.541525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912819, 23.814480, 29.279243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103411, 0.773175, -0.625705,
		0.788237, -0.447373, -0.422540,
		-0.606621, -0.449508, -0.655708,
		32.730831, 23.679628, 29.082531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487503, 24.059587, 28.837105>,  <33.155468, 23.994282, 29.541525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487503, 24.059587, 28.837105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092754, 23.999340, 28.813820>,  <32.855904, 23.963192, 28.799849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092754, 23.999340, 28.813820>,  <33.487503, 24.059587, 28.837105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092754, 23.999340, 28.813820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078327, 0.761753, -0.643115,
		0.141208, -0.630115, -0.763554,
		-0.986876, -0.150620, -0.058211,
		32.796692, 23.954153, 28.796356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341984, 24.213236, 28.151711>,  <33.487503, 24.059587, 28.837105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341984, 24.213236, 28.151711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978756, 24.234001, 28.317944>,  <32.760818, 24.246460, 28.417685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978756, 24.234001, 28.317944>,  <33.341984, 24.213236, 28.151711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978756, 24.234001, 28.317944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260214, 0.707585, -0.656971,
		-0.328169, -0.704718, -0.629029,
		-0.908071, 0.051915, 0.415585,
		32.706333, 24.249577, 28.442619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868179, 24.144251, 27.614195>,  <33.341984, 24.213236, 28.151711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868179, 24.144251, 27.614195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670345, 24.319984, 27.914162>,  <32.551643, 24.425425, 28.094141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670345, 24.319984, 27.914162>,  <32.868179, 24.144251, 27.614195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670345, 24.319984, 27.914162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176579, 0.794047, -0.581644,
		-0.851003, -0.420091, -0.315146,
		-0.494584, 0.439333, 0.749916,
		32.521969, 24.451784, 28.139137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302784, 24.544191, 27.284386>,  <32.868179, 24.144251, 27.614195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302784, 24.544191, 27.284386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307636, 24.707893, 27.649323>,  <32.310547, 24.806114, 27.868284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307636, 24.707893, 27.649323>,  <32.302784, 24.544191, 27.284386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307636, 24.707893, 27.649323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195260, 0.895812, -0.399243,
		-0.980676, -0.173302, 0.090774,
		0.012127, 0.409253, 0.912340,
		32.311275, 24.830669, 27.923025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.281572, 38.036385, 15.886062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560087, 37.772461, 15.773038>,  <23.727196, 37.614109, 15.705223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560087, 37.772461, 15.773038>,  <23.281572, 38.036385, 15.886062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.560087, 37.772461, 15.773038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046685, -0.351202, 0.935135,
		-0.716245, -0.664312, -0.213734,
		0.696286, -0.659808, -0.282560,
		23.768972, 37.574520, 15.688270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.019815, 37.336102, 16.128077>,  <23.281572, 38.036385, 15.886062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.019815, 37.336102, 16.128077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415377, 37.324860, 16.069721>,  <23.652714, 37.318115, 16.034708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415377, 37.324860, 16.069721>,  <23.019815, 37.336102, 16.128077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.415377, 37.324860, 16.069721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111542, -0.508209, 0.853980,
		-0.098142, -0.860775, -0.499435,
		0.988902, -0.028103, -0.145889,
		23.712048, 37.316429, 16.025955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.275246, 36.625572, 16.265329>,  <23.019815, 37.336102, 16.128077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.275246, 36.625572, 16.265329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618687, 36.827381, 16.301682>,  <23.824751, 36.948467, 16.323494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618687, 36.827381, 16.301682>,  <23.275246, 36.625572, 16.265329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.618687, 36.827381, 16.301682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274881, -0.602737, 0.749099,
		0.432713, -0.618197, -0.656195,
		0.858604, 0.504520, 0.090882,
		23.876268, 36.978737, 16.328945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.848017, 36.151955, 16.380640>,  <23.275246, 36.625572, 16.265329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.848017, 36.151955, 16.380640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.966114, 36.506969, 16.522121>,  <24.036972, 36.719978, 16.607010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.966114, 36.506969, 16.522121>,  <23.848017, 36.151955, 16.380640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.966114, 36.506969, 16.522121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238462, -0.426942, 0.872271,
		0.925185, -0.173187, -0.337696,
		0.295242, 0.887540, 0.353702,
		24.054688, 36.773232, 16.628233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417349, 36.011631, 16.795321>,  <23.848017, 36.151955, 16.380640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417349, 36.011631, 16.795321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.312988, 36.380028, 16.911049>,  <24.250372, 36.601067, 16.980486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.312988, 36.380028, 16.911049>,  <24.417349, 36.011631, 16.795321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312988, 36.380028, 16.911049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304125, -0.206026, 0.930087,
		0.916209, 0.330651, -0.226344,
		-0.260901, 0.920990, 0.289322,
		24.234718, 36.656326, 16.997845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964970, 36.146877, 17.350195>,  <24.417349, 36.011631, 16.795321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964970, 36.146877, 17.350195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.675970, 36.419601, 17.396019>,  <24.502569, 36.583237, 17.423513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.675970, 36.419601, 17.396019>,  <24.964970, 36.146877, 17.350195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675970, 36.419601, 17.396019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122561, -0.036767, 0.991780,
		0.680421, 0.730602, -0.057000,
		-0.722500, 0.681813, 0.114560,
		24.459221, 36.624146, 17.430387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182032, 36.558491, 17.899853>,  <24.964970, 36.146877, 17.350195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182032, 36.558491, 17.899853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.785387, 36.603603, 17.874580>,  <24.547401, 36.630669, 17.859417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.785387, 36.603603, 17.874580>,  <25.182032, 36.558491, 17.899853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785387, 36.603603, 17.874580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085719, -0.207816, 0.974405,
		0.096763, 0.971645, 0.215739,
		-0.991609, 0.112779, -0.063180,
		24.487904, 36.637436, 17.855627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958094, 36.954952, 18.512884>,  <25.182032, 36.558491, 17.899853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958094, 36.954952, 18.512884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.631762, 36.763485, 18.383083>,  <24.435963, 36.648605, 18.305202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.631762, 36.763485, 18.383083>,  <24.958094, 36.954952, 18.512884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631762, 36.763485, 18.383083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280146, -0.163770, 0.945884,
		-0.505905, 0.862589, -0.000488,
		-0.815830, -0.478665, -0.324503,
		24.387012, 36.619884, 18.285732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384947, 37.261658, 18.823284>,  <24.958094, 36.954952, 18.512884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384947, 37.261658, 18.823284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.246836, 36.904087, 18.708961>,  <24.163969, 36.689545, 18.640368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.246836, 36.904087, 18.708961>,  <24.384947, 37.261658, 18.823284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246836, 36.904087, 18.708961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320851, -0.173752, 0.931056,
		-0.881952, 0.413174, -0.226824,
		-0.345277, -0.893923, -0.285808,
		24.143253, 36.635910, 18.623219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.738026, 37.252174, 19.124704>,  <24.384947, 37.261658, 18.823284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.738026, 37.252174, 19.124704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801476, 36.868416, 19.031414>,  <23.839546, 36.638161, 18.975439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801476, 36.868416, 19.031414>,  <23.738026, 37.252174, 19.124704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.801476, 36.868416, 19.031414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408560, -0.278826, 0.869100,
		-0.898842, -0.042574, -0.436200,
		0.158625, -0.959397, -0.233227,
		23.849064, 36.580597, 18.961447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003813, 36.871174, 19.202435>,  <23.738026, 37.252174, 19.124704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003813, 36.871174, 19.202435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.274092, 36.577194, 19.225380>,  <23.436258, 36.400806, 19.239147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.274092, 36.577194, 19.225380>,  <23.003813, 36.871174, 19.202435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.274092, 36.577194, 19.225380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558294, -0.459365, 0.690863,
		-0.481402, -0.498832, -0.720707,
		0.675692, -0.734950, 0.057356,
		23.476801, 36.356712, 19.242588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.556683, 36.294601, 19.200106>,  <23.003813, 36.871174, 19.202435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.556683, 36.294601, 19.200106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.907013, 36.135323, 19.309185>,  <23.117210, 36.039753, 19.374632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.907013, 36.135323, 19.309185>,  <22.556683, 36.294601, 19.200106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.907013, 36.135323, 19.309185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478840, -0.646312, 0.594133,
		-0.060335, -0.650936, -0.756731,
		0.875826, -0.398200, 0.272699,
		23.169762, 36.015862, 19.390995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.465126, 35.537155, 19.209579>,  <22.556683, 36.294601, 19.200106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.465126, 35.537155, 19.209579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.766108, 35.635914, 19.453827>,  <22.946697, 35.695168, 19.600376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.766108, 35.635914, 19.453827>,  <22.465126, 35.537155, 19.209579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.766108, 35.635914, 19.453827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428832, -0.520018, 0.738704,
		0.499918, -0.817693, -0.285412,
		0.752453, 0.246898, 0.610619,
		22.991844, 35.709984, 19.637012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.672216, 34.986481, 19.534430>,  <22.465126, 35.537155, 19.209579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.672216, 34.986481, 19.534430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.764267, 35.285732, 19.783379>,  <22.819498, 35.465282, 19.932749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.764267, 35.285732, 19.783379>,  <22.672216, 34.986481, 19.534430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.764267, 35.285732, 19.783379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601419, -0.393455, 0.695333,
		0.765073, -0.534323, 0.359393,
		0.230127, 0.748126, 0.622373,
		22.833305, 35.510170, 19.970091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.744072, 34.709789, 20.161968>,  <22.672216, 34.986481, 19.534430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.744072, 34.709789, 20.161968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.684572, 35.092243, 20.262909>,  <22.648872, 35.321716, 20.323473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.684572, 35.092243, 20.262909>,  <22.744072, 34.709789, 20.161968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.684572, 35.092243, 20.262909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389817, -0.291223, 0.873631,
		0.908799, 0.031582, 0.416037,
		-0.148750, 0.956134, 0.252352,
		22.639948, 35.379082, 20.338615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.150213, 34.747471, 20.775658>,  <22.744072, 34.709789, 20.161968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.150213, 34.747471, 20.775658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.888765, 35.049847, 20.761032>,  <22.731895, 35.231274, 20.752256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.888765, 35.049847, 20.761032>,  <23.150213, 34.747471, 20.775658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.888765, 35.049847, 20.761032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264734, -0.183107, 0.946778,
		0.709010, 0.628514, 0.319805,
		-0.653621, 0.755938, -0.036564,
		22.692678, 35.276627, 20.750063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.324577, 35.172016, 21.316061>,  <23.150213, 34.747471, 20.775658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.324577, 35.172016, 21.316061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.946833, 35.271851, 21.230373>,  <22.720186, 35.331749, 21.178961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.946833, 35.271851, 21.230373>,  <23.324577, 35.172016, 21.316061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.946833, 35.271851, 21.230373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184757, 0.136304, 0.973286,
		0.272114, 0.958713, -0.082608,
		-0.944362, 0.249583, -0.214219,
		22.663525, 35.346725, 21.166107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.111053, 35.733326, 21.740395>,  <23.324577, 35.172016, 21.316061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.111053, 35.733326, 21.740395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.762627, 35.568790, 21.633030>,  <22.553572, 35.470070, 21.568611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.762627, 35.568790, 21.633030>,  <23.111053, 35.733326, 21.740395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.762627, 35.568790, 21.633030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352500, 0.142990, 0.924823,
		-0.342036, 0.900196, -0.269551,
		-0.871065, -0.411340, -0.268412,
		22.501307, 35.445389, 21.552505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.545597, 36.180393, 22.026430>,  <23.111053, 35.733326, 21.740395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.545597, 36.180393, 22.026430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373831, 35.834518, 21.922180>,  <22.270771, 35.626995, 21.859631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373831, 35.834518, 21.922180>,  <22.545597, 36.180393, 22.026430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.373831, 35.834518, 21.922180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547916, 0.020037, 0.836294,
		-0.717907, 0.501918, -0.482378,
		-0.429416, -0.864683, -0.260624,
		22.245007, 35.575115, 21.843992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.872620, 36.216480, 22.212282>,  <22.545597, 36.180393, 22.026430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.872620, 36.216480, 22.212282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.907743, 35.819149, 22.182373>,  <21.928818, 35.580750, 22.164427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.907743, 35.819149, 22.182373>,  <21.872620, 36.216480, 22.212282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.907743, 35.819149, 22.182373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442295, -0.106138, 0.890567,
		-0.892560, -0.045130, -0.448664,
		0.087811, -0.993327, -0.074774,
		21.934088, 35.521152, 22.159941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.278738, 35.967503, 22.514191>,  <21.872620, 36.216480, 22.212282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.278738, 35.967503, 22.514191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.558064, 35.683098, 22.547222>,  <21.725658, 35.512455, 22.567041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.558064, 35.683098, 22.547222>,  <21.278738, 35.967503, 22.514191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.558064, 35.683098, 22.547222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376507, -0.266742, 0.887182,
		-0.608770, -0.650622, -0.453971,
		0.698313, -0.711013, 0.082579,
		21.767557, 35.469795, 22.571997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224237, 36.674095, 22.589603>,  <21.278738, 35.967503, 22.514191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224237, 36.674095, 22.589603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.995241, 36.925991, 22.799625>,  <20.857843, 37.077129, 22.925638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.995241, 36.925991, 22.799625>,  <21.224237, 36.674095, 22.589603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995241, 36.925991, 22.799625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193696, 0.518378, -0.832926,
		-0.796704, -0.578543, -0.174788,
		-0.572489, 0.629740, 0.525056,
		20.823494, 37.114914, 22.957142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.541220, 36.717300, 22.261770>,  <21.224237, 36.674095, 22.589603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.541220, 36.717300, 22.261770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.601171, 37.046062, 22.481594>,  <20.637142, 37.243320, 22.613489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.601171, 37.046062, 22.481594>,  <20.541220, 36.717300, 22.261770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601171, 37.046062, 22.481594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161032, 0.568709, -0.806622,
		-0.975502, 0.032398, 0.217590,
		0.149878, 0.821900, 0.549560,
		20.646135, 37.292633, 22.646461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.913223, 37.193703, 22.083561>,  <20.541220, 36.717300, 22.261770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.913223, 37.193703, 22.083561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.152140, 37.465286, 22.254326>,  <20.295490, 37.628239, 22.356785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.152140, 37.465286, 22.254326>,  <19.913223, 37.193703, 22.083561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.152140, 37.465286, 22.254326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111845, 0.597605, -0.793952,
		-0.794187, 0.426473, 0.432883,
		0.597292, 0.678962, 0.426911,
		20.331327, 37.668976, 22.382399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624071, 37.804516, 22.015612>,  <19.913223, 37.193703, 22.083561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624071, 37.804516, 22.015612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013266, 37.880581, 22.067978>,  <20.246782, 37.926220, 22.099398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.013266, 37.880581, 22.067978>,  <19.624071, 37.804516, 22.015612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013266, 37.880581, 22.067978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017857, 0.503378, -0.863882,
		-0.230175, 0.842882, 0.486384,
		0.972986, 0.190158, 0.130916,
		20.305161, 37.937630, 22.107252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.679007, 38.551384, 21.949600>,  <19.624071, 37.804516, 22.015612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.679007, 38.551384, 21.949600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.034147, 38.385727, 21.869392>,  <20.247232, 38.286335, 21.821268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.034147, 38.385727, 21.869392>,  <19.679007, 38.551384, 21.949600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034147, 38.385727, 21.869392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058853, 0.534416, -0.843170,
		0.456350, 0.736809, 0.498856,
		0.887852, -0.414140, -0.200517,
		20.300503, 38.261486, 21.809237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970713, 39.078323, 21.692608>,  <19.679007, 38.551384, 21.949600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970713, 39.078323, 21.692608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.221395, 38.788025, 21.579098>,  <20.371805, 38.613846, 21.510992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.221395, 38.788025, 21.579098>,  <19.970713, 39.078323, 21.692608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.221395, 38.788025, 21.579098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034098, 0.389352, -0.920458,
		0.778508, 0.567182, 0.268756,
		0.626708, -0.725748, -0.283774,
		20.409409, 38.570301, 21.493965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481464, 39.362877, 21.166027>,  <19.970713, 39.078323, 21.692608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481464, 39.362877, 21.166027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.552116, 38.975739, 21.094379>,  <20.594507, 38.743458, 21.051392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.552116, 38.975739, 21.094379>,  <20.481464, 39.362877, 21.166027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552116, 38.975739, 21.094379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011109, 0.183928, -0.982877,
		0.984214, 0.171617, 0.043239,
		0.176632, -0.967842, -0.179118,
		20.605106, 38.685387, 21.040644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034861, 39.345387, 20.725489>,  <20.481464, 39.362877, 21.166027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034861, 39.345387, 20.725489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829220, 39.005360, 20.679733>,  <20.705835, 38.801342, 20.652281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829220, 39.005360, 20.679733>,  <21.034861, 39.345387, 20.725489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829220, 39.005360, 20.679733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122765, 0.204914, -0.971050,
		0.848899, -0.485175, -0.209705,
		-0.514101, -0.850068, -0.114389,
		20.674990, 38.750340, 20.645416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257521, 39.043011, 20.173504>,  <21.034861, 39.345387, 20.725489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257521, 39.043011, 20.173504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.901865, 38.861351, 20.196072>,  <20.688471, 38.752357, 20.209612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.901865, 38.861351, 20.196072>,  <21.257521, 39.043011, 20.173504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.901865, 38.861351, 20.196072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090961, 0.054559, -0.994359,
		0.448508, -0.889254, -0.089820,
		-0.889139, -0.454148, 0.056417,
		20.635124, 38.725105, 20.212997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.300697, 38.633842, 19.553061>,  <21.257521, 39.043011, 20.173504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.300697, 38.633842, 19.553061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.930004, 38.688572, 19.693027>,  <20.707588, 38.721409, 19.777008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.930004, 38.688572, 19.693027>,  <21.300697, 38.633842, 19.553061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930004, 38.688572, 19.693027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340391, 0.088509, -0.936109,
		-0.159051, -0.986634, -0.035451,
		-0.926734, 0.136822, 0.349918,
		20.651983, 38.729618, 19.798002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.934328, 38.149876, 19.210331>,  <21.300697, 38.633842, 19.553061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.934328, 38.149876, 19.210331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.664835, 38.413952, 19.343140>,  <20.503139, 38.572395, 19.422825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.664835, 38.413952, 19.343140>,  <20.934328, 38.149876, 19.210331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664835, 38.413952, 19.343140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423970, 0.022675, -0.905392,
		-0.605256, -0.750759, 0.264623,
		-0.673732, 0.660186, 0.332023,
		20.462715, 38.612007, 19.442747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368212, 37.916866, 18.910776>,  <20.934328, 38.149876, 19.210331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.368212, 37.916866, 18.910776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.345505, 38.304874, 19.005302>,  <20.331881, 38.537678, 19.062017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.345505, 38.304874, 19.005302>,  <20.368212, 37.916866, 18.910776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345505, 38.304874, 19.005302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201644, 0.220681, -0.954275,
		-0.977813, -0.101821, 0.183071,
		-0.056765, 0.970017, 0.236316,
		20.328476, 38.595879, 19.076197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819468, 38.132938, 18.502554>,  <20.368212, 37.916866, 18.910776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819468, 38.132938, 18.502554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.000427, 38.472950, 18.610470>,  <20.109003, 38.676956, 18.675220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.000427, 38.472950, 18.610470>,  <19.819468, 38.132938, 18.502554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.000427, 38.472950, 18.610470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105520, 0.351414, -0.930255,
		-0.885550, 0.392379, 0.248674,
		0.452400, 0.850027, 0.269791,
		20.136147, 38.727959, 18.691408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288223, 38.709236, 18.441607>,  <19.819468, 38.132938, 18.502554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288223, 38.709236, 18.441607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.662607, 38.843994, 18.400650>,  <19.887238, 38.924850, 18.376076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.662607, 38.843994, 18.400650>,  <19.288223, 38.709236, 18.441607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662607, 38.843994, 18.400650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219797, 0.331827, -0.917377,
		-0.275083, 0.881132, 0.384625,
		0.935959, 0.336894, -0.102390,
		19.943396, 38.945061, 18.369932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.187410, 39.236057, 17.991325>,  <19.288223, 38.709236, 18.441607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.187410, 39.236057, 17.991325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.581402, 39.168026, 17.979408>,  <19.817797, 39.127205, 17.972258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.581402, 39.168026, 17.979408>,  <19.187410, 39.236057, 17.991325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581402, 39.168026, 17.979408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006981, 0.211627, -0.977326,
		0.172529, 0.962438, 0.209635,
		0.984980, -0.170081, -0.029793,
		19.876896, 39.117001, 17.970470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485001, 39.777424, 17.510077>,  <19.187410, 39.236057, 17.991325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485001, 39.777424, 17.510077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752462, 39.480858, 17.532730>,  <19.912939, 39.302917, 17.546322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752462, 39.480858, 17.532730>,  <19.485001, 39.777424, 17.510077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752462, 39.480858, 17.532730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081977, -0.002196, -0.996632,
		0.739041, 0.671045, 0.059311,
		0.668654, -0.741414, 0.056633,
		19.953058, 39.258434, 17.549721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.875563, 39.916786, 16.958456>,  <19.485001, 39.777424, 17.510077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.875563, 39.916786, 16.958456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.977570, 39.541866, 17.053474>,  <20.038774, 39.316914, 17.110485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.977570, 39.541866, 17.053474>,  <19.875563, 39.916786, 16.958456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.977570, 39.541866, 17.053474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495180, -0.084414, -0.864680,
		0.830519, 0.338138, 0.442606,
		0.255019, -0.937303, 0.237547,
		20.054075, 39.260674, 17.124739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.475822, 40.004257, 16.683481>,  <19.875563, 39.916786, 16.958456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.475822, 40.004257, 16.683481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.378950, 39.617062, 16.709835>,  <20.320827, 39.384743, 16.725647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.378950, 39.617062, 16.709835>,  <20.475822, 40.004257, 16.683481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.378950, 39.617062, 16.709835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414564, -0.164636, -0.895004,
		0.877203, -0.189437, 0.441166,
		-0.242179, -0.967992, 0.065885,
		20.306297, 39.326664, 16.729601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.123707, 39.571880, 16.505379>,  <20.475822, 40.004257, 16.683481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.123707, 39.571880, 16.505379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.803080, 39.336761, 16.461590>,  <20.610703, 39.195690, 16.435316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.803080, 39.336761, 16.461590>,  <21.123707, 39.571880, 16.505379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803080, 39.336761, 16.461590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329472, -0.281451, -0.901240,
		0.498934, -0.758474, 0.419264,
		-0.801570, -0.587795, -0.109470,
		20.562609, 39.160423, 16.428749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.342985, 39.088024, 16.060770>,  <21.123707, 39.571880, 16.505379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.342985, 39.088024, 16.060770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.946262, 39.040714, 16.041458>,  <20.708229, 39.012329, 16.029871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.946262, 39.040714, 16.041458>,  <21.342985, 39.088024, 16.060770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946262, 39.040714, 16.041458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087491, -0.353471, -0.931345,
		0.093094, -0.927937, 0.360923,
		-0.991806, -0.118280, -0.048280,
		20.648720, 39.005230, 16.026974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143219, 38.352322, 15.884130>,  <21.342985, 39.088024, 16.060770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143219, 38.352322, 15.884130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.853893, 38.600391, 15.762673>,  <20.680298, 38.749233, 15.689799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.853893, 38.600391, 15.762673>,  <21.143219, 38.352322, 15.884130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853893, 38.600391, 15.762673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016753, -0.455359, -0.890150,
		-0.690317, -0.638770, 0.339757,
		-0.723313, 0.620178, -0.303641,
		20.636900, 38.786446, 15.671581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.071749, 26.698704, 23.743032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112974, 26.833748, 24.117283>,  <28.137709, 26.914774, 24.341833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112974, 26.833748, 24.117283>,  <28.071749, 26.698704, 23.743032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112974, 26.833748, 24.117283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760110, 0.633446, -0.144841,
		-0.641569, -0.696251, 0.321906,
		0.103064, 0.337609, 0.935627,
		28.143894, 26.935030, 24.397970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400173, 26.695118, 23.988491>,  <28.071749, 26.698704, 23.743032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400173, 26.695118, 23.988491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614916, 26.955006, 24.203770>,  <27.743761, 27.110937, 24.332937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614916, 26.955006, 24.203770>,  <27.400173, 26.695118, 23.988491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614916, 26.955006, 24.203770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666212, 0.717866, -0.202064,
		-0.517636, -0.250073, 0.818240,
		0.536856, 0.649717, 0.538195,
		27.775972, 27.149921, 24.365229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936888, 26.907953, 24.516077>,  <27.400173, 26.695118, 23.988491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936888, 26.907953, 24.516077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219440, 27.187061, 24.468513>,  <27.388973, 27.354527, 24.439976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219440, 27.187061, 24.468513>,  <26.936888, 26.907953, 24.516077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219440, 27.187061, 24.468513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705823, 0.707010, -0.044166,
		0.053253, 0.115127, 0.991922,
		0.706383, 0.697770, -0.118910,
		27.431355, 27.396393, 24.432840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734072, 27.534084, 24.809311>,  <26.936888, 26.907953, 24.516077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734072, 27.534084, 24.809311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031742, 27.681217, 24.586277>,  <27.210344, 27.769497, 24.452457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031742, 27.681217, 24.586277>,  <26.734072, 27.534084, 24.809311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031742, 27.681217, 24.586277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435211, 0.900234, 0.013027,
		0.506749, 0.232972, 0.830018,
		0.744176, 0.367834, -0.557585,
		27.254995, 27.791567, 24.419001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893372, 28.124960, 25.139872>,  <26.734072, 27.534084, 24.809311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893372, 28.124960, 25.139872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996931, 28.169949, 24.756138>,  <27.059067, 28.196941, 24.525898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996931, 28.169949, 24.756138>,  <26.893372, 28.124960, 25.139872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996931, 28.169949, 24.756138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250978, 0.966917, 0.045629,
		0.932728, 0.228958, 0.278564,
		0.258901, 0.112473, -0.959333,
		27.074602, 28.203690, 24.468338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218340, 28.810707, 25.079815>,  <26.893372, 28.124960, 25.139872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218340, 28.810707, 25.079815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153212, 28.712830, 24.697483>,  <27.114136, 28.654102, 24.468084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153212, 28.712830, 24.697483>,  <27.218340, 28.810707, 25.079815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153212, 28.712830, 24.697483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012898, 0.969204, -0.245923,
		0.986572, -0.027713, -0.160961,
		-0.162819, -0.244696, -0.955831,
		27.104366, 28.639421, 24.410734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626162, 29.276733, 24.602343>,  <27.218340, 28.810707, 25.079815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626162, 29.276733, 24.602343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350225, 29.144264, 24.344833>,  <27.184664, 29.064783, 24.190329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350225, 29.144264, 24.344833>,  <27.626162, 29.276733, 24.602343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350225, 29.144264, 24.344833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027316, 0.900512, -0.433972,
		0.723444, -0.281787, -0.630258,
		-0.689843, -0.331171, -0.643773,
		27.143272, 29.044912, 24.151701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930628, 29.328024, 23.808496>,  <27.626162, 29.276733, 24.602343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930628, 29.328024, 23.808496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531094, 29.314137, 23.795101>,  <27.291372, 29.305803, 23.787064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531094, 29.314137, 23.795101>,  <27.930628, 29.328024, 23.808496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531094, 29.314137, 23.795101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010097, 0.829337, -0.558657,
		0.047169, -0.557669, -0.828722,
		-0.998836, -0.034719, -0.033489,
		27.231443, 29.303720, 23.785055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648958, 29.354614, 23.189205>,  <27.930628, 29.328024, 23.808496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648958, 29.354614, 23.189205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321522, 29.475136, 23.384808>,  <27.125061, 29.547449, 23.502169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321522, 29.475136, 23.384808>,  <27.648958, 29.354614, 23.189205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321522, 29.475136, 23.384808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104478, 0.759057, -0.642586,
		-0.564798, -0.577105, -0.589876,
		-0.818589, 0.301302, 0.489008,
		27.075945, 29.565527, 23.531509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156427, 29.483982, 22.776678>,  <27.648958, 29.354614, 23.189205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156427, 29.483982, 22.776678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020948, 29.710968, 23.076881>,  <26.939661, 29.847160, 23.257004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020948, 29.710968, 23.076881>,  <27.156427, 29.483982, 22.776678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020948, 29.710968, 23.076881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215395, 0.729710, -0.648944,
		-0.915908, -0.381453, -0.124923,
		-0.338699, 0.567465, 0.750511,
		26.919338, 29.881208, 23.302034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509375, 29.862411, 22.556103>,  <27.156427, 29.483982, 22.776678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509375, 29.862411, 22.556103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623928, 30.091980, 22.862984>,  <26.692661, 30.229721, 23.047112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623928, 30.091980, 22.862984>,  <26.509375, 29.862411, 22.556103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623928, 30.091980, 22.862984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172214, 0.818533, -0.548039,
		-0.942510, 0.024828, 0.333253,
		0.286385, 0.573923, 0.767200,
		26.709843, 30.264156, 23.093143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982759, 30.452299, 22.575802>,  <26.509375, 29.862411, 22.556103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982759, 30.452299, 22.575802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319414, 30.552216, 22.767323>,  <26.521408, 30.612165, 22.882235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319414, 30.552216, 22.767323>,  <25.982759, 30.452299, 22.575802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319414, 30.552216, 22.767323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118272, 0.950332, -0.287892,
		-0.526931, 0.185672, 0.829379,
		0.841638, 0.249791, 0.478800,
		26.571905, 30.627153, 22.910963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859728, 31.090887, 22.848764>,  <25.982759, 30.452299, 22.575802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859728, 31.090887, 22.848764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252031, 31.077934, 22.925774>,  <26.487413, 31.070162, 22.971979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252031, 31.077934, 22.925774>,  <25.859728, 31.090887, 22.848764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252031, 31.077934, 22.925774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081023, 0.964726, -0.250477,
		-0.177620, 0.261256, 0.948787,
		0.980758, -0.032384, 0.192523,
		26.546259, 31.068220, 22.983530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006304, 31.690111, 23.357698>,  <25.859728, 31.090887, 22.848764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006304, 31.690111, 23.357698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322344, 31.583237, 23.137024>,  <26.511967, 31.519112, 23.004620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322344, 31.583237, 23.137024>,  <26.006304, 31.690111, 23.357698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322344, 31.583237, 23.137024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078843, 0.936826, -0.340796,
		0.607889, 0.225766, 0.761250,
		0.790098, -0.267185, -0.551686,
		26.559374, 31.503080, 22.971518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536911, 32.108932, 23.771345>,  <26.006304, 31.690111, 23.357698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536911, 32.108932, 23.771345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231249, 32.229595, 23.999405>,  <25.047852, 32.301994, 24.136240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231249, 32.229595, 23.999405>,  <25.536911, 32.108932, 23.771345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231249, 32.229595, 23.999405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466421, -0.352142, 0.811448,
		0.445553, 0.886001, 0.128391,
		-0.764156, 0.301659, 0.570148,
		25.002003, 32.320091, 24.170448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865557, 32.502014, 24.335873>,  <25.536911, 32.108932, 23.771345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865557, 32.502014, 24.335873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501886, 32.370430, 24.438000>,  <25.283684, 32.291481, 24.499275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501886, 32.370430, 24.438000>,  <25.865557, 32.502014, 24.335873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501886, 32.370430, 24.438000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366247, -0.339943, 0.866200,
		-0.198152, 0.881036, 0.429548,
		-0.909175, -0.328960, 0.255316,
		25.229134, 32.271744, 24.514595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862444, 32.549129, 25.050283>,  <25.865557, 32.502014, 24.335873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862444, 32.549129, 25.050283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557550, 32.303421, 24.968636>,  <25.374615, 32.155994, 24.919647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557550, 32.303421, 24.968636>,  <25.862444, 32.549129, 25.050283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557550, 32.303421, 24.968636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261684, -0.580849, 0.770802,
		-0.592048, 0.534116, 0.603489,
		-0.762234, -0.614275, -0.204121,
		25.328880, 32.119137, 24.907398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496374, 32.574425, 25.684801>,  <25.862444, 32.549129, 25.050283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496374, 32.574425, 25.684801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377102, 32.245827, 25.490387>,  <25.305538, 32.048668, 25.373739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377102, 32.245827, 25.490387>,  <25.496374, 32.574425, 25.684801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377102, 32.245827, 25.490387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094896, -0.532187, 0.841291,
		-0.949781, 0.204733, 0.236645,
		-0.298180, -0.821499, -0.486033,
		25.287647, 31.999376, 25.344578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070757, 32.234966, 26.172226>,  <25.496374, 32.574425, 25.684801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070757, 32.234966, 26.172226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185368, 31.974815, 25.890827>,  <25.254133, 31.818724, 25.721989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185368, 31.974815, 25.890827>,  <25.070757, 32.234966, 26.172226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185368, 31.974815, 25.890827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187534, -0.682006, 0.706893,
		-0.939539, -0.334472, -0.073443,
		0.286525, -0.650381, -0.703497,
		25.271326, 31.779701, 25.679779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894991, 31.582399, 26.366461>,  <25.070757, 32.234966, 26.172226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894991, 31.582399, 26.366461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153446, 31.484303, 26.077362>,  <25.308519, 31.425446, 25.903904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153446, 31.484303, 26.077362>,  <24.894991, 31.582399, 26.366461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153446, 31.484303, 26.077362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233175, -0.838261, 0.492898,
		-0.726729, -0.487006, -0.484449,
		0.646139, -0.245242, -0.722746,
		25.347288, 31.410730, 25.860538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731911, 30.919832, 26.138288>,  <24.894991, 31.582399, 26.366461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731911, 30.919832, 26.138288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111423, 30.988716, 26.032341>,  <25.339130, 31.030046, 25.968773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111423, 30.988716, 26.032341>,  <24.731911, 30.919832, 26.138288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111423, 30.988716, 26.032341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276951, -0.856775, 0.435012,
		-0.152020, -0.486087, -0.860587,
		0.948782, 0.172210, -0.264869,
		25.396059, 31.040379, 25.952881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054260, 30.300146, 26.059483>,  <24.731911, 30.919832, 26.138288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054260, 30.300146, 26.059483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391172, 30.515076, 26.076675>,  <25.593319, 30.644033, 26.086990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391172, 30.515076, 26.076675>,  <25.054260, 30.300146, 26.059483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391172, 30.515076, 26.076675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503164, -0.812318, 0.294900,
		0.193371, -0.226761, -0.954561,
		0.842279, 0.537326, 0.042981,
		25.643856, 30.676273, 26.089569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549616, 29.882977, 25.771111>,  <25.054260, 30.300146, 26.059483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549616, 29.882977, 25.771111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760397, 30.162922, 25.963989>,  <25.886866, 30.330889, 26.079716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760397, 30.162922, 25.963989>,  <25.549616, 29.882977, 25.771111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760397, 30.162922, 25.963989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577300, -0.711136, 0.401261,
		0.623734, 0.066927, -0.778766,
		0.526953, 0.699862, 0.482197,
		25.918484, 30.372881, 26.108648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417166, 29.791334, 25.606215>,  <25.549616, 29.882977, 25.771111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417166, 29.791334, 25.606215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372719, 29.984711, 25.953533>,  <26.346050, 30.100737, 26.161924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372719, 29.984711, 25.953533>,  <26.417166, 29.791334, 25.606215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372719, 29.984711, 25.953533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863621, -0.385343, 0.325068,
		0.491744, 0.785998, -0.374694,
		-0.111117, 0.483444, 0.868294,
		26.339384, 30.129744, 26.214022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092203, 30.093424, 25.855665>,  <26.417166, 29.791334, 25.606215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092203, 30.093424, 25.855665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865654, 30.067287, 26.184288>,  <26.729725, 30.051605, 26.381462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865654, 30.067287, 26.184288>,  <27.092203, 30.093424, 25.855665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865654, 30.067287, 26.184288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722019, -0.519992, 0.456396,
		0.397381, 0.851668, 0.341685,
		-0.566372, -0.065340, 0.821556,
		26.695742, 30.047686, 26.430756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544313, 30.187714, 26.347095>,  <27.092203, 30.093424, 25.855665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544313, 30.187714, 26.347095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254469, 30.029339, 26.572723>,  <27.080563, 29.934315, 26.708099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254469, 30.029339, 26.572723>,  <27.544313, 30.187714, 26.347095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254469, 30.029339, 26.572723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681675, -0.532073, 0.502211,
		0.101282, 0.748419, 0.655447,
		-0.724611, -0.395937, 0.564068,
		27.037086, 29.910557, 26.741943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803583, 30.185947, 27.046741>,  <27.544313, 30.187714, 26.347095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803583, 30.185947, 27.046741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501045, 29.925941, 27.017273>,  <27.319523, 29.769938, 26.999592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501045, 29.925941, 27.017273>,  <27.803583, 30.185947, 27.046741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501045, 29.925941, 27.017273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533811, -0.678353, 0.504860,
		-0.378142, 0.342520, 0.860052,
		-0.756343, -0.650013, -0.073673,
		27.274143, 29.730938, 26.995171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850893, 30.003365, 27.686928>,  <27.803583, 30.185947, 27.046741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850893, 30.003365, 27.686928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632961, 29.729370, 27.493454>,  <27.502201, 29.564972, 27.377371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632961, 29.729370, 27.493454>,  <27.850893, 30.003365, 27.686928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632961, 29.729370, 27.493454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418739, -0.721992, 0.550803,
		-0.726509, 0.097558, 0.680196,
		-0.544832, -0.684988, -0.483683,
		27.469511, 29.523874, 27.348349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480656, 30.135376, 28.392929>,  <27.850893, 30.003365, 27.686928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480656, 30.135376, 28.392929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407974, 30.296558, 28.751728>,  <27.364365, 30.393269, 28.967009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407974, 30.296558, 28.751728>,  <27.480656, 30.135376, 28.392929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407974, 30.296558, 28.751728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128662, 0.914085, -0.384571,
		-0.974900, 0.045532, -0.217937,
		-0.181703, 0.402958, 0.897000,
		27.353464, 30.417446, 29.020828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844650, 30.634617, 28.376368>,  <27.480656, 30.135376, 28.392929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844650, 30.634617, 28.376368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101339, 30.722603, 28.670254>,  <27.255354, 30.775394, 28.846586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101339, 30.722603, 28.670254>,  <26.844650, 30.634617, 28.376368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101339, 30.722603, 28.670254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083073, 0.932414, -0.351713,
		-0.762424, 0.286738, 0.580079,
		0.641724, 0.219965, 0.734715,
		27.293856, 30.788593, 28.890669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711218, 31.300287, 28.490061>,  <26.844650, 30.634617, 28.376368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711218, 31.300287, 28.490061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057745, 31.262962, 28.686340>,  <27.265661, 31.240568, 28.804108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057745, 31.262962, 28.686340>,  <26.711218, 31.300287, 28.490061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057745, 31.262962, 28.686340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240274, 0.939117, -0.245617,
		-0.437904, 0.330684, 0.835995,
		0.866319, -0.093311, 0.490698,
		27.317640, 31.234968, 28.833549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764225, 31.878767, 28.937954>,  <26.711218, 31.300287, 28.490061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764225, 31.878767, 28.937954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143793, 31.767250, 28.878864>,  <27.371534, 31.700340, 28.843410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143793, 31.767250, 28.878864>,  <26.764225, 31.878767, 28.937954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143793, 31.767250, 28.878864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233292, 0.935207, -0.266388,
		0.212420, 0.218318, 0.952478,
		0.948922, -0.278791, -0.147725,
		27.428471, 31.683613, 28.834547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148890, 32.489361, 29.016827>,  <26.764225, 31.878767, 28.937954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148890, 32.489361, 29.016827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430817, 32.262974, 28.845753>,  <27.599974, 32.127144, 28.743109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430817, 32.262974, 28.845753>,  <27.148890, 32.489361, 29.016827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430817, 32.262974, 28.845753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486691, 0.824417, -0.288910,
		0.516105, -0.004522, 0.856514,
		0.704818, -0.565966, -0.427686,
		27.642262, 32.093185, 28.717447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790329, 32.770752, 29.362186>,  <27.148890, 32.489361, 29.016827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790329, 32.770752, 29.362186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829430, 32.585442, 29.009865>,  <27.852890, 32.474255, 28.798471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829430, 32.585442, 29.009865>,  <27.790329, 32.770752, 29.362186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829430, 32.585442, 29.009865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592692, 0.738076, -0.322429,
		0.799476, -0.490528, 0.346730,
		0.097753, -0.463278, -0.880805,
		27.858755, 32.446457, 28.745623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488396, 32.768116, 29.346117>,  <27.790329, 32.770752, 29.362186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488396, 32.768116, 29.346117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359320, 32.704327, 28.972927>,  <28.281874, 32.666054, 28.749014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359320, 32.704327, 28.972927>,  <28.488396, 32.768116, 29.346117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359320, 32.704327, 28.972927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702481, 0.620262, -0.348993,
		0.634344, -0.768012, -0.088122,
		-0.322689, -0.159478, -0.932973,
		28.262512, 32.656483, 28.693035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024427, 32.619755, 28.875269>,  <28.488396, 32.768116, 29.346117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024427, 32.619755, 28.875269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744596, 32.745754, 28.618717>,  <28.576698, 32.821354, 28.464787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744596, 32.745754, 28.618717>,  <29.024427, 32.619755, 28.875269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744596, 32.745754, 28.618717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652511, 0.647462, -0.393728,
		0.291243, -0.693950, -0.658491,
		-0.699576, 0.315002, -0.641379,
		28.534723, 32.840256, 28.426304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354675, 32.624214, 28.127110>,  <29.024427, 32.619755, 28.875269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354675, 32.624214, 28.127110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041153, 32.872578, 28.122856>,  <28.853039, 33.021595, 28.120304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041153, 32.872578, 28.122856>,  <29.354675, 32.624214, 28.127110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041153, 32.872578, 28.122856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453654, 0.560805, -0.692601,
		-0.424081, -0.547690, -0.721243,
		-0.783807, 0.620913, -0.010635,
		28.806011, 33.058853, 28.119665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274364, 32.728176, 27.353319>,  <29.354675, 32.624214, 28.127110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274364, 32.728176, 27.353319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103035, 33.018250, 27.568966>,  <29.000237, 33.192295, 27.698353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103035, 33.018250, 27.568966>,  <29.274364, 32.728176, 27.353319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103035, 33.018250, 27.568966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473377, 0.688271, -0.549725,
		-0.769710, 0.019744, -0.638089,
		-0.428324, 0.725185, 0.539115,
		28.974537, 33.235806, 27.730701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072227, 33.122299, 26.894728>,  <29.274364, 32.728176, 27.353319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072227, 33.122299, 26.894728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089066, 33.354874, 27.219730>,  <29.099169, 33.494419, 27.414732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089066, 33.354874, 27.219730>,  <29.072227, 33.122299, 26.894728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089066, 33.354874, 27.219730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407488, 0.732525, -0.545308,
		-0.912240, 0.354040, -0.206092,
		0.042093, 0.581431, 0.812506,
		29.101694, 33.529305, 27.463482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026260, 33.835533, 26.688374>,  <29.072227, 33.122299, 26.894728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026260, 33.835533, 26.688374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205048, 33.913170, 27.037670>,  <29.312321, 33.959751, 27.247248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205048, 33.913170, 27.037670>,  <29.026260, 33.835533, 26.688374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205048, 33.913170, 27.037670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367010, 0.850448, -0.376884,
		-0.815796, 0.488943, 0.308888,
		0.446968, 0.194095, 0.873239,
		29.339138, 33.971397, 27.299643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.653818, 27.139122, 30.279308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.962378, 27.250122, 30.508373>,  <26.147512, 27.316723, 30.645811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.962378, 27.250122, 30.508373>,  <25.653818, 27.139122, 30.279308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962378, 27.250122, 30.508373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053736, 0.925100, -0.375902,
		-0.634082, 0.259197, 0.728531,
		0.771397, 0.277501, 0.572661,
		26.193796, 27.333372, 30.680172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373466, 27.738716, 30.659346>,  <25.653818, 27.139122, 30.279308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373466, 27.738716, 30.659346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.762753, 27.785305, 30.738625>,  <25.996325, 27.813257, 30.786192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.762753, 27.785305, 30.738625>,  <25.373466, 27.738716, 30.659346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762753, 27.785305, 30.738625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015584, 0.893598, -0.448598,
		-0.229359, 0.433494, 0.871480,
		0.973217, 0.116471, 0.198200,
		26.054718, 27.820246, 30.798084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394518, 28.451733, 30.851753>,  <25.373466, 27.738716, 30.659346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394518, 28.451733, 30.851753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.763756, 28.334774, 30.751831>,  <25.985298, 28.264599, 30.691877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.763756, 28.334774, 30.751831>,  <25.394518, 28.451733, 30.851753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763756, 28.334774, 30.751831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225381, 0.937633, -0.264664,
		0.311614, 0.188008, 0.931424,
		0.923093, -0.292399, -0.249806,
		26.040684, 28.247055, 30.676889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857542, 28.984364, 31.071693>,  <25.394518, 28.451733, 30.851753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857542, 28.984364, 31.071693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.056498, 28.806763, 30.773575>,  <26.175871, 28.700201, 30.594704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.056498, 28.806763, 30.773575>,  <25.857542, 28.984364, 31.071693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056498, 28.806763, 30.773575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414880, 0.876233, -0.245131,
		0.761892, -0.187283, 0.620036,
		0.497387, -0.444004, -0.745296,
		26.205713, 28.673561, 30.549986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543686, 29.317953, 31.021858>,  <25.857542, 28.984364, 31.071693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543686, 29.317953, 31.021858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.534994, 29.130302, 30.668713>,  <26.529779, 29.017712, 30.456825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.534994, 29.130302, 30.668713>,  <26.543686, 29.317953, 31.021858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534994, 29.130302, 30.668713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545486, 0.734482, -0.403709,
		0.837838, -0.490361, 0.239943,
		-0.021729, -0.469129, -0.882862,
		26.528475, 28.989563, 30.403854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201275, 29.374037, 30.822456>,  <26.543686, 29.317953, 31.021858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201275, 29.374037, 30.822456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.990660, 29.324394, 30.486038>,  <26.864290, 29.294609, 30.284187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.990660, 29.324394, 30.486038>,  <27.201275, 29.374037, 30.822456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990660, 29.324394, 30.486038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374158, 0.854497, -0.360334,
		0.763389, -0.504413, -0.403491,
		-0.526539, -0.124106, -0.841044,
		26.832699, 29.287163, 30.233725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669186, 29.397255, 30.266392>,  <27.201275, 29.374037, 30.822456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669186, 29.397255, 30.266392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.319414, 29.466660, 30.085167>,  <27.109550, 29.508303, 29.976433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.319414, 29.466660, 30.085167>,  <27.669186, 29.397255, 30.266392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319414, 29.466660, 30.085167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400526, 0.785160, -0.472337,
		0.273769, -0.594489, -0.756064,
		-0.874431, 0.173512, -0.453061,
		27.057085, 29.518713, 29.949249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867186, 29.503099, 29.549839>,  <27.669186, 29.397255, 30.266392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867186, 29.503099, 29.549839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.492701, 29.638195, 29.588707>,  <27.268009, 29.719252, 29.612028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.492701, 29.638195, 29.588707>,  <27.867186, 29.503099, 29.549839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492701, 29.638195, 29.588707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189470, 0.717931, -0.669833,
		-0.295989, -0.608694, -0.736126,
		-0.936211, 0.337737, 0.097171,
		27.211838, 29.739515, 29.617859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579561, 29.558472, 28.861393>,  <27.867186, 29.503099, 29.549839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579561, 29.558472, 28.861393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.399626, 29.822659, 29.101868>,  <27.291664, 29.981171, 29.246153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.399626, 29.822659, 29.101868>,  <27.579561, 29.558472, 28.861393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399626, 29.822659, 29.101868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069430, 0.696963, -0.713738,
		-0.890408, -0.279326, -0.359376,
		-0.449837, 0.660469, 0.601188,
		27.264675, 30.020800, 29.282225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664419, 29.409763, 28.202139>,  <27.579561, 29.558472, 28.861393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664419, 29.409763, 28.202139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.608784, 29.247612, 27.840736>,  <27.575401, 29.150322, 27.623896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.608784, 29.247612, 27.840736>,  <27.664419, 29.409763, 28.202139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608784, 29.247612, 27.840736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189271, -0.906437, 0.377555,
		-0.972024, -0.118493, 0.202802,
		-0.139090, -0.405377, -0.903506,
		27.567057, 29.125999, 27.569685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187351, 28.874525, 28.302124>,  <27.664419, 29.409763, 28.202139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187351, 28.874525, 28.302124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.399076, 28.792942, 27.972706>,  <27.526112, 28.743992, 27.775055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.399076, 28.792942, 27.972706>,  <27.187351, 28.874525, 28.302124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399076, 28.792942, 27.972706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405473, -0.791838, 0.456710,
		-0.745266, -0.575668, -0.336431,
		0.529312, -0.203957, -0.823547,
		27.557869, 28.731754, 27.725641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156031, 28.135715, 28.274298>,  <27.187351, 28.874525, 28.302124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156031, 28.135715, 28.274298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.439571, 28.223133, 28.006039>,  <27.609695, 28.275583, 27.845083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.439571, 28.223133, 28.006039>,  <27.156031, 28.135715, 28.274298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439571, 28.223133, 28.006039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434754, -0.884083, 0.171425,
		-0.555444, -0.413082, -0.721696,
		0.708852, 0.218543, -0.670647,
		27.652227, 28.288696, 27.804844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100357, 27.683109, 27.779333>,  <27.156031, 28.135715, 28.274298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100357, 27.683109, 27.779333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.477884, 27.812489, 27.752228>,  <27.704401, 27.890116, 27.735964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.477884, 27.812489, 27.752228>,  <27.100357, 27.683109, 27.779333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477884, 27.812489, 27.752228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326361, -0.944512, 0.037225,
		-0.051963, -0.057248, -0.997007,
		0.943816, 0.323450, -0.067763,
		27.761028, 27.909523, 27.731899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267937, 27.320251, 27.233288>,  <27.100357, 27.683109, 27.779333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267937, 27.320251, 27.233288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.621260, 27.455708, 27.362957>,  <27.833254, 27.536982, 27.440760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.621260, 27.455708, 27.362957>,  <27.267937, 27.320251, 27.233288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621260, 27.455708, 27.362957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337674, -0.939278, 0.061097,
		0.325180, 0.055498, -0.944022,
		0.883309, 0.338639, 0.324175,
		27.886251, 27.557299, 27.460209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821690, 27.096384, 26.804132>,  <27.267937, 27.320251, 27.233288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821690, 27.096384, 26.804132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.982031, 27.171066, 27.162899>,  <28.078236, 27.215876, 27.378159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.982031, 27.171066, 27.162899>,  <27.821690, 27.096384, 26.804132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982031, 27.171066, 27.162899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367104, -0.929713, 0.029467,
		0.839376, 0.317449, -0.441219,
		0.400853, 0.186708, 0.896915,
		28.102287, 27.227079, 27.431974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603994, 26.949295, 26.789488>,  <27.821690, 27.096384, 26.804132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603994, 26.949295, 26.789488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.458897, 26.933548, 27.161911>,  <28.371838, 26.924099, 27.385365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.458897, 26.933548, 27.161911>,  <28.603994, 26.949295, 26.789488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458897, 26.933548, 27.161911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318301, -0.944253, 0.084084,
		0.875844, 0.326857, 0.355052,
		-0.362742, -0.039369, 0.931058,
		28.350075, 26.921738, 27.441229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036331, 26.361969, 27.217104>,  <28.603994, 26.949295, 26.789488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036331, 26.361969, 27.217104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.731262, 26.440273, 27.463684>,  <28.548222, 26.487257, 27.611631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.731262, 26.440273, 27.463684>,  <29.036331, 26.361969, 27.217104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731262, 26.440273, 27.463684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109921, -0.900000, 0.421803,
		0.637377, 0.389458, 0.664886,
		-0.762672, 0.195762, 0.616448,
		28.502460, 26.499002, 27.648619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227827, 26.241165, 27.966387>,  <29.036331, 26.361969, 27.217104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227827, 26.241165, 27.966387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.832123, 26.203484, 27.921692>,  <28.594700, 26.180876, 27.894875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.832123, 26.203484, 27.921692>,  <29.227827, 26.241165, 27.966387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832123, 26.203484, 27.921692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035907, -0.897776, 0.438987,
		-0.141669, 0.430262, 0.891518,
		-0.989263, -0.094203, -0.111737,
		28.535343, 26.175222, 27.888170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038860, 26.032053, 28.644871>,  <29.227827, 26.241165, 27.966387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038860, 26.032053, 28.644871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.754629, 25.924591, 28.384747>,  <28.584091, 25.860113, 28.228672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.754629, 25.924591, 28.384747>,  <29.038860, 26.032053, 28.644871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754629, 25.924591, 28.384747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105996, -0.872820, 0.476394,
		-0.695591, 0.407444, 0.591728,
		-0.710576, -0.268654, -0.650313,
		28.541456, 25.843994, 28.189653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441858, 25.837765, 29.056023>,  <29.038860, 26.032053, 28.644871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441858, 25.837765, 29.056023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.419004, 25.662384, 28.697247>,  <28.405293, 25.557156, 28.481981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.419004, 25.662384, 28.697247>,  <28.441858, 25.837765, 29.056023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419004, 25.662384, 28.697247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080543, -0.893453, 0.441876,
		-0.995112, 0.097488, 0.015731,
		-0.057133, -0.438449, -0.896938,
		28.401865, 25.530849, 28.428165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842562, 25.396650, 29.112837>,  <28.441858, 25.837765, 29.056023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842562, 25.396650, 29.112837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.075720, 25.275181, 28.811371>,  <28.215614, 25.202299, 28.630491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.075720, 25.275181, 28.811371>,  <27.842562, 25.396650, 29.112837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075720, 25.275181, 28.811371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116012, -0.949137, 0.292711,
		-0.804222, -0.083186, -0.588479,
		0.582897, -0.303676, -0.753666,
		28.250589, 25.184078, 28.585272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541010, 24.775141, 29.005747>,  <27.842562, 25.396650, 29.112837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541010, 24.775141, 29.005747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.860945, 24.736332, 28.768818>,  <28.052906, 24.713047, 28.626661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.860945, 24.736332, 28.768818>,  <27.541010, 24.775141, 29.005747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860945, 24.736332, 28.768818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024520, -0.991307, 0.129265,
		-0.599713, -0.088867, -0.795265,
		0.799839, -0.097022, -0.592321,
		28.100897, 24.707226, 28.591122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432247, 24.163401, 28.465437>,  <27.541010, 24.775141, 29.005747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432247, 24.163401, 28.465437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.824713, 24.226418, 28.510151>,  <28.060192, 24.264227, 28.536980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.824713, 24.226418, 28.510151>,  <27.432247, 24.163401, 28.465437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824713, 24.226418, 28.510151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134628, -0.972676, 0.189148,
		0.138529, -0.170536, -0.975565,
		0.981165, 0.157541, 0.111785,
		28.119062, 24.273680, 28.543686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.446655, 25.672810, 31.158503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112164, 25.488071, 31.040237>,  <31.911469, 25.377228, 30.969278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112164, 25.488071, 31.040237>,  <32.446655, 25.672810, 31.158503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112164, 25.488071, 31.040237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165728, 0.726789, -0.666567,
		0.522737, -0.508404, -0.684304,
		-0.836230, -0.461847, -0.295663,
		31.861294, 25.349518, 30.951538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560673, 25.636602, 30.449781>,  <32.446655, 25.672810, 31.158503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560673, 25.636602, 30.449781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170399, 25.647884, 30.536720>,  <31.936234, 25.654654, 30.588884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170399, 25.647884, 30.536720>,  <32.560673, 25.636602, 30.449781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170399, 25.647884, 30.536720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135296, 0.702667, -0.698537,
		-0.172427, -0.710960, -0.681767,
		-0.975686, 0.028206, 0.217349,
		31.877693, 25.656345, 30.601925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260548, 25.828358, 29.847052>,  <32.560673, 25.636602, 30.449781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260548, 25.828358, 29.847052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959131, 25.928371, 30.090248>,  <31.778280, 25.988380, 30.236166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959131, 25.928371, 30.090248>,  <32.260548, 25.828358, 29.847052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959131, 25.928371, 30.090248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176741, 0.813744, -0.553700,
		-0.633194, -0.524695, -0.569000,
		-0.753544, 0.250034, 0.607992,
		31.733068, 26.003382, 30.272646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749790, 26.042337, 29.304197>,  <32.260548, 25.828358, 29.847052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749790, 26.042337, 29.304197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575649, 26.134064, 29.652424>,  <31.471165, 26.189100, 29.861359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575649, 26.134064, 29.652424>,  <31.749790, 26.042337, 29.304197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575649, 26.134064, 29.652424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384996, 0.826704, -0.410292,
		-0.813786, -0.513785, -0.271620,
		-0.435351, 0.229318, 0.870565,
		31.445044, 26.202860, 29.913593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100286, 26.317760, 29.160358>,  <31.749790, 26.042337, 29.304197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100286, 26.317760, 29.160358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.178305, 26.471043, 29.521492>,  <31.225115, 26.563011, 29.738173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.178305, 26.471043, 29.521492>,  <31.100286, 26.317760, 29.160358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178305, 26.471043, 29.521492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330785, 0.892283, -0.307266,
		-0.923331, -0.238714, 0.300793,
		0.195043, 0.383206, 0.902835,
		31.236818, 26.586004, 29.792343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582804, 26.823513, 29.222422>,  <31.100286, 26.317760, 29.160358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582804, 26.823513, 29.222422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833094, 26.927608, 29.516563>,  <30.983267, 26.990067, 29.693048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833094, 26.927608, 29.516563>,  <30.582804, 26.823513, 29.222422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833094, 26.927608, 29.516563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223551, 0.962991, -0.150578,
		-0.747326, -0.070169, 0.660743,
		0.625723, 0.260241, 0.735354,
		31.020811, 27.005680, 29.737169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185526, 27.291708, 29.578955>,  <30.582804, 26.823513, 29.222422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185526, 27.291708, 29.578955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579281, 27.345612, 29.624249>,  <30.815535, 27.377953, 29.651424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579281, 27.345612, 29.624249>,  <30.185526, 27.291708, 29.578955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579281, 27.345612, 29.624249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111682, 0.975424, -0.189937,
		-0.136045, 0.174326, 0.975245,
		0.984388, 0.134757, 0.113233,
		30.874598, 27.386038, 29.658218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234858, 27.903320, 29.988907>,  <30.185526, 27.291708, 29.578955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234858, 27.903320, 29.988907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597813, 27.862701, 29.825768>,  <30.815586, 27.838331, 29.727884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597813, 27.862701, 29.825768>,  <30.234858, 27.903320, 29.988907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597813, 27.862701, 29.825768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035974, 0.948050, -0.316080,
		0.418756, 0.301479, 0.856594,
		0.907386, -0.101546, -0.407847,
		30.870028, 27.832237, 29.703413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686890, 28.516996, 30.202492>,  <30.234858, 27.903320, 29.988907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686890, 28.516996, 30.202492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.894175, 28.382866, 29.887783>,  <31.018545, 28.302387, 29.698957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.894175, 28.382866, 29.887783>,  <30.686890, 28.516996, 30.202492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894175, 28.382866, 29.887783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054062, 0.930935, -0.361161,
		0.853542, 0.144623, 0.500549,
		0.518211, -0.335327, -0.786774,
		31.049639, 28.282269, 29.651751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330029, 28.945408, 30.159973>,  <30.686890, 28.516996, 30.202492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330029, 28.945408, 30.159973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.216145, 28.815327, 29.799267>,  <31.147814, 28.737278, 29.582842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.216145, 28.815327, 29.799267>,  <31.330029, 28.945408, 30.159973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216145, 28.815327, 29.799267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085779, 0.928283, -0.361847,
		0.954768, -0.180374, -0.236397,
		-0.284711, -0.325201, -0.901767,
		31.130732, 28.717766, 29.528736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910027, 29.130352, 29.720995>,  <31.330029, 28.945408, 30.159973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910027, 29.130352, 29.720995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593554, 29.054306, 29.488483>,  <31.403669, 29.008678, 29.348976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593554, 29.054306, 29.488483>,  <31.910027, 29.130352, 29.720995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593554, 29.054306, 29.488483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083683, 0.907861, -0.410835,
		0.605825, -0.373689, -0.702376,
		-0.791184, -0.190117, -0.581277,
		31.356197, 28.997271, 29.314100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068226, 29.242859, 29.145102>,  <31.910027, 29.130352, 29.720995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068226, 29.242859, 29.145102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.679285, 29.262573, 29.053806>,  <31.445919, 29.274403, 28.999029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.679285, 29.262573, 29.053806>,  <32.068226, 29.242859, 29.145102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679285, 29.262573, 29.053806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158556, 0.856929, -0.490440,
		0.171413, -0.513072, -0.841056,
		-0.972357, 0.049287, -0.228240,
		31.387579, 29.277359, 28.985334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039284, 29.373535, 28.484894>,  <32.068226, 29.242859, 29.145102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039284, 29.373535, 28.484894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668602, 29.480793, 28.590206>,  <31.446194, 29.545149, 28.653395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668602, 29.480793, 28.590206>,  <32.039284, 29.373535, 28.484894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668602, 29.480793, 28.590206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124526, 0.880139, -0.458092,
		-0.354561, -0.391730, -0.849020,
		-0.926704, 0.268146, 0.263282,
		31.390591, 29.561237, 28.669191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734112, 29.569069, 27.814802>,  <32.039284, 29.373535, 28.484894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734112, 29.569069, 27.814802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521009, 29.736874, 28.108791>,  <31.393148, 29.837557, 28.285185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521009, 29.736874, 28.108791>,  <31.734112, 29.569069, 27.814802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521009, 29.736874, 28.108791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035646, 0.878837, -0.475789,
		-0.845518, -0.227280, -0.483159,
		-0.532755, 0.419511, 0.734971,
		31.361183, 29.862726, 28.329283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550835, 29.071379, 27.272785>,  <31.734112, 29.569069, 27.814802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550835, 29.071379, 27.272785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640911, 28.918179, 26.914433>,  <31.694958, 28.826258, 26.699421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640911, 28.918179, 26.914433>,  <31.550835, 29.071379, 27.272785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640911, 28.918179, 26.914433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309875, -0.843599, 0.438540,
		-0.923724, -0.376366, -0.071289,
		0.225191, -0.383000, -0.895880,
		31.708467, 28.803278, 26.645668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259018, 28.477867, 27.298952>,  <31.550835, 29.071379, 27.272785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259018, 28.477867, 27.298952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507256, 28.439068, 26.987709>,  <31.656199, 28.415789, 26.800962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507256, 28.439068, 26.987709>,  <31.259018, 28.477867, 27.298952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507256, 28.439068, 26.987709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162110, -0.955011, 0.248344,
		-0.767190, -0.280260, -0.576951,
		0.620595, -0.096997, -0.778108,
		31.693434, 28.409969, 26.754276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018539, 27.862589, 26.895052>,  <31.259018, 28.477867, 27.298952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018539, 27.862589, 26.895052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.408188, 27.911728, 26.819164>,  <31.641977, 27.941212, 26.773632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.408188, 27.911728, 26.819164>,  <31.018539, 27.862589, 26.895052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408188, 27.911728, 26.819164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156339, -0.972423, 0.173068,
		-0.163229, -0.198250, -0.966464,
		0.974123, 0.122847, -0.189721,
		31.700424, 27.948582, 26.762247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117474, 27.217733, 26.635698>,  <31.018539, 27.862589, 26.895052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117474, 27.217733, 26.635698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.470573, 27.376865, 26.735683>,  <31.682434, 27.472345, 26.795675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.470573, 27.376865, 26.735683>,  <31.117474, 27.217733, 26.635698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470573, 27.376865, 26.735683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389044, -0.917208, 0.085876,
		0.263432, 0.021440, -0.964440,
		0.882750, 0.397832, 0.249963,
		31.735399, 27.496216, 26.810673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561892, 26.816181, 26.217920>,  <31.117474, 27.217733, 26.635698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561892, 26.816181, 26.217920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777296, 26.949154, 26.527630>,  <31.906538, 27.028938, 26.713455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777296, 26.949154, 26.527630>,  <31.561892, 26.816181, 26.217920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777296, 26.949154, 26.527630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193637, -0.943117, 0.270249,
		0.820069, 0.004396, -0.572248,
		0.538509, 0.332431, 0.774272,
		31.938848, 27.048883, 26.759911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290703, 26.371716, 26.182940>,  <31.561892, 26.816181, 26.217920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290703, 26.371716, 26.182940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218388, 26.539162, 26.538933>,  <32.174999, 26.639629, 26.752529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218388, 26.539162, 26.538933>,  <32.290703, 26.371716, 26.182940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218388, 26.539162, 26.538933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111967, -0.890254, 0.441488,
		0.977127, 0.179466, 0.114079,
		-0.180791, 0.418617, 0.889985,
		32.164150, 26.664747, 26.805929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792385, 26.001463, 26.550785>,  <32.290703, 26.371716, 26.182940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792385, 26.001463, 26.550785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541119, 26.154480, 26.821804>,  <32.390358, 26.246290, 26.984415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541119, 26.154480, 26.821804>,  <32.792385, 26.001463, 26.550785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541119, 26.154480, 26.821804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197155, -0.764120, 0.614208,
		0.752690, 0.519404, 0.404570,
		-0.628162, 0.382545, 0.677549,
		32.352669, 26.269243, 27.025068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227074, 26.042381, 27.145491>,  <32.792385, 26.001463, 26.550785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227074, 26.042381, 27.145491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853107, 26.051968, 27.287113>,  <32.628727, 26.057720, 27.372086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853107, 26.051968, 27.287113>,  <33.227074, 26.042381, 27.145491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853107, 26.051968, 27.287113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250388, -0.662455, 0.706016,
		0.251466, 0.748718, 0.613340,
		-0.934918, 0.023966, 0.354055,
		32.572632, 26.059158, 27.393330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244160, 26.006962, 27.920975>,  <33.227074, 26.042381, 27.145491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244160, 26.006962, 27.920975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864704, 25.902515, 27.849537>,  <32.637032, 25.839848, 27.806675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864704, 25.902515, 27.849537>,  <33.244160, 26.006962, 27.920975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864704, 25.902515, 27.849537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019214, -0.611055, 0.791355,
		-0.315767, 0.747281, 0.584689,
		-0.948642, -0.261118, -0.178593,
		32.580112, 25.824181, 27.795959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970860, 25.775452, 28.558519>,  <33.244160, 26.006962, 27.920975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970860, 25.775452, 28.558519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.693470, 25.629662, 28.309921>,  <32.527039, 25.542189, 28.160763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.693470, 25.629662, 28.309921>,  <32.970860, 25.775452, 28.558519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693470, 25.629662, 28.309921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177325, -0.749735, 0.637538,
		-0.698323, 0.552320, 0.455288,
		-0.693470, -0.364473, -0.621497,
		32.485428, 25.520319, 28.123472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526730, 25.438072, 29.043236>,  <32.970860, 25.775452, 28.558519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526730, 25.438072, 29.043236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469101, 25.250244, 28.694813>,  <32.434525, 25.137547, 28.485758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469101, 25.250244, 28.694813>,  <32.526730, 25.438072, 29.043236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469101, 25.250244, 28.694813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059106, -0.882755, 0.466101,
		-0.987800, 0.015669, 0.154938,
		-0.144075, -0.469572, -0.871059,
		32.425877, 25.109373, 28.433495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993376, 24.915073, 29.216166>,  <32.526730, 25.438072, 29.043236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993376, 24.915073, 29.216166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146832, 24.804203, 28.863804>,  <32.238903, 24.737680, 28.652386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146832, 24.804203, 28.863804>,  <31.993376, 24.915073, 29.216166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146832, 24.804203, 28.863804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115041, -0.960808, 0.252215,
		-0.916289, 0.004580, -0.400491,
		0.383640, -0.277175, -0.880906,
		32.261925, 24.721050, 28.599531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553413, 24.331657, 28.993521>,  <31.993376, 24.915073, 29.216166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553413, 24.331657, 28.993521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908869, 24.322254, 28.810318>,  <32.122143, 24.316612, 28.700396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908869, 24.322254, 28.810318>,  <31.553413, 24.331657, 28.993521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908869, 24.322254, 28.810318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037165, -0.991709, 0.123012,
		-0.457102, -0.126335, -0.880396,
		0.888638, -0.023509, -0.458007,
		32.175461, 24.315201, 28.672916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494373, 23.918560, 28.462210>,  <31.553413, 24.331657, 28.993521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494373, 23.918560, 28.462210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882002, 23.919811, 28.560913>,  <32.114578, 23.920561, 28.620134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882002, 23.919811, 28.560913>,  <31.494373, 23.918560, 28.462210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882002, 23.919811, 28.560913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045840, -0.980236, 0.192445,
		0.242481, -0.197805, -0.949777,
		0.969073, 0.003126, 0.246756,
		32.172722, 23.920750, 28.634939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257589, 23.524334, 27.793341>,  <31.494373, 23.918560, 28.462210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257589, 23.524334, 27.793341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051876, 23.253757, 27.582458>,  <30.928448, 23.091412, 27.455929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051876, 23.253757, 27.582458>,  <31.257589, 23.524334, 27.793341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051876, 23.253757, 27.582458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534471, 0.733546, -0.419822,
		0.670712, 0.065868, -0.738787,
		-0.514282, -0.676440, -0.527203,
		30.897591, 23.050825, 27.424297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306440, 23.735723, 27.137598>,  <31.257589, 23.524334, 27.793341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306440, 23.735723, 27.137598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.979431, 23.505665, 27.149364>,  <30.783226, 23.367630, 27.156424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.979431, 23.505665, 27.149364>,  <31.306440, 23.735723, 27.137598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979431, 23.505665, 27.149364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535062, 0.739667, -0.408169,
		0.212999, -0.349427, -0.912432,
		-0.817521, -0.575147, 0.029417,
		30.734175, 23.333120, 27.158190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076498, 23.660198, 26.430649>,  <31.306440, 23.735723, 27.137598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076498, 23.660198, 26.430649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745602, 23.554047, 26.628738>,  <30.547064, 23.490355, 26.747593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745602, 23.554047, 26.628738>,  <31.076498, 23.660198, 26.430649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745602, 23.554047, 26.628738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558942, 0.478261, -0.677385,
		-0.057082, -0.837162, -0.543968,
		-0.827240, -0.265380, 0.495226,
		30.497429, 23.474432, 26.777306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642975, 23.436874, 25.923216>,  <31.076498, 23.660198, 26.430649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642975, 23.436874, 25.923216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.415916, 23.532021, 26.238480>,  <30.279680, 23.589109, 26.427637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.415916, 23.532021, 26.238480>,  <30.642975, 23.436874, 25.923216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415916, 23.532021, 26.238480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567315, 0.580743, -0.583860,
		-0.596599, -0.778561, -0.194711,
		-0.567648, 0.237868, 0.788160,
		30.245623, 23.603380, 26.474928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920218, 23.332788, 25.706930>,  <30.642975, 23.436874, 25.923216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920218, 23.332788, 25.706930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927130, 23.575485, 26.024815>,  <29.931278, 23.721104, 26.215546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927130, 23.575485, 26.024815>,  <29.920218, 23.332788, 25.706930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927130, 23.575485, 26.024815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667854, 0.598520, -0.442431,
		-0.744092, -0.523105, 0.415558,
		0.017282, 0.606741, 0.794711,
		29.932314, 23.757507, 26.263227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220217, 23.583195, 25.742588>,  <29.920218, 23.332788, 25.706930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220217, 23.583195, 25.742588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.422361, 23.838039, 25.975380>,  <29.543648, 23.990946, 26.115055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.422361, 23.838039, 25.975380>,  <29.220217, 23.583195, 25.742588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422361, 23.838039, 25.975380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631876, 0.732534, -0.253235,
		-0.587657, -0.239763, 0.772770,
		0.505363, 0.637109, 0.581979,
		29.573971, 24.029173, 26.149973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755110, 24.030972, 26.106178>,  <29.220217, 23.583195, 25.742588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755110, 24.030972, 26.106178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094034, 24.243252, 26.114399>,  <29.297388, 24.370621, 26.119331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094034, 24.243252, 26.114399>,  <28.755110, 24.030972, 26.106178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094034, 24.243252, 26.114399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471935, 0.770106, -0.429202,
		-0.243607, 0.353966, 0.902975,
		0.847309, 0.530702, 0.020554,
		29.348227, 24.402462, 26.120565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487356, 24.673410, 26.336210>,  <28.755110, 24.030972, 26.106178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487356, 24.673410, 26.336210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843349, 24.738739, 26.165913>,  <29.056946, 24.777937, 26.063734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843349, 24.738739, 26.165913>,  <28.487356, 24.673410, 26.336210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843349, 24.738739, 26.165913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377523, 0.787556, -0.487065,
		0.255748, 0.594207, 0.762568,
		0.889983, 0.163321, -0.425743,
		29.110344, 24.787735, 26.038189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728527, 25.375349, 26.487160>,  <28.487356, 24.673410, 26.336210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728527, 25.375349, 26.487160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.854158, 25.240814, 26.132030>,  <28.929537, 25.160093, 25.918953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.854158, 25.240814, 26.132030>,  <28.728527, 25.375349, 26.487160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854158, 25.240814, 26.132030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330563, 0.837890, -0.434360,
		0.889990, 0.429905, 0.151985,
		0.314080, -0.336335, -0.887824,
		28.948383, 25.139914, 25.865683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288992, 25.806736, 26.179714>,  <28.728527, 25.375349, 26.487160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288992, 25.806736, 26.179714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.125460, 25.609634, 25.872456>,  <29.027340, 25.491373, 25.688101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.125460, 25.609634, 25.872456>,  <29.288992, 25.806736, 26.179714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125460, 25.609634, 25.872456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291180, 0.868142, -0.401925,
		0.864906, 0.059343, -0.498414,
		-0.408842, -0.492756, -0.768141,
		29.002810, 25.461807, 25.642012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583736, 26.136703, 25.598438>,  <29.288992, 25.806736, 26.179714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583736, 26.136703, 25.598438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.262503, 25.941563, 25.461586>,  <29.069763, 25.824478, 25.379475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.262503, 25.941563, 25.461586>,  <29.583736, 26.136703, 25.598438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262503, 25.941563, 25.461586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224867, 0.779852, -0.584179,
		0.551805, -0.392212, -0.735990,
		-0.803085, -0.487853, -0.342131,
		29.021578, 25.795206, 25.358946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673458, 26.191704, 25.020054>,  <29.583736, 26.136703, 25.598438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673458, 26.191704, 25.020054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.280743, 26.133606, 25.069035>,  <29.045113, 26.098747, 25.098423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.280743, 26.133606, 25.069035>,  <29.673458, 26.191704, 25.020054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280743, 26.133606, 25.069035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187347, 0.847080, -0.497350,
		-0.031489, -0.511234, -0.858865,
		-0.981789, -0.145245, 0.122452,
		28.986206, 26.090033, 25.105770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345081, 26.330252, 24.388517>,  <29.673458, 26.191704, 25.020054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345081, 26.330252, 24.388517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.042675, 26.349270, 24.649647>,  <28.861231, 26.360682, 24.806324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.042675, 26.349270, 24.649647>,  <29.345081, 26.330252, 24.388517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042675, 26.349270, 24.649647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249153, 0.901374, -0.354186,
		-0.605280, -0.430423, -0.669606,
		-0.756015, 0.047548, 0.652825,
		28.815870, 26.363535, 24.845493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861326, 26.504026, 23.963690>,  <29.345081, 26.330252, 24.388517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861326, 26.504026, 23.963690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.685663, 26.600941, 24.309738>,  <28.580265, 26.659088, 24.517368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.685663, 26.600941, 24.309738>,  <28.861326, 26.504026, 23.963690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685663, 26.600941, 24.309738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520983, 0.715828, -0.464938,
		-0.731927, -0.654896, -0.188135,
		-0.439158, 0.242285, 0.865123,
		28.553915, 26.673626, 24.569275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.766396, 24.708616, 29.444172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132454, 24.618343, 29.310558>,  <39.352089, 24.564180, 29.230391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132454, 24.618343, 29.310558>,  <38.766396, 24.708616, 29.444172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132454, 24.618343, 29.310558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002276, 0.831490, -0.555536,
		0.403122, 0.507634, 0.761446,
		0.915143, -0.225682, -0.334036,
		39.406998, 24.550638, 29.210348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180382, 25.284319, 29.557497>,  <38.766396, 24.708616, 29.444172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180382, 25.284319, 29.557497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387638, 25.094563, 29.272827>,  <39.511993, 24.980709, 29.102026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387638, 25.094563, 29.272827>,  <39.180382, 25.284319, 29.557497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387638, 25.094563, 29.272827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165137, 0.871912, -0.460977,
		0.839200, 0.121329, 0.530115,
		0.518144, -0.474393, -0.711673,
		39.543079, 24.952244, 29.059326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829025, 25.602337, 29.497295>,  <39.180382, 25.284319, 29.557497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829025, 25.602337, 29.497295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.775036, 25.427582, 29.141563>,  <39.742641, 25.322729, 28.928123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.775036, 25.427582, 29.141563>,  <39.829025, 25.602337, 29.497295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775036, 25.427582, 29.141563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327575, 0.827402, -0.456180,
		0.935134, -0.352897, 0.031432,
		-0.134978, -0.436886, -0.889332,
		39.734543, 25.296516, 28.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476425, 25.617895, 29.056976>,  <39.829025, 25.602337, 29.497295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476425, 25.617895, 29.056976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175518, 25.540726, 28.804985>,  <39.994972, 25.494425, 28.653791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175518, 25.540726, 28.804985>,  <40.476425, 25.617895, 29.056976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175518, 25.540726, 28.804985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222880, 0.825281, -0.518880,
		0.620012, -0.530747, -0.577835,
		-0.752270, -0.192924, -0.629977,
		39.949837, 25.482849, 28.615992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764854, 25.657671, 28.386484>,  <40.476425, 25.617895, 29.056976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764854, 25.657671, 28.386484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.377655, 25.672546, 28.287209>,  <40.145336, 25.681473, 28.227644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.377655, 25.672546, 28.287209>,  <40.764854, 25.657671, 28.386484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377655, 25.672546, 28.287209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214803, 0.634177, -0.742751,
		0.129772, -0.772293, -0.621870,
		-0.967998, 0.037191, -0.248189,
		40.087257, 25.683704, 28.212751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706436, 25.506681, 27.650152>,  <40.764854, 25.657671, 28.386484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706436, 25.506681, 27.650152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378704, 25.715385, 27.745201>,  <40.182064, 25.840607, 27.802231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378704, 25.715385, 27.745201>,  <40.706436, 25.506681, 27.650152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378704, 25.715385, 27.745201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251048, 0.699124, -0.669477,
		-0.515433, -0.488869, -0.703801,
		-0.819331, 0.521759, 0.237622,
		40.132904, 25.871914, 27.816488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367283, 25.806894, 27.028570>,  <40.706436, 25.506681, 27.650152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367283, 25.806894, 27.028570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.253979, 26.043137, 27.330814>,  <40.185997, 26.184881, 27.512161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.253979, 26.043137, 27.330814>,  <40.367283, 25.806894, 27.028570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253979, 26.043137, 27.330814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162462, 0.806044, -0.569121,
		-0.945182, -0.038452, -0.324273,
		-0.283262, 0.590604, 0.755612,
		40.168999, 26.220318, 27.557497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921181, 26.243196, 26.672899>,  <40.367283, 25.806894, 27.028570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921181, 26.243196, 26.672899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.965153, 26.448246, 27.013519>,  <39.991535, 26.571276, 27.217892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.965153, 26.448246, 27.013519>,  <39.921181, 26.243196, 26.672899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965153, 26.448246, 27.013519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237210, 0.845515, -0.478368,
		-0.965218, -0.149409, 0.214548,
		0.109931, 0.512622, 0.851548,
		39.998131, 26.602034, 27.268984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379837, 26.743704, 26.756397>,  <39.921181, 26.243196, 26.672899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379837, 26.743704, 26.756397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650818, 26.870754, 27.021778>,  <39.813408, 26.946985, 27.181005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650818, 26.870754, 27.021778>,  <39.379837, 26.743704, 26.756397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650818, 26.870754, 27.021778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087133, 0.930265, -0.356392,
		-0.730384, 0.183632, 0.657890,
		0.677457, 0.317627, 0.663450,
		39.854053, 26.966042, 27.220814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157234, 27.410271, 26.972523>,  <39.379837, 26.743704, 26.756397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157234, 27.410271, 26.972523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537506, 27.416332, 27.096447>,  <39.765667, 27.419970, 27.170801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537506, 27.416332, 27.096447>,  <39.157234, 27.410271, 26.972523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537506, 27.416332, 27.096447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101006, 0.929240, -0.355402,
		-0.293274, 0.369165, 0.881877,
		0.950678, 0.015155, 0.309810,
		39.822708, 27.420879, 27.189390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214130, 28.021687, 27.324463>,  <39.157234, 27.410271, 26.972523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214130, 28.021687, 27.324463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.600193, 27.931637, 27.271111>,  <39.831829, 27.877607, 27.239100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.600193, 27.931637, 27.271111>,  <39.214130, 28.021687, 27.324463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600193, 27.931637, 27.271111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176610, 0.936557, -0.302769,
		0.193079, 0.268664, 0.943684,
		0.965158, -0.225122, -0.133381,
		39.889740, 27.864100, 27.231096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652740, 28.546417, 27.715055>,  <39.214130, 28.021687, 27.324463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652740, 28.546417, 27.715055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826778, 28.370964, 27.400528>,  <39.931202, 28.265692, 27.211811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826778, 28.370964, 27.400528>,  <39.652740, 28.546417, 27.715055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826778, 28.370964, 27.400528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086754, 0.889672, -0.448283,
		0.896196, 0.126829, 0.425143,
		0.435093, -0.438632, -0.786318,
		39.957306, 28.239374, 27.164633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391865, 28.753605, 27.646877>,  <39.652740, 28.546417, 27.715055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391865, 28.753605, 27.646877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240871, 28.642128, 27.293644>,  <40.150276, 28.575241, 27.081705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240871, 28.642128, 27.293644>,  <40.391865, 28.753605, 27.646877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240871, 28.642128, 27.293644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375230, 0.825801, -0.421015,
		0.846585, -0.490286, -0.207154,
		-0.377486, -0.278695, -0.883082,
		40.127625, 28.558519, 27.028719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815247, 29.087442, 27.230934>,  <40.391865, 28.753605, 27.646877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815247, 29.087442, 27.230934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534645, 28.982891, 26.965733>,  <40.366283, 28.920160, 26.806612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534645, 28.982891, 26.965733>,  <40.815247, 29.087442, 27.230934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534645, 28.982891, 26.965733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008608, 0.933355, -0.358851,
		0.712615, -0.246028, -0.657001,
		-0.701503, -0.261378, -0.663005,
		40.324196, 28.904478, 26.766830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972599, 29.400789, 26.601355>,  <40.815247, 29.087442, 27.230934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972599, 29.400789, 26.601355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595100, 29.298260, 26.517796>,  <40.368599, 29.236742, 26.467661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595100, 29.298260, 26.517796>,  <40.972599, 29.400789, 26.601355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595100, 29.298260, 26.517796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073914, 0.779292, -0.622287,
		0.322297, -0.571842, -0.754401,
		-0.943749, -0.256322, -0.208896,
		40.311977, 29.221363, 26.455126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919823, 29.470108, 25.877928>,  <40.972599, 29.400789, 26.601355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919823, 29.470108, 25.877928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.553947, 29.532139, 26.027222>,  <40.334423, 29.569357, 26.116798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.553947, 29.532139, 26.027222>,  <40.919823, 29.470108, 25.877928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553947, 29.532139, 26.027222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075293, 0.841914, -0.534333,
		-0.397096, -0.516848, -0.758408,
		-0.914683, 0.155079, 0.373235,
		40.279541, 29.578663, 26.139193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689899, 29.842098, 25.297756>,  <40.919823, 29.470108, 25.877928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689899, 29.842098, 25.297756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431389, 29.893505, 25.598637>,  <40.276283, 29.924349, 25.779165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431389, 29.893505, 25.598637>,  <40.689899, 29.842098, 25.297756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431389, 29.893505, 25.598637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322915, 0.847054, -0.422167,
		-0.691412, -0.515734, -0.505932,
		-0.646278, 0.128518, 0.752202,
		40.237507, 29.932060, 25.824297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098999, 29.954247, 24.930500>,  <40.689899, 29.842098, 25.297756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098999, 29.954247, 24.930500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.066940, 30.094410, 25.303764>,  <40.047707, 30.178507, 25.527723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.066940, 30.094410, 25.303764>,  <40.098999, 29.954247, 24.930500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066940, 30.094410, 25.303764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246181, 0.900215, -0.359177,
		-0.965905, -0.258513, 0.014117,
		-0.080143, 0.350406, 0.933162,
		40.042896, 30.199532, 25.583714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451969, 30.196089, 24.969732>,  <40.098999, 29.954247, 24.930500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451969, 30.196089, 24.969732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.613838, 30.373627, 25.289543>,  <39.710960, 30.480150, 25.481430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.613838, 30.373627, 25.289543>,  <39.451969, 30.196089, 24.969732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613838, 30.373627, 25.289543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363833, 0.880279, -0.304523,
		-0.838967, -0.167662, 0.517709,
		0.404671, 0.443845, 0.799526,
		39.735241, 30.506781, 25.529402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951912, 30.603683, 25.241892>,  <39.451969, 30.196089, 24.969732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951912, 30.603683, 25.241892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.276669, 30.779095, 25.396049>,  <39.471523, 30.884342, 25.488544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.276669, 30.779095, 25.396049>,  <38.951912, 30.603683, 25.241892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276669, 30.779095, 25.396049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351955, 0.894339, -0.276197,
		-0.465794, 0.088599, 0.880446,
		0.811889, 0.438529, 0.385395,
		39.520237, 30.910654, 25.511667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687531, 31.183519, 25.702723>,  <38.951912, 30.603683, 25.241892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687531, 31.183519, 25.702723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070858, 31.265003, 25.622597>,  <39.300854, 31.313894, 25.574522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070858, 31.265003, 25.622597>,  <38.687531, 31.183519, 25.702723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070858, 31.265003, 25.622597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218685, 0.974218, -0.055469,
		0.183850, 0.096962, 0.978160,
		0.958319, 0.203711, -0.200314,
		39.358353, 31.326117, 25.562502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143337, 31.147116, 25.046305>,  <38.687531, 31.183519, 25.702723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143337, 31.147116, 25.046305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748783, 31.210201, 25.064953>,  <37.512051, 31.248053, 25.076141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748783, 31.210201, 25.064953>,  <38.143337, 31.147116, 25.046305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748783, 31.210201, 25.064953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079774, -0.706727, 0.702975,
		0.143818, 0.689683, 0.709685,
		-0.986383, 0.157715, 0.046621,
		37.452869, 31.257515, 25.078939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958458, 31.383348, 25.794800>,  <38.143337, 31.147116, 25.046305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958458, 31.383348, 25.794800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.667027, 31.200935, 25.590366>,  <37.492168, 31.091488, 25.467707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.667027, 31.200935, 25.590366>,  <37.958458, 31.383348, 25.794800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667027, 31.200935, 25.590366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117100, -0.652237, 0.748916,
		-0.674877, 0.605493, 0.421805,
		-0.728580, -0.456033, -0.511083,
		37.448452, 31.064125, 25.437042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454353, 31.202158, 26.244072>,  <37.958458, 31.383348, 25.794800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454353, 31.202158, 26.244072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.336803, 30.999657, 25.919765>,  <37.266273, 30.878157, 25.725182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.336803, 30.999657, 25.919765>,  <37.454353, 31.202158, 26.244072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336803, 30.999657, 25.919765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191591, -0.799810, 0.568856,
		-0.936444, 0.322511, 0.138054,
		-0.293879, -0.506251, -0.810768,
		37.248638, 30.847782, 25.676535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789032, 30.819223, 26.401968>,  <37.454353, 31.202158, 26.244072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789032, 30.819223, 26.401968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.965389, 30.649097, 26.085812>,  <37.071205, 30.547022, 25.896118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.965389, 30.649097, 26.085812>,  <36.789032, 30.819223, 26.401968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965389, 30.649097, 26.085812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135520, -0.902051, 0.409803,
		-0.887271, -0.073564, -0.455344,
		0.440890, -0.425315, -0.790394,
		37.097656, 30.521503, 25.848694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289997, 30.212408, 26.154631>,  <36.789032, 30.819223, 26.401968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289997, 30.212408, 26.154631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.661636, 30.129757, 26.031937>,  <36.884621, 30.080166, 25.958321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.661636, 30.129757, 26.031937>,  <36.289997, 30.212408, 26.154631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661636, 30.129757, 26.031937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042779, -0.883849, 0.465813,
		-0.367355, -0.419663, -0.830020,
		0.929097, -0.206626, -0.306733,
		36.940365, 30.067770, 25.939917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302536, 29.546846, 25.886868>,  <36.289997, 30.212408, 26.154631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302536, 29.546846, 25.886868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.688499, 29.598694, 25.978210>,  <36.920078, 29.629803, 26.033016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.688499, 29.598694, 25.978210>,  <36.302536, 29.546846, 25.886868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688499, 29.598694, 25.978210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038392, -0.929965, 0.365638,
		0.259759, -0.344041, -0.902309,
		0.964910, 0.129619, 0.228358,
		36.977974, 29.637579, 26.046719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584816, 28.851990, 25.808676>,  <36.302536, 29.546846, 25.886868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584816, 28.851990, 25.808676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872219, 29.062149, 25.990971>,  <37.044662, 29.188246, 26.100348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872219, 29.062149, 25.990971>,  <36.584816, 28.851990, 25.808676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872219, 29.062149, 25.990971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295178, -0.823666, 0.484195,
		0.629771, -0.213376, -0.746899,
		0.718511, 0.525400, 0.455737,
		37.087772, 29.219769, 26.127691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194538, 28.576672, 25.854761>,  <36.584816, 28.851990, 25.808676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194538, 28.576672, 25.854761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.240410, 28.829166, 26.161587>,  <37.267933, 28.980663, 26.345682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.240410, 28.829166, 26.161587>,  <37.194538, 28.576672, 25.854761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240410, 28.829166, 26.161587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209740, -0.770139, 0.602408,
		0.971009, 0.091800, -0.220715,
		0.114681, 0.631236, 0.767066,
		37.274815, 29.018538, 26.391706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728245, 28.313862, 26.218002>,  <37.194538, 28.576672, 25.854761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728245, 28.313862, 26.218002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522728, 28.553978, 26.463169>,  <37.399418, 28.698048, 26.610270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522728, 28.553978, 26.463169>,  <37.728245, 28.313862, 26.218002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522728, 28.553978, 26.463169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239363, -0.585755, 0.774336,
		0.823846, 0.544559, 0.157269,
		-0.513793, 0.600289, 0.612919,
		37.368591, 28.734064, 26.647045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176857, 28.333139, 26.809877>,  <37.728245, 28.313862, 26.218002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176857, 28.333139, 26.809877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.840832, 28.481411, 26.968315>,  <37.639217, 28.570374, 27.063377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.840832, 28.481411, 26.968315>,  <38.176857, 28.333139, 26.809877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840832, 28.481411, 26.968315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122186, -0.582096, 0.803887,
		0.528550, 0.723713, 0.443705,
		-0.840063, 0.370680, 0.396095,
		37.588814, 28.592615, 27.087143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307922, 28.485594, 27.453150>,  <38.176857, 28.333139, 26.809877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307922, 28.485594, 27.453150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.910946, 28.440018, 27.434933>,  <37.672760, 28.412672, 27.424004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.910946, 28.440018, 27.434933>,  <38.307922, 28.485594, 27.453150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910946, 28.440018, 27.434933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033205, -0.606671, 0.794259,
		-0.118128, 0.786745, 0.605870,
		-0.992443, -0.113942, -0.045542,
		37.613213, 28.405834, 27.421270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996914, 28.676760, 28.131603>,  <38.307922, 28.485594, 27.453150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996914, 28.676760, 28.131603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.736404, 28.439186, 27.942677>,  <37.580097, 28.296642, 27.829321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.736404, 28.439186, 27.942677>,  <37.996914, 28.676760, 28.131603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736404, 28.439186, 27.942677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129339, -0.526431, 0.840322,
		-0.747738, 0.608370, 0.266032,
		-0.651275, -0.593933, -0.472319,
		37.541023, 28.261005, 27.800982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510174, 28.447754, 28.607880>,  <37.996914, 28.676760, 28.131603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510174, 28.447754, 28.607880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.419277, 28.164925, 28.340027>,  <37.364738, 27.995228, 28.179316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.419277, 28.164925, 28.340027>,  <37.510174, 28.447754, 28.607880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419277, 28.164925, 28.340027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144961, -0.655402, 0.741238,
		-0.962989, 0.265511, 0.046437,
		-0.227242, -0.707073, -0.669634,
		37.351105, 27.952803, 28.139137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793262, 28.210623, 28.830357>,  <37.510174, 28.447754, 28.607880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793262, 28.210623, 28.830357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.978367, 27.922401, 28.623802>,  <37.089428, 27.749468, 28.499870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.978367, 27.922401, 28.623802>,  <36.793262, 28.210623, 28.830357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978367, 27.922401, 28.623802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157825, -0.640171, 0.751846,
		-0.872320, -0.266427, -0.409968,
		0.462762, -0.720554, -0.516385,
		37.117195, 27.706236, 28.468887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489479, 27.602047, 28.981779>,  <36.793262, 28.210623, 28.830357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489479, 27.602047, 28.981779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.832439, 27.459801, 28.832970>,  <37.038216, 27.374453, 28.743683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.832439, 27.459801, 28.832970>,  <36.489479, 27.602047, 28.981779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832439, 27.459801, 28.832970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000077, -0.722783, 0.691075,
		-0.514649, -0.592557, -0.619688,
		0.857401, -0.355613, -0.372025,
		37.089661, 27.353117, 28.721361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372269, 26.924990, 28.887974>,  <36.489479, 27.602047, 28.981779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372269, 26.924990, 28.887974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771835, 26.930374, 28.870186>,  <37.011578, 26.933605, 28.859514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771835, 26.930374, 28.870186>,  <36.372269, 26.924990, 28.887974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771835, 26.930374, 28.870186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033021, -0.878977, 0.475719,
		-0.032683, -0.476674, -0.878472,
		0.998920, 0.013460, -0.044468,
		37.071510, 26.934412, 28.856846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538956, 26.266201, 28.644882>,  <36.372269, 26.924990, 28.887974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538956, 26.266201, 28.644882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840691, 26.422569, 28.855843>,  <37.021732, 26.516390, 28.982418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840691, 26.422569, 28.855843>,  <36.538956, 26.266201, 28.644882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840691, 26.422569, 28.855843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019203, -0.789890, 0.612948,
		0.656202, -0.472499, -0.588339,
		0.754341, 0.390920, 0.527401,
		37.066994, 26.539845, 29.014063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950012, 25.721661, 28.692648>,  <36.538956, 26.266201, 28.644882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950012, 25.721661, 28.692648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.054924, 25.977291, 28.981865>,  <37.117870, 26.130669, 29.155396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.054924, 25.977291, 28.981865>,  <36.950012, 25.721661, 28.692648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054924, 25.977291, 28.981865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184316, -0.768656, 0.612532,
		0.947226, -0.027387, -0.319395,
		0.262281, 0.639076, 0.723043,
		37.133610, 26.169014, 29.198778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533653, 25.496040, 28.972485>,  <36.950012, 25.721661, 28.692648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533653, 25.496040, 28.972485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.352489, 25.720196, 29.249855>,  <37.243793, 25.854689, 29.416277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.352489, 25.720196, 29.249855>,  <37.533653, 25.496040, 28.972485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352489, 25.720196, 29.249855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290655, -0.642470, 0.709050,
		0.842849, 0.522681, 0.128099,
		-0.452907, 0.560390, 0.693426,
		37.216618, 25.888313, 29.457882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984684, 25.299738, 29.480194>,  <37.533653, 25.496040, 28.972485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984684, 25.299738, 29.480194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.676228, 25.483051, 29.656975>,  <37.491154, 25.593039, 29.763044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.676228, 25.483051, 29.656975>,  <37.984684, 25.299738, 29.480194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676228, 25.483051, 29.656975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111427, -0.586303, 0.802392,
		0.626842, 0.668000, 0.401055,
		-0.771138, 0.458284, 0.441953,
		37.444885, 25.620537, 29.789560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180103, 25.609917, 30.164650>,  <37.984684, 25.299738, 29.480194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180103, 25.609917, 30.164650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.786472, 25.540028, 30.177708>,  <37.550293, 25.498095, 30.185543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.786472, 25.540028, 30.177708>,  <38.180103, 25.609917, 30.164650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786472, 25.540028, 30.177708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135949, -0.621548, 0.771490,
		-0.114504, 0.763643, 0.635404,
		-0.984077, -0.174721, 0.032646,
		37.491249, 25.487612, 30.187502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.183603, 23.362932, 27.885939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.480761, 23.497658, 28.117340>,  <28.659054, 23.578493, 28.256182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.480761, 23.497658, 28.117340>,  <28.183603, 23.362932, 27.885939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480761, 23.497658, 28.117340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182419, -0.729634, 0.659058,
		0.644077, -0.595139, -0.480598,
		0.742892, 0.336814, 0.578505,
		28.703629, 23.598701, 28.290892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655191, 22.850439, 28.037628>,  <28.183603, 23.362932, 27.885939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655191, 22.850439, 28.037628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.670635, 23.128910, 28.324360>,  <28.679901, 23.295992, 28.496399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.670635, 23.128910, 28.324360>,  <28.655191, 22.850439, 28.037628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670635, 23.128910, 28.324360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049327, -0.717820, 0.694479,
		0.998036, 0.008545, -0.062056,
		0.038611, 0.696177, 0.716832,
		28.682219, 23.337763, 28.539410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394129, 22.867922, 28.348400>,  <28.655191, 22.850439, 28.037628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394129, 22.867922, 28.348400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.143372, 23.016300, 28.622452>,  <28.992916, 23.105328, 28.786882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.143372, 23.016300, 28.622452>,  <29.394129, 22.867922, 28.348400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143372, 23.016300, 28.622452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347669, -0.653776, 0.672089,
		0.697230, 0.659527, 0.280882,
		-0.626894, 0.370947, 0.685129,
		28.955303, 23.127584, 28.827991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781239, 22.994965, 28.867895>,  <29.394129, 22.867922, 28.348400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781239, 22.994965, 28.867895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.411282, 22.947971, 29.012547>,  <29.189308, 22.919775, 29.099337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.411282, 22.947971, 29.012547>,  <29.781239, 22.994965, 28.867895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411282, 22.947971, 29.012547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300468, -0.808658, 0.505758,
		0.233016, 0.576429, 0.783220,
		-0.924890, -0.117483, 0.361629,
		29.133814, 22.912727, 29.121035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886698, 22.671013, 29.571728>,  <29.781239, 22.994965, 28.867895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886698, 22.671013, 29.571728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.498234, 22.616245, 29.493652>,  <29.265156, 22.583385, 29.446806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.498234, 22.616245, 29.493652>,  <29.886698, 22.671013, 29.571728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498234, 22.616245, 29.493652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011500, -0.844619, 0.535244,
		-0.238146, 0.517564, 0.821836,
		-0.971161, -0.136917, -0.195191,
		29.206886, 22.575171, 29.435095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594997, 22.448870, 30.296989>,  <29.886698, 22.671013, 29.571728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594997, 22.448870, 30.296989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.352556, 22.347752, 29.995331>,  <29.207092, 22.287081, 29.814337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.352556, 22.347752, 29.995331>,  <29.594997, 22.448870, 30.296989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352556, 22.347752, 29.995331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136822, -0.900879, 0.411943,
		-0.783529, 0.352864, 0.511438,
		-0.606104, -0.252793, -0.754145,
		29.170725, 22.271914, 29.769087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054901, 22.293356, 30.682674>,  <29.594997, 22.448870, 30.296989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054901, 22.293356, 30.682674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041224, 22.123531, 30.320774>,  <29.033016, 22.021637, 30.103634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041224, 22.123531, 30.320774>,  <29.054901, 22.293356, 30.682674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041224, 22.123531, 30.320774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198889, -0.884284, 0.422474,
		-0.979425, 0.194392, -0.054203,
		-0.034195, -0.424562, -0.904753,
		29.030966, 21.996162, 30.049349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344547, 21.938986, 30.519567>,  <29.054901, 22.293356, 30.682674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344547, 21.938986, 30.519567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.617424, 21.777069, 30.276009>,  <28.781151, 21.679920, 30.129873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.617424, 21.777069, 30.276009>,  <28.344547, 21.938986, 30.519567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617424, 21.777069, 30.276009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186998, -0.901666, 0.389911,
		-0.706854, -0.152133, -0.690806,
		0.682195, -0.404790, -0.608897,
		28.822083, 21.655632, 30.093340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052795, 21.255573, 30.291809>,  <28.344547, 21.938986, 30.519567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052795, 21.255573, 30.291809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.447157, 21.228592, 30.230564>,  <28.683773, 21.212402, 30.193817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.447157, 21.228592, 30.230564>,  <28.052795, 21.255573, 30.291809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447157, 21.228592, 30.230564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002437, -0.920820, 0.389980,
		-0.167296, -0.384109, -0.908005,
		0.985904, -0.067455, -0.153113,
		28.742928, 21.208355, 30.184629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218592, 20.573210, 30.120796>,  <28.052795, 21.255573, 30.291809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218592, 20.573210, 30.120796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.586327, 20.715427, 30.188213>,  <28.806967, 20.800758, 30.228662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.586327, 20.715427, 30.188213>,  <28.218592, 20.573210, 30.120796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586327, 20.715427, 30.188213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285023, -0.897065, 0.337693,
		0.271257, -0.262416, -0.926044,
		0.919337, 0.355546, 0.168540,
		28.862127, 20.822090, 30.238775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717119, 20.087658, 29.906073>,  <28.218592, 20.573210, 30.120796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717119, 20.087658, 29.906073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926146, 20.290073, 30.180546>,  <29.051561, 20.411524, 30.345230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926146, 20.290073, 30.180546>,  <28.717119, 20.087658, 29.906073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926146, 20.290073, 30.180546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273046, -0.861755, 0.427580,
		0.807696, -0.036077, -0.588494,
		0.522564, 0.506041, 0.686185,
		29.082914, 20.441885, 30.386402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355528, 19.681463, 29.991234>,  <28.717119, 20.087658, 29.906073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355528, 19.681463, 29.991234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.335827, 19.945503, 30.291058>,  <29.324005, 20.103928, 30.470951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.335827, 19.945503, 30.291058>,  <29.355528, 19.681463, 29.991234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335827, 19.945503, 30.291058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156457, -0.736107, 0.658535,
		0.986456, 0.149710, -0.067021,
		-0.049254, 0.660101, 0.749560,
		29.321051, 20.143534, 30.515926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958290, 19.577724, 30.399311>,  <29.355528, 19.681463, 29.991234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958290, 19.577724, 30.399311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.666487, 19.747707, 30.613686>,  <29.491405, 19.849697, 30.742310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.666487, 19.747707, 30.613686>,  <29.958290, 19.577724, 30.399311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666487, 19.747707, 30.613686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011449, -0.791041, 0.611655,
		0.683876, 0.440071, 0.581937,
		-0.729508, 0.424959, 0.535936,
		29.447634, 19.875195, 30.774466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482277, 18.981520, 30.538473>,  <29.958290, 19.577724, 30.399311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482277, 18.981520, 30.538473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873999, 18.990776, 30.458050>,  <31.109032, 18.996330, 30.409796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873999, 18.990776, 30.458050>,  <30.482277, 18.981520, 30.538473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873999, 18.990776, 30.458050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178377, 0.370632, 0.911490,
		0.095609, -0.928491, 0.358835,
		0.979306, 0.023138, -0.201057,
		31.167791, 18.997717, 30.397732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076836, 18.990919, 30.895823>,  <30.482277, 18.981520, 30.538473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076836, 18.990919, 30.895823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439041, 19.118534, 30.783920>,  <31.656364, 19.195103, 30.716780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439041, 19.118534, 30.783920>,  <31.076836, 18.990919, 30.895823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439041, 19.118534, 30.783920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399544, 0.419102, -0.815303,
		-0.142866, 0.850041, 0.506971,
		0.905513, 0.319036, -0.279753,
		31.710695, 19.214245, 30.699995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071566, 19.778915, 30.731569>,  <31.076836, 18.990919, 30.895823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071566, 19.778915, 30.731569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355896, 19.565521, 30.548214>,  <31.526493, 19.437485, 30.438200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355896, 19.565521, 30.548214>,  <31.071566, 19.778915, 30.731569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355896, 19.565521, 30.548214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130284, 0.540561, -0.831156,
		0.691198, 0.650527, 0.314739,
		0.710825, -0.533487, -0.458388,
		31.569143, 19.405476, 30.410698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424894, 20.279739, 30.395321>,  <31.071566, 19.778915, 30.731569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424894, 20.279739, 30.395321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.556684, 19.949123, 30.212769>,  <31.635757, 19.750753, 30.103237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.556684, 19.949123, 30.212769>,  <31.424894, 20.279739, 30.395321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556684, 19.949123, 30.212769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054946, 0.499334, -0.864665,
		0.942564, 0.259809, 0.209933,
		0.329474, -0.826538, -0.456379,
		31.655527, 19.701162, 30.075855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946346, 20.486988, 29.937338>,  <31.424894, 20.279739, 30.395321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946346, 20.486988, 29.937338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838865, 20.126862, 29.800385>,  <31.774378, 19.910786, 29.718212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838865, 20.126862, 29.800385>,  <31.946346, 20.486988, 29.937338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838865, 20.126862, 29.800385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101992, 0.380052, -0.919325,
		0.957809, -0.212103, -0.193946,
		-0.268701, -0.900318, -0.342384,
		31.758255, 19.856766, 29.697670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419315, 20.350517, 29.406408>,  <31.946346, 20.486988, 29.937338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419315, 20.350517, 29.406408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116512, 20.101295, 29.327679>,  <31.934830, 19.951763, 29.280441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116512, 20.101295, 29.327679>,  <32.419315, 20.350517, 29.406408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116512, 20.101295, 29.327679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066879, 0.225760, -0.971884,
		0.649970, -0.748891, -0.129234,
		-0.757011, -0.623053, -0.196823,
		31.889408, 19.914379, 29.268631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589375, 20.044201, 28.863342>,  <32.419315, 20.350517, 29.406408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589375, 20.044201, 28.863342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191444, 20.004379, 28.855301>,  <31.952686, 19.980486, 28.850475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191444, 20.004379, 28.855301>,  <32.589375, 20.044201, 28.863342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191444, 20.004379, 28.855301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036715, 0.537057, -0.842746,
		0.094697, -0.837650, -0.537935,
		-0.994829, -0.099556, -0.020103,
		31.892996, 19.974512, 28.849270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483311, 19.975075, 28.167892>,  <32.589375, 20.044201, 28.863342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483311, 19.975075, 28.167892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134689, 20.080433, 28.333309>,  <31.925516, 20.143648, 28.432558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134689, 20.080433, 28.333309>,  <32.483311, 19.975075, 28.167892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134689, 20.080433, 28.333309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178339, 0.615364, -0.767803,
		-0.456714, -0.742933, -0.489349,
		-0.871555, 0.263396, 0.413540,
		31.873222, 20.159452, 28.457371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967800, 20.070129, 27.600767>,  <32.483311, 19.975075, 28.167892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967800, 20.070129, 27.600767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797197, 20.263424, 27.906597>,  <31.694836, 20.379400, 28.090096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797197, 20.263424, 27.906597>,  <31.967800, 20.070129, 27.600767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797197, 20.263424, 27.906597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191092, 0.778095, -0.598375,
		-0.884068, -0.401315, -0.239519,
		-0.426505, 0.483234, 0.764577,
		31.669245, 20.408394, 28.135971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373089, 20.314480, 27.273264>,  <31.967800, 20.070129, 27.600767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373089, 20.314480, 27.273264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420649, 20.515125, 27.616016>,  <31.449184, 20.635511, 27.821669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420649, 20.515125, 27.616016>,  <31.373089, 20.314480, 27.273264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420649, 20.515125, 27.616016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234908, 0.852716, -0.466577,
		-0.964718, -0.145813, 0.219219,
		0.118899, 0.501612, 0.856883,
		31.456318, 20.665609, 27.873081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814651, 20.655012, 27.407648>,  <31.373089, 20.314480, 27.273264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814651, 20.655012, 27.407648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.095604, 20.857231, 27.608082>,  <31.264175, 20.978563, 27.728342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.095604, 20.857231, 27.608082>,  <30.814651, 20.655012, 27.407648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095604, 20.857231, 27.608082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433410, 0.862170, -0.262331,
		-0.564640, -0.032918, 0.824681,
		0.702380, 0.505548, 0.501083,
		31.306318, 21.008896, 27.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488319, 21.133242, 27.910595>,  <30.814651, 20.655012, 27.407648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488319, 21.133242, 27.910595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855743, 21.266338, 27.825241>,  <31.076197, 21.346195, 27.774029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855743, 21.266338, 27.825241>,  <30.488319, 21.133242, 27.910595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855743, 21.266338, 27.825241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373028, 0.908267, -0.189475,
		0.130764, 0.253642, 0.958419,
		0.918559, 0.332740, -0.213385,
		31.131311, 21.366161, 27.761225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476734, 21.766418, 28.202957>,  <30.488319, 21.133242, 27.910595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476734, 21.766418, 28.202957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818098, 21.807770, 27.998604>,  <31.022917, 21.832581, 27.875992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818098, 21.807770, 27.998604>,  <30.476734, 21.766418, 28.202957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818098, 21.807770, 27.998604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306052, 0.892771, -0.330595,
		0.421926, 0.438490, 0.793539,
		0.853411, 0.103378, -0.510884,
		31.074121, 21.838783, 27.845339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710293, 22.473787, 28.412634>,  <30.476734, 21.766418, 28.202957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710293, 22.473787, 28.412634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901571, 22.387386, 28.072124>,  <31.016338, 22.335546, 27.867819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901571, 22.387386, 28.072124>,  <30.710293, 22.473787, 28.412634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901571, 22.387386, 28.072124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211430, 0.912463, -0.350297,
		0.852422, 0.347497, 0.390669,
		0.478198, -0.216002, -0.851275,
		31.045031, 22.322586, 27.816742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118479, 23.007553, 28.319553>,  <30.710293, 22.473787, 28.412634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118479, 23.007553, 28.319553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045502, 22.824368, 27.971535>,  <31.001715, 22.714457, 27.762724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045502, 22.824368, 27.971535>,  <31.118479, 23.007553, 28.319553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045502, 22.824368, 27.971535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392783, 0.845169, -0.362506,
		0.901352, 0.275603, -0.334076,
		-0.182443, -0.457965, -0.870048,
		30.990768, 22.686977, 27.710520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931410, 23.112953, 28.279062>,  <31.118479, 23.007553, 28.319553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931410, 23.112953, 28.279062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184315, 23.309921, 28.518318>,  <32.336056, 23.428102, 28.661871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184315, 23.309921, 28.518318>,  <31.931410, 23.112953, 28.279062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184315, 23.309921, 28.518318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148698, -0.834808, 0.530079,
		0.760352, -0.246206, -0.601038,
		0.632260, 0.492420, 0.598138,
		32.373993, 23.457647, 28.697760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428638, 22.604053, 28.392969>,  <31.931410, 23.112953, 28.279062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428638, 22.604053, 28.392969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476730, 22.866261, 28.691189>,  <32.505585, 23.023584, 28.870121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476730, 22.866261, 28.691189>,  <32.428638, 22.604053, 28.392969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476730, 22.866261, 28.691189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313244, -0.737679, 0.598087,
		0.942032, 0.161633, -0.294026,
		0.120226, 0.655519, 0.745547,
		32.512798, 23.062916, 28.914852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068577, 22.437578, 28.647602>,  <32.428638, 22.604053, 28.392969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068577, 22.437578, 28.647602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848644, 22.610989, 28.933186>,  <32.716682, 22.715034, 29.104536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848644, 22.610989, 28.933186>,  <33.068577, 22.437578, 28.647602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848644, 22.610989, 28.933186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223670, -0.747125, 0.625920,
		0.804770, 0.503843, 0.313827,
		-0.549834, 0.433528, 0.713959,
		32.683693, 22.741047, 29.147373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445808, 22.330217, 29.182550>,  <33.068577, 22.437578, 28.647602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445808, 22.330217, 29.182550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096210, 22.429474, 29.349667>,  <32.886452, 22.489029, 29.449936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096210, 22.429474, 29.349667>,  <33.445808, 22.330217, 29.182550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096210, 22.429474, 29.349667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151414, -0.677908, 0.719385,
		0.461735, 0.692001, 0.554919,
		-0.873999, 0.248143, 0.417792,
		32.834011, 22.503916, 29.475004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559792, 22.487322, 29.911007>,  <33.445808, 22.330217, 29.182550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559792, 22.487322, 29.911007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169727, 22.412346, 29.863811>,  <32.935688, 22.367361, 29.835495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169727, 22.412346, 29.863811>,  <33.559792, 22.487322, 29.911007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169727, 22.412346, 29.863811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046961, -0.695589, 0.716903,
		-0.216448, 0.693557, 0.687116,
		-0.975164, -0.187440, -0.117989,
		32.877178, 22.356113, 29.828415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277794, 22.538307, 30.633392>,  <33.559792, 22.487322, 29.911007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277794, 22.538307, 30.633392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008987, 22.319698, 30.433506>,  <32.847706, 22.188534, 30.313574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008987, 22.319698, 30.433506>,  <33.277794, 22.538307, 30.633392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008987, 22.319698, 30.433506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097313, -0.734119, 0.672012,
		-0.734119, 0.402971, 0.546520,
		-0.672012, -0.546520, -0.499716,
		32.807384, 22.155743, 30.283590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874283, 22.379185, 31.161518>,  <33.277794, 22.538307, 30.633392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874283, 22.379185, 31.161518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802216, 22.128548, 30.858223>,  <32.758976, 21.978167, 30.676247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802216, 22.128548, 30.858223>,  <32.874283, 22.379185, 31.161518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802216, 22.128548, 30.858223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164609, -0.779187, 0.604791,
		-0.969765, -0.015849, 0.243527,
		-0.180168, -0.626591, -0.758237,
		32.748165, 21.940571, 30.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141747, 22.404596, 31.346508>,  <32.874283, 22.379185, 31.161518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141747, 22.404596, 31.346508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093597, 22.619308, 31.680546>,  <32.064709, 22.748135, 31.880968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093597, 22.619308, 31.680546>,  <32.141747, 22.404596, 31.346508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093597, 22.619308, 31.680546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114671, 0.828060, -0.548788,
		-0.986084, -0.161818, -0.038120,
		-0.120369, 0.536779, 0.835092,
		32.057487, 22.780342, 31.931074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517445, 22.721491, 31.259850>,  <32.141747, 22.404596, 31.346508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517445, 22.721491, 31.259850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711781, 22.921242, 31.546787>,  <31.828382, 23.041092, 31.718950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711781, 22.921242, 31.546787>,  <31.517445, 22.721491, 31.259850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711781, 22.921242, 31.546787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200093, 0.862463, -0.464887,
		-0.850837, 0.082324, 0.518940,
		0.485838, 0.499379, 0.717343,
		31.857533, 23.071056, 31.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107380, 23.245554, 31.598671>,  <31.517445, 22.721491, 31.259850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107380, 23.245554, 31.598671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481726, 23.381344, 31.636440>,  <31.706333, 23.462818, 31.659101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481726, 23.381344, 31.636440>,  <31.107380, 23.245554, 31.598671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481726, 23.381344, 31.636440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271353, 0.865291, -0.421473,
		-0.224782, 0.368820, 0.901912,
		0.935864, 0.339476, 0.094422,
		31.762486, 23.483187, 31.664766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969759, 23.884682, 31.730585>,  <31.107380, 23.245554, 31.598671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969759, 23.884682, 31.730585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365843, 23.894714, 31.675659>,  <31.603493, 23.900734, 31.642704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365843, 23.894714, 31.675659>,  <30.969759, 23.884682, 31.730585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365843, 23.894714, 31.675659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072247, 0.933802, -0.350420,
		0.119433, 0.356910, 0.926472,
		0.990210, 0.025083, -0.137313,
		31.662907, 23.902239, 31.634466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250984, 24.506348, 32.105541>,  <30.969759, 23.884682, 31.730585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250984, 24.506348, 32.105541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509281, 24.407051, 31.816711>,  <31.664259, 24.347473, 31.643414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509281, 24.407051, 31.816711>,  <31.250984, 24.506348, 32.105541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509281, 24.407051, 31.816711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088142, 0.915118, -0.393433,
		0.758452, 0.317701, 0.569048,
		0.645741, -0.248244, -0.722076,
		31.703003, 24.332579, 31.600088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689070, 25.016907, 32.041409>,  <31.250984, 24.506348, 32.105541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689070, 25.016907, 32.041409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727644, 24.853443, 31.678379>,  <31.750790, 24.755365, 31.460560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727644, 24.853443, 31.678379>,  <31.689070, 25.016907, 32.041409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727644, 24.853443, 31.678379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050539, 0.908641, -0.414508,
		0.994055, 0.085842, 0.066974,
		0.096437, -0.408659, -0.907578,
		31.756575, 24.730844, 31.406105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166027, 25.332277, 31.811243>,  <31.689070, 25.016907, 32.041409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166027, 25.332277, 31.811243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941736, 25.205776, 31.505154>,  <31.807161, 25.129875, 31.321499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941736, 25.205776, 31.505154>,  <32.166027, 25.332277, 31.811243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941736, 25.205776, 31.505154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073251, 0.939508, -0.334604,
		0.824755, -0.131568, -0.549972,
		-0.560726, -0.316252, -0.765226,
		31.773518, 25.110901, 31.275585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.166052, 21.328493, 33.350082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.405760, 21.349903, 33.030579>,  <28.549583, 21.362749, 32.838879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.405760, 21.349903, 33.030579>,  <28.166052, 21.328493, 33.350082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405760, 21.349903, 33.030579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611142, 0.675064, -0.413274,
		0.517092, 0.735815, 0.437254,
		0.599268, 0.053524, -0.798758,
		28.585541, 21.365961, 32.790951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448797, 21.991556, 33.309959>,  <28.166052, 21.328493, 33.350082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448797, 21.991556, 33.309959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.414072, 21.826504, 32.947258>,  <28.393236, 21.727472, 32.729637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.414072, 21.826504, 32.947258>,  <28.448797, 21.991556, 33.309959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414072, 21.826504, 32.947258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400382, 0.847896, -0.347516,
		0.912227, 0.332878, -0.238819,
		-0.086814, -0.412632, -0.906751,
		28.388027, 21.702715, 32.675232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812645, 22.315676, 32.850948>,  <28.448797, 21.991556, 33.309959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812645, 22.315676, 32.850948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.567871, 22.138821, 32.588638>,  <28.421007, 22.032707, 32.431252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.567871, 22.138821, 32.588638>,  <28.812645, 22.315676, 32.850948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567871, 22.138821, 32.588638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083819, 0.860733, -0.502108,
		0.786451, -0.252293, -0.563776,
		-0.611938, -0.442139, -0.655778,
		28.384291, 22.006178, 32.391903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054605, 22.473932, 32.221428>,  <28.812645, 22.315676, 32.850948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054605, 22.473932, 32.221428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.677755, 22.384808, 32.121223>,  <28.451645, 22.331333, 32.061100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.677755, 22.384808, 32.121223>,  <29.054605, 22.473932, 32.221428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677755, 22.384808, 32.121223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136985, 0.937818, -0.318955,
		0.306000, -0.266179, -0.914064,
		-0.942125, -0.222813, -0.250509,
		28.395119, 22.317965, 32.046070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958450, 22.773222, 31.584503>,  <29.054605, 22.473932, 32.221428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958450, 22.773222, 31.584503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.581293, 22.708431, 31.700932>,  <28.355000, 22.669558, 31.770788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.581293, 22.708431, 31.700932>,  <28.958450, 22.773222, 31.584503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581293, 22.708431, 31.700932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268249, 0.887276, -0.375212,
		-0.197483, -0.431863, -0.880054,
		-0.942891, -0.161975, 0.291069,
		28.298426, 22.659838, 31.788252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554993, 22.739655, 30.947105>,  <28.958450, 22.773222, 31.584503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554993, 22.739655, 30.947105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.336203, 22.841225, 31.266190>,  <28.204929, 22.902166, 31.457640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.336203, 22.841225, 31.266190>,  <28.554993, 22.739655, 30.947105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336203, 22.841225, 31.266190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218501, 0.876554, -0.428848,
		-0.808131, -0.408869, -0.423969,
		-0.546974, 0.253927, 0.797709,
		28.172110, 22.917402, 31.505503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926292, 23.068148, 30.727242>,  <28.554993, 22.739655, 30.947105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926292, 23.068148, 30.727242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.932255, 23.186409, 31.109314>,  <27.935833, 23.257366, 31.338556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.932255, 23.186409, 31.109314>,  <27.926292, 23.068148, 30.727242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932255, 23.186409, 31.109314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253047, 0.925303, -0.282455,
		-0.967339, -0.237495, 0.088608,
		0.014908, 0.295652, 0.955180,
		27.936728, 23.275105, 31.395868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276558, 23.407190, 30.863819>,  <27.926292, 23.068148, 30.727242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276558, 23.407190, 30.863819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.524021, 23.541126, 31.148113>,  <27.672499, 23.621489, 31.318689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.524021, 23.541126, 31.148113>,  <27.276558, 23.407190, 30.863819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524021, 23.541126, 31.148113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345255, 0.928472, -0.136893,
		-0.705736, -0.160696, 0.690010,
		0.618656, 0.334839, 0.710737,
		27.709618, 23.641579, 31.361334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894417, 23.742933, 31.336651>,  <27.276558, 23.407190, 30.863819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894417, 23.742933, 31.336651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.261570, 23.898479, 31.368324>,  <27.481863, 23.991808, 31.387329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.261570, 23.898479, 31.368324>,  <26.894417, 23.742933, 31.336651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261570, 23.898479, 31.368324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385255, 0.921030, -0.057302,
		-0.095215, 0.022090, 0.995212,
		0.917885, 0.388866, 0.079185,
		27.536936, 24.015139, 31.392080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793180, 24.215660, 31.851143>,  <26.894417, 23.742933, 31.336651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793180, 24.215660, 31.851143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.139561, 24.331409, 31.687977>,  <27.347389, 24.400860, 31.590078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.139561, 24.331409, 31.687977>,  <26.793180, 24.215660, 31.851143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139561, 24.331409, 31.687977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277234, 0.956572, 0.090063,
		0.416260, 0.035098, 0.908568,
		0.865950, 0.289375, -0.407913,
		27.399345, 24.418222, 31.565603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017757, 24.857483, 32.225632>,  <26.793180, 24.215660, 31.851143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017757, 24.857483, 32.225632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.219765, 24.873856, 31.880775>,  <27.340969, 24.883680, 31.673862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.219765, 24.873856, 31.880775>,  <27.017757, 24.857483, 32.225632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219765, 24.873856, 31.880775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159484, 0.986100, -0.046603,
		0.848246, 0.161032, 0.504528,
		0.505019, 0.040933, -0.862137,
		27.371271, 24.886135, 31.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424091, 25.483427, 32.246574>,  <27.017757, 24.857483, 32.225632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424091, 25.483427, 32.246574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.366295, 25.399586, 31.859753>,  <27.331617, 25.349281, 31.627661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.366295, 25.399586, 31.859753>,  <27.424091, 25.483427, 32.246574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366295, 25.399586, 31.859753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196399, 0.963938, -0.179583,
		0.969820, 0.163980, -0.180445,
		-0.144490, -0.209602, -0.967052,
		27.322948, 25.336704, 31.569637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924519, 25.479952, 32.695553>,  <27.424091, 25.483427, 32.246574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924519, 25.479952, 32.695553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.239182, 25.650707, 32.873962>,  <28.427980, 25.753160, 32.981007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.239182, 25.650707, 32.873962>,  <27.924519, 25.479952, 32.695553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239182, 25.650707, 32.873962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325825, -0.900692, 0.287388,
		0.524410, -0.080751, -0.847628,
		0.786659, 0.426888, 0.446021,
		28.475180, 25.778774, 33.007767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517517, 24.995195, 32.558224>,  <27.924519, 25.479952, 32.695553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517517, 24.995195, 32.558224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.570921, 25.213005, 32.889442>,  <28.602964, 25.343691, 33.088173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.570921, 25.213005, 32.889442>,  <28.517517, 24.995195, 32.558224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570921, 25.213005, 32.889442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298416, -0.818841, 0.490354,
		0.945052, 0.181636, -0.271818,
		0.133510, 0.544525, 0.828050,
		28.610973, 25.376362, 33.137859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174088, 24.791876, 32.793949>,  <28.517517, 24.995195, 32.558224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174088, 24.791876, 32.793949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.979742, 24.923805, 33.117714>,  <28.863134, 25.002964, 33.311974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.979742, 24.923805, 33.117714>,  <29.174088, 24.791876, 32.793949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979742, 24.923805, 33.117714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260906, -0.829115, 0.494466,
		0.834184, 0.451425, 0.316785,
		-0.485865, 0.329825, 0.809414,
		28.833982, 25.022753, 33.360538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583941, 24.611383, 33.339043>,  <29.174088, 24.791876, 32.793949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583941, 24.611383, 33.339043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.236691, 24.686726, 33.522728>,  <29.028339, 24.731932, 33.632938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.236691, 24.686726, 33.522728>,  <29.583941, 24.611383, 33.339043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236691, 24.686726, 33.522728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141712, -0.792624, 0.593013,
		0.475682, 0.579887, 0.661406,
		-0.868127, 0.188356, 0.459214,
		28.976252, 24.743233, 33.660492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745573, 24.639256, 34.035439>,  <29.583941, 24.611383, 33.339043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745573, 24.639256, 34.035439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.356537, 24.546757, 34.025707>,  <29.123116, 24.491257, 34.019867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.356537, 24.546757, 34.025707>,  <29.745573, 24.639256, 34.035439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356537, 24.546757, 34.025707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174108, -0.793614, 0.582978,
		-0.154122, 0.562762, 0.812124,
		-0.972591, -0.231247, -0.024332,
		29.064760, 24.477383, 34.018406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583780, 24.459234, 34.784641>,  <29.745573, 24.639256, 34.035439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583780, 24.459234, 34.784641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.287403, 24.321388, 34.554077>,  <29.109577, 24.238682, 34.415741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.287403, 24.321388, 34.554077>,  <29.583780, 24.459234, 34.784641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287403, 24.321388, 34.554077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090300, -0.799383, 0.593998,
		-0.665470, 0.492167, 0.561178,
		-0.740942, -0.344614, -0.576408,
		29.065121, 24.218004, 34.381153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029716, 24.212210, 35.200127>,  <29.583780, 24.459234, 34.784641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029716, 24.212210, 35.200127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.992353, 24.005390, 34.859791>,  <28.969936, 23.881298, 34.655590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.992353, 24.005390, 34.859791>,  <29.029716, 24.212210, 35.200127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992353, 24.005390, 34.859791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011081, -0.855066, 0.518399,
		-0.995566, 0.038994, 0.085598,
		-0.093406, -0.517050, -0.850844,
		28.964333, 23.850275, 34.604538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758076, 23.468306, 35.331264>,  <29.029716, 24.212210, 35.200127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758076, 23.468306, 35.331264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.838100, 23.404087, 34.944649>,  <28.886116, 23.365557, 34.712681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.838100, 23.404087, 34.944649>,  <28.758076, 23.468306, 35.331264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838100, 23.404087, 34.944649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016372, -0.985799, 0.167132,
		-0.979647, -0.049261, -0.194590,
		0.200060, -0.160545, -0.966541,
		28.898119, 23.355923, 34.654686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402967, 22.759111, 35.190960>,  <28.758076, 23.468306, 35.331264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402967, 22.759111, 35.190960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.686913, 22.836391, 34.920029>,  <28.857279, 22.882759, 34.757469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.686913, 22.836391, 34.920029>,  <28.402967, 22.759111, 35.190960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686913, 22.836391, 34.920029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389205, -0.909088, 0.148590,
		-0.587041, -0.369096, -0.720522,
		0.709862, 0.193202, -0.677326,
		28.899872, 22.894352, 34.716831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397181, 22.220057, 34.690987>,  <28.402967, 22.759111, 35.190960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397181, 22.220057, 34.690987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.765917, 22.374977, 34.685238>,  <28.987158, 22.467930, 34.681789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.765917, 22.374977, 34.685238>,  <28.397181, 22.220057, 34.690987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765917, 22.374977, 34.685238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381120, -0.899146, 0.215140,
		0.070403, -0.203801, -0.976478,
		0.921841, 0.387302, -0.014370,
		29.042469, 22.491167, 34.680927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768534, 21.649170, 34.458794>,  <28.397181, 22.220057, 34.690987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768534, 21.649170, 34.458794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048676, 21.894970, 34.604061>,  <29.216761, 22.042450, 34.691223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048676, 21.894970, 34.604061>,  <28.768534, 21.649170, 34.458794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048676, 21.894970, 34.604061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453006, -0.775842, 0.439153,
		0.551621, -0.143045, -0.821737,
		0.700357, 0.614498, 0.363171,
		29.258783, 22.079319, 34.713013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271261, 21.271955, 34.291557>,  <28.768534, 21.649170, 34.458794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271261, 21.271955, 34.291557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.438911, 21.522312, 34.554646>,  <29.539501, 21.672525, 34.712498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.438911, 21.522312, 34.554646>,  <29.271261, 21.271955, 34.291557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438911, 21.522312, 34.554646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589114, -0.738690, 0.327538,
		0.690855, 0.250193, -0.678324,
		0.419124, 0.625891, 0.657720,
		29.564648, 21.710079, 34.751961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056398, 21.250359, 34.163956>,  <29.271261, 21.271955, 34.291557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056398, 21.250359, 34.163956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.947815, 21.349712, 34.535896>,  <29.882666, 21.409325, 34.759060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.947815, 21.349712, 34.535896>,  <30.056398, 21.250359, 34.163956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947815, 21.349712, 34.535896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556301, -0.747898, 0.362186,
		0.785392, 0.615593, 0.064845,
		-0.271456, 0.248384, 0.929848,
		29.866379, 21.424227, 34.814850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586090, 21.393620, 34.528053>,  <30.056398, 21.250359, 34.163956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586090, 21.393620, 34.528053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.330448, 21.269932, 34.809742>,  <30.177063, 21.195719, 34.978756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.330448, 21.269932, 34.809742>,  <30.586090, 21.393620, 34.528053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330448, 21.269932, 34.809742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679238, -0.656451, 0.328188,
		0.360804, 0.688080, 0.629576,
		-0.639106, -0.309220, 0.704221,
		30.138716, 21.177166, 35.021008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123749, 21.110140, 34.179180>,  <30.586090, 21.393620, 34.528053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123749, 21.110140, 34.179180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.509321, 21.011871, 34.138218>,  <31.740664, 20.952909, 34.113640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.509321, 21.011871, 34.138218>,  <31.123749, 21.110140, 34.179180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509321, 21.011871, 34.138218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198528, 0.919906, -0.338170,
		0.177278, 0.305643, 0.935497,
		0.963929, -0.245673, -0.102401,
		31.798500, 20.938169, 34.107498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622694, 21.636597, 34.460114>,  <31.123749, 21.110140, 34.179180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622694, 21.636597, 34.460114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831221, 21.461830, 34.166901>,  <31.956337, 21.356970, 33.990974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831221, 21.461830, 34.166901>,  <31.622694, 21.636597, 34.460114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831221, 21.461830, 34.166901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165892, 0.894490, -0.415171,
		0.837084, 0.094831, 0.538793,
		0.521316, -0.436915, -0.733031,
		31.987616, 21.330755, 33.946991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160919, 22.174757, 34.244209>,  <31.622694, 21.636597, 34.460114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160919, 22.174757, 34.244209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.144516, 21.912754, 33.942406>,  <32.134674, 21.755552, 33.761322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.144516, 21.912754, 33.942406>,  <32.160919, 22.174757, 34.244209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144516, 21.912754, 33.942406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210177, 0.732594, -0.647404,
		0.976803, -0.185131, 0.107623,
		-0.041011, -0.655006, -0.754510,
		32.132214, 21.716251, 33.716053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705437, 22.361336, 33.822971>,  <32.160919, 22.174757, 34.244209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705437, 22.361336, 33.822971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.518833, 22.110039, 33.573917>,  <32.406872, 21.959261, 33.424484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.518833, 22.110039, 33.573917>,  <32.705437, 22.361336, 33.822971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518833, 22.110039, 33.573917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174782, 0.624578, -0.761152,
		0.867074, -0.463913, -0.181568,
		-0.466513, -0.628241, -0.622640,
		32.378880, 21.921566, 33.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113079, 22.376764, 33.162281>,  <32.705437, 22.361336, 33.822971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113079, 22.376764, 33.162281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.758614, 22.227402, 33.052528>,  <32.545937, 22.137783, 32.986675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.758614, 22.227402, 33.052528>,  <33.113079, 22.376764, 33.162281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758614, 22.227402, 33.052528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043098, 0.655988, -0.753540,
		0.461370, -0.655932, -0.597404,
		-0.886160, -0.373407, -0.274383,
		32.492767, 22.115379, 32.970215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096901, 22.243092, 32.473270>,  <33.113079, 22.376764, 33.162281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096901, 22.243092, 32.473270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.705284, 22.293613, 32.537170>,  <32.470314, 22.323927, 32.575508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.705284, 22.293613, 32.537170>,  <33.096901, 22.243092, 32.473270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705284, 22.293613, 32.537170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069910, 0.528308, -0.846169,
		-0.191272, -0.839605, -0.508407,
		-0.979044, 0.126306, 0.159748,
		32.411572, 22.331505, 32.585094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667072, 22.096359, 31.815004>,  <33.096901, 22.243092, 32.473270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667072, 22.096359, 31.815004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.439877, 22.309673, 32.065762>,  <32.303558, 22.437662, 32.216217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.439877, 22.309673, 32.065762>,  <32.667072, 22.096359, 31.815004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439877, 22.309673, 32.065762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151052, 0.681203, -0.716342,
		-0.809056, -0.501568, -0.306363,
		-0.567990, 0.533284, 0.626894,
		32.269478, 22.469658, 32.253830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318504, 21.575930, 31.594429>,  <32.667072, 22.096359, 31.815004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318504, 21.575930, 31.594429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.455971, 21.477539, 31.231907>,  <32.538452, 21.418505, 31.014395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.455971, 21.477539, 31.231907>,  <32.318504, 21.575930, 31.594429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455971, 21.477539, 31.231907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223020, -0.916099, 0.333205,
		-0.912224, -0.316637, -0.259979,
		0.343671, -0.245977, -0.906303,
		32.559071, 21.403746, 30.960016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052868, 20.894291, 31.521893>,  <32.318504, 21.575930, 31.594429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052868, 20.894291, 31.521893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363499, 20.941467, 31.274338>,  <32.549877, 20.969774, 31.125805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363499, 20.941467, 31.274338>,  <32.052868, 20.894291, 31.521893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363499, 20.941467, 31.274338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333847, -0.910106, 0.245466,
		-0.534303, -0.397236, -0.746139,
		0.776574, 0.117943, -0.618888,
		32.596470, 20.976851, 31.088671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118259, 20.286835, 31.337328>,  <32.052868, 20.894291, 31.521893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118259, 20.286835, 31.337328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470211, 20.455696, 31.250053>,  <32.681381, 20.557013, 31.197689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470211, 20.455696, 31.250053>,  <32.118259, 20.286835, 31.337328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470211, 20.455696, 31.250053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473817, -0.814436, 0.334949,
		-0.036298, -0.398094, -0.916626,
		0.879875, 0.422155, -0.218185,
		32.734173, 20.582342, 31.184597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348507, 19.920319, 30.837435>,  <32.118259, 20.286835, 31.337328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348507, 19.920319, 30.837435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645657, 20.101082, 31.034988>,  <32.823944, 20.209539, 31.153521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645657, 20.101082, 31.034988>,  <32.348507, 19.920319, 30.837435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645657, 20.101082, 31.034988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416106, -0.889638, 0.188149,
		0.524404, 0.065737, -0.848929,
		0.742871, 0.451910, 0.493883,
		32.868519, 20.236654, 31.183153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965885, 19.453257, 30.638836>,  <32.348507, 19.920319, 30.837435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965885, 19.453257, 30.638836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.068340, 19.635048, 30.980091>,  <33.129814, 19.744122, 31.184845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.068340, 19.635048, 30.980091>,  <32.965885, 19.453257, 30.638836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068340, 19.635048, 30.980091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440086, -0.840634, 0.315689,
		0.860650, 0.294594, -0.415326,
		0.256137, 0.454477, 0.853138,
		33.145180, 19.771391, 31.236032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545254, 19.198481, 30.739965>,  <32.965885, 19.453257, 30.638836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545254, 19.198481, 30.739965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.499702, 19.365387, 31.100613>,  <33.472370, 19.465530, 31.317001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.499702, 19.365387, 31.100613>,  <33.545254, 19.198481, 30.739965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499702, 19.365387, 31.100613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413124, -0.805451, 0.424943,
		0.903526, 0.420875, -0.080656,
		-0.113883, 0.417268, 0.901620,
		33.465538, 19.490568, 31.371099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184299, 19.029047, 31.098461>,  <33.545254, 19.198481, 30.739965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184299, 19.029047, 31.098461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.932419, 19.119499, 31.395741>,  <33.781292, 19.173771, 31.574108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.932419, 19.119499, 31.395741>,  <34.184299, 19.029047, 31.098461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932419, 19.119499, 31.395741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396197, -0.729434, 0.557632,
		0.668212, 0.645593, 0.369732,
		-0.629699, 0.226130, 0.743199,
		33.743507, 19.187338, 31.618700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616810, 19.195759, 31.790689>,  <34.184299, 19.029047, 31.098461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616810, 19.195759, 31.790689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.240082, 19.106808, 31.891502>,  <34.014046, 19.053436, 31.951990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.240082, 19.106808, 31.891502>,  <34.616810, 19.195759, 31.790689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240082, 19.106808, 31.891502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332332, -0.728305, 0.599273,
		0.050292, 0.648167, 0.759836,
		-0.941821, -0.222379, 0.252035,
		33.957535, 19.040094, 31.967113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648563, 19.074734, 32.535542>,  <34.616810, 19.195759, 31.790689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648563, 19.074734, 32.535542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328796, 18.894924, 32.376110>,  <34.136936, 18.787039, 32.280453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328796, 18.894924, 32.376110>,  <34.648563, 19.074734, 32.535542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328796, 18.894924, 32.376110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237041, -0.845617, 0.478272,
		-0.552038, 0.287859, 0.782554,
		-0.799416, -0.449522, -0.398578,
		34.088970, 18.760067, 32.256538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.548561, 32.286289, 25.112080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502506, 31.952747, 24.896145>,  <28.474873, 31.752621, 24.766584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502506, 31.952747, 24.896145>,  <28.548561, 32.286289, 25.112080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502506, 31.952747, 24.896145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903708, -0.313537, 0.291559,
		-0.412378, -0.454284, 0.789665,
		-0.115139, -0.833859, -0.539835,
		28.467964, 31.702589, 24.734194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976992, 31.883751, 25.387356>,  <28.548561, 32.286289, 25.112080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976992, 31.883751, 25.387356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885353, 31.656490, 25.071198>,  <28.830370, 31.520134, 24.881502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885353, 31.656490, 25.071198>,  <28.976992, 31.883751, 25.387356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885353, 31.656490, 25.071198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677058, -0.676398, 0.289963,
		-0.699363, -0.468713, 0.539629,
		-0.229095, -0.568149, -0.790394,
		28.816626, 31.486046, 24.834080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860590, 31.229317, 25.614714>,  <28.976992, 31.883751, 25.387356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860590, 31.229317, 25.614714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934441, 31.173065, 25.225636>,  <28.978752, 31.139315, 24.992189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934441, 31.173065, 25.225636>,  <28.860590, 31.229317, 25.614714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934441, 31.173065, 25.225636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654678, -0.720563, 0.228440,
		-0.733014, -0.678979, -0.040970,
		0.184627, -0.140627, -0.972696,
		28.989828, 31.130877, 24.933826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778093, 30.580229, 25.465742>,  <28.860590, 31.229317, 25.614714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778093, 30.580229, 25.465742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047297, 30.727356, 25.209064>,  <29.208818, 30.815632, 25.055058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047297, 30.727356, 25.209064>,  <28.778093, 30.580229, 25.465742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047297, 30.727356, 25.209064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613733, -0.761906, 0.206956,
		-0.412787, -0.533111, -0.738512,
		0.673007, 0.367820, -0.641693,
		29.249199, 30.837702, 25.016556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012362, 29.990931, 25.289036>,  <28.778093, 30.580229, 25.465742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012362, 29.990931, 25.289036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276794, 30.257839, 25.151794>,  <29.435453, 30.417984, 25.069450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276794, 30.257839, 25.151794>,  <29.012362, 29.990931, 25.289036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276794, 30.257839, 25.151794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747876, -0.549175, 0.372945,
		0.060431, -0.503147, -0.862085,
		0.661082, 0.667270, -0.343104,
		29.475119, 30.458021, 25.048862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553391, 29.594181, 24.927992>,  <29.012362, 29.990931, 25.289036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553391, 29.594181, 24.927992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731133, 29.941490, 25.016220>,  <29.837778, 30.149876, 25.069157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731133, 29.941490, 25.016220>,  <29.553391, 29.594181, 24.927992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731133, 29.941490, 25.016220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704258, -0.490746, 0.513020,
		0.553685, -0.072624, -0.829554,
		0.444357, 0.868271, 0.220572,
		29.864439, 30.201971, 25.082392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160938, 29.519684, 24.719635>,  <29.553391, 29.594181, 24.927992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160938, 29.519684, 24.719635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172932, 29.804405, 25.000332>,  <30.180128, 29.975237, 25.168749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172932, 29.804405, 25.000332>,  <30.160938, 29.519684, 24.719635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172932, 29.804405, 25.000332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816677, -0.422234, 0.393391,
		0.576315, 0.561300, -0.593973,
		0.029985, 0.711801, 0.701741,
		30.181927, 30.017946, 25.210854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836853, 29.640228, 24.843706>,  <30.160938, 29.519684, 24.719635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836853, 29.640228, 24.843706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674393, 29.829163, 25.156612>,  <30.576916, 29.942522, 25.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674393, 29.829163, 25.156612>,  <30.836853, 29.640228, 24.843706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674393, 29.829163, 25.156612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778271, -0.269827, 0.566999,
		0.478890, 0.839103, -0.258014,
		-0.406151, 0.472335, 0.782267,
		30.552547, 29.970863, 25.391293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370966, 30.042097, 25.052191>,  <30.836853, 29.640228, 24.843706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370966, 30.042097, 25.052191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132063, 29.973503, 25.365593>,  <30.988722, 29.932346, 25.553635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132063, 29.973503, 25.365593>,  <31.370966, 30.042097, 25.052191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132063, 29.973503, 25.365593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774249, -0.378245, 0.507414,
		0.209343, 0.909683, 0.358681,
		-0.597256, -0.171485, 0.783504,
		30.952887, 29.922058, 25.600645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821465, 30.054834, 25.558865>,  <31.370966, 30.042097, 25.052191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821465, 30.054834, 25.558865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502022, 29.882896, 25.727371>,  <31.310356, 29.779734, 25.828474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502022, 29.882896, 25.727371>,  <31.821465, 30.054834, 25.558865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502022, 29.882896, 25.727371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598651, -0.495196, 0.629601,
		-0.062021, 0.754993, 0.652793,
		-0.798605, -0.429844, 0.421266,
		31.262440, 29.753942, 25.853750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913883, 30.030212, 26.298140>,  <31.821465, 30.054834, 25.558865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913883, 30.030212, 26.298140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652124, 29.734795, 26.233250>,  <31.495070, 29.557545, 26.194317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652124, 29.734795, 26.233250>,  <31.913883, 30.030212, 26.298140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652124, 29.734795, 26.233250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556613, -0.615708, 0.557750,
		-0.511805, 0.274695, 0.814001,
		-0.654398, -0.738544, -0.162223,
		31.455805, 29.513231, 26.184582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640774, 29.732727, 26.886005>,  <31.913883, 30.030212, 26.298140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640774, 29.732727, 26.886005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590151, 29.443707, 26.614151>,  <31.559776, 29.270294, 26.451038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590151, 29.443707, 26.614151>,  <31.640774, 29.732727, 26.886005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590151, 29.443707, 26.614151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501102, -0.637863, 0.584831,
		-0.856084, -0.266552, 0.442798,
		-0.126557, -0.722552, -0.679634,
		31.552183, 29.226940, 26.410261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149305, 30.005760, 27.501778>,  <31.640774, 29.732727, 26.886005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149305, 30.005760, 27.501778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223402, 30.163506, 27.861813>,  <31.267860, 30.258154, 28.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223402, 30.163506, 27.861813>,  <31.149305, 30.005760, 27.501778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223402, 30.163506, 27.861813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045746, 0.911488, -0.408774,
		-0.981628, 0.116898, 0.150804,
		0.185241, 0.394365, 0.900090,
		31.278975, 30.281815, 28.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866486, 30.697453, 27.486979>,  <31.149305, 30.005760, 27.501778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866486, 30.697453, 27.486979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101881, 30.704018, 27.810314>,  <31.243118, 30.707956, 28.004314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101881, 30.704018, 27.810314>,  <30.866486, 30.697453, 27.486979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101881, 30.704018, 27.810314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225310, 0.956859, -0.183457,
		-0.776476, 0.290089, 0.559404,
		0.588490, 0.016410, 0.808338,
		31.278427, 30.708941, 28.052816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726692, 31.337374, 27.732527>,  <30.866486, 30.697453, 27.486979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726692, 31.337374, 27.732527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064293, 31.221832, 27.913292>,  <31.266853, 31.152508, 28.021751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064293, 31.221832, 27.913292>,  <30.726692, 31.337374, 27.732527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064293, 31.221832, 27.913292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318947, 0.947719, 0.010090,
		-0.431199, 0.135620, 0.892006,
		0.844002, -0.288854, 0.451911,
		31.317493, 31.135176, 28.048864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910082, 31.859482, 28.161713>,  <30.726692, 31.337374, 27.732527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910082, 31.859482, 28.161713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259911, 31.668228, 28.129444>,  <31.469809, 31.553476, 28.110083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259911, 31.668228, 28.129444>,  <30.910082, 31.859482, 28.161713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259911, 31.668228, 28.129444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459401, 0.870283, -0.177648,
		0.155148, 0.118305, 0.980782,
		0.874574, -0.478134, -0.080673,
		31.522284, 31.524788, 28.105242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421457, 32.301620, 28.489153>,  <30.910082, 31.859482, 28.161713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421457, 32.301620, 28.489153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614662, 32.064129, 28.231724>,  <31.730585, 31.921635, 28.077267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614662, 32.064129, 28.231724>,  <31.421457, 32.301620, 28.489153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614662, 32.064129, 28.231724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530241, 0.783241, -0.324619,
		0.696809, -0.184454, 0.693134,
		0.483014, -0.593725, -0.643575,
		31.759565, 31.886011, 28.038651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205772, 32.339794, 28.550732>,  <31.421457, 32.301620, 28.489153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205772, 32.339794, 28.550732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149090, 32.168556, 28.193710>,  <32.115078, 32.065815, 27.979498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149090, 32.168556, 28.193710>,  <32.205772, 32.339794, 28.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149090, 32.168556, 28.193710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584010, 0.691866, -0.424562,
		0.799281, -0.581426, 0.151967,
		-0.141710, -0.428095, -0.892554,
		32.106575, 32.040127, 27.925943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861385, 32.284908, 28.267092>,  <32.205772, 32.339794, 28.550732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861385, 32.284908, 28.267092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576740, 32.293911, 27.986206>,  <32.405952, 32.299313, 27.817675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576740, 32.293911, 27.986206>,  <32.861385, 32.284908, 28.267092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576740, 32.293911, 27.986206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496189, 0.723706, -0.479631,
		0.497400, -0.689741, -0.526166,
		-0.711611, 0.022510, -0.702213,
		32.363258, 32.300663, 27.775541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297329, 32.235390, 27.630201>,  <32.861385, 32.284908, 28.267092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297329, 32.235390, 27.630201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938457, 32.383701, 27.534206>,  <32.723137, 32.472691, 27.476608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938457, 32.383701, 27.534206>,  <33.297329, 32.235390, 27.630201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938457, 32.383701, 27.534206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441262, 0.729052, -0.523230,
		-0.019041, -0.575328, -0.817701,
		-0.897176, 0.370783, -0.239989,
		32.669304, 32.494938, 27.462210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440174, 32.358212, 26.910801>,  <33.297329, 32.235390, 27.630201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440174, 32.358212, 26.910801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124706, 32.569763, 27.036209>,  <32.935425, 32.696693, 27.111454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124706, 32.569763, 27.036209>,  <33.440174, 32.358212, 26.910801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124706, 32.569763, 27.036209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397950, 0.827825, -0.395401,
		-0.468659, -0.187074, -0.863344,
		-0.788666, 0.528876, 0.313521,
		32.888107, 32.728424, 27.130266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204578, 32.752258, 26.354254>,  <33.440174, 32.358212, 26.910801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204578, 32.752258, 26.354254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065361, 32.953220, 26.670849>,  <32.981831, 33.073799, 26.860806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065361, 32.953220, 26.670849>,  <33.204578, 32.752258, 26.354254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065361, 32.953220, 26.670849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230557, 0.864214, -0.447188,
		-0.908686, 0.026844, -0.416616,
		-0.348041, 0.502408, 0.791488,
		32.960949, 33.103943, 26.908295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845058, 33.321884, 26.083658>,  <33.204578, 32.752258, 26.354254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845058, 33.321884, 26.083658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888630, 33.441475, 26.462868>,  <32.914772, 33.513229, 26.690393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888630, 33.441475, 26.462868>,  <32.845058, 33.321884, 26.083658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888630, 33.441475, 26.462868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110297, 0.951445, -0.287380,
		-0.987912, -0.073261, 0.136614,
		0.108928, 0.298974, 0.948024,
		32.921307, 33.531166, 26.747274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285217, 33.907574, 26.306524>,  <32.845058, 33.321884, 26.083658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285217, 33.907574, 26.306524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577011, 33.950943, 26.576664>,  <32.752087, 33.976963, 26.738749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577011, 33.950943, 26.576664>,  <32.285217, 33.907574, 26.306524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577011, 33.950943, 26.576664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015470, 0.989719, -0.142186,
		-0.683824, 0.093274, 0.723660,
		0.729483, 0.108425, 0.675351,
		32.795856, 33.983471, 26.779270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063515, 34.202011, 26.826046>,  <32.285217, 33.907574, 26.306524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063515, 34.202011, 26.826046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457531, 34.269573, 26.839695>,  <32.693939, 34.310112, 26.847883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457531, 34.269573, 26.839695>,  <32.063515, 34.202011, 26.826046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457531, 34.269573, 26.839695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165270, 0.982092, -0.090444,
		-0.048786, 0.083452, 0.995317,
		0.985041, 0.168909, 0.034121,
		32.753044, 34.320248, 26.849932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266293, 34.736149, 27.380268>,  <32.063515, 34.202011, 26.826046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266293, 34.736149, 27.380268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539192, 34.705200, 27.089462>,  <32.702930, 34.686630, 26.914978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539192, 34.705200, 27.089462>,  <32.266293, 34.736149, 27.380268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539192, 34.705200, 27.089462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084128, 0.979471, -0.183190,
		0.726264, 0.186144, 0.661734,
		0.682249, -0.077374, -0.727014,
		32.743866, 34.681988, 26.871359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805628, 35.273029, 27.710304>,  <32.266293, 34.736149, 27.380268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805628, 35.273029, 27.710304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546610, 35.464428, 27.947533>,  <31.391199, 35.579266, 28.089869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546610, 35.464428, 27.947533>,  <31.805628, 35.273029, 27.710304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546610, 35.464428, 27.947533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039910, -0.798504, 0.600665,
		0.760982, 0.365288, 0.536164,
		-0.647544, 0.478494, 0.593069,
		31.352346, 35.607975, 28.125454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909046, 34.969143, 28.395655>,  <31.805628, 35.273029, 27.710304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909046, 34.969143, 28.395655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529913, 35.096504, 28.389572>,  <31.302433, 35.172920, 28.385921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529913, 35.096504, 28.389572>,  <31.909046, 34.969143, 28.395655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529913, 35.096504, 28.389572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253810, -0.724969, 0.640313,
		0.192852, 0.610770, 0.767964,
		-0.947834, 0.318403, -0.015208,
		31.245564, 35.192024, 28.385010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788830, 35.025352, 29.116629>,  <31.909046, 34.969143, 28.395655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788830, 35.025352, 29.116629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449883, 34.994656, 28.906456>,  <31.246515, 34.976238, 28.780352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449883, 34.994656, 28.906456>,  <31.788830, 35.025352, 29.116629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449883, 34.994656, 28.906456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286280, -0.767361, 0.573761,
		-0.447229, 0.636607, 0.628266,
		-0.847367, -0.076742, -0.525434,
		31.195673, 34.971634, 28.748825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256819, 35.020119, 29.565523>,  <31.788830, 35.025352, 29.116629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256819, 35.020119, 29.565523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100891, 34.850754, 29.238411>,  <31.007334, 34.749134, 29.042145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100891, 34.850754, 29.238411>,  <31.256819, 35.020119, 29.565523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100891, 34.850754, 29.238411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171345, -0.839174, 0.516167,
		-0.904810, 0.341335, 0.254578,
		-0.389821, -0.423412, -0.817778,
		30.983944, 34.723732, 28.993078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673433, 34.586464, 29.834608>,  <31.256819, 35.020119, 29.565523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673433, 34.586464, 29.834608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735462, 34.439442, 29.467815>,  <30.772680, 34.351227, 29.247740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735462, 34.439442, 29.467815>,  <30.673433, 34.586464, 29.834608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735462, 34.439442, 29.467815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315239, -0.898095, 0.306675,
		-0.936257, 0.241512, -0.255138,
		0.155073, -0.367556, -0.916982,
		30.781984, 34.329174, 29.192720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079319, 34.093719, 29.773430>,  <30.673433, 34.586464, 29.834608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079319, 34.093719, 29.773430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368973, 33.983543, 29.520523>,  <30.542765, 33.917439, 29.368778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368973, 33.983543, 29.520523>,  <30.079319, 34.093719, 29.773430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368973, 33.983543, 29.520523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196911, -0.961194, 0.193216,
		-0.660952, -0.015414, -0.750270,
		0.724133, -0.275443, -0.632268,
		30.586212, 33.900909, 29.330843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773975, 33.579285, 29.356277>,  <30.079319, 34.093719, 29.773430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773975, 33.579285, 29.356277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165274, 33.503910, 29.321571>,  <30.400053, 33.458687, 29.300747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165274, 33.503910, 29.321571>,  <29.773975, 33.579285, 29.356277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165274, 33.503910, 29.321571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145142, -0.920522, 0.362731,
		-0.148220, -0.342247, -0.927846,
		0.978246, -0.188433, -0.086765,
		30.458748, 33.447380, 29.295542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700836, 32.909763, 29.105402>,  <29.773975, 33.579285, 29.356277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700836, 32.909763, 29.105402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075062, 32.955044, 29.239208>,  <30.299597, 32.982212, 29.319492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075062, 32.955044, 29.239208>,  <29.700836, 32.909763, 29.105402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075062, 32.955044, 29.239208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020073, -0.928653, 0.370407,
		0.352581, -0.353255, -0.866543,
		0.935566, 0.113205, 0.334516,
		30.355732, 32.989006, 29.339563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989492, 32.284309, 28.888264>,  <29.700836, 32.909763, 29.105402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989492, 32.284309, 28.888264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210127, 32.436890, 29.184978>,  <30.342506, 32.528439, 29.363007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210127, 32.436890, 29.184978>,  <29.989492, 32.284309, 28.888264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210127, 32.436890, 29.184978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016557, -0.884123, 0.466960,
		0.833954, -0.269850, -0.481353,
		0.551585, 0.381454, 0.741786,
		30.375603, 32.551327, 29.407515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548105, 31.730967, 28.931105>,  <29.989492, 32.284309, 28.888264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548105, 31.730967, 28.931105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534800, 31.928059, 29.278923>,  <30.526815, 32.046314, 29.487614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534800, 31.928059, 29.278923>,  <30.548105, 31.730967, 28.931105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534800, 31.928059, 29.278923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070147, -0.869034, 0.489755,
		0.996982, -0.044705, 0.063472,
		-0.033265, 0.492729, 0.869547,
		30.524820, 32.075878, 29.539787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987665, 31.372009, 29.344357>,  <30.548105, 31.730967, 28.931105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987665, 31.372009, 29.344357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763128, 31.582275, 29.600033>,  <30.628407, 31.708435, 29.753439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763128, 31.582275, 29.600033>,  <30.987665, 31.372009, 29.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763128, 31.582275, 29.600033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110743, -0.813127, 0.571455,
		0.820140, 0.249997, 0.514658,
		-0.561344, 0.525667, 0.639193,
		30.594725, 31.739975, 29.791790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291340, 31.347496, 30.112040>,  <30.987665, 31.372009, 29.344357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291340, 31.347496, 30.112040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920805, 31.471699, 30.197350>,  <30.698484, 31.546221, 30.248535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920805, 31.471699, 30.197350>,  <31.291340, 31.347496, 30.112040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920805, 31.471699, 30.197350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092329, -0.736054, 0.670597,
		0.365208, 0.601506, 0.710502,
		-0.926336, 0.310507, 0.213277,
		30.642904, 31.564852, 30.261333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138905, 31.306664, 30.828510>,  <31.291340, 31.347496, 30.112040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138905, 31.306664, 30.828510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758537, 31.317795, 30.705235>,  <30.530317, 31.324474, 30.631269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758537, 31.317795, 30.705235>,  <31.138905, 31.306664, 30.828510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758537, 31.317795, 30.705235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211661, -0.785013, 0.582198,
		-0.225731, 0.618854, 0.752373,
		-0.950918, 0.027828, -0.308189,
		30.473263, 31.326143, 30.612778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829008, 31.231337, 31.426310>,  <31.138905, 31.306664, 30.828510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829008, 31.231337, 31.426310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591434, 31.139679, 31.117832>,  <30.448891, 31.084684, 30.932745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591434, 31.139679, 31.117832>,  <30.829008, 31.231337, 31.426310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591434, 31.139679, 31.117832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341112, -0.796427, 0.499346,
		-0.728620, 0.559641, 0.394861,
		-0.593932, -0.229142, -0.771193,
		30.413256, 31.070936, 30.886475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063438, 31.129633, 31.711067>,  <30.829008, 31.231337, 31.426310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063438, 31.129633, 31.711067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095415, 30.947655, 31.356297>,  <30.114601, 30.838469, 31.143435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095415, 30.947655, 31.356297>,  <30.063438, 31.129633, 31.711067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095415, 30.947655, 31.356297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392550, -0.832240, 0.391511,
		-0.916250, 0.316864, -0.245120,
		0.079943, -0.454943, -0.886925,
		30.119398, 30.811172, 31.090219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449715, 30.750353, 31.611977>,  <30.063438, 31.129633, 31.711067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449715, 30.750353, 31.611977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714062, 30.586441, 31.360474>,  <29.872669, 30.488094, 31.209572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714062, 30.586441, 31.360474>,  <29.449715, 30.750353, 31.611977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714062, 30.586441, 31.360474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379504, -0.905241, 0.191091,
		-0.647482, 0.112330, -0.753756,
		0.660865, -0.409782, -0.628757,
		29.912321, 30.463507, 31.171846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127798, 30.274158, 31.154224>,  <29.449715, 30.750353, 31.611977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127798, 30.274158, 31.154224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510456, 30.160961, 31.126686>,  <29.740051, 30.093042, 31.110163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510456, 30.160961, 31.126686>,  <29.127798, 30.274158, 31.154224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510456, 30.160961, 31.126686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283030, -0.959064, 0.009458,
		-0.068705, 0.010438, -0.997582,
		0.956647, -0.282996, -0.068847,
		29.797451, 30.076063, 31.106031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140419, 29.629444, 30.884132>,  <29.127798, 30.274158, 31.154224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140419, 29.629444, 30.884132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490383, 29.616074, 31.077385>,  <29.700361, 29.608051, 31.193336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490383, 29.616074, 31.077385>,  <29.140419, 29.629444, 30.884132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490383, 29.616074, 31.077385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064548, -0.996763, 0.047927,
		0.479967, -0.073117, -0.874234,
		0.874909, -0.033427, 0.483133,
		29.752855, 29.606045, 31.222324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451429, 29.008991, 30.679102>,  <29.140419, 29.629444, 30.884132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451429, 29.008991, 30.679102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640507, 29.087326, 31.022778>,  <29.753954, 29.134327, 31.228983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640507, 29.087326, 31.022778>,  <29.451429, 29.008991, 30.679102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640507, 29.087326, 31.022778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303157, -0.879344, 0.367220,
		0.827439, -0.434052, -0.356292,
		0.472696, 0.195839, 0.859189,
		29.782316, 29.146078, 31.280535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723518, 28.447977, 30.835199>,  <29.451429, 29.008991, 30.679102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723518, 28.447977, 30.835199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709721, 28.660427, 31.173836>,  <29.701443, 28.787897, 31.377018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709721, 28.660427, 31.173836>,  <29.723518, 28.447977, 30.835199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709721, 28.660427, 31.173836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216496, -0.830950, 0.512495,
		0.975674, -0.165606, 0.143649,
		-0.034493, 0.531127, 0.846590,
		29.699373, 28.819765, 31.427813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034235, 28.063944, 31.317942>,  <29.723518, 28.447977, 30.835199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034235, 28.063944, 31.317942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785406, 28.327641, 31.486904>,  <29.636108, 28.485859, 31.588282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785406, 28.327641, 31.486904>,  <30.034235, 28.063944, 31.317942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785406, 28.327641, 31.486904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391653, -0.729157, 0.561193,
		0.677962, 0.183666, 0.711782,
		-0.622073, 0.659239, 0.422408,
		29.598783, 28.525412, 31.613626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959234, 27.778217, 31.962738>,  <30.034235, 28.063944, 31.317942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959234, 27.778217, 31.962738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642761, 28.016499, 32.018120>,  <29.452877, 28.159468, 32.051350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642761, 28.016499, 32.018120>,  <29.959234, 27.778217, 31.962738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642761, 28.016499, 32.018120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386865, -0.662818, 0.641099,
		0.473674, 0.453663, 0.754866,
		-0.791182, 0.595703, 0.138453,
		29.405407, 28.195210, 32.059654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812981, 27.679655, 32.637009>,  <29.959234, 27.778217, 31.962738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812981, 27.679655, 32.637009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480835, 27.820915, 32.464600>,  <29.281548, 27.905672, 32.361156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480835, 27.820915, 32.464600>,  <29.812981, 27.679655, 32.637009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480835, 27.820915, 32.464600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552523, -0.622044, 0.554779,
		-0.072193, 0.698817, 0.711648,
		-0.830365, 0.353150, -0.431020,
		29.231726, 27.926861, 32.335293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304445, 27.647114, 33.207127>,  <29.812981, 27.679655, 32.637009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304445, 27.647114, 33.207127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117001, 27.660664, 32.854027>,  <29.004534, 27.668795, 32.642166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117001, 27.660664, 32.854027>,  <29.304445, 27.647114, 33.207127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117001, 27.660664, 32.854027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654084, -0.684962, 0.320938,
		-0.593781, 0.727791, 0.343139,
		-0.468613, 0.033876, -0.882754,
		28.976418, 27.670826, 32.589199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559654, 27.724615, 33.424599>,  <29.304445, 27.647114, 33.207127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559654, 27.724615, 33.424599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628872, 27.568508, 33.062881>,  <28.670403, 27.474844, 32.845852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628872, 27.568508, 33.062881>,  <28.559654, 27.724615, 33.424599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628872, 27.568508, 33.062881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477372, -0.836325, 0.269586,
		-0.861494, 0.385034, -0.331025,
		0.173045, -0.390268, -0.904294,
		28.680784, 27.451427, 32.791592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051983, 27.311249, 33.320305>,  <28.559654, 27.724615, 33.424599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051983, 27.311249, 33.320305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288204, 27.163658, 33.033222>,  <28.429937, 27.075104, 32.860973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288204, 27.163658, 33.033222>,  <28.051983, 27.311249, 33.320305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288204, 27.163658, 33.033222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332494, -0.921608, 0.200218,
		-0.735319, 0.120393, -0.666942,
		0.590554, -0.368979, -0.717705,
		28.465370, 27.052965, 32.817909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657368, 26.869455, 32.966461>,  <28.051983, 27.311249, 33.320305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657368, 26.869455, 32.966461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046463, 26.780567, 32.939926>,  <28.279921, 26.727234, 32.924004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046463, 26.780567, 32.939926>,  <27.657368, 26.869455, 32.966461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046463, 26.780567, 32.939926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187122, -0.921059, 0.341520,
		-0.136997, -0.319795, -0.937530,
		0.972737, -0.222220, -0.066341,
		28.338284, 26.713902, 32.920025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630905, 26.252708, 32.650642>,  <27.657368, 26.869455, 32.966461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630905, 26.252708, 32.650642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005728, 26.258686, 32.790188>,  <28.230621, 26.262272, 32.873913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005728, 26.258686, 32.790188>,  <27.630905, 26.252708, 32.650642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005728, 26.258686, 32.790188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103378, -0.942423, 0.318045,
		0.333526, -0.334090, -0.881558,
		0.937056, 0.014942, 0.348860,
		28.286844, 26.263168, 32.894844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798237, 25.999878, 31.887903>,  <27.630905, 26.252708, 32.650642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798237, 25.999878, 31.887903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540958, 25.846760, 31.622643>,  <27.386591, 25.754889, 31.463486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540958, 25.846760, 31.622643>,  <27.798237, 25.999878, 31.887903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540958, 25.846760, 31.622643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159732, 0.914092, -0.372722,
		0.748857, -0.133806, -0.649083,
		-0.643194, -0.382795, -0.663151,
		27.348000, 25.731922, 31.423697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931616, 26.435051, 31.330097>,  <27.798237, 25.999878, 31.887903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931616, 26.435051, 31.330097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576294, 26.273823, 31.242054>,  <27.363100, 26.177086, 31.189228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576294, 26.273823, 31.242054>,  <27.931616, 26.435051, 31.330097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576294, 26.273823, 31.242054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368737, 0.911671, -0.181350,
		0.273763, -0.079933, -0.958470,
		-0.888305, -0.403071, -0.220108,
		27.309803, 26.152901, 31.176022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660315, 26.713659, 30.600328>,  <27.931616, 26.435051, 31.330097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660315, 26.713659, 30.600328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360966, 26.574341, 30.826118>,  <27.181356, 26.490749, 30.961594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360966, 26.574341, 30.826118>,  <27.660315, 26.713659, 30.600328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360966, 26.574341, 30.826118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498103, 0.857083, -0.131535,
		-0.437990, -0.379605, -0.814901,
		-0.748370, -0.348294, 0.564477,
		27.136456, 26.469852, 30.995461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108442, 26.613880, 30.123699>,  <27.660315, 26.713659, 30.600328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108442, 26.613880, 30.123699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945400, 26.680752, 30.482788>,  <26.847574, 26.720875, 30.698242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945400, 26.680752, 30.482788>,  <27.108442, 26.613880, 30.123699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945400, 26.680752, 30.482788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515314, 0.769491, -0.377273,
		-0.753862, -0.616389, -0.227501,
		-0.407607, 0.167177, 0.897724,
		26.823118, 26.730906, 30.752106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460543, 26.776217, 29.988050>,  <27.108442, 26.613880, 30.123699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460543, 26.776217, 29.988050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505207, 26.913601, 30.361053>,  <26.532005, 26.996031, 30.584854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505207, 26.913601, 30.361053>,  <26.460543, 26.776217, 29.988050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505207, 26.913601, 30.361053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619031, 0.758111, -0.205105,
		-0.777389, -0.554348, 0.297262,
		0.111659, 0.343461, 0.932506,
		26.538704, 27.016640, 30.640804>
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
