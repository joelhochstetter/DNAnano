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
	<42.711826, 32.100258, 23.092291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017994, 31.939686, 22.891098>,  <43.201694, 31.843342, 22.770382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017994, 31.939686, 22.891098>,  <42.711826, 32.100258, 23.092291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017994, 31.939686, 22.891098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615186, -0.226991, -0.754997,
		0.188908, 0.887314, -0.420698,
		0.765415, -0.401432, -0.502983,
		43.247620, 31.819256, 22.740204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158947, 32.666828, 23.402576>,  <42.711826, 32.100258, 23.092291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158947, 32.666828, 23.402576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365097, 32.940025, 23.609612>,  <42.488789, 33.103943, 23.733833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365097, 32.940025, 23.609612>,  <42.158947, 32.666828, 23.402576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365097, 32.940025, 23.609612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368546, -0.721926, 0.585660,
		0.773665, -0.111081, -0.623781,
		0.515380, 0.682997, 0.517590,
		42.519711, 33.144924, 23.764889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876560, 32.284611, 23.996603>,  <42.158947, 32.666828, 23.402576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876560, 32.284611, 23.996603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539524, 32.299351, 24.211517>,  <41.337303, 32.308193, 24.340466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539524, 32.299351, 24.211517>,  <41.876560, 32.284611, 23.996603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539524, 32.299351, 24.211517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538392, 0.081763, 0.838719,
		-0.013026, 0.995970, -0.088731,
		-0.842594, 0.036847, 0.537287,
		41.286747, 32.310406, 24.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823624, 32.917622, 24.427311>,  <41.876560, 32.284611, 23.996603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823624, 32.917622, 24.427311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621624, 32.645924, 24.640327>,  <41.500423, 32.482903, 24.768137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621624, 32.645924, 24.640327>,  <41.823624, 32.917622, 24.427311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621624, 32.645924, 24.640327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458837, 0.311320, 0.832195,
		-0.731056, 0.664608, 0.154447,
		-0.505001, -0.679247, 0.532539,
		41.470123, 32.442150, 24.800089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436241, 33.183186, 24.910547>,  <41.823624, 32.917622, 24.427311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436241, 33.183186, 24.910547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101635, 33.209412, 25.128147>,  <40.900871, 33.225147, 25.258707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101635, 33.209412, 25.128147>,  <41.436241, 33.183186, 24.910547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101635, 33.209412, 25.128147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537820, -0.091658, 0.838063,
		0.104807, 0.993630, 0.041413,
		-0.836520, 0.065562, 0.544000,
		40.850677, 33.229080, 25.291348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615990, 33.369087, 25.453188>,  <41.436241, 33.183186, 24.910547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615990, 33.369087, 25.453188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250408, 33.310726, 25.604664>,  <41.031059, 33.275711, 25.695549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250408, 33.310726, 25.604664>,  <41.615990, 33.369087, 25.453188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250408, 33.310726, 25.604664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389696, -0.055092, 0.919294,
		-0.113264, 0.987764, 0.107210,
		-0.913952, -0.145903, 0.378688,
		40.976223, 33.266956, 25.718269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555584, 33.762894, 26.089378>,  <41.615990, 33.369087, 25.453188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555584, 33.762894, 26.089378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275597, 33.478096, 26.111694>,  <41.107605, 33.307217, 26.125084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275597, 33.478096, 26.111694>,  <41.555584, 33.762894, 26.089378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275597, 33.478096, 26.111694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288455, -0.210394, 0.934092,
		-0.653328, 0.669928, 0.352647,
		-0.699969, -0.711991, 0.055788,
		41.065605, 33.264500, 26.128431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242870, 33.816837, 26.692308>,  <41.555584, 33.762894, 26.089378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242870, 33.816837, 26.692308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183090, 33.435955, 26.585751>,  <41.147221, 33.207424, 26.521816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183090, 33.435955, 26.585751>,  <41.242870, 33.816837, 26.692308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183090, 33.435955, 26.585751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101691, -0.282797, 0.953774,
		-0.983525, 0.115456, 0.139096,
		-0.149455, -0.952206, -0.266397,
		41.138252, 33.150291, 26.505831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725742, 33.644363, 27.136406>,  <41.242870, 33.816837, 26.692308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725742, 33.644363, 27.136406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878494, 33.294159, 27.017982>,  <40.970146, 33.084038, 26.946928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878494, 33.294159, 27.017982>,  <40.725742, 33.644363, 27.136406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878494, 33.294159, 27.017982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199027, -0.234919, 0.951421,
		-0.902529, -0.422249, 0.084540,
		0.381876, -0.875511, -0.296060,
		40.993057, 33.031506, 26.929165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638035, 33.221886, 27.700752>,  <40.725742, 33.644363, 27.136406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638035, 33.221886, 27.700752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908863, 33.002083, 27.504948>,  <41.071358, 32.870201, 27.387465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908863, 33.002083, 27.504948>,  <40.638035, 33.221886, 27.700752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908863, 33.002083, 27.504948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409982, -0.270738, 0.870986,
		-0.611144, -0.790405, 0.041982,
		0.677066, -0.549510, -0.489511,
		41.111984, 32.837231, 27.358093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516609, 32.578697, 27.903358>,  <40.638035, 33.221886, 27.700752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516609, 32.578697, 27.903358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898251, 32.622311, 27.791790>,  <41.127235, 32.648479, 27.724850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898251, 32.622311, 27.791790>,  <40.516609, 32.578697, 27.903358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898251, 32.622311, 27.791790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298662, -0.277797, 0.913033,
		0.022069, -0.954432, -0.297612,
		0.954103, 0.109035, -0.278922,
		41.184483, 32.655022, 27.708113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780994, 31.971569, 28.224459>,  <40.516609, 32.578697, 27.903358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780994, 31.971569, 28.224459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107746, 32.184322, 28.135189>,  <41.303799, 32.311974, 28.081627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107746, 32.184322, 28.135189>,  <40.780994, 31.971569, 28.224459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107746, 32.184322, 28.135189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476434, -0.404076, 0.780854,
		0.325145, -0.744191, -0.583490,
		0.816879, 0.531885, -0.223175,
		41.352810, 32.343887, 28.068237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328327, 31.475780, 28.224239>,  <40.780994, 31.971569, 28.224459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328327, 31.475780, 28.224239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483871, 31.832176, 28.317982>,  <41.577198, 32.046013, 28.374228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483871, 31.832176, 28.317982>,  <41.328327, 31.475780, 28.224239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483871, 31.832176, 28.317982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491499, -0.415782, 0.765215,
		0.779239, -0.182379, -0.599604,
		0.388864, 0.890990, 0.234355,
		41.600529, 32.099472, 28.388288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909084, 31.215752, 28.568237>,  <41.328327, 31.475780, 28.224239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909084, 31.215752, 28.568237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952904, 31.605762, 28.645515>,  <41.979195, 31.839769, 28.691883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952904, 31.605762, 28.645515>,  <41.909084, 31.215752, 28.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952904, 31.605762, 28.645515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608642, -0.219468, 0.762488,
		0.785845, 0.034055, -0.617484,
		0.109552, 0.975025, 0.193195,
		41.985767, 31.898270, 28.703474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651966, 31.459312, 28.621490>,  <41.909084, 31.215752, 28.568237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651966, 31.459312, 28.621490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483776, 31.776447, 28.797947>,  <42.382862, 31.966728, 28.903822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483776, 31.776447, 28.797947>,  <42.651966, 31.459312, 28.621490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483776, 31.776447, 28.797947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642066, -0.083515, 0.762087,
		0.641053, 0.603685, -0.473936,
		-0.420480, 0.792836, 0.441143,
		42.357632, 32.014297, 28.930290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193993, 31.841463, 28.897001>,  <42.651966, 31.459312, 28.621490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193993, 31.841463, 28.897001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875416, 31.948765, 29.113785>,  <42.684269, 32.013145, 29.243855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875416, 31.948765, 29.113785>,  <43.193993, 31.841463, 28.897001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875416, 31.948765, 29.113785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514777, -0.169516, 0.840398,
		0.317313, 0.948316, -0.003083,
		-0.796440, 0.268257, 0.541961,
		42.636482, 32.029243, 29.276373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525501, 32.278435, 29.395180>,  <43.193993, 31.841463, 28.897001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525501, 32.278435, 29.395180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171177, 32.155239, 29.534019>,  <42.958580, 32.081322, 29.617323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171177, 32.155239, 29.534019>,  <43.525501, 32.278435, 29.395180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171177, 32.155239, 29.534019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409530, -0.167118, 0.896860,
		-0.218215, 0.936598, 0.274165,
		-0.885815, -0.307987, 0.347097,
		42.905434, 32.062843, 29.638149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498726, 32.629753, 30.024618>,  <43.525501, 32.278435, 29.395180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498726, 32.629753, 30.024618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238068, 32.326813, 30.041508>,  <43.081673, 32.145050, 30.051641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238068, 32.326813, 30.041508>,  <43.498726, 32.629753, 30.024618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238068, 32.326813, 30.041508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319008, -0.223128, 0.921112,
		-0.688179, 0.613710, 0.387001,
		-0.651647, -0.757346, 0.042226,
		43.042572, 32.099609, 30.054176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071648, 32.708481, 30.630060>,  <43.498726, 32.629753, 30.024618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071648, 32.708481, 30.630060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052002, 32.319603, 30.538483>,  <43.040215, 32.086277, 30.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052002, 32.319603, 30.538483>,  <43.071648, 32.708481, 30.630060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052002, 32.319603, 30.538483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120436, -0.233315, 0.964914,
		-0.991505, 0.019817, 0.128547,
		-0.049114, -0.972199, -0.228946,
		43.037270, 32.027943, 30.469799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512314, 32.400135, 30.999887>,  <43.071648, 32.708481, 30.630060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512314, 32.400135, 30.999887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729988, 32.075928, 30.913242>,  <42.860592, 31.881403, 30.861256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729988, 32.075928, 30.913242>,  <42.512314, 32.400135, 30.999887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729988, 32.075928, 30.913242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093801, -0.315349, 0.944328,
		-0.833707, -0.493568, -0.247636,
		0.544182, -0.810522, -0.216612,
		42.893242, 31.832771, 30.848259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302357, 31.883957, 31.483789>,  <42.512314, 32.400135, 30.999887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302357, 31.883957, 31.483789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652206, 31.744228, 31.349327>,  <42.862118, 31.660391, 31.268650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652206, 31.744228, 31.349327>,  <42.302357, 31.883957, 31.483789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652206, 31.744228, 31.349327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135114, -0.490281, 0.861028,
		-0.465583, -0.798499, -0.381616,
		0.874629, -0.349318, -0.336155,
		42.914593, 31.639431, 31.248480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304909, 31.252657, 31.629450>,  <42.302357, 31.883957, 31.483789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304909, 31.252657, 31.629450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697796, 31.315258, 31.587975>,  <42.933529, 31.352818, 31.563089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697796, 31.315258, 31.587975>,  <42.304909, 31.252657, 31.629450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697796, 31.315258, 31.587975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169397, -0.500760, 0.848848,
		0.080923, -0.851320, -0.518368,
		0.982220, 0.156502, -0.103688,
		42.992462, 31.362209, 31.556868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591511, 30.586281, 31.872021>,  <42.304909, 31.252657, 31.629450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591511, 30.586281, 31.872021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886818, 30.856083, 31.872570>,  <43.064003, 31.017963, 31.872900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886818, 30.856083, 31.872570>,  <42.591511, 30.586281, 31.872021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886818, 30.856083, 31.872570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255231, -0.281245, 0.925072,
		0.624352, -0.682602, -0.379789,
		0.738270, 0.674504, 0.001374,
		43.108299, 31.058434, 31.872982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186409, 30.327677, 31.833750>,  <42.591511, 30.586281, 31.872021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186409, 30.327677, 31.833750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271496, 30.665848, 32.029713>,  <43.322548, 30.868750, 32.147289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271496, 30.665848, 32.029713>,  <43.186409, 30.327677, 31.833750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271496, 30.665848, 32.029713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442646, -0.530358, 0.723039,
		0.871101, 0.063053, -0.487039,
		0.212715, 0.845426, 0.489906,
		43.335312, 30.919476, 32.176685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925777, 30.323284, 31.903273>,  <43.186409, 30.327677, 31.833750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925777, 30.323284, 31.903273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799202, 30.597179, 32.165874>,  <43.723255, 30.761517, 32.323437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799202, 30.597179, 32.165874>,  <43.925777, 30.323284, 31.903273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799202, 30.597179, 32.165874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567774, -0.417703, 0.709336,
		0.759934, 0.597207, -0.256600,
		-0.316438, 0.684739, 0.656505,
		43.704269, 30.802601, 32.362827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585079, 30.519810, 32.305351>,  <43.925777, 30.323284, 31.903273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585079, 30.519810, 32.305351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239883, 30.581158, 32.497902>,  <44.032764, 30.617968, 32.613434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239883, 30.581158, 32.497902>,  <44.585079, 30.519810, 32.305351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239883, 30.581158, 32.497902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298283, -0.614342, 0.730486,
		0.407765, 0.773990, 0.484424,
		-0.862992, 0.153371, 0.481376,
		43.980988, 30.627169, 32.642315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755970, 30.682537, 32.990185>,  <44.585079, 30.519810, 32.305351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755970, 30.682537, 32.990185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376354, 30.566921, 33.040436>,  <44.148586, 30.497551, 33.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376354, 30.566921, 33.040436>,  <44.755970, 30.682537, 32.990185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376354, 30.566921, 33.040436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289267, -0.640636, 0.711274,
		-0.125106, 0.711366, 0.691598,
		-0.949038, -0.289040, 0.125627,
		44.091644, 30.480209, 33.078125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675926, 30.546467, 33.753662>,  <44.755970, 30.682537, 32.990185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675926, 30.546467, 33.753662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403587, 30.339851, 33.545956>,  <44.240185, 30.215881, 33.421333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403587, 30.339851, 33.545956>,  <44.675926, 30.546467, 33.753662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403587, 30.339851, 33.545956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103002, -0.769444, 0.630355,
		-0.725148, 0.375690, 0.577077,
		-0.680846, -0.516540, -0.519264,
		44.199333, 30.184889, 33.390175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486805, 30.121756, 34.229172>,  <44.675926, 30.546467, 33.753662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486805, 30.121756, 34.229172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344944, 29.975193, 33.885086>,  <44.259827, 29.887255, 33.678635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344944, 29.975193, 33.885086>,  <44.486805, 30.121756, 34.229172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344944, 29.975193, 33.885086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206222, -0.866706, 0.454195,
		-0.911973, 0.338476, 0.231818,
		-0.354652, -0.366408, -0.860214,
		44.238548, 29.865271, 33.627022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898407, 29.827778, 34.365150>,  <44.486805, 30.121756, 34.229172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898407, 29.827778, 34.365150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040894, 29.625061, 34.051140>,  <44.126385, 29.503431, 33.862732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040894, 29.625061, 34.051140>,  <43.898407, 29.827778, 34.365150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040894, 29.625061, 34.051140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233763, -0.861758, 0.450252,
		-0.904691, 0.023125, -0.425440,
		0.356215, -0.506792, -0.785031,
		44.147758, 29.473024, 33.815632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373093, 29.498531, 33.877743>,  <43.898407, 29.827778, 34.365150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373093, 29.498531, 33.877743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717682, 29.300793, 33.924202>,  <43.924435, 29.182150, 33.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717682, 29.300793, 33.924202>,  <43.373093, 29.498531, 33.877743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717682, 29.300793, 33.924202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480946, -0.720864, 0.499045,
		-0.162971, -0.485775, -0.858757,
		0.861470, -0.494346, 0.116152,
		43.976124, 29.152489, 33.959049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520130, 29.966213, 33.367493>,  <43.373093, 29.498531, 33.877743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520130, 29.966213, 33.367493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512444, 29.567307, 33.396027>,  <43.507832, 29.327963, 33.413147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512444, 29.567307, 33.396027>,  <43.520130, 29.966213, 33.367493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512444, 29.567307, 33.396027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804215, -0.026970, -0.593726,
		0.594028, -0.068774, -0.801499,
		-0.019217, -0.997268, 0.071330,
		43.506680, 29.268126, 33.417427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610790, 29.466700, 32.719582>,  <43.520130, 29.966213, 33.367493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610790, 29.466700, 32.719582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413681, 29.264095, 33.002598>,  <43.295414, 29.142532, 33.172409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413681, 29.264095, 33.002598>,  <43.610790, 29.466700, 32.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413681, 29.264095, 33.002598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710980, -0.234427, -0.662987,
		0.501678, -0.829753, -0.244599,
		-0.492775, -0.506512, 0.707545,
		43.265850, 29.112143, 33.214863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356010, 28.778679, 32.477848>,  <43.610790, 29.466700, 32.719582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356010, 28.778679, 32.477848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118790, 28.949646, 32.750786>,  <42.976456, 29.052227, 32.914551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118790, 28.949646, 32.750786>,  <43.356010, 28.778679, 32.477848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118790, 28.949646, 32.750786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788341, -0.135930, -0.600034,
		-0.163719, -0.893773, 0.417571,
		-0.593055, 0.427426, 0.682344,
		42.940872, 29.077871, 32.955490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702644, 28.341118, 32.465782>,  <43.356010, 28.778679, 32.477848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702644, 28.341118, 32.465782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635506, 28.714409, 32.592850>,  <42.595222, 28.938383, 32.669090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635506, 28.714409, 32.592850>,  <42.702644, 28.341118, 32.465782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635506, 28.714409, 32.592850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769785, 0.077229, -0.633613,
		-0.615839, -0.350886, 0.705423,
		-0.167846, 0.933228, 0.317668,
		42.585152, 28.994377, 32.688148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975479, 28.376492, 32.759041>,  <42.702644, 28.341118, 32.465782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975479, 28.376492, 32.759041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155457, 28.684460, 32.578033>,  <42.263443, 28.869240, 32.469429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155457, 28.684460, 32.578033>,  <41.975479, 28.376492, 32.759041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155457, 28.684460, 32.578033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585997, -0.127843, -0.800165,
		-0.673914, 0.625204, 0.393648,
		0.449941, 0.769919, -0.452523,
		42.290440, 28.915436, 32.442276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644871, 29.128590, 32.718479>,  <41.975479, 28.376492, 32.759041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644871, 29.128590, 32.718479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854912, 28.999832, 32.403355>,  <41.980938, 28.922579, 32.214279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854912, 28.999832, 32.403355>,  <41.644871, 29.128590, 32.718479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854912, 28.999832, 32.403355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772054, 0.209284, -0.600111,
		0.358047, 0.923356, -0.138622,
		0.525105, -0.321892, -0.787814,
		42.012444, 28.903265, 32.167011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863411, 29.669659, 32.201675>,  <41.644871, 29.128590, 32.718479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863411, 29.669659, 32.201675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905338, 29.348942, 31.966343>,  <41.930496, 29.156511, 31.825142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905338, 29.348942, 31.966343>,  <41.863411, 29.669659, 32.201675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905338, 29.348942, 31.966343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610154, 0.415314, -0.674704,
		0.785318, 0.429698, -0.445685,
		0.104819, -0.801794, -0.588336,
		41.936783, 29.108404, 31.789843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938423, 29.905930, 31.599724>,  <41.863411, 29.669659, 32.201675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938423, 29.905930, 31.599724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854000, 29.532036, 31.485374>,  <41.803345, 29.307699, 31.416765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854000, 29.532036, 31.485374>,  <41.938423, 29.905930, 31.599724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854000, 29.532036, 31.485374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524168, 0.355087, -0.774055,
		0.825046, -0.013526, -0.564903,
		-0.211059, -0.934735, -0.285873,
		41.790684, 29.251616, 31.399612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230057, 29.789291, 30.862808>,  <41.938423, 29.905930, 31.599724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230057, 29.789291, 30.862808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920380, 29.552910, 30.953499>,  <41.734573, 29.411081, 31.007914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920380, 29.552910, 30.953499>,  <42.230057, 29.789291, 30.862808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920380, 29.552910, 30.953499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537945, 0.425561, -0.727677,
		0.333537, -0.685326, -0.647365,
		-0.774189, -0.590953, 0.226727,
		41.688122, 29.375624, 31.021517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078979, 29.452309, 30.254568>,  <42.230057, 29.789291, 30.862808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078979, 29.452309, 30.254568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747383, 29.388699, 30.469036>,  <41.548424, 29.350533, 30.597717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747383, 29.388699, 30.469036>,  <42.078979, 29.452309, 30.254568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747383, 29.388699, 30.469036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555425, 0.346170, -0.756088,
		-0.065369, -0.924595, -0.375300,
		-0.828993, -0.159027, 0.536172,
		41.498684, 29.340990, 30.629887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610527, 29.035761, 29.898849>,  <42.078979, 29.452309, 30.254568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610527, 29.035761, 29.898849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370537, 29.240562, 30.144737>,  <41.226543, 29.363443, 30.292271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370537, 29.240562, 30.144737>,  <41.610527, 29.035761, 29.898849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370537, 29.240562, 30.144737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628473, 0.173807, -0.758164,
		-0.495026, -0.841215, 0.217501,
		-0.599976, 0.512004, 0.614720,
		41.190544, 29.394163, 30.329153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983799, 28.772520, 29.628820>,  <41.610527, 29.035761, 29.898849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983799, 28.772520, 29.628820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883236, 29.079807, 29.864323>,  <40.822899, 29.264179, 30.005625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883236, 29.079807, 29.864323>,  <40.983799, 28.772520, 29.628820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883236, 29.079807, 29.864323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586713, 0.362829, -0.723963,
		-0.769779, -0.527444, 0.359504,
		-0.251411, 0.768217, 0.588756,
		40.807812, 29.310272, 30.040949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281170, 28.767298, 29.728329>,  <40.983799, 28.772520, 29.628820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281170, 28.767298, 29.728329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402447, 29.146175, 29.770084>,  <40.475212, 29.373503, 29.795137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402447, 29.146175, 29.770084>,  <40.281170, 28.767298, 29.728329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402447, 29.146175, 29.770084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679703, 0.291733, -0.672975,
		-0.667892, 0.133086, 0.732262,
		0.303189, 0.947196, 0.104387,
		40.493404, 29.430334, 29.801401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693508, 29.011637, 29.529953>,  <40.281170, 28.767298, 29.728329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693508, 29.011637, 29.529953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939590, 29.325279, 29.562706>,  <40.087238, 29.513464, 29.582357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939590, 29.325279, 29.562706>,  <39.693508, 29.011637, 29.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939590, 29.325279, 29.562706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585297, 0.523848, -0.618879,
		-0.528160, 0.332810, 0.781207,
		0.615202, 0.784105, 0.081883,
		40.124149, 29.560511, 29.587271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229355, 29.551865, 29.675442>,  <39.693508, 29.011637, 29.529953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229355, 29.551865, 29.675442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563644, 29.705799, 29.518742>,  <39.764217, 29.798161, 29.424723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563644, 29.705799, 29.518742>,  <39.229355, 29.551865, 29.675442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563644, 29.705799, 29.518742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539258, 0.709918, -0.453010,
		0.103774, 0.589844, 0.800821,
		0.835723, 0.384838, -0.391749,
		39.814362, 29.821251, 29.401217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197578, 30.277849, 29.791842>,  <39.229355, 29.551865, 29.675442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197578, 30.277849, 29.791842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436066, 30.236656, 29.473366>,  <39.579159, 30.211941, 29.282280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436066, 30.236656, 29.473366>,  <39.197578, 30.277849, 29.791842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436066, 30.236656, 29.473366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595574, 0.608287, -0.524669,
		0.538343, 0.787008, 0.301339,
		0.596219, -0.102983, -0.796189,
		39.614933, 30.205761, 29.234509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175171, 30.942480, 29.518436>,  <39.197578, 30.277849, 29.791842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175171, 30.942480, 29.518436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312588, 30.703739, 29.228405>,  <39.395039, 30.560493, 29.054386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312588, 30.703739, 29.228405>,  <39.175171, 30.942480, 29.518436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312588, 30.703739, 29.228405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373462, 0.621575, -0.688601,
		0.861686, 0.507356, -0.009363,
		0.343546, -0.596854, -0.725080,
		39.415653, 30.524683, 29.010881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412895, 31.419191, 29.183510>,  <39.175171, 30.942480, 29.518436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412895, 31.419191, 29.183510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418011, 31.111656, 28.927784>,  <39.421082, 30.927135, 28.774349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418011, 31.111656, 28.927784>,  <39.412895, 31.419191, 29.183510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418011, 31.111656, 28.927784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271433, 0.612689, -0.742251,
		0.962372, 0.183025, -0.200851,
		0.012791, -0.768839, -0.639314,
		39.421848, 30.881004, 28.735991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788670, 31.591702, 28.688175>,  <39.412895, 31.419191, 29.183510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788670, 31.591702, 28.688175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554459, 31.307606, 28.531860>,  <39.413933, 31.137148, 28.438070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554459, 31.307606, 28.531860>,  <39.788670, 31.591702, 28.688175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554459, 31.307606, 28.531860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158327, 0.572977, -0.804133,
		0.795041, -0.408970, -0.447944,
		-0.585528, -0.710240, -0.390790,
		39.378799, 31.094534, 28.414623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989697, 31.561964, 28.089952>,  <39.788670, 31.591702, 28.688175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989697, 31.561964, 28.089952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621597, 31.407677, 28.063534>,  <39.400738, 31.315105, 28.047682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621597, 31.407677, 28.063534>,  <39.989697, 31.561964, 28.089952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621597, 31.407677, 28.063534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235558, 0.680765, -0.693593,
		0.312493, -0.622721, -0.717333,
		-0.920250, -0.385716, -0.066047,
		39.345524, 31.291962, 28.043720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953625, 31.470816, 27.405283>,  <39.989697, 31.561964, 28.089952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953625, 31.470816, 27.405283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583508, 31.459335, 27.556553>,  <39.361439, 31.452448, 27.647314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583508, 31.459335, 27.556553>,  <39.953625, 31.470816, 27.405283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583508, 31.459335, 27.556553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338836, 0.510510, -0.790297,
		-0.170382, -0.859393, -0.482094,
		-0.925289, -0.028699, 0.378175,
		39.305920, 31.450726, 27.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506889, 31.463257, 26.838280>,  <39.953625, 31.470816, 27.405283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506889, 31.463257, 26.838280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305668, 31.592873, 27.158764>,  <39.184937, 31.670641, 27.351053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305668, 31.592873, 27.158764>,  <39.506889, 31.463257, 26.838280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305668, 31.592873, 27.158764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435990, 0.705295, -0.558992,
		-0.746224, -0.630522, -0.213524,
		-0.503054, 0.324039, 0.801209,
		39.154751, 31.690084, 27.399126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842533, 31.406982, 26.627375>,  <39.506889, 31.463257, 26.838280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842533, 31.406982, 26.627375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867752, 31.666874, 26.930393>,  <38.882881, 31.822809, 27.112204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867752, 31.666874, 26.930393>,  <38.842533, 31.406982, 26.627375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867752, 31.666874, 26.930393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671852, 0.588929, -0.449197,
		-0.737998, -0.480640, 0.473650,
		0.063044, 0.649729, 0.757547,
		38.886665, 31.861794, 27.157658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167168, 31.660179, 26.569378>,  <38.842533, 31.406982, 26.627375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167168, 31.660179, 26.569378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351860, 31.915173, 26.816090>,  <38.462677, 32.068169, 26.964117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351860, 31.915173, 26.816090>,  <38.167168, 31.660179, 26.569378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351860, 31.915173, 26.816090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673962, 0.704208, -0.223307,
		-0.576696, -0.312578, 0.754796,
		0.461733, 0.637484, 0.616779,
		38.490379, 32.106419, 27.001123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593575, 31.931370, 26.944729>,  <38.167168, 31.660179, 26.569378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593575, 31.931370, 26.944729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904617, 32.181896, 26.966827>,  <38.091244, 32.332214, 26.980085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904617, 32.181896, 26.966827>,  <37.593575, 31.931370, 26.944729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904617, 32.181896, 26.966827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514900, 0.684766, -0.515726,
		-0.360838, 0.372587, 0.854971,
		0.777608, 0.626318, 0.055244,
		38.137901, 32.369793, 26.983400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307156, 32.531822, 27.120148>,  <37.593575, 31.931370, 26.944729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307156, 32.531822, 27.120148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654461, 32.611191, 26.938271>,  <37.862846, 32.658813, 26.829144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654461, 32.611191, 26.938271>,  <37.307156, 32.531822, 27.120148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654461, 32.611191, 26.938271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473843, 0.603142, -0.641633,
		0.146931, 0.772560, 0.617707,
		0.868265, 0.198420, -0.454692,
		37.914940, 32.670715, 26.801863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613365, 33.189865, 27.271469>,  <37.307156, 32.531822, 27.120148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613365, 33.189865, 27.271469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674160, 33.053444, 26.900398>,  <37.710636, 32.971592, 26.677755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674160, 33.053444, 26.900398>,  <37.613365, 33.189865, 27.271469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674160, 33.053444, 26.900398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566952, 0.738731, -0.364475,
		0.809609, 0.581342, -0.081086,
		0.151984, -0.341054, -0.927676,
		37.719753, 32.951126, 26.622095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285080, 33.384789, 26.561182>,  <37.613365, 33.189865, 27.271469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285080, 33.384789, 26.561182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043041, 33.554852, 26.291931>,  <36.897820, 33.656891, 26.130381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043041, 33.554852, 26.291931>,  <37.285080, 33.384789, 26.561182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043041, 33.554852, 26.291931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139603, -0.889034, -0.436039,
		-0.783819, -0.169874, 0.597303,
		-0.605094, 0.425161, -0.673127,
		36.861515, 33.682400, 26.089993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578087, 33.127464, 26.601988>,  <37.285080, 33.384789, 26.561182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578087, 33.127464, 26.601988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651058, 33.249142, 26.227997>,  <36.694839, 33.322147, 26.003601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651058, 33.249142, 26.227997>,  <36.578087, 33.127464, 26.601988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651058, 33.249142, 26.227997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473429, -0.806262, -0.354691,
		-0.861734, 0.507351, -0.003066,
		0.182425, 0.304198, -0.934978,
		36.705784, 33.340401, 25.947504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985962, 33.272663, 26.081207>,  <36.578087, 33.127464, 26.601988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985962, 33.272663, 26.081207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292641, 33.157097, 25.851875>,  <36.476646, 33.087757, 25.714277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292641, 33.157097, 25.851875>,  <35.985962, 33.272663, 26.081207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292641, 33.157097, 25.851875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553208, -0.750463, -0.361617,
		-0.325786, 0.594420, -0.735207,
		0.766698, -0.288912, -0.573328,
		36.522652, 33.070423, 25.679876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652470, 33.274906, 25.470655>,  <35.985962, 33.272663, 26.081207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652470, 33.274906, 25.470655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962410, 33.023636, 25.498940>,  <36.148373, 32.872871, 25.515911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962410, 33.023636, 25.498940>,  <35.652470, 33.274906, 25.470655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962410, 33.023636, 25.498940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571657, -0.744059, -0.345811,
		0.269845, 0.227529, -0.935636,
		0.774850, -0.628178, 0.070713,
		36.194866, 32.835182, 25.520153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836170, 33.282024, 24.833218>,  <35.652470, 33.274906, 25.470655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836170, 33.282024, 24.833218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887489, 33.016476, 25.127922>,  <35.918282, 32.857147, 25.304745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887489, 33.016476, 25.127922>,  <35.836170, 33.282024, 24.833218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887489, 33.016476, 25.127922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920767, -0.355710, -0.160184,
		0.368415, -0.657834, -0.656905,
		0.128294, -0.663871, 0.736761,
		35.925976, 32.817314, 25.348949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699261, 32.596375, 24.614107>,  <35.836170, 33.282024, 24.833218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699261, 32.596375, 24.614107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667568, 32.575626, 25.012310>,  <35.648552, 32.563179, 25.251232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667568, 32.575626, 25.012310>,  <35.699261, 32.596375, 24.614107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667568, 32.575626, 25.012310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894751, -0.436570, -0.093954,
		0.439482, -0.898174, -0.011820,
		-0.079227, -0.051867, 0.995506,
		35.643799, 32.560066, 25.310963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293819, 32.084545, 24.601801>,  <35.699261, 32.596375, 24.614107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293819, 32.084545, 24.601801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285328, 32.226616, 24.975624>,  <35.280235, 32.311859, 25.199917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285328, 32.226616, 24.975624>,  <35.293819, 32.084545, 24.601801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285328, 32.226616, 24.975624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823331, -0.536496, 0.185198,
		0.567164, -0.765519, 0.303818,
		-0.021225, 0.355180, 0.934557,
		35.278961, 32.333168, 25.255991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179588, 31.534464, 25.104906>,  <35.293819, 32.084545, 24.601801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179588, 31.534464, 25.104906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044201, 31.869427, 25.276577>,  <34.962967, 32.070404, 25.379580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044201, 31.869427, 25.276577>,  <35.179588, 31.534464, 25.104906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044201, 31.869427, 25.276577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830424, -0.480321, 0.282290,
		0.442534, -0.260853, 0.857974,
		-0.338467, 0.837405, 0.429177,
		34.942661, 32.120647, 25.405331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020863, 31.336897, 25.776192>,  <35.179588, 31.534464, 25.104906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020863, 31.336897, 25.776192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821564, 31.667305, 25.670788>,  <34.701984, 31.865549, 25.607546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821564, 31.667305, 25.670788>,  <35.020863, 31.336897, 25.776192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821564, 31.667305, 25.670788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859102, -0.429325, 0.278610,
		0.117005, 0.365201, 0.923546,
		-0.498251, 0.826019, -0.263512,
		34.672089, 31.915112, 25.591734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781452, 31.632988, 26.402153>,  <35.020863, 31.336897, 25.776192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781452, 31.632988, 26.402153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569828, 31.764713, 26.089321>,  <34.442856, 31.843748, 25.901623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569828, 31.764713, 26.089321>,  <34.781452, 31.632988, 26.402153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569828, 31.764713, 26.089321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770288, -0.573041, 0.279787,
		-0.356026, 0.750450, 0.556840,
		-0.529058, 0.329316, -0.782080,
		34.411110, 31.863508, 25.854696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148983, 31.527882, 26.672129>,  <34.781452, 31.632988, 26.402153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148983, 31.527882, 26.672129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078331, 31.632362, 26.292534>,  <34.035938, 31.695051, 26.064777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078331, 31.632362, 26.292534>,  <34.148983, 31.527882, 26.672129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078331, 31.632362, 26.292534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787088, -0.616406, -0.023166,
		-0.591012, 0.742844, 0.314466,
		-0.176630, 0.261204, -0.948986,
		34.025341, 31.710724, 26.007837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485020, 31.689156, 26.651785>,  <34.148983, 31.527882, 26.672129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485020, 31.689156, 26.651785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552734, 31.623859, 26.263004>,  <33.593365, 31.584682, 26.029736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552734, 31.623859, 26.263004>,  <33.485020, 31.689156, 26.651785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552734, 31.623859, 26.263004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714952, -0.699137, -0.007107,
		-0.678368, 0.696104, -0.235066,
		0.169291, -0.163240, -0.971954,
		33.603523, 31.574888, 25.971418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795639, 31.622284, 26.362518>,  <33.485020, 31.689156, 26.651785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795639, 31.622284, 26.362518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056404, 31.439926, 26.120140>,  <33.212864, 31.330511, 25.974714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056404, 31.439926, 26.120140>,  <32.795639, 31.622284, 26.362518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056404, 31.439926, 26.120140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505067, -0.857095, 0.101470,
		-0.565610, 0.239893, -0.789010,
		0.651914, -0.455895, -0.605943,
		33.251980, 31.303158, 25.938356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367226, 31.183685, 25.972427>,  <32.795639, 31.622284, 26.362518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367226, 31.183685, 25.972427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741203, 31.045078, 25.941959>,  <32.965591, 30.961914, 25.923677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741203, 31.045078, 25.941959>,  <32.367226, 31.183685, 25.972427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741203, 31.045078, 25.941959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328541, -0.926629, 0.182812,
		-0.133931, -0.145894, -0.980193,
		0.934946, -0.346517, -0.076172,
		33.021687, 30.941124, 25.919107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253197, 30.573532, 25.677620>,  <32.367226, 31.183685, 25.972427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253197, 30.573532, 25.677620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625313, 30.521870, 25.814949>,  <32.848583, 30.490871, 25.897346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625313, 30.521870, 25.814949>,  <32.253197, 30.573532, 25.677620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625313, 30.521870, 25.814949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212658, -0.952521, 0.217899,
		0.298880, -0.275720, -0.913591,
		0.930294, -0.129157, 0.343323,
		32.904400, 30.483122, 25.917946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403267, 30.009041, 25.350439>,  <32.253197, 30.573532, 25.677620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403267, 30.009041, 25.350439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676964, 30.052776, 25.638844>,  <32.841183, 30.079018, 25.811886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676964, 30.052776, 25.638844>,  <32.403267, 30.009041, 25.350439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676964, 30.052776, 25.638844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078024, -0.972045, 0.221449,
		0.725069, -0.207781, -0.656583,
		0.684242, 0.109337, 0.721012,
		32.882236, 30.085577, 25.855146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763420, 29.361507, 25.458527>,  <32.403267, 30.009041, 25.350439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763420, 29.361507, 25.458527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813755, 29.542862, 25.811481>,  <32.843956, 29.651674, 26.023254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813755, 29.542862, 25.811481>,  <32.763420, 29.361507, 25.458527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813755, 29.542862, 25.811481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239435, -0.849282, 0.470522,
		0.962724, -0.270482, 0.001689,
		0.125833, 0.453387, 0.882387,
		32.851505, 29.678879, 26.076197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951813, 28.785252, 25.968590>,  <32.763420, 29.361507, 25.458527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951813, 28.785252, 25.968590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820011, 29.115234, 26.152275>,  <32.740932, 29.313223, 26.262487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820011, 29.115234, 26.152275>,  <32.951813, 28.785252, 25.968590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820011, 29.115234, 26.152275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493940, -0.565125, 0.660800,
		0.804645, -0.009091, 0.593687,
		-0.329500, 0.824956, 0.459215,
		32.721161, 29.362720, 26.290039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345661, 28.867212, 26.536283>,  <32.951813, 28.785252, 25.968590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345661, 28.867212, 26.536283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990070, 29.043034, 26.587681>,  <32.776714, 29.148527, 26.618519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990070, 29.043034, 26.587681>,  <33.345661, 28.867212, 26.536283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990070, 29.043034, 26.587681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221877, -0.658863, 0.718797,
		0.400610, 0.610485, 0.683242,
		-0.888978, 0.439553, 0.128495,
		32.723377, 29.174900, 26.626228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325287, 28.883385, 27.189951>,  <33.345661, 28.867212, 26.536283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325287, 28.883385, 27.189951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936024, 28.922478, 27.106606>,  <32.702465, 28.945932, 27.056599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936024, 28.922478, 27.106606>,  <33.325287, 28.883385, 27.189951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936024, 28.922478, 27.106606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229460, -0.481799, 0.845706,
		-0.017738, 0.870815, 0.491291,
		-0.973156, 0.097731, -0.208363,
		32.644077, 28.951797, 27.044096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114891, 29.110550, 27.808216>,  <33.325287, 28.883385, 27.189951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114891, 29.110550, 27.808216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796497, 28.999859, 27.592873>,  <32.605461, 28.933445, 27.463667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796497, 28.999859, 27.592873>,  <33.114891, 29.110550, 27.808216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796497, 28.999859, 27.592873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417421, -0.393157, 0.819260,
		-0.438371, 0.876841, 0.197436,
		-0.795984, -0.276725, -0.538361,
		32.557701, 28.916842, 27.431364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547218, 29.303074, 28.161770>,  <33.114891, 29.110550, 27.808216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547218, 29.303074, 28.161770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434631, 29.001694, 27.924084>,  <32.367077, 28.820866, 27.781473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434631, 29.001694, 27.924084>,  <32.547218, 29.303074, 28.161770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434631, 29.001694, 27.924084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276672, -0.529228, 0.802104,
		-0.918818, 0.390171, -0.059496,
		-0.281471, -0.753448, -0.594214,
		32.350189, 28.775660, 27.745819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936367, 28.958582, 28.589806>,  <32.547218, 29.303074, 28.161770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936367, 28.958582, 28.589806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022324, 28.692127, 28.304127>,  <32.073898, 28.532253, 28.132719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022324, 28.692127, 28.304127>,  <31.936367, 28.958582, 28.589806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022324, 28.692127, 28.304127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299810, -0.740969, 0.600898,
		-0.929481, 0.084995, -0.358945,
		0.214893, -0.666139, -0.714199,
		32.086792, 28.492285, 28.089867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424469, 28.472288, 28.630415>,  <31.936367, 28.958582, 28.589806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424469, 28.472288, 28.630415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691317, 28.278172, 28.404339>,  <31.851425, 28.161701, 28.268692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691317, 28.278172, 28.404339>,  <31.424469, 28.472288, 28.630415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691317, 28.278172, 28.404339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264018, -0.863474, 0.429776,
		-0.696596, -0.137491, -0.704167,
		0.667120, -0.485292, -0.565192,
		31.891453, 28.132584, 28.234781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060760, 27.845345, 28.429171>,  <31.424469, 28.472288, 28.630415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060760, 27.845345, 28.429171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454508, 27.776413, 28.414612>,  <31.690756, 27.735054, 28.405876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454508, 27.776413, 28.414612>,  <31.060760, 27.845345, 28.429171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454508, 27.776413, 28.414612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123773, -0.823845, 0.553136,
		-0.125305, -0.539984, -0.832296,
		0.984367, -0.172327, -0.036397,
		31.749819, 27.724714, 28.403692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138329, 27.103987, 28.398920>,  <31.060760, 27.845345, 28.429171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138329, 27.103987, 28.398920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502687, 27.199772, 28.533337>,  <31.721302, 27.257242, 28.613987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502687, 27.199772, 28.533337>,  <31.138329, 27.103987, 28.398920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502687, 27.199772, 28.533337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038597, -0.761368, 0.647170,
		0.410823, -0.602476, -0.684286,
		0.910898, 0.239461, 0.336041,
		31.775957, 27.271610, 28.634150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502907, 26.486725, 28.486839>,  <31.138329, 27.103987, 28.398920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502907, 26.486725, 28.486839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712364, 26.737984, 28.717049>,  <31.838039, 26.888739, 28.855175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712364, 26.737984, 28.717049>,  <31.502907, 26.486725, 28.486839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712364, 26.737984, 28.717049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122969, -0.724203, 0.678535,
		0.843015, -0.284540, -0.456468,
		0.523646, 0.628146, 0.575524,
		31.869457, 26.926428, 28.889706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127193, 26.088303, 28.600346>,  <31.502907, 26.486725, 28.486839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127193, 26.088303, 28.600346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037350, 26.361183, 28.878670>,  <31.983442, 26.524912, 29.045664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037350, 26.361183, 28.878670>,  <32.127193, 26.088303, 28.600346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037350, 26.361183, 28.878670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055209, -0.704001, 0.708050,
		0.972883, 0.197450, 0.120463,
		-0.224611, 0.682199, 0.695812,
		31.969967, 26.565844, 29.087414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606216, 26.095053, 29.056820>,  <32.127193, 26.088303, 28.600346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606216, 26.095053, 29.056820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309189, 26.265018, 29.263912>,  <32.130974, 26.366999, 29.388166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309189, 26.265018, 29.263912>,  <32.606216, 26.095053, 29.056820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309189, 26.265018, 29.263912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045333, -0.739333, 0.671812,
		0.668238, 0.522335, 0.529740,
		-0.742565, 0.424915, 0.517729,
		32.086418, 26.392492, 29.419231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743263, 25.903505, 29.654011>,  <32.606216, 26.095053, 29.056820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743263, 25.903505, 29.654011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382423, 26.053200, 29.739948>,  <32.165920, 26.143017, 29.791512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382423, 26.053200, 29.739948>,  <32.743263, 25.903505, 29.654011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382423, 26.053200, 29.739948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031752, -0.554093, 0.831849,
		0.430353, 0.743591, 0.511731,
		-0.902102, 0.374237, 0.214845,
		32.111794, 26.165470, 29.804401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673946, 25.829889, 30.345232>,  <32.743263, 25.903505, 29.654011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673946, 25.829889, 30.345232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296040, 25.864571, 30.218803>,  <32.069294, 25.885380, 30.142946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296040, 25.864571, 30.218803>,  <32.673946, 25.829889, 30.345232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296040, 25.864571, 30.218803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304016, -0.592107, 0.746314,
		-0.122441, 0.801182, 0.585761,
		-0.944766, 0.086701, -0.316070,
		32.012611, 25.890581, 30.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331444, 26.023016, 31.009548>,  <32.673946, 25.829889, 30.345232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331444, 26.023016, 31.009548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060417, 25.875668, 30.754925>,  <31.897800, 25.787258, 30.602152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060417, 25.875668, 30.754925>,  <32.331444, 26.023016, 31.009548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060417, 25.875668, 30.754925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341687, -0.608775, 0.715992,
		-0.651269, 0.702636, 0.286619,
		-0.677568, -0.368369, -0.636558,
		31.857147, 25.765158, 30.563957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605335, 26.045782, 31.333138>,  <32.331444, 26.023016, 31.009548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605335, 26.045782, 31.333138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618473, 25.767513, 31.046093>,  <31.626356, 25.600552, 30.873867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618473, 25.767513, 31.046093>,  <31.605335, 26.045782, 31.333138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618473, 25.767513, 31.046093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436912, -0.655753, 0.615707,
		-0.898904, 0.293310, -0.325484,
		0.032844, -0.695670, -0.717610,
		31.628326, 25.558813, 30.830811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007483, 25.677509, 31.436161>,  <31.605335, 26.045782, 31.333138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007483, 25.677509, 31.436161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198845, 25.413582, 31.204380>,  <31.313663, 25.255226, 31.065311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198845, 25.413582, 31.204380>,  <31.007483, 25.677509, 31.436161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198845, 25.413582, 31.204380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359559, -0.749201, 0.556251,
		-0.801150, -0.057769, -0.595669,
		0.478409, -0.659819, -0.579451,
		31.342367, 25.215635, 31.030544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483616, 25.127975, 31.161039>,  <31.007483, 25.677509, 31.436161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483616, 25.127975, 31.161039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855726, 24.985577, 31.125591>,  <31.078993, 24.900137, 31.104322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855726, 24.985577, 31.125591>,  <30.483616, 25.127975, 31.161039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855726, 24.985577, 31.125591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251397, -0.794535, 0.552734,
		-0.267185, -0.491915, -0.828632,
		0.930275, -0.355998, -0.088622,
		31.134809, 24.878777, 31.099005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298597, 24.469988, 30.965078>,  <30.483616, 25.127975, 31.161039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298597, 24.469988, 30.965078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671076, 24.489231, 31.109612>,  <30.894562, 24.500776, 31.196331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671076, 24.489231, 31.109612>,  <30.298597, 24.469988, 30.965078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671076, 24.489231, 31.109612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146898, -0.857675, 0.492762,
		0.333614, -0.511937, -0.791595,
		0.931194, 0.048109, 0.361335,
		30.950434, 24.503664, 31.218012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503321, 23.803593, 30.906347>,  <30.298597, 24.469988, 30.965078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503321, 23.803593, 30.906347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747025, 23.949738, 31.187862>,  <30.893246, 24.037424, 31.356771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747025, 23.949738, 31.187862>,  <30.503321, 23.803593, 30.906347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747025, 23.949738, 31.187862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170076, -0.806669, 0.566002,
		0.774518, -0.464539, -0.429331,
		0.609258, 0.365360, 0.703787,
		30.929802, 24.059345, 31.398998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822174, 23.210131, 31.132988>,  <30.503321, 23.803593, 30.906347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822174, 23.210131, 31.132988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854500, 23.499996, 31.406727>,  <30.873896, 23.673916, 31.570971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854500, 23.499996, 31.406727>,  <30.822174, 23.210131, 31.132988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854500, 23.499996, 31.406727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221683, -0.656328, 0.721173,
		0.971764, -0.209989, 0.107605,
		0.080814, 0.724664, 0.684347,
		30.878744, 23.717396, 31.612032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074102, 22.815102, 31.656330>,  <30.822174, 23.210131, 31.132988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074102, 22.815102, 31.656330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946526, 23.152802, 31.828617>,  <30.869980, 23.355421, 31.931990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946526, 23.152802, 31.828617>,  <31.074102, 22.815102, 31.656330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946526, 23.152802, 31.828617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331918, -0.525167, 0.783601,
		0.887754, 0.106960, 0.447719,
		-0.318941, 0.844251, 0.430717,
		30.850843, 23.406076, 31.957832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170162, 22.617725, 32.424595>,  <31.074102, 22.815102, 31.656330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170162, 22.617725, 32.424595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943834, 22.946918, 32.444798>,  <30.808037, 23.144434, 32.456917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943834, 22.946918, 32.444798>,  <31.170162, 22.617725, 32.424595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943834, 22.946918, 32.444798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464544, -0.368791, 0.805103,
		0.681210, 0.432083, 0.590980,
		-0.565819, 0.822981, 0.050502,
		30.774088, 23.193813, 32.459949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235956, 22.858379, 33.109631>,  <31.170162, 22.617725, 32.424595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235956, 22.858379, 33.109631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886757, 22.996105, 32.971458>,  <30.677237, 23.078741, 32.888557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886757, 22.996105, 32.971458>,  <31.235956, 22.858379, 33.109631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886757, 22.996105, 32.971458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456103, -0.325501, 0.828263,
		0.172746, 0.880623, 0.441205,
		-0.873000, 0.344314, -0.345426,
		30.624857, 23.099400, 32.867832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976719, 23.268126, 33.594948>,  <31.235956, 22.858379, 33.109631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976719, 23.268126, 33.594948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656855, 23.148571, 33.386639>,  <30.464935, 23.076838, 33.261654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656855, 23.148571, 33.386639>,  <30.976719, 23.268126, 33.594948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656855, 23.148571, 33.386639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449463, -0.277147, 0.849219,
		-0.398153, 0.913157, 0.087284,
		-0.799660, -0.298888, -0.520777,
		30.416956, 23.058905, 33.230404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413885, 23.541265, 33.840919>,  <30.976719, 23.268126, 33.594948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413885, 23.541265, 33.840919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262030, 23.228848, 33.642590>,  <30.170918, 23.041397, 33.523590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262030, 23.228848, 33.642590>,  <30.413885, 23.541265, 33.840919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262030, 23.228848, 33.642590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553794, -0.237457, 0.798076,
		-0.741072, 0.577564, -0.342392,
		-0.379637, -0.781047, -0.495824,
		30.148138, 22.994534, 33.493843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711422, 23.532589, 34.060707>,  <30.413885, 23.541265, 33.840919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711422, 23.532589, 34.060707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838882, 23.178585, 33.924931>,  <29.915359, 22.966183, 33.843464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838882, 23.178585, 33.924931>,  <29.711422, 23.532589, 34.060707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838882, 23.178585, 33.924931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509072, -0.461865, 0.726310,
		-0.799567, -0.058641, -0.597708,
		0.318652, -0.885009, -0.339440,
		29.934479, 22.913082, 33.823097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167341, 23.025429, 34.168037>,  <29.711422, 23.532589, 34.060707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167341, 23.025429, 34.168037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461315, 22.762547, 34.101162>,  <29.637699, 22.604816, 34.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461315, 22.762547, 34.101162>,  <29.167341, 23.025429, 34.168037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461315, 22.762547, 34.101162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366945, -0.592730, 0.716953,
		-0.570279, -0.465569, -0.676777,
		0.734938, -0.657203, -0.167183,
		29.681795, 22.565384, 34.051006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825356, 22.376080, 34.211842>,  <29.167341, 23.025429, 34.168037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825356, 22.376080, 34.211842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216326, 22.319027, 34.274185>,  <29.450909, 22.284796, 34.311592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216326, 22.319027, 34.274185>,  <28.825356, 22.376080, 34.211842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216326, 22.319027, 34.274185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207568, -0.510773, 0.834282,
		-0.039385, -0.847801, -0.528849,
		0.977427, -0.142631, 0.155859,
		29.509554, 22.276237, 34.320942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870934, 21.645073, 34.325928>,  <28.825356, 22.376080, 34.211842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870934, 21.645073, 34.325928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222761, 21.769482, 34.469940>,  <29.433857, 21.844128, 34.556347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222761, 21.769482, 34.469940>,  <28.870934, 21.645073, 34.325928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222761, 21.769482, 34.469940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145407, -0.544794, 0.825867,
		0.453006, -0.778759, -0.433959,
		0.879569, 0.311022, 0.360032,
		29.486631, 21.862789, 34.577950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365158, 21.120623, 34.356121>,  <28.870934, 21.645073, 34.325928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365158, 21.120623, 34.356121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475903, 21.387318, 34.632904>,  <29.542349, 21.547335, 34.798973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475903, 21.387318, 34.632904>,  <29.365158, 21.120623, 34.356121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475903, 21.387318, 34.632904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038581, -0.711814, 0.701308,
		0.960136, -0.220860, -0.171349,
		0.276860, 0.666740, 0.691959,
		29.558960, 21.587339, 34.840492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863237, 20.909315, 34.822582>,  <29.365158, 21.120623, 34.356121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863237, 20.909315, 34.822582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683086, 21.170238, 35.066437>,  <29.574997, 21.326792, 35.212749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683086, 21.170238, 35.066437>,  <29.863237, 20.909315, 34.822582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683086, 21.170238, 35.066437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318739, -0.755280, 0.572675,
		0.834006, 0.063604, 0.548077,
		-0.450376, 0.652308, 0.609635,
		29.547974, 21.365931, 35.249329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275795, 20.957331, 35.578003>,  <29.863237, 20.909315, 34.822582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275795, 20.957331, 35.578003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882914, 21.025482, 35.546387>,  <29.647184, 21.066374, 35.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882914, 21.025482, 35.546387>,  <30.275795, 20.957331, 35.578003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882914, 21.025482, 35.546387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186123, -0.826432, 0.531383,
		0.025213, 0.536638, 0.843436,
		-0.982203, 0.170380, -0.079043,
		29.588253, 21.076597, 35.522675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145485, 21.200983, 36.245438>,  <30.275795, 20.957331, 35.578003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145485, 21.200983, 36.245438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228991, 21.584896, 36.320518>,  <30.279095, 21.815245, 36.365566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228991, 21.584896, 36.320518>,  <30.145485, 21.200983, 36.245438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228991, 21.584896, 36.320518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230429, -0.138251, 0.963218,
		0.950431, -0.244337, 0.192300,
		0.208764, 0.959784, 0.187701,
		30.291620, 21.872831, 36.376827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507320, 21.154192, 36.857769>,  <30.145485, 21.200983, 36.245438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507320, 21.154192, 36.857769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339703, 21.516544, 36.833168>,  <30.239132, 21.733955, 36.818409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339703, 21.516544, 36.833168>,  <30.507320, 21.154192, 36.857769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339703, 21.516544, 36.833168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233952, -0.042276, 0.971329,
		0.877307, 0.421419, 0.229648,
		-0.419045, 0.905880, -0.061503,
		30.213989, 21.788309, 36.814716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827705, 21.690186, 37.225586>,  <30.507320, 21.154192, 36.857769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827705, 21.690186, 37.225586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429659, 21.724083, 37.205349>,  <30.190830, 21.744421, 37.193207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429659, 21.724083, 37.205349>,  <30.827705, 21.690186, 37.225586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429659, 21.724083, 37.205349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045758, 0.058092, 0.997262,
		0.087452, 0.994708, -0.053931,
		-0.995117, 0.084744, -0.050597,
		30.131124, 21.749506, 37.190170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529305, 22.310953, 37.560551>,  <30.827705, 21.690186, 37.225586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529305, 22.310953, 37.560551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231178, 22.044270, 37.561081>,  <30.052303, 21.884258, 37.561398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231178, 22.044270, 37.561081>,  <30.529305, 22.310953, 37.560551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231178, 22.044270, 37.561081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097712, 0.111194, 0.988984,
		-0.659513, 0.736976, -0.148020,
		-0.745316, -0.666710, 0.001323,
		30.007584, 21.844257, 37.561478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934429, 22.589582, 37.929749>,  <30.529305, 22.310953, 37.560551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934429, 22.589582, 37.929749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889847, 22.194771, 37.975971>,  <29.863098, 21.957884, 38.003704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889847, 22.194771, 37.975971>,  <29.934429, 22.589582, 37.929749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889847, 22.194771, 37.975971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397718, 0.150868, 0.905019,
		-0.910713, 0.054909, -0.409374,
		-0.111455, -0.987028, 0.115559,
		29.856411, 21.898663, 38.010639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566423, 23.209883, 38.231422>,  <29.934429, 22.589582, 37.929749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566423, 23.209883, 38.231422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698523, 23.316425, 37.869209>,  <29.777782, 23.380352, 37.651882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698523, 23.316425, 37.869209>,  <29.566423, 23.209883, 38.231422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698523, 23.316425, 37.869209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267373, 0.893666, 0.360378,
		0.905233, -0.361130, 0.223916,
		0.330250, 0.266357, -0.905533,
		29.797596, 23.396332, 37.597549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280781, 23.503895, 38.260166>,  <29.566423, 23.209883, 38.231422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280781, 23.503895, 38.260166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042044, 23.659744, 37.979603>,  <29.898802, 23.753254, 37.811264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042044, 23.659744, 37.979603>,  <30.280781, 23.503895, 38.260166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042044, 23.659744, 37.979603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057397, 0.892675, 0.447031,
		0.800303, 0.226549, -0.555149,
		-0.596842, 0.389624, -0.701407,
		29.862991, 23.776632, 37.769180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882246, 24.029591, 38.261909>,  <30.280781, 23.503895, 38.260166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882246, 24.029591, 38.261909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140186, 24.282330, 38.089893>,  <31.294950, 24.433973, 37.986683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140186, 24.282330, 38.089893>,  <30.882246, 24.029591, 38.261909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140186, 24.282330, 38.089893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336705, 0.739962, 0.582310,
		0.686146, -0.230707, 0.689912,
		0.644852, 0.631846, -0.430042,
		31.333641, 24.471884, 37.960880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239107, 23.449221, 37.935860>,  <30.882246, 24.029591, 38.261909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239107, 23.449221, 37.935860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212534, 23.194569, 37.628540>,  <31.196590, 23.041777, 37.444149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212534, 23.194569, 37.628540>,  <31.239107, 23.449221, 37.935860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212534, 23.194569, 37.628540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415311, 0.682488, -0.601437,
		0.907251, -0.359039, 0.219061,
		-0.066433, -0.636632, -0.768301,
		31.192604, 23.003578, 37.398048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933622, 23.475830, 37.574745>,  <31.239107, 23.449221, 37.935860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933622, 23.475830, 37.574745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651125, 23.336411, 37.328255>,  <31.481627, 23.252758, 37.180363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651125, 23.336411, 37.328255>,  <31.933622, 23.475830, 37.574745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651125, 23.336411, 37.328255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191102, 0.744245, -0.639984,
		0.681686, -0.569748, -0.459012,
		-0.706247, -0.348550, -0.616221,
		31.439251, 23.231846, 37.143387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272053, 23.456497, 36.925579>,  <31.933622, 23.475830, 37.574745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272053, 23.456497, 36.925579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880804, 23.462902, 36.842609>,  <31.646055, 23.466745, 36.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880804, 23.462902, 36.842609>,  <32.272053, 23.456497, 36.925579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880804, 23.462902, 36.842609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161282, 0.688148, -0.707418,
		0.131409, -0.725393, -0.675675,
		-0.978120, 0.016013, -0.207422,
		31.587368, 23.467707, 36.780384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130257, 23.314308, 36.181305>,  <32.272053, 23.456497, 36.925579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130257, 23.314308, 36.181305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824965, 23.530132, 36.323494>,  <31.641790, 23.659626, 36.408806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824965, 23.530132, 36.323494>,  <32.130257, 23.314308, 36.181305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824965, 23.530132, 36.323494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094465, 0.637424, -0.764700,
		-0.639187, -0.550060, -0.537469,
		-0.763227, 0.539559, 0.355472,
		31.595997, 23.691999, 36.430134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921701, 23.534031, 35.538898>,  <32.130257, 23.314308, 36.181305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921701, 23.534031, 35.538898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692524, 23.727692, 35.803425>,  <31.555017, 23.843887, 35.962139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692524, 23.727692, 35.803425>,  <31.921701, 23.534031, 35.538898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692524, 23.727692, 35.803425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183116, 0.710863, -0.679075,
		-0.798877, -0.510168, -0.318628,
		-0.572943, 0.484151, 0.661312,
		31.520641, 23.872936, 36.001820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217175, 23.676546, 35.206017>,  <31.921701, 23.534031, 35.538898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217175, 23.676546, 35.206017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269466, 23.938114, 35.504089>,  <31.300842, 24.095055, 35.682934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269466, 23.938114, 35.504089>,  <31.217175, 23.676546, 35.206017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269466, 23.938114, 35.504089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205906, 0.753153, -0.624791,
		-0.969800, -0.071759, 0.233107,
		0.130731, 0.653920, 0.745183,
		31.308685, 24.134291, 35.727646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592115, 24.129801, 35.278118>,  <31.217175, 23.676546, 35.206017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592115, 24.129801, 35.278118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890564, 24.355392, 35.419670>,  <31.069633, 24.490747, 35.504601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890564, 24.355392, 35.419670>,  <30.592115, 24.129801, 35.278118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890564, 24.355392, 35.419670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358965, 0.788381, -0.499600,
		-0.560754, 0.245733, 0.790677,
		0.746123, 0.563978, 0.353878,
		31.114401, 24.524586, 35.525833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285271, 24.737148, 35.584278>,  <30.592115, 24.129801, 35.278118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285271, 24.737148, 35.584278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650457, 24.852688, 35.468998>,  <30.869570, 24.922012, 35.399830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650457, 24.852688, 35.468998>,  <30.285271, 24.737148, 35.584278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650457, 24.852688, 35.468998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372281, 0.878793, -0.298547,
		0.167032, 0.379854, 0.909841,
		0.912966, 0.288850, -0.288199,
		30.924347, 24.939342, 35.382538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226154, 25.393719, 35.800270>,  <30.285271, 24.737148, 35.584278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226154, 25.393719, 35.800270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524641, 25.370510, 35.535004>,  <30.703733, 25.356585, 35.375843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524641, 25.370510, 35.535004>,  <30.226154, 25.393719, 35.800270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524641, 25.370510, 35.535004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295256, 0.864003, -0.407826,
		0.596643, 0.500132, 0.627603,
		0.746217, -0.058023, -0.663169,
		30.748507, 25.353104, 35.336052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404202, 26.100380, 35.533924>,  <30.226154, 25.393719, 35.800270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404202, 26.100380, 35.533924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598919, 25.870762, 35.270561>,  <30.715750, 25.732990, 35.112541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598919, 25.870762, 35.270561>,  <30.404202, 26.100380, 35.533924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598919, 25.870762, 35.270561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155840, 0.684581, -0.712083,
		0.859502, 0.449246, 0.243792,
		0.486796, -0.574045, -0.658409,
		30.744957, 25.698549, 35.073040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848135, 26.536455, 35.165970>,  <30.404202, 26.100380, 35.533924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848135, 26.536455, 35.165970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800594, 26.228920, 34.914650>,  <30.772070, 26.044399, 34.763859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800594, 26.228920, 34.914650>,  <30.848135, 26.536455, 35.165970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800594, 26.228920, 34.914650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018013, 0.631015, -0.775561,
		0.992749, -0.103495, -0.061148,
		-0.118851, -0.768836, -0.628304,
		30.764938, 25.998270, 34.726158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186926, 26.757044, 34.587238>,  <30.848135, 26.536455, 35.165970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186926, 26.757044, 34.587238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999451, 26.442657, 34.425949>,  <30.886967, 26.254026, 34.329174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999451, 26.442657, 34.425949>,  <31.186926, 26.757044, 34.587238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999451, 26.442657, 34.425949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090644, 0.496847, -0.863091,
		0.878701, -0.367970, -0.304109,
		-0.468687, -0.785965, -0.403226,
		30.858845, 26.206867, 34.304981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507729, 26.642641, 33.961128>,  <31.186926, 26.757044, 34.587238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507729, 26.642641, 33.961128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134527, 26.499584, 33.945145>,  <30.910606, 26.413750, 33.935555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134527, 26.499584, 33.945145>,  <31.507729, 26.642641, 33.961128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134527, 26.499584, 33.945145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165230, 0.524372, -0.835304,
		0.319693, -0.772739, -0.548334,
		-0.933003, -0.357642, -0.039958,
		30.854626, 26.392292, 33.933159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387682, 26.407896, 33.315842>,  <31.507729, 26.642641, 33.961128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387682, 26.407896, 33.315842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024483, 26.504036, 33.453114>,  <30.806562, 26.561720, 33.535477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024483, 26.504036, 33.453114>,  <31.387682, 26.407896, 33.315842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024483, 26.504036, 33.453114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221559, 0.419738, -0.880188,
		-0.355597, -0.875244, -0.327870,
		-0.907999, 0.240350, 0.343176,
		30.752083, 26.576141, 33.556065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012712, 26.113869, 32.904537>,  <31.387682, 26.407896, 33.315842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012712, 26.113869, 32.904537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760317, 26.369427, 33.080570>,  <30.608879, 26.522760, 33.186188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760317, 26.369427, 33.080570>,  <31.012712, 26.113869, 32.904537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760317, 26.369427, 33.080570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182012, 0.429514, -0.884528,
		-0.754138, -0.638227, -0.154732,
		-0.630989, 0.638893, 0.440078,
		30.571020, 26.561094, 33.212593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317606, 26.096121, 32.548405>,  <31.012712, 26.113869, 32.904537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317606, 26.096121, 32.548405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361855, 26.453629, 32.722271>,  <30.388403, 26.668133, 32.826591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361855, 26.453629, 32.722271>,  <30.317606, 26.096121, 32.548405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361855, 26.453629, 32.722271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044928, 0.441402, -0.896184,
		-0.992847, 0.079608, 0.088984,
		0.110621, 0.893771, 0.434668,
		30.395041, 26.721760, 32.852673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843519, 26.463392, 32.132195>,  <30.317606, 26.096121, 32.548405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843519, 26.463392, 32.132195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071873, 26.725174, 32.330498>,  <30.208885, 26.882244, 32.449482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071873, 26.725174, 32.330498>,  <29.843519, 26.463392, 32.132195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071873, 26.725174, 32.330498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078239, 0.644443, -0.760639,
		-0.817294, 0.395449, 0.419107,
		0.570884, 0.654456, 0.495760,
		30.243137, 26.921511, 32.479225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524458, 27.093254, 31.983459>,  <29.843519, 26.463392, 32.132195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524458, 27.093254, 31.983459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869568, 27.215569, 32.144512>,  <30.076633, 27.288958, 32.241142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869568, 27.215569, 32.144512>,  <29.524458, 27.093254, 31.983459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869568, 27.215569, 32.144512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019276, 0.815681, -0.578181,
		-0.505220, 0.491079, 0.709644,
		0.862776, 0.305787, 0.402632,
		30.128401, 27.307304, 32.265301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372561, 27.814285, 31.990276>,  <29.524458, 27.093254, 31.983459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372561, 27.814285, 31.990276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763998, 27.742329, 32.030262>,  <29.998861, 27.699154, 32.054253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763998, 27.742329, 32.030262>,  <29.372561, 27.814285, 31.990276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763998, 27.742329, 32.030262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205607, 0.875724, -0.436844,
		-0.008958, 0.448047, 0.893965,
		0.978594, -0.179893, 0.099966,
		30.057575, 27.688360, 32.060253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681293, 28.394110, 32.238388>,  <29.372561, 27.814285, 31.990276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681293, 28.394110, 32.238388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961630, 28.187073, 32.042057>,  <30.129831, 28.062851, 31.924257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961630, 28.187073, 32.042057>,  <29.681293, 28.394110, 32.238388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961630, 28.187073, 32.042057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213033, 0.808573, -0.548476,
		0.680761, 0.279832, 0.676947,
		0.700843, -0.517593, -0.490832,
		30.171883, 28.031796, 31.894808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211075, 28.845404, 32.179192>,  <29.681293, 28.394110, 32.238388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211075, 28.845404, 32.179192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251623, 28.571800, 31.890232>,  <30.275951, 28.407639, 31.716858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251623, 28.571800, 31.890232>,  <30.211075, 28.845404, 32.179192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251623, 28.571800, 31.890232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323334, 0.709366, -0.626302,
		0.940839, -0.170086, 0.293073,
		0.101371, -0.684010, -0.722395,
		30.282034, 28.366596, 31.673513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686852, 29.190218, 31.705854>,  <30.211075, 28.845404, 32.179192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686852, 29.190218, 31.705854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591900, 28.872108, 31.482716>,  <30.534929, 28.681244, 31.348833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591900, 28.872108, 31.482716>,  <30.686852, 29.190218, 31.705854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591900, 28.872108, 31.482716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358686, 0.461923, -0.811154,
		0.902771, -0.392643, 0.175603,
		-0.237379, -0.795273, -0.557846,
		30.520685, 28.633526, 31.315361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311764, 28.922949, 31.324682>,  <30.686852, 29.190218, 31.705854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311764, 28.922949, 31.324682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996750, 28.838547, 31.093075>,  <30.807741, 28.787907, 30.954109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996750, 28.838547, 31.093075>,  <31.311764, 28.922949, 31.324682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996750, 28.838547, 31.093075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404479, 0.531893, -0.743967,
		0.464953, -0.820103, -0.333540,
		-0.787538, -0.211000, -0.579019,
		30.760489, 28.775246, 30.919369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585669, 28.664963, 30.647642>,  <31.311764, 28.922949, 31.324682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585669, 28.664963, 30.647642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209681, 28.779549, 30.573460>,  <30.984087, 28.848301, 30.528950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209681, 28.779549, 30.573460>,  <31.585669, 28.664963, 30.647642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209681, 28.779549, 30.573460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314399, 0.515640, -0.797037,
		-0.132695, -0.807498, -0.574750,
		-0.939971, 0.286464, -0.185454,
		30.927689, 28.865488, 30.517824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476814, 28.596149, 29.870687>,  <31.585669, 28.664963, 30.647642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476814, 28.596149, 29.870687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210888, 28.849289, 30.029442>,  <31.051332, 29.001173, 30.124695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210888, 28.849289, 30.029442>,  <31.476814, 28.596149, 29.870687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210888, 28.849289, 30.029442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015375, 0.542783, -0.839733,
		-0.746848, -0.552167, -0.370581,
		-0.664817, 0.632850, 0.396887,
		31.011442, 29.039145, 30.148508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267578, 28.908947, 29.312922>,  <31.476814, 28.596149, 29.870687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267578, 28.908947, 29.312922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114733, 29.133709, 29.606384>,  <31.023026, 29.268566, 29.782461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114733, 29.133709, 29.606384>,  <31.267578, 28.908947, 29.312922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114733, 29.133709, 29.606384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150329, 0.821122, -0.550599,
		-0.911806, -0.100101, -0.398232,
		-0.382113, 0.561906, 0.733656,
		31.000099, 29.302280, 29.826481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933680, 29.330032, 28.910589>,  <31.267578, 28.908947, 29.312922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933680, 29.330032, 28.910589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978712, 29.508297, 29.265827>,  <31.005732, 29.615255, 29.478970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978712, 29.508297, 29.265827>,  <30.933680, 29.330032, 28.910589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978712, 29.508297, 29.265827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294758, 0.838568, -0.458172,
		-0.948917, 0.313355, -0.036954,
		0.112582, 0.445660, 0.888095,
		31.012487, 29.641994, 29.532255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591003, 29.980671, 28.947861>,  <30.933680, 29.330032, 28.910589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591003, 29.980671, 28.947861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869820, 30.000240, 29.234005>,  <31.037109, 30.011982, 29.405691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869820, 30.000240, 29.234005>,  <30.591003, 29.980671, 28.947861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869820, 30.000240, 29.234005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485629, 0.701806, -0.521184,
		-0.527543, 0.710687, 0.465428,
		0.697039, 0.048922, 0.715362,
		31.078932, 30.014917, 29.448614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682503, 30.726076, 29.175230>,  <30.591003, 29.980671, 28.947861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682503, 30.726076, 29.175230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011524, 30.525890, 29.283260>,  <31.208937, 30.405779, 29.348078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011524, 30.525890, 29.283260>,  <30.682503, 30.726076, 29.175230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011524, 30.525890, 29.283260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568602, 0.715620, -0.405685,
		0.009760, 0.487262, 0.873201,
		0.822555, -0.500463, 0.270074,
		31.258291, 30.375751, 29.364283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089542, 31.230873, 29.553059>,  <30.682503, 30.726076, 29.175230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089542, 31.230873, 29.553059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313608, 30.936951, 29.400074>,  <31.448048, 30.760597, 29.308283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313608, 30.936951, 29.400074>,  <31.089542, 31.230873, 29.553059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313608, 30.936951, 29.400074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552751, 0.675439, -0.488107,
		0.616993, 0.062015, 0.784521,
		0.560166, -0.734804, -0.382462,
		31.481657, 30.716509, 29.285336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807220, 31.370256, 29.574480>,  <31.089542, 31.230873, 29.553059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807220, 31.370256, 29.574480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820967, 31.104870, 29.275513>,  <31.829214, 30.945639, 29.096132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820967, 31.104870, 29.275513>,  <31.807220, 31.370256, 29.574480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820967, 31.104870, 29.275513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423771, 0.686974, -0.590326,
		0.905117, -0.296448, 0.304765,
		0.034364, -0.663464, -0.747418,
		31.831276, 30.905830, 29.051287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435505, 31.495913, 29.216391>,  <31.807220, 31.370256, 29.574480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435505, 31.495913, 29.216391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229424, 31.271790, 28.956970>,  <32.105774, 31.137316, 28.801317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229424, 31.271790, 28.956970>,  <32.435505, 31.495913, 29.216391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229424, 31.271790, 28.956970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389470, 0.521013, -0.759512,
		0.763465, -0.643895, -0.050204,
		-0.515203, -0.560308, -0.648553,
		32.074863, 31.103697, 28.762403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902813, 31.524658, 28.742565>,  <32.435505, 31.495913, 29.216391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902813, 31.524658, 28.742565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564907, 31.379635, 28.585125>,  <32.362164, 31.292622, 28.490662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564907, 31.379635, 28.585125>,  <32.902813, 31.524658, 28.742565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564907, 31.379635, 28.585125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179380, 0.501109, -0.846588,
		0.504213, -0.785757, -0.358267,
		-0.844744, -0.362595, -0.393615,
		32.311478, 31.270868, 28.467045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979702, 31.359674, 28.039667>,  <32.902813, 31.524658, 28.742565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979702, 31.359674, 28.039667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582790, 31.402958, 28.063892>,  <32.344643, 31.428928, 28.078428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582790, 31.402958, 28.063892>,  <32.979702, 31.359674, 28.039667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582790, 31.402958, 28.063892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027421, 0.667774, -0.743859,
		-0.120935, -0.736457, -0.665587,
		-0.992282, 0.108210, 0.060562,
		32.285107, 31.435421, 28.082062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758278, 31.552870, 27.380445>,  <32.979702, 31.359674, 28.039667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758278, 31.552870, 27.380445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448608, 31.666954, 27.606476>,  <32.262806, 31.735405, 27.742094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448608, 31.666954, 27.606476>,  <32.758278, 31.552870, 27.380445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448608, 31.666954, 27.606476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222907, 0.712700, -0.665110,
		-0.592427, -0.640869, -0.488178,
		-0.774173, 0.285211, 0.565077,
		32.216358, 31.752518, 27.775999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235516, 31.702097, 26.877600>,  <32.758278, 31.552870, 27.380445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235516, 31.702097, 26.877600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107006, 31.892139, 27.205273>,  <32.029900, 32.006165, 27.401876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107006, 31.892139, 27.205273>,  <32.235516, 31.702097, 26.877600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107006, 31.892139, 27.205273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310148, 0.764542, -0.565052,
		-0.894757, -0.435605, -0.098276,
		-0.321275, 0.475104, 0.819182,
		32.010624, 32.034672, 27.451027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587282, 31.950516, 26.729958>,  <32.235516, 31.702097, 26.877600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587282, 31.950516, 26.729958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727360, 32.183086, 27.023708>,  <31.811407, 32.322628, 27.199959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727360, 32.183086, 27.023708>,  <31.587282, 31.950516, 26.729958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727360, 32.183086, 27.023708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282063, 0.813088, -0.509243,
		-0.893199, -0.028806, 0.448738,
		0.350194, 0.581427, 0.734375,
		31.832418, 32.357513, 27.244020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099148, 32.484127, 26.898598>,  <31.587282, 31.950516, 26.729958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099148, 32.484127, 26.898598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425131, 32.642944, 27.067455>,  <31.620720, 32.738235, 27.168770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425131, 32.642944, 27.067455>,  <31.099148, 32.484127, 26.898598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425131, 32.642944, 27.067455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120222, 0.828413, -0.547063,
		-0.566917, 0.395081, 0.722853,
		0.814955, 0.397042, 0.422144,
		31.669617, 32.762058, 27.194099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859402, 33.014561, 27.197079>,  <31.099148, 32.484127, 26.898598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859402, 33.014561, 27.197079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247709, 33.097183, 27.148190>,  <31.480694, 33.146755, 27.118856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247709, 33.097183, 27.148190>,  <30.859402, 33.014561, 27.197079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247709, 33.097183, 27.148190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229767, 0.652656, -0.721975,
		-0.069355, 0.728956, 0.681039,
		0.970771, 0.206553, -0.122225,
		31.538940, 33.159149, 27.111523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971430, 33.776058, 27.291428>,  <30.859402, 33.014561, 27.197079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971430, 33.776058, 27.291428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273911, 33.664223, 27.054787>,  <31.455399, 33.597122, 26.912802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273911, 33.664223, 27.054787>,  <30.971430, 33.776058, 27.291428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273911, 33.664223, 27.054787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153216, 0.803326, -0.575493,
		0.636148, 0.525831, 0.564639,
		0.756201, -0.279587, -0.591600,
		31.500771, 33.580345, 26.877306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258018, 33.965099, 27.088060>,  <30.971430, 33.776058, 27.291428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258018, 33.965099, 27.088060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896261, 34.130581, 27.129860>,  <29.679207, 34.229870, 27.154940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896261, 34.130581, 27.129860>,  <30.258018, 33.965099, 27.088060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896261, 34.130581, 27.129860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262983, -0.733288, 0.627000,
		0.336021, 0.539574, 0.771978,
		-0.904395, 0.413702, 0.104501,
		29.624943, 34.254692, 27.161211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047657, 33.745045, 27.716955>,  <30.258018, 33.965099, 27.088060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047657, 33.745045, 27.716955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708923, 33.904896, 27.576572>,  <29.505684, 34.000809, 27.492342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708923, 33.904896, 27.576572>,  <30.047657, 33.745045, 27.716955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708923, 33.904896, 27.576572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522955, -0.505390, 0.686366,
		0.096922, 0.764772, 0.636969,
		-0.846832, 0.399630, -0.350958,
		29.454874, 34.024784, 27.471285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721228, 33.980312, 28.279100>,  <30.047657, 33.745045, 27.716955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721228, 33.980312, 28.279100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446342, 33.922050, 27.994419>,  <29.281412, 33.887093, 27.823610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446342, 33.922050, 27.994419>,  <29.721228, 33.980312, 28.279100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446342, 33.922050, 27.994419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418040, -0.721942, 0.551400,
		-0.594121, 0.676451, 0.435240,
		-0.687213, -0.145651, -0.711705,
		29.240179, 33.878357, 27.780907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099400, 34.024826, 28.678877>,  <29.721228, 33.980312, 28.279100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099400, 34.024826, 28.678877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020348, 33.827110, 28.340263>,  <28.972918, 33.708481, 28.137096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020348, 33.827110, 28.340263>,  <29.099400, 34.024826, 28.678877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020348, 33.827110, 28.340263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421229, -0.736952, 0.528647,
		-0.885160, 0.461060, -0.062568,
		-0.197629, -0.494293, -0.846532,
		28.961060, 33.678822, 28.086304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403774, 33.768860, 28.725330>,  <29.099400, 34.024826, 28.678877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403774, 33.768860, 28.725330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585552, 33.525352, 28.465214>,  <28.694620, 33.379250, 28.309145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585552, 33.525352, 28.465214>,  <28.403774, 33.768860, 28.725330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585552, 33.525352, 28.465214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442942, -0.787812, 0.427965,
		-0.772835, 0.093548, -0.627675,
		0.454454, -0.608770, -0.650285,
		28.721886, 33.342720, 28.270126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836477, 33.360992, 28.422697>,  <28.403774, 33.768860, 28.725330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836477, 33.360992, 28.422697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163731, 33.150238, 28.330566>,  <28.360083, 33.023785, 28.275288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163731, 33.150238, 28.330566>,  <27.836477, 33.360992, 28.422697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163731, 33.150238, 28.330566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443467, -0.833106, 0.330564,
		-0.366056, -0.168303, -0.915247,
		0.818133, -0.526887, -0.230327,
		28.409170, 32.992172, 28.261469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559618, 32.717884, 28.118336>,  <27.836477, 33.360992, 28.422697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559618, 32.717884, 28.118336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928097, 32.634880, 28.249992>,  <28.149183, 32.585075, 28.328987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928097, 32.634880, 28.249992>,  <27.559618, 32.717884, 28.118336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928097, 32.634880, 28.249992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343696, -0.830512, 0.438318,
		0.182400, -0.516902, -0.836387,
		0.921197, -0.207514, 0.329143,
		28.204456, 32.572624, 28.348736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648930, 32.071815, 28.007662>,  <27.559618, 32.717884, 28.118336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648930, 32.071815, 28.007662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924648, 32.143059, 28.288559>,  <28.090078, 32.185806, 28.457098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924648, 32.143059, 28.288559>,  <27.648930, 32.071815, 28.007662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924648, 32.143059, 28.288559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200965, -0.884262, 0.421537,
		0.696050, -0.431690, -0.573724,
		0.689295, 0.178112, 0.702245,
		28.131437, 32.196491, 28.499233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943443, 31.402466, 28.065834>,  <27.648930, 32.071815, 28.007662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943443, 31.402466, 28.065834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051323, 31.611961, 28.389057>,  <28.116051, 31.737659, 28.582991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051323, 31.611961, 28.389057>,  <27.943443, 31.402466, 28.065834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051323, 31.611961, 28.389057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054080, -0.829592, 0.555745,
		0.961425, -0.193584, -0.195417,
		0.269700, 0.523739, 0.808059,
		28.132233, 31.769083, 28.631475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472500, 30.932299, 28.538399>,  <27.943443, 31.402466, 28.065834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472500, 30.932299, 28.538399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300978, 31.210426, 28.769104>,  <28.198065, 31.377304, 28.907526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300978, 31.210426, 28.769104>,  <28.472500, 30.932299, 28.538399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300978, 31.210426, 28.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142111, -0.682406, 0.717026,
		0.892149, 0.225501, 0.391433,
		-0.428806, 0.695321, 0.576762,
		28.172337, 31.419024, 28.942133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755299, 30.785080, 29.096718>,  <28.472500, 30.932299, 28.538399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755299, 30.785080, 29.096718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437679, 30.991783, 29.224747>,  <28.247107, 31.115805, 29.301565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437679, 30.991783, 29.224747>,  <28.755299, 30.785080, 29.096718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437679, 30.991783, 29.224747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143142, -0.670723, 0.727765,
		0.590758, 0.532065, 0.606557,
		-0.794050, 0.516756, 0.320074,
		28.199465, 31.146811, 29.320768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894402, 30.948101, 29.826687>,  <28.755299, 30.785080, 29.096718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894402, 30.948101, 29.826687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500101, 30.960785, 29.760609>,  <28.263521, 30.968395, 29.720963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500101, 30.960785, 29.760609>,  <28.894402, 30.948101, 29.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500101, 30.960785, 29.760609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161804, -0.447208, 0.879673,
		-0.045982, 0.893868, 0.445967,
		-0.985751, 0.031710, -0.165195,
		28.204376, 30.970299, 29.711050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642000, 31.156729, 30.448841>,  <28.894402, 30.948101, 29.826687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642000, 31.156729, 30.448841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333088, 30.995064, 30.252785>,  <28.147741, 30.898064, 30.135151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333088, 30.995064, 30.252785>,  <28.642000, 31.156729, 30.448841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333088, 30.995064, 30.252785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365627, -0.348168, 0.863190,
		-0.519521, 0.845831, 0.121110,
		-0.772279, -0.404164, -0.490139,
		28.101404, 30.873814, 30.105743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102491, 31.298254, 30.827244>,  <28.642000, 31.156729, 30.448841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102491, 31.298254, 30.827244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975294, 31.003059, 30.589165>,  <27.898975, 30.825943, 30.446318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975294, 31.003059, 30.589165>,  <28.102491, 31.298254, 30.827244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975294, 31.003059, 30.589165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424573, -0.450471, 0.785375,
		-0.847714, 0.502447, -0.170082,
		-0.317993, -0.737986, -0.595196,
		27.879896, 30.781664, 30.410606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448053, 31.061144, 31.104197>,  <28.102491, 31.298254, 30.827244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448053, 31.061144, 31.104197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544138, 30.754189, 30.866402>,  <27.601789, 30.570015, 30.723724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544138, 30.754189, 30.866402>,  <27.448053, 31.061144, 31.104197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544138, 30.754189, 30.866402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330700, -0.640477, 0.693129,
		-0.912654, 0.030100, -0.407624,
		0.240211, -0.767388, -0.594487,
		27.616201, 30.523972, 30.688055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867723, 30.621641, 31.118914>,  <27.448053, 31.061144, 31.104197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867723, 30.621641, 31.118914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191347, 30.410213, 31.016117>,  <27.385521, 30.283358, 30.954439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191347, 30.410213, 31.016117>,  <26.867723, 30.621641, 31.118914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191347, 30.410213, 31.016117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220117, -0.677941, 0.701388,
		-0.544953, -0.510895, -0.664840,
		0.809057, -0.528566, -0.256989,
		27.434065, 30.251644, 30.939020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658703, 29.939671, 31.251978>,  <26.867723, 30.621641, 31.118914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658703, 29.939671, 31.251978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051912, 29.885357, 31.202618>,  <27.287838, 29.852770, 31.173002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051912, 29.885357, 31.202618>,  <26.658703, 29.939671, 31.251978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051912, 29.885357, 31.202618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013834, -0.725491, 0.688093,
		-0.182956, -0.674704, -0.715053,
		0.983024, -0.135783, -0.123399,
		27.346819, 29.844622, 31.165598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806107, 29.250477, 31.322720>,  <26.658703, 29.939671, 31.251978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806107, 29.250477, 31.322720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177946, 29.382687, 31.387962>,  <27.401049, 29.462011, 31.427109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177946, 29.382687, 31.387962>,  <26.806107, 29.250477, 31.322720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177946, 29.382687, 31.387962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156704, -0.754967, 0.636765,
		0.333607, -0.566374, -0.753609,
		0.929597, 0.330523, 0.163109,
		27.456825, 29.481844, 31.436895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267075, 28.658833, 31.393320>,  <26.806107, 29.250477, 31.322720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267075, 28.658833, 31.393320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477701, 28.953701, 31.562698>,  <27.604076, 29.130623, 31.664326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477701, 28.953701, 31.562698>,  <27.267075, 28.658833, 31.393320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477701, 28.953701, 31.562698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192948, -0.588723, 0.784969,
		0.827950, -0.331634, -0.452237,
		0.526565, 0.737173, 0.423445,
		27.635672, 29.174852, 31.689732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955231, 28.446524, 31.475155>,  <27.267075, 28.658833, 31.393320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955231, 28.446524, 31.475155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874086, 28.717484, 31.757992>,  <27.825399, 28.880060, 31.927694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874086, 28.717484, 31.757992>,  <27.955231, 28.446524, 31.475155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874086, 28.717484, 31.757992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233426, -0.667834, 0.706760,
		0.950978, 0.308429, -0.022644,
		-0.202863, 0.677399, 0.707090,
		27.813227, 28.920704, 31.970119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608505, 28.475105, 31.936945>,  <27.955231, 28.446524, 31.475155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608505, 28.475105, 31.936945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290031, 28.597042, 32.146004>,  <28.098948, 28.670204, 32.271439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290031, 28.597042, 32.146004>,  <28.608505, 28.475105, 31.936945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290031, 28.597042, 32.146004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280563, -0.579318, 0.765294,
		0.536072, 0.755952, 0.375717,
		-0.796185, 0.304840, 0.522649,
		28.051176, 28.688494, 32.302799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767355, 28.623739, 32.639015>,  <28.608505, 28.475105, 31.936945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767355, 28.623739, 32.639015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381252, 28.521656, 32.616573>,  <28.149590, 28.460407, 32.603107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381252, 28.521656, 32.616573>,  <28.767355, 28.623739, 32.639015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381252, 28.521656, 32.616573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152622, -0.724932, 0.671700,
		-0.212095, 0.639800, 0.738696,
		-0.965257, -0.255206, -0.056107,
		28.091675, 28.445095, 32.599743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392189, 28.631737, 33.318012>,  <28.767355, 28.623739, 32.639015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392189, 28.631737, 33.318012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171267, 28.360462, 33.124096>,  <28.038713, 28.197699, 33.007748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171267, 28.360462, 33.124096>,  <28.392189, 28.631737, 33.318012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171267, 28.360462, 33.124096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214249, -0.677477, 0.703649,
		-0.805639, 0.284764, 0.519475,
		-0.552306, -0.678185, -0.484792,
		28.005575, 28.157007, 32.978657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955826, 28.309738, 33.823242>,  <28.392189, 28.631737, 33.318012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955826, 28.309738, 33.823242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950480, 28.051853, 33.517521>,  <27.947271, 27.897121, 33.334087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950480, 28.051853, 33.517521>,  <27.955826, 28.309738, 33.823242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950480, 28.051853, 33.517521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052960, -0.763759, 0.643326,
		-0.998507, -0.031879, 0.044353,
		-0.013366, -0.644714, -0.764307,
		27.946470, 27.858438, 33.288227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361315, 27.838118, 33.771797>,  <27.955826, 28.309738, 33.823242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361315, 27.838118, 33.771797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672935, 27.651436, 33.604340>,  <27.859907, 27.539427, 33.503864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672935, 27.651436, 33.604340>,  <27.361315, 27.838118, 33.771797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672935, 27.651436, 33.604340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004734, -0.663344, 0.748299,
		-0.626941, -0.584946, -0.514571,
		0.779052, -0.466704, -0.418647,
		27.906651, 27.511425, 33.478745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175001, 27.109745, 33.754150>,  <27.361315, 27.838118, 33.771797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175001, 27.109745, 33.754150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571997, 27.092152, 33.708488>,  <27.810194, 27.081596, 33.681091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571997, 27.092152, 33.708488>,  <27.175001, 27.109745, 33.754150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571997, 27.092152, 33.708488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024598, -0.842340, 0.538385,
		-0.119837, -0.537149, -0.834931,
		0.992489, -0.043981, -0.114156,
		27.869743, 27.078957, 33.674240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383429, 26.482018, 33.465996>,  <27.175001, 27.109745, 33.754150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383429, 26.482018, 33.465996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716730, 26.591682, 33.658047>,  <27.916712, 26.657480, 33.773277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716730, 26.591682, 33.658047>,  <27.383429, 26.482018, 33.465996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716730, 26.591682, 33.658047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106717, -0.931819, 0.346879,
		0.542493, -0.237801, -0.805700,
		0.833255, 0.274161, 0.480128,
		27.966707, 26.673931, 33.802086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892145, 25.900639, 33.480904>,  <27.383429, 26.482018, 33.465996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892145, 25.900639, 33.480904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034725, 26.126396, 33.778736>,  <28.120274, 26.261850, 33.957436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034725, 26.126396, 33.778736>,  <27.892145, 25.900639, 33.480904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034725, 26.126396, 33.778736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091212, -0.814144, 0.573454,
		0.929851, -0.136494, -0.341683,
		0.356452, 0.564392, 0.744582,
		28.141661, 26.295713, 34.002110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424719, 25.523834, 33.767796>,  <27.892145, 25.900639, 33.480904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424719, 25.523834, 33.767796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416630, 25.800743, 34.056335>,  <28.411776, 25.966888, 34.229462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416630, 25.800743, 34.056335>,  <28.424719, 25.523834, 33.767796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416630, 25.800743, 34.056335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254791, -0.694111, 0.673269,
		0.966785, 0.197411, -0.162346,
		-0.020225, 0.692271, 0.721354,
		28.410563, 26.008425, 34.272743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148384, 25.566168, 34.170227>,  <28.424719, 25.523834, 33.767796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148384, 25.566168, 34.170227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851730, 25.707603, 34.398247>,  <28.673738, 25.792465, 34.535057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851730, 25.707603, 34.398247>,  <29.148384, 25.566168, 34.170227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851730, 25.707603, 34.398247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179622, -0.714087, 0.676620,
		0.646311, 0.604197, 0.466078,
		-0.741632, 0.353589, 0.570049,
		28.629240, 25.813681, 34.569263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475824, 25.799053, 34.721642>,  <29.148384, 25.566168, 34.170227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475824, 25.799053, 34.721642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093763, 25.699421, 34.785690>,  <28.864527, 25.639641, 34.824120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093763, 25.699421, 34.785690>,  <29.475824, 25.799053, 34.721642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093763, 25.699421, 34.785690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290127, -0.679108, 0.674269,
		-0.059211, 0.690486, 0.720919,
		-0.955155, -0.249082, 0.160118,
		28.807217, 25.624697, 34.833725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560768, 25.452345, 35.327530>,  <29.475824, 25.799053, 34.721642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560768, 25.452345, 35.327530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189772, 25.343739, 35.224735>,  <28.967175, 25.278574, 35.163059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189772, 25.343739, 35.224735>,  <29.560768, 25.452345, 35.327530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189772, 25.343739, 35.224735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085361, -0.823054, 0.561512,
		-0.363973, 0.498859, 0.786551,
		-0.927489, -0.271516, -0.256987,
		28.911526, 25.262283, 35.147640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237539, 25.315714, 35.950779>,  <29.560768, 25.452345, 35.327530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237539, 25.315714, 35.950779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045828, 25.101414, 35.672710>,  <28.930801, 24.972834, 35.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045828, 25.101414, 35.672710>,  <29.237539, 25.315714, 35.950779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045828, 25.101414, 35.672710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090859, -0.818104, 0.567847,
		-0.872946, 0.208995, 0.440779,
		-0.479281, -0.535748, -0.695172,
		28.902044, 24.940689, 35.464157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890287, 24.817909, 36.336212>,  <29.237539, 25.315714, 35.950779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890287, 24.817909, 36.336212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877565, 24.639660, 35.978352>,  <28.869932, 24.532711, 35.763634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877565, 24.639660, 35.978352>,  <28.890287, 24.817909, 36.336212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877565, 24.639660, 35.978352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106956, -0.888452, 0.446334,
		-0.993755, 0.109886, -0.019403,
		-0.031807, -0.445622, -0.894656,
		28.868023, 24.505974, 35.709953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259230, 24.281912, 36.291019>,  <28.890287, 24.817909, 36.336212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259230, 24.281912, 36.291019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493128, 24.168613, 35.986954>,  <28.633467, 24.100636, 35.804516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493128, 24.168613, 35.986954>,  <28.259230, 24.281912, 36.291019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493128, 24.168613, 35.986954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274896, -0.950807, 0.142821,
		-0.763220, 0.125451, -0.633843,
		0.584745, -0.283245, -0.760161,
		28.668550, 24.083639, 35.758904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957495, 23.705460, 36.040600>,  <28.259230, 24.281912, 36.291019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957495, 23.705460, 36.040600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320623, 23.668346, 35.877014>,  <28.538500, 23.646078, 35.778862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320623, 23.668346, 35.877014>,  <27.957495, 23.705460, 36.040600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320623, 23.668346, 35.877014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061304, -0.994103, 0.089453,
		-0.414855, -0.056136, -0.908154,
		0.907820, -0.092784, -0.408967,
		28.592970, 23.640511, 35.754326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914970, 23.244022, 35.535168>,  <27.957495, 23.705460, 36.040600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914970, 23.244022, 35.535168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301184, 23.230206, 35.638359>,  <28.532911, 23.221914, 35.700275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301184, 23.230206, 35.638359>,  <27.914970, 23.244022, 35.535168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301184, 23.230206, 35.638359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000476, -0.990918, -0.134463,
		0.260285, 0.129952, -0.956747,
		0.965532, -0.034543, 0.257983,
		28.590843, 23.219843, 35.715755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162212, 22.697290, 35.151512>,  <27.914970, 23.244022, 35.535168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162212, 22.697290, 35.151512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491983, 22.733860, 35.374928>,  <28.689846, 22.755802, 35.508976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491983, 22.733860, 35.374928>,  <28.162212, 22.697290, 35.151512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491983, 22.733860, 35.374928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101081, -0.994785, 0.013635,
		0.556867, 0.045216, -0.829370,
		0.824428, 0.091426, 0.558534,
		28.739311, 22.761288, 35.542488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482836, 22.869884, 34.739185>,  <28.162212, 22.697290, 35.151512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482836, 22.869884, 34.739185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166492, 22.713100, 34.551182>,  <26.976686, 22.619030, 34.438381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166492, 22.713100, 34.551182>,  <27.482836, 22.869884, 34.739185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166492, 22.713100, 34.551182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211196, 0.546021, -0.810714,
		0.574409, -0.740422, -0.349041,
		-0.790854, -0.391966, -0.470013,
		26.929235, 22.595512, 34.410179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369312, 23.270130, 34.044258>,  <27.482836, 22.869884, 34.739185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369312, 23.270130, 34.044258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024147, 23.068016, 34.041039>,  <26.817047, 22.946747, 34.039108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024147, 23.068016, 34.041039>,  <27.369312, 23.270130, 34.044258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024147, 23.068016, 34.041039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363185, 0.631153, -0.685378,
		0.351392, -0.588499, -0.728143,
		-0.862914, -0.505288, -0.008048,
		26.765272, 22.916430, 34.038624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218864, 23.215080, 33.356388>,  <27.369312, 23.270130, 34.044258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218864, 23.215080, 33.356388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857756, 23.166786, 33.521519>,  <26.641090, 23.137810, 33.620598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857756, 23.166786, 33.521519>,  <27.218864, 23.215080, 33.356388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857756, 23.166786, 33.521519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406787, 0.551473, -0.728287,
		-0.139731, -0.825409, -0.546969,
		-0.902773, -0.120736, 0.412823,
		26.586924, 23.130566, 33.645367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712517, 22.962214, 32.705711>,  <27.218864, 23.215080, 33.356388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712517, 22.962214, 32.705711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552235, 23.162022, 33.012936>,  <26.456066, 23.281906, 33.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552235, 23.162022, 33.012936>,  <26.712517, 22.962214, 32.705711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552235, 23.162022, 33.012936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490557, 0.591046, -0.640327,
		-0.773815, -0.633359, 0.008208,
		-0.400705, 0.499522, 0.768058,
		26.432022, 23.311878, 33.243355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018997, 23.076134, 32.537193>,  <26.712517, 22.962214, 32.705711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018997, 23.076134, 32.537193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025055, 23.321388, 32.853127>,  <26.028690, 23.468540, 33.042686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025055, 23.321388, 32.853127>,  <26.018997, 23.076134, 32.537193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025055, 23.321388, 32.853127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428589, 0.717657, -0.548890,
		-0.903373, -0.330200, 0.273653,
		0.015146, 0.613136, 0.789832,
		26.029598, 23.505329, 33.090076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342960, 23.362349, 32.608551>,  <26.018997, 23.076134, 32.537193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342960, 23.362349, 32.608551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628881, 23.602215, 32.752476>,  <25.800434, 23.746134, 32.838829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628881, 23.602215, 32.752476>,  <25.342960, 23.362349, 32.608551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628881, 23.602215, 32.752476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418394, 0.778972, -0.467064,
		-0.560363, 0.183316, 0.807706,
		0.714801, 0.599665, 0.359809,
		25.843321, 23.782114, 32.860420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009687, 24.045614, 32.500153>,  <25.342960, 23.362349, 32.608551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009687, 24.045614, 32.500153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386375, 24.153820, 32.580132>,  <25.612389, 24.218744, 32.628120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386375, 24.153820, 32.580132>,  <25.009687, 24.045614, 32.500153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386375, 24.153820, 32.580132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093448, 0.781380, -0.617020,
		-0.323151, 0.562376, 0.761122,
		0.941722, 0.270516, 0.199950,
		25.668892, 24.234974, 32.640118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938362, 24.686831, 32.523682>,  <25.009687, 24.045614, 32.500153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938362, 24.686831, 32.523682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330416, 24.635780, 32.462959>,  <25.565649, 24.605150, 32.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330416, 24.635780, 32.462959>,  <24.938362, 24.686831, 32.523682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330416, 24.635780, 32.462959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005925, 0.746245, -0.665645,
		0.198238, 0.653322, 0.730665,
		0.980136, -0.127627, -0.151805,
		25.624456, 24.597492, 32.417419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174841, 25.282799, 32.526249>,  <24.938362, 24.686831, 32.523682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174841, 25.282799, 32.526249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471323, 25.080368, 32.349838>,  <25.649212, 24.958910, 32.243992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471323, 25.080368, 32.349838>,  <25.174841, 25.282799, 32.526249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471323, 25.080368, 32.349838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236769, 0.811860, -0.533689,
		0.628139, 0.291151, 0.721576,
		0.741203, -0.506078, -0.441025,
		25.693684, 24.928545, 32.217529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755638, 25.715376, 32.414600>,  <25.174841, 25.282799, 32.526249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755638, 25.715376, 32.414600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825222, 25.429989, 32.143101>,  <25.866972, 25.258757, 31.980200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825222, 25.429989, 32.143101>,  <25.755638, 25.715376, 32.414600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825222, 25.429989, 32.143101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037533, 0.693563, -0.719417,
		0.984037, 0.099676, 0.147432,
		0.173962, -0.713467, -0.678751,
		25.877411, 25.215948, 31.939476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446953, 25.943483, 32.200035>,  <25.755638, 25.715376, 32.414600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446953, 25.943483, 32.200035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292002, 25.700222, 31.922882>,  <26.199030, 25.554264, 31.756590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292002, 25.700222, 31.922882>,  <26.446953, 25.943483, 32.200035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292002, 25.700222, 31.922882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273384, 0.641982, -0.716324,
		0.880454, -0.466911, -0.082431,
		-0.387379, -0.608155, -0.692881,
		26.175789, 25.517775, 31.715017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859432, 25.910568, 31.586775>,  <26.446953, 25.943483, 32.200035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859432, 25.910568, 31.586775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514193, 25.765488, 31.446198>,  <26.307049, 25.678440, 31.361851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514193, 25.765488, 31.446198>,  <26.859432, 25.910568, 31.586775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514193, 25.765488, 31.446198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152720, 0.475855, -0.866163,
		0.481416, -0.801246, -0.355308,
		-0.863085, -0.362722, -0.351450,
		26.255264, 25.656677, 31.340765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029984, 25.767101, 30.898432>,  <26.859432, 25.910568, 31.586775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029984, 25.767101, 30.898432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630135, 25.774914, 30.906212>,  <26.390226, 25.779600, 30.910879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630135, 25.774914, 30.906212>,  <27.029984, 25.767101, 30.898432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630135, 25.774914, 30.906212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008720, 0.445313, -0.895333,
		-0.026146, -0.895162, -0.444973,
		-0.999620, 0.019529, 0.019449,
		26.330248, 25.780773, 30.912046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833925, 25.728392, 30.162445>,  <27.029984, 25.767101, 30.898432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833925, 25.728392, 30.162445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519167, 25.892200, 30.347092>,  <26.330313, 25.990486, 30.457880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519167, 25.892200, 30.347092>,  <26.833925, 25.728392, 30.162445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519167, 25.892200, 30.347092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048490, 0.704706, -0.707840,
		-0.615179, -0.579380, -0.534672,
		-0.786895, 0.409522, 0.461615,
		26.283098, 26.015057, 30.485577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373484, 25.901672, 29.647024>,  <26.833925, 25.728392, 30.162445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373484, 25.901672, 29.647024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254864, 26.130577, 29.952854>,  <26.183691, 26.267920, 30.136353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254864, 26.130577, 29.952854>,  <26.373484, 25.901672, 29.647024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254864, 26.130577, 29.952854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247327, 0.727257, -0.640255,
		-0.922436, -0.378968, -0.074132,
		-0.296550, 0.572259, 0.764576,
		26.165899, 26.302256, 30.182228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704447, 26.174765, 29.524183>,  <26.373484, 25.901672, 29.647024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704447, 26.174765, 29.524183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878981, 26.426815, 29.781105>,  <25.983702, 26.578045, 29.935257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878981, 26.426815, 29.781105>,  <25.704447, 26.174765, 29.524183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878981, 26.426815, 29.781105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108677, 0.745522, -0.657561,
		-0.893198, 0.217113, 0.393777,
		0.436334, 0.630126, 0.642304,
		26.009880, 26.615852, 29.973797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291168, 26.825481, 29.517525>,  <25.704447, 26.174765, 29.524183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291168, 26.825481, 29.517525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644297, 26.927357, 29.675392>,  <25.856173, 26.988482, 29.770113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644297, 26.927357, 29.675392>,  <25.291168, 26.825481, 29.517525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644297, 26.927357, 29.675392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012484, 0.827215, -0.561746,
		-0.469547, 0.500847, 0.727102,
		0.882819, 0.254689, 0.394669,
		25.909142, 27.003763, 29.793793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192108, 27.449110, 29.773392>,  <25.291168, 26.825481, 29.517525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192108, 27.449110, 29.773392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584660, 27.414097, 29.704998>,  <25.820190, 27.393089, 29.663961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584660, 27.414097, 29.704998>,  <25.192108, 27.449110, 29.773392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584660, 27.414097, 29.704998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019846, 0.931580, -0.362994,
		0.191060, 0.352841, 0.915969,
		0.981377, -0.087532, -0.170985,
		25.879072, 27.387836, 29.653702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505381, 28.034023, 30.084358>,  <25.192108, 27.449110, 29.773392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505381, 28.034023, 30.084358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769670, 27.877041, 29.828415>,  <25.928244, 27.782850, 29.674849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769670, 27.877041, 29.828415>,  <25.505381, 28.034023, 30.084358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769670, 27.877041, 29.828415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263360, 0.919446, -0.291995,
		0.702912, 0.024414, 0.710858,
		0.660724, -0.392458, -0.639859,
		25.967888, 27.759304, 29.636457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080486, 28.402800, 30.183708>,  <25.505381, 28.034023, 30.084358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080486, 28.402800, 30.183708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114656, 28.269318, 29.808189>,  <26.135159, 28.189228, 29.582878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114656, 28.269318, 29.808189>,  <26.080486, 28.402800, 30.183708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114656, 28.269318, 29.808189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329870, 0.898576, -0.289391,
		0.940153, -0.284961, 0.186840,
		0.085425, -0.333705, -0.938799,
		26.140284, 28.169207, 29.526550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773355, 28.679337, 29.992390>,  <26.080486, 28.402800, 30.183708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773355, 28.679337, 29.992390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596725, 28.570942, 29.650261>,  <26.490747, 28.505905, 29.444983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596725, 28.570942, 29.650261>,  <26.773355, 28.679337, 29.992390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596725, 28.570942, 29.650261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253002, 0.877006, -0.408474,
		0.860813, -0.396771, -0.318706,
		-0.441577, -0.270986, -0.855322,
		26.464252, 28.489645, 29.393663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232542, 28.827810, 29.539907>,  <26.773355, 28.679337, 29.992390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232542, 28.827810, 29.539907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879374, 28.813652, 29.352634>,  <26.667473, 28.805157, 29.240271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879374, 28.813652, 29.352634>,  <27.232542, 28.827810, 29.539907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879374, 28.813652, 29.352634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226935, 0.840774, -0.491528,
		0.411035, -0.540228, -0.734305,
		-0.882922, -0.035396, -0.468185,
		26.614496, 28.803034, 29.212179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362638, 29.228724, 28.914001>,  <27.232542, 28.827810, 29.539907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362638, 29.228724, 28.914001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965219, 29.183704, 28.919571>,  <26.726768, 29.156693, 28.922913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965219, 29.183704, 28.919571>,  <27.362638, 29.228724, 28.914001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965219, 29.183704, 28.919571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103295, 0.847441, -0.520744,
		0.046808, -0.518823, -0.853600,
		-0.993549, -0.112548, 0.013925,
		26.667154, 29.149940, 28.923748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172909, 29.402138, 28.270275>,  <27.362638, 29.228724, 28.914001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172909, 29.402138, 28.270275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837856, 29.405239, 28.488747>,  <26.636826, 29.407101, 28.619829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837856, 29.405239, 28.488747>,  <27.172909, 29.402138, 28.270275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837856, 29.405239, 28.488747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291839, 0.838874, -0.459478,
		-0.461740, -0.544270, -0.700404,
		-0.837631, 0.007754, 0.546181,
		26.586567, 29.407566, 28.652601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692394, 29.420525, 27.844843>,  <27.172909, 29.402138, 28.270275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692394, 29.420525, 27.844843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541294, 29.575073, 28.181419>,  <26.450634, 29.667803, 28.383366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541294, 29.575073, 28.181419>,  <26.692394, 29.420525, 27.844843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541294, 29.575073, 28.181419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355621, 0.778530, -0.517131,
		-0.854892, -0.494580, -0.156687,
		-0.377748, 0.386370, 0.841442,
		26.427969, 29.690985, 28.433851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073126, 29.505377, 27.692108>,  <26.692394, 29.420525, 27.844843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073126, 29.505377, 27.692108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124229, 29.740124, 28.011925>,  <26.154892, 29.880972, 28.203815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124229, 29.740124, 28.011925>,  <26.073126, 29.505377, 27.692108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124229, 29.740124, 28.011925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503486, 0.732925, -0.457517,
		-0.854505, -0.344107, 0.389115,
		0.127757, 0.586865, 0.799542,
		26.162556, 29.916183, 28.251787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470678, 29.757994, 27.853868>,  <26.073126, 29.505377, 27.692108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470678, 29.757994, 27.853868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722898, 30.018360, 28.022968>,  <25.874231, 30.174580, 28.124428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722898, 30.018360, 28.022968>,  <25.470678, 29.757994, 27.853868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722898, 30.018360, 28.022968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429750, 0.746361, -0.508192,
		-0.646312, 0.138765, 0.750350,
		0.630551, 0.650914, 0.422748,
		25.912064, 30.213634, 28.149794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084766, 30.308100, 28.097305>,  <25.470678, 29.757994, 27.853868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084766, 30.308100, 28.097305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440331, 30.490353, 28.078396>,  <25.653669, 30.599705, 28.067051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440331, 30.490353, 28.078396>,  <25.084766, 30.308100, 28.097305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440331, 30.490353, 28.078396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427484, 0.788025, -0.443028,
		-0.164607, 0.414021, 0.895261,
		0.888911, 0.455634, -0.047273,
		25.707005, 30.627043, 28.064215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910347, 30.919287, 28.269506>,  <25.084766, 30.308100, 28.097305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910347, 30.919287, 28.269506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252935, 30.989513, 28.075336>,  <25.458488, 31.031649, 27.958836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252935, 30.989513, 28.075336>,  <24.910347, 30.919287, 28.269506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252935, 30.989513, 28.075336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502208, 0.500848, -0.704939,
		0.119359, 0.847542, 0.517132,
		0.856470, 0.175566, -0.485423,
		25.509876, 31.042183, 27.929710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022396, 31.632948, 28.299393>,  <24.910347, 30.919287, 28.269506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022396, 31.632948, 28.299393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230530, 31.490810, 27.988785>,  <25.355410, 31.405527, 27.802420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230530, 31.490810, 27.988785>,  <25.022396, 31.632948, 28.299393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230530, 31.490810, 27.988785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415021, 0.689478, -0.593614,
		0.746330, 0.631150, 0.211285,
		0.520336, -0.355344, -0.776519,
		25.386631, 31.384207, 27.755829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138655, 32.164310, 28.001394>,  <25.022396, 31.632948, 28.299393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.138655, 32.164310, 28.001394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203936, 31.890656, 27.717052>,  <25.243103, 31.726461, 27.546448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203936, 31.890656, 27.717052>,  <25.138655, 32.164310, 28.001394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203936, 31.890656, 27.717052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270957, 0.661729, -0.699069,
		0.948656, 0.306699, -0.077378,
		0.163201, -0.684142, -0.710855,
		25.252895, 31.685413, 27.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430204, 32.613358, 27.484461>,  <25.138655, 32.164310, 28.001394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430204, 32.613358, 27.484461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358780, 32.258625, 27.313984>,  <25.315926, 32.045784, 27.211699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358780, 32.258625, 27.313984>,  <25.430204, 32.613358, 27.484461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358780, 32.258625, 27.313984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174207, 0.454806, -0.873386,
		0.968384, -0.081707, -0.235703,
		-0.178561, -0.886834, -0.426193,
		25.305212, 31.992575, 27.186127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608944, 32.613911, 26.869350>,  <25.430204, 32.613358, 27.484461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608944, 32.613911, 26.869350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333183, 32.329765, 26.812637>,  <25.167727, 32.159279, 26.778608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333183, 32.329765, 26.812637>,  <25.608944, 32.613911, 26.869350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333183, 32.329765, 26.812637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303630, 0.461089, -0.833790,
		0.657672, -0.531767, -0.533564,
		-0.689403, -0.710367, -0.141785,
		25.126362, 32.116657, 26.770102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721275, 32.420582, 26.220760>,  <25.608944, 32.613911, 26.869350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721275, 32.420582, 26.220760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348625, 32.299644, 26.301422>,  <25.125034, 32.227081, 26.349819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348625, 32.299644, 26.301422>,  <25.721275, 32.420582, 26.220760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348625, 32.299644, 26.301422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296789, 0.312718, -0.902288,
		0.209735, -0.900444, -0.381067,
		-0.931626, -0.302338, 0.201654,
		25.069138, 32.208942, 26.361917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478554, 32.123394, 25.600046>,  <25.721275, 32.420582, 26.220760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478554, 32.123394, 25.600046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166014, 32.243435, 25.818928>,  <24.978491, 32.315460, 25.950256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166014, 32.243435, 25.818928>,  <25.478554, 32.123394, 25.600046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166014, 32.243435, 25.818928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467955, 0.298416, -0.831845,
		-0.412933, -0.906028, -0.092733,
		-0.781348, 0.300102, 0.547206,
		24.931610, 32.333466, 25.983089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947201, 32.105709, 25.130814>,  <25.478554, 32.123394, 25.600046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947201, 32.105709, 25.130814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785896, 32.317829, 25.429119>,  <24.689114, 32.445099, 25.608103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785896, 32.317829, 25.429119>,  <24.947201, 32.105709, 25.130814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785896, 32.317829, 25.429119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616645, 0.444665, -0.649632,
		-0.676114, -0.721843, 0.147690,
		-0.403260, 0.530298, 0.745766,
		24.664919, 32.476917, 25.652849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.233046, 32.000492, 25.061266>,  <24.947201, 32.105709, 25.130814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.233046, 32.000492, 25.061266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291489, 32.335300, 25.272186>,  <24.326555, 32.536186, 25.398739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291489, 32.335300, 25.272186>,  <24.233046, 32.000492, 25.061266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291489, 32.335300, 25.272186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546355, 0.512633, -0.662347,
		-0.824711, -0.191319, 0.532212,
		0.146109, 0.837021, 0.527302,
		24.335321, 32.586407, 25.430378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550774, 32.376060, 25.177128>,  <24.233046, 32.000492, 25.061266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550774, 32.376060, 25.177128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.850222, 32.640724, 25.193947>,  <24.029890, 32.799522, 25.204039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.850222, 32.640724, 25.193947>,  <23.550774, 32.376060, 25.177128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.850222, 32.640724, 25.193947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422484, 0.524966, -0.738863,
		-0.510952, 0.535364, 0.672542,
		0.748622, 0.661662, 0.042050,
		24.074808, 32.839222, 25.206562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.242226, 33.017059, 25.213821>,  <23.550774, 32.376060, 25.177128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.242226, 33.017059, 25.213821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.616467, 33.118267, 25.115330>,  <23.841011, 33.178993, 25.056234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.616467, 33.118267, 25.115330>,  <23.242226, 33.017059, 25.213821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.616467, 33.118267, 25.115330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352876, 0.647875, -0.675083,
		-0.011283, 0.718497, 0.695438,
		0.935602, 0.253020, -0.246230,
		23.897148, 33.194172, 25.041460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.190969, 33.665234, 25.061739>,  <23.242226, 33.017059, 25.213821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.190969, 33.665234, 25.061739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.553053, 33.615856, 24.899082>,  <23.770304, 33.586231, 24.801489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.553053, 33.615856, 24.899082>,  <23.190969, 33.665234, 25.061739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.553053, 33.615856, 24.899082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281645, 0.542289, -0.791580,
		0.318232, 0.831074, 0.456118,
		0.905210, -0.123443, -0.406642,
		23.824615, 33.578823, 24.777090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.503607, 34.348400, 24.839808>,  <23.190969, 33.665234, 25.061739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.503607, 34.348400, 24.839808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.656525, 34.077717, 24.588120>,  <23.748276, 33.915306, 24.437107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.656525, 34.077717, 24.588120>,  <23.503607, 34.348400, 24.839808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.656525, 34.077717, 24.588120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274399, 0.567088, -0.776606,
		0.882357, 0.469551, 0.031108,
		0.382297, -0.676708, -0.629219,
		23.771214, 33.874706, 24.399353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.434910, 34.955856, 25.221531>,  <23.503607, 34.348400, 24.839808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.434910, 34.955856, 25.221531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048931, 34.975281, 25.324696>,  <22.817345, 34.986935, 25.386595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048931, 34.975281, 25.324696>,  <23.434910, 34.955856, 25.221531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.048931, 34.975281, 25.324696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104723, 0.829853, -0.548066,
		-0.240646, -0.555864, -0.795679,
		-0.964947, 0.048564, 0.257912,
		22.759447, 34.989849, 25.402069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.077749, 35.110073, 24.622265>,  <23.434910, 34.955856, 25.221531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.077749, 35.110073, 24.622265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.830194, 35.213161, 24.919064>,  <22.681662, 35.275013, 25.097143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.830194, 35.213161, 24.919064>,  <23.077749, 35.110073, 24.622265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.830194, 35.213161, 24.919064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229303, 0.844215, -0.484481,
		-0.751265, -0.469981, -0.463378,
		-0.618887, 0.257719, 0.741997,
		22.644527, 35.290478, 25.141663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384232, 34.925468, 24.634054>,  <23.077749, 35.110073, 24.622265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384232, 34.925468, 24.634054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.104389, 35.206890, 24.584152>,  <21.936483, 35.375744, 24.554211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.104389, 35.206890, 24.584152>,  <22.384232, 34.925468, 24.634054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.104389, 35.206890, 24.584152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633784, 0.530389, -0.563032,
		-0.329955, -0.472968, -0.816964,
		-0.699606, 0.703554, -0.124755,
		21.894508, 35.417957, 24.546726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.344004, 34.949257, 23.928457>,  <22.384232, 34.925468, 24.634054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.344004, 34.949257, 23.928457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228903, 35.262127, 24.149509>,  <22.159842, 35.449848, 24.282141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228903, 35.262127, 24.149509>,  <22.344004, 34.949257, 23.928457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.228903, 35.262127, 24.149509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460911, 0.618918, -0.636005,
		-0.839499, 0.071700, -0.538610,
		-0.287754, 0.782176, 0.552628,
		22.142576, 35.496780, 24.315298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744307, 34.619850, 23.755468>,  <22.344004, 34.949257, 23.928457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744307, 34.619850, 23.755468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467411, 34.416721, 23.960571>,  <21.301273, 34.294846, 24.083633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467411, 34.416721, 23.960571>,  <21.744307, 34.619850, 23.755468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467411, 34.416721, 23.960571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070939, -0.754962, -0.651921,
		0.718172, -0.414911, 0.558639,
		-0.692240, -0.507820, 0.512759,
		21.259739, 34.264374, 24.114399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913961, 33.879398, 23.986023>,  <21.744307, 34.619850, 23.755468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913961, 33.879398, 23.986023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518171, 33.915955, 23.941143>,  <21.280697, 33.937889, 23.914215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518171, 33.915955, 23.941143>,  <21.913961, 33.879398, 23.986023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.518171, 33.915955, 23.941143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025458, -0.653306, -0.756666,
		-0.142452, -0.751558, 0.644102,
		-0.989474, 0.091391, -0.112198,
		21.221329, 33.943371, 23.907484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.391890, 33.267197, 24.063292>,  <21.913961, 33.879398, 23.986023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.391890, 33.267197, 24.063292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.226006, 33.512169, 23.794086>,  <21.126474, 33.659153, 23.632563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.226006, 33.512169, 23.794086>,  <21.391890, 33.267197, 24.063292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.226006, 33.512169, 23.794086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014375, -0.735113, -0.677792,
		-0.909840, -0.290762, 0.296056,
		-0.414711, 0.612426, -0.673015,
		21.101591, 33.695896, 23.592182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936144, 32.866310, 23.620747>,  <21.391890, 33.267197, 24.063292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936144, 32.866310, 23.620747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000870, 33.190487, 23.395538>,  <21.039705, 33.384995, 23.260412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000870, 33.190487, 23.395538>,  <20.936144, 32.866310, 23.620747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.000870, 33.190487, 23.395538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029609, -0.574272, -0.818129,
		-0.986377, 0.115716, -0.116923,
		0.161816, 0.810445, -0.563023,
		21.049414, 33.433620, 23.226631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440140, 32.852554, 23.089382>,  <20.936144, 32.866310, 23.620747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440140, 32.852554, 23.089382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737146, 33.089073, 22.963505>,  <20.915350, 33.230984, 22.887978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737146, 33.089073, 22.963505>,  <20.440140, 32.852554, 23.089382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.737146, 33.089073, 22.963505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044042, -0.511893, -0.857920,
		-0.668379, 0.623160, -0.406131,
		0.742516, 0.591302, -0.314693,
		20.959902, 33.266464, 22.869097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300228, 32.914928, 22.401514>,  <20.440140, 32.852554, 23.089382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300228, 32.914928, 22.401514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684828, 33.022694, 22.423176>,  <20.915588, 33.087353, 22.436172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684828, 33.022694, 22.423176>,  <20.300228, 32.914928, 22.401514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684828, 33.022694, 22.423176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182303, -0.477879, -0.859301,
		-0.205628, 0.836091, -0.508596,
		0.961500, 0.269415, 0.054157,
		20.973278, 33.103519, 22.439423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450937, 33.349121, 21.849714>,  <20.300228, 32.914928, 22.401514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450937, 33.349121, 21.849714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.804207, 33.191730, 21.951832>,  <21.016169, 33.097294, 22.013102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.804207, 33.191730, 21.951832>,  <20.450937, 33.349121, 21.849714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.804207, 33.191730, 21.951832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125682, -0.325856, -0.937028,
		0.451890, 0.859646, -0.238335,
		0.883176, -0.393479, 0.255293,
		21.069160, 33.073689, 22.028419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762373, 33.451061, 21.316425>,  <20.450937, 33.349121, 21.849714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762373, 33.451061, 21.316425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001623, 33.185604, 21.496124>,  <21.145174, 33.026329, 21.603945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001623, 33.185604, 21.496124>,  <20.762373, 33.451061, 21.316425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001623, 33.185604, 21.496124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288532, -0.344657, -0.893287,
		0.747660, 0.663920, -0.014666,
		0.598126, -0.663643, 0.449249,
		21.181061, 32.986511, 21.630899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318449, 33.386875, 20.800591>,  <20.762373, 33.451061, 21.316425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318449, 33.386875, 20.800591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345354, 33.069847, 21.043015>,  <21.361496, 32.879631, 21.188469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345354, 33.069847, 21.043015>,  <21.318449, 33.386875, 20.800591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.345354, 33.069847, 21.043015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503328, -0.497525, -0.706491,
		0.861474, 0.352567, 0.365458,
		0.067260, -0.792569, 0.606061,
		21.365532, 32.832077, 21.224833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984432, 33.235828, 20.734629>,  <21.318449, 33.386875, 20.800591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984432, 33.235828, 20.734629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826227, 32.890934, 20.861195>,  <21.731304, 32.683998, 20.937134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826227, 32.890934, 20.861195>,  <21.984432, 33.235828, 20.734629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.826227, 32.890934, 20.861195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450227, -0.482286, -0.751462,
		0.800540, -0.154756, 0.578953,
		-0.395514, -0.862236, 0.316414,
		21.707573, 32.632263, 20.956120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471716, 32.729813, 20.578711>,  <21.984432, 33.235828, 20.734629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471716, 32.729813, 20.578711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145525, 32.503811, 20.628933>,  <21.949810, 32.368210, 20.659067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145525, 32.503811, 20.628933>,  <22.471716, 32.729813, 20.578711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.145525, 32.503811, 20.628933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340453, -0.643687, -0.685390,
		0.468068, -0.516174, 0.717270,
		-0.815477, -0.565006, 0.125556,
		21.900881, 32.334309, 20.666599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.759340, 32.000420, 20.626850>,  <22.471716, 32.729813, 20.578711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.759340, 32.000420, 20.626850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374470, 31.950645, 20.529911>,  <22.143547, 31.920780, 20.471748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374470, 31.950645, 20.529911>,  <22.759340, 32.000420, 20.626850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.374470, 31.950645, 20.529911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235658, -0.826501, -0.511236,
		-0.136684, -0.549010, 0.824564,
		-0.962176, -0.124437, -0.242348,
		22.085817, 31.913315, 20.457207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.554501, 31.266989, 20.703876>,  <22.759340, 32.000420, 20.626850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.554501, 31.266989, 20.703876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.313416, 31.436264, 20.433277>,  <22.168764, 31.537828, 20.270918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.313416, 31.436264, 20.433277>,  <22.554501, 31.266989, 20.703876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.313416, 31.436264, 20.433277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266541, -0.692321, -0.670558,
		-0.752125, -0.584469, 0.304474,
		-0.602714, 0.423188, -0.676497,
		22.132601, 31.563221, 20.230328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.120663, 30.713408, 20.329550>,  <22.554501, 31.266989, 20.703876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.120663, 30.713408, 20.329550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130690, 31.031887, 20.087742>,  <22.136705, 31.222975, 19.942657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130690, 31.031887, 20.087742>,  <22.120663, 30.713408, 20.329550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130690, 31.031887, 20.087742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264878, -0.588385, -0.763965,
		-0.963956, -0.140975, -0.225643,
		0.025065, 0.796197, -0.604518,
		22.138208, 31.270746, 19.906387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954414, 30.464104, 19.644251>,  <22.120663, 30.713408, 20.329550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954414, 30.464104, 19.644251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091101, 30.830215, 19.558937>,  <22.173113, 31.049883, 19.507750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091101, 30.830215, 19.558937>,  <21.954414, 30.464104, 19.644251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091101, 30.830215, 19.558937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341532, -0.332372, -0.879138,
		-0.875548, 0.227574, -0.426175,
		0.341718, 0.915281, -0.213284,
		22.193617, 31.104799, 19.494951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.680857, 30.702902, 18.890373>,  <21.954414, 30.464104, 19.644251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.680857, 30.702902, 18.890373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010822, 30.899647, 19.001793>,  <22.208801, 31.017694, 19.068645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010822, 30.899647, 19.001793>,  <21.680857, 30.702902, 18.890373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010822, 30.899647, 19.001793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489344, -0.374724, -0.787480,
		-0.282953, 0.785908, -0.549805,
		0.824912, 0.491864, 0.278550,
		22.258295, 31.047205, 19.085358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.889469, 31.041483, 18.358088>,  <21.680857, 30.702902, 18.890373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.889469, 31.041483, 18.358088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228544, 31.035694, 18.570206>,  <22.431990, 31.032221, 18.697477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228544, 31.035694, 18.570206>,  <21.889469, 31.041483, 18.358088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.228544, 31.035694, 18.570206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497564, -0.325010, -0.804238,
		0.183992, 0.945600, -0.268305,
		0.847689, -0.014474, 0.530296,
		22.482851, 31.031351, 18.729294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.356714, 31.387678, 17.930532>,  <21.889469, 31.041483, 18.358088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.356714, 31.387678, 17.930532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594034, 31.187328, 18.182602>,  <22.736427, 31.067118, 18.333843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594034, 31.187328, 18.182602>,  <22.356714, 31.387678, 17.930532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594034, 31.187328, 18.182602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514199, -0.366503, -0.775420,
		0.619349, 0.784091, 0.040104,
		0.593301, -0.500877, 0.630172,
		22.772024, 31.037066, 18.371653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.030432, 31.373524, 17.571266>,  <22.356714, 31.387678, 17.930532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.030432, 31.373524, 17.571266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072327, 31.108265, 17.867718>,  <23.097464, 30.949110, 18.045588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072327, 31.108265, 17.867718>,  <23.030432, 31.373524, 17.571266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.072327, 31.108265, 17.867718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686027, -0.491351, -0.536602,
		0.719998, 0.564635, 0.403472,
		0.104738, -0.663145, 0.741127,
		23.103748, 30.909321, 18.090055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.697470, 31.398087, 17.900223>,  <23.030432, 31.373524, 17.571266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.697470, 31.398087, 17.900223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.576832, 31.027889, 17.991875>,  <23.504450, 30.805771, 18.046865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.576832, 31.027889, 17.991875>,  <23.697470, 31.398087, 17.900223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.576832, 31.027889, 17.991875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745844, -0.378719, -0.547986,
		0.593934, 0.005626, 0.804494,
		-0.301594, -0.925495, 0.229131,
		23.486353, 30.750240, 18.060614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284765, 31.027405, 18.057030>,  <23.697470, 31.398087, 17.900223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284765, 31.027405, 18.057030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.013525, 30.756546, 17.942730>,  <23.850780, 30.594030, 17.874149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.013525, 30.756546, 17.942730>,  <24.284765, 31.027405, 18.057030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.013525, 30.756546, 17.942730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694263, -0.462550, -0.551404,
		0.241208, -0.572291, 0.783774,
		-0.678098, -0.677148, -0.285750,
		23.810095, 30.553402, 17.857004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685921, 30.446182, 18.074291>,  <24.284765, 31.027405, 18.057030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685921, 30.446182, 18.074291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365602, 30.329601, 17.864994>,  <24.173412, 30.259653, 17.739416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365602, 30.329601, 17.864994>,  <24.685921, 30.446182, 18.074291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.365602, 30.329601, 17.864994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596643, -0.464596, -0.654345,
		-0.052384, -0.836184, 0.545941,
		-0.800795, -0.291455, -0.523241,
		24.125364, 30.242165, 17.708021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822573, 29.685949, 18.004442>,  <24.685921, 30.446182, 18.074291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822573, 29.685949, 18.004442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577803, 29.850594, 17.734295>,  <24.430941, 29.949381, 17.572206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577803, 29.850594, 17.734295>,  <24.822573, 29.685949, 18.004442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577803, 29.850594, 17.734295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605282, -0.305927, -0.734876,
		-0.509095, -0.858479, -0.061935,
		-0.611927, 0.411610, -0.675368,
		24.394224, 29.974077, 17.531685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408918, 29.211655, 17.505453>,  <24.822573, 29.685949, 18.004442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408918, 29.211655, 17.505453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497208, 29.555759, 17.321613>,  <24.550180, 29.762222, 17.211309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497208, 29.555759, 17.321613>,  <24.408918, 29.211655, 17.505453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497208, 29.555759, 17.321613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340851, -0.509546, -0.790053,
		-0.913839, 0.017728, -0.405690,
		0.220724, 0.860260, -0.459601,
		24.563425, 29.813837, 17.183733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.163170, 29.500290, 16.823669>,  <24.408918, 29.211655, 17.505453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.163170, 29.500290, 16.823669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529827, 29.660126, 16.827427>,  <24.749823, 29.756027, 16.829681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529827, 29.660126, 16.827427>,  <24.163170, 29.500290, 16.823669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529827, 29.660126, 16.827427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247481, -0.548940, -0.798385,
		-0.313870, 0.734161, -0.602075,
		0.916645, 0.399591, 0.009395,
		24.804821, 29.780003, 16.830246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.242054, 29.916727, 16.164417>,  <24.163170, 29.500290, 16.823669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.242054, 29.916727, 16.164417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594286, 29.785122, 16.300846>,  <24.805626, 29.706160, 16.382704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594286, 29.785122, 16.300846>,  <24.242054, 29.916727, 16.164417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594286, 29.785122, 16.300846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169149, -0.454092, -0.874751,
		0.442682, 0.827980, -0.344212,
		0.880580, -0.329013, 0.341070,
		24.858459, 29.686419, 16.403168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764811, 30.065342, 15.638496>,  <24.242054, 29.916727, 16.164417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764811, 30.065342, 15.638496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867523, 29.742397, 15.850999>,  <24.929152, 29.548632, 15.978500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867523, 29.742397, 15.850999>,  <24.764811, 30.065342, 15.638496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867523, 29.742397, 15.850999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305379, -0.453748, -0.837172,
		0.916955, 0.377205, 0.130036,
		0.256782, -0.807360, 0.531257,
		24.944557, 29.500189, 16.010376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346189, 29.863150, 15.276169>,  <24.764811, 30.065342, 15.638496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346189, 29.863150, 15.276169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220257, 29.532673, 15.463056>,  <25.144697, 29.334387, 15.575188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220257, 29.532673, 15.463056>,  <25.346189, 29.863150, 15.276169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220257, 29.532673, 15.463056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274442, -0.550462, -0.788462,
		0.908605, -0.120007, 0.400043,
		-0.314830, -0.826190, 0.467218,
		25.125809, 29.284817, 15.603221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758076, 30.100697, 15.975713>,  <25.346189, 29.863150, 15.276169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758076, 30.100697, 15.975713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739893, 30.378963, 15.688943>,  <25.728983, 30.545923, 15.516881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739893, 30.378963, 15.688943>,  <25.758076, 30.100697, 15.975713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739893, 30.378963, 15.688943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547981, 0.582690, 0.600158,
		0.835255, 0.420142, 0.354725,
		-0.045456, 0.695667, -0.716925,
		25.726255, 30.587664, 15.473866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986073, 30.692257, 16.221516>,  <25.758076, 30.100697, 15.975713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986073, 30.692257, 16.221516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750872, 30.809971, 15.920144>,  <25.609751, 30.880598, 15.739322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750872, 30.809971, 15.920144>,  <25.986073, 30.692257, 16.221516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750872, 30.809971, 15.920144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448353, 0.656694, 0.606410,
		0.673227, 0.694371, -0.254194,
		-0.588001, 0.294283, -0.753427,
		25.574471, 30.898256, 15.694116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102764, 31.409693, 16.065495>,  <25.986073, 30.692257, 16.221516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102764, 31.409693, 16.065495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722986, 31.304417, 15.997041>,  <25.495119, 31.241251, 15.955969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722986, 31.304417, 15.997041>,  <26.102764, 31.409693, 16.065495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722986, 31.304417, 15.997041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306677, 0.661014, 0.684843,
		-0.067124, 0.702702, -0.708310,
		-0.949444, -0.263192, -0.171133,
		25.438152, 31.225460, 15.945701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690126, 32.029545, 15.933659>,  <26.102764, 31.409693, 16.065495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690126, 32.029545, 15.933659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443682, 31.740414, 16.058826>,  <25.295815, 31.566935, 16.133928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443682, 31.740414, 16.058826>,  <25.690126, 32.029545, 15.933659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443682, 31.740414, 16.058826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569152, 0.683185, 0.457519,
		-0.544492, 0.103784, -0.832320,
		-0.616112, -0.722832, 0.312921,
		25.258848, 31.523563, 16.152702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012518, 32.126637, 15.611848>,  <25.690126, 32.029545, 15.933659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012518, 32.126637, 15.611848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025934, 31.967087, 15.978404>,  <25.033983, 31.871357, 16.198338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025934, 31.967087, 15.978404>,  <25.012518, 32.126637, 15.611848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025934, 31.967087, 15.978404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318394, 0.864870, 0.388105,
		-0.947365, -0.304791, -0.097991,
		0.033541, -0.398877, 0.916391,
		25.035997, 31.847424, 16.253321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.454561, 32.283192, 15.850639>,  <25.012518, 32.126637, 15.611848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.454561, 32.283192, 15.850639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651148, 32.204437, 16.189980>,  <24.769100, 32.157185, 16.393583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651148, 32.204437, 16.189980>,  <24.454561, 32.283192, 15.850639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651148, 32.204437, 16.189980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425214, 0.795863, 0.431039,
		-0.760036, -0.572571, 0.307420,
		0.491465, -0.196886, 0.848350,
		24.798588, 32.145370, 16.444485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868122, 32.297169, 16.365776>,  <24.454561, 32.283192, 15.850639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868122, 32.297169, 16.365776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210093, 32.342819, 16.568192>,  <24.415276, 32.370209, 16.689640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210093, 32.342819, 16.568192>,  <23.868122, 32.297169, 16.365776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.210093, 32.342819, 16.568192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441994, 0.670907, 0.595421,
		-0.271551, -0.732707, 0.624020,
		0.854928, 0.114126, 0.506037,
		24.466572, 32.377056, 16.720003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.640125, 32.407852, 17.058298>,  <23.868122, 32.297169, 16.365776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.640125, 32.407852, 17.058298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023067, 32.521248, 17.080585>,  <24.252832, 32.589283, 17.093958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023067, 32.521248, 17.080585>,  <23.640125, 32.407852, 17.058298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.023067, 32.521248, 17.080585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224041, 0.606698, 0.762708,
		0.182412, -0.742667, 0.644339,
		0.957356, 0.283485, 0.055719,
		24.310274, 32.606293, 17.097301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.898575, 32.187630, 17.699081>,  <23.640125, 32.407852, 17.058298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.898575, 32.187630, 17.699081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134993, 32.491982, 17.591949>,  <24.276842, 32.674591, 17.527670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134993, 32.491982, 17.591949>,  <23.898575, 32.187630, 17.699081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.134993, 32.491982, 17.591949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197714, 0.458553, 0.866394,
		0.782034, -0.459123, 0.421461,
		0.591043, 0.760878, -0.267829,
		24.312305, 32.720245, 17.511600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.304785, 32.315403, 18.269041>,  <23.898575, 32.187630, 17.699081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.304785, 32.315403, 18.269041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325983, 32.646149, 18.045078>,  <24.338701, 32.844597, 17.910702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325983, 32.646149, 18.045078>,  <24.304785, 32.315403, 18.269041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325983, 32.646149, 18.045078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153000, 0.560797, 0.813694,
		0.986804, 0.042545, 0.156229,
		0.052994, 0.826860, -0.559906,
		24.341881, 32.894207, 17.877106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780260, 32.748798, 18.701733>,  <24.304785, 32.315403, 18.269041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780260, 32.748798, 18.701733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557613, 32.983181, 18.466164>,  <24.424025, 33.123810, 18.324821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557613, 32.983181, 18.466164>,  <24.780260, 32.748798, 18.701733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557613, 32.983181, 18.466164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272343, 0.541015, 0.795696,
		0.784861, 0.603287, -0.141557,
		-0.556617, 0.585959, -0.588923,
		24.390629, 33.158970, 18.289486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948063, 33.423824, 19.026838>,  <24.780260, 32.748798, 18.701733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948063, 33.423824, 19.026838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633989, 33.480377, 18.785675>,  <24.445545, 33.514309, 18.640978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633989, 33.480377, 18.785675>,  <24.948063, 33.423824, 19.026838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633989, 33.480377, 18.785675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418701, 0.596119, 0.685078,
		0.456264, 0.790350, -0.408865,
		-0.785183, 0.141384, -0.602908,
		24.398434, 33.522793, 18.604803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751646, 34.184059, 19.075020>,  <24.948063, 33.423824, 19.026838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751646, 34.184059, 19.075020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418903, 34.027958, 18.917171>,  <24.219257, 33.934299, 18.822462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418903, 34.027958, 18.917171>,  <24.751646, 34.184059, 19.075020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418903, 34.027958, 18.917171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554225, 0.621522, 0.553666,
		0.029197, 0.679277, -0.733301,
		-0.831855, -0.390248, -0.394619,
		24.169348, 33.910885, 18.798786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.288437, 34.723106, 19.090818>,  <24.751646, 34.184059, 19.075020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.288437, 34.723106, 19.090818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.045122, 34.413754, 19.019421>,  <23.899134, 34.228142, 18.976582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.045122, 34.413754, 19.019421>,  <24.288437, 34.723106, 19.090818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.045122, 34.413754, 19.019421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775510, 0.531224, 0.341153,
		-0.169024, 0.345942, -0.922906,
		-0.608289, -0.773386, -0.178492,
		23.862635, 34.181736, 18.965874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.709080, 34.933678, 18.755405>,  <24.288437, 34.723106, 19.090818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.709080, 34.933678, 18.755405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622122, 34.601345, 18.960327>,  <23.569946, 34.401947, 19.083281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622122, 34.601345, 18.960327>,  <23.709080, 34.933678, 18.755405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.622122, 34.601345, 18.960327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713437, 0.493451, 0.497507,
		-0.666143, -0.257342, -0.700021,
		-0.217397, -0.830831, 0.512306,
		23.556902, 34.352097, 19.114019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.056402, 34.823521, 18.742636>,  <23.709080, 34.933678, 18.755405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.056402, 34.823521, 18.742636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122278, 34.577946, 19.051430>,  <23.161804, 34.430599, 19.236706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122278, 34.577946, 19.051430>,  <23.056402, 34.823521, 18.742636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.122278, 34.577946, 19.051430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887141, 0.249894, 0.387988,
		-0.431114, -0.748756, -0.503493,
		0.164688, -0.613936, 0.771985,
		23.171684, 34.393764, 19.283026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.433134, 34.675556, 18.908728>,  <23.056402, 34.823521, 18.742636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.433134, 34.675556, 18.908728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.653074, 34.596657, 19.233383>,  <22.785038, 34.549316, 19.428177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.653074, 34.596657, 19.233383>,  <22.433134, 34.675556, 18.908728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.653074, 34.596657, 19.233383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749508, 0.312354, 0.583672,
		-0.368649, -0.929261, 0.023905,
		0.549851, -0.197253, 0.811637,
		22.818029, 34.537479, 19.476875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963474, 34.256695, 19.310217>,  <22.433134, 34.675556, 18.908728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963474, 34.256695, 19.310217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.229792, 34.408524, 19.567165>,  <22.389584, 34.499622, 19.721334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.229792, 34.408524, 19.567165>,  <21.963474, 34.256695, 19.310217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.229792, 34.408524, 19.567165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745981, 0.321216, 0.583380,
		0.015093, -0.867610, 0.497017,
		0.665796, 0.379570, 0.642373,
		22.429531, 34.522396, 19.759876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743782, 34.168461, 19.893330>,  <21.963474, 34.256695, 19.310217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743782, 34.168461, 19.893330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.013477, 34.440655, 20.008110>,  <22.175295, 34.603973, 20.076979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.013477, 34.440655, 20.008110>,  <21.743782, 34.168461, 19.893330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.013477, 34.440655, 20.008110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620306, 0.310962, 0.720085,
		0.400779, -0.663505, 0.631773,
		0.674238, 0.680488, 0.286950,
		22.215748, 34.644802, 20.094194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.691107, 34.127850, 20.597666>,  <21.743782, 34.168461, 19.893330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.691107, 34.127850, 20.597666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867783, 34.477295, 20.515972>,  <21.973787, 34.686962, 20.466955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867783, 34.477295, 20.515972>,  <21.691107, 34.127850, 20.597666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.867783, 34.477295, 20.515972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519507, 0.434642, 0.735663,
		0.731454, -0.218831, 0.645824,
		0.441688, 0.873613, -0.204236,
		22.000288, 34.739380, 20.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.970217, 34.401161, 21.266613>,  <21.691107, 34.127850, 20.597666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.970217, 34.401161, 21.266613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.923336, 34.707047, 21.013165>,  <21.895208, 34.890579, 20.861095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.923336, 34.707047, 21.013165>,  <21.970217, 34.401161, 21.266613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.923336, 34.707047, 21.013165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460856, 0.523283, 0.716789,
		0.879702, 0.376018, 0.291092,
		-0.117203, 0.764713, -0.633623,
		21.888176, 34.936459, 20.823078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978882, 34.979488, 21.659647>,  <21.970217, 34.401161, 21.266613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978882, 34.979488, 21.659647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.787464, 35.111229, 21.334064>,  <21.672613, 35.190273, 21.138716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.787464, 35.111229, 21.334064>,  <21.978882, 34.979488, 21.659647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.787464, 35.111229, 21.334064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579594, 0.577867, 0.574578,
		0.659596, 0.746725, -0.085644,
		-0.478542, 0.329351, -0.813956,
		21.643902, 35.210033, 21.089878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032532, 35.752724, 21.602432>,  <21.978882, 34.979488, 21.659647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032532, 35.752724, 21.602432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702635, 35.677555, 21.389084>,  <21.504696, 35.632454, 21.261074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702635, 35.677555, 21.389084>,  <22.032532, 35.752724, 21.602432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702635, 35.677555, 21.389084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544161, 0.520413, 0.658072,
		0.153910, 0.832980, -0.531465,
		-0.824742, -0.187919, -0.533373,
		21.455212, 35.621178, 21.229073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.556402, 36.298901, 21.847832>,  <22.032532, 35.752724, 21.602432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.556402, 36.298901, 21.847832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.308578, 36.073456, 21.629295>,  <21.159883, 35.938190, 21.498173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.308578, 36.073456, 21.629295>,  <21.556402, 36.298901, 21.847832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.308578, 36.073456, 21.629295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760844, 0.260030, 0.594559,
		-0.193033, 0.784047, -0.589922,
		-0.619560, -0.563608, -0.546343,
		21.122711, 35.904373, 21.465393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.046698, 36.669250, 21.593670>,  <21.556402, 36.298901, 21.847832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.046698, 36.669250, 21.593670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.893986, 36.300652, 21.622185>,  <20.802359, 36.079491, 21.639294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.893986, 36.300652, 21.622185>,  <21.046698, 36.669250, 21.593670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.893986, 36.300652, 21.622185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805985, 0.369685, 0.462300,
		-0.452364, 0.119039, -0.883853,
		-0.381779, -0.921500, 0.071288,
		20.779451, 36.024200, 21.643572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325596, 36.701015, 21.247684>,  <21.046698, 36.669250, 21.593670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325596, 36.701015, 21.247684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322432, 36.358334, 21.453983>,  <20.320534, 36.152725, 21.577763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322432, 36.358334, 21.453983>,  <20.325596, 36.701015, 21.247684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322432, 36.358334, 21.453983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798766, 0.315700, 0.512159,
		-0.601590, -0.407908, -0.686805,
		-0.007911, -0.856706, 0.515745,
		20.320059, 36.101322, 21.608707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692535, 36.557159, 21.192099>,  <20.325596, 36.701015, 21.247684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692535, 36.557159, 21.192099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.845606, 36.376122, 21.514271>,  <19.937449, 36.267498, 21.707573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.845606, 36.376122, 21.514271>,  <19.692535, 36.557159, 21.192099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.845606, 36.376122, 21.514271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614297, 0.526511, 0.587729,
		-0.690071, -0.719682, -0.076546,
		0.382676, -0.452596, 0.805429,
		19.960409, 36.240341, 21.755899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186043, 36.115459, 21.411762>,  <19.692535, 36.557159, 21.192099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186043, 36.115459, 21.411762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432493, 36.279530, 21.680729>,  <19.580364, 36.377972, 21.842108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432493, 36.279530, 21.680729>,  <19.186043, 36.115459, 21.411762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432493, 36.279530, 21.680729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770299, 0.491974, 0.405710,
		-0.164398, -0.767930, 0.619077,
		0.616127, 0.410177, 0.672416,
		19.617331, 36.402584, 21.882454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866848, 36.075989, 22.117796>,  <19.186043, 36.115459, 21.411762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866848, 36.075989, 22.117796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060232, 36.424625, 22.085304>,  <19.176262, 36.633808, 22.065809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060232, 36.424625, 22.085304>,  <18.866848, 36.075989, 22.117796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060232, 36.424625, 22.085304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813884, 0.481728, 0.324856,
		0.322271, -0.090944, 0.942269,
		0.483461, 0.871589, -0.081229,
		19.205271, 36.686104, 22.060936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787172, 36.477776, 22.769123>,  <18.866848, 36.075989, 22.117796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.787172, 36.477776, 22.769123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846203, 36.720249, 22.456516>,  <18.881620, 36.865734, 22.268953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846203, 36.720249, 22.456516>,  <18.787172, 36.477776, 22.769123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846203, 36.720249, 22.456516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762814, 0.572717, 0.300182,
		0.629552, 0.551851, 0.546923,
		0.147576, 0.606181, -0.781515,
		18.890476, 36.902103, 22.222061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253864, 36.962357, 22.506275>,  <18.787172, 36.477776, 22.769123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253864, 36.962357, 22.506275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307688, 37.355877, 22.458893>,  <18.339981, 37.591988, 22.430464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307688, 37.355877, 22.458893>,  <18.253864, 36.962357, 22.506275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307688, 37.355877, 22.458893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356712, 0.063439, 0.932058,
		0.924473, -0.167671, -0.342397,
		0.134558, 0.983800, -0.118457,
		18.348055, 37.651016, 22.423355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.382418, 25.590092, 27.875221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.720844, 25.390644, 27.799801>,  <28.923901, 25.270975, 27.754549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.720844, 25.390644, 27.799801>,  <28.382418, 25.590092, 27.875221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720844, 25.390644, 27.799801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469371, 0.864474, -0.179934,
		0.252717, 0.063734, 0.965439,
		0.846064, -0.498621, -0.188552,
		28.974663, 25.241058, 27.743235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834957, 26.106302, 28.039806>,  <28.382418, 25.590092, 27.875221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834957, 26.106302, 28.039806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.083591, 25.849358, 27.860474>,  <29.232771, 25.695190, 27.752874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.083591, 25.849358, 27.860474>,  <28.834957, 26.106302, 28.039806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083591, 25.849358, 27.860474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435692, 0.759135, -0.483618,
		0.651004, 0.105274, 0.751739,
		0.621584, -0.642364, -0.448333,
		29.270067, 25.656649, 27.725973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481642, 26.213224, 28.203102>,  <28.834957, 26.106302, 28.039806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481642, 26.213224, 28.203102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.514936, 26.047050, 27.840778>,  <29.534914, 25.947346, 27.623384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.514936, 26.047050, 27.840778>,  <29.481642, 26.213224, 28.203102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514936, 26.047050, 27.840778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525550, 0.790581, -0.314292,
		0.846681, -0.449885, 0.284138,
		0.083239, -0.415433, -0.905807,
		29.539907, 25.922421, 27.569036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196301, 26.457220, 27.991827>,  <29.481642, 26.213224, 28.203102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196301, 26.457220, 27.991827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.014189, 26.345818, 27.653561>,  <29.904921, 26.278976, 27.450600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.014189, 26.345818, 27.653561>,  <30.196301, 26.457220, 27.991827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014189, 26.345818, 27.653561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493203, 0.711884, -0.499972,
		0.741263, -0.644713, -0.186747,
		-0.455281, -0.278507, -0.845667,
		29.877604, 26.262266, 27.399860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717243, 26.408476, 27.569071>,  <30.196301, 26.457220, 27.991827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717243, 26.408476, 27.569071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.393776, 26.458683, 27.339184>,  <30.199696, 26.488808, 27.201252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.393776, 26.458683, 27.339184>,  <30.717243, 26.408476, 27.569071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393776, 26.458683, 27.339184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448851, 0.763158, -0.464889,
		0.380249, -0.633904, -0.673481,
		-0.808668, 0.125519, -0.574718,
		30.151176, 26.496338, 27.166769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953882, 26.795057, 27.110395>,  <30.717243, 26.408476, 27.569071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953882, 26.795057, 27.110395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.563938, 26.784378, 27.021912>,  <30.329971, 26.777969, 26.968822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.563938, 26.784378, 27.021912>,  <30.953882, 26.795057, 27.110395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563938, 26.784378, 27.021912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111784, 0.800204, -0.589218,
		0.192743, -0.599133, -0.777103,
		-0.974861, -0.026700, -0.221207,
		30.271481, 26.776367, 26.955549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990164, 26.850889, 26.433216>,  <30.953882, 26.795057, 27.110395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990164, 26.850889, 26.433216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.626637, 26.972412, 26.547585>,  <30.408520, 27.045326, 26.616205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.626637, 26.972412, 26.547585>,  <30.990164, 26.850889, 26.433216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626637, 26.972412, 26.547585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032101, 0.734236, -0.678135,
		-0.415958, -0.607122, -0.677039,
		-0.908817, 0.303809, 0.285922,
		30.353991, 27.063555, 26.633362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677837, 27.033264, 25.824976>,  <30.990164, 26.850889, 26.433216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677837, 27.033264, 25.824976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.461506, 27.205830, 26.113804>,  <30.331707, 27.309368, 26.287100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.461506, 27.205830, 26.113804>,  <30.677837, 27.033264, 25.824976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461506, 27.205830, 26.113804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255461, 0.733655, -0.629675,
		-0.801400, -0.525008, -0.286573,
		-0.540830, 0.431414, 0.722070,
		30.299257, 27.335255, 26.330425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944094, 27.172564, 25.562130>,  <30.677837, 27.033264, 25.824976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944094, 27.172564, 25.562130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.052309, 27.439461, 25.839718>,  <30.117239, 27.599600, 26.006271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.052309, 27.439461, 25.839718>,  <29.944094, 27.172564, 25.562130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052309, 27.439461, 25.839718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373086, 0.737187, -0.563349,
		-0.887477, -0.106502, 0.448378,
		0.270540, 0.667243, 0.693970,
		30.133471, 27.639633, 26.047909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625595, 27.681080, 25.361145>,  <29.944094, 27.172564, 25.562130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625595, 27.681080, 25.361145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.835243, 27.881855, 25.636349>,  <29.961033, 28.002319, 25.801472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.835243, 27.881855, 25.636349>,  <29.625595, 27.681080, 25.361145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835243, 27.881855, 25.636349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220687, 0.860311, -0.459523,
		-0.822554, 0.089011, 0.561677,
		0.524119, 0.501938, 0.688010,
		29.992479, 28.032436, 25.842752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196352, 28.295881, 25.543354>,  <29.625595, 27.681080, 25.361145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196352, 28.295881, 25.543354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.562502, 28.394032, 25.671028>,  <29.782192, 28.452921, 25.747633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.562502, 28.394032, 25.671028>,  <29.196352, 28.295881, 25.543354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562502, 28.394032, 25.671028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120130, 0.923160, -0.365163,
		-0.384262, 0.295917, 0.874514,
		0.915375, 0.245374, 0.319187,
		29.837114, 28.467644, 25.766785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093807, 28.850855, 25.976015>,  <29.196352, 28.295881, 25.543354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093807, 28.850855, 25.976015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.464170, 28.859386, 25.825157>,  <29.686388, 28.864506, 25.734642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.464170, 28.859386, 25.825157>,  <29.093807, 28.850855, 25.976015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464170, 28.859386, 25.825157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205168, 0.866700, -0.454683,
		0.317173, 0.498373, 0.806862,
		0.925909, 0.021329, -0.377144,
		29.741943, 28.865786, 25.712013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137423, 29.534679, 25.902576>,  <29.093807, 28.850855, 25.976015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137423, 29.534679, 25.902576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.433558, 29.418655, 25.660000>,  <29.611238, 29.349041, 25.514454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.433558, 29.418655, 25.660000>,  <29.137423, 29.534679, 25.902576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433558, 29.418655, 25.660000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058942, 0.870639, -0.488379,
		0.669649, 0.397309, 0.627468,
		0.740335, -0.290058, -0.606440,
		29.655659, 29.331638, 25.478067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660349, 30.043512, 26.144783>,  <29.137423, 29.534679, 25.902576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660349, 30.043512, 26.144783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.721354, 29.894814, 25.778496>,  <29.757957, 29.805593, 25.558723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.721354, 29.894814, 25.778496>,  <29.660349, 30.043512, 26.144783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721354, 29.894814, 25.778496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102402, 0.915629, -0.388765,
		0.982982, 0.153063, 0.101578,
		0.152513, -0.371747, -0.915720,
		29.767107, 29.783289, 25.503780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025984, 30.568573, 25.838902>,  <29.660349, 30.043512, 26.144783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025984, 30.568573, 25.838902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.930630, 30.348618, 25.518703>,  <29.873417, 30.216644, 25.326584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.930630, 30.348618, 25.518703>,  <30.025984, 30.568573, 25.838902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930630, 30.348618, 25.518703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209437, 0.833973, -0.510515,
		0.948319, 0.045954, -0.313974,
		-0.238385, -0.549889, -0.800496,
		29.859114, 30.183651, 25.278555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408344, 30.818573, 25.366901>,  <30.025984, 30.568573, 25.838902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408344, 30.818573, 25.366901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113554, 30.634792, 25.168602>,  <29.936680, 30.524525, 25.049622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113554, 30.634792, 25.168602>,  <30.408344, 30.818573, 25.366901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113554, 30.634792, 25.168602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263936, 0.870836, -0.414707,
		0.622255, -0.174783, -0.763053,
		-0.736978, -0.459451, -0.495750,
		29.892460, 30.496958, 25.019876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488392, 30.998169, 24.614275>,  <30.408344, 30.818573, 25.366901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488392, 30.998169, 24.614275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.104343, 30.901688, 24.670830>,  <29.873915, 30.843798, 24.704762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.104343, 30.901688, 24.670830>,  <30.488392, 30.998169, 24.614275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104343, 30.901688, 24.670830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278873, 0.862325, -0.422641,
		-0.019978, -0.445215, -0.895201,
		-0.960120, -0.241204, 0.141386,
		29.816307, 30.829327, 24.713245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158506, 31.308323, 24.124069>,  <30.488392, 30.998169, 24.614275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158506, 31.308323, 24.124069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863043, 31.223564, 24.380032>,  <29.685764, 31.172709, 24.533609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863043, 31.223564, 24.380032>,  <30.158506, 31.308323, 24.124069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863043, 31.223564, 24.380032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428085, 0.880760, -0.202496,
		-0.520696, -0.423510, -0.741292,
		-0.738660, -0.211897, 0.639907,
		29.641445, 31.159996, 24.572004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553185, 31.553658, 23.819569>,  <30.158506, 31.308323, 24.124069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553185, 31.553658, 23.819569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.464451, 31.557541, 24.209583>,  <29.411211, 31.559872, 24.443592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.464451, 31.557541, 24.209583>,  <29.553185, 31.553658, 23.819569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464451, 31.557541, 24.209583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352553, 0.931504, -0.089485,
		-0.909118, -0.363603, -0.203217,
		-0.221834, 0.009708, 0.975036,
		29.397900, 31.560453, 24.502094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925228, 32.003109, 23.872261>,  <29.553185, 31.553658, 23.819569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925228, 32.003109, 23.872261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.093990, 31.978161, 24.234058>,  <29.195248, 31.963194, 24.451138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.093990, 31.978161, 24.234058>,  <28.925228, 32.003109, 23.872261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093990, 31.978161, 24.234058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235273, 0.955924, 0.175656,
		-0.875582, -0.286913, 0.388636,
		0.421904, -0.062366, 0.904493,
		29.220562, 31.959452, 24.505405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396662, 32.395214, 24.312580>,  <28.925228, 32.003109, 23.872261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396662, 32.395214, 24.312580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.749037, 32.388847, 24.501766>,  <28.960463, 32.385025, 24.615278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.749037, 32.388847, 24.501766>,  <28.396662, 32.395214, 24.312580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749037, 32.388847, 24.501766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126126, 0.955385, 0.267081,
		-0.456114, -0.294935, 0.839627,
		0.880938, -0.015921, 0.472964,
		29.013319, 32.384071, 24.643656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179203, 32.536259, 24.915224>,  <28.396662, 32.395214, 24.312580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179203, 32.536259, 24.915224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.567217, 32.632999, 24.905975>,  <28.800026, 32.691044, 24.900427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.567217, 32.632999, 24.905975>,  <28.179203, 32.536259, 24.915224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567217, 32.632999, 24.905975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223250, 0.924849, 0.307918,
		0.095854, -0.293530, 0.951132,
		0.970037, 0.241856, -0.023120,
		28.858229, 32.705555, 24.899040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736170, 33.113777, 25.033010>,  <28.179203, 32.536259, 24.915224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736170, 33.113777, 25.033010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.425377, 33.045586, 24.790611>,  <27.238901, 33.004669, 24.645172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.425377, 33.045586, 24.790611>,  <27.736170, 33.113777, 25.033010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425377, 33.045586, 24.790611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039162, -0.947680, 0.316811,
		-0.628302, 0.269889, 0.729656,
		-0.776983, -0.170478, -0.605998,
		27.192282, 32.994442, 24.608812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191236, 32.745312, 25.399214>,  <27.736170, 33.113777, 25.033010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191236, 32.745312, 25.399214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.077206, 32.665474, 25.024216>,  <27.008787, 32.617573, 24.799217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.077206, 32.665474, 25.024216>,  <27.191236, 32.745312, 25.399214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077206, 32.665474, 25.024216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233968, -0.934004, 0.269993,
		-0.929511, 0.296312, 0.219564,
		-0.285076, -0.199590, -0.937494,
		26.991682, 32.605598, 24.742968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583408, 32.269169, 25.416771>,  <27.191236, 32.745312, 25.399214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583408, 32.269169, 25.416771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.759052, 32.250423, 25.057888>,  <26.864439, 32.239178, 24.842558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.759052, 32.250423, 25.057888>,  <26.583408, 32.269169, 25.416771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759052, 32.250423, 25.057888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057688, -0.998049, 0.023893,
		-0.896579, 0.041267, -0.440959,
		0.439112, -0.046860, -0.897209,
		26.890785, 32.236366, 24.788725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127869, 31.845602, 24.960215>,  <26.583408, 32.269169, 25.416771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127869, 31.845602, 24.960215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.484926, 31.811069, 24.783249>,  <26.699162, 31.790350, 24.677069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.484926, 31.811069, 24.783249>,  <26.127869, 31.845602, 24.960215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484926, 31.811069, 24.783249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244081, -0.917719, -0.313395,
		-0.378958, 0.387736, -0.840269,
		0.892645, -0.086330, -0.442416,
		26.752720, 31.785170, 24.650524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998241, 31.407116, 24.503645>,  <26.127869, 31.845602, 24.960215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998241, 31.407116, 24.503645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.397480, 31.385540, 24.515575>,  <26.637024, 31.372595, 24.522734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.397480, 31.385540, 24.515575>,  <25.998241, 31.407116, 24.503645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397480, 31.385540, 24.515575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054020, -0.998538, 0.001936,
		0.029679, -0.003544, -0.999553,
		0.998099, -0.053939, 0.029828,
		26.696909, 31.369358, 24.524523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224388, 30.900539, 24.019972>,  <25.998241, 31.407116, 24.503645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224388, 30.900539, 24.019972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.510757, 30.956409, 24.293598>,  <26.682579, 30.989931, 24.457773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.510757, 30.956409, 24.293598>,  <26.224388, 30.900539, 24.019972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510757, 30.956409, 24.293598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076251, -0.958281, 0.275470,
		0.694002, -0.249376, -0.675405,
		0.715923, 0.139676, 0.684064,
		26.725534, 30.998312, 24.498817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537931, 30.395313, 23.929422>,  <26.224388, 30.900539, 24.019972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537931, 30.395313, 23.929422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.706011, 30.508549, 24.274281>,  <26.806858, 30.576490, 24.481195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.706011, 30.508549, 24.274281>,  <26.537931, 30.395313, 23.929422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706011, 30.508549, 24.274281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176471, -0.906461, 0.383649,
		0.890107, -0.313353, -0.330938,
		0.420200, 0.283088, 0.862145,
		26.832071, 30.593475, 24.532925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057632, 29.898882, 23.992998>,  <26.537931, 30.395313, 23.929422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057632, 29.898882, 23.992998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.970974, 30.046909, 24.354355>,  <26.918978, 30.135725, 24.571169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.970974, 30.046909, 24.354355>,  <27.057632, 29.898882, 23.992998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970974, 30.046909, 24.354355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261480, -0.913554, 0.311525,
		0.940581, -0.168727, 0.294684,
		-0.216647, 0.370069, 0.903390,
		26.905979, 30.157930, 24.625372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289839, 29.448112, 24.455929>,  <27.057632, 29.898882, 23.992998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289839, 29.448112, 24.455929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.042826, 29.656647, 24.691509>,  <26.894619, 29.781767, 24.832857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.042826, 29.656647, 24.691509>,  <27.289839, 29.448112, 24.455929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042826, 29.656647, 24.691509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360041, -0.853088, 0.377639,
		0.699304, 0.021157, 0.714511,
		-0.617531, 0.521338, 0.588951,
		26.857567, 29.813047, 24.868195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518351, 29.335358, 25.081291>,  <27.289839, 29.448112, 24.455929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518351, 29.335358, 25.081291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.136253, 29.448746, 25.115116>,  <26.906994, 29.516779, 25.135410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.136253, 29.448746, 25.115116>,  <27.518351, 29.335358, 25.081291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136253, 29.448746, 25.115116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214045, -0.859665, 0.463854,
		0.204183, 0.424994, 0.881867,
		-0.955245, 0.283471, 0.084561,
		26.849680, 29.533787, 25.140484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385405, 29.173683, 25.718445>,  <27.518351, 29.335358, 25.081291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385405, 29.173683, 25.718445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.009531, 29.223904, 25.591179>,  <26.784006, 29.254036, 25.514818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.009531, 29.223904, 25.591179>,  <27.385405, 29.173683, 25.718445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009531, 29.223904, 25.591179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279761, -0.817300, 0.503740,
		-0.196792, 0.562368, 0.803129,
		-0.939684, 0.125552, -0.318167,
		26.727625, 29.261570, 25.495729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984865, 29.092266, 26.302029>,  <27.385405, 29.173683, 25.718445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984865, 29.092266, 26.302029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.725679, 29.044857, 26.001072>,  <26.570168, 29.016411, 25.820498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.725679, 29.044857, 26.001072>,  <26.984865, 29.092266, 26.302029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725679, 29.044857, 26.001072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344360, -0.835510, 0.428181,
		-0.679381, 0.536540, 0.500566,
		-0.647964, -0.118524, -0.752393,
		26.531290, 29.009300, 25.775354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387897, 28.971895, 26.697994>,  <26.984865, 29.092266, 26.302029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387897, 28.971895, 26.697994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.368202, 28.825375, 26.326317>,  <26.356386, 28.737461, 26.103312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.368202, 28.825375, 26.326317>,  <26.387897, 28.971895, 26.697994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368202, 28.825375, 26.326317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303883, -0.880721, 0.363298,
		-0.951436, 0.300253, -0.067949,
		-0.049237, -0.366303, -0.929192,
		26.353432, 28.715483, 26.047560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828941, 28.623610, 26.718229>,  <26.387897, 28.971895, 26.697994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828941, 28.623610, 26.718229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.034237, 28.467724, 26.412365>,  <26.157413, 28.374193, 26.228846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.034237, 28.467724, 26.412365>,  <25.828941, 28.623610, 26.718229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034237, 28.467724, 26.412365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354519, -0.907663, 0.224643,
		-0.781602, 0.155791, -0.604010,
		0.513240, -0.389715, -0.764662,
		26.188210, 28.350809, 26.182966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440670, 28.120327, 26.418463>,  <25.828941, 28.623610, 26.718229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440670, 28.120327, 26.418463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.807711, 28.021385, 26.293995>,  <26.027935, 27.962021, 26.219315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.807711, 28.021385, 26.293995>,  <25.440670, 28.120327, 26.418463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807711, 28.021385, 26.293995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229091, -0.968802, 0.094551,
		-0.324849, -0.015474, -0.945639,
		0.917600, -0.247353, -0.311170,
		26.082991, 27.947180, 26.200644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389349, 27.478661, 26.146280>,  <25.440670, 28.120327, 26.418463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.389349, 27.478661, 26.146280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.787086, 27.475487, 26.188641>,  <26.025730, 27.473581, 26.214058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.787086, 27.475487, 26.188641>,  <25.389349, 27.478661, 26.146280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787086, 27.475487, 26.188641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030300, -0.976954, 0.211289,
		0.101785, -0.213303, -0.971669,
		0.994345, -0.007935, 0.105903,
		26.085390, 27.473106, 26.220411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603399, 26.906515, 25.896275>,  <25.389349, 27.478661, 26.146280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603399, 26.906515, 25.896275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.901037, 27.003983, 26.145096>,  <26.079620, 27.062462, 26.294390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.901037, 27.003983, 26.145096>,  <25.603399, 26.906515, 25.896275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901037, 27.003983, 26.145096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077349, -0.956274, 0.282060,
		0.663583, -0.161764, -0.730404,
		0.744094, 0.243666, 0.622054,
		26.124266, 27.077082, 26.331713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007114, 26.387365, 25.867941>,  <25.603399, 26.906515, 25.896275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007114, 26.387365, 25.867941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.159975, 26.554729, 26.197521>,  <26.251692, 26.655148, 26.395269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.159975, 26.554729, 26.197521>,  <26.007114, 26.387365, 25.867941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159975, 26.554729, 26.197521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145777, -0.907755, 0.393358,
		0.912530, -0.030208, -0.407893,
		0.382149, 0.418412, 0.823950,
		26.274620, 26.680254, 26.444706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.725725, 26.019377, 26.034389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.616934, 26.185299, 26.381714>,  <26.551659, 26.284853, 26.590109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.616934, 26.185299, 26.381714>,  <26.725725, 26.019377, 26.034389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616934, 26.185299, 26.381714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316374, -0.813621, 0.487779,
		0.908809, 0.407377, 0.090054,
		-0.271980, 0.414807, 0.868310,
		26.535339, 26.309742, 26.642206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175941, 25.849014, 26.524958>,  <26.725725, 26.019377, 26.034389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175941, 25.849014, 26.524958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870504, 25.950787, 26.762341>,  <26.687243, 26.011850, 26.904770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870504, 25.950787, 26.762341>,  <27.175941, 25.849014, 26.524958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870504, 25.950787, 26.762341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161902, -0.814287, 0.557426,
		0.625072, 0.521728, 0.580590,
		-0.763592, 0.254433, 0.593457,
		26.641426, 26.027117, 26.940378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406906, 25.717627, 27.290419>,  <27.175941, 25.849014, 26.524958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406906, 25.717627, 27.290419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007078, 25.729233, 27.292320>,  <26.767181, 25.736197, 27.293461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007078, 25.729233, 27.292320>,  <27.406906, 25.717627, 27.290419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007078, 25.729233, 27.292320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018738, -0.753247, 0.657471,
		0.022656, 0.657097, 0.753465,
		-0.999568, 0.029014, 0.004753,
		26.707209, 25.737936, 27.293747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157131, 25.709297, 28.005970>,  <27.406906, 25.717627, 27.290419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157131, 25.709297, 28.005970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.863575, 25.582890, 27.765457>,  <26.687441, 25.507046, 27.621149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.863575, 25.582890, 27.765457>,  <27.157131, 25.709297, 28.005970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863575, 25.582890, 27.765457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076290, -0.841241, 0.535250,
		-0.674970, 0.438687, 0.593270,
		-0.733890, -0.316018, -0.601280,
		26.643408, 25.488085, 27.585073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826874, 25.501919, 28.512802>,  <27.157131, 25.709297, 28.005970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826874, 25.501919, 28.512802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.656668, 25.342724, 28.187706>,  <26.554544, 25.247208, 27.992649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.656668, 25.342724, 28.187706>,  <26.826874, 25.501919, 28.512802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656668, 25.342724, 28.187706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132589, -0.860992, 0.491033,
		-0.895185, 0.316703, 0.313598,
		-0.425517, -0.397985, -0.812738,
		26.529013, 25.223328, 27.943884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261755, 25.086468, 28.754740>,  <26.826874, 25.501919, 28.512802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261755, 25.086468, 28.754740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351797, 24.970085, 28.382790>,  <26.405823, 24.900255, 28.159618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351797, 24.970085, 28.382790>,  <26.261755, 25.086468, 28.754740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351797, 24.970085, 28.382790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090932, -0.943933, 0.317367,
		-0.970082, -0.155996, -0.186028,
		0.225106, -0.290956, -0.929877,
		26.419329, 24.882799, 28.103827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800333, 24.515953, 28.594395>,  <26.261755, 25.086468, 28.754740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800333, 24.515953, 28.594395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.126127, 24.484203, 28.364502>,  <26.321604, 24.465153, 28.226566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.126127, 24.484203, 28.364502>,  <25.800333, 24.515953, 28.594395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126127, 24.484203, 28.364502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149564, -0.928392, 0.340175,
		-0.560577, -0.363026, -0.744289,
		0.814484, -0.079375, -0.574731,
		26.370472, 24.460390, 28.192083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807613, 23.800577, 28.403282>,  <25.800333, 24.515953, 28.594395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807613, 23.800577, 28.403282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.186863, 23.910694, 28.339687>,  <26.414413, 23.976765, 28.301531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.186863, 23.910694, 28.339687>,  <25.807613, 23.800577, 28.403282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186863, 23.910694, 28.339687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316219, -0.765282, 0.560668,
		0.032680, -0.581857, -0.812634,
		0.948123, 0.275293, -0.158985,
		26.471300, 23.993282, 28.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346899, 23.247917, 28.565372>,  <25.807613, 23.800577, 28.403282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346899, 23.247917, 28.565372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.698832, 23.071068, 28.495598>,  <25.909990, 22.964958, 28.453733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.698832, 23.071068, 28.495598>,  <25.346899, 23.247917, 28.565372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698832, 23.071068, 28.495598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101757, -0.183276, 0.977781,
		-0.464269, -0.878030, -0.116263,
		0.879829, -0.442123, -0.174435,
		25.962780, 22.938431, 28.443268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344774, 22.498960, 28.729988>,  <25.346899, 23.247917, 28.565372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344774, 22.498960, 28.729988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.706322, 22.667957, 28.756897>,  <25.923250, 22.769356, 28.773043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.706322, 22.667957, 28.756897>,  <25.344774, 22.498960, 28.729988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706322, 22.667957, 28.756897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015416, -0.189310, 0.981796,
		0.427537, -0.886376, -0.177624,
		0.903866, 0.422493, 0.067273,
		25.977482, 22.794704, 28.777079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925209, 21.981836, 28.925896>,  <25.344774, 22.498960, 28.729988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925209, 21.981836, 28.925896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.050619, 22.344200, 29.039761>,  <26.125866, 22.561619, 29.108080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.050619, 22.344200, 29.039761>,  <25.925209, 21.981836, 28.925896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050619, 22.344200, 29.039761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036750, -0.311126, 0.949658,
		0.948868, -0.287282, -0.130839,
		0.313527, 0.905908, 0.284660,
		26.144678, 22.615973, 29.125158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465385, 22.028397, 29.389740>,  <25.925209, 21.981836, 28.925896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465385, 22.028397, 29.389740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.295053, 22.382698, 29.463615>,  <26.192854, 22.595278, 29.507940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.295053, 22.382698, 29.463615>,  <26.465385, 22.028397, 29.389740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295053, 22.382698, 29.463615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004261, -0.206084, 0.978525,
		0.904792, 0.415900, 0.091532,
		-0.425832, 0.885752, 0.184691,
		26.167303, 22.648424, 29.519022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706406, 22.219164, 30.060755>,  <26.465385, 22.028397, 29.389740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706406, 22.219164, 30.060755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.394016, 22.465050, 30.016556>,  <26.206583, 22.612581, 29.990036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.394016, 22.465050, 30.016556>,  <26.706406, 22.219164, 30.060755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394016, 22.465050, 30.016556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357684, -0.295164, 0.885969,
		0.512002, 0.731440, 0.450388,
		-0.780972, 0.614714, -0.110500,
		26.159725, 22.649464, 29.983406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677254, 22.680862, 30.667795>,  <26.706406, 22.219164, 30.060755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677254, 22.680862, 30.667795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.301741, 22.663666, 30.531071>,  <26.076431, 22.653347, 30.449036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.301741, 22.663666, 30.531071>,  <26.677254, 22.680862, 30.667795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301741, 22.663666, 30.531071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292955, -0.422445, 0.857740,
		-0.181274, 0.905368, 0.383990,
		-0.938785, -0.042994, -0.341810,
		26.020105, 22.650768, 30.428528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280024, 22.820265, 31.306501>,  <26.677254, 22.680862, 30.667795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280024, 22.820265, 31.306501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.023428, 22.666889, 31.040730>,  <25.869471, 22.574863, 30.881268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.023428, 22.666889, 31.040730>,  <26.280024, 22.820265, 31.306501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023428, 22.666889, 31.040730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496750, -0.452382, 0.740669,
		-0.584577, 0.805187, 0.099725,
		-0.641490, -0.383439, -0.664428,
		25.830980, 22.551857, 30.841400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614086, 22.904623, 31.578535>,  <26.280024, 22.820265, 31.306501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614086, 22.904623, 31.578535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.561499, 22.631424, 31.291138>,  <25.529945, 22.467505, 31.118700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.561499, 22.631424, 31.291138>,  <25.614086, 22.904623, 31.578535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561499, 22.631424, 31.291138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450624, -0.604397, 0.656995,
		-0.882980, 0.410145, -0.228314,
		-0.131470, -0.682997, -0.718491,
		25.522058, 22.426525, 31.075590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953840, 22.735443, 31.750082>,  <25.614086, 22.904623, 31.578535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953840, 22.735443, 31.750082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.128332, 22.460213, 31.518131>,  <25.233027, 22.295074, 31.378962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.128332, 22.460213, 31.518131>,  <24.953840, 22.735443, 31.750082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128332, 22.460213, 31.518131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308089, -0.719685, 0.622202,
		-0.845450, -0.092768, -0.525935,
		0.436228, -0.688075, -0.579877,
		25.259201, 22.253790, 31.344168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456520, 22.272745, 31.547350>,  <24.953840, 22.735443, 31.750082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456520, 22.272745, 31.547350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.793175, 22.058464, 31.520004>,  <24.995167, 21.929895, 31.503597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.793175, 22.058464, 31.520004>,  <24.456520, 22.272745, 31.547350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793175, 22.058464, 31.520004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405250, -0.710154, 0.575720,
		-0.356962, -0.456843, -0.814784,
		0.841636, -0.535701, -0.068362,
		25.045666, 21.897753, 31.499495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.210594, 21.555393, 31.700119>,  <24.456520, 22.272745, 31.547350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.210594, 21.555393, 31.700119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.607208, 21.526550, 31.743309>,  <24.845177, 21.509245, 31.769222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.607208, 21.526550, 31.743309>,  <24.210594, 21.555393, 31.700119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607208, 21.526550, 31.743309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121756, -0.805176, 0.580402,
		0.045087, -0.588636, -0.807140,
		0.991535, -0.072105, 0.107973,
		24.904669, 21.504919, 31.775702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441261, 20.822817, 31.599792>,  <24.210594, 21.555393, 31.700119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441261, 20.822817, 31.599792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.737856, 20.975929, 31.820221>,  <24.915812, 21.067797, 31.952478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.737856, 20.975929, 31.820221>,  <24.441261, 20.822817, 31.599792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737856, 20.975929, 31.820221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035264, -0.797937, 0.601708,
		0.670042, -0.465591, -0.578160,
		0.741485, 0.382782, 0.551070,
		24.960302, 21.090763, 31.985542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.777994, 20.260546, 31.644941>,  <24.441261, 20.822817, 31.599792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.777994, 20.260546, 31.644941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.921946, 20.501850, 31.929634>,  <25.008316, 20.646633, 32.100449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.921946, 20.501850, 31.929634>,  <24.777994, 20.260546, 31.644941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921946, 20.501850, 31.929634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011189, -0.765579, 0.643245,
		0.932933, -0.223525, -0.282264,
		0.359877, 0.603262, 0.711733,
		25.029909, 20.682829, 32.143154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414368, 20.024874, 31.805220>,  <24.777994, 20.260546, 31.644941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414368, 20.024874, 31.805220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.286564, 20.212769, 32.134403>,  <25.209883, 20.325506, 32.331913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.286564, 20.212769, 32.134403>,  <25.414368, 20.024874, 31.805220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286564, 20.212769, 32.134403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104007, -0.845849, 0.523185,
		0.941858, 0.252755, 0.221400,
		-0.319508, 0.469739, 0.822958,
		25.190712, 20.353691, 32.381290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884199, 19.858240, 32.319569>,  <25.414368, 20.024874, 31.805220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884199, 19.858240, 32.319569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.549431, 19.970726, 32.507393>,  <25.348570, 20.038218, 32.620087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.549431, 19.970726, 32.507393>,  <25.884199, 19.858240, 32.319569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549431, 19.970726, 32.507393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185668, -0.661170, 0.726899,
		0.514871, 0.695537, 0.501134,
		-0.836920, 0.281215, 0.469556,
		25.298355, 20.055090, 32.648258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042732, 20.025389, 32.991898>,  <25.884199, 19.858240, 32.319569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042732, 20.025389, 32.991898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.645866, 19.979836, 33.012440>,  <25.407747, 19.952503, 33.024765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.645866, 19.979836, 33.012440>,  <26.042732, 20.025389, 32.991898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645866, 19.979836, 33.012440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101031, -0.489648, 0.866047,
		-0.073481, 0.864451, 0.497318,
		-0.992166, -0.113882, 0.051357,
		25.348217, 19.945671, 33.027847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800528, 20.036251, 33.204201>,  <26.042732, 20.025389, 32.991898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800528, 20.036251, 33.204201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.134508, 20.010845, 33.422859>,  <27.334896, 19.995602, 33.554054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.134508, 20.010845, 33.422859>,  <26.800528, 20.036251, 33.204201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134508, 20.010845, 33.422859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393983, 0.762515, -0.513175,
		-0.384230, 0.643845, 0.661688,
		0.834952, -0.063517, 0.546646,
		27.384995, 19.991791, 33.586853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944910, 20.705929, 33.585289>,  <26.800528, 20.036251, 33.204201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944910, 20.705929, 33.585289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.278202, 20.489811, 33.538280>,  <27.478178, 20.360140, 33.510075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.278202, 20.489811, 33.538280>,  <26.944910, 20.705929, 33.585289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278202, 20.489811, 33.538280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458697, 0.794118, -0.398715,
		0.308746, 0.278317, 0.909514,
		0.833231, -0.540293, -0.117517,
		27.528172, 20.327723, 33.503025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529194, 21.204239, 33.807571>,  <26.944910, 20.705929, 33.585289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529194, 21.204239, 33.807571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.672705, 20.919754, 33.565762>,  <27.758812, 20.749063, 33.420673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.672705, 20.919754, 33.565762>,  <27.529194, 21.204239, 33.807571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672705, 20.919754, 33.565762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463488, 0.697905, -0.545992,
		0.810220, -0.084301, 0.580032,
		0.358780, -0.711211, -0.604529,
		27.780338, 20.706390, 33.384403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250479, 21.175184, 33.868179>,  <27.529194, 21.204239, 33.807571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250479, 21.175184, 33.868179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.159874, 21.005669, 33.517387>,  <28.105511, 20.903959, 33.306911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.159874, 21.005669, 33.517387>,  <28.250479, 21.175184, 33.868179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159874, 21.005669, 33.517387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605072, 0.644350, -0.467655,
		0.763270, -0.636565, 0.110472,
		-0.226510, -0.423790, -0.876980,
		28.091921, 20.878532, 33.254292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831383, 21.316101, 33.326321>,  <28.250479, 21.175184, 33.868179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831383, 21.316101, 33.326321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.558128, 21.209778, 33.054241>,  <28.394176, 21.145983, 32.890995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.558128, 21.209778, 33.054241>,  <28.831383, 21.316101, 33.326321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558128, 21.209778, 33.054241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381211, 0.664649, -0.642588,
		0.622900, -0.698274, -0.352717,
		-0.683136, -0.265808, -0.680200,
		28.353188, 21.130035, 32.850182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236956, 21.385361, 32.654945>,  <28.831383, 21.316101, 33.326321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236956, 21.385361, 32.654945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856749, 21.357658, 32.533802>,  <28.628624, 21.341038, 32.461117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856749, 21.357658, 32.533802>,  <29.236956, 21.385361, 32.654945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856749, 21.357658, 32.533802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209513, 0.576910, -0.789481,
		0.229394, -0.813867, -0.533853,
		-0.950517, -0.069253, -0.302855,
		28.571594, 21.336882, 32.442944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336632, 21.187965, 32.000217>,  <29.236956, 21.385361, 32.654945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336632, 21.187965, 32.000217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978878, 21.364704, 32.028072>,  <28.764225, 21.470747, 32.044785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978878, 21.364704, 32.028072>,  <29.336632, 21.187965, 32.000217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978878, 21.364704, 32.028072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189043, 0.514477, -0.836407,
		-0.405389, -0.734905, -0.543668,
		-0.894384, 0.441846, 0.069635,
		28.710564, 21.497257, 32.048962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151249, 21.283928, 31.260546>,  <29.336632, 21.187965, 32.000217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151249, 21.283928, 31.260546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.928856, 21.532532, 31.481312>,  <28.795420, 21.681694, 31.613771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.928856, 21.532532, 31.481312>,  <29.151249, 21.283928, 31.260546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928856, 21.532532, 31.481312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066111, 0.628834, -0.774724,
		-0.828561, -0.467221, -0.308532,
		-0.555982, 0.621508, 0.551916,
		28.762062, 21.718985, 31.646887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803211, 21.554201, 30.729191>,  <29.151249, 21.283928, 31.260546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803211, 21.554201, 30.729191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777361, 21.810070, 31.035561>,  <28.761850, 21.963591, 31.219383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777361, 21.810070, 31.035561>,  <28.803211, 21.554201, 30.729191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777361, 21.810070, 31.035561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098823, 0.759655, -0.642774,
		-0.993004, -0.117231, 0.014121,
		-0.064626, 0.639672, 0.765926,
		28.757973, 22.001972, 31.265339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121695, 21.842470, 30.667913>,  <28.803211, 21.554201, 30.729191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121695, 21.842470, 30.667913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.367868, 22.088314, 30.865295>,  <28.515574, 22.235821, 30.983725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.367868, 22.088314, 30.865295>,  <28.121695, 21.842470, 30.667913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367868, 22.088314, 30.865295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173231, 0.716227, -0.676025,
		-0.768915, 0.330568, 0.547260,
		0.615435, 0.614609, 0.493453,
		28.552500, 22.272697, 31.013330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825407, 22.376688, 30.454918>,  <28.121695, 21.842470, 30.667913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825407, 22.376688, 30.454918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.190876, 22.482338, 30.578491>,  <28.410158, 22.545727, 30.652636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.190876, 22.482338, 30.578491>,  <27.825407, 22.376688, 30.454918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190876, 22.482338, 30.578491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009344, 0.746228, -0.665625,
		-0.406341, 0.611051, 0.679341,
		0.913674, 0.264123, 0.308932,
		28.464977, 22.561575, 30.671171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800955, 23.074570, 30.583118>,  <27.825407, 22.376688, 30.454918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800955, 23.074570, 30.583118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.181444, 22.977921, 30.506393>,  <28.409739, 22.919931, 30.460360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.181444, 22.977921, 30.506393>,  <27.800955, 23.074570, 30.583118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181444, 22.977921, 30.506393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034252, 0.700624, -0.712708,
		0.306593, 0.671376, 0.674726,
		0.951224, -0.241622, -0.191811,
		28.466812, 22.905434, 30.448851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145514, 23.698635, 30.412592>,  <27.800955, 23.074570, 30.583118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145514, 23.698635, 30.412592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.375502, 23.407784, 30.262554>,  <28.513494, 23.233273, 30.172531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.375502, 23.407784, 30.262554>,  <28.145514, 23.698635, 30.412592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375502, 23.407784, 30.262554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289286, 0.609512, -0.738112,
		0.765326, 0.315882, 0.560798,
		0.574969, -0.727128, -0.375095,
		28.547993, 23.189646, 30.150026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766943, 24.063910, 30.216698>,  <28.145514, 23.698635, 30.412592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766943, 24.063910, 30.216698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.776655, 23.719074, 30.014229>,  <28.782482, 23.512173, 29.892748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.776655, 23.719074, 30.014229>,  <28.766943, 24.063910, 30.216698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776655, 23.719074, 30.014229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283187, 0.491515, -0.823540,
		0.958758, -0.123346, 0.256066,
		0.024279, -0.862090, -0.506173,
		28.783939, 23.460447, 29.862377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444891, 24.127758, 29.807980>,  <28.766943, 24.063910, 30.216698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444891, 24.127758, 29.807980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223104, 23.848087, 29.627438>,  <29.090033, 23.680285, 29.519114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223104, 23.848087, 29.627438>,  <29.444891, 24.127758, 29.807980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223104, 23.848087, 29.627438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109470, 0.476367, -0.872405,
		0.824976, -0.533127, -0.187590,
		-0.554465, -0.699178, -0.451353,
		29.056765, 23.638334, 29.492031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894693, 23.827385, 29.175659>,  <29.444891, 24.127758, 29.807980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894693, 23.827385, 29.175659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.511755, 23.739941, 29.100082>,  <29.281992, 23.687475, 29.054737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.511755, 23.739941, 29.100082>,  <29.894693, 23.827385, 29.175659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511755, 23.739941, 29.100082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120954, 0.290647, -0.949154,
		0.262401, -0.931524, -0.251810,
		-0.957348, -0.218601, -0.188938,
		29.224550, 23.674358, 29.043400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929388, 23.379250, 28.637754>,  <29.894693, 23.827385, 29.175659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929388, 23.379250, 28.637754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558199, 23.525177, 28.607365>,  <29.335485, 23.612734, 28.589130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558199, 23.525177, 28.607365>,  <29.929388, 23.379250, 28.637754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558199, 23.525177, 28.607365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204537, 0.328223, -0.922190,
		-0.311498, -0.871307, -0.379201,
		-0.927973, 0.364821, -0.075974,
		29.279806, 23.634623, 28.584572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797178, 23.265411, 27.868217>,  <29.929388, 23.379250, 28.637754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797178, 23.265411, 27.868217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533937, 23.517494, 28.033016>,  <29.375994, 23.668743, 28.131895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533937, 23.517494, 28.033016>,  <29.797178, 23.265411, 27.868217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533937, 23.517494, 28.033016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100125, 0.615582, -0.781686,
		-0.746242, -0.473178, -0.468216,
		-0.658102, 0.630207, 0.411996,
		29.336506, 23.706556, 28.156614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399508, 23.573278, 27.316252>,  <29.797178, 23.265411, 27.868217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399508, 23.573278, 27.316252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370951, 23.844208, 27.609138>,  <29.353817, 24.006765, 27.784870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370951, 23.844208, 27.609138>,  <29.399508, 23.573278, 27.316252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370951, 23.844208, 27.609138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166496, 0.731881, -0.660779,
		-0.983454, 0.074737, -0.165022,
		-0.071392, 0.677322, 0.732214,
		29.349533, 24.047405, 27.828802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987595, 24.095736, 27.068184>,  <29.399508, 23.573278, 27.316252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987595, 24.095736, 27.068184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234879, 24.236824, 27.349155>,  <29.383249, 24.321476, 27.517738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234879, 24.236824, 27.349155>,  <28.987595, 24.095736, 27.068184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234879, 24.236824, 27.349155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277165, 0.738432, -0.614734,
		-0.735524, 0.574723, 0.358745,
		0.618211, 0.352720, 0.702427,
		29.420341, 24.342640, 27.559883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.533176, 30.498648, 16.667801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.766979, 30.301582, 16.925678>,  <23.907261, 30.183344, 17.080404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.766979, 30.301582, 16.925678>,  <23.533176, 30.498648, 16.667801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.766979, 30.301582, 16.925678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690380, 0.115474, 0.714171,
		-0.426292, -0.862524, -0.272631,
		0.584508, -0.492665, 0.644695,
		23.942331, 30.153784, 17.119087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117710, 29.939299, 16.907326>,  <23.533176, 30.498648, 16.667801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117710, 29.939299, 16.907326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415321, 30.030312, 17.158611>,  <23.593887, 30.084919, 17.309383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415321, 30.030312, 17.158611>,  <23.117710, 29.939299, 16.907326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.415321, 30.030312, 17.158611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668089, 0.266136, 0.694859,
		-0.009089, -0.936697, 0.350023,
		0.744026, 0.227531, 0.628216,
		23.638529, 30.098572, 17.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.847073, 29.717443, 17.552736>,  <23.117710, 29.939299, 16.907326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.847073, 29.717443, 17.552736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161930, 29.943901, 17.650623>,  <23.350845, 30.079775, 17.709356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161930, 29.943901, 17.650623>,  <22.847073, 29.717443, 17.552736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.161930, 29.943901, 17.650623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493171, 0.339462, 0.800967,
		0.370389, -0.751164, 0.546411,
		0.787143, 0.566143, 0.244720,
		23.398073, 30.113745, 17.724039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947100, 29.598907, 18.245481>,  <22.847073, 29.717443, 17.552736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947100, 29.598907, 18.245481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.125551, 29.951988, 18.186417>,  <23.232622, 30.163837, 18.150978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.125551, 29.951988, 18.186417>,  <22.947100, 29.598907, 18.245481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.125551, 29.951988, 18.186417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431625, 0.356746, 0.828512,
		0.784007, -0.305890, 0.540152,
		0.446130, 0.882703, -0.147661,
		23.259390, 30.216799, 18.142118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.259262, 29.902176, 18.924955>,  <22.947100, 29.598907, 18.245481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.259262, 29.902176, 18.924955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.227686, 30.219185, 18.683071>,  <23.208740, 30.409391, 18.537941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.227686, 30.219185, 18.683071>,  <23.259262, 29.902176, 18.924955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227686, 30.219185, 18.683071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345660, 0.547208, 0.762287,
		0.935034, 0.269198, 0.230748,
		-0.078939, 0.792525, -0.604709,
		23.204004, 30.456942, 18.501657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461611, 30.419142, 19.279230>,  <23.259262, 29.902176, 18.924955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461611, 30.419142, 19.279230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.240690, 30.612038, 19.007229>,  <23.108137, 30.727776, 18.844028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.240690, 30.612038, 19.007229>,  <23.461611, 30.419142, 19.279230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.240690, 30.612038, 19.007229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499531, 0.461597, 0.733074,
		0.667405, 0.744562, -0.014048,
		-0.552303, 0.482240, -0.680004,
		23.074999, 30.756710, 18.803228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.571753, 31.168270, 19.411297>,  <23.461611, 30.419142, 19.279230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.571753, 31.168270, 19.411297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232771, 31.101978, 19.209564>,  <23.029381, 31.062202, 19.088524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232771, 31.101978, 19.209564>,  <23.571753, 31.168270, 19.411297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.232771, 31.101978, 19.209564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507986, 0.529060, 0.679739,
		0.154168, 0.832243, -0.532545,
		-0.847456, -0.165731, -0.504332,
		22.978535, 31.052259, 19.058264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.372026, 31.783943, 19.289440>,  <23.571753, 31.168270, 19.411297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.372026, 31.783943, 19.289440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040983, 31.564125, 19.243725>,  <22.842358, 31.432234, 19.216295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040983, 31.564125, 19.243725>,  <23.372026, 31.783943, 19.289440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.040983, 31.564125, 19.243725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470707, 0.568571, 0.674657,
		-0.305773, 0.612150, -0.729230,
		-0.827610, -0.549545, -0.114290,
		22.792700, 31.399261, 19.209438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.798740, 32.232193, 19.136189>,  <23.372026, 31.783943, 19.289440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.798740, 32.232193, 19.136189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.627886, 31.889896, 19.252983>,  <22.525373, 31.684517, 19.323059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.627886, 31.889896, 19.252983>,  <22.798740, 32.232193, 19.136189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627886, 31.889896, 19.252983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420056, 0.473767, 0.774014,
		-0.800692, 0.207958, -0.561823,
		-0.427136, -0.855744, 0.291987,
		22.499744, 31.633173, 19.340580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.103821, 32.451817, 19.239956>,  <22.798740, 32.232193, 19.136189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.103821, 32.451817, 19.239956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.123943, 32.100693, 19.430500>,  <22.136017, 31.890018, 19.544827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.123943, 32.100693, 19.430500>,  <22.103821, 32.451817, 19.239956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.123943, 32.100693, 19.430500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552627, 0.372827, 0.745388,
		-0.831909, -0.300748, -0.466346,
		0.050308, -0.877810, 0.476360,
		22.139036, 31.837349, 19.573408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.410395, 32.125084, 19.316257>,  <22.103821, 32.451817, 19.239956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.410395, 32.125084, 19.316257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640636, 31.969334, 19.603886>,  <21.778782, 31.875883, 19.776463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640636, 31.969334, 19.603886>,  <21.410395, 32.125084, 19.316257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640636, 31.969334, 19.603886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609322, 0.382215, 0.694722,
		-0.545348, -0.838032, -0.017250,
		0.575606, -0.389376, 0.719072,
		21.813318, 31.852520, 19.819607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930859, 31.791313, 19.879267>,  <21.410395, 32.125084, 19.316257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930859, 31.791313, 19.879267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281366, 31.827267, 20.068611>,  <21.491671, 31.848839, 20.182219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281366, 31.827267, 20.068611>,  <20.930859, 31.791313, 19.879267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281366, 31.827267, 20.068611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466871, 0.401224, 0.788068,
		-0.119089, -0.911559, 0.393545,
		0.876270, 0.089885, 0.473362,
		21.544247, 31.854233, 20.210619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834707, 31.591333, 20.601076>,  <20.930859, 31.791313, 19.879267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834707, 31.591333, 20.601076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140203, 31.848957, 20.618443>,  <21.323502, 32.003532, 20.628862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140203, 31.848957, 20.618443>,  <20.834707, 31.591333, 20.601076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140203, 31.848957, 20.618443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379447, 0.393516, 0.837356,
		0.522224, -0.655997, 0.544931,
		0.763742, 0.644060, 0.043413,
		21.369326, 32.042175, 20.631466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074127, 31.518635, 21.286861>,  <20.834707, 31.591333, 20.601076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074127, 31.518635, 21.286861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.239937, 31.862652, 21.167870>,  <21.339422, 32.069061, 21.096474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.239937, 31.862652, 21.167870>,  <21.074127, 31.518635, 21.286861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.239937, 31.862652, 21.167870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145180, 0.385197, 0.911343,
		0.898382, -0.334587, 0.284536,
		0.414526, 0.860043, -0.297479,
		21.364294, 32.120667, 21.078627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398394, 31.666939, 21.905067>,  <21.074127, 31.518635, 21.286861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398394, 31.666939, 21.905067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.408291, 32.012035, 21.703053>,  <21.414228, 32.219093, 21.581844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.408291, 32.012035, 21.703053>,  <21.398394, 31.666939, 21.905067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.408291, 32.012035, 21.703053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040908, 0.505643, 0.861772,
		0.998856, -0.000663, 0.047805,
		0.024743, 0.862742, -0.505038,
		21.415714, 32.270859, 21.551540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901974, 32.096939, 22.290239>,  <21.398394, 31.666939, 21.905067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901974, 32.096939, 22.290239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.674406, 32.358772, 22.091099>,  <21.537867, 32.515873, 21.971615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.674406, 32.358772, 22.091099>,  <21.901974, 32.096939, 22.290239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.674406, 32.358772, 22.091099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080026, 0.646560, 0.758654,
		0.818491, 0.391770, -0.420224,
		-0.568918, 0.654580, -0.497852,
		21.503731, 32.555145, 21.941744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.286667, 32.714569, 22.242931>,  <21.901974, 32.096939, 22.290239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.286667, 32.714569, 22.242931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.903975, 32.811630, 22.178703>,  <21.674358, 32.869869, 22.140165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.903975, 32.811630, 22.178703>,  <22.286667, 32.714569, 22.242931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.903975, 32.811630, 22.178703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041190, 0.659233, 0.750810,
		0.288042, 0.711710, -0.640704,
		-0.956731, 0.242655, -0.160571,
		21.616955, 32.884426, 22.130531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211380, 33.329514, 22.489079>,  <22.286667, 32.714569, 22.242931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211380, 33.329514, 22.489079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814686, 33.278229, 22.490841>,  <21.576670, 33.247459, 22.491898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.814686, 33.278229, 22.490841>,  <22.211380, 33.329514, 22.489079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814686, 33.278229, 22.490841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088932, 0.711866, 0.696662,
		-0.092455, 0.690514, -0.717386,
		-0.991737, -0.128209, 0.004407,
		21.517164, 33.239765, 22.492163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.866716, 34.017776, 22.340744>,  <22.211380, 33.329514, 22.489079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.866716, 34.017776, 22.340744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.594172, 33.777298, 22.507748>,  <21.430645, 33.633011, 22.607950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.594172, 33.777298, 22.507748>,  <21.866716, 34.017776, 22.340744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594172, 33.777298, 22.507748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258507, 0.731301, 0.631169,
		-0.684779, 0.322124, -0.653692,
		-0.681360, -0.601195, 0.417508,
		21.389763, 33.596939, 22.632999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.206469, 34.501808, 22.475519>,  <21.866716, 34.017776, 22.340744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.206469, 34.501808, 22.475519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.163906, 34.163261, 22.684265>,  <21.138369, 33.960133, 22.809513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.163906, 34.163261, 22.684265>,  <21.206469, 34.501808, 22.475519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.163906, 34.163261, 22.684265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365351, 0.521412, 0.771134,
		-0.924768, -0.108611, -0.364702,
		-0.106406, -0.846364, 0.521867,
		21.131985, 33.909351, 22.840826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494579, 34.485428, 22.738924>,  <21.206469, 34.501808, 22.475519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494579, 34.485428, 22.738924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.710314, 34.259460, 22.988720>,  <20.839754, 34.123882, 23.138597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.710314, 34.259460, 22.988720>,  <20.494579, 34.485428, 22.738924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710314, 34.259460, 22.988720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402215, 0.478719, 0.780417,
		-0.739826, -0.672085, 0.030972,
		0.539334, -0.564915, 0.624492,
		20.872114, 34.089985, 23.176067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150639, 35.004959, 22.212706>,  <20.494579, 34.485428, 22.738924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150639, 35.004959, 22.212706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.228025, 35.343071, 22.013481>,  <20.274458, 35.545940, 21.893946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.228025, 35.343071, 22.013481>,  <20.150639, 35.004959, 22.212706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.228025, 35.343071, 22.013481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792678, -0.433813, -0.428331,
		-0.578127, -0.311935, -0.753967,
		0.193469, 0.845283, -0.498063,
		20.286066, 35.596657, 21.864061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.208494, 34.859795, 21.511356>,  <20.150639, 35.004959, 22.212706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.208494, 34.859795, 21.511356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.383789, 35.218102, 21.541145>,  <20.488966, 35.433086, 21.559019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.383789, 35.218102, 21.541145>,  <20.208494, 34.859795, 21.511356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383789, 35.218102, 21.541145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746925, -0.316815, -0.584578,
		-0.500052, 0.311810, -0.807912,
		0.438236, 0.895769, 0.074475,
		20.515261, 35.486832, 21.563488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359627, 35.098629, 20.823839>,  <20.208494, 34.859795, 21.511356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359627, 35.098629, 20.823839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.600035, 35.334625, 21.039501>,  <20.744280, 35.476223, 21.168898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.600035, 35.334625, 21.039501>,  <20.359627, 35.098629, 20.823839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.600035, 35.334625, 21.039501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755329, -0.198788, -0.624469,
		-0.261253, 0.782557, -0.565112,
		0.601020, 0.589990, 0.539154,
		20.780340, 35.511623, 21.201248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466908, 35.611828, 20.375395>,  <20.359627, 35.098629, 20.823839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466908, 35.611828, 20.375395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.766714, 35.571033, 20.637028>,  <20.946598, 35.546558, 20.794008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.766714, 35.571033, 20.637028>,  <20.466908, 35.611828, 20.375395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766714, 35.571033, 20.637028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620764, -0.234940, -0.747968,
		0.229951, 0.966645, -0.112784,
		0.749517, -0.101984, 0.654083,
		20.991570, 35.540440, 20.833252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201729, 35.814735, 20.004620>,  <20.466908, 35.611828, 20.375395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201729, 35.814735, 20.004620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309591, 35.626358, 20.340595>,  <21.374310, 35.513332, 20.542181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309591, 35.626358, 20.340595>,  <21.201729, 35.814735, 20.004620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309591, 35.626358, 20.340595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839644, -0.312068, -0.444535,
		0.471469, 0.825121, 0.311275,
		0.269657, -0.470945, 0.839938,
		21.390488, 35.485073, 20.592577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.842173, 35.996326, 20.086103>,  <21.201729, 35.814735, 20.004620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.842173, 35.996326, 20.086103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.851187, 35.659138, 20.301098>,  <21.856594, 35.456825, 20.430096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.851187, 35.659138, 20.301098>,  <21.842173, 35.996326, 20.086103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851187, 35.659138, 20.301098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861230, -0.256661, -0.438643,
		0.507716, 0.472785, 0.720208,
		0.022534, -0.842971, 0.537487,
		21.857946, 35.406246, 20.462343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.552620, 35.939617, 20.245979>,  <21.842173, 35.996326, 20.086103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.552620, 35.939617, 20.245979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378996, 35.582653, 20.295277>,  <22.274820, 35.368473, 20.324856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378996, 35.582653, 20.295277>,  <22.552620, 35.939617, 20.245979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378996, 35.582653, 20.295277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833039, -0.449683, -0.322231,
		0.342983, -0.037202, 0.938605,
		-0.434062, -0.892413, 0.123243,
		22.248777, 35.314930, 20.332249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.074430, 35.559296, 20.326307>,  <22.552620, 35.939617, 20.245979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.074430, 35.559296, 20.326307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802471, 35.270489, 20.275043>,  <22.639296, 35.097202, 20.244286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802471, 35.270489, 20.275043>,  <23.074430, 35.559296, 20.326307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.802471, 35.270489, 20.275043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718119, -0.620185, -0.315715,
		0.148469, -0.306689, 0.940159,
		-0.679899, -0.722020, -0.128160,
		22.598501, 35.053883, 20.236595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.352226, 34.942081, 20.551344>,  <23.074430, 35.559296, 20.326307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.352226, 34.942081, 20.551344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.068256, 34.793148, 20.312222>,  <22.897875, 34.703789, 20.168749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.068256, 34.793148, 20.312222>,  <23.352226, 34.942081, 20.551344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.068256, 34.793148, 20.312222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675579, -0.599860, -0.428674,
		-0.198991, -0.708193, 0.677396,
		-0.709927, -0.372332, -0.597806,
		22.855278, 34.681450, 20.132879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364389, 34.166924, 20.605503>,  <23.352226, 34.942081, 20.551344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364389, 34.166924, 20.605503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.231295, 34.284981, 20.247246>,  <23.151438, 34.355816, 20.032291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.231295, 34.284981, 20.247246>,  <23.364389, 34.166924, 20.605503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.231295, 34.284981, 20.247246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559365, -0.702866, -0.439420,
		-0.759208, -0.647203, 0.068777,
		-0.332735, 0.295140, -0.895645,
		23.131474, 34.373524, 19.978552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.508869, 33.600353, 20.182549>,  <23.364389, 34.166924, 20.605503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.508869, 33.600353, 20.182549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.374884, 33.852943, 19.902824>,  <23.294493, 34.004498, 19.734989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.374884, 33.852943, 19.902824>,  <23.508869, 33.600353, 20.182549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.374884, 33.852943, 19.902824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349142, -0.606169, -0.714604,
		-0.875156, -0.483526, -0.017430,
		-0.334964, 0.631476, -0.699312,
		23.274395, 34.042385, 19.693031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171953, 33.277489, 19.694672>,  <23.508869, 33.600353, 20.182549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171953, 33.277489, 19.694672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.286587, 33.608253, 19.501144>,  <23.355368, 33.806713, 19.385027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.286587, 33.608253, 19.501144>,  <23.171953, 33.277489, 19.694672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.286587, 33.608253, 19.501144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292491, -0.556409, -0.777726,
		-0.912315, 0.081370, -0.401323,
		0.286584, 0.826915, -0.483820,
		23.372562, 33.856327, 19.355999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.099585, 33.114441, 19.003916>,  <23.171953, 33.277489, 19.694672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.099585, 33.114441, 19.003916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.312983, 33.451271, 18.972195>,  <23.441021, 33.653370, 18.953163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.312983, 33.451271, 18.972195>,  <23.099585, 33.114441, 19.003916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.312983, 33.451271, 18.972195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476718, -0.376816, -0.794197,
		-0.698657, 0.385897, -0.602464,
		0.533496, 0.842077, -0.079301,
		23.473032, 33.703896, 18.948404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.112640, 33.371113, 18.271049>,  <23.099585, 33.114441, 19.003916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.112640, 33.371113, 18.271049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.437977, 33.528278, 18.442677>,  <23.633179, 33.622578, 18.545652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.437977, 33.528278, 18.442677>,  <23.112640, 33.371113, 18.271049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.437977, 33.528278, 18.442677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559900, -0.328244, -0.760768,
		-0.158074, 0.858998, -0.486965,
		0.813341, 0.392910, 0.429066,
		23.681980, 33.646152, 18.571396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.400011, 33.758373, 17.780939>,  <23.112640, 33.371113, 18.271049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.400011, 33.758373, 17.780939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.689640, 33.666264, 18.040997>,  <23.863419, 33.610996, 18.197031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.689640, 33.666264, 18.040997>,  <23.400011, 33.758373, 17.780939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.689640, 33.666264, 18.040997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565623, -0.341172, -0.750781,
		0.394700, 0.911358, -0.116783,
		0.724073, -0.230278, 0.650146,
		23.906862, 33.597179, 18.236040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.967512, 34.167862, 17.606499>,  <23.400011, 33.758373, 17.780939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.967512, 34.167862, 17.606499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078499, 33.840878, 17.808395>,  <24.145092, 33.644688, 17.929533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078499, 33.840878, 17.808395>,  <23.967512, 34.167862, 17.606499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.078499, 33.840878, 17.808395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562696, -0.287551, -0.775040,
		0.778707, 0.499064, 0.380198,
		0.277468, -0.817465, 0.504739,
		24.161739, 33.595638, 17.959818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610723, 34.083443, 17.350822>,  <23.967512, 34.167862, 17.606499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610723, 34.083443, 17.350822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.529779, 33.726799, 17.512848>,  <24.481213, 33.512814, 17.610064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.529779, 33.726799, 17.512848>,  <24.610723, 34.083443, 17.350822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529779, 33.726799, 17.512848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443106, -0.452224, -0.774048,
		0.873331, 0.022850, 0.486591,
		-0.202361, -0.891612, 0.405066,
		24.469070, 33.459316, 17.634367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075735, 33.718929, 17.113911>,  <24.610723, 34.083443, 17.350822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075735, 33.718929, 17.113911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.852692, 33.414078, 17.245506>,  <24.718866, 33.231167, 17.324463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.852692, 33.414078, 17.245506>,  <25.075735, 33.718929, 17.113911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852692, 33.414078, 17.245506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487555, -0.621444, -0.613267,
		0.671837, -0.181563, 0.718102,
		-0.557607, -0.762130, 0.328988,
		24.685410, 33.185440, 17.344202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506704, 33.074181, 17.180677>,  <25.075735, 33.718929, 17.113911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506704, 33.074181, 17.180677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.133215, 32.932465, 17.160133>,  <24.909121, 32.847435, 17.147806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.133215, 32.932465, 17.160133>,  <25.506704, 33.074181, 17.180677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133215, 32.932465, 17.160133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346227, -0.857205, -0.381218,
		0.091034, -0.373735, 0.923058,
		-0.933723, -0.354291, -0.051362,
		24.853098, 32.826176, 17.144724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561855, 32.393032, 17.413263>,  <25.506704, 33.074181, 17.180677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561855, 32.393032, 17.413263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.239079, 32.417007, 17.178230>,  <25.045412, 32.431393, 17.037210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.239079, 32.417007, 17.178230>,  <25.561855, 32.393032, 17.413263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239079, 32.417007, 17.178230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252340, -0.864483, -0.434735,
		-0.534015, -0.499076, 0.682460,
		-0.806940, 0.059943, -0.587583,
		24.996996, 32.434990, 17.001955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156157, 31.812140, 17.646429>,  <25.561855, 32.393032, 17.413263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156157, 31.812140, 17.646429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.063087, 31.891144, 17.265514>,  <25.007246, 31.938547, 17.036964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.063087, 31.891144, 17.265514>,  <25.156157, 31.812140, 17.646429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063087, 31.891144, 17.265514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425424, -0.859844, -0.282283,
		-0.874573, -0.470805, 0.116037,
		-0.232674, 0.197512, -0.952288,
		24.993286, 31.950397, 16.979828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.755121, 28.858271, 24.754463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989767, 28.910660, 25.074146>,  <26.130554, 28.942093, 25.265957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989767, 28.910660, 25.074146>,  <25.755121, 28.858271, 24.754463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989767, 28.910660, 25.074146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138088, 0.956211, -0.258056,
		-0.798008, 0.261740, 0.542840,
		0.586613, 0.130971, 0.799207,
		26.165751, 28.949951, 25.313908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586956, 29.390177, 24.889418>,  <25.755121, 28.858271, 24.754463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586956, 29.390177, 24.889418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922974, 29.366600, 25.105141>,  <26.124584, 29.352455, 25.234575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922974, 29.366600, 25.105141>,  <25.586956, 29.390177, 24.889418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922974, 29.366600, 25.105141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209738, 0.952071, -0.222644,
		-0.500338, 0.300144, 0.812143,
		0.840043, -0.058940, 0.539309,
		26.174986, 29.348919, 25.266933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610800, 29.954910, 25.295197>,  <25.586956, 29.390177, 24.889418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610800, 29.954910, 25.295197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983763, 29.822685, 25.236763>,  <26.207541, 29.743349, 25.201702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983763, 29.822685, 25.236763>,  <25.610800, 29.954910, 25.295197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983763, 29.822685, 25.236763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302273, 0.934870, -0.186141,
		0.198102, 0.129402, 0.971602,
		0.932409, -0.330564, -0.146085,
		26.263485, 29.723516, 25.192938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033684, 30.359098, 25.715723>,  <25.610800, 29.954910, 25.295197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033684, 30.359098, 25.715723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280516, 30.210850, 25.438061>,  <26.428616, 30.121901, 25.271463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280516, 30.210850, 25.438061>,  <26.033684, 30.359098, 25.715723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280516, 30.210850, 25.438061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460371, 0.885452, -0.063504,
		0.638178, -0.280382, 0.717018,
		0.617079, -0.370621, -0.694156,
		26.465639, 30.099663, 25.229815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631744, 30.752371, 25.740313>,  <26.033684, 30.359098, 25.715723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631744, 30.752371, 25.740313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741268, 30.569458, 25.401863>,  <26.806982, 30.459711, 25.198793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741268, 30.569458, 25.401863>,  <26.631744, 30.752371, 25.740313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741268, 30.569458, 25.401863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461822, 0.834198, -0.301388,
		0.843653, -0.308236, 0.439592,
		0.273808, -0.457280, -0.846123,
		26.823410, 30.432274, 25.148026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316114, 30.968025, 25.650124>,  <26.631744, 30.752371, 25.740313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316114, 30.968025, 25.650124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170782, 30.851173, 25.296253>,  <27.083582, 30.781063, 25.083931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170782, 30.851173, 25.296253>,  <27.316114, 30.968025, 25.650124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170782, 30.851173, 25.296253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317229, 0.854036, -0.412297,
		0.875990, -0.430444, -0.217624,
		-0.363329, -0.292131, -0.884675,
		27.061783, 30.763535, 25.030851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785271, 31.200184, 25.270960>,  <27.316114, 30.968025, 25.650124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785271, 31.200184, 25.270960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449432, 31.141491, 25.061752>,  <27.247929, 31.106276, 24.936228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449432, 31.141491, 25.061752>,  <27.785271, 31.200184, 25.270960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449432, 31.141491, 25.061752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182816, 0.830335, -0.526424,
		0.511524, -0.537600, -0.670321,
		-0.839596, -0.146734, -0.523018,
		27.197554, 31.097471, 24.904846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010103, 31.332335, 24.593351>,  <27.785271, 31.200184, 25.270960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010103, 31.332335, 24.593351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612675, 31.359356, 24.557014>,  <27.374218, 31.375568, 24.535212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612675, 31.359356, 24.557014>,  <28.010103, 31.332335, 24.593351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612675, 31.359356, 24.557014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100012, 0.899774, -0.424741,
		0.053044, -0.431096, -0.900746,
		-0.993571, 0.067555, -0.090842,
		27.314604, 31.379622, 24.529762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939051, 31.735945, 24.037666>,  <28.010103, 31.332335, 24.593351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939051, 31.735945, 24.037666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588268, 31.750076, 24.229374>,  <27.377798, 31.758554, 24.344398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588268, 31.750076, 24.229374>,  <27.939051, 31.735945, 24.037666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588268, 31.750076, 24.229374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126724, 0.944997, -0.301531,
		-0.463561, -0.325164, -0.824245,
		-0.876956, 0.035327, 0.479270,
		27.325182, 31.760674, 24.373156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429729, 32.026649, 23.618645>,  <27.939051, 31.735945, 24.037666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429729, 32.026649, 23.618645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269331, 32.102528, 23.977135>,  <27.173092, 32.148056, 24.192228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269331, 32.102528, 23.977135>,  <27.429729, 32.026649, 23.618645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269331, 32.102528, 23.977135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215534, 0.931326, -0.293561,
		-0.890364, -0.310883, -0.332572,
		-0.400996, 0.189695, 0.896224,
		27.149033, 32.159435, 24.246002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772358, 32.311611, 23.486563>,  <27.429729, 32.026649, 23.618645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772358, 32.311611, 23.486563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855759, 32.396725, 23.868401>,  <26.905798, 32.447792, 24.097504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855759, 32.396725, 23.868401>,  <26.772358, 32.311611, 23.486563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855759, 32.396725, 23.868401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389288, 0.913450, -0.118587,
		-0.897208, -0.346887, 0.273289,
		0.208500, 0.212785, 0.954594,
		26.918308, 32.460560, 24.154779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182056, 32.643795, 23.847170>,  <26.772358, 32.311611, 23.486563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182056, 32.643795, 23.847170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513393, 32.760719, 24.038334>,  <26.712196, 32.830875, 24.153032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513393, 32.760719, 24.038334>,  <26.182056, 32.643795, 23.847170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513393, 32.760719, 24.038334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264833, 0.956061, -0.125742,
		-0.493669, -0.022410, 0.869361,
		0.828345, 0.292310, 0.477912,
		26.761896, 32.848412, 24.181707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948820, 33.173229, 24.256065>,  <26.182056, 32.643795, 23.847170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948820, 33.173229, 24.256065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344103, 33.230820, 24.235195>,  <26.581272, 33.265373, 24.222673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344103, 33.230820, 24.235195>,  <25.948820, 33.173229, 24.256065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344103, 33.230820, 24.235195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146182, 0.988394, -0.041326,
		0.045619, 0.048465, 0.997783,
		0.988205, 0.143973, -0.052174,
		26.640564, 33.274010, 24.219543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555326, 33.769363, 23.993900>,  <25.948820, 33.173229, 24.256065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555326, 33.769363, 23.993900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829744, 33.829693, 23.709198>,  <25.994396, 33.865891, 23.538378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829744, 33.829693, 23.709198>,  <25.555326, 33.769363, 23.993900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829744, 33.829693, 23.709198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336334, -0.801730, -0.494074,
		-0.645152, 0.578344, -0.499296,
		0.686046, 0.150822, -0.711754,
		26.035559, 33.874939, 23.495672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950710, 33.406475, 24.205219>,  <25.555326, 33.769363, 23.993900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950710, 33.406475, 24.205219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600834, 33.469349, 24.388615>,  <24.390907, 33.507072, 24.498652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600834, 33.469349, 24.388615>,  <24.950710, 33.406475, 24.205219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600834, 33.469349, 24.388615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366878, -0.403443, 0.838233,
		0.316729, 0.901403, 0.295221,
		-0.874691, 0.157182, 0.458487,
		24.338427, 33.516502, 24.526161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047049, 33.661320, 24.812138>,  <24.950710, 33.406475, 24.205219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047049, 33.661320, 24.812138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690239, 33.485054, 24.852356>,  <24.476152, 33.379295, 24.876486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690239, 33.485054, 24.852356>,  <25.047049, 33.661320, 24.812138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.690239, 33.485054, 24.852356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288558, -0.384002, 0.877084,
		-0.347889, 0.811393, 0.469696,
		-0.892024, -0.440662, 0.100544,
		24.422632, 33.352856, 24.882519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872143, 33.789528, 25.499552>,  <25.047049, 33.661320, 24.812138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872143, 33.789528, 25.499552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650517, 33.479122, 25.379013>,  <24.517540, 33.292877, 25.306690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650517, 33.479122, 25.379013>,  <24.872143, 33.789528, 25.499552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650517, 33.479122, 25.379013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067840, -0.402876, 0.912737,
		-0.829704, 0.485274, 0.275865,
		-0.554067, -0.776016, -0.301347,
		24.484297, 33.246319, 25.288609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425861, 33.720757, 26.079090>,  <24.872143, 33.789528, 25.499552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425861, 33.720757, 26.079090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417843, 33.374825, 25.878422>,  <24.413031, 33.167267, 25.758020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417843, 33.374825, 25.878422>,  <24.425861, 33.720757, 26.079090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417843, 33.374825, 25.878422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066158, -0.499523, 0.863771,
		-0.997608, 0.050507, -0.047200,
		-0.020048, -0.864827, -0.501670,
		24.411829, 33.115376, 25.727921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.182428, 33.359955, 26.530312>,  <24.425861, 33.720757, 26.079090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.182428, 33.359955, 26.530312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313364, 33.090542, 26.265224>,  <24.391926, 32.928894, 26.106173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313364, 33.090542, 26.265224>,  <24.182428, 33.359955, 26.530312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313364, 33.090542, 26.265224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132301, -0.661782, 0.737930,
		-0.935599, -0.329233, -0.127518,
		0.327340, -0.673536, -0.662720,
		24.411566, 32.888481, 26.066408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.897358, 32.702469, 26.650166>,  <24.182428, 33.359955, 26.530312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.897358, 32.702469, 26.650166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.221037, 32.580658, 26.449184>,  <24.415245, 32.507568, 26.328596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.221037, 32.580658, 26.449184>,  <23.897358, 32.702469, 26.650166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.221037, 32.580658, 26.449184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263506, -0.576244, 0.773633,
		-0.525132, -0.758422, -0.386049,
		0.809198, -0.304533, -0.502452,
		24.463797, 32.489300, 26.298449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.863171, 31.992369, 26.742170>,  <23.897358, 32.702469, 26.650166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.863171, 31.992369, 26.742170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241735, 32.028522, 26.618149>,  <24.468874, 32.050213, 26.543736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241735, 32.028522, 26.618149>,  <23.863171, 31.992369, 26.742170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241735, 32.028522, 26.618149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279795, -0.708952, 0.647381,
		-0.161301, -0.699441, -0.696250,
		0.946413, 0.090384, -0.310055,
		24.525660, 32.055637, 26.525133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.175102, 31.273371, 26.693867>,  <23.863171, 31.992369, 26.742170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.175102, 31.273371, 26.693867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481102, 31.530060, 26.715668>,  <24.664701, 31.684072, 26.728748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481102, 31.530060, 26.715668>,  <24.175102, 31.273371, 26.693867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481102, 31.530060, 26.715668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427337, -0.569095, 0.702505,
		0.481830, -0.514125, -0.709588,
		0.764998, 0.641722, 0.054503,
		24.710602, 31.722576, 26.732018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879549, 31.029804, 26.392332>,  <24.175102, 31.273371, 26.693867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879549, 31.029804, 26.392332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.995401, 31.301273, 26.662300>,  <25.064913, 31.464155, 26.824282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.995401, 31.301273, 26.662300>,  <24.879549, 31.029804, 26.392332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995401, 31.301273, 26.662300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464880, -0.716131, 0.520618,
		0.836660, 0.162970, -0.522915,
		0.289631, 0.678673, 0.674920,
		25.082291, 31.504875, 26.864777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688522, 30.899607, 26.573433>,  <24.879549, 31.029804, 26.392332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688522, 30.899607, 26.573433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554743, 31.158436, 26.847496>,  <25.474476, 31.313734, 27.011934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554743, 31.158436, 26.847496>,  <25.688522, 30.899607, 26.573433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554743, 31.158436, 26.847496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654948, -0.363168, 0.662686,
		0.677633, 0.670376, -0.302339,
		-0.334449, 0.647074, 0.685156,
		25.454409, 31.352558, 27.053043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226120, 31.035074, 26.797850>,  <25.688522, 30.899607, 26.573433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226120, 31.035074, 26.797850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967299, 31.144642, 27.082466>,  <25.812006, 31.210382, 27.253237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967299, 31.144642, 27.082466>,  <26.226120, 31.035074, 26.797850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967299, 31.144642, 27.082466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566597, -0.451720, 0.689142,
		0.510186, 0.849069, 0.137086,
		-0.647053, 0.273919, 0.711541,
		25.773182, 31.226818, 27.295929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654778, 31.216011, 27.356461>,  <26.226120, 31.035074, 26.797850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654778, 31.216011, 27.356461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295376, 31.154690, 27.520988>,  <26.079735, 31.117897, 27.619705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295376, 31.154690, 27.520988>,  <26.654778, 31.216011, 27.356461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295376, 31.154690, 27.520988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430803, -0.487761, 0.759274,
		0.084229, 0.859411, 0.504299,
		-0.898507, -0.153301, 0.411321,
		26.025824, 31.108700, 27.644384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871143, 31.183231, 28.034904>,  <26.654778, 31.216011, 27.356461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871143, 31.183231, 28.034904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512545, 31.007385, 28.056938>,  <26.297386, 30.901878, 28.070158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512545, 31.007385, 28.056938>,  <26.871143, 31.183231, 28.034904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512545, 31.007385, 28.056938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341340, -0.606062, 0.718454,
		-0.282458, 0.662893, 0.693390,
		-0.896495, -0.439615, 0.055085,
		26.243595, 30.875502, 28.073463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771814, 30.987789, 28.707533>,  <26.871143, 31.183231, 28.034904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771814, 30.987789, 28.707533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503778, 30.743156, 28.539272>,  <26.342957, 30.596376, 28.438316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503778, 30.743156, 28.539272>,  <26.771814, 30.987789, 28.707533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503778, 30.743156, 28.539272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221287, -0.705527, 0.673248,
		-0.708528, 0.358052, 0.608101,
		-0.670090, -0.611580, -0.420653,
		26.302752, 30.559683, 28.413076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896730, 31.150860, 29.423805>,  <26.771814, 30.987789, 28.707533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896730, 31.150860, 29.423805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276073, 31.109745, 29.543839>,  <27.503679, 31.085077, 29.615858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276073, 31.109745, 29.543839>,  <26.896730, 31.150860, 29.423805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276073, 31.109745, 29.543839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282466, 0.704092, -0.651512,
		-0.144322, 0.702630, 0.696765,
		0.948359, -0.102785, 0.300085,
		27.560581, 31.078909, 29.633863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166895, 31.806496, 29.689980>,  <26.896730, 31.150860, 29.423805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166895, 31.806496, 29.689980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489922, 31.600376, 29.575226>,  <27.683737, 31.476704, 29.506374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489922, 31.600376, 29.575226>,  <27.166895, 31.806496, 29.689980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489922, 31.600376, 29.575226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267251, 0.753352, -0.600865,
		0.525749, 0.408569, 0.746096,
		0.807567, -0.515299, -0.286884,
		27.732191, 31.445786, 29.489161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721230, 32.129944, 29.850166>,  <27.166895, 31.806496, 29.689980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721230, 32.129944, 29.850166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863928, 31.909313, 29.548573>,  <27.949547, 31.776934, 29.367617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863928, 31.909313, 29.548573>,  <27.721230, 32.129944, 29.850166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863928, 31.909313, 29.548573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405190, 0.818581, -0.407120,
		0.841755, -0.160268, 0.515521,
		0.356748, -0.551579, -0.753984,
		27.970953, 31.743839, 29.322378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402632, 32.544861, 29.638655>,  <27.721230, 32.129944, 29.850166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402632, 32.544861, 29.638655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313324, 32.305111, 29.331173>,  <28.259739, 32.161263, 29.146685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313324, 32.305111, 29.331173>,  <28.402632, 32.544861, 29.638655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313324, 32.305111, 29.331173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481403, 0.617924, -0.621627,
		0.847586, -0.508846, 0.150577,
		-0.223267, -0.599371, -0.768704,
		28.246344, 32.125301, 29.100561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062044, 32.408710, 29.411829>,  <28.402632, 32.544861, 29.638655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062044, 32.408710, 29.411829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803257, 32.325634, 29.118355>,  <28.647985, 32.275787, 28.942270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803257, 32.325634, 29.118355>,  <29.062044, 32.408710, 29.411829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803257, 32.325634, 29.118355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468400, 0.651003, -0.597324,
		0.601692, -0.730109, -0.323895,
		-0.646968, -0.207693, -0.733687,
		28.609167, 32.263325, 28.898249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419603, 32.257195, 28.724220>,  <29.062044, 32.408710, 29.411829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419603, 32.257195, 28.724220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052370, 32.361336, 28.604660>,  <28.832029, 32.423820, 28.532925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052370, 32.361336, 28.604660>,  <29.419603, 32.257195, 28.724220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052370, 32.361336, 28.604660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394635, 0.671159, -0.627542,
		0.037229, -0.694093, -0.718922,
		-0.918084, 0.260349, -0.298900,
		28.776945, 32.439442, 28.514990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453236, 32.228386, 27.954926>,  <29.419603, 32.257195, 28.724220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453236, 32.228386, 27.954926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143955, 32.458176, 28.062363>,  <28.958387, 32.596050, 28.126825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143955, 32.458176, 28.062363>,  <29.453236, 32.228386, 27.954926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143955, 32.458176, 28.062363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324074, 0.721996, -0.611309,
		-0.545106, -0.385619, -0.744418,
		-0.773199, 0.574474, 0.268595,
		28.911995, 32.630516, 28.142941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028326, 32.507519, 27.321854>,  <29.453236, 32.228386, 27.954926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028326, 32.507519, 27.321854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944744, 32.769318, 27.612499>,  <28.894596, 32.926399, 27.786886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944744, 32.769318, 27.612499>,  <29.028326, 32.507519, 27.321854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944744, 32.769318, 27.612499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267790, 0.752909, -0.601179,
		-0.940546, 0.068961, -0.332592,
		-0.208954, 0.654502, 0.726613,
		28.882057, 32.965668, 27.830482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717381, 33.001991, 26.976608>,  <29.028326, 32.507519, 27.321854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717381, 33.001991, 26.976608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812284, 33.206608, 27.306950>,  <28.869226, 33.329376, 27.505156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812284, 33.206608, 27.306950>,  <28.717381, 33.001991, 26.976608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812284, 33.206608, 27.306950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137239, 0.823953, -0.549789,
		-0.961704, 0.243781, 0.125286,
		0.237258, 0.511540, 0.825855,
		28.883461, 33.360069, 27.554707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349466, 33.591713, 26.832859>,  <28.717381, 33.001991, 26.976608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349466, 33.591713, 26.832859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614834, 33.661453, 27.123920>,  <28.774054, 33.703297, 27.298557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614834, 33.661453, 27.123920>,  <28.349466, 33.591713, 26.832859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614834, 33.661453, 27.123920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354144, 0.783491, -0.510612,
		-0.659134, 0.596443, 0.458037,
		0.663419, 0.174350, 0.727652,
		28.813860, 33.713757, 27.342216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322216, 34.256969, 26.817696>,  <28.349466, 33.591713, 26.832859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322216, 34.256969, 26.817696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662519, 34.210476, 27.022713>,  <28.866701, 34.182579, 27.145723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662519, 34.210476, 27.022713>,  <28.322216, 34.256969, 26.817696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662519, 34.210476, 27.022713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380371, 0.809150, -0.447878,
		-0.362667, 0.575993, 0.732601,
		0.850759, -0.116230, 0.512543,
		28.917747, 34.175606, 27.176476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527138, 34.865730, 26.931755>,  <28.322216, 34.256969, 26.817696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527138, 34.865730, 26.931755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860357, 34.656685, 27.004307>,  <29.060289, 34.531258, 27.047838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860357, 34.656685, 27.004307>,  <28.527138, 34.865730, 26.931755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860357, 34.656685, 27.004307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507616, 0.591828, -0.626151,
		0.219892, 0.613687, 0.758311,
		0.833050, -0.522617, 0.181379,
		29.110273, 34.499901, 27.058722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.385521, 29.439888, 33.131107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.607819, 29.214096, 32.886971>,  <27.741198, 29.078621, 32.740490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.607819, 29.214096, 32.886971>,  <27.385521, 29.439888, 33.131107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607819, 29.214096, 32.886971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042173, 0.714063, -0.698810,
		0.830283, 0.414099, 0.373031,
		0.555744, -0.564479, -0.610338,
		27.774542, 29.044752, 32.703869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915258, 29.873117, 32.811367>,  <27.385521, 29.439888, 33.131107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915258, 29.873117, 32.811367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.838526, 29.570862, 32.560860>,  <27.792486, 29.389509, 32.410557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.838526, 29.570862, 32.560860>,  <27.915258, 29.873117, 32.811367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838526, 29.570862, 32.560860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011352, 0.639786, -0.768469,
		0.981362, -0.140307, -0.131308,
		-0.191831, -0.755637, -0.626269,
		27.780977, 29.344172, 32.372978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223024, 30.159882, 32.238987>,  <27.915258, 29.873117, 32.811367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223024, 30.159882, 32.238987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.054405, 29.840988, 32.066143>,  <27.953234, 29.649652, 31.962437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.054405, 29.840988, 32.066143>,  <28.223024, 30.159882, 32.238987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054405, 29.840988, 32.066143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016110, 0.469856, -0.882596,
		0.906662, -0.379019, -0.185224,
		-0.421549, -0.797233, -0.432107,
		27.927940, 29.601818, 31.936510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679813, 29.889616, 31.670250>,  <28.223024, 30.159882, 32.238987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679813, 29.889616, 31.670250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.310534, 29.758698, 31.589676>,  <28.088964, 29.680145, 31.541332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.310534, 29.758698, 31.589676>,  <28.679813, 29.889616, 31.670250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310534, 29.758698, 31.589676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067290, 0.378380, -0.923201,
		0.378380, -0.865855, -0.327297,
		0.923201, 0.327297, 0.201434,
		28.033573, 29.660509, 31.529245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655210, 29.754385, 31.064867>,  <28.679813, 29.889616, 31.670250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655210, 29.754385, 31.064867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258478, 29.792065, 31.099266>,  <28.020439, 29.814672, 31.119905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258478, 29.792065, 31.099266>,  <28.655210, 29.754385, 31.064867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258478, 29.792065, 31.099266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031394, 0.473192, -0.880400,
		-0.123624, -0.875909, -0.466370,
		-0.991833, 0.094198, 0.085996,
		27.960928, 29.820324, 31.125065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384632, 29.505232, 30.507256>,  <28.655210, 29.754385, 31.064867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384632, 29.505232, 30.507256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.087738, 29.735336, 30.644753>,  <27.909601, 29.873400, 30.727251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.087738, 29.735336, 30.644753>,  <28.384632, 29.505232, 30.507256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087738, 29.735336, 30.644753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035885, 0.546326, -0.836804,
		-0.669177, -0.608771, -0.426145,
		-0.742236, 0.575262, 0.343743,
		27.865067, 29.907915, 30.747875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911209, 29.479307, 29.998341>,  <28.384632, 29.505232, 30.507256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911209, 29.479307, 29.998341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.827803, 29.807285, 30.211586>,  <27.777758, 30.004072, 30.339533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.827803, 29.807285, 30.211586>,  <27.911209, 29.479307, 29.998341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827803, 29.807285, 30.211586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004584, 0.544272, -0.838896,
		-0.978008, -0.177368, -0.109731,
		-0.208517, 0.819944, 0.533116,
		27.765247, 30.053268, 30.371521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468637, 29.907785, 29.523338>,  <27.911209, 29.479307, 29.998341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468637, 29.907785, 29.523338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.578430, 30.165970, 29.808445>,  <27.644306, 30.320881, 29.979509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.578430, 30.165970, 29.808445>,  <27.468637, 29.907785, 29.523338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578430, 30.165970, 29.808445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117232, 0.758169, -0.641433,
		-0.954419, 0.092504, 0.283774,
		0.274484, 0.645463, 0.712767,
		27.660776, 30.359610, 30.022276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050568, 30.426397, 29.450750>,  <27.468637, 29.907785, 29.523338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050568, 30.426397, 29.450750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.359980, 30.563366, 29.664066>,  <27.545628, 30.645548, 29.792055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.359980, 30.563366, 29.664066>,  <27.050568, 30.426397, 29.450750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359980, 30.563366, 29.664066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210547, 0.654828, -0.725858,
		-0.597763, 0.673756, 0.434433,
		0.773530, 0.342423, 0.533289,
		27.592039, 30.666092, 29.824053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355257, 30.662565, 29.282118>,  <27.050568, 30.426397, 29.450750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355257, 30.662565, 29.282118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.273317, 30.423840, 28.971802>,  <26.224154, 30.280605, 28.785612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.273317, 30.423840, 28.971802>,  <26.355257, 30.662565, 29.282118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273317, 30.423840, 28.971802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032471, -0.788020, 0.614793,
		-0.978255, 0.151131, 0.142047,
		-0.204850, -0.596812, -0.775791,
		26.211863, 30.244797, 28.739065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900196, 30.097897, 29.583157>,  <26.355257, 30.662565, 29.282118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900196, 30.097897, 29.583157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.066984, 29.979057, 29.239559>,  <26.167057, 29.907753, 29.033401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.066984, 29.979057, 29.239559>,  <25.900196, 30.097897, 29.583157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066984, 29.979057, 29.239559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011896, -0.943205, 0.331998,
		-0.908842, -0.148652, -0.389754,
		0.416970, -0.297098, -0.858993,
		26.192074, 29.889929, 28.981861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563459, 29.516294, 29.502949>,  <25.900196, 30.097897, 29.583157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563459, 29.516294, 29.502949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.875456, 29.479008, 29.255424>,  <26.062654, 29.456636, 29.106911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.875456, 29.479008, 29.255424>,  <25.563459, 29.516294, 29.502949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875456, 29.479008, 29.255424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030787, -0.981930, 0.186720,
		-0.625033, -0.164692, -0.763027,
		0.779991, -0.093215, -0.618809,
		26.109453, 29.451044, 29.069782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409233, 29.045759, 28.947390>,  <25.563459, 29.516294, 29.502949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409233, 29.045759, 28.947390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.808353, 29.070953, 28.955688>,  <26.047825, 29.086069, 28.960669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.808353, 29.070953, 28.955688>,  <25.409233, 29.045759, 28.947390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808353, 29.070953, 28.955688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062933, -0.998013, 0.003182,
		0.020906, -0.001869, -0.999780,
		0.997799, 0.062985, 0.020746,
		26.107693, 29.089849, 28.961912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636940, 28.570213, 28.424114>,  <25.409233, 29.045759, 28.947390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636940, 28.570213, 28.424114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.928274, 28.628571, 28.691917>,  <26.103075, 28.663586, 28.852600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.928274, 28.628571, 28.691917>,  <25.636940, 28.570213, 28.424114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928274, 28.628571, 28.691917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137085, -0.988342, 0.066240,
		0.671367, 0.043535, -0.739846,
		0.728337, 0.145893, 0.669508,
		26.146774, 28.672338, 28.892769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035204, 28.124147, 28.221731>,  <25.636940, 28.570213, 28.424114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035204, 28.124147, 28.221731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.143475, 28.222870, 28.593929>,  <26.208437, 28.282104, 28.817247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.143475, 28.222870, 28.593929>,  <26.035204, 28.124147, 28.221731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143475, 28.222870, 28.593929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084554, -0.968936, 0.232407,
		0.958950, 0.015770, -0.283138,
		0.270677, 0.246807, 0.930494,
		26.224678, 28.296911, 28.873077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344807, 27.516552, 28.456614>,  <26.035204, 28.124147, 28.221731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344807, 27.516552, 28.456614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.321781, 27.713165, 28.804195>,  <26.307966, 27.831133, 29.012745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.321781, 27.713165, 28.804195>,  <26.344807, 27.516552, 28.456614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321781, 27.713165, 28.804195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081006, -0.865227, 0.494792,
		0.995050, 0.098874, 0.009991,
		-0.057566, 0.491534, 0.868954,
		26.304512, 27.860626, 29.064882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925751, 27.310911, 28.881481>,  <26.344807, 27.516552, 28.456614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925751, 27.310911, 28.881481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.621847, 27.450108, 29.101177>,  <26.439505, 27.533625, 29.232996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.621847, 27.450108, 29.101177>,  <26.925751, 27.310911, 28.881481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621847, 27.450108, 29.101177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066561, -0.798661, 0.598089,
		0.646786, 0.490963, 0.583629,
		-0.759761, 0.347989, 0.549242,
		26.393919, 27.554504, 29.265949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134087, 27.193241, 29.512945>,  <26.925751, 27.310911, 28.881481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134087, 27.193241, 29.512945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.743250, 27.261082, 29.564369>,  <26.508747, 27.301786, 29.595224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.743250, 27.261082, 29.564369>,  <27.134087, 27.193241, 29.512945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743250, 27.261082, 29.564369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030869, -0.484751, 0.874107,
		0.210571, 0.858051, 0.468411,
		-0.977091, 0.169603, 0.128562,
		26.450123, 27.311962, 29.602938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093157, 27.277178, 30.224234>,  <27.134087, 27.193241, 29.512945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093157, 27.277178, 30.224234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.723608, 27.202267, 30.090736>,  <26.501879, 27.157320, 30.010639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.723608, 27.202267, 30.090736>,  <27.093157, 27.277178, 30.224234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723608, 27.202267, 30.090736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138522, -0.649299, 0.747812,
		-0.356747, 0.737115, 0.573928,
		-0.923874, -0.187278, -0.333741,
		26.446445, 27.146084, 29.990614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688271, 27.347332, 30.809967>,  <27.093157, 27.277178, 30.224234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688271, 27.347332, 30.809967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.485638, 27.113213, 30.556732>,  <26.364058, 26.972740, 30.404791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.485638, 27.113213, 30.556732>,  <26.688271, 27.347332, 30.809967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485638, 27.113213, 30.556732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227345, -0.617613, 0.752907,
		-0.831678, 0.525339, 0.179807,
		-0.506582, -0.585298, -0.633088,
		26.333664, 26.937624, 30.366806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036325, 27.062990, 31.169584>,  <26.688271, 27.347332, 30.809967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036325, 27.062990, 31.169584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.055536, 26.826065, 30.847874>,  <26.067062, 26.683910, 30.654848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.055536, 26.826065, 30.847874>,  <26.036325, 27.062990, 31.169584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055536, 26.826065, 30.847874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247309, -0.787184, 0.564960,
		-0.967746, 0.171769, -0.184293,
		0.048029, -0.592314, -0.804274,
		26.069944, 26.648371, 30.606592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361851, 26.740044, 31.111244>,  <26.036325, 27.062990, 31.169584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361851, 26.740044, 31.111244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.635798, 26.503700, 30.940670>,  <25.800165, 26.361895, 30.838326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.635798, 26.503700, 30.940670>,  <25.361851, 26.740044, 31.111244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635798, 26.503700, 30.940670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305269, -0.764045, 0.568372,
		-0.661644, -0.259080, -0.703637,
		0.684864, -0.590858, -0.426436,
		25.841257, 26.326443, 30.812738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060537, 26.044613, 30.984400>,  <25.361851, 26.740044, 31.111244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060537, 26.044613, 30.984400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.450041, 25.956402, 30.961899>,  <25.683743, 25.903475, 30.948399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.450041, 25.956402, 30.961899>,  <25.060537, 26.044613, 30.984400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450041, 25.956402, 30.961899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139211, -0.772672, 0.619353,
		-0.180049, -0.595268, -0.783095,
		0.973757, -0.220530, -0.056251,
		25.742168, 25.890244, 30.945023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.184299, 24.452433, 30.446440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901636, 24.670269, 30.627129>,  <31.732038, 24.800970, 30.735542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901636, 24.670269, 30.627129>,  <32.184299, 24.452433, 30.446440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901636, 24.670269, 30.627129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105458, 0.712364, -0.693842,
		-0.699651, -0.442672, -0.560830,
		-0.706659, 0.544591, 0.451722,
		31.689638, 24.833647, 30.762646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646130, 24.693851, 29.855492>,  <32.184299, 24.452433, 30.446440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646130, 24.693851, 29.855492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661139, 24.936588, 30.173065>,  <31.670143, 25.082230, 30.363609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661139, 24.936588, 30.173065>,  <31.646130, 24.693851, 29.855492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661139, 24.936588, 30.173065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158576, 0.780813, -0.604306,
		-0.986634, 0.148574, -0.066933,
		0.037522, 0.606842, 0.793936,
		31.672396, 25.118641, 30.411245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218250, 25.297480, 29.520462>,  <31.646130, 24.693851, 29.855492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218250, 25.297480, 29.520462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.371202, 25.435696, 29.863247>,  <31.462975, 25.518625, 30.068918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.371202, 25.435696, 29.863247>,  <31.218250, 25.297480, 29.520462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371202, 25.435696, 29.863247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132090, 0.897477, -0.420817,
		-0.914515, 0.274108, 0.297536,
		0.382381, 0.345542, 0.856963,
		31.485916, 25.539358, 30.120337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738882, 25.858868, 29.807289>,  <31.218250, 25.297480, 29.520462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738882, 25.858868, 29.807289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133165, 25.867249, 29.874153>,  <31.369736, 25.872276, 29.914270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133165, 25.867249, 29.874153>,  <30.738882, 25.858868, 29.807289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133165, 25.867249, 29.874153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029691, 0.955103, -0.294784,
		-0.165830, 0.295533, 0.940830,
		0.985707, 0.020950, 0.167159,
		31.428877, 25.873533, 29.924301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913551, 26.607256, 29.884830>,  <30.738882, 25.858868, 29.807289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913551, 26.607256, 29.884830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290100, 26.472378, 29.889244>,  <31.516029, 26.391451, 29.891891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290100, 26.472378, 29.889244>,  <30.913551, 26.607256, 29.884830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290100, 26.472378, 29.889244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297916, 0.815473, -0.496235,
		0.158332, 0.470428, 0.868118,
		0.941370, -0.337196, 0.011033,
		31.572512, 26.371220, 29.892553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255018, 27.121107, 30.138372>,  <30.913551, 26.607256, 29.884830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255018, 27.121107, 30.138372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517389, 26.905342, 29.927170>,  <31.674812, 26.775883, 29.800447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517389, 26.905342, 29.927170>,  <31.255018, 27.121107, 30.138372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517389, 26.905342, 29.927170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168825, 0.786629, -0.593897,
		0.735701, 0.300412, 0.607039,
		0.655928, -0.539414, -0.528006,
		31.714169, 26.743519, 29.768768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807814, 27.504318, 29.986923>,  <31.255018, 27.121107, 30.138372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807814, 27.504318, 29.986923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827494, 27.222218, 29.704025>,  <31.839302, 27.052958, 29.534286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827494, 27.222218, 29.704025>,  <31.807814, 27.504318, 29.986923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827494, 27.222218, 29.704025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157107, 0.704754, -0.691837,
		0.986355, -0.077076, 0.145473,
		0.049199, -0.705252, -0.707247,
		31.842253, 27.010641, 29.491852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528370, 27.696644, 29.697474>,  <31.807814, 27.504318, 29.986923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528370, 27.696644, 29.697474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281841, 27.489704, 29.459988>,  <32.133923, 27.365540, 29.317495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281841, 27.489704, 29.459988>,  <32.528370, 27.696644, 29.697474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281841, 27.489704, 29.459988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235276, 0.598525, -0.765776,
		0.751527, -0.611651, -0.247164,
		-0.616322, -0.517350, -0.593715,
		32.096943, 27.334499, 29.281874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923073, 27.718992, 29.089165>,  <32.528370, 27.696644, 29.697474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923073, 27.718992, 29.089165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.571533, 27.593311, 28.945549>,  <32.360611, 27.517902, 28.859381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.571533, 27.593311, 28.945549>,  <32.923073, 27.718992, 29.089165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571533, 27.593311, 28.945549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210704, 0.419569, -0.882930,
		0.428061, -0.851609, -0.302532,
		-0.878844, -0.314203, -0.359039,
		32.307880, 27.499050, 28.837837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054237, 27.512743, 28.423445>,  <32.923073, 27.718992, 29.089165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054237, 27.512743, 28.423445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659374, 27.575409, 28.410995>,  <32.422455, 27.613008, 28.403526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659374, 27.575409, 28.410995>,  <33.054237, 27.512743, 28.423445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659374, 27.575409, 28.410995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109732, 0.523583, -0.844878,
		-0.116067, -0.837447, -0.534052,
		-0.987161, 0.156665, -0.031124,
		32.363224, 27.622408, 28.401659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872707, 27.504946, 27.746769>,  <33.054237, 27.512743, 28.423445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872707, 27.504946, 27.746769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.552326, 27.696945, 27.889923>,  <32.360100, 27.812145, 27.975815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.552326, 27.696945, 27.889923>,  <32.872707, 27.504946, 27.746769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552326, 27.696945, 27.889923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037514, 0.556331, -0.830114,
		-0.597556, -0.678304, -0.427586,
		-0.800949, 0.479999, 0.357885,
		32.312042, 27.840944, 27.997288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494854, 27.585361, 27.185661>,  <32.872707, 27.504946, 27.746769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494854, 27.585361, 27.185661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345943, 27.845463, 27.450562>,  <32.256596, 28.001524, 27.609503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345943, 27.845463, 27.450562>,  <32.494854, 27.585361, 27.185661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345943, 27.845463, 27.450562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015789, 0.709000, -0.705032,
		-0.927988, -0.272922, -0.253677,
		-0.372276, 0.650256, 0.662252,
		32.234261, 28.040539, 27.649237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833815, 27.832218, 26.973444>,  <32.494854, 27.585361, 27.185661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833815, 27.832218, 26.973444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985441, 28.121178, 27.204769>,  <32.076416, 28.294554, 27.343565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985441, 28.121178, 27.204769>,  <31.833815, 27.832218, 26.973444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985441, 28.121178, 27.204769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014694, 0.620178, -0.784323,
		-0.925252, 0.305810, 0.224475,
		0.379068, 0.722398, 0.578315,
		32.099163, 28.337896, 27.378263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517826, 28.435406, 26.769876>,  <31.833815, 27.832218, 26.973444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517826, 28.435406, 26.769876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.837130, 28.573235, 26.967484>,  <32.028713, 28.655931, 27.086048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.837130, 28.573235, 26.967484>,  <31.517826, 28.435406, 26.769876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837130, 28.573235, 26.967484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103132, 0.729891, -0.675738,
		-0.593419, 0.590364, 0.547106,
		0.798259, 0.344571, 0.494017,
		32.076607, 28.676605, 27.115688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801086, 28.625334, 26.701773>,  <31.517826, 28.435406, 26.769876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801086, 28.625334, 26.701773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534891, 28.463100, 26.451134>,  <30.375174, 28.365761, 26.300751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534891, 28.463100, 26.451134>,  <30.801086, 28.625334, 26.701773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534891, 28.463100, 26.451134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012095, -0.833516, 0.552363,
		-0.746311, 0.375169, 0.549789,
		-0.665488, -0.405585, -0.626599,
		30.335245, 28.341425, 26.263153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298288, 28.379251, 27.120731>,  <30.801086, 28.625334, 26.701773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298288, 28.379251, 27.120731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245026, 28.165352, 26.786949>,  <30.213068, 28.037012, 26.586679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245026, 28.165352, 26.786949>,  <30.298288, 28.379251, 27.120731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245026, 28.165352, 26.786949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214706, -0.806394, 0.551026,
		-0.967559, 0.252535, -0.007438,
		-0.133156, -0.534747, -0.834455,
		30.205078, 28.004929, 26.536613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745756, 28.054779, 27.231783>,  <30.298288, 28.379251, 27.120731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745756, 28.054779, 27.231783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.917295, 27.827541, 26.950825>,  <30.020218, 27.691198, 26.782249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.917295, 27.827541, 26.950825>,  <29.745756, 28.054779, 27.231783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917295, 27.827541, 26.950825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254211, -0.821990, 0.509616,
		-0.866873, -0.039990, -0.496923,
		0.428845, -0.568095, -0.702396,
		30.045950, 27.657112, 26.740107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263134, 27.498127, 27.241238>,  <29.745756, 28.054779, 27.231783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263134, 27.498127, 27.241238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.583601, 27.380371, 27.032829>,  <29.775881, 27.309717, 26.907784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.583601, 27.380371, 27.032829>,  <29.263134, 27.498127, 27.241238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583601, 27.380371, 27.032829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144753, -0.940112, 0.308605,
		-0.580668, -0.171825, -0.795802,
		0.801169, -0.294391, -0.521021,
		29.823952, 27.292053, 26.876524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077053, 27.076609, 26.596350>,  <29.263134, 27.498127, 27.241238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077053, 27.076609, 26.596350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.440901, 26.960526, 26.715260>,  <29.659210, 26.890875, 26.786606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.440901, 26.960526, 26.715260>,  <29.077053, 27.076609, 26.596350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440901, 26.960526, 26.715260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328813, -0.940268, 0.088200,
		0.253921, -0.177976, -0.950710,
		0.909619, -0.290210, 0.297274,
		29.713787, 26.873463, 26.804441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146521, 26.522163, 26.286840>,  <29.077053, 27.076609, 26.596350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146521, 26.522163, 26.286840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430109, 26.514645, 26.568836>,  <29.600262, 26.510134, 26.738033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430109, 26.514645, 26.568836>,  <29.146521, 26.522163, 26.286840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430109, 26.514645, 26.568836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225243, -0.953323, 0.201097,
		0.668302, -0.301366, -0.680112,
		0.708970, -0.018797, 0.704988,
		29.642799, 26.509007, 26.780333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247169, 25.877687, 26.294895>,  <29.146521, 26.522163, 26.286840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247169, 25.877687, 26.294895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.427853, 25.994740, 26.632019>,  <29.536263, 26.064972, 26.834293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.427853, 25.994740, 26.632019>,  <29.247169, 25.877687, 26.294895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427853, 25.994740, 26.632019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136665, -0.910832, 0.389497,
		0.881636, -0.291121, -0.371438,
		0.451708, 0.292632, 0.842809,
		29.563366, 26.082529, 26.884861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617456, 25.314034, 26.470020>,  <29.247169, 25.877687, 26.294895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617456, 25.314034, 26.470020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.580236, 25.525616, 26.807434>,  <29.557905, 25.652565, 27.009882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.580236, 25.525616, 26.807434>,  <29.617456, 25.314034, 26.470020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580236, 25.525616, 26.807434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069532, -0.848593, 0.524458,
		0.993231, -0.009852, 0.115741,
		-0.093050, 0.528955, 0.843533,
		29.552320, 25.684301, 27.060493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026171, 24.996374, 26.928125>,  <29.617456, 25.314034, 26.470020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026171, 24.996374, 26.928125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768410, 25.191021, 27.164074>,  <29.613752, 25.307810, 27.305643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768410, 25.191021, 27.164074>,  <30.026171, 24.996374, 26.928125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768410, 25.191021, 27.164074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268029, -0.866186, 0.421760,
		0.716173, 0.113682, 0.688602,
		-0.644404, 0.486618, 0.589869,
		29.575089, 25.337006, 27.341034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250549, 24.779409, 27.623373>,  <30.026171, 24.996374, 26.928125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250549, 24.779409, 27.623373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.869860, 24.902081, 27.628525>,  <29.641445, 24.975683, 27.631617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.869860, 24.902081, 27.628525>,  <30.250549, 24.779409, 27.623373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869860, 24.902081, 27.628525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219540, -0.709429, 0.669711,
		0.214525, 0.634554, 0.742510,
		-0.951725, 0.306680, 0.012881,
		29.584343, 24.994085, 27.632389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948671, 25.034321, 28.379372>,  <30.250549, 24.779409, 27.623373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948671, 25.034321, 28.379372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677896, 24.862690, 28.140156>,  <29.515432, 24.759710, 27.996626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677896, 24.862690, 28.140156>,  <29.948671, 25.034321, 28.379372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677896, 24.862690, 28.140156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172831, -0.697128, 0.695803,
		-0.715463, 0.574373, 0.397753,
		-0.676935, -0.429078, -0.598039,
		29.474815, 24.733967, 27.960745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299459, 24.923403, 28.749037>,  <29.948671, 25.034321, 28.379372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299459, 24.923403, 28.749037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.326571, 24.650208, 28.458126>,  <29.342836, 24.486290, 28.283579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.326571, 24.650208, 28.458126>,  <29.299459, 24.923403, 28.749037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326571, 24.650208, 28.458126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297553, -0.709618, 0.638675,
		-0.952297, 0.173118, -0.251320,
		0.067775, -0.682988, -0.727278,
		29.346903, 24.445311, 28.239943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579222, 24.706442, 28.728216>,  <29.299459, 24.923403, 28.749037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579222, 24.706442, 28.728216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.826708, 24.431389, 28.576241>,  <28.975201, 24.266357, 28.485056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.826708, 24.431389, 28.576241>,  <28.579222, 24.706442, 28.728216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826708, 24.431389, 28.576241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465824, -0.710539, 0.527392,
		-0.632612, -0.149322, -0.759938,
		0.618717, -0.687632, -0.379938,
		29.012323, 24.225100, 28.462259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106785, 24.155607, 28.527634>,  <28.579222, 24.706442, 28.728216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106785, 24.155607, 28.527634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.475340, 24.006222, 28.570656>,  <28.696474, 23.916590, 28.596470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.475340, 24.006222, 28.570656>,  <28.106785, 24.155607, 28.527634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475340, 24.006222, 28.570656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335157, -0.623446, 0.706389,
		-0.196755, -0.686907, -0.699605,
		0.921389, -0.373463, 0.107556,
		28.751757, 23.894182, 28.602922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674034, 24.396860, 28.081472>,  <28.106785, 24.155607, 28.527634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674034, 24.396860, 28.081472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.298058, 24.263035, 28.108543>,  <27.072472, 24.182739, 28.124786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.298058, 24.263035, 28.108543>,  <27.674034, 24.396860, 28.081472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298058, 24.263035, 28.108543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306612, 0.740408, -0.598151,
		0.150010, -0.582977, -0.798520,
		-0.939939, -0.334565, 0.067679,
		27.016075, 24.162666, 28.128847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418133, 24.384817, 27.417665>,  <27.674034, 24.396860, 28.081472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418133, 24.384817, 27.417665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.096224, 24.391151, 27.655014>,  <26.903078, 24.394953, 27.797422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.096224, 24.391151, 27.655014>,  <27.418133, 24.384817, 27.417665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096224, 24.391151, 27.655014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405976, 0.714591, -0.569687,
		-0.433040, -0.699363, -0.568654,
		-0.804773, 0.015838, 0.593371,
		26.854792, 24.395903, 27.833025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823648, 24.447113, 26.927177>,  <27.418133, 24.384817, 27.417665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823648, 24.447113, 26.927177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.716030, 24.575230, 27.290501>,  <26.651459, 24.652100, 27.508495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.716030, 24.575230, 27.290501>,  <26.823648, 24.447113, 26.927177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716030, 24.575230, 27.290501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575901, 0.702414, -0.418274,
		-0.771980, -0.635631, -0.004524,
		-0.269046, 0.320294, 0.908309,
		26.635317, 24.671318, 27.562994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076427, 24.557030, 26.942350>,  <26.823648, 24.447113, 26.927177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076427, 24.557030, 26.942350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.239594, 24.783409, 27.228931>,  <26.337494, 24.919237, 27.400881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.239594, 24.783409, 27.228931>,  <26.076427, 24.557030, 26.942350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239594, 24.783409, 27.228931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417764, 0.813440, -0.404708,
		-0.811836, -0.134221, 0.568249,
		0.407916, 0.565951, 0.716453,
		26.361969, 24.953194, 27.443867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570105, 24.983229, 27.012676>,  <26.076427, 24.557030, 26.942350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570105, 24.983229, 27.012676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.897921, 25.150124, 27.169785>,  <26.094610, 25.250261, 27.264050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.897921, 25.150124, 27.169785>,  <25.570105, 24.983229, 27.012676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897921, 25.150124, 27.169785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347612, 0.906906, -0.238090,
		-0.455545, 0.058593, 0.888282,
		0.819539, 0.417238, 0.392769,
		26.143782, 25.275295, 27.287615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363821, 25.742300, 27.320234>,  <25.570105, 24.983229, 27.012676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363821, 25.742300, 27.320234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.763790, 25.746769, 27.318092>,  <26.003771, 25.749451, 27.316807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.763790, 25.746769, 27.318092>,  <25.363821, 25.742300, 27.320234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763790, 25.746769, 27.318092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012294, 0.948864, -0.315447,
		0.001558, 0.315488, 0.948928,
		0.999923, 0.011175, -0.005357,
		26.063766, 25.750122, 27.316484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581430, 26.352093, 27.584719>,  <25.363821, 25.742300, 27.320234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581430, 26.352093, 27.584719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.916002, 26.244202, 27.393875>,  <26.116745, 26.179468, 27.279369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.916002, 26.244202, 27.393875>,  <25.581430, 26.352093, 27.584719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916002, 26.244202, 27.393875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138423, 0.946262, -0.292281,
		0.530306, 0.178430, 0.828818,
		0.836430, -0.269725, -0.477109,
		26.166931, 26.163284, 27.250742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052671, 26.840782, 27.781319>,  <25.581430, 26.352093, 27.584719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052671, 26.840782, 27.781319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.194851, 26.698078, 27.435745>,  <26.280159, 26.612455, 27.228401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.194851, 26.698078, 27.435745>,  <26.052671, 26.840782, 27.781319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194851, 26.698078, 27.435745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084863, 0.932792, -0.350281,
		0.930835, 0.051192, 0.361837,
		0.355450, -0.356761, -0.863931,
		26.301485, 26.591049, 27.176565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743467, 27.178726, 27.545250>,  <26.052671, 26.840782, 27.781319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743467, 27.178726, 27.545250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.575006, 27.020409, 27.218819>,  <26.473930, 26.925419, 27.022961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.575006, 27.020409, 27.218819>,  <26.743467, 27.178726, 27.545250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575006, 27.020409, 27.218819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058080, 0.886147, -0.459750,
		0.905131, -0.241020, -0.350211,
		-0.421147, -0.395793, -0.816077,
		26.448662, 26.901670, 26.973995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176945, 27.425186, 27.036930>,  <26.743467, 27.178726, 27.545250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176945, 27.425186, 27.036930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.868748, 27.314014, 26.807465>,  <26.683828, 27.247311, 26.669785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.868748, 27.314014, 26.807465>,  <27.176945, 27.425186, 27.036930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868748, 27.314014, 26.807465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013139, 0.892829, -0.450205,
		0.637311, -0.354418, -0.684268,
		-0.770495, -0.277930, -0.573665,
		26.637600, 27.230635, 26.635365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385954, 27.534248, 26.346189>,  <27.176945, 27.425186, 27.036930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385954, 27.534248, 26.346189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.993784, 27.513264, 26.270283>,  <26.758482, 27.500673, 26.224739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.993784, 27.513264, 26.270283>,  <27.385954, 27.534248, 26.346189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993784, 27.513264, 26.270283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069683, 0.808998, -0.583667,
		0.184143, -0.585466, -0.789507,
		-0.980426, -0.052463, -0.189768,
		26.699656, 27.497524, 26.213352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205910, 27.622084, 25.602921>,  <27.385954, 27.534248, 26.346189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205910, 27.622084, 25.602921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.860188, 27.707279, 25.785179>,  <26.652754, 27.758396, 25.894535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.860188, 27.707279, 25.785179>,  <27.205910, 27.622084, 25.602921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860188, 27.707279, 25.785179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059274, 0.856466, -0.512790,
		-0.499465, -0.470214, -0.727621,
		-0.864304, 0.212991, 0.455646,
		26.600897, 27.771177, 25.921873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726988, 27.850792, 25.101688>,  <27.205910, 27.622084, 25.602921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726988, 27.850792, 25.101688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.586998, 28.003132, 25.444027>,  <26.503004, 28.094536, 25.649429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.586998, 28.003132, 25.444027>,  <26.726988, 27.850792, 25.101688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586998, 28.003132, 25.444027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146720, 0.880062, -0.451624,
		-0.925198, -0.283627, -0.252121,
		-0.349975, 0.380850, 0.855845,
		26.482006, 28.117388, 25.700781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210377, 28.205574, 24.845545>,  <26.726988, 27.850792, 25.101688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210377, 28.205574, 24.845545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.245747, 28.372753, 25.207207>,  <26.266968, 28.473061, 25.424204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.245747, 28.372753, 25.207207>,  <26.210377, 28.205574, 24.845545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245747, 28.372753, 25.207207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168518, 0.900904, -0.399966,
		-0.981724, -0.117000, 0.150094,
		0.088424, 0.417950, 0.904156,
		26.272274, 28.498138, 25.478455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.934803, 31.099651, 33.384510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.276775, 30.994621, 33.205559>,  <43.481960, 30.931604, 33.098186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.276775, 30.994621, 33.205559>,  <42.934803, 31.099651, 33.384510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276775, 30.994621, 33.205559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215306, 0.605022, -0.766545,
		0.471947, 0.751667, 0.460719,
		0.854932, -0.262573, -0.447377,
		43.533257, 30.915850, 33.071346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386555, 31.709768, 33.240471>,  <42.934803, 31.099651, 33.384510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386555, 31.709768, 33.240471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.486469, 31.428028, 32.974689>,  <43.546417, 31.258984, 32.815220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.486469, 31.428028, 32.974689>,  <43.386555, 31.709768, 33.240471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486469, 31.428028, 32.974689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226298, 0.624741, -0.747320,
		0.941487, 0.337032, -0.003344,
		0.249782, -0.704349, -0.664456,
		43.561405, 31.216722, 32.775352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742493, 32.046280, 32.616978>,  <43.386555, 31.709768, 33.240471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742493, 32.046280, 32.616978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639549, 31.680973, 32.490669>,  <43.577785, 31.461788, 32.414883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639549, 31.680973, 32.490669>,  <43.742493, 32.046280, 32.616978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639549, 31.680973, 32.490669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043438, 0.337381, -0.940365,
		0.965340, -0.228291, -0.126497,
		-0.257355, -0.913267, -0.315771,
		43.562344, 31.406992, 32.395939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042854, 31.955193, 31.926907>,  <43.742493, 32.046280, 32.616978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042854, 31.955193, 31.926907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.748474, 31.684509, 31.918480>,  <43.571846, 31.522099, 31.913424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.748474, 31.684509, 31.918480>,  <44.042854, 31.955193, 31.926907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748474, 31.684509, 31.918480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025877, 0.059210, -0.997910,
		0.676543, -0.733865, -0.061086,
		-0.735949, -0.676709, -0.021068,
		43.527691, 31.481497, 31.912159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226746, 31.669827, 31.313936>,  <44.042854, 31.955193, 31.926907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226746, 31.669827, 31.313936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.850410, 31.565712, 31.400730>,  <43.624611, 31.503244, 31.452806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.850410, 31.565712, 31.400730>,  <44.226746, 31.669827, 31.313936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850410, 31.565712, 31.400730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218188, -0.024626, -0.975596,
		0.259276, -0.965218, -0.033622,
		-0.940835, -0.260285, 0.216984,
		43.568161, 31.487627, 31.465826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998260, 31.157001, 30.817184>,  <44.226746, 31.669827, 31.313936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998260, 31.157001, 30.817184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.655521, 31.309025, 30.956539>,  <43.449879, 31.400240, 31.040152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.655521, 31.309025, 30.956539>,  <43.998260, 31.157001, 30.817184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655521, 31.309025, 30.956539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352156, 0.062114, -0.933878,
		-0.376570, -0.922874, 0.080618,
		-0.856844, 0.380061, 0.348385,
		43.398468, 31.423042, 31.061054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503517, 30.760159, 30.414333>,  <43.998260, 31.157001, 30.817184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503517, 30.760159, 30.414333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.323235, 31.087944, 30.555950>,  <43.215065, 31.284615, 30.640921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.323235, 31.087944, 30.555950>,  <43.503517, 30.760159, 30.414333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323235, 31.087944, 30.555950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361146, 0.195318, -0.911825,
		-0.816357, -0.538826, 0.207915,
		-0.450706, 0.819462, 0.354044,
		43.188023, 31.333782, 30.662163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786533, 30.749929, 30.307508>,  <43.503517, 30.760159, 30.414333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786533, 30.749929, 30.307508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.886238, 31.136520, 30.332142>,  <42.946060, 31.368475, 30.346922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.886238, 31.136520, 30.332142>,  <42.786533, 30.749929, 30.307508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886238, 31.136520, 30.332142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468717, 0.176046, -0.865628,
		-0.847450, 0.186905, 0.496885,
		0.249265, 0.966475, 0.061585,
		42.961018, 31.426462, 30.350616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182228, 31.090326, 30.079472>,  <42.786533, 30.749929, 30.307508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182228, 31.090326, 30.079472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.453068, 31.384682, 30.080433>,  <42.615570, 31.561295, 30.081009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.453068, 31.384682, 30.080433>,  <42.182228, 31.090326, 30.079472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453068, 31.384682, 30.080433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453658, 0.419980, -0.786010,
		-0.579426, 0.531114, 0.618209,
		0.677096, 0.735891, 0.002403,
		42.656197, 31.605450, 30.081154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778561, 31.665602, 30.047260>,  <42.182228, 31.090326, 30.079472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778561, 31.665602, 30.047260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.140900, 31.785954, 29.927990>,  <42.358303, 31.858166, 29.856428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.140900, 31.785954, 29.927990>,  <41.778561, 31.665602, 30.047260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140900, 31.785954, 29.927990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406143, 0.416899, -0.813168,
		-0.120358, 0.857709, 0.499849,
		0.905849, 0.300882, -0.298176,
		42.412655, 31.876219, 29.838537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581978, 32.280369, 29.916439>,  <41.778561, 31.665602, 30.047260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581978, 32.280369, 29.916439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.914688, 32.198940, 29.709866>,  <42.114315, 32.150082, 29.585920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.914688, 32.198940, 29.709866>,  <41.581978, 32.280369, 29.916439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914688, 32.198940, 29.709866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437172, 0.333103, -0.835418,
		0.342095, 0.920652, 0.188071,
		0.831777, -0.203573, -0.516436,
		42.164223, 32.137867, 29.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595715, 32.810246, 29.544865>,  <41.581978, 32.280369, 29.916439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595715, 32.810246, 29.544865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.849464, 32.563179, 29.358940>,  <42.001717, 32.414940, 29.247385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.849464, 32.563179, 29.358940>,  <41.595715, 32.810246, 29.544865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849464, 32.563179, 29.358940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191054, 0.457357, -0.868518,
		0.749040, 0.639773, 0.172129,
		0.634379, -0.617669, -0.464810,
		42.039780, 32.377880, 29.219498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821613, 33.206055, 29.006851>,  <41.595715, 32.810246, 29.544865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821613, 33.206055, 29.006851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916107, 32.832363, 28.899963>,  <41.972801, 32.608147, 28.835831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916107, 32.832363, 28.899963>,  <41.821613, 33.206055, 29.006851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916107, 32.832363, 28.899963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165048, 0.232429, -0.958507,
		0.957577, 0.270532, -0.099286,
		0.236230, -0.934232, -0.267220,
		41.986977, 32.552094, 28.819798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299980, 33.242813, 28.465729>,  <41.821613, 33.206055, 29.006851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299980, 33.242813, 28.465729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.087479, 32.905453, 28.433617>,  <41.959980, 32.703037, 28.414349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.087479, 32.905453, 28.433617>,  <42.299980, 33.242813, 28.465729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087479, 32.905453, 28.433617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325929, 0.290922, -0.899519,
		0.782013, -0.451703, -0.429442,
		-0.531249, -0.843403, -0.080282,
		41.928104, 32.652431, 28.409533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117126, 33.271355, 27.797091>,  <42.299980, 33.242813, 28.465729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117126, 33.271355, 27.797091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.928520, 32.925388, 27.865910>,  <41.815357, 32.717808, 27.907202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.928520, 32.925388, 27.865910>,  <42.117126, 33.271355, 27.797091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928520, 32.925388, 27.865910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345140, 0.001461, -0.938550,
		0.811512, -0.501921, -0.299205,
		-0.471515, -0.864912, 0.172048,
		41.787067, 32.665916, 27.917524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365490, 32.682331, 27.282064>,  <42.117126, 33.271355, 27.797091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365490, 32.682331, 27.282064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.989185, 32.646469, 27.412868>,  <41.763405, 32.624950, 27.491350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.989185, 32.646469, 27.412868>,  <42.365490, 32.682331, 27.282064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989185, 32.646469, 27.412868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332592, 0.056301, -0.941389,
		0.066017, -0.994378, -0.082794,
		-0.940757, -0.089685, 0.327004,
		41.706959, 32.619572, 27.510971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098690, 32.275532, 26.755144>,  <42.365490, 32.682331, 27.282064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098690, 32.275532, 26.755144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.783772, 32.408466, 26.962879>,  <41.594818, 32.488228, 27.087521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.783772, 32.408466, 26.962879>,  <42.098690, 32.275532, 26.755144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783772, 32.408466, 26.962879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524006, 0.083228, -0.847638,
		-0.324927, -0.939481, 0.108622,
		-0.787299, 0.332339, 0.519337,
		41.547581, 32.508167, 27.118681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471664, 31.899570, 26.505674>,  <42.098690, 32.275532, 26.755144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471664, 31.899570, 26.505674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330799, 32.248119, 26.642315>,  <41.246281, 32.457249, 26.724300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330799, 32.248119, 26.642315>,  <41.471664, 31.899570, 26.505674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330799, 32.248119, 26.642315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479304, 0.145585, -0.865490,
		-0.803895, -0.468527, 0.366381,
		-0.352166, 0.871371, 0.341602,
		41.225151, 32.509529, 26.744795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752605, 31.948051, 26.269646>,  <41.471664, 31.899570, 26.505674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752605, 31.948051, 26.269646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.889717, 32.318951, 26.329933>,  <40.971985, 32.541489, 26.366106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.889717, 32.318951, 26.329933>,  <40.752605, 31.948051, 26.269646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889717, 32.318951, 26.329933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503242, 0.316722, -0.804011,
		-0.793254, 0.199746, 0.575195,
		0.342775, 0.927248, 0.150721,
		40.992550, 32.597126, 26.375149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163429, 32.335991, 26.199123>,  <40.752605, 31.948051, 26.269646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163429, 32.335991, 26.199123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456509, 32.606258, 26.166588>,  <40.632359, 32.768421, 26.147066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456509, 32.606258, 26.166588>,  <40.163429, 32.335991, 26.199123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456509, 32.606258, 26.166588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537380, 0.501080, -0.678337,
		-0.417577, 0.540728, 0.730235,
		0.732702, 0.675671, -0.081337,
		40.676319, 32.808960, 26.142187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774189, 33.079205, 26.154690>,  <40.163429, 32.335991, 26.199123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774189, 33.079205, 26.154690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149239, 33.143459, 26.031361>,  <40.374268, 33.182014, 25.957363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149239, 33.143459, 26.031361>,  <39.774189, 33.079205, 26.154690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149239, 33.143459, 26.031361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347462, 0.463134, -0.815339,
		0.011819, 0.871608, 0.490060,
		0.937620, 0.160641, -0.308324,
		40.430523, 33.191650, 25.938864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058216, 33.069103, 26.376020>,  <39.774189, 33.079205, 26.154690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058216, 33.069103, 26.376020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699875, 32.952045, 26.509769>,  <38.484871, 32.881809, 26.590019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699875, 32.952045, 26.509769>,  <39.058216, 33.069103, 26.376020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699875, 32.952045, 26.509769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444350, -0.588009, 0.675869,
		-0.001178, 0.754057, 0.656808,
		-0.895853, -0.292648, 0.334373,
		38.431118, 32.864250, 26.610081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186169, 33.187317, 27.079031>,  <39.058216, 33.069103, 26.376020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186169, 33.187317, 27.079031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.862736, 32.952297, 27.066471>,  <38.668678, 32.811287, 27.058935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.862736, 32.952297, 27.066471>,  <39.186169, 33.187317, 27.079031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862736, 32.952297, 27.066471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371783, -0.551548, 0.746708,
		-0.456047, 0.592098, 0.664411,
		-0.808578, -0.587550, -0.031400,
		38.620163, 32.776031, 27.057051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047859, 32.993279, 27.806524>,  <39.186169, 33.187317, 27.079031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047859, 32.993279, 27.806524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900005, 32.713486, 27.561871>,  <38.811295, 32.545612, 27.415077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900005, 32.713486, 27.561871>,  <39.047859, 32.993279, 27.806524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900005, 32.713486, 27.561871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439841, -0.711553, 0.547935,
		-0.818481, -0.066488, 0.570674,
		-0.369633, -0.699480, -0.611636,
		38.789116, 32.503643, 27.378380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094154, 32.529232, 28.241552>,  <39.047859, 32.993279, 27.806524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094154, 32.529232, 28.241552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978855, 32.346451, 27.904957>,  <38.909676, 32.236782, 27.702999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978855, 32.346451, 27.904957>,  <39.094154, 32.529232, 28.241552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978855, 32.346451, 27.904957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265137, -0.882518, 0.388413,
		-0.920118, -0.111152, 0.375538,
		-0.288246, -0.456955, -0.841491,
		38.892380, 32.209366, 27.652510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377338, 32.185139, 28.297251>,  <39.094154, 32.529232, 28.241552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377338, 32.185139, 28.297251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638847, 32.024261, 28.040871>,  <38.795753, 31.927734, 27.887043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638847, 32.024261, 28.040871>,  <38.377338, 32.185139, 28.297251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638847, 32.024261, 28.040871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096667, -0.795713, 0.597910,
		-0.750490, -0.452857, -0.481337,
		0.653774, -0.402196, -0.640951,
		38.834980, 31.903603, 27.848585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230412, 31.398071, 28.375759>,  <38.377338, 32.185139, 28.297251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230412, 31.398071, 28.375759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558559, 31.413456, 28.147545>,  <38.755447, 31.422688, 28.010616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558559, 31.413456, 28.147545>,  <38.230412, 31.398071, 28.375759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558559, 31.413456, 28.147545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294401, -0.883754, 0.363740,
		-0.490225, -0.466368, -0.736329,
		0.820371, 0.038462, -0.570537,
		38.804672, 31.424995, 27.976383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173664, 30.734116, 28.127502>,  <38.230412, 31.398071, 28.375759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173664, 30.734116, 28.127502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.540871, 30.886120, 28.082169>,  <38.761192, 30.977324, 28.054968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.540871, 30.886120, 28.082169>,  <38.173664, 30.734116, 28.127502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540871, 30.886120, 28.082169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396210, -0.867084, 0.301966,
		0.016479, -0.322113, -0.946558,
		0.918012, 0.380012, -0.113335,
		38.816273, 31.000124, 28.048168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654057, 30.204344, 27.840908>,  <38.173664, 30.734116, 28.127502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654057, 30.204344, 27.840908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.863544, 30.487736, 28.030128>,  <38.989239, 30.657770, 28.143660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.863544, 30.487736, 28.030128>,  <38.654057, 30.204344, 27.840908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863544, 30.487736, 28.030128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402180, -0.695143, 0.595842,
		0.750978, -0.121804, -0.648997,
		0.523721, 0.708478, 0.473049,
		39.020660, 30.700279, 28.172043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210350, 29.866524, 27.868101>,  <38.654057, 30.204344, 27.840908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210350, 29.866524, 27.868101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.257298, 30.164551, 28.130733>,  <39.285465, 30.343367, 28.288313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.257298, 30.164551, 28.130733>,  <39.210350, 29.866524, 27.868101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257298, 30.164551, 28.130733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498076, -0.616147, 0.610150,
		0.859154, 0.255418, -0.443414,
		0.117365, 0.745067, 0.656583,
		39.292507, 30.388071, 28.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884510, 29.883038, 27.988630>,  <39.210350, 29.866524, 27.868101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884510, 29.883038, 27.988630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.751011, 30.081539, 28.309216>,  <39.670914, 30.200640, 28.501568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.751011, 30.081539, 28.309216>,  <39.884510, 29.883038, 27.988630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751011, 30.081539, 28.309216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662902, -0.480922, 0.573825,
		0.670205, 0.722804, -0.168463,
		-0.333745, 0.496255, 0.801464,
		39.650887, 30.230415, 28.549654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499535, 30.070456, 28.298826>,  <39.884510, 29.883038, 27.988630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499535, 30.070456, 28.298826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.224926, 30.119663, 28.585476>,  <40.060162, 30.149189, 28.757465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.224926, 30.119663, 28.585476>,  <40.499535, 30.070456, 28.298826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224926, 30.119663, 28.585476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672028, -0.268935, 0.689966,
		0.277606, 0.955269, 0.101956,
		-0.686523, 0.123021, 0.716626,
		40.018970, 30.156570, 28.800463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863541, 30.317686, 28.837515>,  <40.499535, 30.070456, 28.298826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863541, 30.317686, 28.837515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530704, 30.187695, 29.017296>,  <40.331001, 30.109699, 29.125164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530704, 30.187695, 29.017296>,  <40.863541, 30.317686, 28.837515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530704, 30.187695, 29.017296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545882, -0.336474, 0.767332,
		-0.098138, 0.883841, 0.457378,
		-0.832095, -0.324979, 0.449451,
		40.281075, 30.090200, 29.152132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088398, 30.359148, 29.533850>,  <40.863541, 30.317686, 28.837515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088398, 30.359148, 29.533850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.738106, 30.166409, 29.546028>,  <40.527931, 30.050766, 29.553335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.738106, 30.166409, 29.546028>,  <41.088398, 30.359148, 29.533850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738106, 30.166409, 29.546028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277211, -0.450177, 0.848820,
		-0.395294, 0.751774, 0.527805,
		-0.875726, -0.481847, 0.030448,
		40.475388, 30.021854, 29.555162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792553, 30.578684, 30.189991>,  <41.088398, 30.359148, 29.533850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792553, 30.578684, 30.189991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.723072, 30.212597, 30.044552>,  <40.681385, 29.992945, 29.957289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.723072, 30.212597, 30.044552>,  <40.792553, 30.578684, 30.189991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723072, 30.212597, 30.044552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165461, -0.391087, 0.905358,
		-0.970798, 0.097102, 0.219366,
		-0.173704, -0.915217, -0.363600,
		40.670959, 29.938032, 29.935472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698612, 30.305712, 30.865341>,  <40.792553, 30.578684, 30.189991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698612, 30.305712, 30.865341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.685379, 29.993298, 30.615898>,  <40.677441, 29.805849, 30.466232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.685379, 29.993298, 30.615898>,  <40.698612, 30.305712, 30.865341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685379, 29.993298, 30.615898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253997, -0.610034, 0.750563,
		-0.966639, -0.133567, 0.218561,
		-0.033079, -0.781037, -0.623608,
		40.675457, 29.758987, 30.428816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273315, 29.729628, 31.242897>,  <40.698612, 30.305712, 30.865341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273315, 29.729628, 31.242897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544270, 29.623749, 30.968353>,  <40.706841, 29.560221, 30.803627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544270, 29.623749, 30.968353>,  <40.273315, 29.729628, 31.242897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544270, 29.623749, 30.968353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466175, -0.567313, 0.678850,
		-0.569075, -0.779802, -0.260888,
		0.677374, -0.264697, -0.686368,
		40.747482, 29.544340, 30.762445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419800, 29.051550, 31.305534>,  <40.273315, 29.729628, 31.242897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419800, 29.051550, 31.305534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.748013, 29.152790, 31.100529>,  <40.944939, 29.213533, 30.977526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.748013, 29.152790, 31.100529>,  <40.419800, 29.051550, 31.305534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748013, 29.152790, 31.100529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547055, -0.607656, 0.575747,
		-0.165710, -0.752791, -0.637060,
		0.820531, 0.253100, -0.512512,
		40.994171, 29.228720, 30.946775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769489, 28.427193, 31.387062>,  <40.419800, 29.051550, 31.305534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769489, 28.427193, 31.387062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.037975, 28.707500, 31.290405>,  <41.199066, 28.875685, 31.232412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.037975, 28.707500, 31.290405>,  <40.769489, 28.427193, 31.387062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037975, 28.707500, 31.290405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716535, -0.529900, 0.453634,
		0.189847, -0.477631, -0.857803,
		0.671219, 0.700767, -0.241640,
		41.239342, 28.917730, 31.217913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375557, 28.054171, 31.218527>,  <40.769489, 28.427193, 31.387062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375557, 28.054171, 31.218527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.510708, 28.428490, 31.258774>,  <41.591801, 28.653080, 31.282921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.510708, 28.428490, 31.258774>,  <41.375557, 28.054171, 31.218527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510708, 28.428490, 31.258774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785365, -0.339239, 0.517802,
		0.518690, -0.095934, -0.849563,
		0.337880, 0.935796, 0.100617,
		41.612072, 28.709229, 31.288960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080585, 27.992718, 31.156172>,  <41.375557, 28.054171, 31.218527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080585, 27.992718, 31.156172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.036297, 28.352814, 31.324604>,  <42.009724, 28.568871, 31.425663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.036297, 28.352814, 31.324604>,  <42.080585, 27.992718, 31.156172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036297, 28.352814, 31.324604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731031, -0.213262, 0.648161,
		0.673301, 0.379589, -0.634490,
		-0.110722, 0.900240, 0.421081,
		42.003078, 28.622885, 31.450928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733498, 28.468958, 31.084251>,  <42.080585, 27.992718, 31.156172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733498, 28.468958, 31.084251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.530731, 28.583191, 31.409576>,  <42.409073, 28.651731, 31.604773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.530731, 28.583191, 31.409576>,  <42.733498, 28.468958, 31.084251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530731, 28.583191, 31.409576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792331, -0.217225, 0.570110,
		0.339486, 0.933411, -0.116161,
		-0.506914, 0.285582, 0.813315,
		42.378658, 28.668865, 31.653570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.104567, 25.292887, 30.963474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.467028, 25.413685, 31.081924>,  <25.684504, 25.486164, 31.152994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.467028, 25.413685, 31.081924>,  <25.104567, 25.292887, 30.963474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467028, 25.413685, 31.081924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069601, -0.797054, 0.599884,
		0.417190, -0.522974, -0.743270,
		0.906151, 0.301997, 0.296123,
		25.738873, 25.504284, 31.170761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600739, 24.700462, 30.892864>,  <25.104567, 25.292887, 30.963474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600739, 24.700462, 30.892864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.788017, 24.949516, 31.143661>,  <25.900385, 25.098948, 31.294140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.788017, 24.949516, 31.143661>,  <25.600739, 24.700462, 30.892864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788017, 24.949516, 31.143661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010488, -0.713435, 0.700643,
		0.883561, -0.321464, -0.340559,
		0.468198, 0.622633, 0.626992,
		25.928476, 25.136307, 31.331758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216715, 24.281725, 31.155476>,  <25.600739, 24.700462, 30.892864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216715, 24.281725, 31.155476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.129204, 24.581394, 31.405556>,  <26.076696, 24.761196, 31.555603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.129204, 24.581394, 31.405556>,  <26.216715, 24.281725, 31.155476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129204, 24.581394, 31.405556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116617, -0.616054, 0.779024,
		0.968781, 0.243341, 0.047412,
		-0.218777, 0.749175, 0.625199,
		26.063570, 24.806147, 31.593115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686462, 24.318159, 31.633118>,  <26.216715, 24.281725, 31.155476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686462, 24.318159, 31.633118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.387451, 24.518574, 31.807549>,  <26.208044, 24.638823, 31.912207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.387451, 24.518574, 31.807549>,  <26.686462, 24.318159, 31.633118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387451, 24.518574, 31.807549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110765, -0.553290, 0.825591,
		0.654929, 0.665455, 0.358103,
		-0.747529, 0.501038, 0.436075,
		26.163193, 24.668886, 31.938372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905918, 24.435740, 32.319969>,  <26.686462, 24.318159, 31.633118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905918, 24.435740, 32.319969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.509260, 24.474781, 32.353718>,  <26.271265, 24.498205, 32.373966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.509260, 24.474781, 32.353718>,  <26.905918, 24.435740, 32.319969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509260, 24.474781, 32.353718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028956, -0.468900, 0.882776,
		0.125721, 0.877842, 0.462155,
		-0.991643, 0.097601, 0.084370,
		26.211767, 24.504061, 32.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824184, 24.713751, 32.961491>,  <26.905918, 24.435740, 32.319969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824184, 24.713751, 32.961491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.472855, 24.549805, 32.863060>,  <26.262056, 24.451437, 32.804001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.472855, 24.549805, 32.863060>,  <26.824184, 24.713751, 32.961491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472855, 24.549805, 32.863060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016733, -0.540773, 0.841002,
		-0.477768, 0.734557, 0.481833,
		-0.878327, -0.409866, -0.246073,
		26.209356, 24.426846, 32.789238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598186, 24.576715, 33.523525>,  <26.824184, 24.713751, 32.961491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598186, 24.576715, 33.523525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.354361, 24.335464, 33.317741>,  <26.208065, 24.190714, 33.194271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.354361, 24.335464, 33.317741>,  <26.598186, 24.576715, 33.523525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354361, 24.335464, 33.317741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033363, -0.667908, 0.743495,
		-0.792036, 0.436043, 0.427254,
		-0.609563, -0.603129, -0.514459,
		26.171492, 24.154526, 33.163403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204849, 24.276011, 34.094246>,  <26.598186, 24.576715, 33.523525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204849, 24.276011, 34.094246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.120588, 24.034958, 33.786362>,  <26.070032, 23.890326, 33.601631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.120588, 24.034958, 33.786362>,  <26.204849, 24.276011, 34.094246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120588, 24.034958, 33.786362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039503, -0.791988, 0.609257,
		-0.976762, 0.097936, 0.190641,
		-0.210654, -0.602631, -0.769715,
		26.057392, 23.854168, 33.555447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669947, 23.796120, 34.244709>,  <26.204849, 24.276011, 34.094246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669947, 23.796120, 34.244709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.916712, 23.635468, 33.973972>,  <26.064772, 23.539076, 33.811531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.916712, 23.635468, 33.973972>,  <25.669947, 23.796120, 34.244709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916712, 23.635468, 33.973972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099918, -0.813064, 0.573536,
		-0.780658, -0.421454, -0.461465,
		0.616920, -0.401627, -0.676836,
		26.101786, 23.514978, 33.770920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441072, 23.117193, 34.205067>,  <25.669947, 23.796120, 34.244709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441072, 23.117193, 34.205067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.801134, 23.111839, 34.030918>,  <26.017170, 23.108627, 33.926430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.801134, 23.111839, 34.030918>,  <25.441072, 23.117193, 34.205067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801134, 23.111839, 34.030918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245832, -0.809510, 0.533160,
		-0.359573, -0.586953, -0.725392,
		0.900152, -0.013386, -0.435370,
		26.071180, 23.107824, 33.900307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574823, 22.386976, 33.952335>,  <25.441072, 23.117193, 34.205067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574823, 22.386976, 33.952335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.929630, 22.566624, 33.995216>,  <26.142515, 22.674412, 34.020943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.929630, 22.566624, 33.995216>,  <25.574823, 22.386976, 33.952335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929630, 22.566624, 33.995216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357455, -0.814889, 0.456270,
		0.292275, -0.366401, -0.883361,
		0.887018, 0.449118, 0.107200,
		26.195736, 22.701359, 34.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983927, 21.927565, 33.636738>,  <25.574823, 22.386976, 33.952335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983927, 21.927565, 33.636738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.143053, 22.168560, 33.913506>,  <26.238529, 22.313156, 34.079567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.143053, 22.168560, 33.913506>,  <25.983927, 21.927565, 33.636738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143053, 22.168560, 33.913506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394011, -0.793267, 0.464202,
		0.828552, 0.087958, -0.552959,
		0.397814, 0.602488, 0.691920,
		26.262398, 22.349306, 34.121082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602709, 21.458660, 33.971386>,  <25.983927, 21.927565, 33.636738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602709, 21.458660, 33.971386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.636606, 21.216446, 34.287903>,  <25.656944, 21.071117, 34.477814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.636606, 21.216446, 34.287903>,  <25.602709, 21.458660, 33.971386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636606, 21.216446, 34.287903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970212, 0.130741, 0.203952,
		-0.226955, -0.785003, -0.576421,
		0.084741, -0.605538, 0.791292,
		25.662029, 21.034784, 34.525291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949867, 20.875542, 34.046913>,  <25.602709, 21.458660, 33.971386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949867, 20.875542, 34.046913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.116644, 20.994617, 34.390434>,  <25.216709, 21.066063, 34.596546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.116644, 20.994617, 34.390434>,  <24.949867, 20.875542, 34.046913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116644, 20.994617, 34.390434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905989, 0.060122, 0.419009,
		0.073114, -0.952759, 0.294796,
		0.416939, 0.297717, 0.858794,
		25.241726, 21.083923, 34.648075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967688, 21.070250, 33.433983>,  <24.949867, 20.875542, 34.046913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967688, 21.070250, 33.433983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.044821, 20.856632, 33.104713>,  <25.091101, 20.728462, 32.907150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.044821, 20.856632, 33.104713>,  <24.967688, 21.070250, 33.433983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044821, 20.856632, 33.104713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100255, 0.845252, -0.524880,
		0.976096, 0.018687, 0.216534,
		0.192834, -0.534042, -0.823173,
		25.102671, 20.696419, 32.857761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487946, 21.369673, 33.163086>,  <24.967688, 21.070250, 33.433983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487946, 21.369673, 33.163086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.371164, 21.160568, 32.842716>,  <25.301096, 21.035107, 32.650494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.371164, 21.160568, 32.842716>,  <25.487946, 21.369673, 33.163086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371164, 21.160568, 32.842716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252742, 0.765476, -0.591750,
		0.922434, -0.375191, -0.091360,
		-0.291954, -0.522760, -0.800928,
		25.283579, 21.003740, 32.602436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989504, 21.415724, 32.694576>,  <25.487946, 21.369673, 33.163086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989504, 21.415724, 32.694576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.668482, 21.324818, 32.473938>,  <25.475868, 21.270273, 32.341557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.668482, 21.324818, 32.473938>,  <25.989504, 21.415724, 32.694576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668482, 21.324818, 32.473938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197677, 0.771056, -0.605306,
		0.562875, -0.594829, -0.573890,
		-0.802555, -0.227267, -0.551592,
		25.427715, 21.256638, 32.308460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221123, 21.480875, 31.945925>,  <25.989504, 21.415724, 32.694576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221123, 21.480875, 31.945925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.826874, 21.474876, 31.878609>,  <25.590324, 21.471277, 31.838219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.826874, 21.474876, 31.878609>,  <26.221123, 21.480875, 31.945925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826874, 21.474876, 31.878609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119152, 0.644502, -0.755262,
		0.119791, -0.764456, -0.633449,
		-0.985623, -0.014997, -0.168292,
		25.531187, 21.470377, 31.828121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132902, 21.286755, 31.282364>,  <26.221123, 21.480875, 31.945925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132902, 21.286755, 31.282364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.794395, 21.478924, 31.374474>,  <25.591291, 21.594225, 31.429739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.794395, 21.478924, 31.374474>,  <26.132902, 21.286755, 31.282364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794395, 21.478924, 31.374474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058931, 0.513990, -0.855770,
		-0.529488, -0.710640, -0.463285,
		-0.846268, 0.480422, 0.230272,
		25.540516, 21.623051, 31.443556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623188, 21.171904, 30.748415>,  <26.132902, 21.286755, 31.282364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623188, 21.171904, 30.748415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.541246, 21.518955, 30.929634>,  <25.492081, 21.727186, 31.038366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.541246, 21.518955, 30.929634>,  <25.623188, 21.171904, 30.748415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541246, 21.518955, 30.929634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260234, 0.494484, -0.829315,
		-0.943564, -0.051990, -0.327084,
		-0.204854, 0.867630, 0.453048,
		25.479790, 21.779243, 31.065548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460258, 21.516872, 30.166132>,  <25.623188, 21.171904, 30.748415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460258, 21.516872, 30.166132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.491854, 21.802395, 30.444481>,  <25.510811, 21.973709, 30.611490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.491854, 21.802395, 30.444481>,  <25.460258, 21.516872, 30.166132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491854, 21.802395, 30.444481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265521, 0.657773, -0.704864,
		-0.960864, 0.240443, -0.137576,
		0.078986, 0.713808, 0.695873,
		25.515549, 22.016537, 30.653242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056623, 21.988953, 30.023685>,  <25.460258, 21.516872, 30.166132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056623, 21.988953, 30.023685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.307425, 22.184704, 30.266132>,  <25.457905, 22.302155, 30.411600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.307425, 22.184704, 30.266132>,  <25.056623, 21.988953, 30.023685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307425, 22.184704, 30.266132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397167, 0.468527, -0.789139,
		-0.670168, 0.735523, 0.099404,
		0.627003, 0.489376, 0.606117,
		25.495525, 22.331516, 30.447968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878757, 22.639492, 29.845146>,  <25.056623, 21.988953, 30.023685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878757, 22.639492, 29.845146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.235632, 22.642246, 30.025791>,  <25.449757, 22.643898, 30.134178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.235632, 22.642246, 30.025791>,  <24.878757, 22.639492, 29.845146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235632, 22.642246, 30.025791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344636, 0.635906, -0.690542,
		-0.291936, 0.771736, 0.564975,
		0.892188, 0.006883, 0.451612,
		25.503288, 22.644312, 30.161274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030180, 23.359035, 29.882753>,  <24.878757, 22.639492, 29.845146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030180, 23.359035, 29.882753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.378963, 23.164692, 29.906849>,  <25.588234, 23.048086, 29.921307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.378963, 23.164692, 29.906849>,  <25.030180, 23.359035, 29.882753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378963, 23.164692, 29.906849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307215, 0.447202, -0.840017,
		0.381190, 0.750967, 0.539205,
		0.871959, -0.485858, 0.060239,
		25.640551, 23.018934, 29.924921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675043, 23.814367, 29.703629>,  <25.030180, 23.359035, 29.882753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675043, 23.814367, 29.703629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.809282, 23.443195, 29.638729>,  <25.889826, 23.220493, 29.599791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.809282, 23.443195, 29.638729>,  <25.675043, 23.814367, 29.703629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809282, 23.443195, 29.638729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326869, 0.276245, -0.903795,
		0.883476, 0.250278, 0.396018,
		0.335598, -0.927928, -0.162248,
		25.909962, 23.164818, 29.590055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425632, 23.919811, 29.439598>,  <25.675043, 23.814367, 29.703629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425632, 23.919811, 29.439598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.333200, 23.540466, 29.352688>,  <26.277742, 23.312859, 29.300541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.333200, 23.540466, 29.352688>,  <26.425632, 23.919811, 29.439598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333200, 23.540466, 29.352688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381167, 0.117224, -0.917044,
		0.895162, -0.294727, 0.334398,
		-0.231078, -0.948364, -0.217275,
		26.263876, 23.255957, 29.287506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964184, 23.622526, 29.002342>,  <26.425632, 23.919811, 29.439598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964184, 23.622526, 29.002342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.664804, 23.365433, 28.936954>,  <26.485178, 23.211176, 28.897722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.664804, 23.365433, 28.936954>,  <26.964184, 23.622526, 29.002342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664804, 23.365433, 28.936954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258828, -0.056148, -0.964290,
		0.610603, -0.764029, 0.208382,
		-0.748446, -0.642734, -0.163468,
		26.440271, 23.172613, 28.887915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237701, 23.131464, 28.613878>,  <26.964184, 23.622526, 29.002342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237701, 23.131464, 28.613878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.841511, 23.147308, 28.561131>,  <26.603796, 23.156815, 28.529482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.841511, 23.147308, 28.561131>,  <27.237701, 23.131464, 28.613878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841511, 23.147308, 28.561131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124403, -0.153044, -0.980358,
		-0.059011, -0.987425, 0.146659,
		-0.990475, 0.039607, -0.131871,
		26.544369, 23.159191, 28.521570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955500, 23.408892, 28.754616>,  <27.237701, 23.131464, 28.613878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955500, 23.408892, 28.754616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.341045, 23.468758, 28.842766>,  <28.572372, 23.504677, 28.895657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.341045, 23.468758, 28.842766>,  <27.955500, 23.408892, 28.754616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341045, 23.468758, 28.842766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103404, -0.552190, 0.827281,
		0.245505, -0.820174, -0.516761,
		0.963865, 0.149667, 0.220375,
		28.630205, 23.513657, 28.908878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192225, 22.789982, 29.018927>,  <27.955500, 23.408892, 28.754616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192225, 22.789982, 29.018927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.458998, 23.048820, 29.166691>,  <28.619062, 23.204123, 29.255350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.458998, 23.048820, 29.166691>,  <28.192225, 22.789982, 29.018927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458998, 23.048820, 29.166691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048535, -0.532452, 0.845067,
		0.743534, -0.545675, -0.386517,
		0.666934, 0.647096, 0.369412,
		28.659079, 23.242949, 29.277514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745689, 22.372913, 29.204170>,  <28.192225, 22.789982, 29.018927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745689, 22.372913, 29.204170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.758112, 22.715595, 29.410118>,  <28.765566, 22.921206, 29.533686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.758112, 22.715595, 29.410118>,  <28.745689, 22.372913, 29.204170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758112, 22.715595, 29.410118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095671, -0.515299, 0.851654,
		0.994929, 0.022809, -0.097964,
		0.031055, 0.856707, 0.514868,
		28.767429, 22.972607, 29.564579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293070, 22.294992, 29.651873>,  <28.745689, 22.372913, 29.204170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293070, 22.294992, 29.651873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075300, 22.591873, 29.808201>,  <28.944639, 22.770002, 29.901999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075300, 22.591873, 29.808201>,  <29.293070, 22.294992, 29.651873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075300, 22.591873, 29.808201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180426, -0.351402, 0.918675,
		0.819177, 0.570661, 0.057398,
		-0.544422, 0.742201, 0.390823,
		28.911974, 22.814533, 29.925447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687494, 22.530743, 30.239977>,  <29.293070, 22.294992, 29.651873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687494, 22.530743, 30.239977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.314451, 22.666672, 30.288574>,  <29.090626, 22.748228, 30.317732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.314451, 22.666672, 30.288574>,  <29.687494, 22.530743, 30.239977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314451, 22.666672, 30.288574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001043, -0.334112, 0.942533,
		0.360886, 0.879142, 0.311242,
		-0.932609, 0.339822, 0.121494,
		29.034668, 22.768618, 30.325022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677855, 22.921295, 30.914898>,  <29.687494, 22.530743, 30.239977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677855, 22.921295, 30.914898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.292187, 22.834900, 30.853283>,  <29.060785, 22.783064, 30.816315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.292187, 22.834900, 30.853283>,  <29.677855, 22.921295, 30.914898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292187, 22.834900, 30.853283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040977, -0.452418, 0.890864,
		-0.262103, 0.865256, 0.427357,
		-0.964169, -0.215987, -0.154036,
		29.002935, 22.770103, 30.807072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185041, 23.226109, 31.539858>,  <29.677855, 22.921295, 30.914898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185041, 23.226109, 31.539858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.019640, 22.899895, 31.377911>,  <28.920399, 22.704166, 31.280743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.019640, 22.899895, 31.377911>,  <29.185041, 23.226109, 31.539858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019640, 22.899895, 31.377911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059420, -0.419545, 0.905788,
		-0.908562, 0.398602, 0.125024,
		-0.413502, -0.815535, -0.404868,
		28.895590, 22.655233, 31.256451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504850, 23.250614, 32.223507>,  <29.185041, 23.226109, 31.539858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504850, 23.250614, 32.223507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845222, 23.206192, 32.428871>,  <30.049446, 23.179539, 32.552090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845222, 23.206192, 32.428871>,  <29.504850, 23.250614, 32.223507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845222, 23.206192, 32.428871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497074, 0.486225, -0.718682,
		-0.169817, 0.866748, 0.468946,
		0.850929, -0.111057, 0.513407,
		30.100502, 23.172874, 32.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774805, 23.986921, 32.389095>,  <29.504850, 23.250614, 32.223507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774805, 23.986921, 32.389095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086779, 23.739319, 32.426037>,  <30.273964, 23.590757, 32.448200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086779, 23.739319, 32.426037>,  <29.774805, 23.986921, 32.389095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086779, 23.739319, 32.426037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560091, 0.624485, -0.544349,
		0.279282, 0.476284, 0.833759,
		0.779935, -0.619008, 0.092355,
		30.320759, 23.553616, 32.453743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397156, 24.350794, 32.734142>,  <29.774805, 23.986921, 32.389095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397156, 24.350794, 32.734142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522196, 24.065502, 32.483196>,  <30.597219, 23.894327, 32.332630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522196, 24.065502, 32.483196>,  <30.397156, 24.350794, 32.734142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522196, 24.065502, 32.483196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500960, 0.684932, -0.529063,
		0.807044, -0.148896, 0.571411,
		0.312602, -0.713231, -0.627361,
		30.615976, 23.851532, 32.294987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967676, 24.695444, 32.519016>,  <30.397156, 24.350794, 32.734142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967676, 24.695444, 32.519016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938454, 24.391491, 32.260639>,  <30.920919, 24.209120, 32.105614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938454, 24.391491, 32.260639>,  <30.967676, 24.695444, 32.519016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938454, 24.391491, 32.260639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486949, 0.538046, -0.688031,
		0.870370, -0.364806, 0.330716,
		-0.073058, -0.759883, -0.645941,
		30.916536, 24.163527, 32.066856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656446, 24.580992, 32.253773>,  <30.967676, 24.695444, 32.519016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656446, 24.580992, 32.253773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395248, 24.435738, 31.987923>,  <31.238529, 24.348585, 31.828413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395248, 24.435738, 31.987923>,  <31.656446, 24.580992, 32.253773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395248, 24.435738, 31.987923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430059, 0.544564, -0.720069,
		0.623414, -0.756031, -0.199430,
		-0.652997, -0.363134, -0.664627,
		31.199348, 24.326797, 31.788534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100002, 24.330997, 31.799988>,  <31.656446, 24.580992, 32.253773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100002, 24.330997, 31.799988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.749105, 24.410519, 31.625206>,  <31.538568, 24.458231, 31.520336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.749105, 24.410519, 31.625206>,  <32.100002, 24.330997, 31.799988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749105, 24.410519, 31.625206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453015, 0.643999, -0.616476,
		0.158841, -0.738744, -0.655001,
		-0.877238, 0.198804, -0.436956,
		31.485933, 24.470160, 31.494120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305859, 24.391136, 31.163265>,  <32.100002, 24.330997, 31.799988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305859, 24.391136, 31.163265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937510, 24.547081, 31.163269>,  <31.716499, 24.640648, 31.163271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937510, 24.547081, 31.163269>,  <32.305859, 24.391136, 31.163265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937510, 24.547081, 31.163269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319699, 0.755159, -0.572300,
		-0.223125, -0.527013, -0.820044,
		-0.920874, 0.389862, 0.000009,
		31.661247, 24.664040, 31.163271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.760286, 22.897589, 36.306343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.435890, 22.871933, 36.073730>,  <29.241253, 22.856541, 35.934162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.435890, 22.871933, 36.073730>,  <29.760286, 22.897589, 36.306343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435890, 22.871933, 36.073730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310679, 0.795038, -0.520954,
		0.495751, -0.603159, -0.624844,
		-0.810993, -0.064138, -0.581530,
		29.192593, 22.852692, 35.899273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922720, 23.257507, 35.784283>,  <29.760286, 22.897589, 36.306343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922720, 23.257507, 35.784283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.525381, 23.234169, 35.744564>,  <29.286978, 23.220165, 35.720734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.525381, 23.234169, 35.744564>,  <29.922720, 23.257507, 35.784283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525381, 23.234169, 35.744564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000551, 0.859768, -0.510685,
		0.115173, -0.507342, -0.854014,
		-0.993346, -0.058347, -0.099301,
		29.227377, 23.216665, 35.714775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729166, 23.499109, 35.113647>,  <29.922720, 23.257507, 35.784283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729166, 23.499109, 35.113647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387777, 23.546535, 35.316635>,  <29.182943, 23.574991, 35.438427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387777, 23.546535, 35.316635>,  <29.729166, 23.499109, 35.113647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387777, 23.546535, 35.316635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090547, 0.925225, -0.368455,
		-0.513212, -0.360416, -0.778918,
		-0.853472, 0.118567, 0.507472,
		29.131735, 23.582106, 35.468876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370207, 23.949415, 34.684654>,  <29.729166, 23.499109, 35.113647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370207, 23.949415, 34.684654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.146547, 23.966286, 35.015850>,  <29.012352, 23.976408, 35.214569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.146547, 23.966286, 35.015850>,  <29.370207, 23.949415, 34.684654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146547, 23.966286, 35.015850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160235, 0.974378, -0.157839,
		-0.813434, -0.220929, -0.538066,
		-0.559150, 0.042175, 0.827993,
		28.978802, 23.978939, 35.264248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819359, 24.178595, 34.402367>,  <29.370207, 23.949415, 34.684654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819359, 24.178595, 34.402367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810076, 24.280823, 34.788971>,  <28.804506, 24.342159, 35.020935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810076, 24.280823, 34.788971>,  <28.819359, 24.178595, 34.402367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810076, 24.280823, 34.788971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284537, 0.925101, -0.251451,
		-0.958384, -0.280844, 0.051251,
		-0.023206, 0.255569, 0.966512,
		28.803114, 24.357494, 35.078926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127998, 24.329319, 34.675255>,  <28.819359, 24.178595, 34.402367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127998, 24.329319, 34.675255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.365528, 24.532875, 34.924541>,  <28.508047, 24.655008, 35.074112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.365528, 24.532875, 34.924541>,  <28.127998, 24.329319, 34.675255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365528, 24.532875, 34.924541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296726, 0.858488, -0.418272,
		-0.747880, 0.063456, 0.660795,
		0.593827, 0.508892, 0.623216,
		28.543676, 24.685543, 35.111507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716265, 24.946548, 34.753490>,  <28.127998, 24.329319, 34.675255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716265, 24.946548, 34.753490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.082729, 25.036655, 34.886097>,  <28.302608, 25.090719, 34.965660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.082729, 25.036655, 34.886097>,  <27.716265, 24.946548, 34.753490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082729, 25.036655, 34.886097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082494, 0.915384, -0.394038,
		-0.392229, 0.333654, 0.857223,
		0.916161, 0.225269, 0.331516,
		28.357578, 25.104237, 34.985550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557920, 25.572561, 35.181740>,  <27.716265, 24.946548, 34.753490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557920, 25.572561, 35.181740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.932531, 25.553513, 35.042805>,  <28.157299, 25.542084, 34.959442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.932531, 25.553513, 35.042805>,  <27.557920, 25.572561, 35.181740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932531, 25.553513, 35.042805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011522, 0.986016, -0.166252,
		0.350401, 0.159702, 0.922884,
		0.936529, -0.047622, -0.347341,
		28.213490, 25.539227, 34.938602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745342, 26.200962, 35.435593>,  <27.557920, 25.572561, 35.181740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745342, 26.200962, 35.435593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.999498, 26.095272, 35.145363>,  <28.151993, 26.031858, 34.971226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.999498, 26.095272, 35.145363>,  <27.745342, 26.200962, 35.435593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999498, 26.095272, 35.145363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063612, 0.918531, -0.390197,
		0.769565, 0.294083, 0.566820,
		0.635392, -0.264226, -0.725577,
		28.190117, 26.016005, 34.927689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075779, 26.818213, 35.218281>,  <27.745342, 26.200962, 35.435593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075779, 26.818213, 35.218281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.188217, 26.575233, 34.921097>,  <28.255680, 26.429447, 34.742786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.188217, 26.575233, 34.921097>,  <28.075779, 26.818213, 35.218281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188217, 26.575233, 34.921097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059688, 0.783745, -0.618208,
		0.957821, 0.129431, 0.256566,
		0.281098, -0.607447, -0.742962,
		28.272547, 26.393000, 34.698208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783875, 27.070814, 34.840836>,  <28.075779, 26.818213, 35.218281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783875, 27.070814, 34.840836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.561644, 26.847702, 34.594193>,  <28.428305, 26.713835, 34.446205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.561644, 26.847702, 34.594193>,  <28.783875, 27.070814, 34.840836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561644, 26.847702, 34.594193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000649, 0.741307, -0.671165,
		0.831463, -0.373286, -0.411493,
		-0.555579, -0.557782, -0.616612,
		28.394970, 26.680367, 34.409210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108734, 27.225063, 34.211563>,  <28.783875, 27.070814, 34.840836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108734, 27.225063, 34.211563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764008, 27.056362, 34.098850>,  <28.557173, 26.955141, 34.031223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764008, 27.056362, 34.098850>,  <29.108734, 27.225063, 34.211563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764008, 27.056362, 34.098850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009053, 0.568238, -0.822815,
		0.507141, -0.706563, -0.493534,
		-0.861815, -0.421751, -0.281780,
		28.505463, 26.929836, 34.014317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519257, 26.600821, 34.006256>,  <29.108734, 27.225063, 34.211563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519257, 26.600821, 34.006256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893637, 26.576630, 33.867496>,  <30.118265, 26.562115, 33.784241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893637, 26.576630, 33.867496>,  <29.519257, 26.600821, 34.006256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893637, 26.576630, 33.867496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195041, -0.731196, 0.653691,
		-0.293186, -0.679482, -0.672567,
		0.935950, -0.060475, -0.346903,
		30.174421, 26.558487, 33.763424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659376, 25.884390, 33.795425>,  <29.519257, 26.600821, 34.006256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659376, 25.884390, 33.795425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.020510, 26.043324, 33.861176>,  <30.237190, 26.138683, 33.900623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.020510, 26.043324, 33.861176>,  <29.659376, 25.884390, 33.795425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020510, 26.043324, 33.861176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193655, -0.717029, 0.669602,
		0.383916, -0.572707, -0.724303,
		0.902832, 0.397336, 0.164371,
		30.291359, 26.162525, 33.910488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112131, 25.307732, 33.791061>,  <29.659376, 25.884390, 33.795425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112131, 25.307732, 33.791061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.351345, 25.590946, 33.941284>,  <30.494873, 25.760874, 34.031418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.351345, 25.590946, 33.941284>,  <30.112131, 25.307732, 33.791061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351345, 25.590946, 33.941284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349427, -0.652039, 0.672865,
		0.721289, -0.271167, -0.637347,
		0.598033, 0.708036, 0.375555,
		30.530756, 25.803356, 34.053951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750158, 24.932396, 33.963741>,  <30.112131, 25.307732, 33.791061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750158, 24.932396, 33.963741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.728704, 25.256443, 34.197266>,  <30.715832, 25.450872, 34.337379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.728704, 25.256443, 34.197266>,  <30.750158, 24.932396, 33.963741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728704, 25.256443, 34.197266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402023, -0.517654, 0.755256,
		0.914057, 0.275211, -0.297923,
		-0.053633, 0.810119, 0.583807,
		30.712614, 25.499479, 34.372406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355434, 24.962236, 34.218128>,  <30.750158, 24.932396, 33.963741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355434, 24.962236, 34.218128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.146984, 25.182823, 34.478687>,  <31.021914, 25.315176, 34.635021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.146984, 25.182823, 34.478687>,  <31.355434, 24.962236, 34.218128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146984, 25.182823, 34.478687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446012, -0.474750, 0.758739,
		0.727668, 0.685928, 0.001444,
		-0.521126, 0.551466, 0.651393,
		30.990646, 25.348263, 34.674107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884825, 25.095377, 34.669930>,  <31.355434, 24.962236, 34.218128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884825, 25.095377, 34.669930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554928, 25.182369, 34.878738>,  <31.356989, 25.234564, 35.004025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554928, 25.182369, 34.878738>,  <31.884825, 25.095377, 34.669930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554928, 25.182369, 34.878738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367555, -0.495381, 0.787084,
		0.429772, 0.841011, 0.328627,
		-0.824742, 0.217478, 0.522019,
		31.307505, 25.247612, 35.035343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110592, 25.347790, 35.301418>,  <31.884825, 25.095377, 34.669930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110592, 25.347790, 35.301418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733864, 25.223770, 35.353325>,  <31.507826, 25.149359, 35.384468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733864, 25.223770, 35.353325>,  <32.110592, 25.347790, 35.301418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733864, 25.223770, 35.353325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305776, -0.630116, 0.713761,
		-0.139536, 0.711915, 0.688264,
		-0.941823, -0.310050, 0.129763,
		31.451317, 25.130754, 35.392254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093739, 25.170074, 36.090221>,  <32.110592, 25.347790, 35.301418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093739, 25.170074, 36.090221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.794649, 24.974861, 35.910118>,  <31.615196, 24.857733, 35.802055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.794649, 24.974861, 35.910118>,  <32.093739, 25.170074, 36.090221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794649, 24.974861, 35.910118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111391, -0.760673, 0.639506,
		-0.654602, 0.428018, 0.623135,
		-0.747722, -0.488034, -0.450261,
		31.570333, 24.828451, 35.775040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540739, 25.027306, 36.664837>,  <32.093739, 25.170074, 36.090221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540739, 25.027306, 36.664837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.464582, 24.755741, 36.381195>,  <31.418888, 24.592802, 36.211010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.464582, 24.755741, 36.381195>,  <31.540739, 25.027306, 36.664837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464582, 24.755741, 36.381195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258872, -0.662032, 0.703348,
		-0.946962, 0.317479, -0.049705,
		-0.190392, -0.678911, -0.709105,
		31.407465, 24.552069, 36.168465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858124, 24.651886, 36.796219>,  <31.540739, 25.027306, 36.664837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858124, 24.651886, 36.796219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.094034, 24.414513, 36.577129>,  <31.235580, 24.272089, 36.445675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.094034, 24.414513, 36.577129>,  <30.858124, 24.651886, 36.796219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094034, 24.414513, 36.577129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371175, -0.801550, 0.468772,
		-0.717211, -0.073170, -0.693004,
		0.589777, -0.593434, -0.547721,
		31.270967, 24.236483, 36.412811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388647, 24.114576, 36.708038>,  <30.858124, 24.651886, 36.796219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388647, 24.114576, 36.708038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.759159, 23.991661, 36.620789>,  <30.981466, 23.917912, 36.568439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.759159, 23.991661, 36.620789>,  <30.388647, 24.114576, 36.708038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759159, 23.991661, 36.620789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230425, -0.919877, 0.317380,
		-0.298172, -0.243722, -0.922872,
		0.926282, -0.307287, -0.218122,
		31.037045, 23.899475, 36.555351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325655, 23.532339, 36.410995>,  <30.388647, 24.114576, 36.708038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325655, 23.532339, 36.410995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.708511, 23.506683, 36.523972>,  <30.938225, 23.491289, 36.591755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.708511, 23.506683, 36.523972>,  <30.325655, 23.532339, 36.410995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708511, 23.506683, 36.523972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147935, -0.946634, 0.286355,
		0.248996, -0.315864, -0.915549,
		0.957139, -0.064141, 0.282436,
		30.995653, 23.487442, 36.608704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492304, 22.869179, 36.301407>,  <30.325655, 23.532339, 36.410995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492304, 22.869179, 36.301407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.777142, 22.979805, 36.559532>,  <30.948044, 23.046181, 36.714409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.777142, 22.979805, 36.559532>,  <30.492304, 22.869179, 36.301407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777142, 22.979805, 36.559532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133115, -0.849287, 0.510875,
		0.689347, -0.449693, -0.567959,
		0.712096, 0.276566, 0.645314,
		30.990770, 23.062775, 36.753128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862680, 22.270535, 36.361652>,  <30.492304, 22.869179, 36.301407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862680, 22.270535, 36.361652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.965742, 22.501408, 36.671612>,  <31.027578, 22.639931, 36.857590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.965742, 22.501408, 36.671612>,  <30.862680, 22.270535, 36.361652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965742, 22.501408, 36.671612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147954, -0.768955, 0.621947,
		0.954843, -0.274896, -0.112727,
		0.257652, 0.577183, 0.774903,
		31.043037, 22.674562, 36.904083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264809, 22.394260, 35.747456>,  <30.862680, 22.270535, 36.361652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264809, 22.394260, 35.747456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074545, 22.162281, 35.482910>,  <29.960386, 22.023092, 35.324181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074545, 22.162281, 35.482910>,  <30.264809, 22.394260, 35.747456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074545, 22.162281, 35.482910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095511, 0.781476, -0.616582,
		0.874429, -0.230115, -0.427107,
		-0.475659, -0.579951, -0.661367,
		29.931847, 21.988297, 35.284500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671629, 22.397528, 35.021488>,  <30.264809, 22.394260, 35.747456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671629, 22.397528, 35.021488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326500, 22.240879, 34.893635>,  <30.119423, 22.146889, 34.816921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326500, 22.240879, 34.893635>,  <30.671629, 22.397528, 35.021488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326500, 22.240879, 34.893635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190763, 0.333306, -0.923318,
		0.468130, -0.857635, -0.212877,
		-0.862823, -0.391624, -0.319636,
		30.067654, 22.123392, 34.797745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855036, 22.009506, 34.367767>,  <30.671629, 22.397528, 35.021488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855036, 22.009506, 34.367767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.465759, 22.101479, 34.370075>,  <30.232193, 22.156662, 34.371460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.465759, 22.101479, 34.370075>,  <30.855036, 22.009506, 34.367767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465759, 22.101479, 34.370075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061859, 0.285819, -0.956285,
		-0.221528, -0.930290, -0.292380,
		-0.973190, 0.229930, 0.005770,
		30.173801, 22.170458, 34.371807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615904, 21.727711, 33.744030>,  <30.855036, 22.009506, 34.367767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615904, 21.727711, 33.744030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.328033, 21.982738, 33.853989>,  <30.155312, 22.135756, 33.919964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.328033, 21.982738, 33.853989>,  <30.615904, 21.727711, 33.744030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328033, 21.982738, 33.853989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119011, 0.503351, -0.855847,
		-0.684032, -0.583219, -0.438128,
		-0.719679, 0.637569, 0.274898,
		30.112129, 22.174009, 33.936459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204994, 21.758299, 33.234180>,  <30.615904, 21.727711, 33.744030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204994, 21.758299, 33.234180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.102491, 22.099640, 33.415783>,  <30.040989, 22.304445, 33.524742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.102491, 22.099640, 33.415783>,  <30.204994, 21.758299, 33.234180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102491, 22.099640, 33.415783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008135, 0.471574, -0.881789,
		-0.966574, -0.222272, -0.127786,
		-0.256258, 0.853354, 0.454003,
		30.025614, 22.355646, 33.551983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551138, 22.027964, 32.882378>,  <30.204994, 21.758299, 33.234180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551138, 22.027964, 32.882378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.754053, 22.322227, 33.061916>,  <29.875803, 22.498785, 33.169640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.754053, 22.322227, 33.061916>,  <29.551138, 22.027964, 32.882378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754053, 22.322227, 33.061916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156896, 0.590976, -0.791284,
		-0.847374, 0.330986, 0.415218,
		0.507288, 0.735660, 0.448847,
		29.906240, 22.542925, 33.196571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323956, 22.589907, 32.605118>,  <29.551138, 22.027964, 32.882378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323956, 22.589907, 32.605118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650408, 22.745834, 32.775749>,  <29.846279, 22.839392, 32.878128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650408, 22.745834, 32.775749>,  <29.323956, 22.589907, 32.605118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650408, 22.745834, 32.775749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228373, 0.460532, -0.857763,
		-0.530826, 0.797466, 0.286830,
		0.816131, 0.389819, 0.426582,
		29.895247, 22.862780, 32.903725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715105, 22.911957, 32.246021>,  <29.323956, 22.589907, 32.605118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715105, 22.911957, 32.246021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.683434, 22.636711, 31.957512>,  <28.664431, 22.471563, 31.784407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.683434, 22.636711, 31.957512>,  <28.715105, 22.911957, 32.246021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683434, 22.636711, 31.957512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303951, -0.672424, 0.674878,
		-0.949392, 0.272668, -0.155910,
		-0.079180, -0.688112, -0.721271,
		28.659679, 22.430277, 31.741131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118422, 22.575109, 32.345570>,  <28.715105, 22.911957, 32.246021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118422, 22.575109, 32.345570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.287695, 22.298641, 32.111237>,  <28.389259, 22.132761, 31.970636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.287695, 22.298641, 32.111237>,  <28.118422, 22.575109, 32.345570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287695, 22.298641, 32.111237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331925, -0.719898, 0.609568,
		-0.843055, -0.063504, -0.534064,
		0.423182, -0.691169, -0.585835,
		28.414650, 22.091291, 31.935486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576220, 22.045601, 32.296967>,  <28.118422, 22.575109, 32.345570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576220, 22.045601, 32.296967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.931980, 21.883602, 32.212162>,  <28.145435, 21.786404, 32.161282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.931980, 21.883602, 32.212162>,  <27.576220, 22.045601, 32.296967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931980, 21.883602, 32.212162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258180, -0.827759, 0.498154,
		-0.377242, -0.388322, -0.840770,
		0.889399, -0.404995, -0.212009,
		28.198799, 21.762104, 32.148560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331358, 21.372801, 32.194424>,  <27.576220, 22.045601, 32.296967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331358, 21.372801, 32.194424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.727907, 21.353058, 32.242992>,  <27.965837, 21.341211, 32.272133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.727907, 21.353058, 32.242992>,  <27.331358, 21.372801, 32.194424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727907, 21.353058, 32.242992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102367, -0.870109, 0.482111,
		0.081853, -0.490382, -0.867655,
		0.991373, -0.049357, 0.121420,
		28.025320, 21.338251, 32.279419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585640, 20.757780, 31.894142>,  <27.331358, 21.372801, 32.194424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585640, 20.757780, 31.894142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.822540, 20.864948, 32.198105>,  <27.964682, 20.929249, 32.380482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.822540, 20.864948, 32.198105>,  <27.585640, 20.757780, 31.894142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822540, 20.864948, 32.198105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200500, -0.864433, 0.461037,
		0.780409, -0.425411, -0.458244,
		0.592252, 0.267919, 0.759906,
		28.000216, 20.945324, 32.426075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938055, 20.158873, 32.192169>,  <27.585640, 20.757780, 31.894142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938055, 20.158873, 32.192169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.014313, 20.394669, 32.506153>,  <28.060066, 20.536146, 32.694542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.014313, 20.394669, 32.506153>,  <27.938055, 20.158873, 32.192169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014313, 20.394669, 32.506153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382272, -0.691920, 0.612466,
		0.904170, -0.416829, 0.093437,
		0.190643, 0.589492, 0.784955,
		28.071507, 20.571516, 32.741638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470480, 19.907167, 32.623814>,  <27.938055, 20.158873, 32.192169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470480, 19.907167, 32.623814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.216267, 20.134705, 32.832626>,  <28.063740, 20.271227, 32.957912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.216267, 20.134705, 32.832626>,  <28.470480, 19.907167, 32.623814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216267, 20.134705, 32.832626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206268, -0.776662, 0.595189,
		0.744011, 0.270583, 0.610927,
		-0.635532, 0.568841, 0.522033,
		28.025606, 20.305357, 32.989235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626385, 19.708029, 33.305866>,  <28.470480, 19.907167, 32.623814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626385, 19.708029, 33.305866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.286997, 19.911987, 33.362579>,  <28.083364, 20.034363, 33.396606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.286997, 19.911987, 33.362579>,  <28.626385, 19.708029, 33.305866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286997, 19.911987, 33.362579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218508, -0.581498, 0.783655,
		0.482028, 0.633929, 0.604801,
		-0.848472, 0.509897, 0.141780,
		28.032455, 20.064957, 33.405113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547543, 19.819117, 34.005905>,  <28.626385, 19.708029, 33.305866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547543, 19.819117, 34.005905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.170521, 19.834267, 33.873146>,  <27.944307, 19.843357, 33.793491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.170521, 19.834267, 33.873146>,  <28.547543, 19.819117, 34.005905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170521, 19.834267, 33.873146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303262, -0.513646, 0.802621,
		-0.140076, 0.857166, 0.495626,
		-0.942556, 0.037877, -0.331895,
		27.887754, 19.845631, 33.773579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.197096, 32.927006, 24.938208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801493, 32.871078, 24.918957>,  <29.564131, 32.837524, 24.907406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801493, 32.871078, 24.918957>,  <30.197096, 32.927006, 24.938208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801493, 32.871078, 24.918957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136458, -0.988368, 0.067147,
		-0.056954, 0.059842, 0.996582,
		-0.989007, -0.139816, -0.048126,
		29.504791, 32.829132, 24.904518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945723, 32.512234, 25.513605>,  <30.197096, 32.927006, 24.938208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945723, 32.512234, 25.513605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686884, 32.471489, 25.211376>,  <29.531580, 32.447044, 25.030039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686884, 32.471489, 25.211376>,  <29.945723, 32.512234, 25.513605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686884, 32.471489, 25.211376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060626, -0.994771, 0.082185,
		-0.759993, 0.007374, 0.649889,
		-0.647097, -0.101860, -0.755572,
		29.492754, 32.440929, 24.984705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494566, 32.109932, 25.778959>,  <29.945723, 32.512234, 25.513605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494566, 32.109932, 25.778959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424709, 32.045002, 25.390495>,  <29.382795, 32.006042, 25.157417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424709, 32.045002, 25.390495>,  <29.494566, 32.109932, 25.778959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424709, 32.045002, 25.390495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159739, -0.977922, 0.134732,
		-0.971588, -0.131602, 0.196718,
		-0.174644, -0.162328, -0.971159,
		29.372316, 31.996304, 25.099148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115881, 31.419518, 25.760799>,  <29.494566, 32.109932, 25.778959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115881, 31.419518, 25.760799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164492, 31.445808, 25.364635>,  <29.193659, 31.461584, 25.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164492, 31.445808, 25.364635>,  <29.115881, 31.419518, 25.760799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164492, 31.445808, 25.364635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059857, -0.996474, -0.058787,
		-0.990782, -0.052139, -0.125032,
		0.121526, 0.065729, -0.990410,
		29.200949, 31.465527, 25.067513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608583, 30.969086, 25.386473>,  <29.115881, 31.419518, 25.760799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608583, 30.969086, 25.386473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904064, 31.018246, 25.121380>,  <29.081352, 31.047743, 24.962324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904064, 31.018246, 25.121380>,  <28.608583, 30.969086, 25.386473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904064, 31.018246, 25.121380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175643, -0.984365, 0.013229,
		-0.650744, -0.126176, -0.748740,
		0.738703, 0.122902, -0.662732,
		29.125675, 31.055117, 24.922560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581842, 30.443613, 24.850262>,  <28.608583, 30.969086, 25.386473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581842, 30.443613, 24.850262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957315, 30.571358, 24.798279>,  <29.182598, 30.648005, 24.767090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957315, 30.571358, 24.798279>,  <28.581842, 30.443613, 24.850262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957315, 30.571358, 24.798279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340873, -0.916219, 0.210589,
		-0.051814, -0.241974, -0.968898,
		0.938680, 0.319360, -0.129956,
		29.238920, 30.667166, 24.759293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916882, 29.920113, 24.379910>,  <28.581842, 30.443613, 24.850262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916882, 29.920113, 24.379910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207161, 30.107891, 24.581100>,  <29.381329, 30.220558, 24.701815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207161, 30.107891, 24.581100>,  <28.916882, 29.920113, 24.379910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207161, 30.107891, 24.581100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363356, -0.882292, 0.299222,
		0.584240, -0.034385, -0.810852,
		0.725697, 0.469445, 0.502976,
		29.424870, 30.248724, 24.731993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461338, 29.497505, 24.217779>,  <28.916882, 29.920113, 24.379910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461338, 29.497505, 24.217779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553633, 29.710423, 24.543583>,  <29.609009, 29.838173, 24.739065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553633, 29.710423, 24.543583>,  <29.461338, 29.497505, 24.217779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553633, 29.710423, 24.543583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412783, -0.811584, 0.413450,
		0.881119, 0.240817, -0.406984,
		0.230736, 0.532295, 0.814508,
		29.622854, 29.870111, 24.787935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110544, 29.287163, 24.325706>,  <29.461338, 29.497505, 24.217779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110544, 29.287163, 24.325706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992594, 29.437572, 24.677082>,  <29.921824, 29.527819, 24.887907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992594, 29.437572, 24.677082>,  <30.110544, 29.287163, 24.325706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992594, 29.437572, 24.677082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467986, -0.744678, 0.475862,
		0.833089, 0.551417, 0.043614,
		-0.294877, 0.376024, 0.878438,
		29.904131, 29.550381, 24.940613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603392, 29.046354, 24.703596>,  <30.110544, 29.287163, 24.325706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603392, 29.046354, 24.703596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319677, 29.140167, 24.969501>,  <30.149448, 29.196455, 25.129045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319677, 29.140167, 24.969501>,  <30.603392, 29.046354, 24.703596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319677, 29.140167, 24.969501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244380, -0.802739, 0.543957,
		0.661206, 0.548275, 0.512056,
		-0.709285, 0.234531, 0.664763,
		30.106892, 29.210527, 25.168930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927008, 28.997805, 25.333099>,  <30.603392, 29.046354, 24.703596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927008, 28.997805, 25.333099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545403, 28.964252, 25.448215>,  <30.316439, 28.944120, 25.517286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545403, 28.964252, 25.448215>,  <30.927008, 28.997805, 25.333099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545403, 28.964252, 25.448215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229779, -0.821184, 0.522358,
		0.192514, 0.564465, 0.802694,
		-0.954013, -0.083881, 0.287792,
		30.259199, 28.939089, 25.534554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061661, 28.904776, 26.051064>,  <30.927008, 28.997805, 25.333099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061661, 28.904776, 26.051064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707779, 28.749538, 25.947769>,  <30.495451, 28.656397, 25.885794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707779, 28.749538, 25.947769>,  <31.061661, 28.904776, 26.051064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707779, 28.749538, 25.947769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213233, -0.829532, 0.516147,
		-0.414527, 0.401573, 0.816644,
		-0.884703, -0.388092, -0.258235,
		30.442368, 28.633110, 25.870298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429501, 29.204784, 26.667639>,  <31.061661, 28.904776, 26.051064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429501, 29.204784, 26.667639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795511, 29.134705, 26.812984>,  <32.015118, 29.092657, 26.900192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795511, 29.134705, 26.812984>,  <31.429501, 29.204784, 26.667639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795511, 29.134705, 26.812984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367588, 0.733144, -0.572171,
		-0.166152, 0.657119, 0.735247,
		0.915026, -0.175201, 0.363362,
		32.070019, 29.082144, 26.921993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648783, 29.846245, 26.994387>,  <31.429501, 29.204784, 26.667639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648783, 29.846245, 26.994387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971857, 29.638477, 26.882782>,  <32.165703, 29.513817, 26.815819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971857, 29.638477, 26.882782>,  <31.648783, 29.846245, 26.994387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971857, 29.638477, 26.882782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360327, 0.809399, -0.463722,
		0.466699, 0.274005, 0.840900,
		0.807686, -0.519418, -0.279014,
		32.214165, 29.482653, 26.799078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192402, 30.293339, 27.091326>,  <31.648783, 29.846245, 26.994387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192402, 30.293339, 27.091326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376228, 30.031193, 26.851559>,  <32.486523, 29.873905, 26.707699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376228, 30.031193, 26.851559>,  <32.192402, 30.293339, 27.091326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376228, 30.031193, 26.851559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481028, 0.751014, -0.452316,
		0.746601, -0.080468, 0.660388,
		0.459563, -0.655365, -0.599415,
		32.514099, 29.834583, 26.671734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951939, 30.380550, 27.201899>,  <32.192402, 30.293339, 27.091326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951939, 30.380550, 27.201899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925690, 30.148617, 26.877064>,  <32.909939, 30.009457, 26.682163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925690, 30.148617, 26.877064>,  <32.951939, 30.380550, 27.201899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925690, 30.148617, 26.877064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780315, 0.477429, -0.403943,
		0.621934, -0.660190, 0.421126,
		-0.065621, -0.579837, -0.812086,
		32.906002, 29.974667, 26.633438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610806, 30.097380, 27.059374>,  <32.951939, 30.380550, 27.201899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610806, 30.097380, 27.059374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409458, 30.132828, 26.715569>,  <33.288651, 30.154097, 26.509285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409458, 30.132828, 26.715569>,  <33.610806, 30.097380, 27.059374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409458, 30.132828, 26.715569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740311, 0.557207, -0.376112,
		0.445596, -0.825631, -0.346088,
		-0.503372, 0.088619, -0.859514,
		33.258446, 30.159414, 26.457714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062317, 30.263983, 26.526201>,  <33.610806, 30.097380, 27.059374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062317, 30.263983, 26.526201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715851, 30.351738, 26.346592>,  <33.507969, 30.404390, 26.238827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715851, 30.351738, 26.346592>,  <34.062317, 30.263983, 26.526201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715851, 30.351738, 26.346592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416199, 0.814038, -0.405119,
		0.276645, -0.537784, -0.796402,
		-0.866167, 0.219387, -0.449025,
		33.456001, 30.417555, 26.211884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283787, 30.459049, 25.836039>,  <34.062317, 30.263983, 26.526201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283787, 30.459049, 25.836039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908180, 30.595119, 25.856125>,  <33.682816, 30.676762, 25.868177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908180, 30.595119, 25.856125>,  <34.283787, 30.459049, 25.836039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908180, 30.595119, 25.856125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276271, 0.833304, -0.478830,
		-0.204733, -0.435757, -0.876470,
		-0.939020, 0.340176, 0.050218,
		33.626472, 30.697172, 25.871191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143040, 30.739336, 25.195446>,  <34.283787, 30.459049, 25.836039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143040, 30.739336, 25.195446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890011, 30.910957, 25.453365>,  <33.738194, 31.013929, 25.608118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890011, 30.910957, 25.453365>,  <34.143040, 30.739336, 25.195446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890011, 30.910957, 25.453365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149994, 0.884639, -0.441493,
		-0.759839, -0.182560, -0.623952,
		-0.632571, 0.429053, 0.644800,
		33.700241, 31.039673, 25.646805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830097, 31.184851, 24.757450>,  <34.143040, 30.739336, 25.195446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830097, 31.184851, 24.757450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790455, 31.293232, 25.140442>,  <33.766670, 31.358261, 25.370237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790455, 31.293232, 25.140442>,  <33.830097, 31.184851, 24.757450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790455, 31.293232, 25.140442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380851, 0.899278, -0.215061,
		-0.919310, 0.343343, -0.192316,
		-0.099106, 0.270951, 0.957478,
		33.760723, 31.374517, 25.427685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764252, 31.858679, 24.722633>,  <33.830097, 31.184851, 24.757450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764252, 31.858679, 24.722633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832790, 31.803230, 25.112797>,  <33.873913, 31.769960, 25.346895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832790, 31.803230, 25.112797>,  <33.764252, 31.858679, 24.722633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832790, 31.803230, 25.112797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587594, 0.809070, 0.011762,
		-0.790806, 0.571130, 0.220084,
		0.171345, -0.138622, 0.975410,
		33.884193, 31.761644, 25.405420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614750, 32.481476, 25.052258>,  <33.764252, 31.858679, 24.722633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614750, 32.481476, 25.052258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862328, 32.280838, 25.294022>,  <34.010876, 32.160458, 25.439079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862328, 32.280838, 25.294022>,  <33.614750, 32.481476, 25.052258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862328, 32.280838, 25.294022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624469, 0.781002, 0.008654,
		-0.476385, 0.372078, 0.796627,
		0.618947, -0.501592, 0.604409,
		34.048012, 32.130360, 25.475344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929935, 33.011887, 25.374704>,  <33.614750, 32.481476, 25.052258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929935, 33.011887, 25.374704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148315, 32.683262, 25.440414>,  <34.279343, 32.486088, 25.479841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148315, 32.683262, 25.440414>,  <33.929935, 33.011887, 25.374704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148315, 32.683262, 25.440414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816485, 0.565682, 0.115564,
		-0.187870, 0.071036, 0.979622,
		0.545945, -0.821558, 0.164275,
		34.312099, 32.436794, 25.489697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456207, 33.217964, 25.873558>,  <33.929935, 33.011887, 25.374704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456207, 33.217964, 25.873558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621384, 32.879906, 25.737785>,  <34.720490, 32.677071, 25.656321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621384, 32.879906, 25.737785>,  <34.456207, 33.217964, 25.873558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621384, 32.879906, 25.737785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895677, 0.444386, -0.016818,
		0.165053, -0.297079, 0.940480,
		0.412940, -0.845142, -0.339434,
		34.745266, 32.626362, 25.635956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900478, 32.923653, 26.353079>,  <34.456207, 33.217964, 25.873558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900478, 32.923653, 26.353079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035095, 32.750206, 26.018723>,  <35.115868, 32.646137, 25.818110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035095, 32.750206, 26.018723>,  <34.900478, 32.923653, 26.353079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035095, 32.750206, 26.018723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937971, 0.232934, 0.256812,
		0.083349, -0.870471, 0.485112,
		0.336546, -0.433616, -0.835891,
		35.136059, 32.620121, 25.767956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095249, 32.908726, 26.441523>,  <34.900478, 32.923653, 26.353079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095249, 32.908726, 26.441523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970551, 33.069401, 26.785954>,  <33.895729, 33.165806, 26.992613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970551, 33.069401, 26.785954>,  <34.095249, 32.908726, 26.441523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970551, 33.069401, 26.785954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583276, 0.634489, -0.507162,
		-0.750067, -0.660354, 0.036495,
		-0.311751, 0.401692, 0.861077,
		33.877026, 33.189907, 27.044277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401478, 32.980789, 26.359522>,  <34.095249, 32.908726, 26.441523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401478, 32.980789, 26.359522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515503, 33.260319, 26.621937>,  <33.583916, 33.428036, 26.779387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515503, 33.260319, 26.621937>,  <33.401478, 32.980789, 26.359522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515503, 33.260319, 26.621937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350992, 0.712999, -0.606990,
		-0.891934, -0.057236, 0.448529,
		0.285059, 0.698825, 0.656037,
		33.601021, 33.469967, 26.818748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611053, 33.129448, 26.410036>,  <33.401478, 32.980789, 26.359522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611053, 33.129448, 26.410036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274712, 33.293388, 26.551449>,  <32.072906, 33.391754, 26.636295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274712, 33.293388, 26.551449>,  <32.611053, 33.129448, 26.410036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274712, 33.293388, 26.551449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059848, -0.578757, 0.813301,
		0.537940, 0.705027, 0.462123,
		-0.840856, 0.409850, 0.353531,
		32.022453, 33.416344, 26.657509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780075, 33.372032, 26.997683>,  <32.611053, 33.129448, 26.410036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780075, 33.372032, 26.997683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385666, 33.312595, 27.027855>,  <32.149021, 33.276936, 27.045958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385666, 33.312595, 27.027855>,  <32.780075, 33.372032, 26.997683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385666, 33.312595, 27.027855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146678, -0.559094, 0.816027,
		-0.079081, 0.815681, 0.573071,
		-0.986018, -0.148589, 0.075429,
		32.089859, 33.268017, 27.050484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613678, 33.368145, 27.781708>,  <32.780075, 33.372032, 26.997683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613678, 33.368145, 27.781708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293720, 33.194336, 27.616123>,  <32.101746, 33.090050, 27.516773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293720, 33.194336, 27.616123>,  <32.613678, 33.368145, 27.781708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293720, 33.194336, 27.616123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102686, -0.778691, 0.618947,
		-0.591294, 0.452583, 0.667488,
		-0.799892, -0.434521, -0.413962,
		32.053753, 33.063980, 27.491934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100925, 33.140366, 28.264387>,  <32.613678, 33.368145, 27.781708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100925, 33.140366, 28.264387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996546, 32.900047, 27.962143>,  <31.933918, 32.755856, 27.780796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996546, 32.900047, 27.962143>,  <32.100925, 33.140366, 28.264387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996546, 32.900047, 27.962143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061158, -0.791447, 0.608171,
		-0.963413, 0.112490, 0.243271,
		-0.260949, -0.600798, -0.755611,
		31.918261, 32.719807, 27.735460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696882, 32.664261, 28.535736>,  <32.100925, 33.140366, 28.264387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696882, 32.664261, 28.535736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786802, 32.465405, 28.200520>,  <31.840754, 32.346092, 27.999390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786802, 32.465405, 28.200520>,  <31.696882, 32.664261, 28.535736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786802, 32.465405, 28.200520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132329, -0.867664, 0.479217,
		-0.965378, 0.003170, -0.260836,
		0.224799, -0.497141, -0.838043,
		31.854242, 32.316261, 27.949106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229765, 32.141186, 28.455015>,  <31.696882, 32.664261, 28.535736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229765, 32.141186, 28.455015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521603, 32.021667, 28.208954>,  <31.696705, 31.949957, 28.061317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521603, 32.021667, 28.208954>,  <31.229765, 32.141186, 28.455015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521603, 32.021667, 28.208954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073018, -0.928400, 0.364339,
		-0.679970, -0.220903, -0.699173,
		0.729595, -0.298792, -0.615154,
		31.740480, 31.932030, 28.024408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031956, 31.559624, 28.263680>,  <31.229765, 32.141186, 28.455015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031956, 31.559624, 28.263680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428169, 31.544823, 28.210800>,  <31.665897, 31.535942, 28.179073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428169, 31.544823, 28.210800>,  <31.031956, 31.559624, 28.263680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428169, 31.544823, 28.210800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042641, -0.832421, 0.552500,
		-0.130490, -0.552906, -0.822963,
		0.990532, -0.037004, -0.132199,
		31.725328, 31.533722, 28.171141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192236, 30.921957, 27.926498>,  <31.031956, 31.559624, 28.263680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192236, 30.921957, 27.926498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522427, 31.040569, 28.118607>,  <31.720541, 31.111736, 28.233871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522427, 31.040569, 28.118607>,  <31.192236, 30.921957, 27.926498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522427, 31.040569, 28.118607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051400, -0.807853, 0.587138,
		0.562092, -0.509354, -0.651622,
		0.825476, 0.296532, 0.480269,
		31.770069, 31.129528, 28.262688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620260, 30.209990, 27.934155>,  <31.192236, 30.921957, 27.926498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620260, 30.209990, 27.934155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749479, 30.475864, 28.203621>,  <31.827011, 30.635389, 28.365301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749479, 30.475864, 28.203621>,  <31.620260, 30.209990, 27.934155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749479, 30.475864, 28.203621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039055, -0.720592, 0.692259,
		0.945576, -0.197323, -0.258746,
		0.323049, 0.664689, 0.673668,
		31.846394, 30.675270, 28.405722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966267, 29.862749, 28.356777>,  <31.620260, 30.209990, 27.934155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966267, 29.862749, 28.356777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911333, 30.192455, 28.576496>,  <31.878372, 30.390280, 28.708326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911333, 30.192455, 28.576496>,  <31.966267, 29.862749, 28.356777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911333, 30.192455, 28.576496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152709, -0.565540, 0.810460,
		0.978682, 0.027422, 0.203541,
		-0.137335, 0.824265, 0.549296,
		31.870132, 30.439735, 28.741285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251331, 29.738483, 28.963366>,  <31.966267, 29.862749, 28.356777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251331, 29.738483, 28.963366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011162, 30.046814, 29.048515>,  <31.867060, 30.231812, 29.099606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011162, 30.046814, 29.048515>,  <32.251331, 29.738483, 28.963366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011162, 30.046814, 29.048515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314127, -0.472147, 0.823651,
		0.735400, 0.427672, 0.525626,
		-0.600426, 0.770827, 0.212874,
		31.831034, 30.278063, 29.112377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361366, 29.714317, 29.660421>,  <32.251331, 29.738483, 28.963366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361366, 29.714317, 29.660421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042164, 29.939335, 29.573959>,  <31.850641, 30.074347, 29.522083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042164, 29.939335, 29.573959>,  <32.361366, 29.714317, 29.660421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042164, 29.939335, 29.573959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549427, -0.531766, 0.644480,
		0.247606, 0.633062, 0.733433,
		-0.798011, 0.562545, -0.216153,
		31.802761, 30.108099, 29.509113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049011, 29.926371, 30.342831>,  <32.361366, 29.714317, 29.660421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049011, 29.926371, 30.342831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748724, 29.967453, 30.081795>,  <31.568552, 29.992102, 29.925173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748724, 29.967453, 30.081795>,  <32.049011, 29.926371, 30.342831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748724, 29.967453, 30.081795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581794, -0.570744, 0.579455,
		-0.312949, 0.814680, 0.488221,
		-0.750719, 0.102704, -0.652589,
		31.523508, 29.998264, 29.886019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399387, 29.989553, 30.710165>,  <32.049011, 29.926371, 30.342831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399387, 29.989553, 30.710165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270527, 29.886795, 30.345699>,  <31.193211, 29.825140, 30.127020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270527, 29.886795, 30.345699>,  <31.399387, 29.989553, 30.710165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270527, 29.886795, 30.345699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640502, -0.649600, 0.409606,
		-0.697120, 0.715559, 0.044726,
		-0.322151, -0.256897, -0.911165,
		31.173882, 29.809727, 30.072350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639854, 30.026421, 30.828608>,  <31.399387, 29.989553, 30.710165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639854, 30.026421, 30.828608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741327, 29.799862, 30.514961>,  <30.802212, 29.663927, 30.326773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741327, 29.799862, 30.514961>,  <30.639854, 30.026421, 30.828608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741327, 29.799862, 30.514961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583000, -0.736381, 0.343299,
		-0.771852, 0.370051, -0.517017,
		0.253683, -0.566397, -0.784117,
		30.817432, 29.629944, 30.279726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986853, 29.723186, 30.553501>,  <30.639854, 30.026421, 30.828608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986853, 29.723186, 30.553501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307009, 29.507473, 30.448772>,  <30.499102, 29.378046, 30.385935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307009, 29.507473, 30.448772>,  <29.986853, 29.723186, 30.553501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307009, 29.507473, 30.448772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404026, -0.807919, 0.428988,
		-0.442875, -0.237575, -0.864534,
		0.800391, -0.539282, -0.261821,
		30.547125, 29.345688, 30.370226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687206, 29.079386, 30.253361>,  <29.986853, 29.723186, 30.553501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687206, 29.079386, 30.253361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070108, 29.025269, 30.355621>,  <30.299850, 28.992798, 30.416977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070108, 29.025269, 30.355621>,  <29.687206, 29.079386, 30.253361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070108, 29.025269, 30.355621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254931, -0.812192, 0.524742,
		0.136645, -0.567485, -0.811966,
		0.957256, -0.135292, 0.255651,
		30.357285, 28.984680, 30.432316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666775, 28.360245, 30.328785>,  <29.687206, 29.079386, 30.253361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666775, 28.360245, 30.328785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008801, 28.487179, 30.492817>,  <30.214016, 28.563339, 30.591236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008801, 28.487179, 30.492817>,  <29.666775, 28.360245, 30.328785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008801, 28.487179, 30.492817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042911, -0.744839, 0.665863,
		0.516745, -0.586952, -0.623267,
		0.855064, 0.317336, 0.410078,
		30.265320, 28.582380, 30.615841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026960, 27.805393, 30.482292>,  <29.666775, 28.360245, 30.328785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026960, 27.805393, 30.482292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214567, 28.049900, 30.737282>,  <30.327131, 28.196604, 30.890276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214567, 28.049900, 30.737282>,  <30.026960, 27.805393, 30.482292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214567, 28.049900, 30.737282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042632, -0.705275, 0.707651,
		0.882159, -0.359078, -0.304728,
		0.469018, 0.611269, 0.637473,
		30.355272, 28.233280, 30.928524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628477, 27.416143, 30.853205>,  <30.026960, 27.805393, 30.482292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628477, 27.416143, 30.853205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533594, 27.711956, 31.105183>,  <30.476665, 27.889442, 31.256369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533594, 27.711956, 31.105183>,  <30.628477, 27.416143, 30.853205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533594, 27.711956, 31.105183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061387, -0.635744, 0.769455,
		0.969518, 0.221189, 0.105405,
		-0.237205, 0.739530, 0.629944,
		30.462433, 27.933815, 31.294167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075768, 27.298717, 31.289284>,  <30.628477, 27.416143, 30.853205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075768, 27.298717, 31.289284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803188, 27.510769, 31.491112>,  <30.639641, 27.638000, 31.612209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803188, 27.510769, 31.491112>,  <31.075768, 27.298717, 31.289284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803188, 27.510769, 31.491112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069183, -0.639682, 0.765520,
		0.728591, 0.556569, 0.399233,
		-0.681447, 0.530130, 0.504571,
		30.598755, 27.669807, 31.642483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345718, 27.300852, 31.942076>,  <31.075768, 27.298717, 31.289284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345718, 27.300852, 31.942076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972887, 27.434303, 31.998531>,  <30.749187, 27.514374, 32.032406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972887, 27.434303, 31.998531>,  <31.345718, 27.300852, 31.942076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972887, 27.434303, 31.998531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008394, -0.409396, 0.912318,
		0.362156, 0.849168, 0.384390,
		-0.932080, 0.333628, 0.141137,
		30.693264, 27.534391, 32.040874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258085, 27.683332, 32.595371>,  <31.345718, 27.300852, 31.942076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258085, 27.683332, 32.595371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886589, 27.573509, 32.495720>,  <30.663692, 27.507616, 32.435928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886589, 27.573509, 32.495720>,  <31.258085, 27.683332, 32.595371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886589, 27.573509, 32.495720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168101, -0.287066, 0.943046,
		-0.330435, 0.917721, 0.220456,
		-0.928738, -0.274556, -0.249127,
		30.607967, 27.491142, 32.420982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880888, 27.827446, 33.177925>,  <31.258085, 27.683332, 32.595371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880888, 27.827446, 33.177925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666290, 27.562920, 32.968224>,  <30.537533, 27.404203, 32.842403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666290, 27.562920, 32.968224>,  <30.880888, 27.827446, 33.177925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666290, 27.562920, 32.968224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233421, -0.480697, 0.845249,
		-0.810981, 0.575841, 0.103526,
		-0.536493, -0.661315, -0.524249,
		30.505342, 27.364525, 32.810947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243103, 27.784447, 33.495777>,  <30.880888, 27.827446, 33.177925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243103, 27.784447, 33.495777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316017, 27.448807, 33.290768>,  <30.359766, 27.247423, 33.167763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316017, 27.448807, 33.290768>,  <30.243103, 27.784447, 33.495777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316017, 27.448807, 33.290768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201078, -0.542056, 0.815931,
		-0.962465, -0.045676, -0.267534,
		0.182286, -0.839100, -0.512525,
		30.370703, 27.197077, 33.137009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688995, 27.330015, 33.734779>,  <30.243103, 27.784447, 33.495777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688995, 27.330015, 33.734779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974728, 27.093361, 33.585274>,  <30.146168, 26.951368, 33.495571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974728, 27.093361, 33.585274>,  <29.688995, 27.330015, 33.734779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974728, 27.093361, 33.585274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107258, -0.620344, 0.776961,
		-0.691539, -0.514919, -0.506589,
		0.714332, -0.591635, -0.373763,
		30.189028, 26.915871, 33.473145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125942, 27.161213, 33.217228>,  <29.688995, 27.330015, 33.734779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125942, 27.161213, 33.217228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755678, 27.113285, 33.360783>,  <28.533520, 27.084528, 33.446915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755678, 27.113285, 33.360783>,  <29.125942, 27.161213, 33.217228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755678, 27.113285, 33.360783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373312, 0.443653, -0.814745,
		-0.061597, -0.888152, -0.455402,
		-0.925658, -0.119821, 0.358886,
		28.477980, 27.077339, 33.468449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766876, 26.991264, 32.717571>,  <29.125942, 27.161213, 33.217228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766876, 26.991264, 32.717571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496044, 27.140385, 32.971367>,  <28.333546, 27.229856, 33.123646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496044, 27.140385, 32.971367>,  <28.766876, 26.991264, 32.717571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496044, 27.140385, 32.971367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433694, 0.494415, -0.753301,
		-0.594536, -0.785221, -0.173076,
		-0.677079, 0.372803, 0.634494,
		28.292921, 27.252226, 33.161716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114494, 27.012106, 32.336460>,  <28.766876, 26.991264, 32.717571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114494, 27.012106, 32.336460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078417, 27.284023, 32.627594>,  <28.056770, 27.447174, 32.802273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078417, 27.284023, 32.627594>,  <28.114494, 27.012106, 32.336460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078417, 27.284023, 32.627594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464442, 0.617770, -0.634549,
		-0.880999, -0.395269, 0.260007,
		-0.090194, 0.679795, 0.727835,
		28.051359, 27.487963, 32.845943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505787, 27.310558, 32.174614>,  <28.114494, 27.012106, 32.336460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505787, 27.310558, 32.174614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656517, 27.570717, 32.438427>,  <27.746956, 27.726812, 32.596714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656517, 27.570717, 32.438427>,  <27.505787, 27.310558, 32.174614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656517, 27.570717, 32.438427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332319, 0.759549, -0.559151,
		-0.864619, -0.008473, 0.502357,
		0.376827, 0.650395, 0.659536,
		27.769566, 27.765835, 32.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028008, 27.752020, 32.529919>,  <27.505787, 27.310558, 32.174614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028008, 27.752020, 32.529919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374241, 27.951878, 32.516533>,  <27.581982, 28.071793, 32.508503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374241, 27.951878, 32.516533>,  <27.028008, 27.752020, 32.529919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374241, 27.951878, 32.516533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453514, 0.753831, -0.475463,
		-0.212338, 0.426728, 0.879100,
		0.865585, 0.499643, -0.033460,
		27.633917, 28.101770, 32.506496>
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
