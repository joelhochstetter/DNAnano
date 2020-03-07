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
	<36.664909, 52.371761, 49.746845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527660, 52.747406, 49.754097>,  <36.445309, 52.972794, 49.758446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527660, 52.747406, 49.754097>,  <36.664909, 52.371761, 49.746845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527660, 52.747406, 49.754097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168794, -0.042667, -0.984727,
		-0.923999, -0.340944, 0.173157,
		-0.343125, 0.939115, 0.018125,
		36.424725, 53.029140, 49.759533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135235, 52.603924, 49.228546>,  <36.664909, 52.371761, 49.746845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135235, 52.603924, 49.228546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281822, 52.509537, 48.868542>,  <37.369774, 52.452904, 48.652538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281822, 52.509537, 48.868542>,  <37.135235, 52.603924, 49.228546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281822, 52.509537, 48.868542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804641, -0.405318, 0.433902,
		-0.467176, -0.883198, 0.041330,
		0.366469, -0.235965, -0.900012,
		37.391762, 52.438747, 48.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545315, 52.086651, 49.482113>,  <37.135235, 52.603924, 49.228546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545315, 52.086651, 49.482113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652290, 52.141106, 49.100548>,  <37.716476, 52.173779, 48.871609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652290, 52.141106, 49.100548>,  <37.545315, 52.086651, 49.482113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652290, 52.141106, 49.100548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939907, -0.254931, 0.227125,
		-0.212261, -0.957327, -0.196137,
		0.267434, 0.136141, -0.953910,
		37.732521, 52.181950, 48.814373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225163, 52.620579, 49.356674>,  <37.545315, 52.086651, 49.482113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225163, 52.620579, 49.356674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214134, 52.831253, 49.696522>,  <38.207516, 52.957657, 49.900429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214134, 52.831253, 49.696522>,  <38.225163, 52.620579, 49.356674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214134, 52.831253, 49.696522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642792, 0.660255, -0.388435,
		-0.765544, 0.535416, -0.356752,
		-0.027573, 0.526682, 0.849615,
		38.205864, 52.989258, 49.951405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727608, 52.699772, 49.876965>,  <38.225163, 52.620579, 49.356674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727608, 52.699772, 49.876965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957096, 52.745483, 49.552547>,  <39.094788, 52.772911, 49.357899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957096, 52.745483, 49.552547>,  <38.727608, 52.699772, 49.876965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957096, 52.745483, 49.552547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819025, -0.088302, 0.566922,
		-0.006831, -0.989517, -0.144255,
		0.573717, 0.114276, -0.811042,
		39.129211, 52.779766, 49.309235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074821, 52.199715, 49.930035>,  <38.727608, 52.699772, 49.876965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074821, 52.199715, 49.930035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290035, 52.438576, 49.692070>,  <39.419163, 52.581894, 49.549290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290035, 52.438576, 49.692070>,  <39.074821, 52.199715, 49.930035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290035, 52.438576, 49.692070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798382, -0.134636, 0.586907,
		0.270378, -0.790745, -0.549198,
		0.538036, 0.597156, -0.594913,
		39.451447, 52.617722, 49.513596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758820, 51.891834, 49.644428>,  <39.074821, 52.199715, 49.930035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758820, 51.891834, 49.644428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822754, 52.286690, 49.643204>,  <39.861115, 52.523602, 49.642471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822754, 52.286690, 49.643204>,  <39.758820, 51.891834, 49.644428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822754, 52.286690, 49.643204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815528, -0.130303, 0.563857,
		0.556207, -0.092620, -0.825867,
		0.159837, 0.987139, -0.003059,
		39.870705, 52.582832, 49.642284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473030, 52.046822, 49.406452>,  <39.758820, 51.891834, 49.644428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473030, 52.046822, 49.406452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331863, 52.329170, 49.652119>,  <40.247162, 52.498581, 49.799519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331863, 52.329170, 49.652119>,  <40.473030, 52.046822, 49.406452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331863, 52.329170, 49.652119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824137, -0.076269, 0.561231,
		0.442998, 0.704223, -0.554818,
		-0.352917, 0.705871, 0.614163,
		40.225990, 52.540932, 49.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045788, 52.456196, 49.481346>,  <40.473030, 52.046822, 49.406452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045788, 52.456196, 49.481346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795429, 52.447433, 49.793186>,  <40.645214, 52.442177, 49.980289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795429, 52.447433, 49.793186>,  <41.045788, 52.456196, 49.481346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795429, 52.447433, 49.793186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775799, -0.119939, 0.619475,
		0.079933, 0.992539, 0.092066,
		-0.625896, -0.021908, 0.779599,
		40.607662, 52.440861, 50.027065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243233, 52.939724, 50.085732>,  <41.045788, 52.456196, 49.481346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243233, 52.939724, 50.085732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011909, 52.655376, 50.245842>,  <40.873116, 52.484768, 50.341908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011909, 52.655376, 50.245842>,  <41.243233, 52.939724, 50.085732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011909, 52.655376, 50.245842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672350, -0.137405, 0.727369,
		-0.462062, 0.689774, 0.557415,
		-0.578312, -0.710867, 0.400280,
		40.838417, 52.442116, 50.365925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970337, 53.106644, 50.810818>,  <41.243233, 52.939724, 50.085732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970337, 53.106644, 50.810818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035206, 52.720398, 50.729546>,  <41.074127, 52.488651, 50.680782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035206, 52.720398, 50.729546>,  <40.970337, 53.106644, 50.810818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035206, 52.720398, 50.729546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751551, -0.012560, 0.659555,
		-0.639430, -0.259661, 0.723675,
		0.162171, -0.965618, -0.203180,
		41.083858, 52.430714, 50.668591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642673, 53.150120, 50.994366>,  <40.970337, 53.106644, 50.810818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642673, 53.150120, 50.994366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843655, 53.032219, 51.319489>,  <41.964245, 52.961479, 51.514565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843655, 53.032219, 51.319489>,  <41.642673, 53.150120, 50.994366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843655, 53.032219, 51.319489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860314, 0.263971, -0.436095,
		-0.086019, 0.918390, 0.386212,
		0.502454, -0.294751, 0.812811,
		41.994392, 52.943794, 51.563332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005291, 53.751278, 51.327229>,  <41.642673, 53.150120, 50.994366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005291, 53.751278, 51.327229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169537, 53.388702, 51.366745>,  <42.268085, 53.171158, 51.390457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169537, 53.388702, 51.366745>,  <42.005291, 53.751278, 51.327229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169537, 53.388702, 51.366745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864062, 0.352224, -0.359632,
		0.291187, 0.233035, 0.927849,
		0.410617, -0.906440, 0.098794,
		42.292721, 53.116772, 51.396381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701801, 53.845062, 51.652100>,  <42.005291, 53.751278, 51.327229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701801, 53.845062, 51.652100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711224, 53.487206, 51.473633>,  <42.716877, 53.272491, 51.366550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711224, 53.487206, 51.473633>,  <42.701801, 53.845062, 51.652100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711224, 53.487206, 51.473633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924109, 0.189750, -0.331688,
		0.381402, -0.404495, 0.831214,
		0.023557, -0.894639, -0.446169,
		42.718292, 53.218815, 51.339783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438984, 53.341385, 51.802929>,  <42.701801, 53.845062, 51.652100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438984, 53.341385, 51.802929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250877, 53.273121, 51.456581>,  <43.138016, 53.232162, 51.248772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250877, 53.273121, 51.456581>,  <43.438984, 53.341385, 51.802929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250877, 53.273121, 51.456581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837843, 0.221903, -0.498777,
		0.277260, -0.960018, 0.038634,
		-0.470262, -0.170660, -0.865868,
		43.109798, 53.221924, 51.196819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837105, 53.986065, 51.415756>,  <43.438984, 53.341385, 51.802929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837105, 53.986065, 51.415756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062542, 54.247128, 51.213211>,  <44.197803, 54.403767, 51.091682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062542, 54.247128, 51.213211>,  <43.837105, 53.986065, 51.415756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062542, 54.247128, 51.213211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655148, -0.726522, -0.207237,
		-0.503138, -0.214947, -0.837048,
		0.563589, 0.652659, -0.506363,
		44.231617, 54.442924, 51.061302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107910, 53.511658, 50.955555>,  <43.837105, 53.986065, 51.415756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107910, 53.511658, 50.955555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317120, 53.850811, 50.920826>,  <44.442646, 54.054302, 50.899986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317120, 53.850811, 50.920826>,  <44.107910, 53.511658, 50.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317120, 53.850811, 50.920826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831494, -0.529966, -0.166592,
		-0.187265, 0.014936, -0.982196,
		0.523019, 0.847887, -0.086825,
		44.474026, 54.105179, 50.894779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563507, 53.479576, 50.268852>,  <44.107910, 53.511658, 50.955555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563507, 53.479576, 50.268852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684738, 53.684090, 50.590530>,  <44.757477, 53.806797, 50.783539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684738, 53.684090, 50.590530>,  <44.563507, 53.479576, 50.268852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684738, 53.684090, 50.590530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832903, -0.552171, 0.037159,
		0.463054, 0.658557, -0.593198,
		0.303075, 0.511283, 0.804199,
		44.775661, 53.837475, 50.831791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274334, 53.288349, 50.203976>,  <44.563507, 53.479576, 50.268852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274334, 53.288349, 50.203976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175903, 53.453392, 50.554794>,  <45.116844, 53.552418, 50.765285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175903, 53.453392, 50.554794>,  <45.274334, 53.288349, 50.203976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175903, 53.453392, 50.554794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745587, -0.497592, 0.443285,
		0.619311, 0.762993, -0.185189,
		-0.246075, 0.412606, 0.877042,
		45.102081, 53.577175, 50.817905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863304, 53.477837, 50.521488>,  <45.274334, 53.288349, 50.203976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863304, 53.477837, 50.521488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613171, 53.454773, 50.832779>,  <45.463089, 53.440933, 51.019554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613171, 53.454773, 50.832779>,  <45.863304, 53.477837, 50.521488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613171, 53.454773, 50.832779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755778, -0.293073, 0.585584,
		0.194312, 0.954350, 0.226847,
		-0.625334, -0.057660, 0.778224,
		45.425571, 53.437473, 51.066246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794056, 53.928860, 51.118999>,  <45.863304, 53.477837, 50.521488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794056, 53.928860, 51.118999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758633, 54.260204, 50.897739>,  <45.737381, 54.459011, 50.764984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758633, 54.260204, 50.897739>,  <45.794056, 53.928860, 51.118999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758633, 54.260204, 50.897739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165920, 0.559837, 0.811821,
		0.982155, -0.019886, -0.187019,
		-0.088556, 0.828364, -0.553147,
		45.732067, 54.508713, 50.731796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342697, 54.300476, 51.145412>,  <45.794056, 53.928860, 51.118999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342697, 54.300476, 51.145412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073494, 54.588619, 51.078304>,  <45.911972, 54.761505, 51.038040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073494, 54.588619, 51.078304>,  <46.342697, 54.300476, 51.145412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073494, 54.588619, 51.078304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314452, 0.483979, 0.816630,
		0.669460, 0.496844, -0.552240,
		-0.673010, 0.720354, -0.167771,
		45.871590, 54.804726, 51.027973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657913, 54.951069, 50.883877>,  <46.342697, 54.300476, 51.145412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657913, 54.951069, 50.883877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329010, 55.019276, 51.101067>,  <46.131668, 55.060200, 51.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329010, 55.019276, 51.101067>,  <46.657913, 54.951069, 50.883877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329010, 55.019276, 51.101067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482883, 0.713952, 0.507047,
		-0.301193, 0.679114, -0.669393,
		-0.822257, 0.170519, 0.542970,
		46.082333, 55.070431, 51.263958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548435, 55.710209, 51.075024>,  <46.657913, 54.951069, 50.883877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548435, 55.710209, 51.075024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432281, 55.448185, 51.354046>,  <46.362591, 55.290970, 51.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432281, 55.448185, 51.354046>,  <46.548435, 55.710209, 51.075024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432281, 55.448185, 51.354046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595494, 0.446906, 0.667579,
		-0.749043, 0.609241, 0.260308,
		-0.290383, -0.655057, 0.697551,
		46.345165, 55.251667, 51.563313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194149, 56.085045, 51.691875>,  <46.548435, 55.710209, 51.075024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194149, 56.085045, 51.691875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346539, 55.728374, 51.789665>,  <46.437973, 55.514374, 51.848339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346539, 55.728374, 51.789665>,  <46.194149, 56.085045, 51.691875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346539, 55.728374, 51.789665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607044, 0.440674, 0.661289,
		-0.697390, -0.103530, 0.709175,
		0.380978, -0.891677, 0.244474,
		46.460831, 55.460873, 51.863007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492516, 56.005287, 52.381882>,  <46.194149, 56.085045, 51.691875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492516, 56.005287, 52.381882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692287, 55.699833, 52.218208>,  <46.812149, 55.516560, 52.120003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692287, 55.699833, 52.218208>,  <46.492516, 56.005287, 52.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692287, 55.699833, 52.218208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848056, 0.334350, 0.411109,
		-0.177129, -0.552328, 0.814592,
		0.499426, -0.763638, -0.409182,
		46.842113, 55.470741, 52.095455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879002, 55.669285, 52.890980>,  <46.492516, 56.005287, 52.381882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879002, 55.669285, 52.890980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089272, 55.522839, 52.583832>,  <47.215431, 55.434971, 52.399544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089272, 55.522839, 52.583832>,  <46.879002, 55.669285, 52.890980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089272, 55.522839, 52.583832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842735, 0.100985, 0.528771,
		-0.116047, -0.925074, 0.361623,
		0.525671, -0.366115, -0.767873,
		47.246971, 55.413006, 52.353470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.371685, 55.012035, 53.047432>,  <46.879002, 55.669285, 52.890980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.371685, 55.012035, 53.047432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487637, 55.253532, 52.750389>,  <47.557209, 55.398430, 52.572163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487637, 55.253532, 52.750389>,  <47.371685, 55.012035, 53.047432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487637, 55.253532, 52.750389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904462, 0.080877, 0.418816,
		0.312918, -0.793063, -0.522621,
		0.289880, 0.603746, -0.742604,
		47.574600, 55.434658, 52.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.016075, 54.758358, 52.597179>,  <47.371685, 55.012035, 53.047432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.016075, 54.758358, 52.597179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.986694, 55.156853, 52.615620>,  <47.969067, 55.395950, 52.626682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.986694, 55.156853, 52.615620>,  <48.016075, 54.758358, 52.597179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.986694, 55.156853, 52.615620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923834, 0.050558, 0.379440,
		0.375679, 0.070459, -0.924067,
		-0.073454, 0.996233, 0.046099,
		47.964657, 55.455723, 52.629448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.490768, 55.100651, 52.267029>,  <48.016075, 54.758358, 52.597179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.490768, 55.100651, 52.267029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.392097, 55.361214, 52.554031>,  <48.332893, 55.517551, 52.726231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.392097, 55.361214, 52.554031>,  <48.490768, 55.100651, 52.267029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.392097, 55.361214, 52.554031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958615, 0.055423, 0.279258,
		0.142146, 0.756698, -0.638124,
		-0.246681, 0.651411, 0.717504,
		48.318092, 55.556637, 52.769283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.090931, 55.557751, 52.290493>,  <48.490768, 55.100651, 52.267029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.090931, 55.557751, 52.290493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.890186, 55.656281, 52.622147>,  <48.769741, 55.715401, 52.821140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.890186, 55.656281, 52.622147>,  <49.090931, 55.557751, 52.290493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.890186, 55.656281, 52.622147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844279, 0.347824, 0.407691,
		-0.187967, 0.904622, -0.382527,
		-0.501859, 0.246327, 0.829132,
		48.739628, 55.730179, 52.870888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.343628, 56.253769, 52.503944>,  <49.090931, 55.557751, 52.290493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.343628, 56.253769, 52.503944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.216702, 56.064285, 52.832558>,  <49.140549, 55.950596, 53.029724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.216702, 56.064285, 52.832558>,  <49.343628, 56.253769, 52.503944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.216702, 56.064285, 52.832558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804125, 0.324811, 0.497877,
		-0.502690, 0.818597, 0.277853,
		-0.317311, -0.473706, 0.821533,
		49.121510, 55.922173, 53.079018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.578789, 56.569153, 53.160534>,  <49.343628, 56.253769, 52.503944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.578789, 56.569153, 53.160534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.515472, 56.187370, 53.261700>,  <49.477482, 55.958302, 53.322399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.515472, 56.187370, 53.261700>,  <49.578789, 56.569153, 53.160534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.515472, 56.187370, 53.261700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820821, 0.015172, 0.570983,
		-0.548813, 0.297979, 0.781033,
		-0.158291, -0.954452, 0.252914,
		49.467983, 55.901035, 53.337574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.589657, 56.492641, 53.911255>,  <49.578789, 56.569153, 53.160534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.589657, 56.492641, 53.911255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.715981, 56.171803, 53.708511>,  <49.791775, 55.979298, 53.586864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.715981, 56.171803, 53.708511>,  <49.589657, 56.492641, 53.911255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.715981, 56.171803, 53.708511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736282, -0.129770, 0.664115,
		-0.598460, -0.582923, 0.549588,
		0.315808, -0.802097, -0.506858,
		49.810722, 55.931175, 53.556454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.620747, 56.008553, 54.391472>,  <49.589657, 56.492641, 53.911255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.620747, 56.008553, 54.391472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.840126, 55.849361, 54.097309>,  <49.971756, 55.753849, 53.920811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.840126, 55.849361, 54.097309>,  <49.620747, 56.008553, 54.391472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.840126, 55.849361, 54.097309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757604, -0.135712, 0.638450,
		-0.353889, -0.907303, 0.227075,
		0.548451, -0.397973, -0.735404,
		50.004662, 55.729969, 53.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.033867, 55.284569, 54.559971>,  <49.620747, 56.008553, 54.391472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.033867, 55.284569, 54.559971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.237762, 55.514164, 54.303623>,  <50.360100, 55.651920, 54.149815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.237762, 55.514164, 54.303623>,  <50.033867, 55.284569, 54.559971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.237762, 55.514164, 54.303623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749174, 0.070090, 0.658654,
		0.422976, -0.815861, -0.394288,
		0.509735, 0.573985, -0.640868,
		50.390682, 55.686359, 54.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.696865, 55.045288, 54.625103>,  <50.033867, 55.284569, 54.559971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.696865, 55.045288, 54.625103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.718067, 55.406948, 54.455536>,  <50.730789, 55.623943, 54.353794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.718067, 55.406948, 54.455536>,  <50.696865, 55.045288, 54.625103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.718067, 55.406948, 54.455536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859313, 0.174953, 0.480595,
		0.508695, -0.389752, -0.767674,
		0.053006, 0.904149, -0.423916,
		50.733971, 55.678192, 54.328362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.311249, 55.121372, 54.137291>,  <50.696865, 55.045288, 54.625103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.311249, 55.121372, 54.137291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.212399, 55.474659, 54.296715>,  <51.153088, 55.686630, 54.392368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.212399, 55.474659, 54.296715>,  <51.311249, 55.121372, 54.137291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.212399, 55.474659, 54.296715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877273, 0.029266, 0.479098,
		0.411484, 0.468049, -0.782056,
		-0.247129, 0.883218, 0.398564,
		51.138260, 55.739624, 54.416283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.854931, 55.776249, 54.064823>,  <51.311249, 55.121372, 54.137291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.854931, 55.776249, 54.064823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.619450, 55.799839, 54.387299>,  <51.478161, 55.813995, 54.580784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.619450, 55.799839, 54.387299>,  <51.854931, 55.776249, 54.064823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.619450, 55.799839, 54.387299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797031, 0.208638, 0.566755,
		-0.134776, 0.976213, -0.169834,
		-0.588707, 0.058978, 0.806192,
		51.442837, 55.817532, 54.629158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.061543, 56.403839, 54.596794>,  <51.854931, 55.776249, 54.064823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.061543, 56.403839, 54.596794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.838131, 56.137436, 54.794571>,  <51.704082, 55.977592, 54.913239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.838131, 56.137436, 54.794571>,  <52.061543, 56.403839, 54.596794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.838131, 56.137436, 54.794571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562309, 0.134209, 0.815964,
		-0.609798, 0.733771, 0.299543,
		-0.558530, -0.666009, 0.494446,
		51.670570, 55.937634, 54.942905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.974419, 56.724209, 55.190758>,  <52.061543, 56.403839, 54.596794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.974419, 56.724209, 55.190758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.913971, 56.340324, 55.285507>,  <51.877705, 56.109993, 55.342358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.913971, 56.340324, 55.285507>,  <51.974419, 56.724209, 55.190758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.913971, 56.340324, 55.285507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608350, 0.098585, 0.787523,
		-0.779150, 0.263110, 0.568945,
		-0.151115, -0.959716, 0.236875,
		51.868637, 56.052410, 55.356571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.633846, 56.540344, 55.929337>,  <51.974419, 56.724209, 55.190758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.633846, 56.540344, 55.929337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.875523, 56.260582, 55.776611>,  <52.020527, 56.092724, 55.684978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.875523, 56.260582, 55.776611>,  <51.633846, 56.540344, 55.929337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.875523, 56.260582, 55.776611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564022, 0.036901, 0.824935,
		-0.562878, -0.713768, 0.416777,
		0.604192, -0.699409, -0.381810,
		52.056782, 56.050758, 55.662067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.560398, 55.928391, 56.204475>,  <51.633846, 56.540344, 55.929337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.560398, 55.928391, 56.204475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.935600, 55.983681, 56.077324>,  <52.160721, 56.016857, 56.001034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.935600, 55.983681, 56.077324>,  <51.560398, 55.928391, 56.204475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.935600, 55.983681, 56.077324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324624, -0.028754, 0.945406,
		0.121542, -0.989983, -0.071844,
		0.938001, 0.138229, -0.317877,
		52.216999, 56.025150, 55.981960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.812046, 55.999062, 56.815212>,  <51.560398, 55.928391, 56.204475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.812046, 55.999062, 56.815212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.158348, 55.990021, 56.615227>,  <52.366131, 55.984596, 56.495235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.158348, 55.990021, 56.615227>,  <51.812046, 55.999062, 56.815212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.158348, 55.990021, 56.615227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498616, -0.046945, 0.865551,
		-0.042997, -0.998643, -0.029394,
		0.865756, -0.022560, -0.499957,
		52.418076, 55.983238, 56.465240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.258488, 55.403290, 57.062416>,  <51.812046, 55.999062, 56.815212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.258488, 55.403290, 57.062416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.478371, 55.695511, 56.900375>,  <52.610298, 55.870846, 56.803150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.478371, 55.695511, 56.900375>,  <52.258488, 55.403290, 57.062416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.478371, 55.695511, 56.900375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618534, -0.030016, 0.785184,
		0.561462, -0.682192, -0.468374,
		0.549705, 0.730557, -0.405106,
		52.643284, 55.914677, 56.778843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.993652, 55.242085, 57.159641>,  <52.258488, 55.403290, 57.062416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.993652, 55.242085, 57.159641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.963558, 55.638672, 57.117065>,  <52.945503, 55.876625, 57.091518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.963558, 55.638672, 57.117065>,  <52.993652, 55.242085, 57.159641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.963558, 55.638672, 57.117065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536635, 0.130223, 0.833705,
		0.840454, 0.005604, -0.541854,
		-0.075233, 0.991469, -0.106439,
		52.940987, 55.936111, 57.085133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.704922, 55.683819, 57.086403>,  <52.993652, 55.242085, 57.159641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.704922, 55.683819, 57.086403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.411156, 55.875092, 57.279060>,  <53.234898, 55.989857, 57.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.411156, 55.875092, 57.279060>,  <53.704922, 55.683819, 57.086403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.411156, 55.875092, 57.279060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624824, 0.199263, 0.754910,
		0.265010, 0.855358, -0.445120,
		-0.734414, 0.478180, 0.481642,
		53.190830, 56.018547, 57.423553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.942650, 56.418415, 57.166901>,  <53.704922, 55.683819, 57.086403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.942650, 56.418415, 57.166901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.692818, 56.296940, 57.454697>,  <53.542919, 56.224052, 57.627377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.692818, 56.296940, 57.454697>,  <53.942650, 56.418415, 57.166901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.692818, 56.296940, 57.454697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679112, 0.243717, 0.692394,
		-0.385627, 0.921072, 0.054020,
		-0.624579, -0.303691, 0.719495,
		53.505444, 56.205833, 57.670544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.686619, 56.687138, 57.216686>,  <53.942650, 56.418415, 57.166901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.686619, 56.687138, 57.216686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.444130, 56.998425, 57.151108>,  <54.298637, 57.185196, 57.111759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.444130, 56.998425, 57.151108>,  <54.686619, 56.687138, 57.216686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.444130, 56.998425, 57.151108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542603, -0.555434, -0.630138,
		-0.581453, -0.293034, 0.758975,
		-0.606213, 0.778218, -0.163958,
		54.262264, 57.231888, 57.101921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.435570, 56.406094, 57.896866>,  <54.686619, 56.687138, 57.216686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.435570, 56.406094, 57.896866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.247360, 56.085052, 57.750206>,  <54.134434, 55.892426, 57.662212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.247360, 56.085052, 57.750206>,  <54.435570, 56.406094, 57.896866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.247360, 56.085052, 57.750206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863214, -0.504830, -0.002681,
		-0.182943, -0.317757, 0.930356,
		-0.470524, -0.802606, -0.366648,
		54.106205, 55.844269, 57.640213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.708939, 55.826653, 58.310509>,  <54.435570, 56.406094, 57.896866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.708939, 55.826653, 58.310509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.553650, 55.661194, 57.981102>,  <54.460476, 55.561916, 57.783459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.553650, 55.661194, 57.981102>,  <54.708939, 55.826653, 58.310509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.553650, 55.661194, 57.981102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892357, -0.391926, -0.223816,
		-0.230174, -0.821759, 0.521280,
		-0.388226, -0.413651, -0.823513,
		54.437183, 55.537098, 57.734047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.818508, 55.087120, 58.295895>,  <54.708939, 55.826653, 58.310509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.818508, 55.087120, 58.295895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806480, 55.282860, 57.947266>,  <54.799263, 55.400303, 57.738091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806480, 55.282860, 57.947266>,  <54.818508, 55.087120, 58.295895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.806480, 55.282860, 57.947266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960820, -0.226216, -0.160160,
		-0.275537, -0.842236, -0.463377,
		-0.030069, 0.489352, -0.871568,
		54.797459, 55.429665, 57.685795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.454060, 54.953396, 58.045288>,  <54.818508, 55.087120, 58.295895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.454060, 54.953396, 58.045288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.345520, 55.206142, 57.754875>,  <55.280396, 55.357788, 57.580627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.345520, 55.206142, 57.754875>,  <55.454060, 54.953396, 58.045288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.345520, 55.206142, 57.754875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918698, -0.054886, -0.391128,
		-0.286989, -0.773133, -0.565600,
		-0.271350, 0.631865, -0.726028,
		55.264114, 55.395702, 57.537067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.521069, 54.237968, 58.226501>,  <55.454060, 54.953396, 58.045288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.521069, 54.237968, 58.226501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.914658, 54.218792, 58.157791>,  <56.150810, 54.207287, 58.116566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.914658, 54.218792, 58.157791>,  <55.521069, 54.237968, 58.226501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.914658, 54.218792, 58.157791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176662, 0.393833, 0.902046,
		0.024405, -0.917931, 0.395989,
		0.983969, -0.047942, -0.171775,
		56.209846, 54.204411, 58.106258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.975975, 53.999908, 58.840370>,  <55.521069, 54.237968, 58.226501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.975975, 53.999908, 58.840370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.213257, 54.240410, 58.626228>,  <56.355625, 54.384712, 58.497746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.213257, 54.240410, 58.626228>,  <55.975975, 53.999908, 58.840370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.213257, 54.240410, 58.626228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239200, 0.503322, 0.830331,
		0.768697, -0.620611, 0.154751,
		0.593202, 0.601256, -0.535352,
		56.391216, 54.420788, 58.465622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.479965, 54.188030, 59.329536>,  <55.975975, 53.999908, 58.840370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.479965, 54.188030, 59.329536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.544151, 54.434532, 59.021126>,  <56.582664, 54.582436, 58.836079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.544151, 54.434532, 59.021126>,  <56.479965, 54.188030, 59.329536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.544151, 54.434532, 59.021126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569192, 0.580407, 0.582364,
		0.806393, -0.532312, -0.257632,
		0.160468, 0.616256, -0.771024,
		56.592293, 54.619408, 58.789818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.650753, 54.898361, 59.360146>,  <56.479965, 54.188030, 59.329536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.650753, 54.898361, 59.360146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.921951, 55.105095, 59.151070>,  <57.084671, 55.229134, 59.025623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.921951, 55.105095, 59.151070>,  <56.650753, 54.898361, 59.360146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.921951, 55.105095, 59.151070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506627, 0.843768, 0.177155,
		0.532590, 0.144699, 0.833912,
		0.677995, 0.516834, -0.522691,
		57.125351, 55.260143, 58.994263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.499401, 55.604225, 59.544079>,  <56.650753, 54.898361, 59.360146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.499401, 55.604225, 59.544079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.760025, 55.634598, 59.242165>,  <56.916401, 55.652821, 59.061016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.760025, 55.634598, 59.242165>,  <56.499401, 55.604225, 59.544079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.760025, 55.634598, 59.242165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253303, 0.959649, -0.122115,
		0.715057, 0.270755, 0.644504,
		0.651561, 0.075936, -0.754786,
		56.955494, 55.657379, 59.015728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.115082, 56.121479, 59.635185>,  <56.499401, 55.604225, 59.544079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.115082, 56.121479, 59.635185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.945137, 56.125134, 59.273102>,  <56.843170, 56.127327, 59.055851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.945137, 56.125134, 59.273102>,  <57.115082, 56.121479, 59.635185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.945137, 56.125134, 59.273102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160511, 0.983344, 0.085267,
		0.890912, 0.181523, -0.416323,
		-0.424867, 0.009141, -0.905210,
		56.817677, 56.127876, 59.001537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.213299, 56.740158, 59.386154>,  <57.115082, 56.121479, 59.635185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.213299, 56.740158, 59.386154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.927727, 56.636990, 59.125763>,  <56.756382, 56.575089, 58.969528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.927727, 56.636990, 59.125763>,  <57.213299, 56.740158, 59.386154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.927727, 56.636990, 59.125763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103028, 0.958264, -0.266674,
		0.692592, -0.123318, -0.710710,
		-0.713934, -0.257919, -0.650980,
		56.713547, 56.559612, 58.930470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.172325, 57.390335, 59.655678>,  <57.213299, 56.740158, 59.386154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.172325, 57.390335, 59.655678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.382553, 57.235420, 59.352684>,  <57.508690, 57.142471, 59.170887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.382553, 57.235420, 59.352684>,  <57.172325, 57.390335, 59.655678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.382553, 57.235420, 59.352684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086655, 0.910115, -0.405193,
		0.846324, 0.147318, 0.511891,
		0.525573, -0.387283, -0.757486,
		57.540226, 57.119236, 59.125439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.748253, 57.767159, 59.353550>,  <57.172325, 57.390335, 59.655678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.748253, 57.767159, 59.353550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.660309, 57.529442, 59.044106>,  <57.607544, 57.386810, 58.858440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.660309, 57.529442, 59.044106>,  <57.748253, 57.767159, 59.353550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.660309, 57.529442, 59.044106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159526, 0.760438, -0.629512,
		0.962400, -0.261815, -0.072383,
		-0.219859, -0.594295, -0.773612,
		57.594353, 57.351154, 58.812023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.239048, 57.910660, 59.924412>,  <57.748253, 57.767159, 59.353550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.239048, 57.910660, 59.924412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.141357, 58.098248, 59.584900>,  <58.082745, 58.210800, 59.381195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.141357, 58.098248, 59.584900>,  <58.239048, 57.910660, 59.924412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.141357, 58.098248, 59.584900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269881, 0.873574, 0.405010,
		0.931406, -0.130154, -0.339916,
		-0.244228, 0.468966, -0.848778,
		58.068089, 58.238937, 59.330265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.700047, 58.400513, 59.606815>,  <58.239048, 57.910660, 59.924412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.700047, 58.400513, 59.606815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.319565, 58.496609, 59.529350>,  <58.091278, 58.554264, 59.482872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.319565, 58.496609, 59.529350>,  <58.700047, 58.400513, 59.606815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.319565, 58.496609, 59.529350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151363, 0.910159, 0.385616,
		0.268899, 0.337486, -0.902107,
		-0.951201, 0.240237, -0.193658,
		58.034206, 58.568680, 59.471252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.956326, 57.882282, 60.149120>,  <58.700047, 58.400513, 59.606815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.956326, 57.882282, 60.149120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.963448, 57.814686, 60.543304>,  <58.967720, 57.774128, 60.779816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.963448, 57.814686, 60.543304>,  <58.956326, 57.882282, 60.149120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.963448, 57.814686, 60.543304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254502, -0.952382, -0.167919,
		0.966908, 0.253790, 0.026055,
		0.017802, -0.168993, 0.985456,
		58.968788, 57.763988, 60.838940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.143097, 57.244675, 60.070927>,  <58.956326, 57.882282, 60.149120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.143097, 57.244675, 60.070927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.162262, 57.297409, 60.466972>,  <59.173759, 57.329048, 60.704601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.162262, 57.297409, 60.466972>,  <59.143097, 57.244675, 60.070927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.162262, 57.297409, 60.466972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237510, -0.964324, 0.116910,
		0.970203, 0.229561, -0.077513,
		0.047910, 0.131837, 0.990113,
		59.176636, 57.336960, 60.764008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.758034, 57.013329, 60.175838>,  <59.143097, 57.244675, 60.070927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.758034, 57.013329, 60.175838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.556427, 56.989052, 60.520462>,  <59.435463, 56.974487, 60.727238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.556427, 56.989052, 60.520462>,  <59.758034, 57.013329, 60.175838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.556427, 56.989052, 60.520462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283139, -0.954014, 0.098436,
		0.815965, 0.293554, 0.498023,
		-0.504017, -0.060689, 0.861559,
		59.405220, 56.970844, 60.778931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.103081, 56.575764, 60.671524>,  <59.758034, 57.013329, 60.175838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.103081, 56.575764, 60.671524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.717522, 56.567257, 60.777687>,  <59.486187, 56.562153, 60.841385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.717522, 56.567257, 60.777687>,  <60.103081, 56.575764, 60.671524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.717522, 56.567257, 60.777687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086401, -0.967844, 0.236249,
		0.251850, 0.250652, 0.934743,
		-0.963902, -0.021264, 0.265408,
		59.428352, 56.560879, 60.857311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.702038, 56.775349, 61.150433>,  <60.103081, 56.575764, 60.671524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.702038, 56.775349, 61.150433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.855537, 56.664284, 61.502716>,  <60.947636, 56.597645, 61.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.855537, 56.664284, 61.502716>,  <60.702038, 56.775349, 61.150433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.855537, 56.664284, 61.502716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174039, -0.914886, -0.364273,
		0.906889, 0.293066, -0.302761,
		0.383748, -0.277663, 0.880705,
		60.970661, 56.580986, 61.766926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.370152, 56.534599, 61.047230>,  <60.702038, 56.775349, 61.150433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.370152, 56.534599, 61.047230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.156090, 56.371929, 61.343399>,  <61.027653, 56.274326, 61.521099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.156090, 56.371929, 61.343399>,  <61.370152, 56.534599, 61.047230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.156090, 56.371929, 61.343399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217649, -0.913280, -0.344310,
		0.816235, -0.023107, 0.577258,
		-0.535154, -0.406678, 0.740421,
		60.995544, 56.249928, 61.565525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.712276, 56.068657, 60.636875>,  <61.370152, 56.534599, 61.047230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.712276, 56.068657, 60.636875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.076477, 56.014645, 60.793205>,  <62.294998, 55.982239, 60.887005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.076477, 56.014645, 60.793205>,  <61.712276, 56.068657, 60.636875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.076477, 56.014645, 60.793205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371354, 0.148702, 0.916507,
		-0.181872, -0.979620, 0.085250,
		0.910505, -0.135029, 0.390830,
		62.349628, 55.974136, 60.910454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.572784, 55.735638, 61.272842>,  <61.712276, 56.068657, 60.636875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.572784, 55.735638, 61.272842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.948036, 55.873955, 61.280304>,  <62.173187, 55.956944, 61.284782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.948036, 55.873955, 61.280304>,  <61.572784, 55.735638, 61.272842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.948036, 55.873955, 61.280304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098590, 0.215063, 0.971611,
		0.331967, -0.913331, 0.235848,
		0.938125, 0.345795, 0.018652,
		62.229473, 55.977692, 61.285900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.932087, 55.345413, 61.751904>,  <61.572784, 55.735638, 61.272842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.932087, 55.345413, 61.751904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.059021, 55.722687, 61.712486>,  <62.135181, 55.949051, 61.688835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.059021, 55.722687, 61.712486>,  <61.932087, 55.345413, 61.751904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.059021, 55.722687, 61.712486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274364, 0.190782, 0.942511,
		0.907758, -0.272055, 0.319316,
		0.317334, 0.943180, -0.098542,
		62.154221, 56.005642, 61.682922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.820534, 54.592194, 62.014645>,  <61.932087, 55.345413, 61.751904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.820534, 54.592194, 62.014645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.163857, 54.588898, 61.809418>,  <62.369850, 54.586922, 61.686283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.163857, 54.588898, 61.809418>,  <61.820534, 54.592194, 62.014645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.163857, 54.588898, 61.809418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493087, -0.263505, 0.829114,
		-0.142024, -0.964623, -0.222107,
		0.858309, -0.008236, -0.513067,
		62.421349, 54.586426, 61.655499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.218536, 54.095276, 62.290314>,  <61.820534, 54.592194, 62.014645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.218536, 54.095276, 62.290314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.475555, 54.326439, 62.089058>,  <62.629768, 54.465137, 61.968304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.475555, 54.326439, 62.089058>,  <62.218536, 54.095276, 62.290314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.475555, 54.326439, 62.089058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691428, -0.154293, 0.705777,
		0.330245, -0.801382, -0.498724,
		0.642546, 0.577911, -0.503143,
		62.668320, 54.499813, 61.938114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.867912, 53.680088, 62.149994>,  <62.218536, 54.095276, 62.290314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.867912, 53.680088, 62.149994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945892, 54.071079, 62.182320>,  <62.992680, 54.305676, 62.201714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945892, 54.071079, 62.182320>,  <62.867912, 53.680088, 62.149994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.945892, 54.071079, 62.182320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632562, -0.188270, 0.751279,
		0.749574, -0.095338, -0.655019,
		0.194946, 0.977479, 0.080815,
		63.004375, 54.364323, 62.206566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.548126, 53.798538, 62.017090>,  <62.867912, 53.680088, 62.149994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.548126, 53.798538, 62.017090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.349007, 54.009533, 62.292465>,  <63.229534, 54.136131, 62.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.349007, 54.009533, 62.292465>,  <63.548126, 53.798538, 62.017090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.349007, 54.009533, 62.292465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657586, -0.288003, 0.696158,
		0.565487, 0.799258, -0.203499,
		-0.497801, 0.527486, 0.688442,
		63.199665, 54.167778, 62.498997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.016754, 54.322708, 62.133533>,  <63.548126, 53.798538, 62.017090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.016754, 54.322708, 62.133533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.773857, 54.235794, 62.439224>,  <63.628120, 54.183643, 62.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.773857, 54.235794, 62.439224>,  <64.016754, 54.322708, 62.133533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.773857, 54.235794, 62.439224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793475, -0.215154, 0.569303,
		0.040725, 0.952100, 0.303062,
		-0.607239, -0.217287, 0.764230,
		63.591686, 54.170609, 62.668491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.328156, 54.872749, 61.869678>,  <64.016754, 54.322708, 62.133533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.328156, 54.872749, 61.869678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.469849, 54.851082, 61.496246>,  <64.554863, 54.838081, 61.272186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.469849, 54.851082, 61.496246>,  <64.328156, 54.872749, 61.869678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.469849, 54.851082, 61.496246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934841, -0.005317, 0.355026,
		-0.024194, -0.998518, 0.048754,
		0.354240, -0.054167, -0.933584,
		64.576118, 54.834831, 61.216171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.943901, 54.514008, 61.780281>,  <64.328156, 54.872749, 61.869678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.943901, 54.514008, 61.780281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.980003, 54.679802, 61.418053>,  <65.001663, 54.779278, 61.200718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.980003, 54.679802, 61.418053>,  <64.943901, 54.514008, 61.780281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.980003, 54.679802, 61.418053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959925, 0.206040, 0.189977,
		0.265326, -0.886423, -0.379284,
		0.090252, 0.414490, -0.905568,
		65.007080, 54.804150, 61.146381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.807487, 53.856976, 62.143795>,  <64.943901, 54.514008, 61.780281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.807487, 53.856976, 62.143795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.098549, 53.606956, 62.256813>,  <65.273186, 53.456947, 62.324623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.098549, 53.606956, 62.256813>,  <64.807487, 53.856976, 62.143795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.098549, 53.606956, 62.256813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613489, 0.777279, 0.139530,
		-0.306830, 0.071810, 0.949051,
		0.727658, -0.625045, 0.282547,
		65.316849, 53.419441, 62.341576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.196281, 54.202507, 62.600544>,  <64.807487, 53.856976, 62.143795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.196281, 54.202507, 62.600544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.466949, 53.936646, 62.473831>,  <65.629349, 53.777126, 62.397804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.466949, 53.936646, 62.473831>,  <65.196281, 54.202507, 62.600544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.466949, 53.936646, 62.473831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730975, 0.658021, 0.180788,
		0.088287, -0.353894, 0.931109,
		0.676669, -0.664656, -0.316782,
		65.669952, 53.737247, 62.378796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.836639, 54.019070, 63.038425>,  <65.196281, 54.202507, 62.600544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.836639, 54.019070, 63.038425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.995239, 53.988312, 62.672501>,  <66.090401, 53.969856, 62.452946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.995239, 53.988312, 62.672501>,  <65.836639, 54.019070, 63.038425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.995239, 53.988312, 62.672501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804271, 0.509569, 0.305756,
		0.442649, -0.856987, 0.263884,
		0.396496, -0.076892, -0.914811,
		66.114189, 53.965244, 62.398056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.840973, 54.475521, 62.440762>,  <65.836639, 54.019070, 63.038425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.840973, 54.475521, 62.440762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.993431, 54.810669, 62.284454>,  <66.084908, 55.011757, 62.190670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.993431, 54.810669, 62.284454>,  <65.840973, 54.475521, 62.440762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.993431, 54.810669, 62.284454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726276, -0.009823, 0.687334,
		0.572060, -0.545776, -0.612271,
		0.381144, 0.837874, -0.390764,
		66.107773, 55.062031, 62.167225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.680870, 54.512112, 62.329243>,  <65.840973, 54.475521, 62.440762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.680870, 54.512112, 62.329243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.506546, 54.860470, 62.420120>,  <66.401955, 55.069485, 62.474648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.506546, 54.860470, 62.420120>,  <66.680870, 54.512112, 62.329243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.506546, 54.860470, 62.420120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561900, 0.066079, 0.824561,
		0.703091, 0.487012, -0.518152,
		-0.435810, 0.870892, 0.227193,
		66.375801, 55.121738, 62.488277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.457520, 54.264412, 62.190868>,  <66.680870, 54.512112, 62.329243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.457520, 54.264412, 62.190868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.698997, 54.054886, 61.950485>,  <67.843887, 53.929169, 61.806255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.698997, 54.054886, 61.950485>,  <67.457520, 54.264412, 62.190868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.698997, 54.054886, 61.950485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411672, 0.850385, -0.327674,
		0.682691, -0.049581, 0.729023,
		0.603704, -0.523819, -0.600961,
		67.880112, 53.897739, 61.770195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.932137, 54.660625, 62.009914>,  <67.457520, 54.264412, 62.190868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.932137, 54.660625, 62.009914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.047508, 54.383392, 61.745659>,  <68.116730, 54.217052, 61.587105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.047508, 54.383392, 61.745659>,  <67.932137, 54.660625, 62.009914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.047508, 54.383392, 61.745659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650215, 0.648257, -0.396211,
		0.702872, -0.315281, 0.637627,
		0.288429, -0.693080, -0.660642,
		68.134033, 54.175468, 61.547466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.627998, 54.429764, 61.957066>,  <67.932137, 54.660625, 62.009914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.627998, 54.429764, 61.957066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.464226, 54.381809, 61.595291>,  <68.365967, 54.353039, 61.378227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.464226, 54.381809, 61.595291>,  <68.627998, 54.429764, 61.957066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.464226, 54.381809, 61.595291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697151, 0.598359, -0.394901,
		0.588516, -0.792209, -0.161408,
		-0.409424, -0.119880, -0.904434,
		68.341400, 54.345844, 61.323959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.118767, 54.294666, 61.441589>,  <68.627998, 54.429764, 61.957066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.118767, 54.294666, 61.441589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823975, 54.445961, 61.217514>,  <68.647102, 54.536739, 61.083069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823975, 54.445961, 61.217514>,  <69.118767, 54.294666, 61.441589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.823975, 54.445961, 61.217514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674745, 0.460603, -0.576684,
		0.039901, -0.802983, -0.594665,
		-0.736972, 0.378237, -0.560187,
		68.602882, 54.559433, 61.049458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.035484, 54.051777, 60.682869>,  <69.118767, 54.294666, 61.441589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.035484, 54.051777, 60.682869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.916985, 54.426117, 60.759209>,  <68.845886, 54.650719, 60.805012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.916985, 54.426117, 60.759209>,  <69.035484, 54.051777, 60.682869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.916985, 54.426117, 60.759209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813135, 0.351954, -0.463617,
		-0.501046, 0.017843, -0.865236,
		-0.296251, 0.935847, 0.190854,
		68.828110, 54.706871, 60.816463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.183540, 54.503723, 60.124172>,  <69.035484, 54.051777, 60.682869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.183540, 54.503723, 60.124172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.431564, 54.196724, 60.059097>,  <69.580376, 54.012524, 60.020054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.431564, 54.196724, 60.059097>,  <69.183540, 54.503723, 60.124172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.431564, 54.196724, 60.059097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744579, -0.510329, -0.430310,
		0.247239, 0.387953, -0.887900,
		0.620061, -0.767501, -0.162688,
		69.617584, 53.966473, 60.010292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.587517, 55.078327, 60.343372>,  <69.183540, 54.503723, 60.124172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.587517, 55.078327, 60.343372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.611328, 55.115353, 60.740944>,  <69.625618, 55.137569, 60.979485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.611328, 55.115353, 60.740944>,  <69.587517, 55.078327, 60.343372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.611328, 55.115353, 60.740944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578917, -0.807943, 0.109919,
		0.813210, -0.581944, 0.005488,
		0.059533, 0.092564, 0.993925,
		69.629189, 55.143124, 61.039120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.629128, 55.809879, 60.417740>,  <69.587517, 55.078327, 60.343372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.629128, 55.809879, 60.417740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.451141, 56.036404, 60.695244>,  <69.344353, 56.172318, 60.861744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.451141, 56.036404, 60.695244>,  <69.629128, 55.809879, 60.417740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.451141, 56.036404, 60.695244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696960, 0.705443, -0.128832,
		-0.562364, 0.426194, -0.708594,
		-0.444965, 0.566312, 0.693756,
		69.317650, 56.206299, 60.903370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.669250, 56.405327, 60.200294>,  <69.629128, 55.809879, 60.417740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.669250, 56.405327, 60.200294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.701202, 56.438683, 60.597618>,  <69.720375, 56.458694, 60.836014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.701202, 56.438683, 60.597618>,  <69.669250, 56.405327, 60.200294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.701202, 56.438683, 60.597618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755633, 0.644840, -0.114892,
		-0.650107, 0.759755, -0.011505,
		0.079871, 0.083386, 0.993311,
		69.725166, 56.463699, 60.895611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.740219, 57.097549, 60.357994>,  <69.669250, 56.405327, 60.200294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.740219, 57.097549, 60.357994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.936516, 56.904846, 60.648399>,  <70.054291, 56.789223, 60.822643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.936516, 56.904846, 60.648399>,  <69.740219, 57.097549, 60.357994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.936516, 56.904846, 60.648399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747072, 0.661454, -0.066048,
		-0.448403, 0.574793, 0.684506,
		0.490733, -0.481759, 0.726010,
		70.083733, 56.760319, 60.866203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.781334, 57.507931, 61.043232>,  <69.740219, 57.097549, 60.357994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.781334, 57.507931, 61.043232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.062767, 57.244247, 60.937088>,  <70.231628, 57.086037, 60.873402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.062767, 57.244247, 60.937088>,  <69.781334, 57.507931, 61.043232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.062767, 57.244247, 60.937088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609920, 0.751825, -0.250514,
		0.364641, 0.014412, 0.931037,
		0.703587, -0.659205, -0.265355,
		70.273842, 57.046486, 60.857483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.560043, 57.697601, 61.187153>,  <69.781334, 57.507931, 61.043232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.560043, 57.697601, 61.187153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.569572, 57.425194, 60.894402>,  <70.575287, 57.261749, 60.718750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.569572, 57.425194, 60.894402>,  <70.560043, 57.697601, 61.187153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.569572, 57.425194, 60.894402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641883, 0.571668, -0.511060,
		0.766433, -0.457608, 0.450750,
		0.023814, -0.681021, -0.731876,
		70.576714, 57.220886, 60.674839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.124878, 57.825451, 60.929146>,  <70.560043, 57.697601, 61.187153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.124878, 57.825451, 60.929146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.961464, 57.600349, 60.641701>,  <70.863419, 57.465286, 60.469234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.961464, 57.600349, 60.641701>,  <71.124878, 57.825451, 60.929146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.961464, 57.600349, 60.641701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577506, 0.450315, -0.680958,
		0.706817, -0.693196, 0.141029,
		-0.408529, -0.562758, -0.718615,
		70.838905, 57.431522, 60.426117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.601120, 57.511333, 60.581528>,  <71.124878, 57.825451, 60.929146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.601120, 57.511333, 60.581528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.284378, 57.538967, 60.338814>,  <71.094330, 57.555546, 60.193184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.284378, 57.538967, 60.338814>,  <71.601120, 57.511333, 60.581528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.284378, 57.538967, 60.338814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471984, 0.699748, -0.536268,
		0.387552, -0.711042, -0.586706,
		-0.791855, 0.069084, -0.606789,
		71.046822, 57.559692, 60.156776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.070160, 58.123764, 60.421654>,  <71.601120, 57.511333, 60.581528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.070160, 58.123764, 60.421654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.338837, 58.357143, 60.239037>,  <72.500038, 58.497169, 60.129467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.338837, 58.357143, 60.239037>,  <72.070160, 58.123764, 60.421654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.338837, 58.357143, 60.239037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321389, 0.784724, 0.530016,
		0.667495, -0.209276, 0.714600,
		0.671684, 0.583448, -0.456541,
		72.540344, 58.532177, 60.102074>
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
