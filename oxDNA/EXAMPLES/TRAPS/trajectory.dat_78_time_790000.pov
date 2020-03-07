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
	<36.636780, 53.149483, 49.437225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689564, 52.871151, 49.719620>,  <36.721233, 52.704151, 49.889057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689564, 52.871151, 49.719620>,  <36.636780, 53.149483, 49.437225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689564, 52.871151, 49.719620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820091, 0.476701, 0.316553,
		-0.556809, 0.537196, 0.633549,
		0.131963, -0.695828, 0.705981,
		36.729153, 52.662403, 49.931416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728748, 53.438480, 50.177696>,  <36.636780, 53.149483, 49.437225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728748, 53.438480, 50.177696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898853, 53.079674, 50.129494>,  <37.000916, 52.864391, 50.100571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898853, 53.079674, 50.129494>,  <36.728748, 53.438480, 50.177696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898853, 53.079674, 50.129494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876968, 0.375461, 0.299928,
		-0.223794, -0.233228, 0.946320,
		0.425258, -0.897014, -0.120508,
		37.026432, 52.810570, 50.093342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184582, 53.309978, 50.777908>,  <36.728748, 53.438480, 50.177696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184582, 53.309978, 50.777908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303043, 53.115471, 50.449074>,  <37.374119, 52.998764, 50.251774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303043, 53.115471, 50.449074>,  <37.184582, 53.309978, 50.777908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303043, 53.115471, 50.449074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950585, 0.234016, 0.204021,
		0.093172, -0.841889, 0.531546,
		0.296154, -0.486271, -0.822091,
		37.391888, 52.969589, 50.202446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723896, 52.782677, 50.919170>,  <37.184582, 53.309978, 50.777908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723896, 52.782677, 50.919170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775719, 52.921211, 50.547523>,  <37.806812, 53.004333, 50.324535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775719, 52.921211, 50.547523>,  <37.723896, 52.782677, 50.919170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775719, 52.921211, 50.547523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957137, 0.201108, 0.208433,
		0.259042, -0.916300, -0.305438,
		0.129561, 0.346338, -0.929120,
		37.814587, 53.025112, 50.268787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387161, 52.493172, 50.584484>,  <37.723896, 52.782677, 50.919170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387161, 52.493172, 50.584484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291965, 52.856880, 50.447906>,  <38.234848, 53.075104, 50.365959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291965, 52.856880, 50.447906>,  <38.387161, 52.493172, 50.584484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291965, 52.856880, 50.447906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881057, 0.350061, 0.318113,
		0.408778, -0.225126, -0.884431,
		-0.237990, 0.909272, -0.341446,
		38.220570, 53.129662, 50.345474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954258, 52.727615, 50.148186>,  <38.387161, 52.493172, 50.584484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954258, 52.727615, 50.148186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774780, 53.051815, 50.298790>,  <38.667091, 53.246334, 50.389153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774780, 53.051815, 50.298790>,  <38.954258, 52.727615, 50.148186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774780, 53.051815, 50.298790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882533, 0.335510, 0.329497,
		0.140735, 0.480126, -0.865836,
		-0.448697, 0.810501, 0.376509,
		38.640171, 53.294964, 50.411743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151520, 53.339233, 49.816406>,  <38.954258, 52.727615, 50.148186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151520, 53.339233, 49.816406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053574, 53.396347, 50.200001>,  <38.994808, 53.430614, 50.430157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053574, 53.396347, 50.200001>,  <39.151520, 53.339233, 49.816406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053574, 53.396347, 50.200001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883814, 0.439547, 0.160222,
		-0.398642, 0.886798, -0.233827,
		-0.244862, 0.142788, 0.958986,
		38.980114, 53.439182, 50.487698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304352, 54.090416, 49.837612>,  <39.151520, 53.339233, 49.816406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304352, 54.090416, 49.837612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292992, 53.924500, 50.201401>,  <39.286175, 53.824951, 50.419674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292992, 53.924500, 50.201401>,  <39.304352, 54.090416, 49.837612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292992, 53.924500, 50.201401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779978, 0.559833, 0.279682,
		-0.625163, 0.717311, 0.307630,
		-0.028397, -0.414791, 0.909473,
		39.284473, 53.800060, 50.474243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099438, 54.492962, 50.445610>,  <39.304352, 54.090416, 49.837612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099438, 54.492962, 50.445610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395664, 54.228855, 50.495575>,  <39.573402, 54.070389, 50.525555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395664, 54.228855, 50.495575>,  <39.099438, 54.492962, 50.445610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395664, 54.228855, 50.495575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661207, 0.749148, 0.039789,
		-0.119851, 0.053128, 0.991369,
		0.740568, -0.660269, 0.124915,
		39.617836, 54.030773, 50.533051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419918, 54.818195, 50.906986>,  <39.099438, 54.492962, 50.445610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419918, 54.818195, 50.906986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654289, 54.541100, 50.738792>,  <39.794910, 54.374844, 50.637875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654289, 54.541100, 50.738792>,  <39.419918, 54.818195, 50.906986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654289, 54.541100, 50.738792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745831, 0.663904, -0.054478,
		0.316899, -0.281690, 0.905663,
		0.585927, -0.692736, -0.420484,
		39.830067, 54.333279, 50.612648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062698, 54.687374, 51.213905>,  <39.419918, 54.818195, 50.906986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062698, 54.687374, 51.213905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119736, 54.639103, 50.820946>,  <40.153957, 54.610142, 50.585171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119736, 54.639103, 50.820946>,  <40.062698, 54.687374, 51.213905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119736, 54.639103, 50.820946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691161, 0.722608, 0.011558,
		0.708493, -0.680642, 0.186450,
		0.142597, -0.120678, -0.982396,
		40.162514, 54.602898, 50.526226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738659, 54.358742, 51.104015>,  <40.062698, 54.687374, 51.213905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738659, 54.358742, 51.104015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592098, 54.606316, 50.826118>,  <40.504162, 54.754860, 50.659378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592098, 54.606316, 50.826118>,  <40.738659, 54.358742, 51.104015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592098, 54.606316, 50.826118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836828, 0.545633, 0.044759,
		0.406780, -0.564984, -0.717861,
		-0.366401, 0.618933, -0.694746,
		40.482178, 54.791996, 50.617695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191906, 54.459484, 50.467514>,  <40.738659, 54.358742, 51.104015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191906, 54.459484, 50.467514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965538, 54.787716, 50.499489>,  <40.829716, 54.984653, 50.518673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965538, 54.787716, 50.499489>,  <41.191906, 54.459484, 50.467514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965538, 54.787716, 50.499489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814638, 0.571466, -0.098958,
		-0.126883, 0.009117, -0.991876,
		-0.565921, 0.820575, 0.079936,
		40.795761, 55.033890, 50.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084385, 54.844936, 49.902805>,  <41.191906, 54.459484, 50.467514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084385, 54.844936, 49.902805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113777, 55.093559, 50.214771>,  <41.131413, 55.242733, 50.401951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113777, 55.093559, 50.214771>,  <41.084385, 54.844936, 49.902805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113777, 55.093559, 50.214771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750833, 0.480227, -0.453467,
		-0.656392, 0.618906, -0.431399,
		0.073484, 0.621560, 0.779912,
		41.135822, 55.280025, 50.448746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898491, 54.895290, 50.025654>,  <41.084385, 54.844936, 49.902805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898491, 54.895290, 50.025654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177036, 54.742992, 50.269001>,  <42.344162, 54.651615, 50.415009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177036, 54.742992, 50.269001>,  <41.898491, 54.895290, 50.025654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177036, 54.742992, 50.269001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693421, 0.575511, -0.433538,
		-0.185055, 0.723754, 0.664781,
		0.696364, -0.380744, 0.608368,
		42.385944, 54.628769, 50.451511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390564, 55.448586, 50.044151>,  <41.898491, 54.895290, 50.025654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390564, 55.448586, 50.044151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575760, 55.122200, 50.182625>,  <42.686878, 54.926369, 50.265709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575760, 55.122200, 50.182625>,  <42.390564, 55.448586, 50.044151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575760, 55.122200, 50.182625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879511, 0.374449, -0.293681,
		0.110004, 0.440445, 0.891015,
		0.462990, -0.815963, 0.346185,
		42.714657, 54.877411, 50.286480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994267, 55.614979, 50.561790>,  <42.390564, 55.448586, 50.044151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994267, 55.614979, 50.561790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034225, 55.288467, 50.334206>,  <43.058201, 55.092560, 50.197655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034225, 55.288467, 50.334206>,  <42.994267, 55.614979, 50.561790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034225, 55.288467, 50.334206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791844, 0.411473, -0.451301,
		0.602498, -0.405442, 0.687469,
		0.099898, -0.816276, -0.568959,
		43.064194, 55.043583, 50.163517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682922, 55.904156, 50.436890>,  <42.994267, 55.614979, 50.561790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682922, 55.904156, 50.436890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817402, 56.246204, 50.279030>,  <43.898090, 56.451431, 50.184315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817402, 56.246204, 50.279030>,  <43.682922, 55.904156, 50.436890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817402, 56.246204, 50.279030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111153, 0.452139, 0.884995,
		0.935211, -0.253663, 0.247055,
		0.336194, 0.855117, -0.394650,
		43.918259, 56.502739, 50.160633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359180, 56.148132, 50.843830>,  <43.682922, 55.904156, 50.436890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359180, 56.148132, 50.843830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158524, 56.453156, 50.680435>,  <44.038132, 56.636169, 50.582397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158524, 56.453156, 50.680435>,  <44.359180, 56.148132, 50.843830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158524, 56.453156, 50.680435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073470, 0.432937, 0.898425,
		0.861952, 0.480696, -0.161153,
		-0.501638, 0.762559, -0.408488,
		44.008034, 56.681923, 50.557888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628117, 56.849651, 51.097759>,  <44.359180, 56.148132, 50.843830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628117, 56.849651, 51.097759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246624, 56.851891, 50.977516>,  <44.017727, 56.853233, 50.905369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246624, 56.851891, 50.977516>,  <44.628117, 56.849651, 51.097759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246624, 56.851891, 50.977516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268384, 0.434808, 0.859600,
		0.135519, 0.900506, -0.413188,
		-0.953732, 0.005600, -0.300606,
		43.960503, 56.853569, 50.887333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089684, 56.992939, 51.653313>,  <44.628117, 56.849651, 51.097759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089684, 56.992939, 51.653313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048306, 56.599026, 51.709183>,  <44.023479, 56.362679, 51.742706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048306, 56.599026, 51.709183>,  <44.089684, 56.992939, 51.653313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048306, 56.599026, 51.709183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796999, 0.001942, 0.603978,
		-0.595056, 0.173801, 0.784667,
		-0.103448, -0.984779, 0.139675,
		44.017269, 56.303593, 51.751083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242332, 56.806236, 52.394344>,  <44.089684, 56.992939, 51.653313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242332, 56.806236, 52.394344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324627, 56.493347, 52.159126>,  <44.374004, 56.305614, 52.017998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324627, 56.493347, 52.159126>,  <44.242332, 56.806236, 52.394344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324627, 56.493347, 52.159126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900241, -0.084332, 0.427146,
		-0.383716, -0.617261, 0.686842,
		0.205738, -0.782226, -0.588043,
		44.386349, 56.258678, 51.982712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327030, 56.103550, 52.702724>,  <44.242332, 56.806236, 52.394344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327030, 56.103550, 52.702724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561394, 56.178524, 52.387363>,  <44.702011, 56.223511, 52.198147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561394, 56.178524, 52.387363>,  <44.327030, 56.103550, 52.702724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561394, 56.178524, 52.387363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806168, -0.233855, 0.543511,
		-0.082497, -0.954033, -0.288124,
		0.585907, 0.187439, -0.788404,
		44.737167, 56.234756, 52.150841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738483, 55.486759, 52.519192>,  <44.327030, 56.103550, 52.702724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738483, 55.486759, 52.519192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944065, 55.806248, 52.394039>,  <45.067413, 55.997940, 52.318947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944065, 55.806248, 52.394039>,  <44.738483, 55.486759, 52.519192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944065, 55.806248, 52.394039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733094, -0.219563, 0.643712,
		0.445450, -0.560209, -0.698384,
		0.513953, 0.798723, -0.312881,
		45.098251, 56.045864, 52.300175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424496, 55.236835, 52.559937>,  <44.738483, 55.486759, 52.519192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424496, 55.236835, 52.559937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468868, 55.631107, 52.509136>,  <45.495491, 55.867672, 52.478657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468868, 55.631107, 52.509136>,  <45.424496, 55.236835, 52.559937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468868, 55.631107, 52.509136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832891, -0.022488, 0.552979,
		0.542204, -0.167126, -0.823458,
		0.110936, 0.985679, -0.127005,
		45.502148, 55.926811, 52.471035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124191, 55.515785, 52.295677>,  <45.424496, 55.236835, 52.559937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124191, 55.515785, 52.295677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945496, 55.746651, 52.569118>,  <45.838280, 55.885170, 52.733181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945496, 55.746651, 52.569118>,  <46.124191, 55.515785, 52.295677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945496, 55.746651, 52.569118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752268, -0.171260, 0.636209,
		0.484268, 0.798471, -0.357670,
		-0.446740, 0.577160, 0.683601,
		45.811474, 55.919800, 52.774200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669102, 55.994892, 52.661831>,  <46.124191, 55.515785, 52.295677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669102, 55.994892, 52.661831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364605, 55.950691, 52.917427>,  <46.181908, 55.924171, 53.070786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364605, 55.950691, 52.917427>,  <46.669102, 55.994892, 52.661831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364605, 55.950691, 52.917427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648377, -0.146472, 0.747097,
		0.011040, 0.983024, 0.183146,
		-0.761240, -0.110500, 0.638987,
		46.136234, 55.917542, 53.109123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633987, 56.542080, 53.145641>,  <46.669102, 55.994892, 52.661831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633987, 56.542080, 53.145641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455441, 56.232826, 53.325874>,  <46.348312, 56.047276, 53.434013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455441, 56.232826, 53.325874>,  <46.633987, 56.542080, 53.145641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455441, 56.232826, 53.325874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741586, -0.037798, 0.669792,
		-0.500805, 0.633120, 0.590214,
		-0.446367, -0.773130, 0.450584,
		46.321529, 56.000889, 53.461048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.531841, 56.660389, 53.758732>,  <46.633987, 56.542080, 53.145641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.531841, 56.660389, 53.758732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572018, 56.264790, 53.715302>,  <46.596123, 56.027428, 53.689243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572018, 56.264790, 53.715302>,  <46.531841, 56.660389, 53.758732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572018, 56.264790, 53.715302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675107, -0.012416, 0.737616,
		-0.730851, -0.147382, 0.666435,
		0.100437, -0.989002, -0.108572,
		46.602150, 55.968090, 53.682732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409000, 56.320747, 54.352863>,  <46.531841, 56.660389, 53.758732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409000, 56.320747, 54.352863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655899, 56.071949, 54.160141>,  <46.804039, 55.922672, 54.044510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655899, 56.071949, 54.160141>,  <46.409000, 56.320747, 54.352863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655899, 56.071949, 54.160141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552522, -0.093275, 0.828263,
		-0.560114, -0.777447, 0.286092,
		0.617245, -0.621993, -0.481801,
		46.841072, 55.885349, 54.015602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.453960, 55.543556, 54.619610>,  <46.409000, 56.320747, 54.352863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.453960, 55.543556, 54.619610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798973, 55.679520, 54.469673>,  <47.005981, 55.761097, 54.379711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798973, 55.679520, 54.469673>,  <46.453960, 55.543556, 54.619610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798973, 55.679520, 54.469673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453075, -0.188944, 0.871219,
		0.225314, -0.921282, -0.316975,
		0.862529, 0.339911, -0.374838,
		47.057732, 55.781494, 54.357224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.163433, 55.198460, 54.812824>,  <46.453960, 55.543556, 54.619610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.163433, 55.198460, 54.812824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303951, 55.559978, 54.715057>,  <47.388264, 55.776890, 54.656399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303951, 55.559978, 54.715057>,  <47.163433, 55.198460, 54.812824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.303951, 55.559978, 54.715057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643816, -0.043652, 0.763934,
		0.679772, -0.425730, -0.597214,
		0.351299, 0.903797, -0.244418,
		47.409340, 55.831116, 54.641731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800030, 55.236809, 54.362789>,  <47.163433, 55.198460, 54.812824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800030, 55.236809, 54.362789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739037, 55.506474, 54.651859>,  <47.702438, 55.668270, 54.825302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739037, 55.506474, 54.651859>,  <47.800030, 55.236809, 54.362789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.739037, 55.506474, 54.651859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697461, -0.444667, 0.561978,
		0.700212, 0.589732, -0.402393,
		-0.152485, 0.674157, 0.722676,
		47.693291, 55.708721, 54.868664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.336765, 55.552696, 54.833981>,  <47.800030, 55.236809, 54.362789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.336765, 55.552696, 54.833981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.723083, 55.649620, 54.870930>,  <48.954872, 55.707775, 54.893101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.723083, 55.649620, 54.870930>,  <48.336765, 55.552696, 54.833981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.723083, 55.649620, 54.870930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136321, 0.171376, 0.975729,
		0.220598, -0.954943, 0.198545,
		0.965791, 0.242310, 0.092373,
		49.012821, 55.722313, 54.898643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.912601, 55.760029, 55.445747>,  <48.336765, 55.552696, 54.833981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.912601, 55.760029, 55.445747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.006004, 55.960869, 55.778824>,  <48.062046, 56.081371, 55.978668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.006004, 55.960869, 55.778824>,  <47.912601, 55.760029, 55.445747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.006004, 55.960869, 55.778824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923913, 0.152361, -0.350956,
		-0.303085, 0.851282, -0.428321,
		0.233503, 0.502101, 0.832689,
		48.076054, 56.111500, 56.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.294449, 56.402222, 55.346333>,  <47.912601, 55.760029, 55.445747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.294449, 56.402222, 55.346333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.384953, 56.287586, 55.718712>,  <48.439255, 56.218803, 55.942139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.384953, 56.287586, 55.718712>,  <48.294449, 56.402222, 55.346333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.384953, 56.287586, 55.718712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972480, 0.011924, -0.232680,
		0.055583, 0.957979, 0.281401,
		0.226258, -0.286590, 0.930953,
		48.452831, 56.201611, 55.997997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.928204, 56.726891, 55.459248>,  <48.294449, 56.402222, 55.346333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.928204, 56.726891, 55.459248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.909351, 56.441933, 55.739326>,  <48.898041, 56.270958, 55.907375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.909351, 56.441933, 55.739326>,  <48.928204, 56.726891, 55.459248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.909351, 56.441933, 55.739326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962799, -0.219119, -0.158132,
		0.266078, 0.666696, 0.696218,
		-0.047129, -0.712393, 0.700197,
		48.895214, 56.228214, 55.949387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.432293, 56.799866, 55.873306>,  <48.928204, 56.726891, 55.459248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.432293, 56.799866, 55.873306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.348331, 56.408890, 55.863876>,  <49.297955, 56.174305, 55.858219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.348331, 56.408890, 55.863876>,  <49.432293, 56.799866, 55.873306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.348331, 56.408890, 55.863876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945959, -0.196927, -0.257646,
		0.247191, -0.076378, 0.965952,
		-0.209901, -0.977438, -0.023572,
		49.285362, 56.115658, 55.856804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.827099, 56.389885, 56.355366>,  <49.432293, 56.799866, 55.873306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.827099, 56.389885, 56.355366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.715790, 56.229588, 56.006203>,  <49.649002, 56.133408, 55.796707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.715790, 56.229588, 56.006203>,  <49.827099, 56.389885, 56.355366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.715790, 56.229588, 56.006203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923748, 0.137332, -0.357534,
		0.263159, -0.905837, 0.331974,
		-0.278277, -0.400748, -0.872905,
		49.632305, 56.109364, 55.744331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.375847, 55.949493, 56.138683>,  <49.827099, 56.389885, 56.355366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.375847, 55.949493, 56.138683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.155754, 56.072903, 55.828316>,  <50.023697, 56.146950, 55.642094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.155754, 56.072903, 55.828316>,  <50.375847, 55.949493, 56.138683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.155754, 56.072903, 55.828316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834989, 0.196838, -0.513856,
		-0.005808, -0.930627, -0.365924,
		-0.550236, 0.308527, -0.775920,
		49.990685, 56.165462, 55.595539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.541111, 55.620586, 55.586571>,  <50.375847, 55.949493, 56.138683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.541111, 55.620586, 55.586571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.430027, 55.987953, 55.473862>,  <50.363377, 56.208374, 55.406239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.430027, 55.987953, 55.473862>,  <50.541111, 55.620586, 55.586571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.430027, 55.987953, 55.473862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883116, 0.128613, -0.451183,
		-0.378133, -0.374132, -0.846782,
		-0.277709, 0.918414, -0.281769,
		50.346714, 56.263477, 55.389332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.374451, 55.686874, 54.871693>,  <50.541111, 55.620586, 55.586571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.374451, 55.686874, 54.871693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.587242, 55.956966, 55.076073>,  <50.714916, 56.119022, 55.198700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.587242, 55.956966, 55.076073>,  <50.374451, 55.686874, 54.871693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.587242, 55.956966, 55.076073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819353, -0.258203, -0.511851,
		-0.213690, 0.690937, -0.690610,
		0.531975, 0.675231, 0.510946,
		50.746834, 56.159534, 55.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.829945, 56.017223, 54.294960>,  <50.374451, 55.686874, 54.871693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.829945, 56.017223, 54.294960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.997360, 56.095043, 54.649807>,  <51.097809, 56.141735, 54.862713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.997360, 56.095043, 54.649807>,  <50.829945, 56.017223, 54.294960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.997360, 56.095043, 54.649807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897296, -0.239473, -0.370826,
		0.140296, 0.951211, -0.274798,
		0.418540, 0.194550, 0.887116,
		51.122921, 56.153408, 54.915943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.345848, 56.504864, 54.166622>,  <50.829945, 56.017223, 54.294960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.345848, 56.504864, 54.166622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.437008, 56.214073, 54.425720>,  <51.491703, 56.039600, 54.581181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.437008, 56.214073, 54.425720>,  <51.345848, 56.504864, 54.166622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.437008, 56.214073, 54.425720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903160, -0.090739, -0.419605,
		0.363817, 0.680646, 0.635892,
		0.227902, -0.726972, 0.647744,
		51.505379, 55.995983, 54.620045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.914833, 56.543407, 54.603603>,  <51.345848, 56.504864, 54.166622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.914833, 56.543407, 54.603603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.923866, 56.146351, 54.556007>,  <51.929287, 55.908119, 54.527451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.923866, 56.146351, 54.556007>,  <51.914833, 56.543407, 54.603603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.923866, 56.146351, 54.556007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902529, 0.071435, -0.424661,
		0.430035, -0.097800, 0.897499,
		0.022581, -0.992639, -0.118987,
		51.930641, 55.848560, 54.520309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.566498, 56.440571, 54.792755>,  <51.914833, 56.543407, 54.603603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.566498, 56.440571, 54.792755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.506531, 56.088726, 54.612171>,  <52.470551, 55.877621, 54.503822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.506531, 56.088726, 54.612171>,  <52.566498, 56.440571, 54.792755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.506531, 56.088726, 54.612171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946852, 0.003708, -0.321649,
		0.284599, -0.475683, 0.832303,
		-0.149918, -0.879609, -0.451457,
		52.461555, 55.824844, 54.476734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.139633, 56.346344, 54.306824>,  <52.566498, 56.440571, 54.792755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.139633, 56.346344, 54.306824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.932678, 56.018559, 54.208199>,  <52.808506, 55.821888, 54.149021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.932678, 56.018559, 54.208199>,  <53.139633, 56.346344, 54.306824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.932678, 56.018559, 54.208199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637138, -0.176526, -0.750262,
		0.571287, -0.545269, 0.613443,
		-0.517384, -0.819463, -0.246565,
		52.777462, 55.772720, 54.134228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.643166, 55.948059, 54.154037>,  <53.139633, 56.346344, 54.306824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.643166, 55.948059, 54.154037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.321308, 55.841209, 53.941925>,  <53.128193, 55.777100, 53.814655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.321308, 55.841209, 53.941925>,  <53.643166, 55.948059, 54.154037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.321308, 55.841209, 53.941925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559289, -0.041088, -0.827954,
		0.199380, -0.962785, 0.182462,
		-0.804639, -0.267126, -0.530283,
		53.079918, 55.761070, 53.782841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.876255, 55.330002, 53.715496>,  <53.643166, 55.948059, 54.154037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.876255, 55.330002, 53.715496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.565525, 55.529289, 53.561451>,  <53.379086, 55.648861, 53.469025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.565525, 55.529289, 53.561451>,  <53.876255, 55.330002, 53.715496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.565525, 55.529289, 53.561451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505378, 0.128407, -0.853291,
		-0.375674, -0.857490, -0.351539,
		-0.776828, 0.498219, -0.385117,
		53.332478, 55.678757, 53.445915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.498562, 54.911858, 53.097370>,  <53.876255, 55.330002, 53.715496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.498562, 54.911858, 53.097370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.486923, 55.311443, 53.111389>,  <53.479939, 55.551193, 53.119801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.486923, 55.311443, 53.111389>,  <53.498562, 54.911858, 53.097370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.486923, 55.311443, 53.111389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597689, 0.045490, -0.800436,
		-0.801200, -0.002347, -0.598392,
		-0.029100, 0.998962, 0.035044,
		53.478191, 55.611134, 53.121902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.262589, 55.072502, 52.432320>,  <53.498562, 54.911858, 53.097370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.262589, 55.072502, 52.432320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.471367, 55.353134, 52.626373>,  <53.596634, 55.521515, 52.742805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.471367, 55.353134, 52.626373>,  <53.262589, 55.072502, 52.432320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.471367, 55.353134, 52.626373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616144, 0.083208, -0.783226,
		-0.589866, 0.707712, -0.388848,
		0.521943, 0.701584, 0.485134,
		53.627949, 55.563610, 52.771912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.374710, 55.713459, 52.192913>,  <53.262589, 55.072502, 52.432320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.374710, 55.713459, 52.192913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.721699, 55.622944, 52.370132>,  <53.929890, 55.568634, 52.476463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.721699, 55.622944, 52.370132>,  <53.374710, 55.713459, 52.192913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.721699, 55.622944, 52.370132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405072, -0.195738, -0.893086,
		0.288820, 0.954190, -0.078131,
		0.867467, -0.226293, 0.443049,
		53.981937, 55.555058, 52.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.912441, 56.059231, 51.801395>,  <53.374710, 55.713459, 52.192913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.912441, 56.059231, 51.801395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.016762, 55.720837, 51.987423>,  <54.079353, 55.517799, 52.099041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.016762, 55.720837, 51.987423>,  <53.912441, 56.059231, 51.801395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.016762, 55.720837, 51.987423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404823, -0.341502, -0.848230,
		0.876413, 0.409491, 0.253410,
		0.260803, -0.845986, 0.465069,
		54.095001, 55.467041, 52.126945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.543869, 55.914539, 51.575336>,  <53.912441, 56.059231, 51.801395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.543869, 55.914539, 51.575336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.436150, 55.549969, 51.699776>,  <54.371517, 55.331226, 51.774437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.436150, 55.549969, 51.699776>,  <54.543869, 55.914539, 51.575336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.436150, 55.549969, 51.699776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416362, -0.401467, -0.815761,
		0.868400, -0.090157, 0.487599,
		-0.269301, -0.911425, 0.311096,
		54.355358, 55.276543, 51.793106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.110573, 55.459579, 51.748993>,  <54.543869, 55.914539, 51.575336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.110573, 55.459579, 51.748993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.803032, 55.243057, 51.612846>,  <54.618507, 55.113144, 51.531158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.803032, 55.243057, 51.612846>,  <55.110573, 55.459579, 51.748993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.803032, 55.243057, 51.612846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623566, -0.516938, -0.586465,
		0.141511, -0.663146, 0.734991,
		-0.768856, -0.541307, -0.340363,
		54.572376, 55.080666, 51.510738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.824814, 55.293598, 52.061489>,  <55.110573, 55.459579, 51.748993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.824814, 55.293598, 52.061489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.036713, 55.632805, 52.067760>,  <56.163853, 55.836327, 52.071522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.036713, 55.632805, 52.067760>,  <55.824814, 55.293598, 52.061489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.036713, 55.632805, 52.067760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354043, -0.204298, -0.912642,
		-0.770731, 0.489015, -0.408459,
		0.529743, 0.848014, 0.015674,
		56.195637, 55.887211, 52.072464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.398460, 55.375893, 52.631851>,  <55.824814, 55.293598, 52.061489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.398460, 55.375893, 52.631851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.493286, 55.756233, 52.711540>,  <56.550182, 55.984436, 52.759354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.493286, 55.756233, 52.711540>,  <56.398460, 55.375893, 52.631851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.493286, 55.756233, 52.711540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809885, -0.306683, 0.500032,
		0.536552, 0.042808, -0.842781,
		0.237061, 0.950849, 0.199221,
		56.564404, 56.041489, 52.771305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.234467, 55.482891, 52.584522>,  <56.398460, 55.375893, 52.631851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.234467, 55.482891, 52.584522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.058556, 55.761169, 52.811714>,  <56.953011, 55.928139, 52.948029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.058556, 55.761169, 52.811714>,  <57.234467, 55.482891, 52.584522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.058556, 55.761169, 52.811714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708555, -0.119840, 0.695405,
		0.551858, 0.708268, -0.440237,
		-0.439775, 0.695698, 0.567982,
		56.926624, 55.969879, 52.982109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.752064, 55.972301, 52.747372>,  <57.234467, 55.482891, 52.584522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.752064, 55.972301, 52.747372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.473244, 55.991005, 53.033573>,  <57.305954, 56.002228, 53.205292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.473244, 55.991005, 53.033573>,  <57.752064, 55.972301, 52.747372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.473244, 55.991005, 53.033573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708057, 0.202220, 0.676581,
		-0.113052, 0.978223, -0.174065,
		-0.697047, 0.046759, 0.715499,
		57.264130, 56.005032, 53.248222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.953865, 56.622192, 53.068123>,  <57.752064, 55.972301, 52.747372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.953865, 56.622192, 53.068123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.741020, 56.372444, 53.296867>,  <57.613312, 56.222595, 53.434113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.741020, 56.372444, 53.296867>,  <57.953865, 56.622192, 53.068123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.741020, 56.372444, 53.296867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724326, 0.014043, 0.689314,
		-0.438416, 0.781005, 0.444773,
		-0.532112, -0.624367, 0.571859,
		57.581387, 56.185135, 53.468426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.155190, 56.963779, 53.613522>,  <57.953865, 56.622192, 53.068123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.155190, 56.963779, 53.613522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.979111, 56.626839, 53.737892>,  <57.873463, 56.424675, 53.812515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.979111, 56.626839, 53.737892>,  <58.155190, 56.963779, 53.613522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.979111, 56.626839, 53.737892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601914, -0.019882, 0.798313,
		-0.666275, 0.538568, 0.515773,
		-0.440200, -0.842348, 0.310925,
		57.847050, 56.374134, 53.831169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.850559, 56.972614, 54.403748>,  <58.155190, 56.963779, 53.613522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.850559, 56.972614, 54.403748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940605, 56.597954, 54.296417>,  <57.994633, 56.373158, 54.232018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940605, 56.597954, 54.296417>,  <57.850559, 56.972614, 54.403748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.940605, 56.597954, 54.296417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358602, -0.176416, 0.916669,
		-0.905941, -0.302578, 0.296173,
		0.225114, -0.936656, -0.268328,
		58.008141, 56.316956, 54.215919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.674236, 57.158051, 54.443207>,  <57.850559, 56.972614, 54.403748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.674236, 57.158051, 54.443207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.785164, 57.343994, 54.106873>,  <58.851719, 57.455559, 53.905071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.785164, 57.343994, 54.106873>,  <58.674236, 57.158051, 54.443207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.785164, 57.343994, 54.106873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934049, 0.074558, 0.349277,
		0.225056, -0.882240, -0.413525,
		0.277314, 0.464859, -0.840835,
		58.868359, 57.483452, 53.854622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.227646, 56.856579, 54.180958>,  <58.674236, 57.158051, 54.443207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.227646, 56.856579, 54.180958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.244209, 57.247887, 54.099686>,  <59.254147, 57.482670, 54.050922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.244209, 57.247887, 54.099686>,  <59.227646, 56.856579, 54.180958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.244209, 57.247887, 54.099686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892939, 0.055004, 0.446805,
		0.448269, -0.199924, -0.871255,
		0.041405, 0.978266, -0.203176,
		59.256630, 57.541367, 54.038734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.745167, 57.073597, 54.538425>,  <59.227646, 56.856579, 54.180958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.745167, 57.073597, 54.538425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.669212, 57.428085, 54.369400>,  <59.623638, 57.640778, 54.267986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.669212, 57.428085, 54.369400>,  <59.745167, 57.073597, 54.538425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.669212, 57.428085, 54.369400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887555, 0.338950, 0.312024,
		0.419749, -0.315797, -0.850931,
		-0.189887, 0.886219, -0.422561,
		59.612247, 57.693951, 54.242630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.357147, 57.299175, 54.208729>,  <59.745167, 57.073597, 54.538425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.357147, 57.299175, 54.208729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.139053, 57.627365, 54.277481>,  <60.008198, 57.824280, 54.318733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.139053, 57.627365, 54.277481>,  <60.357147, 57.299175, 54.208729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.139053, 57.627365, 54.277481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801511, 0.450174, 0.393602,
		0.245562, 0.352372, -0.903069,
		-0.545232, 0.820474, 0.171885,
		59.975483, 57.873508, 54.329048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.563465, 57.982018, 53.876041>,  <60.357147, 57.299175, 54.208729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.563465, 57.982018, 53.876041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.375206, 58.062061, 54.219772>,  <60.262249, 58.110088, 54.426010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.375206, 58.062061, 54.219772>,  <60.563465, 57.982018, 53.876041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.375206, 58.062061, 54.219772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728631, 0.637399, 0.250639,
		-0.497581, 0.744097, -0.445794,
		-0.470648, 0.200106, 0.859330,
		60.234013, 58.122093, 54.477570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.416779, 58.692982, 53.962158>,  <60.563465, 57.982018, 53.876041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.416779, 58.692982, 53.962158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.466698, 58.521145, 54.319901>,  <60.496651, 58.418041, 54.534546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.466698, 58.521145, 54.319901>,  <60.416779, 58.692982, 53.962158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.466698, 58.521145, 54.319901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775700, 0.604284, 0.182017,
		-0.618639, 0.671038, 0.408649,
		0.124799, -0.429592, 0.894358,
		60.504139, 58.392265, 54.588207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.604588, 59.177490, 54.487911>,  <60.416779, 58.692982, 53.962158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.604588, 59.177490, 54.487911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.825523, 58.892967, 54.661789>,  <60.958084, 58.722252, 54.766117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.825523, 58.892967, 54.661789>,  <60.604588, 59.177490, 54.487911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.825523, 58.892967, 54.661789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771170, 0.634018, 0.057602,
		-0.316579, 0.303410, 0.898732,
		0.552335, -0.711311, 0.434698,
		60.991222, 58.679573, 54.792198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.890503, 59.389519, 55.173985>,  <60.604588, 59.177490, 54.487911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.890503, 59.389519, 55.173985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.127235, 59.104645, 55.022972>,  <61.269272, 58.933720, 54.932365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.127235, 59.104645, 55.022972>,  <60.890503, 59.389519, 55.173985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.127235, 59.104645, 55.022972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785218, 0.615208, 0.070373,
		0.182140, -0.338090, 0.923320,
		0.591826, -0.712189, -0.377528,
		61.304783, 58.890987, 54.909714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.517017, 59.327328, 55.608883>,  <60.890503, 59.389519, 55.173985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.517017, 59.327328, 55.608883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.564407, 59.208290, 55.229958>,  <61.592842, 59.136868, 55.002602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.564407, 59.208290, 55.229958>,  <61.517017, 59.327328, 55.608883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.564407, 59.208290, 55.229958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890497, 0.453916, -0.031230,
		0.439294, -0.839880, 0.318782,
		0.118471, -0.297593, -0.947313,
		61.599949, 59.119011, 54.945763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.134415, 58.986519, 55.643616>,  <61.517017, 59.327328, 55.608883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.134415, 58.986519, 55.643616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.077904, 59.098221, 55.263710>,  <62.043999, 59.165241, 55.035767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.077904, 59.098221, 55.263710>,  <62.134415, 58.986519, 55.643616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.077904, 59.098221, 55.263710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809862, 0.584368, 0.051356,
		0.569355, -0.761925, -0.308716,
		-0.141274, 0.279257, -0.949767,
		62.035522, 59.181999, 54.978779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.825214, 58.673416, 55.922832>,  <62.134415, 58.986519, 55.643616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.825214, 58.673416, 55.922832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.044083, 58.342953, 55.976601>,  <63.175404, 58.144676, 56.008862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.044083, 58.342953, 55.976601>,  <62.825214, 58.673416, 55.922832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.044083, 58.342953, 55.976601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553651, 0.236789, -0.798374,
		0.627752, 0.511271, 0.586966,
		0.547173, -0.826155, 0.134421,
		63.208233, 58.095104, 56.016926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.545376, 58.922920, 55.999542>,  <62.825214, 58.673416, 55.922832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.545376, 58.922920, 55.999542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.512939, 58.548695, 55.862053>,  <63.493477, 58.324158, 55.779560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.512939, 58.548695, 55.862053>,  <63.545376, 58.922920, 55.999542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.512939, 58.548695, 55.862053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698817, 0.192530, -0.688903,
		0.710689, -0.296060, 0.638176,
		-0.081088, -0.935564, -0.343721,
		63.488613, 58.268024, 55.758938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.238152, 58.527088, 56.028915>,  <63.545376, 58.922920, 55.999542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.238152, 58.527088, 56.028915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.969559, 58.481659, 55.736008>,  <63.808403, 58.454403, 55.560261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.969559, 58.481659, 55.736008>,  <64.238152, 58.527088, 56.028915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.969559, 58.481659, 55.736008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616921, 0.461771, -0.637319,
		0.410522, -0.879699, -0.240005,
		-0.671476, -0.113569, -0.732272,
		63.768116, 58.447590, 55.516327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.599564, 58.280476, 55.439110>,  <64.238152, 58.527088, 56.028915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.599564, 58.280476, 55.439110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.252243, 58.458260, 55.351013>,  <64.043854, 58.564930, 55.298157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.252243, 58.458260, 55.351013>,  <64.599564, 58.280476, 55.439110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.252243, 58.458260, 55.351013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478895, 0.635425, -0.605718,
		-0.129270, -0.631419, -0.764591,
		-0.868302, 0.444460, -0.220242,
		63.991753, 58.591599, 55.284939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.031944, 58.120937, 54.912773>,  <64.599564, 58.280476, 55.439110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.031944, 58.120937, 54.912773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.966606, 58.508263, 54.837212>,  <64.927406, 58.740658, 54.791874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.966606, 58.508263, 54.837212>,  <65.031944, 58.120937, 54.912773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.966606, 58.508263, 54.837212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769671, 0.244861, 0.589618,
		0.617190, -0.049080, -0.785282,
		-0.163346, 0.968315, -0.188901,
		64.917603, 58.798756, 54.780540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.683838, 58.534595, 54.542465>,  <65.031944, 58.120937, 54.912773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.683838, 58.534595, 54.542465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.460823, 58.715340, 54.821030>,  <65.327019, 58.823784, 54.988167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.460823, 58.715340, 54.821030>,  <65.683838, 58.534595, 54.542465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.460823, 58.715340, 54.821030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822189, 0.184597, 0.538451,
		0.114747, 0.872782, -0.474430,
		-0.557529, 0.451857, 0.696410,
		65.293564, 58.850895, 55.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.996086, 59.109962, 54.656151>,  <65.683838, 58.534595, 54.542465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.996086, 59.109962, 54.656151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.774002, 59.028488, 54.978706>,  <65.640755, 58.979603, 55.172237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.774002, 59.028488, 54.978706>,  <65.996086, 59.109962, 54.656151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.774002, 59.028488, 54.978706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808483, 0.095366, 0.580741,
		-0.195192, 0.974380, 0.111730,
		-0.555207, -0.203688, 0.806385,
		65.607437, 58.967381, 55.220623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.036873, 59.590569, 55.239700>,  <65.996086, 59.109962, 54.656151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.036873, 59.590569, 55.239700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.965897, 59.228077, 55.393196>,  <65.923309, 59.010582, 55.485294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.965897, 59.228077, 55.393196>,  <66.036873, 59.590569, 55.239700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.965897, 59.228077, 55.393196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713594, 0.150036, 0.684305,
		-0.677714, 0.395259, 0.620059,
		-0.177447, -0.906234, 0.383736,
		65.912666, 58.956207, 55.508316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.958084, 59.652431, 55.938709>,  <66.036873, 59.590569, 55.239700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.958084, 59.652431, 55.938709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109108, 59.290318, 55.860825>,  <66.199722, 59.073051, 55.814095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109108, 59.290318, 55.860825>,  <65.958084, 59.652431, 55.938709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.109108, 59.290318, 55.860825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727980, 0.160236, 0.666610,
		-0.572271, -0.393430, 0.719527,
		0.377558, -0.905283, -0.194711,
		66.222374, 59.018734, 55.802410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.018799, 59.217136, 56.554668>,  <65.958084, 59.652431, 55.938709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.018799, 59.217136, 56.554668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.285049, 59.104759, 56.278114>,  <66.444801, 59.037331, 56.112183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.285049, 59.104759, 56.278114>,  <66.018799, 59.217136, 56.554668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.285049, 59.104759, 56.278114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731501, 0.062125, 0.679004,
		-0.147812, -0.957711, 0.246864,
		0.665626, -0.280946, -0.691384,
		66.484734, 59.020473, 56.070698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.345695, 58.555931, 56.708012>,  <66.018799, 59.217136, 56.554668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.345695, 58.555931, 56.708012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.582512, 58.818226, 56.520615>,  <66.724602, 58.975605, 56.408176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.582512, 58.818226, 56.520615>,  <66.345695, 58.555931, 56.708012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.582512, 58.818226, 56.520615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618436, 0.003061, 0.785829,
		0.516734, -0.754980, -0.403722,
		0.592050, 0.655741, -0.468489,
		66.760124, 59.014950, 56.380070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.041389, 58.353382, 56.788418>,  <66.345695, 58.555931, 56.708012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.041389, 58.353382, 56.788418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.090675, 58.743332, 56.714180>,  <67.120247, 58.977303, 56.669636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.090675, 58.743332, 56.714180>,  <67.041389, 58.353382, 56.788418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.090675, 58.743332, 56.714180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844985, -0.004988, 0.534766,
		0.520403, -0.222713, -0.824367,
		0.123211, 0.974871, -0.185593,
		67.127640, 59.035793, 56.658501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.763435, 58.566410, 56.378353>,  <67.041389, 58.353382, 56.788418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.763435, 58.566410, 56.378353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.613503, 58.787537, 56.676048>,  <67.523544, 58.920212, 56.854664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.613503, 58.787537, 56.676048>,  <67.763435, 58.566410, 56.378353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.613503, 58.787537, 56.676048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815939, -0.184417, 0.547936,
		0.440157, 0.812641, -0.381936,
		-0.374840, 0.552815, 0.744239,
		67.501053, 58.953381, 56.899319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.204498, 59.076466, 56.533588>,  <67.763435, 58.566410, 56.378353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.204498, 59.076466, 56.533588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.987328, 58.961231, 56.849113>,  <67.857025, 58.892090, 57.038429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.987328, 58.961231, 56.849113>,  <68.204498, 59.076466, 56.533588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.987328, 58.961231, 56.849113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822602, -0.371451, 0.430524,
		0.168978, 0.882626, 0.438654,
		-0.542930, -0.288088, 0.788817,
		67.824448, 58.874805, 57.085758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.526146, 59.281212, 57.253719>,  <68.204498, 59.076466, 56.533588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.526146, 59.281212, 57.253719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.305489, 58.947590, 57.256302>,  <68.173096, 58.747417, 57.257851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.305489, 58.947590, 57.256302>,  <68.526146, 59.281212, 57.253719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.305489, 58.947590, 57.256302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769107, -0.505659, 0.390874,
		-0.322746, 0.220589, 0.920421,
		-0.551642, -0.834056, 0.006457,
		68.139999, 58.697372, 57.258240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.385254, 58.980209, 57.932201>,  <68.526146, 59.281212, 57.253719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.385254, 58.980209, 57.932201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.361610, 58.660084, 57.693535>,  <68.347427, 58.468010, 57.550335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.361610, 58.660084, 57.693535>,  <68.385254, 58.980209, 57.932201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.361610, 58.660084, 57.693535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766391, -0.419371, 0.486593,
		-0.639650, -0.428516, 0.638140,
		-0.059105, -0.800313, -0.596661,
		68.343880, 58.419991, 57.514538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.246590, 58.354584, 58.354954>,  <68.385254, 58.980209, 57.932201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.246590, 58.354584, 58.354954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.460068, 58.316605, 58.018822>,  <68.588158, 58.293816, 57.817142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.460068, 58.316605, 58.018822>,  <68.246590, 58.354584, 58.354954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.460068, 58.316605, 58.018822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772666, -0.349144, 0.530176,
		-0.343732, -0.932247, -0.112977,
		0.533700, -0.094945, -0.840327,
		68.620178, 58.288120, 57.766724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.732384, 57.734898, 58.339130>,  <68.246590, 58.354584, 58.354954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.732384, 57.734898, 58.339130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.915565, 57.983002, 58.084396>,  <69.025475, 58.131866, 57.931557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.915565, 57.983002, 58.084396>,  <68.732384, 57.734898, 58.339130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.915565, 57.983002, 58.084396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879094, -0.209440, 0.428169,
		0.132199, -0.755916, -0.641182,
		0.457949, 0.620263, -0.636834,
		69.052948, 58.169079, 57.893345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.358521, 57.487579, 58.190147>,  <68.732384, 57.734898, 58.339130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.358521, 57.487579, 58.190147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.417252, 57.861416, 58.060547>,  <69.452492, 58.085720, 57.982788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.417252, 57.861416, 58.060547>,  <69.358521, 57.487579, 58.190147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.417252, 57.861416, 58.060547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948274, -0.039785, 0.314950,
		0.281461, -0.353479, -0.892094,
		0.146821, 0.934596, -0.323997,
		69.461296, 58.141796, 57.963348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.003853, 57.573059, 57.709362>,  <69.358521, 57.487579, 58.190147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.003853, 57.573059, 57.709362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.944183, 57.911224, 57.914505>,  <69.908379, 58.114124, 58.037590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.944183, 57.911224, 57.914505>,  <70.003853, 57.573059, 57.709362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.944183, 57.911224, 57.914505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974173, 0.036742, 0.222793,
		0.169509, 0.532846, -0.829061,
		-0.149175, 0.845414, 0.512856,
		69.899429, 58.164848, 58.068363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.556374, 58.046455, 57.565338>,  <70.003853, 57.573059, 57.709362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.556374, 58.046455, 57.565338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.375229, 58.108223, 57.916580>,  <70.266541, 58.145283, 58.127327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.375229, 58.108223, 57.916580>,  <70.556374, 58.046455, 57.565338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.375229, 58.108223, 57.916580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884677, -0.044529, 0.464073,
		0.110764, 0.987001, -0.116448,
		-0.452855, 0.154422, 0.878109,
		70.239372, 58.154549, 58.180012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.802071, 58.620285, 57.906738>,  <70.556374, 58.046455, 57.565338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.802071, 58.620285, 57.906738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.694611, 58.370224, 58.199860>,  <70.630135, 58.220188, 58.375732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.694611, 58.370224, 58.199860>,  <70.802071, 58.620285, 57.906738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.694611, 58.370224, 58.199860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939658, -0.002805, 0.342103,
		-0.211812, 0.780495, 0.588186,
		-0.268659, -0.625156, 0.732805,
		70.614014, 58.182678, 58.419701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.025940, 58.891060, 58.460445>,  <70.802071, 58.620285, 57.906738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.025940, 58.891060, 58.460445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.998352, 58.504532, 58.559616>,  <70.981796, 58.272614, 58.619118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.998352, 58.504532, 58.559616>,  <71.025940, 58.891060, 58.460445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.998352, 58.504532, 58.559616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774468, 0.104788, 0.623874,
		-0.628842, 0.235038, 0.741158,
		-0.068970, -0.966321, 0.247925,
		70.977661, 58.214634, 58.633995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.862793, 58.690403, 59.302608>,  <71.025940, 58.891060, 58.460445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.862793, 58.690403, 59.302608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.105667, 58.457226, 59.086639>,  <71.251389, 58.317322, 58.957058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.105667, 58.457226, 59.086639>,  <70.862793, 58.690403, 59.302608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.105667, 58.457226, 59.086639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748064, 0.190334, 0.635746,
		-0.267837, -0.789907, 0.551643,
		0.607176, -0.582941, -0.539922,
		71.287819, 58.282345, 58.924664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.203117, 58.162964, 59.680504>,  <70.862793, 58.690403, 59.302608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.203117, 58.162964, 59.680504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.450584, 58.173035, 59.366402>,  <71.599060, 58.179077, 59.177940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.450584, 58.173035, 59.366402>,  <71.203117, 58.162964, 59.680504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.450584, 58.173035, 59.366402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785305, 0.010163, 0.619026,
		0.023564, -0.999631, -0.013483,
		0.618660, 0.025175, -0.785255,
		71.636185, 58.180588, 59.130825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.794662, 57.874771, 59.839474>,  <71.203117, 58.162964, 59.680504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.794662, 57.874771, 59.839474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.974213, 58.131004, 59.590263>,  <72.081940, 58.284744, 59.440735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.974213, 58.131004, 59.590263>,  <71.794662, 57.874771, 59.839474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.974213, 58.131004, 59.590263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729894, 0.139405, 0.669195,
		0.515529, -0.755128, -0.404984,
		0.448871, 0.640584, -0.623030,
		72.108871, 58.323181, 59.403355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.483643, 57.636566, 59.566219>,  <71.794662, 57.874771, 59.839474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.483643, 57.636566, 59.566219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.439926, 58.023857, 59.656189>,  <72.413696, 58.256233, 59.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.439926, 58.023857, 59.656189>,  <72.483643, 57.636566, 59.566219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.439926, 58.023857, 59.656189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662580, -0.097713, 0.742590,
		0.740974, 0.230192, -0.630849,
		-0.109296, 0.968227, 0.224923,
		72.407135, 58.314323, 59.723667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.128677, 57.714138, 60.008842>,  <72.483643, 57.636566, 59.566219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.128677, 57.714138, 60.008842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.877304, 58.025234, 60.014359>,  <72.726479, 58.211891, 60.017670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.877304, 58.025234, 60.014359>,  <73.128677, 57.714138, 60.008842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.877304, 58.025234, 60.014359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460878, 0.358005, 0.812049,
		0.626626, 0.516675, -0.583426,
		-0.628435, 0.777740, 0.013789,
		72.688774, 58.258556, 60.018494>
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
