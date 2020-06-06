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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.446185, 14.406537, 14.961691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.157821, 14.576859, 15.180407>,  <3.984802, 14.679051, 15.311636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.157821, 14.576859, 15.180407>,  <4.446185, 14.406537, 14.961691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.157821, 14.576859, 15.180407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096342, 0.719750, -0.687516,
		-0.686300, -0.548316, -0.477852,
		-0.720910, 0.425805, 0.546790,
		3.941548, 14.704600, 15.344443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.352315, 13.993260, 14.448468>,  <4.446185, 14.406537, 14.961691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.352315, 13.993260, 14.448468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179320, 14.126153, 14.113189>,  <4.075523, 14.205889, 13.912021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179320, 14.126153, 14.113189>,  <4.352315, 13.993260, 14.448468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.179320, 14.126153, 14.113189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274270, -0.837107, -0.473315,
		-0.858913, -0.434595, 0.270916,
		-0.432486, 0.332232, -0.838198,
		4.049573, 14.225822, 13.861730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.765743, 13.569778, 14.121952>,  <4.352315, 13.993260, 14.448468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.765743, 13.569778, 14.121952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.957296, 13.783148, 13.843060>,  <4.072227, 13.911170, 13.675724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.957296, 13.783148, 13.843060>,  <3.765743, 13.569778, 14.121952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.957296, 13.783148, 13.843060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215358, -0.841335, -0.495758,
		-0.851054, 0.087255, -0.517777,
		0.478882, 0.533424, -0.697231,
		4.100960, 13.943175, 13.633890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.566772, 13.289473, 13.573647>,  <3.765743, 13.569778, 14.121952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.566772, 13.289473, 13.573647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893178, 13.491274, 13.460797>,  <4.089022, 13.612355, 13.393087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893178, 13.491274, 13.460797>,  <3.566772, 13.289473, 13.573647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893178, 13.491274, 13.460797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208606, -0.712220, -0.670243,
		-0.539075, 0.488076, -0.686426,
		0.816015, 0.504504, -0.282124,
		4.137983, 13.642625, 13.376160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.607090, 13.210805, 12.887716>,  <3.566772, 13.289473, 13.573647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.607090, 13.210805, 12.887716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981601, 13.267636, 13.016214>,  <4.206308, 13.301735, 13.093313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981601, 13.267636, 13.016214>,  <3.607090, 13.210805, 12.887716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981601, 13.267636, 13.016214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299138, -0.801891, -0.517191,
		0.184121, 0.580331, -0.793294,
		0.936278, 0.142078, 0.321244,
		4.262485, 13.310260, 13.112588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.096478, 13.327605, 12.293187>,  <3.607090, 13.210805, 12.887716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.096478, 13.327605, 12.293187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302286, 13.200655, 12.611819>,  <4.425771, 13.124485, 12.802999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302286, 13.200655, 12.611819>,  <4.096478, 13.327605, 12.293187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.302286, 13.200655, 12.611819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346104, -0.773078, -0.531565,
		0.784526, 0.549201, -0.287919,
		0.514520, -0.317377, 0.796581,
		4.456642, 13.105442, 12.850794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.815324, 13.285514, 12.056136>,  <4.096478, 13.327605, 12.293187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.815324, 13.285514, 12.056136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.806359, 13.041834, 12.373216>,  <4.800980, 12.895626, 12.563463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.806359, 13.041834, 12.373216>,  <4.815324, 13.285514, 12.056136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.806359, 13.041834, 12.373216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502804, -0.692192, -0.517743,
		0.864110, 0.386968, 0.321824,
		-0.022414, -0.609201, 0.792699,
		4.799634, 12.859074, 12.611026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.563326, 12.937480, 12.118309>,  <4.815324, 13.285514, 12.056136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.563326, 12.937480, 12.118309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.301304, 12.708993, 12.316142>,  <5.144091, 12.571901, 12.434842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.301304, 12.708993, 12.316142>,  <5.563326, 12.937480, 12.118309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.301304, 12.708993, 12.316142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414364, -0.818945, -0.397028,
		0.631826, -0.055138, 0.773147,
		-0.655056, -0.571217, 0.494584,
		5.104787, 12.537628, 12.464518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.023857, 12.441195, 12.389575>,  <5.563326, 12.937480, 12.118309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.023857, 12.441195, 12.389575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.647592, 12.309685, 12.423182>,  <5.421833, 12.230779, 12.443347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.647592, 12.309685, 12.423182>,  <6.023857, 12.441195, 12.389575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.647592, 12.309685, 12.423182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308178, -0.931326, -0.194059,
		0.142052, -0.156651, 0.977385,
		-0.940663, -0.328775, 0.084020,
		5.365393, 12.211052, 12.448388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.046693, 11.846340, 12.757960>,  <6.023857, 12.441195, 12.389575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.046693, 11.846340, 12.757960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.708641, 11.814931, 12.546455>,  <5.505810, 11.796085, 12.419553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.708641, 11.814931, 12.546455>,  <6.046693, 11.846340, 12.757960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.708641, 11.814931, 12.546455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289478, -0.898792, -0.329205,
		-0.449397, -0.431286, 0.782327,
		-0.845130, -0.078523, -0.528762,
		5.455102, 11.791374, 12.387827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.756109, 11.130436, 12.909954>,  <6.046693, 11.846340, 12.757960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.756109, 11.130436, 12.909954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.603041, 11.269737, 12.567659>,  <5.511200, 11.353318, 12.362283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.603041, 11.269737, 12.567659>,  <5.756109, 11.130436, 12.909954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.603041, 11.269737, 12.567659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200182, -0.872978, -0.444788,
		-0.901939, -0.341509, 0.264345,
		-0.382666, 0.348254, -0.855736,
		5.488240, 11.374213, 12.310939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.294569, 10.597178, 12.660210>,  <5.756109, 11.130436, 12.909954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.294569, 10.597178, 12.660210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.377155, 10.813353, 12.333946>,  <5.426707, 10.943057, 12.138188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.377155, 10.813353, 12.333946>,  <5.294569, 10.597178, 12.660210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.377155, 10.813353, 12.333946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019788, -0.831143, -0.555706,
		-0.978253, 0.130875, -0.160910,
		0.206467, 0.540437, -0.815659,
		5.439095, 10.975484, 12.089249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.197093, 10.067124, 12.172950>,  <5.294569, 10.597178, 12.660210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.197093, 10.067124, 12.172950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.384130, 10.335446, 11.942688>,  <5.496353, 10.496439, 11.804531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.384130, 10.335446, 11.942688>,  <5.197093, 10.067124, 12.172950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.384130, 10.335446, 11.942688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346176, -0.738184, -0.579005,
		-0.813338, 0.071461, -0.577387,
		0.467594, 0.670804, -0.575654,
		5.524409, 10.536688, 11.769992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.993757, 10.031077, 11.393158>,  <5.197093, 10.067124, 12.172950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.993757, 10.031077, 11.393158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.325025, 10.252713, 11.359402>,  <5.523785, 10.385695, 11.339148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.325025, 10.252713, 11.359402>,  <4.993757, 10.031077, 11.393158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.325025, 10.252713, 11.359402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305958, -0.573088, -0.760237,
		-0.469602, 0.603785, -0.644142,
		0.828169, 0.554089, -0.084390,
		5.573475, 10.418940, 11.334085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.059521, 10.410995, 10.610922>,  <4.993757, 10.031077, 11.393158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.059521, 10.410995, 10.610922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.413155, 10.344481, 10.785619>,  <5.625335, 10.304574, 10.890437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.413155, 10.344481, 10.785619>,  <5.059521, 10.410995, 10.610922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.413155, 10.344481, 10.785619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192844, -0.721466, -0.665055,
		0.425682, 0.672188, -0.605770,
		0.884085, -0.166283, 0.436743,
		5.678380, 10.294597, 10.916641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.480354, 10.368572, 10.037557>,  <5.059521, 10.410995, 10.610922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.480354, 10.368572, 10.037557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.683243, 10.208623, 10.342929>,  <5.804977, 10.112654, 10.526153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.683243, 10.208623, 10.342929>,  <5.480354, 10.368572, 10.037557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.683243, 10.208623, 10.342929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344386, -0.717993, -0.604883,
		0.790015, 0.569725, -0.226472,
		0.507223, -0.399873, 0.763431,
		5.835410, 10.088661, 10.571959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.085627, 10.009161, 9.743558>,  <5.480354, 10.368572, 10.037557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.085627, 10.009161, 9.743558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.108225, 9.875232, 10.119792>,  <6.121785, 9.794874, 10.345532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.108225, 9.875232, 10.119792>,  <6.085627, 10.009161, 9.743558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.108225, 9.875232, 10.119792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347033, -0.876763, -0.332948,
		0.936150, 0.345225, 0.066660,
		0.056497, -0.334823, 0.940586,
		6.125175, 9.774785, 10.401968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.756215, 9.804137, 9.929992>,  <6.085627, 10.009161, 9.743558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.756215, 9.804137, 9.929992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.486562, 9.602432, 10.145869>,  <6.324771, 9.481409, 10.275395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.486562, 9.602432, 10.145869>,  <6.756215, 9.804137, 9.929992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.486562, 9.602432, 10.145869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341101, -0.860645, -0.378074,
		0.655132, -0.070782, 0.752191,
		-0.674130, -0.504262, 0.539693,
		6.284323, 9.451154, 10.307777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.183282, 9.318747, 10.228695>,  <6.756215, 9.804137, 9.929992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.183282, 9.318747, 10.228695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.810459, 9.179168, 10.267690>,  <6.586765, 9.095421, 10.291087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.810459, 9.179168, 10.267690>,  <7.183282, 9.318747, 10.228695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.810459, 9.179168, 10.267690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305089, -0.901041, -0.308294,
		0.195419, -0.257606, 0.946283,
		-0.932058, -0.348947, 0.097487,
		6.530841, 9.074484, 10.296936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.150389, 8.890532, 10.708194>,  <7.183282, 9.318747, 10.228695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.150389, 8.890532, 10.708194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.836632, 8.783821, 10.484209>,  <6.648378, 8.719794, 10.349818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.836632, 8.783821, 10.484209>,  <7.150389, 8.890532, 10.708194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.836632, 8.783821, 10.484209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364015, -0.928956, -0.067334,
		-0.502217, -0.256651, 0.825777,
		-0.784392, -0.266779, -0.559963,
		6.601315, 8.703788, 10.316220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.167677, 8.184723, 10.888554>,  <7.150389, 8.890532, 10.708194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.167677, 8.184723, 10.888554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.916645, 8.201054, 10.577561>,  <6.766026, 8.210852, 10.390966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.916645, 8.201054, 10.577561>,  <7.167677, 8.184723, 10.888554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.916645, 8.201054, 10.577561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131178, -0.978803, -0.157284,
		-0.767421, -0.200696, 0.608922,
		-0.627581, 0.040826, -0.777480,
		6.728371, 8.213302, 10.344317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.653331, 7.681875, 11.075320>,  <7.167677, 8.184723, 10.888554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.653331, 7.681875, 11.075320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672400, 7.743292, 10.680524>,  <6.683841, 7.780142, 10.443645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672400, 7.743292, 10.680524>,  <6.653331, 7.681875, 11.075320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.672400, 7.743292, 10.680524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054394, -0.987048, -0.150924,
		-0.997381, -0.046492, -0.055407,
		0.047673, 0.153543, -0.986991,
		6.686702, 7.789355, 10.384426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.225490, 7.183063, 10.764978>,  <6.653331, 7.681875, 11.075320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.225490, 7.183063, 10.764978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.484896, 7.312226, 10.489251>,  <6.640539, 7.389724, 10.323814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.484896, 7.312226, 10.489251>,  <6.225490, 7.183063, 10.764978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.484896, 7.312226, 10.489251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246279, -0.945866, -0.211386,
		-0.720261, -0.032678, -0.692933,
		0.648515, 0.322908, -0.689318,
		6.679450, 7.409099, 10.282455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.225089, 6.692372, 10.223074>,  <6.225490, 7.183063, 10.764978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.225089, 6.692372, 10.223074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.552340, 6.889547, 10.104633>,  <6.748691, 7.007853, 10.033569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.552340, 6.889547, 10.104633>,  <6.225089, 6.692372, 10.223074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.552340, 6.889547, 10.104633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392910, -0.855181, -0.338064,
		-0.419865, 0.160239, -0.893329,
		0.818129, 0.492939, -0.296101,
		6.797779, 7.037429, 10.015803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.446838, 6.453987, 9.538683>,  <6.225089, 6.692372, 10.223074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.446838, 6.453987, 9.538683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.783222, 6.608894, 9.689843>,  <6.985053, 6.701838, 9.780540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.783222, 6.608894, 9.689843>,  <6.446838, 6.453987, 9.538683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.783222, 6.608894, 9.689843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484209, -0.850323, -0.206135,
		0.241509, 0.356335, -0.902607,
		0.840961, 0.387267, 0.377901,
		7.035511, 6.725074, 9.803213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.920008, 6.322958, 9.106373>,  <6.446838, 6.453987, 9.538683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.920008, 6.322958, 9.106373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.130814, 6.397328, 9.438081>,  <7.257298, 6.441950, 9.637105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.130814, 6.397328, 9.438081>,  <6.920008, 6.322958, 9.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.130814, 6.397328, 9.438081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620258, -0.751207, -0.225762,
		0.580978, 0.633341, -0.511218,
		0.527015, 0.185924, 0.829269,
		7.288918, 6.453106, 9.686862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.612649, 6.513046, 8.940686>,  <6.920008, 6.322958, 9.106373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.612649, 6.513046, 8.940686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625467, 6.360612, 9.310280>,  <7.633158, 6.269152, 9.532036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625467, 6.360612, 9.310280>,  <7.612649, 6.513046, 8.940686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.625467, 6.360612, 9.310280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642557, -0.700246, -0.311090,
		0.765568, 0.603682, 0.222428,
		0.032045, -0.381084, 0.923985,
		7.635080, 6.246287, 9.587476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.252635, 6.812204, 9.340281>,  <7.612649, 6.513046, 8.940686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.252635, 6.812204, 9.340281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.136934, 6.450381, 9.465570>,  <8.067513, 6.233287, 9.540744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.136934, 6.450381, 9.465570>,  <8.252635, 6.812204, 9.340281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.136934, 6.450381, 9.465570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902824, -0.366550, -0.224831,
		0.318185, 0.217753, 0.922682,
		-0.289252, -0.904558, 0.313223,
		8.050159, 6.179013, 9.559538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.669353, 6.489518, 9.903447>,  <8.252635, 6.812204, 9.340281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.669353, 6.489518, 9.903447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.517705, 6.192545, 9.682518>,  <8.426716, 6.014361, 9.549960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.517705, 6.192545, 9.682518>,  <8.669353, 6.489518, 9.903447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.517705, 6.192545, 9.682518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924997, -0.287653, -0.248268,
		0.025445, -0.605020, 0.795803,
		-0.379122, -0.742432, -0.552323,
		8.403968, 5.969815, 9.516821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.006188, 6.236764, 10.550567>,  <8.669353, 6.489518, 9.903447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.006188, 6.236764, 10.550567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127395, 5.856005, 10.532358>,  <9.200118, 5.627549, 10.521433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127395, 5.856005, 10.532358>,  <9.006188, 6.236764, 10.550567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.127395, 5.856005, 10.532358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851224, 0.248874, 0.462039,
		-0.428485, -0.178753, 0.885691,
		0.303016, -0.951898, -0.045520,
		9.218299, 5.570436, 10.518703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.331676, 6.044442, 11.113724>,  <9.006188, 6.236764, 10.550567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.331676, 6.044442, 11.113724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485637, 5.736737, 10.909729>,  <9.578013, 5.552114, 10.787333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485637, 5.736737, 10.909729>,  <9.331676, 6.044442, 11.113724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.485637, 5.736737, 10.909729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840243, 0.063424, 0.538488,
		-0.381893, -0.635777, 0.670779,
		0.384901, -0.769263, -0.509986,
		9.601108, 5.505958, 10.756733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.379527, 6.449786, 11.727971>,  <9.331676, 6.044442, 11.113724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.379527, 6.449786, 11.727971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.751424, 6.452517, 11.875230>,  <9.974562, 6.454154, 11.963585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.751424, 6.452517, 11.875230>,  <9.379527, 6.449786, 11.727971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.751424, 6.452517, 11.875230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079328, 0.980062, 0.182169,
		-0.359564, -0.198575, 0.911746,
		0.929742, 0.006826, 0.368148,
		10.030347, 6.454564, 11.985674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.416754, 6.687935, 12.440189>,  <9.379527, 6.449786, 11.727971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.416754, 6.687935, 12.440189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.734962, 6.775722, 12.214274>,  <9.925886, 6.828393, 12.078726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.734962, 6.775722, 12.214274>,  <9.416754, 6.687935, 12.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.734962, 6.775722, 12.214274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060048, 0.956067, 0.286931,
		0.602947, -0.194344, 0.773748,
		0.795518, 0.219466, -0.564788,
		9.973618, 6.841561, 12.044838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.050536, 6.951117, 12.833671>,  <9.416754, 6.687935, 12.440189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.050536, 6.951117, 12.833671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029497, 7.106278, 12.465591>,  <10.016874, 7.199376, 12.244744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029497, 7.106278, 12.465591>,  <10.050536, 6.951117, 12.833671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.029497, 7.106278, 12.465591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017793, 0.920963, 0.389244,
		0.998457, 0.036846, -0.041538,
		-0.052597, 0.387904, -0.920198,
		10.013719, 7.222650, 12.189532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.557878, 7.472364, 12.949492>,  <10.050536, 6.951117, 12.833671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.557878, 7.472364, 12.949492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.310588, 7.518186, 12.638449>,  <10.162213, 7.545680, 12.451823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.310588, 7.518186, 12.638449>,  <10.557878, 7.472364, 12.949492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.310588, 7.518186, 12.638449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032042, 0.984827, 0.170557,
		0.785347, 0.130359, -0.605175,
		-0.618227, 0.114555, -0.777607,
		10.125120, 7.552553, 12.405167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651095, 8.163546, 12.498407>,  <10.557878, 7.472364, 12.949492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651095, 8.163546, 12.498407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.274591, 8.049127, 12.426622>,  <10.048689, 7.980475, 12.383552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.274591, 8.049127, 12.426622>,  <10.651095, 8.163546, 12.498407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.274591, 8.049127, 12.426622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248343, 0.946493, -0.206098,
		0.228813, -0.149423, -0.961934,
		-0.941260, -0.286048, -0.179462,
		9.992213, 7.963312, 12.372784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.345130, 8.621185, 11.986181>,  <10.651095, 8.163546, 12.498407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.345130, 8.621185, 11.986181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.015599, 8.457245, 12.142812>,  <9.817881, 8.358880, 12.236791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.015599, 8.457245, 12.142812>,  <10.345130, 8.621185, 11.986181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.015599, 8.457245, 12.142812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497505, 0.853868, -0.152965,
		-0.271662, -0.320828, -0.907342,
		-0.823826, -0.409852, 0.391577,
		9.768452, 8.334290, 12.260284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.774951, 8.809530, 11.547193>,  <10.345130, 8.621185, 11.986181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.774951, 8.809530, 11.547193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.613197, 8.695048, 11.894654>,  <9.516145, 8.626359, 12.103131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.613197, 8.695048, 11.894654>,  <9.774951, 8.809530, 11.547193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.613197, 8.695048, 11.894654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553883, 0.832433, 0.016422,
		-0.727796, -0.474491, -0.495148,
		-0.404385, -0.286206, 0.868654,
		9.491881, 8.609186, 12.155251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.138790, 8.816016, 11.436421>,  <9.774951, 8.809530, 11.547193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.138790, 8.816016, 11.436421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.195364, 8.867433, 11.829048>,  <9.229308, 8.898283, 12.064624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.195364, 8.867433, 11.829048>,  <9.138790, 8.816016, 11.436421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.195364, 8.867433, 11.829048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519544, 0.853645, -0.036929,
		-0.842657, -0.504744, 0.187517,
		0.141434, 0.128541, 0.981567,
		9.237794, 8.905995, 12.123518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.472600, 9.044831, 11.767588>,  <9.138790, 8.816016, 11.436421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.472600, 9.044831, 11.767588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.750287, 9.168109, 12.027765>,  <8.916900, 9.242075, 12.183872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.750287, 9.168109, 12.027765>,  <8.472600, 9.044831, 11.767588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.750287, 9.168109, 12.027765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527181, 0.832985, 0.167974,
		-0.490042, -0.459513, 0.740747,
		0.694218, 0.308193, 0.650445,
		8.958552, 9.260567, 12.222898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.123982, 9.234863, 12.366277>,  <8.472600, 9.044831, 11.767588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.123982, 9.234863, 12.366277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.475027, 9.425734, 12.384616>,  <8.685654, 9.540256, 12.395619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.475027, 9.425734, 12.384616>,  <8.123982, 9.234863, 12.366277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.475027, 9.425734, 12.384616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470366, 0.838718, 0.274422,
		0.092493, -0.262401, 0.960516,
		0.877611, 0.477176, 0.045848,
		8.738311, 9.568887, 12.398371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.949447, 9.741476, 12.829365>,  <8.123982, 9.234863, 12.366277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.949447, 9.741476, 12.829365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.301915, 9.880182, 12.700809>,  <8.513396, 9.963406, 12.623676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.301915, 9.880182, 12.700809>,  <7.949447, 9.741476, 12.829365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.301915, 9.880182, 12.700809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170789, 0.867319, 0.467536,
		0.440871, -0.357089, 0.823480,
		0.881172, 0.346765, -0.321389,
		8.566267, 9.984212, 12.604393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.183965, 10.192064, 13.397423>,  <7.949447, 9.741476, 12.829365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.183965, 10.192064, 13.397423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.379261, 10.311912, 13.069557>,  <8.496439, 10.383820, 12.872838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.379261, 10.311912, 13.069557>,  <8.183965, 10.192064, 13.397423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.379261, 10.311912, 13.069557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084141, 0.951004, 0.297508,
		0.868644, -0.076288, 0.489529,
		0.488241, 0.299619, -0.819665,
		8.525733, 10.401797, 12.823658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.728114, 10.603864, 13.598741>,  <8.183965, 10.192064, 13.397423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.728114, 10.603864, 13.598741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.627508, 10.687620, 13.220768>,  <8.567144, 10.737874, 12.993984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.627508, 10.687620, 13.220768>,  <8.728114, 10.603864, 13.598741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.627508, 10.687620, 13.220768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279087, 0.919155, 0.277964,
		0.926742, 0.333631, -0.172743,
		-0.251515, 0.209390, -0.944932,
		8.552053, 10.750438, 12.937288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.041206, 11.245596, 13.432641>,  <8.728114, 10.603864, 13.598741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.041206, 11.245596, 13.432641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.726467, 11.205514, 13.189058>,  <8.537623, 11.181465, 13.042909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.726467, 11.205514, 13.189058>,  <9.041206, 11.245596, 13.432641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.726467, 11.205514, 13.189058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268963, 0.943772, 0.192234,
		0.555453, 0.315045, -0.769557,
		-0.786848, -0.100205, -0.608957,
		8.490413, 11.175452, 13.006371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.880801, 11.930110, 13.282963>,  <9.041206, 11.245596, 13.432641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.880801, 11.930110, 13.282963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562514, 11.756092, 13.114408>,  <8.371542, 11.651681, 13.013274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562514, 11.756092, 13.114408>,  <8.880801, 11.930110, 13.282963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.562514, 11.756092, 13.114408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481682, 0.876332, 0.004840,
		0.367171, 0.206827, -0.906867,
		-0.795718, -0.435045, -0.421389,
		8.323799, 11.625579, 12.987990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.706461, 12.301036, 12.695036>,  <8.880801, 11.930110, 13.282963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.706461, 12.301036, 12.695036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.366971, 12.120838, 12.805829>,  <8.163277, 12.012719, 12.872305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.366971, 12.120838, 12.805829>,  <8.706461, 12.301036, 12.695036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.366971, 12.120838, 12.805829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439890, 0.892117, 0.103069,
		-0.293534, -0.034365, -0.955331,
		-0.848725, -0.450495, 0.276984,
		8.112353, 11.985689, 12.888925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.147623, 12.632494, 12.276434>,  <8.706461, 12.301036, 12.695036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.147623, 12.632494, 12.276434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.976399, 12.461023, 12.594679>,  <7.873664, 12.358141, 12.785626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.976399, 12.461023, 12.594679>,  <8.147623, 12.632494, 12.276434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.976399, 12.461023, 12.594679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637052, 0.767562, 0.070811,
		-0.641037, -0.476535, -0.601652,
		-0.428061, -0.428676, 0.795614,
		7.847980, 12.332420, 12.833363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.302845, 12.628686, 12.142005>,  <8.147623, 12.632494, 12.276434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.302845, 12.628686, 12.142005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.371358, 12.595863, 12.534724>,  <7.412466, 12.576170, 12.770356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.371358, 12.595863, 12.534724>,  <7.302845, 12.628686, 12.142005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.371358, 12.595863, 12.534724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750573, 0.634656, 0.183987,
		-0.638202, -0.768426, 0.047116,
		0.171282, -0.082057, 0.981799,
		7.422743, 12.571246, 12.829264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.724999, 12.810961, 12.482014>,  <7.302845, 12.628686, 12.142005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.724999, 12.810961, 12.482014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.957063, 12.810744, 12.807815>,  <7.096302, 12.810615, 13.003295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.957063, 12.810744, 12.807815>,  <6.724999, 12.810961, 12.482014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.957063, 12.810744, 12.807815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549421, 0.737970, 0.391837,
		-0.601291, -0.674833, 0.427843,
		0.580160, -0.000542, 0.814502,
		7.131111, 12.810582, 13.052165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.292965, 12.662824, 13.096005>,  <6.724999, 12.810961, 12.482014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.292965, 12.662824, 13.096005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.590608, 12.871904, 13.262422>,  <6.769193, 12.997353, 13.362271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.590608, 12.871904, 13.262422>,  <6.292965, 12.662824, 13.096005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.590608, 12.871904, 13.262422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661995, 0.660651, 0.353981,
		-0.089832, -0.538816, 0.837620,
		0.744106, 0.522702, 0.416041,
		6.813839, 13.028715, 13.387234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.028067, 12.927589, 13.739395>,  <6.292965, 12.662824, 13.096005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.028067, 12.927589, 13.739395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.343625, 13.156561, 13.649981>,  <6.532960, 13.293944, 13.596334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.343625, 13.156561, 13.649981>,  <6.028067, 12.927589, 13.739395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.343625, 13.156561, 13.649981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460229, 0.791388, 0.402360,
		0.407225, -0.214544, 0.887772,
		0.788896, 0.572430, -0.223534,
		6.580294, 13.328290, 13.582921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.083466, 13.335763, 14.409215>,  <6.028067, 12.927589, 13.739395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.083466, 13.335763, 14.409215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.300647, 13.554289, 14.154109>,  <6.430956, 13.685404, 14.001045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.300647, 13.554289, 14.154109>,  <6.083466, 13.335763, 14.409215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.300647, 13.554289, 14.154109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428430, 0.833391, 0.349151,
		0.722253, 0.083666, 0.686549,
		0.542952, 0.546314, -0.637765,
		6.463533, 13.718184, 13.962780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.376106, 13.939230, 14.802764>,  <6.083466, 13.335763, 14.409215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.376106, 13.939230, 14.802764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.396265, 14.040950, 14.416439>,  <6.408360, 14.101982, 14.184645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.396265, 14.040950, 14.416439>,  <6.376106, 13.939230, 14.802764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.396265, 14.040950, 14.416439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418177, 0.883562, 0.210822,
		0.906966, 0.393256, 0.150871,
		0.050397, 0.254299, -0.965812,
		6.411384, 14.117240, 14.126696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.780986, 14.628544, 14.782309>,  <6.376106, 13.939230, 14.802764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.780986, 14.628544, 14.782309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.544244, 14.588872, 14.462340>,  <6.402199, 14.565068, 14.270360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.544244, 14.588872, 14.462340>,  <6.780986, 14.628544, 14.782309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.544244, 14.588872, 14.462340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510424, 0.814186, 0.276709,
		0.623840, 0.572070, -0.532504,
		-0.591854, -0.099181, -0.799920,
		6.366688, 14.559118, 14.222364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.748176, 15.246034, 14.356968>,  <6.780986, 14.628544, 14.782309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.748176, 15.246034, 14.356968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.403518, 15.044549, 14.332167>,  <6.196724, 14.923658, 14.317286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.403518, 15.044549, 14.332167>,  <6.748176, 15.246034, 14.356968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.403518, 15.044549, 14.332167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498551, 0.817225, 0.289119,
		-0.094963, 0.280030, -0.955283,
		-0.861643, -0.503713, -0.062003,
		6.145025, 14.893435, 14.313565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.452656, 15.234339, 13.958028>,  <6.748176, 15.246034, 14.356968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.452656, 15.234339, 13.958028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.634459, 15.359251, 14.291711>,  <7.743542, 15.434198, 14.491920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.634459, 15.359251, 14.291711>,  <7.452656, 15.234339, 13.958028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.634459, 15.359251, 14.291711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671666, 0.494975, -0.551240,
		-0.585053, 0.810852, 0.015222,
		0.454508, 0.312280, 0.834208,
		7.770812, 15.452935, 14.541973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.370214, 15.910980, 13.911331>,  <7.452656, 15.234339, 13.958028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.370214, 15.910980, 13.911331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.690578, 15.799268, 14.123197>,  <7.882797, 15.732241, 14.250316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.690578, 15.799268, 14.123197>,  <7.370214, 15.910980, 13.911331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.690578, 15.799268, 14.123197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593384, 0.488704, -0.639581,
		-0.080226, 0.826542, 0.557129,
		0.800911, -0.279281, 0.529664,
		7.930852, 15.715484, 14.282096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.854617, 16.498592, 14.078713>,  <7.370214, 15.910980, 13.911331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.854617, 16.498592, 14.078713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072318, 16.163431, 14.062183>,  <8.202939, 15.962335, 14.052265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072318, 16.163431, 14.062183>,  <7.854617, 16.498592, 14.078713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.072318, 16.163431, 14.062183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611105, 0.429722, -0.664748,
		0.574753, 0.336537, 0.745924,
		0.544252, -0.837903, -0.041325,
		8.235594, 15.912060, 14.049786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.826726, 16.625717, 14.806577>,  <7.854617, 16.498592, 14.078713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.826726, 16.625717, 14.806577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.219477, 16.665459, 14.871135>,  <8.455127, 16.689302, 14.909870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.219477, 16.665459, 14.871135>,  <7.826726, 16.625717, 14.806577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.219477, 16.665459, 14.871135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122196, 0.982809, 0.138403,
		-0.144870, -0.155617, 0.977137,
		0.981876, 0.099352, 0.161396,
		8.514040, 16.695265, 14.919554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.828081, 17.212465, 15.347887>,  <7.826726, 16.625717, 14.806577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.828081, 17.212465, 15.347887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.183222, 17.148865, 15.175174>,  <8.396307, 17.110704, 15.071546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.183222, 17.148865, 15.175174>,  <7.828081, 17.212465, 15.347887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.183222, 17.148865, 15.175174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170142, 0.758440, -0.629142,
		0.427514, 0.632050, 0.646331,
		0.887853, -0.158999, -0.431782,
		8.449577, 17.101166, 15.045639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.213157, 17.817476, 15.528848>,  <7.828081, 17.212465, 15.347887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.213157, 17.817476, 15.528848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.324244, 17.619204, 15.199685>,  <8.390896, 17.500240, 15.002188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.324244, 17.619204, 15.199685>,  <8.213157, 17.817476, 15.528848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.324244, 17.619204, 15.199685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208459, 0.805097, -0.555306,
		0.937773, 0.325760, 0.120259,
		0.277717, -0.495681, -0.822905,
		8.407558, 17.470499, 14.952813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.506220, 17.324728, 16.080759>,  <8.213157, 17.817476, 15.528848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.506220, 17.324728, 16.080759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.442150, 16.949352, 16.203184>,  <8.403708, 16.724127, 16.276640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.442150, 16.949352, 16.203184>,  <8.506220, 17.324728, 16.080759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.442150, 16.949352, 16.203184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418103, 0.216377, 0.882253,
		-0.894167, 0.269281, 0.357706,
		-0.160175, -0.938440, 0.306064,
		8.394097, 16.667820, 16.295004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.051657, 17.260555, 16.665211>,  <8.506220, 17.324728, 16.080759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.051657, 17.260555, 16.665211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.323463, 16.968821, 16.633392>,  <8.486547, 16.793779, 16.614302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.323463, 16.968821, 16.633392>,  <8.051657, 17.260555, 16.665211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.323463, 16.968821, 16.633392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370507, 0.247557, 0.895232,
		-0.633231, -0.637798, 0.438443,
		0.679516, -0.729335, -0.079548,
		8.527318, 16.750021, 16.609528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.064903, 16.987432, 17.417595>,  <8.051657, 17.260555, 16.665211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.064903, 16.987432, 17.417595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.384991, 16.831287, 17.235489>,  <8.577044, 16.737600, 17.126225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.384991, 16.831287, 17.235489>,  <8.064903, 16.987432, 17.417595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.384991, 16.831287, 17.235489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573479, 0.276042, 0.771313,
		-0.175420, -0.878304, 0.444759,
		0.800219, -0.390363, -0.455265,
		8.625056, 16.714178, 17.098909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.380302, 16.504034, 17.939814>,  <8.064903, 16.987432, 17.417595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.380302, 16.504034, 17.939814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.671939, 16.579763, 17.676729>,  <8.846921, 16.625200, 17.518879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.671939, 16.579763, 17.676729>,  <8.380302, 16.504034, 17.939814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.671939, 16.579763, 17.676729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615976, 0.237370, 0.751152,
		0.298332, -0.952792, 0.056445,
		0.729090, 0.189324, -0.657712,
		8.890666, 16.636560, 17.479416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.023163, 16.127949, 18.248634>,  <8.380302, 16.504034, 17.939814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.023163, 16.127949, 18.248634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114738, 16.426876, 17.999123>,  <9.169684, 16.606234, 17.849417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114738, 16.426876, 17.999123>,  <9.023163, 16.127949, 18.248634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114738, 16.426876, 17.999123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720935, 0.300410, 0.624506,
		0.654095, -0.592677, -0.469994,
		0.228939, 0.747320, -0.623778,
		9.183420, 16.651072, 17.811989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.749010, 16.155289, 18.201077>,  <9.023163, 16.127949, 18.248634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.749010, 16.155289, 18.201077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.666381, 16.523727, 18.069069>,  <9.616803, 16.744791, 17.989864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.666381, 16.523727, 18.069069>,  <9.749010, 16.155289, 18.201077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.666381, 16.523727, 18.069069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691536, 0.376058, 0.616732,
		0.692174, -0.100818, -0.714654,
		-0.206573, 0.921095, -0.330017,
		9.604409, 16.800056, 17.970064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.436999, 16.501053, 18.025206>,  <9.749010, 16.155289, 18.201077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.436999, 16.501053, 18.025206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.184492, 16.805435, 18.085138>,  <10.032988, 16.988064, 18.121098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.184492, 16.805435, 18.085138>,  <10.436999, 16.501053, 18.025206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.184492, 16.805435, 18.085138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720996, 0.504613, 0.474900,
		0.285771, 0.407816, -0.867191,
		-0.631268, 0.760954, 0.149830,
		9.995111, 17.033722, 18.130087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.855969, 17.113813, 18.185692>,  <10.436999, 16.501053, 18.025206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.855969, 17.113813, 18.185692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.499194, 17.237949, 18.317228>,  <10.285130, 17.312431, 18.396151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.499194, 17.237949, 18.317228>,  <10.855969, 17.113813, 18.185692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.499194, 17.237949, 18.317228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444926, 0.472835, 0.760571,
		0.080549, 0.824691, -0.559819,
		-0.891937, 0.310342, 0.328840,
		10.231613, 17.331053, 18.415880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.872852, 17.872663, 18.437702>,  <10.855969, 17.113813, 18.185692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.872852, 17.872663, 18.437702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.560606, 17.719564, 18.635345>,  <10.373258, 17.627705, 18.753931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.560606, 17.719564, 18.635345>,  <10.872852, 17.872663, 18.437702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.560606, 17.719564, 18.635345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296490, 0.469178, 0.831845,
		-0.550210, 0.795850, -0.252768,
		-0.780617, -0.382746, 0.494108,
		10.326421, 17.604740, 18.783577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684847, 18.394022, 18.876169>,  <10.872852, 17.872663, 18.437702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684847, 18.394022, 18.876169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.510063, 18.071730, 19.036102>,  <10.405193, 17.878355, 19.132063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.510063, 18.071730, 19.036102>,  <10.684847, 18.394022, 18.876169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.510063, 18.071730, 19.036102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276615, 0.302603, 0.912094,
		-0.855892, 0.509148, 0.090652,
		-0.436959, -0.805730, 0.399833,
		10.378976, 17.830011, 19.156052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633229, 18.591133, 19.516157>,  <10.684847, 18.394022, 18.876169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633229, 18.591133, 19.516157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516056, 18.213980, 19.579607>,  <10.445752, 17.987688, 19.617678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516056, 18.213980, 19.579607>,  <10.633229, 18.591133, 19.516157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.516056, 18.213980, 19.579607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264537, 0.079502, 0.961093,
		-0.918809, 0.323497, 0.226139,
		-0.292932, -0.942883, 0.158624,
		10.428176, 17.931114, 19.627193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.055837, 18.612129, 19.983265>,  <10.633229, 18.591133, 19.516157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.055837, 18.612129, 19.983265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215363, 18.247232, 20.020706>,  <10.311078, 18.028294, 20.043171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215363, 18.247232, 20.020706>,  <10.055837, 18.612129, 19.983265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.215363, 18.247232, 20.020706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012565, 0.107496, 0.994126,
		-0.916945, -0.395296, 0.054333,
		0.398815, -0.912242, 0.093601,
		10.335007, 17.973560, 20.048786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.793058, 18.252958, 20.624084>,  <10.055837, 18.612129, 19.983265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.793058, 18.252958, 20.624084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.147763, 18.083857, 20.549326>,  <10.360586, 17.982395, 20.504471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.147763, 18.083857, 20.549326>,  <9.793058, 18.252958, 20.624084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.147763, 18.083857, 20.549326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212255, 0.013237, 0.977125,
		-0.410609, -0.906148, 0.101470,
		0.886763, -0.422753, -0.186899,
		10.413792, 17.957031, 20.493256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.812507, 17.719294, 21.070072>,  <9.793058, 18.252958, 20.624084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.812507, 17.719294, 21.070072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191934, 17.790960, 20.965673>,  <10.419590, 17.833960, 20.903034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191934, 17.790960, 20.965673>,  <9.812507, 17.719294, 21.070072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.191934, 17.790960, 20.965673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247864, 0.092547, 0.964364,
		0.196934, -0.979457, 0.043379,
		0.948567, 0.179164, -0.260998,
		10.476504, 17.844709, 20.887375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.196074, 17.428013, 21.587955>,  <9.812507, 17.719294, 21.070072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.196074, 17.428013, 21.587955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.454184, 17.685619, 21.423584>,  <10.609050, 17.840183, 21.324961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.454184, 17.685619, 21.423584>,  <10.196074, 17.428013, 21.587955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.454184, 17.685619, 21.423584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457072, 0.105544, 0.883146,
		0.612131, -0.757696, -0.226256,
		0.645276, 0.644016, -0.410928,
		10.647766, 17.878824, 21.300306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785730, 17.215218, 21.786489>,  <10.196074, 17.428013, 21.587955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785730, 17.215218, 21.786489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.856932, 17.599289, 21.700352>,  <10.899652, 17.829731, 21.648668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.856932, 17.599289, 21.700352>,  <10.785730, 17.215218, 21.786489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.856932, 17.599289, 21.700352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414069, 0.125438, 0.901561,
		0.892671, -0.249648, -0.375252,
		0.178002, 0.960178, -0.215347,
		10.910333, 17.887342, 21.635748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.506238, 17.333822, 22.047876>,  <10.785730, 17.215218, 21.786489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.506238, 17.333822, 22.047876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298415, 17.672373, 22.001041>,  <11.173721, 17.875504, 21.972940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298415, 17.672373, 22.001041>,  <11.506238, 17.333822, 22.047876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298415, 17.672373, 22.001041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230661, 0.270879, 0.934569,
		0.822713, 0.458554, -0.335963,
		-0.519556, 0.846376, -0.117085,
		11.142549, 17.926285, 21.965916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.947867, 17.902727, 22.144079>,  <11.506238, 17.333822, 22.047876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.947867, 17.902727, 22.144079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.568810, 17.985308, 22.241528>,  <11.341376, 18.034857, 22.299997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.568810, 17.985308, 22.241528>,  <11.947867, 17.902727, 22.144079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.568810, 17.985308, 22.241528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290445, 0.240150, 0.926267,
		0.132725, 0.948528, -0.287539,
		-0.947642, 0.206453, 0.243621,
		11.284517, 18.047243, 22.314613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.109159, 18.095898, 22.757154>,  <11.947867, 17.902727, 22.144079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.109159, 18.095898, 22.757154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721892, 18.193243, 22.733727>,  <11.489532, 18.251650, 22.719669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721892, 18.193243, 22.733727>,  <12.109159, 18.095898, 22.757154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721892, 18.193243, 22.733727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005784, 0.212178, 0.977214,
		0.250245, 0.946443, -0.204016,
		-0.968165, 0.243363, -0.058570,
		11.431443, 18.266253, 22.716156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.015562, 18.648035, 23.086637>,  <12.109159, 18.095898, 22.757154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.015562, 18.648035, 23.086637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634138, 18.527555, 23.087324>,  <11.405284, 18.455269, 23.087736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634138, 18.527555, 23.087324>,  <12.015562, 18.648035, 23.086637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634138, 18.527555, 23.087324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059695, 0.194564, 0.979072,
		-0.295228, 0.933501, -0.203508,
		-0.953560, -0.301198, 0.001716,
		11.348070, 18.437197, 23.087839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683414, 19.102930, 23.327759>,  <12.015562, 18.648035, 23.086637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683414, 19.102930, 23.327759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431058, 18.796947, 23.379635>,  <11.279645, 18.613358, 23.410761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431058, 18.796947, 23.379635>,  <11.683414, 19.102930, 23.327759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.431058, 18.796947, 23.379635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195691, 0.318633, 0.927458,
		-0.750789, 0.559744, -0.350718,
		-0.630889, -0.764957, 0.129689,
		11.241791, 18.567461, 23.418541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.037679, 19.341072, 23.688381>,  <11.683414, 19.102930, 23.327759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.037679, 19.341072, 23.688381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.061026, 18.949072, 23.764479>,  <11.075033, 18.713871, 23.810137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.061026, 18.949072, 23.764479>,  <11.037679, 19.341072, 23.688381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.061026, 18.949072, 23.764479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164710, 0.178501, 0.970055,
		-0.984614, -0.087953, -0.150997,
		0.058366, -0.980001, 0.190242,
		11.078535, 18.655071, 23.821550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.413619, 19.180609, 24.012266>,  <11.037679, 19.341072, 23.688381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.413619, 19.180609, 24.012266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.663522, 18.879341, 24.094648>,  <10.813463, 18.698580, 24.144077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.663522, 18.879341, 24.094648>,  <10.413619, 19.180609, 24.012266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.663522, 18.879341, 24.094648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114828, 0.172274, 0.978333,
		-0.772331, -0.634869, 0.021145,
		0.624756, -0.753169, 0.205953,
		10.850948, 18.653391, 24.156435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.178159, 18.928768, 24.604017>,  <10.413619, 19.180609, 24.012266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.178159, 18.928768, 24.604017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.552729, 18.788635, 24.596273>,  <10.777471, 18.704556, 24.591627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.552729, 18.788635, 24.596273>,  <10.178159, 18.928768, 24.604017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.552729, 18.788635, 24.596273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063225, 0.114212, 0.991442,
		-0.345125, -0.929635, 0.129101,
		0.936425, -0.350334, -0.019359,
		10.833656, 18.683535, 24.590466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.167628, 18.451262, 25.090359>,  <10.178159, 18.928768, 24.604017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.167628, 18.451262, 25.090359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.558279, 18.535210, 25.071789>,  <10.792669, 18.585579, 25.060646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.558279, 18.535210, 25.071789>,  <10.167628, 18.451262, 25.090359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.558279, 18.535210, 25.071789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009417, 0.257555, 0.966218,
		0.214733, -0.943197, 0.253512,
		0.976628, 0.209866, -0.046423,
		10.851267, 18.598171, 25.057861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.585246, 18.132883, 25.659817>,  <10.167628, 18.451262, 25.090359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.585246, 18.132883, 25.659817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812691, 18.433754, 25.526604>,  <10.949158, 18.614277, 25.446676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812691, 18.433754, 25.526604>,  <10.585246, 18.132883, 25.659817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.812691, 18.433754, 25.526604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263809, 0.216724, 0.939913,
		0.779157, -0.622302, -0.075200,
		0.568612, 0.752178, -0.333031,
		10.983274, 18.659407, 25.426695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.206431, 18.017216, 26.015358>,  <10.585246, 18.132883, 25.659817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.206431, 18.017216, 26.015358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.188072, 18.389330, 25.869778>,  <11.177056, 18.612598, 25.782429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.188072, 18.389330, 25.869778>,  <11.206431, 18.017216, 26.015358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.188072, 18.389330, 25.869778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266785, 0.362517, 0.892977,
		0.962663, -0.056111, -0.264825,
		-0.045898, 0.930287, -0.363951,
		11.174303, 18.668415, 25.760592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.955339, 18.241913, 26.170235>,  <11.206431, 18.017216, 26.015358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.955339, 18.241913, 26.170235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735472, 18.570953, 26.112007>,  <11.603551, 18.768377, 26.077070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735472, 18.570953, 26.112007>,  <11.955339, 18.241913, 26.170235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735472, 18.570953, 26.112007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355434, 0.387989, 0.850371,
		0.755997, 0.415681, -0.505646,
		-0.549669, 0.822602, -0.145571,
		11.570571, 18.817734, 26.068336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420418, 18.781511, 26.233982>,  <11.955339, 18.241913, 26.170235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420418, 18.781511, 26.233982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061184, 18.947079, 26.293465>,  <11.845643, 19.046419, 26.329155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061184, 18.947079, 26.293465>,  <12.420418, 18.781511, 26.233982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061184, 18.947079, 26.293465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362479, 0.505072, 0.783270,
		0.249102, 0.757346, -0.603634,
		-0.898085, 0.413919, 0.148707,
		11.791759, 19.071255, 26.338078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478855, 19.564781, 26.334904>,  <12.420418, 18.781511, 26.233982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478855, 19.564781, 26.334904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.159589, 19.398216, 26.509045>,  <11.968029, 19.298277, 26.613529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.159589, 19.398216, 26.509045>,  <12.478855, 19.564781, 26.334904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.159589, 19.398216, 26.509045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260697, 0.412743, 0.872743,
		-0.543109, 0.810089, -0.220881,
		-0.798166, -0.416411, 0.435353,
		11.920139, 19.273293, 26.639650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.070378, 20.130766, 26.732296>,  <12.478855, 19.564781, 26.334904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.070378, 20.130766, 26.732296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945191, 19.781811, 26.882490>,  <11.870079, 19.572437, 26.972607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945191, 19.781811, 26.882490>,  <12.070378, 20.130766, 26.732296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.945191, 19.781811, 26.882490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048136, 0.380271, 0.923622,
		-0.948544, 0.307137, -0.077019,
		-0.312966, -0.872388, 0.375488,
		11.851301, 19.520094, 26.995136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.855783, 20.332745, 27.348026>,  <12.070378, 20.130766, 26.732296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.855783, 20.332745, 27.348026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.868418, 19.934126, 27.378736>,  <11.875998, 19.694954, 27.397163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.868418, 19.934126, 27.378736>,  <11.855783, 20.332745, 27.348026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868418, 19.934126, 27.378736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260585, 0.082370, 0.961931,
		-0.964934, -0.010378, 0.262287,
		0.031588, -0.996548, 0.076777,
		11.877894, 19.635162, 27.401770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.466150, 20.165255, 27.900644>,  <11.855783, 20.332745, 27.348026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.466150, 20.165255, 27.900644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703217, 19.848526, 27.841635>,  <11.845456, 19.658489, 27.806229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703217, 19.848526, 27.841635>,  <11.466150, 20.165255, 27.900644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703217, 19.848526, 27.841635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325186, 0.067664, 0.943226,
		-0.736886, -0.606991, 0.297591,
		0.592666, -0.791823, -0.147524,
		11.881017, 19.610979, 27.797377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.456690, 19.598965, 28.449326>,  <11.466150, 20.165255, 27.900644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.456690, 19.598965, 28.449326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823921, 19.536640, 28.303528>,  <12.044260, 19.499247, 28.216049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823921, 19.536640, 28.303528>,  <11.456690, 19.598965, 28.449326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.823921, 19.536640, 28.303528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359458, -0.060391, 0.931205,
		-0.167105, -0.985939, 0.000564,
		0.918077, -0.155811, -0.364496,
		12.099344, 19.489897, 28.194180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.679773, 19.102684, 28.861242>,  <11.456690, 19.598965, 28.449326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.679773, 19.102684, 28.861242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015382, 19.245998, 28.697451>,  <12.216746, 19.331987, 28.599174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015382, 19.245998, 28.697451>,  <11.679773, 19.102684, 28.861242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015382, 19.245998, 28.697451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446853, -0.024367, 0.894275,
		0.310429, -0.933293, -0.180547,
		0.839021, 0.358287, -0.409481,
		12.267088, 19.353485, 28.574606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.251815, 18.726366, 28.998388>,  <11.679773, 19.102684, 28.861242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.251815, 18.726366, 28.998388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.414381, 19.079803, 28.905359>,  <12.511921, 19.291866, 28.849541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.414381, 19.079803, 28.905359>,  <12.251815, 18.726366, 28.998388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.414381, 19.079803, 28.905359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559787, -0.039620, 0.827689,
		0.722125, -0.466577, -0.510726,
		0.406415, 0.883593, -0.232573,
		12.536305, 19.344881, 28.835587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.962301, 18.607706, 29.066763>,  <12.251815, 18.726366, 28.998388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.962301, 18.607706, 29.066763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911668, 19.004057, 29.085251>,  <12.881288, 19.241867, 29.096344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911668, 19.004057, 29.085251>,  <12.962301, 18.607706, 29.066763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911668, 19.004057, 29.085251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594557, 0.038491, 0.803131,
		0.794027, 0.129145, -0.594006,
		-0.126584, 0.990878, 0.046221,
		12.873693, 19.301321, 29.099117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.620852, 18.981857, 28.970949>,  <12.962301, 18.607706, 29.066763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.620852, 18.981857, 28.970949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386984, 19.238657, 29.169342>,  <13.246663, 19.392736, 29.288378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386984, 19.238657, 29.169342>,  <13.620852, 18.981857, 28.970949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.386984, 19.238657, 29.169342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633808, -0.020153, 0.773228,
		0.506408, 0.766439, -0.395122,
		-0.584670, 0.642000, 0.495981,
		13.211583, 19.431257, 29.318136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018375, 19.476662, 29.239914>,  <13.620852, 18.981857, 28.970949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018375, 19.476662, 29.239914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693869, 19.534611, 29.466492>,  <13.499165, 19.569380, 29.602438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693869, 19.534611, 29.466492>,  <14.018375, 19.476662, 29.239914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693869, 19.534611, 29.466492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578993, 0.064314, 0.812792,
		0.081323, 0.987358, -0.136058,
		-0.811267, 0.144875, 0.566442,
		13.450488, 19.578074, 29.636425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162414, 20.040037, 29.719027>,  <14.018375, 19.476662, 29.239914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162414, 20.040037, 29.719027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868647, 19.832346, 29.893856>,  <13.692387, 19.707731, 29.998755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868647, 19.832346, 29.893856>,  <14.162414, 20.040037, 29.719027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.868647, 19.832346, 29.893856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273536, 0.362926, 0.890765,
		-0.621135, 0.773749, -0.124512,
		-0.734417, -0.519227, 0.437074,
		13.648321, 19.676579, 30.024979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144949, 20.463034, 30.197889>,  <14.162414, 20.040037, 29.719027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144949, 20.463034, 30.197889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.924273, 20.153814, 30.323133>,  <13.791868, 19.968283, 30.398279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.924273, 20.153814, 30.323133>,  <14.144949, 20.463034, 30.197889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924273, 20.153814, 30.323133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374766, 0.105615, 0.921084,
		-0.745110, 0.625495, 0.231445,
		-0.551690, -0.773047, 0.313110,
		13.758766, 19.921900, 30.417067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.789633, 20.647827, 30.784058>,  <14.144949, 20.463034, 30.197889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.789633, 20.647827, 30.784058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810377, 20.248444, 30.791933>,  <13.822824, 20.008814, 30.796658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810377, 20.248444, 30.791933>,  <13.789633, 20.647827, 30.784058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.810377, 20.248444, 30.791933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456205, 0.041225, 0.888919,
		-0.888362, -0.037118, 0.457640,
		0.051861, -0.998460, 0.019689,
		13.825935, 19.948906, 30.797840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676976, 20.375235, 31.433233>,  <13.789633, 20.647827, 30.784058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676976, 20.375235, 31.433233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858974, 20.052013, 31.283548>,  <13.968172, 19.858082, 31.193737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858974, 20.052013, 31.283548>,  <13.676976, 20.375235, 31.433233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858974, 20.052013, 31.283548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466808, -0.141430, 0.872976,
		-0.758334, -0.571883, 0.312855,
		0.454993, -0.808051, -0.374211,
		13.995472, 19.809599, 31.171286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162083, 19.930367, 31.766033>,  <13.676976, 20.375235, 31.433233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162083, 19.930367, 31.766033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374295, 20.252235, 31.659418>,  <14.501623, 20.445356, 31.595449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374295, 20.252235, 31.659418>,  <14.162083, 19.930367, 31.766033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374295, 20.252235, 31.659418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791388, -0.357527, 0.495863,
		0.303712, -0.474004, -0.826486,
		0.530532, 0.804671, -0.266535,
		14.533455, 20.493637, 31.579458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676735, 19.845861, 31.452059>,  <14.162083, 19.930367, 31.766033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.676735, 19.845861, 31.452059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829763, 20.181973, 31.605721>,  <14.921580, 20.383638, 31.697918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829763, 20.181973, 31.605721>,  <14.676735, 19.845861, 31.452059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.829763, 20.181973, 31.605721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688489, -0.536545, 0.487957,
		0.616135, 0.077808, -0.783788,
		0.382571, 0.840277, 0.384154,
		14.944534, 20.434055, 31.720966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352707, 20.156158, 31.202820>,  <14.676735, 19.845861, 31.452059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352707, 20.156158, 31.202820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245004, 20.163090, 31.587984>,  <15.180382, 20.167248, 31.819082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245004, 20.163090, 31.587984>,  <15.352707, 20.156158, 31.202820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.245004, 20.163090, 31.587984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726075, -0.653209, 0.214786,
		0.632705, 0.756979, 0.163301,
		-0.269258, 0.017327, 0.962912,
		15.164227, 20.168287, 31.876858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960997, 20.434395, 31.574976>,  <15.352707, 20.156158, 31.202820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960997, 20.434395, 31.574976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719696, 20.215412, 31.806969>,  <15.574916, 20.084023, 31.946165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719696, 20.215412, 31.806969>,  <15.960997, 20.434395, 31.574976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719696, 20.215412, 31.806969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784477, -0.538430, 0.307716,
		0.143819, 0.640613, 0.754276,
		-0.603251, -0.547457, 0.579982,
		15.538721, 20.051176, 31.980963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206512, 20.338644, 32.294247>,  <15.960997, 20.434395, 31.574976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206512, 20.338644, 32.294247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.972397, 20.032534, 32.187073>,  <15.831927, 19.848867, 32.122768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.972397, 20.032534, 32.187073>,  <16.206512, 20.338644, 32.294247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972397, 20.032534, 32.187073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679146, -0.643218, 0.353597,
		-0.442940, 0.024989, 0.896203,
		-0.585291, -0.765275, -0.267936,
		15.796810, 19.802952, 32.106693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165174, 19.889854, 32.873653>,  <16.206512, 20.338644, 32.294247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165174, 19.889854, 32.873653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064564, 19.686096, 32.544472>,  <16.004198, 19.563841, 32.346962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064564, 19.686096, 32.544472>,  <16.165174, 19.889854, 32.873653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064564, 19.686096, 32.544472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706310, -0.677944, 0.203761,
		-0.661710, -0.530009, 0.530312,
		-0.251527, -0.509395, -0.822953,
		15.989106, 19.533278, 32.297585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307423, 19.119059, 33.089489>,  <16.165174, 19.889854, 32.873653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307423, 19.119059, 33.089489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.290649, 19.136175, 32.690208>,  <16.280586, 19.146444, 32.450638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.290649, 19.136175, 32.690208>,  <16.307423, 19.119059, 33.089489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290649, 19.136175, 32.690208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687405, -0.723799, -0.059904,
		-0.725063, -0.688682, 0.000936,
		-0.041932, 0.042791, -0.998204,
		16.278070, 19.149012, 32.390747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086555, 18.390383, 32.796246>,  <16.307423, 19.119059, 33.089489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086555, 18.390383, 32.796246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331799, 18.599384, 32.559235>,  <16.478945, 18.724785, 32.417027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331799, 18.599384, 32.559235>,  <16.086555, 18.390383, 32.796246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331799, 18.599384, 32.559235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646041, -0.763289, -0.004603,
		-0.454677, -0.379977, -0.805535,
		0.613107, 0.522502, -0.592530,
		16.515730, 18.756134, 32.381477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318783, 18.077530, 32.108940>,  <16.086555, 18.390383, 32.796246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318783, 18.077530, 32.108940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580700, 18.308229, 32.304333>,  <16.737850, 18.446650, 32.421566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580700, 18.308229, 32.304333>,  <16.318783, 18.077530, 32.108940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580700, 18.308229, 32.304333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642120, -0.765399, 0.042964,
		0.398661, 0.285530, -0.871517,
		0.654791, 0.576747, 0.488479,
		16.777138, 18.481253, 32.450878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979939, 17.901588, 31.916441>,  <16.318783, 18.077530, 32.108940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979939, 17.901588, 31.916441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058992, 18.067089, 32.271912>,  <17.106424, 18.166389, 32.485195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058992, 18.067089, 32.271912>,  <16.979939, 17.901588, 31.916441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058992, 18.067089, 32.271912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615565, -0.757915, 0.215975,
		0.762903, 0.504355, -0.404481,
		0.197634, 0.413752, 0.888679,
		17.118282, 18.191216, 32.538517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916702, 18.185911, 31.312832>,  <16.979939, 17.901588, 31.916441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916702, 18.185911, 31.312832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552549, 18.344568, 31.265711>,  <16.334057, 18.439762, 31.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552549, 18.344568, 31.265711>,  <16.916702, 18.185911, 31.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552549, 18.344568, 31.265711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211554, -0.690882, -0.691323,
		-0.355595, -0.604447, 0.712879,
		-0.910383, 0.396643, -0.117801,
		16.279434, 18.463562, 31.230370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431339, 17.575981, 31.330631>,  <16.916702, 18.185911, 31.312832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.431339, 17.575981, 31.330631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242752, 17.887398, 31.164938>,  <16.129599, 18.074247, 31.065523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242752, 17.887398, 31.164938>,  <16.431339, 17.575981, 31.330631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242752, 17.887398, 31.164938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510186, -0.623923, -0.591971,
		-0.719324, -0.067760, 0.691362,
		-0.471469, 0.778542, -0.414233,
		16.101311, 18.120960, 31.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761697, 17.424004, 31.269022>,  <16.431339, 17.575981, 31.330631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761697, 17.424004, 31.269022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767298, 17.714508, 30.994112>,  <15.770658, 17.888811, 30.829166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767298, 17.714508, 30.994112>,  <15.761697, 17.424004, 31.269022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767298, 17.714508, 30.994112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479881, -0.598129, -0.641838,
		-0.877222, 0.338797, 0.340145,
		0.014003, 0.726263, -0.687274,
		15.771499, 17.932386, 30.787930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091726, 17.492510, 31.011850>,  <15.761697, 17.424004, 31.269022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091726, 17.492510, 31.011850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322814, 17.655163, 30.728756>,  <15.461467, 17.752754, 30.558899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322814, 17.655163, 30.728756>,  <15.091726, 17.492510, 31.011850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322814, 17.655163, 30.728756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445061, -0.569906, -0.690744,
		-0.684223, 0.714042, -0.148269,
		0.577720, 0.406634, -0.707735,
		15.496130, 17.777153, 30.516436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607121, 17.743208, 30.421974>,  <15.091726, 17.492510, 31.011850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607121, 17.743208, 30.421974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977456, 17.696983, 30.278048>,  <15.199657, 17.669249, 30.191690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977456, 17.696983, 30.278048>,  <14.607121, 17.743208, 30.421974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.977456, 17.696983, 30.278048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375069, -0.397724, -0.837340,
		-0.046342, 0.910198, -0.411572,
		0.925838, -0.115564, -0.359819,
		15.255207, 17.662313, 30.170101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.669000, 18.120140, 29.733038>,  <14.607121, 17.743208, 30.421974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.669000, 18.120140, 29.733038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937591, 17.823780, 29.738508>,  <15.098745, 17.645964, 29.741791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937591, 17.823780, 29.738508>,  <14.669000, 18.120140, 29.733038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937591, 17.823780, 29.738508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320676, -0.307166, -0.896000,
		0.668045, 0.597259, -0.443844,
		0.671478, -0.740899, 0.013674,
		15.139034, 17.601511, 29.742611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878007, 18.148178, 29.025517>,  <14.669000, 18.120140, 29.733038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878007, 18.148178, 29.025517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987502, 17.788778, 29.162785>,  <15.053199, 17.573139, 29.245146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987502, 17.788778, 29.162785>,  <14.878007, 18.148178, 29.025517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.987502, 17.788778, 29.162785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099341, -0.381303, -0.919097,
		0.956661, 0.217500, -0.193635,
		0.273737, -0.898500, 0.343171,
		15.069623, 17.519228, 29.265736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208590, 17.807636, 28.502531>,  <14.878007, 18.148178, 29.025517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208590, 17.807636, 28.502531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165265, 17.495789, 28.749256>,  <15.139271, 17.308680, 28.897291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165265, 17.495789, 28.749256>,  <15.208590, 17.807636, 28.502531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165265, 17.495789, 28.749256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140895, -0.602162, -0.785843,
		0.984082, -0.172021, -0.044625,
		-0.108310, -0.779621, 0.616814,
		15.132772, 17.261902, 28.934299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577208, 17.303940, 28.169416>,  <15.208590, 17.807636, 28.502531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577208, 17.303940, 28.169416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.311018, 17.120739, 28.405172>,  <15.151304, 17.010818, 28.546625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.311018, 17.120739, 28.405172>,  <15.577208, 17.303940, 28.169416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.311018, 17.120739, 28.405172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248580, -0.608558, -0.753568,
		0.703812, -0.647991, 0.291129,
		-0.665474, -0.458002, 0.589388,
		15.111376, 16.983339, 28.581989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714017, 16.592745, 28.131155>,  <15.577208, 17.303940, 28.169416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714017, 16.592745, 28.131155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338305, 16.598589, 28.268293>,  <15.112879, 16.602097, 28.350576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338305, 16.598589, 28.268293>,  <15.714017, 16.592745, 28.131155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338305, 16.598589, 28.268293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276132, -0.625354, -0.729852,
		0.203736, -0.780204, 0.591416,
		-0.939278, 0.014612, 0.342847,
		15.056522, 16.602972, 28.371147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446683, 15.807265, 28.123373>,  <15.714017, 16.592745, 28.131155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446683, 15.807265, 28.123373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.129696, 16.051069, 28.132225>,  <14.939504, 16.197351, 28.137537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.129696, 16.051069, 28.132225>,  <15.446683, 15.807265, 28.123373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.129696, 16.051069, 28.132225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407242, -0.501775, -0.763136,
		-0.454032, -0.613776, 0.645859,
		-0.792470, 0.609509, 0.022133,
		14.891955, 16.233923, 28.138865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864738, 15.399994, 27.885136>,  <15.446683, 15.807265, 28.123373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864738, 15.399994, 27.885136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.726370, 15.773701, 27.850536>,  <14.643349, 15.997925, 27.829777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.726370, 15.773701, 27.850536>,  <14.864738, 15.399994, 27.885136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726370, 15.773701, 27.850536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473126, -0.253300, -0.843795,
		-0.810240, -0.250964, 0.529649,
		-0.345922, 0.934268, -0.086496,
		14.622593, 16.053982, 27.824587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171170, 15.238797, 27.771914>,  <14.864738, 15.399994, 27.885136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171170, 15.238797, 27.771914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243228, 15.614469, 27.654959>,  <14.286463, 15.839871, 27.584785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243228, 15.614469, 27.654959>,  <14.171170, 15.238797, 27.771914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243228, 15.614469, 27.654959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465401, -0.180492, -0.866502,
		-0.866574, 0.292173, 0.404580,
		0.180145, 0.939179, -0.292387,
		14.297272, 15.896222, 27.567244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548069, 15.373118, 27.411160>,  <14.171170, 15.238797, 27.771914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548069, 15.373118, 27.411160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831550, 15.626115, 27.286135>,  <14.001638, 15.777913, 27.211121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831550, 15.626115, 27.286135>,  <13.548069, 15.373118, 27.411160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831550, 15.626115, 27.286135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282303, -0.151785, -0.947241,
		-0.646565, 0.759549, 0.070984,
		0.708703, 0.632492, -0.312561,
		14.044161, 15.815863, 27.192366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.228288, 15.949335, 27.072380>,  <13.548069, 15.373118, 27.411160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.228288, 15.949335, 27.072380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584943, 15.871200, 26.909004>,  <13.798936, 15.824318, 26.810978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584943, 15.871200, 26.909004>,  <13.228288, 15.949335, 27.072380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584943, 15.871200, 26.909004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417692, -0.006844, -0.908563,
		0.174682, 0.980712, -0.087694,
		0.891639, -0.195339, -0.408440,
		13.852434, 15.812598, 26.786472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182871, 16.317829, 26.569254>,  <13.228288, 15.949335, 27.072380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182871, 16.317829, 26.569254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443058, 16.033836, 26.461311>,  <13.599170, 15.863441, 26.396545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443058, 16.033836, 26.461311>,  <13.182871, 16.317829, 26.569254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.443058, 16.033836, 26.461311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418528, -0.038560, -0.907385,
		0.633819, 0.703166, -0.322229,
		0.650467, -0.709980, -0.269854,
		13.638198, 15.820843, 26.380356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471637, 16.548525, 25.894196>,  <13.182871, 16.317829, 26.569254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.471637, 16.548525, 25.894196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561949, 16.158861, 25.896765>,  <13.616136, 15.925063, 25.898306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561949, 16.158861, 25.896765>,  <13.471637, 16.548525, 25.894196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561949, 16.158861, 25.896765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250144, -0.064347, -0.966068,
		0.941516, 0.216511, -0.258208,
		0.225779, -0.974158, 0.006424,
		13.629683, 15.866614, 25.898691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707815, 16.437475, 25.256603>,  <13.471637, 16.548525, 25.894196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707815, 16.437475, 25.256603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.625660, 16.059353, 25.357962>,  <13.576367, 15.832479, 25.418777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.625660, 16.059353, 25.357962>,  <13.707815, 16.437475, 25.256603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.625660, 16.059353, 25.357962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175377, -0.219176, -0.959794,
		0.962839, -0.241570, -0.120769,
		-0.205387, -0.945307, 0.253397,
		13.564044, 15.775761, 25.433981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.033525, 16.012432, 24.666138>,  <13.707815, 16.437475, 25.256603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.033525, 16.012432, 24.666138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782805, 15.764457, 24.854942>,  <13.632373, 15.615671, 24.968225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782805, 15.764457, 24.854942>,  <14.033525, 16.012432, 24.666138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782805, 15.764457, 24.854942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190060, -0.465839, -0.864217,
		0.755644, -0.631403, 0.174162,
		-0.626801, -0.619940, 0.472013,
		13.594766, 15.578475, 24.996546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375869, 15.265237, 24.646944>,  <14.033525, 16.012432, 24.666138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375869, 15.265237, 24.646944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976347, 15.255527, 24.663904>,  <13.736633, 15.249701, 24.674080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976347, 15.255527, 24.663904>,  <14.375869, 15.265237, 24.646944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976347, 15.255527, 24.663904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028197, -0.422309, -0.906013,
		0.039901, -0.906127, 0.421121,
		-0.998805, -0.024277, 0.042400,
		13.676705, 15.248243, 24.676624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194096, 14.643595, 24.283260>,  <14.375869, 15.265237, 24.646944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194096, 14.643595, 24.283260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.852527, 14.850267, 24.308104>,  <13.647586, 14.974271, 24.323009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.852527, 14.850267, 24.308104>,  <14.194096, 14.643595, 24.283260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.852527, 14.850267, 24.308104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319572, -0.426438, -0.846182,
		-0.410711, -0.742428, 0.529261,
		-0.853927, 0.516673, 0.062116,
		13.596350, 15.005272, 24.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.591393, 14.171124, 24.139576>,  <14.194096, 14.643595, 24.283260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.591393, 14.171124, 24.139576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446078, 14.536983, 24.068645>,  <13.358890, 14.756498, 24.026087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446078, 14.536983, 24.068645>,  <13.591393, 14.171124, 24.139576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.446078, 14.536983, 24.068645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330744, -0.304542, -0.893232,
		-0.870994, -0.265850, 0.413150,
		-0.363287, 0.914647, -0.177326,
		13.337092, 14.811378, 24.015448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859820, 14.121171, 23.944065>,  <13.591393, 14.171124, 24.139576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859820, 14.121171, 23.944065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999173, 14.466057, 23.796978>,  <13.082785, 14.672988, 23.708725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999173, 14.466057, 23.796978>,  <12.859820, 14.121171, 23.944065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.999173, 14.466057, 23.796978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396060, -0.220152, -0.891442,
		-0.849568, 0.456201, 0.264792,
		0.348382, 0.862214, -0.367717,
		13.103687, 14.724721, 23.686663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245563, 14.351679, 23.542158>,  <12.859820, 14.121171, 23.944065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245563, 14.351679, 23.542158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547249, 14.574480, 23.403070>,  <12.728260, 14.708160, 23.319618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547249, 14.574480, 23.403070>,  <12.245563, 14.351679, 23.542158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547249, 14.574480, 23.403070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333169, -0.131700, -0.933624,
		-0.565825, 0.820002, 0.086245,
		0.754215, 0.557002, -0.347719,
		12.773513, 14.741581, 23.298756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.913861, 14.848301, 23.192039>,  <12.245563, 14.351679, 23.542158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.913861, 14.848301, 23.192039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.277559, 14.837146, 23.025909>,  <12.495778, 14.830453, 22.926231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.277559, 14.837146, 23.025909>,  <11.913861, 14.848301, 23.192039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.277559, 14.837146, 23.025909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415705, -0.112276, -0.902543,
		-0.021461, 0.993285, -0.113680,
		0.909246, -0.027888, -0.415324,
		12.550333, 14.828779, 22.901312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.899393, 15.376640, 22.663576>,  <11.913861, 14.848301, 23.192039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.899393, 15.376640, 22.663576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194103, 15.125223, 22.563902>,  <12.370930, 14.974373, 22.504097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194103, 15.125223, 22.563902>,  <11.899393, 15.376640, 22.663576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.194103, 15.125223, 22.563902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314205, 0.008049, -0.949321,
		0.598695, 0.777732, -0.191561,
		0.736776, -0.628544, -0.249186,
		12.415136, 14.936660, 22.489145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.252469, 15.680980, 22.049887>,  <11.899393, 15.376640, 22.663576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.252469, 15.680980, 22.049887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.382778, 15.303249, 22.031462>,  <12.460964, 15.076612, 22.020407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.382778, 15.303249, 22.031462>,  <12.252469, 15.680980, 22.049887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.382778, 15.303249, 22.031462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141549, -0.000543, -0.989931,
		0.934792, 0.329014, -0.133846,
		0.325773, -0.944325, -0.046064,
		12.480510, 15.019952, 22.017643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866539, 15.588938, 21.607052>,  <12.252469, 15.680980, 22.049887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866539, 15.588938, 21.607052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691864, 15.229238, 21.617264>,  <12.587059, 15.013417, 21.623392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691864, 15.229238, 21.617264>,  <12.866539, 15.588938, 21.607052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.691864, 15.229238, 21.617264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126293, 0.033181, -0.991438,
		0.890705, -0.436172, -0.128059,
		-0.436687, -0.899251, 0.025531,
		12.560858, 14.959462, 21.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195026, 15.328720, 21.086102>,  <12.866539, 15.588938, 21.607052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195026, 15.328720, 21.086102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.873311, 15.106931, 21.171591>,  <12.680282, 14.973857, 21.222885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.873311, 15.106931, 21.171591>,  <13.195026, 15.328720, 21.086102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.873311, 15.106931, 21.171591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142213, -0.169608, -0.975197,
		0.576970, -0.814735, 0.057561,
		-0.804289, -0.554473, 0.213725,
		12.632024, 14.940589, 21.235708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.237573, 14.748380, 20.635695>,  <13.195026, 15.328720, 21.086102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.237573, 14.748380, 20.635695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853281, 14.796500, 20.735714>,  <12.622705, 14.825373, 20.795727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853281, 14.796500, 20.735714>,  <13.237573, 14.748380, 20.635695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853281, 14.796500, 20.735714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263643, -0.114681, -0.957779,
		-0.086530, -0.986093, 0.141890,
		-0.960731, 0.120285, 0.250053,
		12.565062, 14.832590, 20.810730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840854, 14.267128, 20.186668>,  <13.237573, 14.748380, 20.635695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840854, 14.267128, 20.186668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.577015, 14.550696, 20.286560>,  <12.418712, 14.720838, 20.346495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.577015, 14.550696, 20.286560>,  <12.840854, 14.267128, 20.186668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.577015, 14.550696, 20.286560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349400, 0.004970, -0.936960,
		-0.665472, -0.705271, 0.244419,
		-0.659596, 0.708921, 0.249729,
		12.379136, 14.763372, 20.361479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.240021, 13.997032, 19.944962>,  <12.840854, 14.267128, 20.186668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.240021, 13.997032, 19.944962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.173561, 14.388213, 19.995565>,  <12.133685, 14.622922, 20.025927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.173561, 14.388213, 19.995565>,  <12.240021, 13.997032, 19.944962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.173561, 14.388213, 19.995565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504162, 0.026011, -0.863217,
		-0.847476, -0.207204, 0.488724,
		-0.166150, 0.977952, 0.126508,
		12.123716, 14.681599, 20.033518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548837, 14.110724, 19.850592>,  <12.240021, 13.997032, 19.944962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548837, 14.110724, 19.850592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.639812, 14.496389, 19.795944>,  <11.694398, 14.727788, 19.763157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.639812, 14.496389, 19.795944>,  <11.548837, 14.110724, 19.850592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.639812, 14.496389, 19.795944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557935, 0.014039, -0.829766,
		-0.798110, 0.264944, 0.541133,
		0.227439, 0.964161, -0.136617,
		11.708044, 14.785638, 19.754959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993396, 14.440237, 19.439222>,  <11.548837, 14.110724, 19.850592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993396, 14.440237, 19.439222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303669, 14.689526, 19.399399>,  <11.489833, 14.839099, 19.375505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303669, 14.689526, 19.399399>,  <10.993396, 14.440237, 19.439222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.303669, 14.689526, 19.399399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174908, 0.060710, -0.982711,
		-0.606403, 0.779685, 0.156097,
		0.775682, 0.623221, -0.099558,
		11.536374, 14.876493, 19.369532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.744849, 15.106480, 19.046083>,  <10.993396, 14.440237, 19.439222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.744849, 15.106480, 19.046083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.140265, 15.092093, 18.987432>,  <11.377514, 15.083460, 18.952242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.140265, 15.092093, 18.987432>,  <10.744849, 15.106480, 19.046083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.140265, 15.092093, 18.987432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139938, 0.146169, -0.979312,
		0.056657, 0.988606, 0.139460,
		0.988538, -0.035969, -0.146625,
		11.436826, 15.081302, 18.943445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873687, 15.631096, 18.649895>,  <10.744849, 15.106480, 19.046083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873687, 15.631096, 18.649895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164485, 15.366580, 18.575949>,  <11.338964, 15.207870, 18.531582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164485, 15.366580, 18.575949>,  <10.873687, 15.631096, 18.649895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164485, 15.366580, 18.575949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178202, 0.078296, -0.980874,
		0.663116, 0.746033, -0.060922,
		0.726995, -0.661290, -0.184863,
		11.382584, 15.168193, 18.520491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.280828, 15.932837, 18.109756>,  <10.873687, 15.631096, 18.649895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.280828, 15.932837, 18.109756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.346621, 15.538359, 18.102167>,  <11.386096, 15.301671, 18.097614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.346621, 15.538359, 18.102167>,  <11.280828, 15.932837, 18.109756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.346621, 15.538359, 18.102167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277037, -0.027727, -0.960459,
		0.946676, 0.163234, -0.277774,
		0.164482, -0.986197, -0.018973,
		11.395965, 15.242499, 18.096476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.664224, 15.793724, 17.486454>,  <11.280828, 15.932837, 18.109756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.664224, 15.793724, 17.486454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.548346, 15.424888, 17.589081>,  <11.478819, 15.203586, 17.650658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.548346, 15.424888, 17.589081>,  <11.664224, 15.793724, 17.486454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.548346, 15.424888, 17.589081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207159, -0.201301, -0.957373,
		0.934431, -0.330497, -0.132703,
		-0.289695, -0.922090, 0.256567,
		11.461437, 15.148261, 17.666052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.848629, 15.362458, 16.953310>,  <11.664224, 15.793724, 17.486454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.848629, 15.362458, 16.953310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.609354, 15.102478, 17.140814>,  <11.465789, 14.946490, 17.253317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.609354, 15.102478, 17.140814>,  <11.848629, 15.362458, 16.953310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.609354, 15.102478, 17.140814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329251, -0.333964, -0.883211,
		0.730592, -0.682666, -0.014223,
		-0.598188, -0.649950, 0.468760,
		11.429897, 14.907493, 17.281443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991515, 14.667154, 16.695679>,  <11.848629, 15.362458, 16.953310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991515, 14.667154, 16.695679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.623331, 14.684837, 16.851011>,  <11.402421, 14.695447, 16.944210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.623331, 14.684837, 16.851011>,  <11.991515, 14.667154, 16.695679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.623331, 14.684837, 16.851011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364808, -0.453716, -0.813054,
		0.140248, -0.890049, 0.433755,
		-0.920460, 0.044208, 0.388330,
		11.347193, 14.698099, 16.967510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721721, 14.976266, 16.422499>,  <11.991515, 14.667154, 16.695679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721721, 14.976266, 16.422499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959406, 15.222543, 16.215488>,  <13.102017, 15.370309, 16.091282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959406, 15.222543, 16.215488>,  <12.721721, 14.976266, 16.422499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959406, 15.222543, 16.215488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513168, 0.205248, 0.833386,
		0.619330, -0.760788, -0.193992,
		0.594213, 0.615691, -0.517528,
		13.137670, 15.407250, 16.060230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.370351, 14.763356, 16.614098>,  <12.721721, 14.976266, 16.422499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.370351, 14.763356, 16.614098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356086, 15.145660, 16.497307>,  <13.347527, 15.375043, 16.427233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356086, 15.145660, 16.497307>,  <13.370351, 14.763356, 16.614098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.356086, 15.145660, 16.497307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394267, 0.281919, 0.874686,
		0.918304, -0.083922, -0.386879,
		-0.035663, 0.955761, -0.291975,
		13.345387, 15.432388, 16.409714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998447, 14.959620, 16.711998>,  <13.370351, 14.763356, 16.614098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998447, 14.959620, 16.711998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.816603, 15.315149, 16.688957>,  <13.707496, 15.528467, 16.675133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.816603, 15.315149, 16.688957>,  <13.998447, 14.959620, 16.711998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816603, 15.315149, 16.688957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539378, 0.326188, 0.776319,
		0.708800, 0.321856, -0.627702,
		-0.454613, 0.888825, -0.057600,
		13.680219, 15.581797, 16.671677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.569180, 15.495358, 16.778069>,  <13.998447, 14.959620, 16.711998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.569180, 15.495358, 16.778069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230498, 15.685460, 16.873753>,  <14.027288, 15.799521, 16.931162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230498, 15.685460, 16.873753>,  <14.569180, 15.495358, 16.778069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230498, 15.685460, 16.873753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468376, 0.452495, 0.758862,
		0.252413, 0.754573, -0.605729,
		-0.846706, 0.475256, 0.239209,
		13.976486, 15.828037, 16.945515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.777789, 16.222996, 17.016178>,  <14.569180, 15.495358, 16.778069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.777789, 16.222996, 17.016178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.405034, 16.174610, 17.152971>,  <14.181381, 16.145578, 17.235046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.405034, 16.174610, 17.152971>,  <14.777789, 16.222996, 17.016178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.405034, 16.174610, 17.152971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272909, 0.387263, 0.880652,
		-0.238966, 0.913999, -0.327873,
		-0.931888, -0.120966, 0.341981,
		14.125467, 16.138321, 17.255566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450117, 16.822832, 17.264347>,  <14.777789, 16.222996, 17.016178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450117, 16.822832, 17.264347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259958, 16.531448, 17.461668>,  <14.145864, 16.356619, 17.580061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259958, 16.531448, 17.461668>,  <14.450117, 16.822832, 17.264347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259958, 16.531448, 17.461668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022390, 0.550516, 0.834524,
		-0.879487, 0.407775, -0.245403,
		-0.475396, -0.728458, 0.493302,
		14.117339, 16.312910, 17.609659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006786, 17.161489, 17.775749>,  <14.450117, 16.822832, 17.264347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006786, 17.161489, 17.775749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043968, 16.786589, 17.910164>,  <14.066278, 16.561649, 17.990814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043968, 16.786589, 17.910164>,  <14.006786, 17.161489, 17.775749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043968, 16.786589, 17.910164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112634, 0.325436, 0.938832,
		-0.989279, -0.125118, -0.075315,
		0.092955, -0.937250, 0.336039,
		14.071855, 16.505413, 18.010975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.799800, 17.306650, 18.490648>,  <14.006786, 17.161489, 17.775749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.799800, 17.306650, 18.490648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950097, 16.936462, 18.509935>,  <14.040276, 16.714350, 18.521507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950097, 16.936462, 18.509935>,  <13.799800, 17.306650, 18.490648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950097, 16.936462, 18.509935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131956, 0.104932, 0.985686,
		-0.917281, -0.364002, 0.161549,
		0.375744, -0.925468, 0.048220,
		14.062820, 16.658821, 18.524401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.492311, 16.992523, 19.081867>,  <13.799800, 17.306650, 18.490648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.492311, 16.992523, 19.081867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.832648, 16.788137, 19.032911>,  <14.036851, 16.665506, 19.003538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.832648, 16.788137, 19.032911>,  <13.492311, 16.992523, 19.081867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832648, 16.788137, 19.032911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184109, 0.071773, 0.980282,
		-0.492107, -0.856599, 0.155141,
		0.850843, -0.510967, -0.122388,
		14.087901, 16.634848, 18.996195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.521604, 16.480684, 19.562923>,  <13.492311, 16.992523, 19.081867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.521604, 16.480684, 19.562923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905222, 16.514933, 19.454924>,  <14.135393, 16.535482, 19.390123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905222, 16.514933, 19.454924>,  <13.521604, 16.480684, 19.562923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905222, 16.514933, 19.454924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280918, -0.165405, 0.945371,
		0.036285, -0.982502, -0.182684,
		0.959046, 0.085622, -0.270001,
		14.192936, 16.540619, 19.373924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833171, 16.002682, 19.955065>,  <13.521604, 16.480684, 19.562923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833171, 16.002682, 19.955065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.125022, 16.249426, 19.836994>,  <14.300133, 16.397472, 19.766151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.125022, 16.249426, 19.836994>,  <13.833171, 16.002682, 19.955065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.125022, 16.249426, 19.836994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438283, -0.090485, 0.894271,
		0.524931, -0.781854, -0.336380,
		0.729627, 0.616860, -0.295175,
		14.343910, 16.434484, 19.748442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.419354, 15.665650, 20.333185>,  <13.833171, 16.002682, 19.955065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.419354, 15.665650, 20.333185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.565161, 16.021563, 20.223337>,  <14.652645, 16.235109, 20.157429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.565161, 16.021563, 20.223337>,  <14.419354, 15.665650, 20.333185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565161, 16.021563, 20.223337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488378, 0.068425, 0.869945,
		0.792852, -0.451229, -0.409608,
		0.364517, 0.889781, -0.274621,
		14.674516, 16.288496, 20.140951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.053423, 15.633105, 20.520481>,  <14.419354, 15.665650, 20.333185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.053423, 15.633105, 20.520481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.972552, 16.024443, 20.502726>,  <14.924029, 16.259245, 20.492071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.972552, 16.024443, 20.502726>,  <15.053423, 15.633105, 20.520481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972552, 16.024443, 20.502726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446881, 0.132492, 0.884728,
		0.871448, 0.159035, -0.463990,
		-0.202177, 0.978342, -0.044390,
		14.911900, 16.317945, 20.489408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602141, 15.855667, 20.718546>,  <15.053423, 15.633105, 20.520481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.602141, 15.855667, 20.718546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345577, 16.160120, 20.757061>,  <15.191639, 16.342793, 20.780170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345577, 16.160120, 20.757061>,  <15.602141, 15.855667, 20.718546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.345577, 16.160120, 20.757061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489026, 0.308906, 0.815739,
		0.591141, 0.570311, -0.570349,
		-0.641410, 0.761132, 0.096290,
		15.153154, 16.388460, 20.785948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016615, 16.422256, 21.003281>,  <15.602141, 15.855667, 20.718546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016615, 16.422256, 21.003281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646025, 16.539934, 21.097170>,  <15.423671, 16.610540, 21.153503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646025, 16.539934, 21.097170>,  <16.016615, 16.422256, 21.003281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646025, 16.539934, 21.097170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314262, 0.261550, 0.912596,
		0.207088, 0.919261, -0.334774,
		-0.926474, 0.294194, 0.234725,
		15.368082, 16.628193, 21.167587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070835, 17.006071, 21.512602>,  <16.016615, 16.422256, 21.003281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070835, 17.006071, 21.512602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693835, 16.879862, 21.556683>,  <15.467636, 16.804136, 21.583132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693835, 16.879862, 21.556683>,  <16.070835, 17.006071, 21.512602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693835, 16.879862, 21.556683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015701, 0.287574, 0.957630,
		-0.333845, 0.904294, -0.266084,
		-0.942497, -0.315522, 0.110204,
		15.411086, 16.785206, 21.589745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617753, 17.589424, 21.773289>,  <16.070835, 17.006071, 21.512602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617753, 17.589424, 21.773289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457529, 17.239382, 21.881907>,  <15.361395, 17.029356, 21.947077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457529, 17.239382, 21.881907>,  <15.617753, 17.589424, 21.773289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457529, 17.239382, 21.881907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036097, 0.281059, 0.959011,
		-0.915559, 0.393944, -0.080993,
		-0.400560, -0.875108, 0.271546,
		15.337361, 16.976849, 21.963371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240824, 17.859093, 22.249321>,  <15.617753, 17.589424, 21.773289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240824, 17.859093, 22.249321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247758, 17.470337, 22.343239>,  <15.251919, 17.237083, 22.399590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247758, 17.470337, 22.343239>,  <15.240824, 17.859093, 22.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247758, 17.470337, 22.343239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057218, 0.233482, 0.970676,
		-0.998211, -0.030262, -0.051562,
		0.017335, -0.971890, 0.234796,
		15.252958, 17.178770, 22.413677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528660, 17.650585, 22.539520>,  <15.240824, 17.859093, 22.249321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528660, 17.650585, 22.539520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803616, 17.385735, 22.658907>,  <14.968589, 17.226824, 22.730539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803616, 17.385735, 22.658907>,  <14.528660, 17.650585, 22.539520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803616, 17.385735, 22.658907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223493, 0.198170, 0.954348,
		-0.691048, -0.722713, -0.011761,
		0.687389, -0.662128, 0.298466,
		15.009832, 17.187096, 22.748447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.255082, 17.325975, 23.081516>,  <14.528660, 17.650585, 22.539520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.255082, 17.325975, 23.081516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641726, 17.229595, 23.116415>,  <14.873712, 17.171766, 23.137354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641726, 17.229595, 23.116415>,  <14.255082, 17.325975, 23.081516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641726, 17.229595, 23.116415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058629, 0.123497, 0.990612,
		-0.249465, -0.962648, 0.105246,
		0.966607, -0.240952, 0.087247,
		14.931707, 17.157310, 23.142590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.269388, 16.797087, 23.596846>,  <14.255082, 17.325975, 23.081516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.269388, 16.797087, 23.596846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628449, 16.971455, 23.570938>,  <14.843886, 17.076075, 23.555393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628449, 16.971455, 23.570938>,  <14.269388, 16.797087, 23.596846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.628449, 16.971455, 23.570938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056645, 0.031626, 0.997893,
		0.437048, -0.899430, 0.003696,
		0.897653, 0.435918, -0.064770,
		14.897745, 17.102230, 23.551508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618100, 16.424683, 24.073961>,  <14.269388, 16.797087, 23.596846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618100, 16.424683, 24.073961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815981, 16.768553, 24.023005>,  <14.934710, 16.974874, 23.992430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815981, 16.768553, 24.023005>,  <14.618100, 16.424683, 24.073961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815981, 16.768553, 24.023005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004203, 0.148950, 0.988836,
		0.869052, -0.488644, 0.077299,
		0.494703, 0.859675, -0.127392,
		14.964392, 17.026455, 23.984787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172532, 16.401180, 24.546236>,  <14.618100, 16.424683, 24.073961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172532, 16.401180, 24.546236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118596, 16.785574, 24.449629>,  <15.086234, 17.016211, 24.391665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118596, 16.785574, 24.449629>,  <15.172532, 16.401180, 24.546236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118596, 16.785574, 24.449629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011032, 0.242271, 0.970146,
		0.990806, 0.133479, -0.022067,
		-0.134840, 0.960983, -0.241516,
		15.078144, 17.073870, 24.377174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636730, 16.839869, 24.966394>,  <15.172532, 16.401180, 24.546236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636730, 16.839869, 24.966394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349795, 17.088188, 24.839882>,  <15.177634, 17.237181, 24.763975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349795, 17.088188, 24.839882>,  <15.636730, 16.839869, 24.966394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.349795, 17.088188, 24.839882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061733, 0.508802, 0.858667,
		0.693986, 0.596428, -0.403307,
		-0.717337, 0.620801, -0.316282,
		15.134594, 17.274429, 24.744997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863811, 17.490513, 25.176004>,  <15.636730, 16.839869, 24.966394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863811, 17.490513, 25.176004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473747, 17.534666, 25.099192>,  <15.239709, 17.561157, 25.053104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473747, 17.534666, 25.099192>,  <15.863811, 17.490513, 25.176004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473747, 17.534666, 25.099192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113181, 0.496928, 0.860379,
		0.190398, 0.860743, -0.472092,
		-0.975161, 0.110383, -0.192033,
		15.181199, 17.567781, 25.041582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687053, 18.222246, 25.203455>,  <15.863811, 17.490513, 25.176004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687053, 18.222246, 25.203455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322412, 18.061882, 25.239780>,  <15.103626, 17.965664, 25.261576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322412, 18.061882, 25.239780>,  <15.687053, 18.222246, 25.203455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322412, 18.061882, 25.239780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129604, 0.489969, 0.862052,
		-0.390104, 0.774080, -0.498618,
		-0.911604, -0.400912, 0.090815,
		15.048930, 17.941608, 25.267025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092951, 18.785534, 25.296427>,  <15.687053, 18.222246, 25.203455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.092951, 18.785534, 25.296427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043189, 18.430984, 25.474804>,  <15.013332, 18.218254, 25.581831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043189, 18.430984, 25.474804>,  <15.092951, 18.785534, 25.296427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043189, 18.430984, 25.474804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159739, 0.461463, 0.872660,
		-0.979289, 0.037328, -0.198997,
		-0.124404, -0.886373, 0.445943,
		15.005868, 18.165071, 25.608587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554461, 18.845543, 25.827757>,  <15.092951, 18.785534, 25.296427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554461, 18.845543, 25.827757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.775087, 18.529650, 25.935158>,  <14.907464, 18.340113, 25.999598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.775087, 18.529650, 25.935158>,  <14.554461, 18.845543, 25.827757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.775087, 18.529650, 25.935158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090934, 0.376904, 0.921778,
		-0.829159, -0.484007, 0.279701,
		0.551568, -0.789734, 0.268500,
		14.940557, 18.292728, 26.015707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398701, 18.739986, 26.480009>,  <14.554461, 18.845543, 25.827757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398701, 18.739986, 26.480009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.750671, 18.553162, 26.445183>,  <14.961854, 18.441067, 26.424288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.750671, 18.553162, 26.445183>,  <14.398701, 18.739986, 26.480009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750671, 18.553162, 26.445183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272379, 0.345773, 0.897915,
		-0.389279, -0.813814, 0.431473,
		0.879927, -0.467063, -0.087064,
		15.014649, 18.413042, 26.419064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527744, 18.534849, 27.198730>,  <14.398701, 18.739986, 26.480009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527744, 18.534849, 27.198730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889455, 18.493675, 27.032990>,  <15.106482, 18.468971, 26.933544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889455, 18.493675, 27.032990>,  <14.527744, 18.534849, 27.198730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889455, 18.493675, 27.032990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394076, 0.574664, 0.717263,
		0.164283, -0.811890, 0.560219,
		0.904276, -0.102935, -0.414354,
		15.160738, 18.462795, 26.908684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.990395, 18.341406, 27.727173>,  <14.527744, 18.534849, 27.198730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.990395, 18.341406, 27.727173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200914, 18.514910, 27.434637>,  <15.327227, 18.619013, 27.259115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200914, 18.514910, 27.434637>,  <14.990395, 18.341406, 27.727173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.200914, 18.514910, 27.434637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304741, 0.706742, 0.638474,
		0.793815, -0.558898, 0.239772,
		0.526299, 0.433762, -0.731341,
		15.358805, 18.645039, 27.215235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652119, 18.488363, 28.009003>,  <14.990395, 18.341406, 27.727173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652119, 18.488363, 28.009003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608356, 18.754478, 27.713593>,  <15.582098, 18.914148, 27.536346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608356, 18.754478, 27.713593>,  <15.652119, 18.488363, 28.009003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608356, 18.754478, 27.713593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500822, 0.678681, 0.537186,
		0.858608, -0.311098, -0.407445,
		-0.109408, 0.665289, -0.738526,
		15.575533, 18.954065, 27.492035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215691, 18.551233, 27.624094>,  <15.652119, 18.488363, 28.009003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215691, 18.551233, 27.624094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043373, 18.911272, 27.650139>,  <15.939982, 19.127296, 27.665766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043373, 18.911272, 27.650139>,  <16.215691, 18.551233, 27.624094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043373, 18.911272, 27.650139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673811, 0.272816, 0.686695,
		0.600330, 0.339698, -0.724023,
		-0.430794, 0.900098, 0.065112,
		15.914135, 19.181301, 27.669672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749094, 19.108185, 27.587215>,  <16.215691, 18.551233, 27.624094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749094, 19.108185, 27.587215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446907, 19.181736, 27.838757>,  <16.265594, 19.225866, 27.989681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446907, 19.181736, 27.838757>,  <16.749094, 19.108185, 27.587215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.446907, 19.181736, 27.838757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653096, 0.287937, 0.700399,
		-0.052283, 0.939830, -0.337617,
		-0.755468, 0.183877, 0.628854,
		16.220266, 19.236898, 28.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872583, 19.820715, 27.830112>,  <16.749094, 19.108185, 27.587215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872583, 19.820715, 27.830112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.654266, 19.619284, 28.098000>,  <16.523275, 19.498425, 28.258732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.654266, 19.619284, 28.098000>,  <16.872583, 19.820715, 27.830112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.654266, 19.619284, 28.098000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735053, 0.095949, 0.671186,
		-0.402254, 0.858604, 0.317789,
		-0.545792, -0.503579, 0.669715,
		16.490528, 19.468210, 28.298914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899090, 20.161459, 28.552088>,  <16.872583, 19.820715, 27.830112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899090, 20.161459, 28.552088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.839817, 19.766722, 28.577967>,  <16.804253, 19.529881, 28.593494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.839817, 19.766722, 28.577967>,  <16.899090, 20.161459, 28.552088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839817, 19.766722, 28.577967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762039, -0.072238, 0.643490,
		-0.630349, 0.144657, 0.762716,
		-0.148182, -0.986842, 0.064699,
		16.795362, 19.470669, 28.597376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954979, 19.967113, 29.232254>,  <16.899090, 20.161459, 28.552088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954979, 19.967113, 29.232254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.011921, 19.622467, 29.037376>,  <17.046085, 19.415680, 28.920450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.011921, 19.622467, 29.037376>,  <16.954979, 19.967113, 29.232254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011921, 19.622467, 29.037376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760292, -0.219984, 0.611199,
		-0.633792, -0.457414, 0.623763,
		0.142353, -0.861614, -0.487192,
		17.054626, 19.363983, 28.891218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179495, 20.708776, 29.457272>,  <16.954979, 19.967113, 29.232254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179495, 20.708776, 29.457272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088011, 21.084406, 29.559902>,  <17.033121, 21.309784, 29.621481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088011, 21.084406, 29.559902>,  <17.179495, 20.708776, 29.457272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088011, 21.084406, 29.559902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680905, 0.034051, -0.731579,
		-0.695745, -0.342021, 0.631634,
		-0.228708, 0.939075, 0.256575,
		17.019398, 21.366129, 29.636875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503695, 20.783997, 29.453789>,  <17.179495, 20.708776, 29.457272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503695, 20.783997, 29.453789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669445, 21.141491, 29.385054>,  <16.768896, 21.355988, 29.343813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669445, 21.141491, 29.385054>,  <16.503695, 20.783997, 29.453789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669445, 21.141491, 29.385054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452801, 0.038671, -0.890773,
		-0.789471, 0.446923, 0.420709,
		0.414376, 0.893736, -0.171837,
		16.793758, 21.409613, 29.333502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980310, 21.266315, 29.122957>,  <16.503695, 20.783997, 29.453789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980310, 21.266315, 29.122957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352251, 21.371435, 29.019955>,  <16.575417, 21.434507, 28.958153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352251, 21.371435, 29.019955>,  <15.980310, 21.266315, 29.122957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352251, 21.371435, 29.019955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290558, 0.095124, -0.952117,
		-0.225722, 0.960150, 0.164810,
		0.929853, 0.262801, -0.257507,
		16.631207, 21.450275, 28.942703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859304, 21.747541, 28.637466>,  <15.980310, 21.266315, 29.122957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859304, 21.747541, 28.637466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.240967, 21.642263, 28.580456>,  <16.469965, 21.579096, 28.546249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.240967, 21.642263, 28.580456>,  <15.859304, 21.747541, 28.637466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240967, 21.642263, 28.580456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063764, 0.286503, -0.955955,
		0.292439, 0.921219, 0.256586,
		0.954156, -0.263197, -0.142525,
		16.527214, 21.563305, 28.537699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042046, 22.291527, 28.259089>,  <15.859304, 21.747541, 28.637466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042046, 22.291527, 28.259089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297066, 21.985868, 28.219883>,  <16.450079, 21.802473, 28.196360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297066, 21.985868, 28.219883>,  <16.042046, 22.291527, 28.259089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297066, 21.985868, 28.219883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006435, 0.132499, -0.991162,
		0.770380, 0.631287, 0.089392,
		0.637552, -0.764147, -0.098012,
		16.488331, 21.756624, 28.190479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505089, 22.488138, 27.717201>,  <16.042046, 22.291527, 28.259089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505089, 22.488138, 27.717201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.506527, 22.089310, 27.686649>,  <16.507391, 21.850012, 27.668318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.506527, 22.089310, 27.686649>,  <16.505089, 22.488138, 27.717201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506527, 22.089310, 27.686649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176221, 0.074553, -0.981523,
		0.984344, 0.016991, -0.175437,
		0.003598, -0.997072, -0.076380,
		16.507607, 21.790188, 27.663734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846058, 22.322195, 27.096754>,  <16.505089, 22.488138, 27.717201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846058, 22.322195, 27.096754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658936, 21.980350, 27.186907>,  <16.546661, 21.775244, 27.240997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658936, 21.980350, 27.186907>,  <16.846058, 22.322195, 27.096754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658936, 21.980350, 27.186907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098828, -0.202824, -0.974215,
		0.878288, -0.478018, 0.010423,
		-0.467806, -0.854612, 0.225380,
		16.518593, 21.723967, 27.254520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242798, 21.738964, 26.745300>,  <16.846058, 22.322195, 27.096754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242798, 21.738964, 26.745300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892685, 21.566631, 26.833179>,  <16.682617, 21.463232, 26.885906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892685, 21.566631, 26.833179>,  <17.242798, 21.738964, 26.745300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892685, 21.566631, 26.833179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029540, -0.501061, -0.864907,
		0.482709, -0.750548, 0.451297,
		-0.875282, -0.430830, 0.219696,
		16.630100, 21.437382, 26.899088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345512, 21.001812, 26.497822>,  <17.242798, 21.738964, 26.745300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.345512, 21.001812, 26.497822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.956137, 21.056530, 26.571259>,  <16.722511, 21.089361, 26.615320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.956137, 21.056530, 26.571259>,  <17.345512, 21.001812, 26.497822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956137, 21.056530, 26.571259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228937, -0.590195, -0.774117,
		0.002460, -0.795586, 0.605836,
		-0.973438, 0.136794, 0.183591,
		16.664104, 21.097569, 26.626335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029091, 20.360716, 26.502911>,  <17.345512, 21.001812, 26.497822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029091, 20.360716, 26.502911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764685, 20.638195, 26.388479>,  <16.606041, 20.804682, 26.319820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764685, 20.638195, 26.388479>,  <17.029091, 20.360716, 26.502911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764685, 20.638195, 26.388479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234853, -0.553356, -0.799151,
		-0.712671, -0.461066, 0.528694,
		-0.661017, 0.693697, -0.286078,
		16.566380, 20.846304, 26.302656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.362391, 19.943722, 26.290052>,  <17.029091, 20.360716, 26.502911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.362391, 19.943722, 26.290052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329716, 20.314407, 26.143341>,  <16.310110, 20.536819, 26.055313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329716, 20.314407, 26.143341>,  <16.362391, 19.943722, 26.290052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329716, 20.314407, 26.143341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393522, -0.368099, -0.842403,
		-0.915679, 0.075523, 0.394751,
		-0.081687, 0.926715, -0.366780,
		16.305210, 20.592422, 26.033306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745830, 19.912334, 25.941124>,  <16.362391, 19.943722, 26.290052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745830, 19.912334, 25.941124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932204, 20.234861, 25.795380>,  <16.044029, 20.428377, 25.707933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932204, 20.234861, 25.795380>,  <15.745830, 19.912334, 25.941124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932204, 20.234861, 25.795380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357699, -0.204995, -0.911059,
		-0.809293, 0.554827, 0.192904,
		0.465936, 0.806315, -0.364362,
		16.071985, 20.476755, 25.686071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275314, 20.137255, 25.494032>,  <15.745830, 19.912334, 25.941124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275314, 20.137255, 25.494032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.595674, 20.330439, 25.352436>,  <15.787889, 20.446350, 25.267479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.595674, 20.330439, 25.352436>,  <15.275314, 20.137255, 25.494032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.595674, 20.330439, 25.352436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178050, -0.372355, -0.910851,
		-0.571716, 0.792528, -0.212227,
		0.800899, 0.482961, -0.353991,
		15.835943, 20.475327, 25.246239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107186, 20.651506, 24.937782>,  <15.275314, 20.137255, 25.494032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.107186, 20.651506, 24.937782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495661, 20.582563, 24.871946>,  <15.728745, 20.541197, 24.832445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495661, 20.582563, 24.871946>,  <15.107186, 20.651506, 24.937782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495661, 20.582563, 24.871946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181193, -0.085384, -0.979734,
		0.154813, 0.981326, -0.114154,
		0.971186, -0.172360, -0.164590,
		15.787017, 20.530855, 24.822569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291995, 21.006449, 24.421978>,  <15.107186, 20.651506, 24.937782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291995, 21.006449, 24.421978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.582942, 20.732483, 24.404865>,  <15.757510, 20.568104, 24.394598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.582942, 20.732483, 24.404865>,  <15.291995, 21.006449, 24.421978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582942, 20.732483, 24.404865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162606, -0.111449, -0.980377,
		0.666706, 0.720050, -0.192436,
		0.727367, -0.684914, -0.042781,
		15.801152, 20.527008, 24.392031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677803, 21.206860, 23.900997>,  <15.291995, 21.006449, 24.421978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677803, 21.206860, 23.900997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.717993, 20.811090, 23.942844>,  <15.742106, 20.573629, 23.967953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.717993, 20.811090, 23.942844>,  <15.677803, 21.206860, 23.900997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.717993, 20.811090, 23.942844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140476, -0.118205, -0.983003,
		0.984973, 0.084070, -0.150867,
		0.100474, -0.989424, 0.104619,
		15.748135, 20.514263, 23.974230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886212, 20.982426, 23.181244>,  <15.677803, 21.206860, 23.900997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886212, 20.982426, 23.181244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772980, 20.651234, 23.374866>,  <15.705040, 20.452518, 23.491041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772980, 20.651234, 23.374866>,  <15.886212, 20.982426, 23.181244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.772980, 20.651234, 23.374866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312721, -0.397437, -0.862699,
		0.906681, -0.395588, -0.146420,
		-0.283081, -0.827982, 0.484058,
		15.688055, 20.402840, 23.520084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173244, 20.515230, 22.826368>,  <15.886212, 20.982426, 23.181244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173244, 20.515230, 22.826368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.879005, 20.330021, 23.024158>,  <15.702461, 20.218895, 23.142832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.879005, 20.330021, 23.024158>,  <16.173244, 20.515230, 22.826368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.879005, 20.330021, 23.024158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369870, -0.337009, -0.865807,
		0.567529, -0.819778, 0.076646,
		-0.735600, -0.463022, 0.494473,
		15.658325, 20.191114, 23.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229332, 19.861378, 22.698950>,  <16.173244, 20.515230, 22.826368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229332, 19.861378, 22.698950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.849389, 19.896824, 22.818893>,  <15.621423, 19.918091, 22.890860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.849389, 19.896824, 22.818893>,  <16.229332, 19.861378, 22.698950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849389, 19.896824, 22.818893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311142, -0.172867, -0.934509,
		-0.030975, -0.980951, 0.191770,
		-0.949859, 0.088614, 0.299860,
		15.564431, 19.923409, 22.908852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960967, 19.222181, 22.619326>,  <16.229332, 19.861378, 22.698950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960967, 19.222181, 22.619326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686666, 19.510414, 22.578331>,  <15.522084, 19.683353, 22.553734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686666, 19.510414, 22.578331>,  <15.960967, 19.222181, 22.619326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686666, 19.510414, 22.578331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141574, -0.270183, -0.952343,
		-0.713931, -0.638564, 0.287295,
		-0.685754, 0.720582, -0.102488,
		15.480939, 19.726589, 22.547585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560010, 18.987309, 22.171385>,  <15.960967, 19.222181, 22.619326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560010, 18.987309, 22.171385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377595, 19.343168, 22.180769>,  <15.268146, 19.556684, 22.186399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377595, 19.343168, 22.180769>,  <15.560010, 18.987309, 22.171385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377595, 19.343168, 22.180769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312737, -0.135518, -0.940123,
		-0.833202, -0.436068, 0.340028,
		-0.456037, 0.889651, 0.023460,
		15.240784, 19.610064, 22.187807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915610, 18.793859, 21.972038>,  <15.560010, 18.987309, 22.171385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915610, 18.793859, 21.972038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.008038, 19.174271, 21.889915>,  <15.063494, 19.402517, 21.840641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.008038, 19.174271, 21.889915>,  <14.915610, 18.793859, 21.972038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.008038, 19.174271, 21.889915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092064, -0.188699, -0.977710,
		-0.968572, 0.244819, 0.043954,
		0.231068, 0.951029, -0.205308,
		15.077358, 19.459579, 21.828323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492656, 18.841690, 21.422832>,  <14.915610, 18.793859, 21.972038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492656, 18.841690, 21.422832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707310, 19.178011, 21.394331>,  <14.836102, 19.379803, 21.377230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707310, 19.178011, 21.394331>,  <14.492656, 18.841690, 21.422832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707310, 19.178011, 21.394331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084767, -0.030297, -0.995940,
		-0.839547, 0.540495, 0.055014,
		0.536634, 0.840801, -0.071252,
		14.868299, 19.430252, 21.372955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.103758, 19.223291, 20.981653>,  <14.492656, 18.841690, 21.422832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.103758, 19.223291, 20.981653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.494341, 19.309561, 20.979937>,  <14.728690, 19.361322, 20.978907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.494341, 19.309561, 20.979937>,  <14.103758, 19.223291, 20.981653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.494341, 19.309561, 20.979937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029908, -0.155062, -0.987452,
		-0.213631, 0.964076, -0.157862,
		0.976457, 0.215671, -0.004292,
		14.787278, 19.374262, 20.978649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.169254, 19.703688, 20.441984>,  <14.103758, 19.223291, 20.981653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.169254, 19.703688, 20.441984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540420, 19.581808, 20.527901>,  <14.763119, 19.508680, 20.579451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540420, 19.581808, 20.527901>,  <14.169254, 19.703688, 20.441984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.540420, 19.581808, 20.527901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199316, -0.081410, -0.976548,
		0.315038, 0.948963, -0.014810,
		0.927914, -0.304698, 0.214791,
		14.818793, 19.490398, 20.592339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.642163, 20.078512, 20.014181>,  <14.169254, 19.703688, 20.441984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.642163, 20.078512, 20.014181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826795, 19.739912, 20.120300>,  <14.937573, 19.536753, 20.183971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826795, 19.739912, 20.120300>,  <14.642163, 20.078512, 20.014181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826795, 19.739912, 20.120300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150563, -0.219966, -0.963818,
		0.874229, 0.484822, 0.025920,
		0.461579, -0.846500, 0.265297,
		14.965268, 19.485962, 20.199890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200127, 20.085983, 19.553097>,  <14.642163, 20.078512, 20.014181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.200127, 20.085983, 19.553097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154058, 19.714182, 19.693247>,  <15.126416, 19.491102, 19.777336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154058, 19.714182, 19.693247>,  <15.200127, 20.085983, 19.553097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154058, 19.714182, 19.693247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359414, -0.367819, -0.857631,
		0.926044, 0.027154, 0.376438,
		-0.115173, -0.929501, 0.350375,
		15.119506, 19.435331, 19.798359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851988, 19.707043, 19.558859>,  <15.200127, 20.085983, 19.553097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851988, 19.707043, 19.558859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598634, 19.398825, 19.587378>,  <15.446621, 19.213894, 19.604488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598634, 19.398825, 19.587378>,  <15.851988, 19.707043, 19.558859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598634, 19.398825, 19.587378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408272, -0.411015, -0.815095,
		0.657371, -0.487161, 0.574923,
		-0.633385, -0.770545, 0.071295,
		15.408618, 19.167662, 19.608767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252172, 19.088963, 19.631792>,  <15.851988, 19.707043, 19.558859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.252172, 19.088963, 19.631792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.892096, 18.966991, 19.507423>,  <15.676049, 18.893808, 19.432802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.892096, 18.966991, 19.507423>,  <16.252172, 19.088963, 19.631792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.892096, 18.966991, 19.507423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413269, -0.372981, -0.830719,
		0.137340, -0.876302, 0.461772,
		-0.900192, -0.304927, -0.310923,
		15.622038, 18.875513, 19.414146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427505, 18.458570, 19.310366>,  <16.252172, 19.088963, 19.631792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427505, 18.458570, 19.310366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060211, 18.529751, 19.168846>,  <15.839834, 18.572458, 19.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060211, 18.529751, 19.168846>,  <16.427505, 18.458570, 19.310366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060211, 18.529751, 19.168846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242539, -0.453543, -0.857598,
		-0.313070, -0.873289, 0.373301,
		-0.918239, 0.177948, -0.353797,
		15.784739, 18.583136, 19.062706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157930, 17.821171, 19.083324>,  <16.427505, 18.458570, 19.310366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.157930, 17.821171, 19.083324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947620, 18.115549, 18.912704>,  <15.821434, 18.292175, 18.810331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947620, 18.115549, 18.912704>,  <16.157930, 17.821171, 19.083324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947620, 18.115549, 18.912704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155810, -0.409650, -0.898838,
		-0.836232, -0.539048, 0.100717,
		-0.525776, 0.735944, -0.426551,
		15.789887, 18.336332, 18.784739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.028259, 17.412819, 18.582455>,  <16.157930, 17.821171, 19.083324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.028259, 17.412819, 18.582455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913240, 17.777578, 18.465319>,  <15.844230, 17.996435, 18.395037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913240, 17.777578, 18.465319>,  <16.028259, 17.412819, 18.582455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913240, 17.777578, 18.465319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100906, -0.275209, -0.956074,
		-0.952436, -0.304465, -0.012881,
		-0.287546, 0.911900, -0.292842,
		15.826977, 18.051147, 18.377466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560345, 17.311451, 18.036726>,  <16.028259, 17.412819, 18.582455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560345, 17.311451, 18.036726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685112, 17.689150, 17.994568>,  <15.759973, 17.915770, 17.969273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685112, 17.689150, 17.994568>,  <15.560345, 17.311451, 18.036726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685112, 17.689150, 17.994568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060531, -0.130454, -0.989605,
		-0.948179, 0.302296, -0.097847,
		0.311918, 0.944245, -0.105396,
		15.778687, 17.972424, 17.962950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070391, 17.727989, 17.504248>,  <15.560345, 17.311451, 18.036726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070391, 17.727989, 17.504248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425556, 17.911728, 17.514107>,  <15.638656, 18.021971, 17.520021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425556, 17.911728, 17.514107>,  <15.070391, 17.727989, 17.504248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425556, 17.911728, 17.514107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003940, 0.045986, -0.998934,
		-0.459992, 0.887065, 0.039022,
		0.887914, 0.459348, 0.024648,
		15.691931, 18.049532, 17.521502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039400, 18.302322, 17.001278>,  <15.070391, 17.727989, 17.504248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039400, 18.302322, 17.001278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426777, 18.230864, 17.070795>,  <15.659203, 18.187988, 17.112505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426777, 18.230864, 17.070795>,  <15.039400, 18.302322, 17.001278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426777, 18.230864, 17.070795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193073, 0.096775, -0.976400,
		0.157614, 0.979142, 0.128214,
		0.968442, -0.178649, 0.173793,
		15.717310, 18.177269, 17.122932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262868, 18.724722, 16.478514>,  <15.039400, 18.302322, 17.001278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262868, 18.724722, 16.478514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596496, 18.537016, 16.594524>,  <15.796673, 18.424393, 16.664131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596496, 18.537016, 16.594524>,  <15.262868, 18.724722, 16.478514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.596496, 18.537016, 16.594524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316692, -0.023172, -0.948245,
		0.451700, 0.882752, 0.129286,
		0.834070, -0.469267, 0.290028,
		15.846717, 18.396236, 16.681532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821370, 19.016310, 16.032776>,  <15.262868, 18.724722, 16.478514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821370, 19.016310, 16.032776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.923822, 18.653847, 16.167402>,  <15.985293, 18.436369, 16.248178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.923822, 18.653847, 16.167402>,  <15.821370, 19.016310, 16.032776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.923822, 18.653847, 16.167402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147052, -0.307602, -0.940083,
		0.955392, 0.290276, 0.054466,
		0.256130, -0.906157, 0.336566,
		16.000662, 18.382000, 16.268372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511175, 18.890808, 15.819421>,  <15.821370, 19.016310, 16.032776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511175, 18.890808, 15.819421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321110, 18.543732, 15.877841>,  <16.207071, 18.335485, 15.912893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321110, 18.543732, 15.877841>,  <16.511175, 18.890808, 15.819421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321110, 18.543732, 15.877841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135544, -0.236185, -0.962208,
		0.869396, -0.437409, 0.229836,
		-0.475162, -0.867692, 0.146050,
		16.178560, 18.283424, 15.921656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757530, 18.532789, 15.316114>,  <16.511175, 18.890808, 15.819421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757530, 18.532789, 15.316114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.441515, 18.303741, 15.403703>,  <16.251905, 18.166313, 15.456256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.441515, 18.303741, 15.403703>,  <16.757530, 18.532789, 15.316114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441515, 18.303741, 15.403703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060464, -0.282655, -0.957314,
		0.610072, -0.769552, 0.188685,
		-0.790036, -0.572621, 0.218971,
		16.204504, 18.131954, 15.469394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.936956, 18.001701, 14.994131>,  <16.757530, 18.532789, 15.316114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.936956, 18.001701, 14.994131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542683, 17.968596, 15.052893>,  <16.306118, 17.948732, 15.088149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542683, 17.968596, 15.052893>,  <16.936956, 18.001701, 14.994131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542683, 17.968596, 15.052893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106051, -0.373037, -0.921736,
		0.131086, -0.924118, 0.358919,
		-0.985682, -0.082763, 0.146904,
		16.246979, 17.943768, 15.096964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844715, 17.440870, 14.705339>,  <16.936956, 18.001701, 14.994131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844715, 17.440870, 14.705339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499451, 17.642683, 14.697326>,  <16.292292, 17.763771, 14.692517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499451, 17.642683, 14.697326>,  <16.844715, 17.440870, 14.705339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499451, 17.642683, 14.697326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118498, -0.240977, -0.963270,
		-0.490826, -0.829083, 0.267788,
		-0.863162, 0.504530, -0.020033,
		16.240501, 17.794043, 14.691316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259874, 16.974241, 14.468866>,  <16.844715, 17.440870, 14.705339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.259874, 16.974241, 14.468866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166380, 17.359892, 14.418537>,  <16.110283, 17.591282, 14.388340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166380, 17.359892, 14.418537>,  <16.259874, 16.974241, 14.468866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166380, 17.359892, 14.418537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449637, -0.221920, -0.865204,
		-0.862087, -0.145653, 0.485377,
		-0.233735, 0.964125, -0.125823,
		16.096260, 17.649130, 14.380790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570941, 16.945026, 14.180863>,  <16.259874, 16.974241, 14.468866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570941, 16.945026, 14.180863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729743, 17.291851, 14.060469>,  <15.825025, 17.499945, 13.988232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729743, 17.291851, 14.060469>,  <15.570941, 16.945026, 14.180863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729743, 17.291851, 14.060469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523116, -0.055696, -0.850439,
		-0.754146, 0.495080, 0.431462,
		0.397005, 0.867060, -0.300987,
		15.848845, 17.551970, 13.970173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504073, 17.036642, 14.997852>,  <15.570941, 16.945026, 14.180863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504073, 17.036642, 14.997852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.205829, 16.786711, 15.090504>,  <15.026882, 16.636751, 15.146094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.205829, 16.786711, 15.090504>,  <15.504073, 17.036642, 14.997852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205829, 16.786711, 15.090504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429284, -0.716232, -0.550205,
		0.509685, -0.310805, 0.802260,
		-0.745611, -0.624829, 0.231629,
		14.982145, 16.599262, 15.159992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809239, 16.371552, 15.246762>,  <15.504073, 17.036642, 14.997852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809239, 16.371552, 15.246762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453176, 16.297506, 15.080221>,  <15.239537, 16.253078, 14.980296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453176, 16.297506, 15.080221>,  <15.809239, 16.371552, 15.246762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.453176, 16.297506, 15.080221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330756, -0.890997, -0.311007,
		-0.313398, -0.414557, 0.854356,
		-0.890159, -0.185114, -0.416354,
		15.186128, 16.241972, 14.955315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507883, 16.337301, 15.622556>,  <15.809239, 16.371552, 15.246762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507883, 16.337301, 15.622556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.612061, 16.233122, 15.994434>,  <16.674566, 16.170614, 16.217562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.612061, 16.233122, 15.994434>,  <16.507883, 16.337301, 15.622556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.612061, 16.233122, 15.994434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965181, 0.094579, -0.243886,
		-0.024409, 0.960844, 0.276014,
		0.260441, -0.260450, 0.929697,
		16.690193, 16.154987, 16.273344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062490, 16.866543, 15.852287>,  <16.507883, 16.337301, 15.622556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062490, 16.866543, 15.852287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094355, 16.500448, 16.010271>,  <17.113474, 16.280790, 16.105061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094355, 16.500448, 16.010271>,  <17.062490, 16.866543, 15.852287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094355, 16.500448, 16.010271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956651, -0.041151, -0.288314,
		0.280129, 0.400806, 0.872286,
		0.079662, -0.915238, 0.394959,
		17.118254, 16.225876, 16.128759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641586, 16.915606, 16.376596>,  <17.062490, 16.866543, 15.852287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641586, 16.915606, 16.376596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.596212, 16.552380, 16.215324>,  <17.568989, 16.334444, 16.118561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.596212, 16.552380, 16.215324>,  <17.641586, 16.915606, 16.376596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596212, 16.552380, 16.215324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973596, -0.020682, -0.227337,
		0.198098, -0.418321, 0.886434,
		-0.113434, -0.908064, -0.403179,
		17.562181, 16.279961, 16.094370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095455, 17.571520, 16.381634>,  <17.641586, 16.915606, 16.376596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.095455, 17.571520, 16.381634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.939989, 17.923845, 16.489786>,  <17.846710, 18.135241, 16.554678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.939989, 17.923845, 16.489786>,  <18.095455, 17.571520, 16.381634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.939989, 17.923845, 16.489786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103038, 0.333160, -0.937223,
		-0.915600, -0.336405, -0.220244,
		-0.388663, 0.880816, 0.270379,
		17.823391, 18.188089, 16.570900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450285, 16.885204, 16.364914>,  <18.095455, 17.571520, 16.381634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450285, 16.885204, 16.364914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660105, 16.575699, 16.222853>,  <18.785997, 16.389996, 16.137615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660105, 16.575699, 16.222853>,  <18.450285, 16.885204, 16.364914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660105, 16.575699, 16.222853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148047, 0.327899, -0.933041,
		0.838408, 0.542008, 0.057447,
		0.524552, -0.773764, -0.355155,
		18.817471, 16.343569, 16.116306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787558, 17.112551, 15.867459>,  <18.450285, 16.885204, 16.364914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.787558, 17.112551, 15.867459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767061, 16.721359, 15.786529>,  <18.754763, 16.486645, 15.737970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767061, 16.721359, 15.786529>,  <18.787558, 17.112551, 15.867459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767061, 16.721359, 15.786529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115779, 0.207045, -0.971456,
		0.991952, -0.026354, -0.123839,
		-0.051242, -0.977977, -0.202327,
		18.751688, 16.427967, 15.725830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103792, 17.131216, 15.204614>,  <18.787558, 17.112551, 15.867459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103792, 17.131216, 15.204614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921410, 16.775797, 15.224945>,  <18.811979, 16.562546, 15.237144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921410, 16.775797, 15.224945>,  <19.103792, 17.131216, 15.204614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.921410, 16.775797, 15.224945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130225, 0.010111, -0.991433,
		0.880422, -0.458671, -0.120321,
		-0.455958, -0.888549, 0.050829,
		18.784622, 16.509232, 15.240193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403185, 16.635225, 14.660155>,  <19.103792, 17.131216, 15.204614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403185, 16.635225, 14.660155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.036581, 16.516722, 14.767665>,  <18.816618, 16.445620, 14.832170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.036581, 16.516722, 14.767665>,  <19.403185, 16.635225, 14.660155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036581, 16.516722, 14.767665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253546, -0.089446, -0.963179,
		0.309391, -0.950910, 0.006863,
		-0.916511, -0.296259, 0.268773,
		18.761627, 16.427845, 14.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310642, 16.214018, 14.142550>,  <19.403185, 16.635225, 14.660155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310642, 16.214018, 14.142550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958612, 16.262510, 14.326187>,  <18.747395, 16.291605, 14.436370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958612, 16.262510, 14.326187>,  <19.310642, 16.214018, 14.142550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958612, 16.262510, 14.326187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467356, -0.050271, -0.882639,
		-0.083943, -0.991348, 0.100911,
		-0.880075, 0.121253, 0.459092,
		18.694590, 16.298880, 14.463916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877575, 15.716006, 13.943531>,  <19.310642, 16.214018, 14.142550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877575, 15.716006, 13.943531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623852, 16.007374, 14.047116>,  <18.471619, 16.182194, 14.109267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623852, 16.007374, 14.047116>,  <18.877575, 15.716006, 13.943531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623852, 16.007374, 14.047116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428577, -0.052538, -0.901976,
		-0.643411, -0.683114, 0.345509,
		-0.634305, 0.728419, 0.258964,
		18.433559, 16.225899, 14.124805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233465, 15.503247, 13.463655>,  <18.877575, 15.716006, 13.943531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233465, 15.503247, 13.463655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176205, 15.874456, 13.601224>,  <18.141848, 16.097181, 13.683764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176205, 15.874456, 13.601224>,  <18.233465, 15.503247, 13.463655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176205, 15.874456, 13.601224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447632, 0.249214, -0.858789,
		-0.882685, -0.276886, 0.379738,
		-0.143151, 0.928023, 0.343920,
		18.133259, 16.152863, 13.704400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468199, 15.696238, 13.240640>,  <18.233465, 15.503247, 13.463655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468199, 15.696238, 13.240640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.709980, 16.013206, 13.273397>,  <17.855049, 16.203388, 13.293053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.709980, 16.013206, 13.273397>,  <17.468199, 15.696238, 13.240640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709980, 16.013206, 13.273397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313955, 0.331432, -0.889711,
		-0.732168, 0.512076, 0.449119,
		0.604452, 0.792421, 0.081895,
		17.891315, 16.250933, 13.297966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.079771, 16.365519, 13.031579>,  <17.468199, 15.696238, 13.240640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.079771, 16.365519, 13.031579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.467852, 16.454325, 12.992762>,  <17.700701, 16.507608, 12.969471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.467852, 16.454325, 12.992762>,  <17.079771, 16.365519, 13.031579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.467852, 16.454325, 12.992762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156598, 0.268938, -0.950342,
		-0.184890, 0.937221, 0.295691,
		0.970202, 0.222013, -0.097043,
		17.758913, 16.520929, 12.963649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120466, 16.931793, 12.640503>,  <17.079771, 16.365519, 13.031579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120466, 16.931793, 12.640503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493900, 16.801643, 12.580431>,  <17.717960, 16.723555, 12.544388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493900, 16.801643, 12.580431>,  <17.120466, 16.931793, 12.640503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493900, 16.801643, 12.580431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030007, 0.346623, -0.937524,
		0.357100, 0.879764, 0.313838,
		0.933584, -0.325373, -0.150179,
		17.773975, 16.704031, 12.535378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500490, 17.483047, 12.354789>,  <17.120466, 16.931793, 12.640503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500490, 17.483047, 12.354789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.698088, 17.149933, 12.254838>,  <17.816647, 16.950064, 12.194867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.698088, 17.149933, 12.254838>,  <17.500490, 17.483047, 12.354789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.698088, 17.149933, 12.254838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052487, 0.315431, -0.947496,
		0.867880, 0.454942, 0.199531,
		0.493994, -0.832785, -0.249878,
		17.846285, 16.900097, 12.179874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153093, 17.605850, 11.903730>,  <17.500490, 17.483047, 12.354789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153093, 17.605850, 11.903730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057587, 17.221203, 11.849655>,  <18.000282, 16.990414, 11.817210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057587, 17.221203, 11.849655>,  <18.153093, 17.605850, 11.903730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.057587, 17.221203, 11.849655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045009, 0.128106, -0.990739,
		0.970033, -0.242641, 0.012694,
		-0.238767, -0.961621, -0.135188,
		17.985956, 16.932716, 11.809099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558529, 17.409214, 11.414107>,  <18.153093, 17.605850, 11.903730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558529, 17.409214, 11.414107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310843, 17.095778, 11.393876>,  <18.162231, 16.907717, 11.381737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310843, 17.095778, 11.393876>,  <18.558529, 17.409214, 11.414107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310843, 17.095778, 11.393876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059434, 0.017457, -0.998080,
		0.782968, -0.621033, 0.035762,
		-0.619216, -0.783590, -0.050579,
		18.125078, 16.860701, 11.378702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825594, 16.866934, 10.925981>,  <18.558529, 17.409214, 11.414107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825594, 16.866934, 10.925981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432913, 16.790768, 10.925638>,  <18.197304, 16.745068, 10.925433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432913, 16.790768, 10.925638>,  <18.825594, 16.866934, 10.925981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.432913, 16.790768, 10.925638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042779, -0.216168, -0.975419,
		0.185549, -0.957608, 0.220359,
		-0.981704, -0.190415, -0.000856,
		18.138401, 16.733643, 10.925382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703264, 16.323298, 10.431546>,  <18.825594, 16.866934, 10.925981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703264, 16.323298, 10.431546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341988, 16.492390, 10.461327>,  <18.125221, 16.593845, 10.479195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341988, 16.492390, 10.461327>,  <18.703264, 16.323298, 10.431546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341988, 16.492390, 10.461327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132673, -0.109977, -0.985040,
		-0.408220, -0.899557, 0.155416,
		-0.903191, 0.422732, 0.074452,
		18.071030, 16.619209, 10.483662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335791, 15.873742, 10.017135>,  <18.703264, 16.323298, 10.431546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.335791, 15.873742, 10.017135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.124884, 16.209558, 10.069532>,  <17.998339, 16.411049, 10.100971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.124884, 16.209558, 10.069532>,  <18.335791, 15.873742, 10.017135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124884, 16.209558, 10.069532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132996, 0.070722, -0.988590,
		-0.839226, -0.538674, 0.074366,
		-0.527268, 0.839541, 0.130993,
		17.966703, 16.461420, 10.108830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704210, 15.847058, 9.572814>,  <18.335791, 15.873742, 10.017135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704210, 15.847058, 9.572814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.796066, 16.227800, 9.654043>,  <17.851179, 16.456245, 9.702781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.796066, 16.227800, 9.654043>,  <17.704210, 15.847058, 9.572814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.796066, 16.227800, 9.654043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189539, 0.248391, -0.949935,
		-0.954642, 0.179652, 0.237454,
		0.229639, 0.951855, 0.203073,
		17.864958, 16.513357, 9.714965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102150, 16.273308, 9.393124>,  <17.704210, 15.847058, 9.572814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102150, 16.273308, 9.393124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415068, 16.522444, 9.396710>,  <17.602819, 16.671926, 9.398862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415068, 16.522444, 9.396710>,  <17.102150, 16.273308, 9.393124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415068, 16.522444, 9.396710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261835, 0.341860, -0.902538,
		-0.565204, 0.703705, 0.430517,
		0.782296, 0.622842, 0.008966,
		17.649757, 16.709297, 9.399400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860367, 16.951128, 9.076772>,  <17.102150, 16.273308, 9.393124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860367, 16.951128, 9.076772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257294, 17.000557, 9.079276>,  <17.495449, 17.030214, 9.080779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257294, 17.000557, 9.079276>,  <16.860367, 16.951128, 9.076772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257294, 17.000557, 9.079276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062815, 0.546717, -0.834958,
		-0.106602, 0.828149, 0.550278,
		0.992316, 0.123574, 0.006261,
		17.554989, 17.037630, 9.081154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101822, 17.710203, 9.026581>,  <16.860367, 16.951128, 9.076772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.101822, 17.710203, 9.026581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383165, 17.480616, 8.858846>,  <17.551971, 17.342863, 8.758204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383165, 17.480616, 8.858846>,  <17.101822, 17.710203, 9.026581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383165, 17.480616, 8.858846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077483, 0.648313, -0.757421,
		0.706599, 0.500248, 0.500470,
		0.703359, -0.573971, -0.419337,
		17.594173, 17.308424, 8.733045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478287, 18.237158, 8.750675>,  <17.101822, 17.710203, 9.026581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478287, 18.237158, 8.750675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585888, 17.892492, 8.578547>,  <17.650448, 17.685694, 8.475271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585888, 17.892492, 8.578547>,  <17.478287, 18.237158, 8.750675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585888, 17.892492, 8.578547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153767, 0.479478, -0.863977,
		0.950786, 0.166242, 0.261476,
		0.269001, -0.861664, -0.430319,
		17.666588, 17.633993, 8.449451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750700, 18.734159, 9.154866>,  <17.478287, 18.237158, 8.750675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750700, 18.734159, 9.154866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.815489, 19.120142, 9.072280>,  <17.854362, 19.351730, 9.022728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.815489, 19.120142, 9.072280>,  <17.750700, 18.734159, 9.154866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815489, 19.120142, 9.072280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888136, -0.051362, 0.456702,
		0.430092, -0.257342, -0.865330,
		0.161973, 0.964954, -0.206465,
		17.864080, 19.409628, 9.010341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406904, 18.716908, 8.834107>,  <17.750700, 18.734159, 9.154866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406904, 18.716908, 8.834107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.328287, 19.045355, 9.048449>,  <18.281116, 19.242422, 9.177053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.328287, 19.045355, 9.048449>,  <18.406904, 18.716908, 8.834107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.328287, 19.045355, 9.048449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963036, 0.058988, 0.262835,
		0.184210, 0.567703, -0.802359,
		-0.196542, 0.821117, 0.535852,
		18.269325, 19.291691, 9.209205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760267, 19.255629, 8.496517>,  <18.406904, 18.716908, 8.834107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760267, 19.255629, 8.496517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691769, 19.320269, 8.885271>,  <18.650669, 19.359053, 9.118524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.691769, 19.320269, 8.885271>,  <18.760267, 19.255629, 8.496517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691769, 19.320269, 8.885271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976555, 0.158449, 0.145723,
		-0.130446, 0.974053, -0.184945,
		-0.171246, 0.161600, 0.971885,
		18.640394, 19.368750, 9.176837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.086987, 19.977293, 8.657133>,  <18.760267, 19.255629, 8.496517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.086987, 19.977293, 8.657133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067699, 19.718164, 8.961239>,  <19.056128, 19.562687, 9.143703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067699, 19.718164, 8.961239>,  <19.086987, 19.977293, 8.657133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067699, 19.718164, 8.961239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955450, 0.191982, 0.224183,
		-0.291188, 0.737203, 0.609706,
		-0.048216, -0.647823, 0.760263,
		19.053234, 19.523817, 9.189318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286936, 20.178230, 9.398098>,  <19.086987, 19.977293, 8.657133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286936, 20.178230, 9.398098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.397041, 19.794947, 9.366949>,  <19.463104, 19.564976, 9.348260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.397041, 19.794947, 9.366949>,  <19.286936, 20.178230, 9.398098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397041, 19.794947, 9.366949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895744, 0.226218, 0.382712,
		-0.349102, -0.175102, 0.920580,
		0.275265, -0.958209, -0.077873,
		19.479620, 19.507484, 9.343587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327333, 19.881849, 10.115595>,  <19.286936, 20.178230, 9.398098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.327333, 19.881849, 10.115595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607376, 19.761995, 9.856342>,  <19.775402, 19.690083, 9.700791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607376, 19.761995, 9.856342>,  <19.327333, 19.881849, 10.115595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607376, 19.761995, 9.856342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712413, 0.354357, 0.605722,
		0.048175, -0.885805, 0.461550,
		0.700105, -0.299633, -0.648130,
		19.817408, 19.672106, 9.661903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.806696, 19.343264, 10.408458>,  <19.327333, 19.881849, 10.115595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.806696, 19.343264, 10.408458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992275, 19.547142, 10.118640>,  <20.103622, 19.669470, 9.944750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992275, 19.547142, 10.118640>,  <19.806696, 19.343264, 10.408458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992275, 19.547142, 10.118640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785277, 0.141907, 0.602663,
		0.409994, -0.848570, -0.334416,
		0.463946, 0.509697, -0.724544,
		20.131458, 19.700050, 9.901277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399542, 19.000668, 10.121662>,  <19.806696, 19.343264, 10.408458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399542, 19.000668, 10.121662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.481016, 19.385635, 10.049814>,  <20.529900, 19.616615, 10.006705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.481016, 19.385635, 10.049814>,  <20.399542, 19.000668, 10.121662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.481016, 19.385635, 10.049814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713655, -0.020355, 0.700201,
		0.670231, -0.270806, -0.690981,
		0.203684, 0.962419, -0.179620,
		20.542122, 19.674360, 9.995928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213753, 19.044847, 9.989047>,  <20.399542, 19.000668, 10.121662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213753, 19.044847, 9.989047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.040731, 19.374643, 10.134986>,  <20.936918, 19.572521, 10.222549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.040731, 19.374643, 10.134986>,  <21.213753, 19.044847, 9.989047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.040731, 19.374643, 10.134986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688034, 0.040340, 0.724556,
		0.582672, 0.564437, -0.584727,
		-0.432554, 0.824490, 0.364847,
		20.910965, 19.621990, 10.244440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.598585, 19.576626, 10.085441>,  <21.213753, 19.044847, 9.989047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.598585, 19.576626, 10.085441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305183, 19.603443, 10.355989>,  <21.129143, 19.619534, 10.518318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305183, 19.603443, 10.355989>,  <21.598585, 19.576626, 10.085441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305183, 19.603443, 10.355989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669357, -0.101575, 0.735965,
		0.118042, 0.992566, 0.029631,
		-0.733503, 0.067041, 0.676371,
		21.085133, 19.623556, 10.558901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.860657, 20.013565, 10.511439>,  <21.598585, 19.576626, 10.085441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.860657, 20.013565, 10.511439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.566919, 19.847670, 10.726373>,  <21.390676, 19.748133, 10.855333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.566919, 19.847670, 10.726373>,  <21.860657, 20.013565, 10.511439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.566919, 19.847670, 10.726373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587812, 0.007299, 0.808964,
		-0.339432, 0.909911, 0.238429,
		-0.734345, -0.414740, 0.537335,
		21.346615, 19.723248, 10.887573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.754797, 20.340279, 11.134070>,  <21.860657, 20.013565, 10.511439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.754797, 20.340279, 11.134070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596020, 19.989536, 11.242560>,  <21.500753, 19.779091, 11.307654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596020, 19.989536, 11.242560>,  <21.754797, 20.340279, 11.134070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596020, 19.989536, 11.242560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637758, -0.050981, 0.768548,
		-0.660078, 0.478044, 0.579458,
		-0.396941, -0.876855, 0.271225,
		21.476938, 19.726480, 11.323928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694620, 20.549225, 11.703673>,  <21.754797, 20.340279, 11.134070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694620, 20.549225, 11.703673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.658354, 20.150873, 11.704586>,  <21.636595, 19.911861, 11.705133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.658354, 20.150873, 11.704586>,  <21.694620, 20.549225, 11.703673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658354, 20.150873, 11.704586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638552, -0.056375, 0.767511,
		-0.764219, 0.071043, 0.641032,
		-0.090664, -0.995879, 0.002282,
		21.631155, 19.852110, 11.705271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396418, 20.267290, 12.413281>,  <21.694620, 20.549225, 11.703673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396418, 20.267290, 12.413281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595921, 19.972811, 12.230307>,  <21.715622, 19.796124, 12.120522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595921, 19.972811, 12.230307>,  <21.396418, 20.267290, 12.413281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595921, 19.972811, 12.230307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522918, -0.165307, 0.836200,
		-0.691227, -0.656265, 0.302524,
		0.498759, -0.736199, -0.457438,
		21.745548, 19.751951, 12.093075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565990, 19.786686, 13.013783>,  <21.396418, 20.267290, 12.413281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565990, 19.786686, 13.013783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.815714, 19.657404, 12.729311>,  <21.965548, 19.579836, 12.558628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.815714, 19.657404, 12.729311>,  <21.565990, 19.786686, 13.013783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.815714, 19.657404, 12.729311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587830, -0.405218, 0.700181,
		-0.514484, -0.855183, -0.062993,
		0.624309, -0.323202, -0.711181,
		22.003006, 19.560444, 12.515957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.628214, 19.118666, 13.210670>,  <21.565990, 19.786686, 13.013783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.628214, 19.118666, 13.210670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.909309, 19.160725, 12.929215>,  <22.077967, 19.185961, 12.760343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.909309, 19.160725, 12.929215>,  <21.628214, 19.118666, 13.210670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.909309, 19.160725, 12.929215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644061, -0.514172, 0.566404,
		-0.302232, -0.851217, -0.429051,
		0.702739, 0.105150, -0.703635,
		22.120131, 19.192270, 12.718125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723560, 18.542877, 12.813695>,  <21.628214, 19.118666, 13.210670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723560, 18.542877, 12.813695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074961, 18.731264, 12.781630>,  <22.285801, 18.844296, 12.762390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074961, 18.731264, 12.781630>,  <21.723560, 18.542877, 12.813695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.074961, 18.731264, 12.781630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437501, -0.725691, 0.531005,
		0.191912, -0.501560, -0.843568,
		0.878501, 0.470968, -0.080164,
		22.338511, 18.872555, 12.757580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.132677, 18.030952, 12.728053>,  <21.723560, 18.542877, 12.813695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.132677, 18.030952, 12.728053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.404095, 18.317440, 12.793303>,  <22.566946, 18.489332, 12.832454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.404095, 18.317440, 12.793303>,  <22.132677, 18.030952, 12.728053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.404095, 18.317440, 12.793303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658985, -0.691643, 0.295581,
		0.324526, -0.093067, -0.941287,
		0.678543, 0.716218, 0.163126,
		22.607658, 18.532305, 12.842241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.753588, 17.960955, 12.288296>,  <22.132677, 18.030952, 12.728053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.753588, 17.960955, 12.288296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825813, 18.146675, 12.635127>,  <22.869148, 18.258106, 12.843225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825813, 18.146675, 12.635127>,  <22.753588, 17.960955, 12.288296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825813, 18.146675, 12.635127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609860, -0.744495, 0.271658,
		0.771665, 0.479744, -0.417587,
		0.180565, 0.464299, 0.867077,
		22.879982, 18.285965, 12.895250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.271835, 17.658968, 12.478535>,  <22.753588, 17.960955, 12.288296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.271835, 17.658968, 12.478535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.238138, 17.849815, 12.828451>,  <23.217920, 17.964325, 13.038401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.238138, 17.849815, 12.828451>,  <23.271835, 17.658968, 12.478535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.238138, 17.849815, 12.828451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447831, -0.766124, 0.460979,
		0.890141, 0.430593, -0.149128,
		-0.084243, 0.477120, 0.874791,
		23.212866, 17.992950, 13.090889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.838743, 17.486494, 12.937218>,  <23.271835, 17.658968, 12.478535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.838743, 17.486494, 12.937218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582644, 17.598831, 13.223212>,  <23.428984, 17.666233, 13.394809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582644, 17.598831, 13.223212>,  <23.838743, 17.486494, 12.937218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.582644, 17.598831, 13.223212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412418, -0.659575, 0.628389,
		0.648066, 0.697200, 0.306468,
		-0.640251, 0.280844, 0.714986,
		23.390568, 17.683084, 13.437708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.268690, 17.647299, 13.505860>,  <23.838743, 17.486494, 12.937218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.268690, 17.647299, 13.505860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.905762, 17.581089, 13.660456>,  <23.688005, 17.541363, 13.753213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.905762, 17.581089, 13.660456>,  <24.268690, 17.647299, 13.505860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.905762, 17.581089, 13.660456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372471, -0.742858, 0.556262,
		0.195030, 0.648663, 0.735663,
		-0.907319, -0.165525, 0.386488,
		23.633566, 17.531431, 13.776402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337017, 17.534174, 14.198813>,  <24.268690, 17.647299, 13.505860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337017, 17.534174, 14.198813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980215, 17.369190, 14.124837>,  <23.766134, 17.270201, 14.080451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980215, 17.369190, 14.124837>,  <24.337017, 17.534174, 14.198813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.980215, 17.369190, 14.124837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237521, -0.775794, 0.584574,
		-0.384589, 0.477516, 0.789981,
		-0.892006, -0.412458, -0.184942,
		23.712614, 17.245453, 14.069354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160410, 17.264610, 14.858261>,  <24.337017, 17.534174, 14.198813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160410, 17.264610, 14.858261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995905, 17.052994, 14.561349>,  <23.897202, 16.926023, 14.383202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995905, 17.052994, 14.561349>,  <24.160410, 17.264610, 14.858261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.995905, 17.052994, 14.561349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226167, -0.848096, 0.479148,
		-0.883012, 0.029177, 0.468443,
		-0.411264, -0.529039, -0.742280,
		23.872526, 16.894281, 14.338665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.630266, 16.930622, 15.106469>,  <24.160410, 17.264610, 14.858261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.630266, 16.930622, 15.106469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.821583, 16.725830, 14.821060>,  <23.936373, 16.602955, 14.649815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.821583, 16.725830, 14.821060>,  <23.630266, 16.930622, 15.106469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.821583, 16.725830, 14.821060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136385, -0.759320, 0.636264,
		-0.867545, -0.401634, -0.293351,
		0.478292, -0.511979, -0.713522,
		23.965071, 16.572237, 14.607003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.552715, 16.118118, 15.093865>,  <23.630266, 16.930622, 15.106469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.552715, 16.118118, 15.093865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.917978, 16.201729, 14.953892>,  <24.137136, 16.251894, 14.869907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.917978, 16.201729, 14.953892>,  <23.552715, 16.118118, 15.093865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.917978, 16.201729, 14.953892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380993, -0.742836, 0.550489,
		-0.144879, -0.636005, -0.757962,
		0.913156, 0.209024, -0.349935,
		24.191925, 16.264437, 14.848911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.987867, 15.487648, 14.817009>,  <23.552715, 16.118118, 15.093865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.987867, 15.487648, 14.817009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252531, 15.759997, 14.942625>,  <24.411329, 15.923407, 15.017995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252531, 15.759997, 14.942625>,  <23.987867, 15.487648, 14.817009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252531, 15.759997, 14.942625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409124, -0.678823, 0.609768,
		0.628352, -0.274976, -0.727710,
		0.661658, 0.680873, 0.314041,
		24.451029, 15.964259, 15.036838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654079, 15.197971, 14.694489>,  <23.987867, 15.487648, 14.817009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654079, 15.197971, 14.694489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674942, 15.454105, 15.001019>,  <24.687460, 15.607785, 15.184937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674942, 15.454105, 15.001019>,  <24.654079, 15.197971, 14.694489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.674942, 15.454105, 15.001019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449159, -0.700412, 0.554688,
		0.891928, 0.315270, -0.324144,
		0.052159, 0.640334, 0.766324,
		24.690590, 15.646206, 15.230916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133408, 14.850389, 14.187379>,  <24.654079, 15.197971, 14.694489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133408, 14.850389, 14.187379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008064, 14.891976, 13.809809>,  <24.932858, 14.916929, 13.583266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008064, 14.891976, 13.809809>,  <25.133408, 14.850389, 14.187379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008064, 14.891976, 13.809809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775662, -0.545431, -0.317576,
		-0.547860, -0.831684, 0.090283,
		-0.313366, 0.103958, -0.943925,
		24.914057, 14.923167, 13.526630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891504, 14.098487, 13.885137>,  <25.133408, 14.850389, 14.187379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891504, 14.098487, 13.885137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041500, 14.371220, 13.633904>,  <25.131498, 14.534859, 13.483164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041500, 14.371220, 13.633904>,  <24.891504, 14.098487, 13.885137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041500, 14.371220, 13.633904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723777, -0.638682, -0.261213,
		-0.579249, -0.356640, -0.732993,
		0.374990, 0.681831, -0.628083,
		25.153997, 14.575769, 13.445478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589535, 14.214218, 14.293072>,  <24.891504, 14.098487, 13.885137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589535, 14.214218, 14.293072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573122, 14.586843, 14.437577>,  <25.563274, 14.810417, 14.524281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573122, 14.586843, 14.437577>,  <25.589535, 14.214218, 14.293072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573122, 14.586843, 14.437577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817862, -0.176384, 0.547714,
		0.573950, 0.317938, -0.754650,
		-0.041031, 0.931560, 0.361265,
		25.560812, 14.866310, 14.545957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242041, 14.603315, 14.093934>,  <25.589535, 14.214218, 14.293072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242041, 14.603315, 14.093934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053404, 14.749355, 14.415008>,  <25.940222, 14.836980, 14.607652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053404, 14.749355, 14.415008>,  <26.242041, 14.603315, 14.093934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053404, 14.749355, 14.415008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799202, -0.207722, 0.564028,
		0.372662, 0.907498, -0.193829,
		-0.471592, 0.365101, 0.802685,
		25.911926, 14.858886, 14.655813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604948, 15.149670, 14.478711>,  <26.242041, 14.603315, 14.093934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604948, 15.149670, 14.478711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388515, 14.970205, 14.763227>,  <26.258656, 14.862527, 14.933936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388515, 14.970205, 14.763227>,  <26.604948, 15.149670, 14.478711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388515, 14.970205, 14.763227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840206, -0.252380, 0.479957,
		-0.035824, 0.857326, 0.513527,
		-0.541083, -0.448662, 0.711289,
		26.226191, 14.835607, 14.976613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803511, 15.274385, 15.136683>,  <26.604948, 15.149670, 14.478711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803511, 15.274385, 15.136683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656994, 14.904868, 15.092076>,  <26.569084, 14.683158, 15.065312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656994, 14.904868, 15.092076>,  <26.803511, 15.274385, 15.136683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656994, 14.904868, 15.092076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886880, -0.382870, 0.258563,
		-0.281555, -0.004190, 0.959536,
		-0.366294, -0.923793, -0.111515,
		26.547106, 14.627730, 15.058622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.995008, 22.651373, 23.665089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.841336, 22.305593, 23.794785>,  <11.749133, 22.098125, 23.872602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.841336, 22.305593, 23.794785>,  <11.995008, 22.651373, 23.665089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841336, 22.305593, 23.794785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262103, -0.234626, -0.936084,
		0.885273, -0.444609, -0.136437,
		-0.384180, -0.864450, 0.324241,
		11.726082, 22.046259, 23.892057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.369304, 22.128189, 23.278851>,  <11.995008, 22.651373, 23.665089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.369304, 22.128189, 23.278851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.033427, 21.944399, 23.394642>,  <11.831902, 21.834124, 23.464117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.033427, 21.944399, 23.394642>,  <12.369304, 22.128189, 23.278851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.033427, 21.944399, 23.394642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164256, -0.293195, -0.941837,
		0.517626, -0.838401, 0.170721,
		-0.839692, -0.459478, 0.289478,
		11.781520, 21.806555, 23.481485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372577, 21.400196, 23.109932>,  <12.369304, 22.128189, 23.278851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.372577, 21.400196, 23.109932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.981837, 21.475128, 23.151258>,  <11.747394, 21.520088, 23.176054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.981837, 21.475128, 23.151258>,  <12.372577, 21.400196, 23.109932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.981837, 21.475128, 23.151258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186671, -0.510483, -0.839382,
		-0.104500, -0.839235, 0.533634,
		-0.976849, 0.187330, 0.103315,
		11.688783, 21.531326, 23.182253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.113018, 20.813782, 23.112587>,  <12.372577, 21.400196, 23.109932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.113018, 20.813782, 23.112587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.829591, 21.055674, 22.967131>,  <11.659534, 21.200809, 22.879856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.829591, 21.055674, 22.967131>,  <12.113018, 20.813782, 23.112587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829591, 21.055674, 22.967131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013829, -0.527135, -0.849669,
		-0.705509, -0.597018, 0.381873,
		-0.708566, 0.604730, -0.363642,
		11.617021, 21.237093, 22.858038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.577895, 20.406296, 22.738493>,  <12.113018, 20.813782, 23.112587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.577895, 20.406296, 22.738493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.512787, 20.770475, 22.586393>,  <11.473722, 20.988983, 22.495134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.512787, 20.770475, 22.586393>,  <11.577895, 20.406296, 22.738493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.512787, 20.770475, 22.586393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167356, -0.405281, -0.898744,
		-0.972367, -0.082651, 0.218336,
		-0.162770, 0.910449, -0.380249,
		11.463956, 21.043610, 22.472319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.933900, 20.329855, 22.296957>,  <11.577895, 20.406296, 22.738493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.933900, 20.329855, 22.296957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.127342, 20.661909, 22.185961>,  <11.243408, 20.861141, 22.119364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.127342, 20.661909, 22.185961>,  <10.933900, 20.329855, 22.296957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.127342, 20.661909, 22.185961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178830, -0.216633, -0.959734,
		-0.856822, 0.513758, 0.043687,
		0.483607, 0.830134, -0.277491,
		11.272425, 20.910950, 22.102713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.439793, 20.727665, 21.840689>,  <10.933900, 20.329855, 22.296957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.439793, 20.727665, 21.840689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.820705, 20.815409, 21.755796>,  <11.049253, 20.868055, 21.704861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.820705, 20.815409, 21.755796>,  <10.439793, 20.727665, 21.840689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.820705, 20.815409, 21.755796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154632, -0.252762, -0.955092,
		-0.263154, 0.942333, -0.206780,
		0.952281, 0.219362, -0.212230,
		11.106390, 20.881218, 21.692127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.416081, 20.826651, 21.127495>,  <10.439793, 20.727665, 21.840689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.416081, 20.826651, 21.127495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.809419, 20.809008, 21.198025>,  <11.045421, 20.798422, 21.240343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.809419, 20.809008, 21.198025>,  <10.416081, 20.826651, 21.127495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.809419, 20.809008, 21.198025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153119, -0.321670, -0.934389,
		0.097931, 0.945824, -0.309559,
		0.983343, -0.044107, 0.176325,
		11.104422, 20.795776, 21.250923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.764602, 21.163607, 20.563442>,  <10.416081, 20.826651, 21.127495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.764602, 21.163607, 20.563442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.076518, 20.984674, 20.738632>,  <11.263668, 20.877316, 20.843746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.076518, 20.984674, 20.738632>,  <10.764602, 21.163607, 20.563442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.076518, 20.984674, 20.738632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327804, -0.304271, -0.894407,
		0.533358, 0.841020, -0.090631,
		0.779791, -0.447329, 0.437976,
		11.310455, 20.850475, 20.870026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.279322, 21.366266, 20.197081>,  <10.764602, 21.163607, 20.563442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.279322, 21.366266, 20.197081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.388279, 21.018141, 20.361204>,  <11.453653, 20.809265, 20.459679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.388279, 21.018141, 20.361204>,  <11.279322, 21.366266, 20.197081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.388279, 21.018141, 20.361204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123506, -0.391282, -0.911946,
		0.954227, 0.299083, 0.000907,
		0.272393, -0.870315, 0.410310,
		11.469996, 20.757046, 20.484297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.882317, 21.127020, 19.810661>,  <11.279322, 21.366266, 20.197081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.882317, 21.127020, 19.810661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.761585, 20.787409, 19.984121>,  <11.689146, 20.583643, 20.088198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.761585, 20.787409, 19.984121>,  <11.882317, 21.127020, 19.810661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761585, 20.787409, 19.984121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311064, -0.517675, -0.797027,
		0.901187, -0.105673, 0.420351,
		-0.301829, -0.849027, 0.433651,
		11.671037, 20.532701, 20.114216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453773, 20.714684, 19.832062>,  <11.882317, 21.127020, 19.810661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453773, 20.714684, 19.832062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.123731, 20.489044, 19.844637>,  <11.925705, 20.353661, 19.852182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.123731, 20.489044, 19.844637>,  <12.453773, 20.714684, 19.832062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.123731, 20.489044, 19.844637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264782, -0.435252, -0.860492,
		0.499087, -0.701674, 0.508493,
		-0.825108, -0.564099, 0.031438,
		11.876198, 20.319815, 19.854069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.711082, 20.121515, 19.635450>,  <12.453773, 20.714684, 19.832062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.711082, 20.121515, 19.635450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313823, 20.086119, 19.604910>,  <12.075468, 20.064880, 19.586586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313823, 20.086119, 19.604910>,  <12.711082, 20.121515, 19.635450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313823, 20.086119, 19.604910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116873, -0.746086, -0.655512,
		0.001044, -0.659942, 0.751315,
		-0.993146, -0.088494, -0.076350,
		12.015879, 20.059570, 19.582005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.508600, 19.365753, 19.775263>,  <12.711082, 20.121515, 19.635450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.508600, 19.365753, 19.775263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.221326, 19.534689, 19.554052>,  <12.048962, 19.636049, 19.421326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.221326, 19.534689, 19.554052>,  <12.508600, 19.365753, 19.775263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221326, 19.534689, 19.554052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150029, -0.682077, -0.715725,
		-0.679447, -0.597016, 0.426525,
		-0.718223, 0.422306, -0.553005,
		12.005870, 19.661390, 19.388144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.099327, 18.721775, 19.596087>,  <12.508600, 19.365753, 19.775263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.099327, 18.721775, 19.596087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.009490, 19.010088, 19.333778>,  <11.955587, 19.183075, 19.176394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.009490, 19.010088, 19.333778>,  <12.099327, 18.721775, 19.596087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.009490, 19.010088, 19.333778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147635, -0.640024, -0.754038,
		-0.963204, -0.266166, 0.037332,
		-0.224593, 0.720781, -0.655769,
		11.942112, 19.226322, 19.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.658775, 18.330708, 19.129713>,  <12.099327, 18.721775, 19.596087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.658775, 18.330708, 19.129713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.752794, 18.678024, 18.954983>,  <11.809205, 18.886415, 18.850143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.752794, 18.678024, 18.954983>,  <11.658775, 18.330708, 19.129713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.752794, 18.678024, 18.954983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167385, -0.478864, -0.861784,
		-0.957463, 0.129441, -0.257895,
		0.235047, 0.868294, -0.436827,
		11.823308, 18.938513, 18.823935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.329614, 18.408813, 18.481709>,  <11.658775, 18.330708, 19.129713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.329614, 18.408813, 18.481709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.643111, 18.654638, 18.445808>,  <11.831210, 18.802134, 18.424269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.643111, 18.654638, 18.445808>,  <11.329614, 18.408813, 18.481709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.643111, 18.654638, 18.445808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097748, -0.264757, -0.959348,
		-0.613343, 0.743111, -0.267575,
		0.783745, 0.614564, -0.089749,
		11.878235, 18.839008, 18.418884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.386311, 18.352541, 17.831778>,  <11.329614, 18.408813, 18.481709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.386311, 18.352541, 17.831778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.697456, 18.593754, 17.902525>,  <11.884144, 18.738482, 17.944973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.697456, 18.593754, 17.902525>,  <11.386311, 18.352541, 17.831778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.697456, 18.593754, 17.902525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294329, -0.100924, -0.950360,
		-0.555245, 0.791309, -0.255994,
		0.777864, 0.603030, 0.176867,
		11.930816, 18.774662, 17.955585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.379833, 18.879297, 17.360495>,  <11.386311, 18.352541, 17.831778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.379833, 18.879297, 17.360495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.754012, 18.813129, 17.485443>,  <11.978519, 18.773430, 17.560411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.754012, 18.813129, 17.485443>,  <11.379833, 18.879297, 17.360495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754012, 18.813129, 17.485443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281604, -0.185337, -0.941461,
		0.213628, 0.968652, -0.126791,
		0.935448, -0.165418, 0.312369,
		12.034646, 18.763504, 17.579153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858665, 19.297304, 16.892544>,  <11.379833, 18.879297, 17.360495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.858665, 19.297304, 16.892544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.060268, 19.000357, 17.069115>,  <12.181231, 18.822187, 17.175058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.060268, 19.000357, 17.069115>,  <11.858665, 19.297304, 16.892544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060268, 19.000357, 17.069115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279476, -0.343418, -0.896637,
		0.817231, 0.575283, 0.034389,
		0.504010, -0.742370, 0.441429,
		12.211472, 18.777645, 17.201544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.320315, 19.285437, 16.464884>,  <11.858665, 19.297304, 16.892544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.320315, 19.285437, 16.464884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.346194, 18.938097, 16.661572>,  <12.361722, 18.729694, 16.779583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.346194, 18.938097, 16.661572>,  <12.320315, 19.285437, 16.464884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346194, 18.938097, 16.661572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220516, -0.468128, -0.855704,
		0.973235, 0.163793, 0.161198,
		0.064697, -0.868348, 0.491718,
		12.365603, 18.677593, 16.809088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.012928, 19.050230, 16.338449>,  <12.320315, 19.285437, 16.464884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.012928, 19.050230, 16.338449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.776749, 18.741768, 16.433689>,  <12.635041, 18.556690, 16.490833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.776749, 18.741768, 16.433689>,  <13.012928, 19.050230, 16.338449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.776749, 18.741768, 16.433689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090795, -0.356608, -0.929831,
		0.801953, -0.527398, 0.280575,
		-0.590447, -0.771156, 0.238098,
		12.599614, 18.510422, 16.505119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.339873, 19.117025, 15.627881>,  <13.012928, 19.050230, 16.338449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.339873, 19.117025, 15.627881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.605930, 19.366755, 15.464025>,  <13.765565, 19.516592, 15.365710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.605930, 19.366755, 15.464025>,  <13.339873, 19.117025, 15.627881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.605930, 19.366755, 15.464025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013369, 0.538546, 0.842491,
		0.746597, -0.565853, 0.349862,
		0.665142, 0.624324, -0.409642,
		13.805473, 19.554052, 15.341132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842808, 19.189171, 16.094423>,  <13.339873, 19.117025, 15.627881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842808, 19.189171, 16.094423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.939351, 19.502304, 15.865018>,  <13.997277, 19.690184, 15.727374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.939351, 19.502304, 15.865018>,  <13.842808, 19.189171, 16.094423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939351, 19.502304, 15.865018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217425, 0.532340, 0.818132,
		0.945765, -0.322160, -0.041723,
		0.241359, 0.782833, -0.573514,
		14.011759, 19.737154, 15.692964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362378, 19.361420, 16.385391>,  <13.842808, 19.189171, 16.094423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362378, 19.361420, 16.385391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.251145, 19.686245, 16.180168>,  <14.184405, 19.881140, 16.057035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.251145, 19.686245, 16.180168>,  <14.362378, 19.361420, 16.385391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.251145, 19.686245, 16.180168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206230, 0.572141, 0.793803,
		0.938157, 0.114935, -0.326574,
		-0.278082, 0.812062, -0.513055,
		14.167721, 19.929863, 16.026251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918884, 19.808014, 16.536896>,  <14.362378, 19.361420, 16.385391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.918884, 19.808014, 16.536896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.638035, 20.069317, 16.423563>,  <14.469525, 20.226099, 16.355562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.638035, 20.069317, 16.423563>,  <14.918884, 19.808014, 16.536896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638035, 20.069317, 16.423563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176213, 0.544940, 0.819749,
		0.689907, 0.525638, -0.497728,
		-0.702124, 0.653257, -0.283334,
		14.427398, 20.265293, 16.338562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191888, 20.491056, 16.605221>,  <14.918884, 19.808014, 16.536896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191888, 20.491056, 16.605221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.793908, 20.518982, 16.634069>,  <14.555120, 20.535738, 16.651379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.793908, 20.518982, 16.634069>,  <15.191888, 20.491056, 16.605221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.793908, 20.518982, 16.634069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099713, 0.604869, 0.790057,
		0.011533, 0.793259, -0.608775,
		-0.994949, 0.069814, 0.072123,
		14.495423, 20.539927, 16.655706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972970, 21.184967, 16.842558>,  <15.191888, 20.491056, 16.605221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972970, 21.184967, 16.842558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.634521, 20.988567, 16.925499>,  <14.431451, 20.870728, 16.975264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.634521, 20.988567, 16.925499>,  <14.972970, 21.184967, 16.842558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634521, 20.988567, 16.925499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121206, 0.556103, 0.822228,
		-0.519023, 0.670573, -0.530044,
		-0.846123, -0.491000, 0.207352,
		14.380684, 20.841267, 16.987705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.360078, 21.678492, 17.041376>,  <14.972970, 21.184967, 16.842558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.360078, 21.678492, 17.041376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.276464, 21.318111, 17.193478>,  <14.226295, 21.101883, 17.284739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.276464, 21.318111, 17.193478>,  <14.360078, 21.678492, 17.041376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.276464, 21.318111, 17.193478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136828, 0.411967, 0.900867,
		-0.968288, 0.136283, -0.209391,
		-0.209035, -0.900949, 0.380256,
		14.213753, 21.047827, 17.307554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.908013, 21.924282, 17.545490>,  <14.360078, 21.678492, 17.041376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.908013, 21.924282, 17.545490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954247, 21.535757, 17.628622>,  <13.981986, 21.302643, 17.678501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954247, 21.535757, 17.628622>,  <13.908013, 21.924282, 17.545490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954247, 21.535757, 17.628622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222460, 0.178603, 0.958443,
		-0.968066, -0.157013, -0.195434,
		0.115583, -0.971312, 0.207829,
		13.988921, 21.244364, 17.690971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.319155, 21.706339, 17.934864>,  <13.908013, 21.924282, 17.545490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.319155, 21.706339, 17.934864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.615979, 21.457924, 18.035786>,  <13.794074, 21.308874, 18.096338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.615979, 21.457924, 18.035786>,  <13.319155, 21.706339, 17.934864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615979, 21.457924, 18.035786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118947, 0.248419, 0.961322,
		-0.659695, -0.743370, 0.110471,
		0.742061, -0.621039, 0.252302,
		13.838597, 21.271612, 18.111477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.043097, 21.351685, 18.440662>,  <13.319155, 21.706339, 17.934864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.043097, 21.351685, 18.440662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.436174, 21.286394, 18.475697>,  <13.672021, 21.247221, 18.496717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.436174, 21.286394, 18.475697>,  <13.043097, 21.351685, 18.440662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.436174, 21.286394, 18.475697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079991, 0.052554, 0.995409,
		-0.167078, -0.985188, 0.038587,
		0.982693, -0.163225, 0.087587,
		13.730983, 21.237427, 18.501972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.226398, 20.778332, 18.995985>,  <13.043097, 21.351685, 18.440662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.226398, 20.778332, 18.995985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.537812, 21.025240, 18.950623>,  <13.724661, 21.173386, 18.923405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.537812, 21.025240, 18.950623>,  <13.226398, 20.778332, 18.995985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.537812, 21.025240, 18.950623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074702, 0.088269, 0.993292,
		0.623139, -0.781784, 0.022609,
		0.778535, 0.617270, -0.113404,
		13.771373, 21.210421, 18.916601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.709687, 20.519590, 19.468016>,  <13.226398, 20.778332, 18.995985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.709687, 20.519590, 19.468016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.827987, 20.897938, 19.414549>,  <13.898967, 21.124947, 19.382469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.827987, 20.897938, 19.414549>,  <13.709687, 20.519590, 19.468016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827987, 20.897938, 19.414549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134249, 0.097383, 0.986151,
		0.945785, -0.309598, -0.098181,
		0.295749, 0.945868, -0.133666,
		13.916712, 21.181698, 19.374449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211246, 20.695765, 19.981821>,  <13.709687, 20.519590, 19.468016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211246, 20.695765, 19.981821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.107139, 21.060989, 19.856234>,  <14.044675, 21.280125, 19.780880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.107139, 21.060989, 19.856234>,  <14.211246, 20.695765, 19.981821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.107139, 21.060989, 19.856234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086831, 0.345993, 0.934210,
		0.961624, 0.215882, -0.169333,
		-0.260267, 0.913063, -0.313970,
		14.029058, 21.334908, 19.762043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737413, 21.184000, 20.260286>,  <14.211246, 20.695765, 19.981821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737413, 21.184000, 20.260286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.401917, 21.383507, 20.172890>,  <14.200618, 21.503212, 20.120451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.401917, 21.383507, 20.172890>,  <14.737413, 21.184000, 20.260286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.401917, 21.383507, 20.172890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011135, 0.416880, 0.908893,
		0.544413, 0.759895, -0.355209,
		-0.838743, 0.498769, -0.218493,
		14.150293, 21.533138, 20.107342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809375, 21.881903, 20.523117>,  <14.737413, 21.184000, 20.260286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809375, 21.881903, 20.523117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.411641, 21.850782, 20.494146>,  <14.173001, 21.832109, 20.476765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.411641, 21.850782, 20.494146>,  <14.809375, 21.881903, 20.523117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411641, 21.850782, 20.494146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096332, 0.371560, 0.923397,
		-0.044932, 0.925143, -0.376950,
		-0.994334, -0.077803, -0.072426,
		14.113340, 21.827442, 20.472418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631369, 22.484026, 20.806719>,  <14.809375, 21.881903, 20.523117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631369, 22.484026, 20.806719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.302115, 22.258640, 20.834879>,  <14.104564, 22.123409, 20.851774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.302115, 22.258640, 20.834879>,  <14.631369, 22.484026, 20.806719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.302115, 22.258640, 20.834879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260412, 0.484744, 0.834990,
		-0.504614, 0.668976, -0.545743,
		-0.823134, -0.563466, 0.070400,
		14.055175, 22.089600, 20.855999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.048563, 23.019997, 21.065956>,  <14.631369, 22.484026, 20.806719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.048563, 23.019997, 21.065956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.939053, 22.644541, 21.149866>,  <13.873346, 22.419268, 21.200212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.939053, 22.644541, 21.149866>,  <14.048563, 23.019997, 21.065956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939053, 22.644541, 21.149866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268301, 0.283984, 0.920526,
		-0.923613, 0.195735, -0.329586,
		-0.273776, -0.938638, 0.209776,
		13.856920, 22.362949, 21.212799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479483, 23.144520, 21.467148>,  <14.048563, 23.019997, 21.065956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479483, 23.144520, 21.467148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.558428, 22.759703, 21.542536>,  <13.605795, 22.528812, 21.587769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.558428, 22.759703, 21.542536>,  <13.479483, 23.144520, 21.467148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558428, 22.759703, 21.542536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202098, 0.148192, 0.968089,
		-0.959273, -0.229154, -0.165179,
		0.197363, -0.962043, 0.188469,
		13.617637, 22.471090, 21.599077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.860448, 22.704041, 22.048353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.199379, 22.492485, 22.029125>,  <13.402738, 22.365551, 22.017588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.199379, 22.492485, 22.029125>,  <12.860448, 22.704041, 22.048353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199379, 22.492485, 22.029125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001295, -0.092576, 0.995705,
		-0.531068, -0.843626, -0.079127,
		0.847328, -0.528890, -0.048072,
		13.453577, 22.333818, 22.014704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794098, 22.215345, 22.631720>,  <12.860448, 22.704041, 22.048353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794098, 22.215345, 22.631720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.183539, 22.249283, 22.546965>,  <13.417205, 22.269646, 22.496111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.183539, 22.249283, 22.546965>,  <12.794098, 22.215345, 22.631720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.183539, 22.249283, 22.546965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210498, 0.025102, 0.977272,
		0.088234, -0.996078, 0.006580,
		0.973604, 0.084844, -0.211888,
		13.475620, 22.274734, 22.483398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113658, 21.821394, 23.161474>,  <12.794098, 22.215345, 22.631720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113658, 21.821394, 23.161474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.420879, 22.037766, 23.024368>,  <13.605212, 22.167589, 22.942104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.420879, 22.037766, 23.024368>,  <13.113658, 21.821394, 23.161474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.420879, 22.037766, 23.024368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305034, 0.161600, 0.938531,
		0.563071, -0.825396, -0.040885,
		0.768052, 0.540931, -0.342767,
		13.651296, 22.200045, 22.921537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737367, 21.573809, 23.552505>,  <13.113658, 21.821394, 23.161474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737367, 21.573809, 23.552505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.836841, 21.933598, 23.408779>,  <13.896525, 22.149471, 23.322544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.836841, 21.933598, 23.408779>,  <13.737367, 21.573809, 23.552505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.836841, 21.933598, 23.408779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345068, 0.264355, 0.900580,
		0.905032, -0.347950, -0.244637,
		0.248685, 0.899471, -0.359316,
		13.911447, 22.203438, 23.300983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339143, 21.720713, 23.855232>,  <13.737367, 21.573809, 23.552505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339143, 21.720713, 23.855232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.205304, 22.079252, 23.738884>,  <14.125001, 22.294376, 23.669075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.205304, 22.079252, 23.738884>,  <14.339143, 21.720713, 23.855232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.205304, 22.079252, 23.738884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258389, 0.384097, 0.886400,
		0.906245, 0.221428, -0.360124,
		-0.334596, 0.896348, -0.290871,
		14.104925, 22.348156, 23.651623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711127, 22.164351, 24.366238>,  <14.339143, 21.720713, 23.855232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711127, 22.164351, 24.366238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.437450, 22.396023, 24.188955>,  <14.273245, 22.535027, 24.082586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.437450, 22.396023, 24.188955>,  <14.711127, 22.164351, 24.366238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437450, 22.396023, 24.188955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080956, 0.664269, 0.743097,
		0.724795, 0.472541, -0.501375,
		-0.684192, 0.579182, -0.443204,
		14.232193, 22.569778, 24.055994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079611, 22.818865, 24.260168>,  <14.711127, 22.164351, 24.366238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079611, 22.818865, 24.260168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.685186, 22.884834, 24.268984>,  <14.448532, 22.924416, 24.274273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.685186, 22.884834, 24.268984>,  <15.079611, 22.818865, 24.260168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.685186, 22.884834, 24.268984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123494, 0.636637, 0.761211,
		0.111510, 0.753322, -0.648129,
		-0.986060, 0.164923, 0.022039,
		14.389368, 22.934311, 24.275595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972687, 23.504835, 24.249825>,  <15.079611, 22.818865, 24.260168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972687, 23.504835, 24.249825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.632002, 23.369949, 24.410259>,  <14.427591, 23.289019, 24.506521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.632002, 23.369949, 24.410259>,  <14.972687, 23.504835, 24.249825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632002, 23.369949, 24.410259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261350, 0.390060, 0.882921,
		-0.454183, 0.856819, -0.244087,
		-0.851713, -0.337215, 0.401088,
		14.376488, 23.268785, 24.530586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717181, 24.083761, 24.604155>,  <14.972687, 23.504835, 24.249825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.717181, 24.083761, 24.604155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.525514, 23.778255, 24.777155>,  <14.410513, 23.594952, 24.880955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.525514, 23.778255, 24.777155>,  <14.717181, 24.083761, 24.604155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.525514, 23.778255, 24.777155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111665, 0.435706, 0.893135,
		-0.870591, 0.476258, -0.123491,
		-0.479168, -0.763766, 0.432503,
		14.381763, 23.549126, 24.906906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.235744, 24.398932, 25.101130>,  <14.717181, 24.083761, 24.604155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.235744, 24.398932, 25.101130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.271693, 24.017700, 25.216759>,  <14.293262, 23.788961, 25.286137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.271693, 24.017700, 25.216759>,  <14.235744, 24.398932, 25.101130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271693, 24.017700, 25.216759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036957, 0.286857, 0.957260,
		-0.995267, -0.096715, -0.009443,
		0.089873, -0.953079, 0.289073,
		14.298656, 23.731777, 25.303480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.749164, 24.297825, 25.680347>,  <14.235744, 24.398932, 25.101130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.749164, 24.297825, 25.680347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.019896, 24.004736, 25.708689>,  <14.182335, 23.828882, 25.725693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.019896, 24.004736, 25.708689>,  <13.749164, 24.297825, 25.680347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.019896, 24.004736, 25.708689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089220, 0.177191, 0.980124,
		-0.730713, -0.657055, 0.185301,
		0.676829, -0.732722, 0.070853,
		14.222944, 23.784920, 25.729944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558233, 23.832966, 26.314117>,  <13.749164, 24.297825, 25.680347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558233, 23.832966, 26.314117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.950070, 23.795097, 26.243200>,  <14.185173, 23.772375, 26.200649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.950070, 23.795097, 26.243200>,  <13.558233, 23.832966, 26.314117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950070, 23.795097, 26.243200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199153, 0.338311, 0.919719,
		-0.027092, -0.936260, 0.350262,
		0.979594, -0.094673, -0.177293,
		14.243949, 23.766695, 26.190012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797558, 23.416517, 26.829275>,  <13.558233, 23.832966, 26.314117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797558, 23.416517, 26.829275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.140594, 23.587374, 26.714668>,  <14.346415, 23.689888, 26.645905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.140594, 23.587374, 26.714668>,  <13.797558, 23.416517, 26.829275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140594, 23.587374, 26.714668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353711, -0.085369, 0.931451,
		0.373402, -0.900146, -0.224296,
		0.857589, 0.427141, -0.286515,
		14.397870, 23.715515, 26.628714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.382055, 23.046650, 27.038029>,  <13.797558, 23.416517, 26.829275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.382055, 23.046650, 27.038029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.521506, 23.414883, 26.967615>,  <14.605177, 23.635822, 26.925367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.521506, 23.414883, 26.967615>,  <14.382055, 23.046650, 27.038029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.521506, 23.414883, 26.967615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569220, -0.058751, 0.820083,
		0.744612, -0.386104, -0.544496,
		0.348627, 0.920583, -0.176032,
		14.626094, 23.691057, 26.914806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101118, 22.967442, 27.127670>,  <14.382055, 23.046650, 27.038029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101118, 22.967442, 27.127670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.024845, 23.358082, 27.167458>,  <14.979081, 23.592466, 27.191330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.024845, 23.358082, 27.167458>,  <15.101118, 22.967442, 27.127670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.024845, 23.358082, 27.167458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544130, 0.020814, 0.838743,
		0.817045, 0.214059, -0.535366,
		-0.190684, 0.976599, 0.099470,
		14.967640, 23.651062, 27.197298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635725, 23.271925, 27.245159>,  <15.101118, 22.967442, 27.127670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635725, 23.271925, 27.245159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.381102, 23.542326, 27.393650>,  <15.228328, 23.704567, 27.482744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.381102, 23.542326, 27.393650>,  <15.635725, 23.271925, 27.245159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381102, 23.542326, 27.393650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527730, 0.030787, 0.848854,
		0.562399, 0.736255, -0.376346,
		-0.636559, 0.676004, 0.371229,
		15.190134, 23.745127, 27.505018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134785, 23.836227, 27.481649>,  <15.635725, 23.271925, 27.245159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134785, 23.836227, 27.481649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.776053, 23.896639, 27.647970>,  <15.560815, 23.932886, 27.747763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.776053, 23.896639, 27.647970>,  <16.134785, 23.836227, 27.481649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776053, 23.896639, 27.647970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433629, 0.114069, 0.893842,
		0.087565, 0.981926, -0.167791,
		-0.896827, 0.151028, 0.415803,
		15.507006, 23.941948, 27.772711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221859, 24.411499, 27.894548>,  <16.134785, 23.836227, 27.481649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221859, 24.411499, 27.894548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.874184, 24.268974, 28.031691>,  <15.665578, 24.183460, 28.113976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.874184, 24.268974, 28.031691>,  <16.221859, 24.411499, 27.894548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874184, 24.268974, 28.031691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227292, 0.327878, 0.916970,
		-0.439142, 0.874950, -0.204002,
		-0.869191, -0.356312, 0.342854,
		15.613426, 24.162081, 28.134546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891253, 24.954128, 28.393345>,  <16.221859, 24.411499, 27.894548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891253, 24.954128, 28.393345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.733255, 24.602215, 28.499147>,  <15.638456, 24.391068, 28.562630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.733255, 24.602215, 28.499147>,  <15.891253, 24.954128, 28.393345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.733255, 24.602215, 28.499147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016505, 0.294669, 0.955457,
		-0.918535, 0.373035, -0.130914,
		-0.394995, -0.879781, 0.264507,
		15.614757, 24.338280, 28.578499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474970, 25.056482, 28.894922>,  <15.891253, 24.954128, 28.393345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474970, 25.056482, 28.894922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.481684, 24.660625, 28.951952>,  <15.485712, 24.423111, 28.986170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.481684, 24.660625, 28.951952>,  <15.474970, 25.056482, 28.894922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481684, 24.660625, 28.951952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084726, 0.143488, 0.986019,
		-0.996263, -0.004469, 0.086256,
		0.016784, -0.989642, 0.142573,
		15.486719, 24.363733, 28.994724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188746, 25.044853, 29.528662>,  <15.474970, 25.056482, 28.894922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188746, 25.044853, 29.528662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.363490, 24.685450, 29.511501>,  <15.468336, 24.469809, 29.501205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.363490, 24.685450, 29.511501>,  <15.188746, 25.044853, 29.528662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363490, 24.685450, 29.511501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049179, -0.023764, 0.998507,
		-0.898185, -0.438316, 0.033806,
		0.436858, -0.898507, -0.042900,
		15.494548, 24.415897, 29.498631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.834662, 24.532913, 29.921303>,  <15.188746, 25.044853, 29.528662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.834662, 24.532913, 29.921303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.213482, 24.405602, 29.904331>,  <15.440773, 24.329214, 29.894148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.213482, 24.405602, 29.904331>,  <14.834662, 24.532913, 29.921303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213482, 24.405602, 29.904331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091432, 0.140642, 0.985830,
		-0.307800, -0.937507, 0.162295,
		0.947048, -0.318277, -0.042429,
		15.497596, 24.310118, 29.891602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986395, 23.940678, 30.351551>,  <14.834662, 24.532913, 29.921303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.986395, 23.940678, 30.351551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.351346, 24.094652, 30.295855>,  <15.570317, 24.187037, 30.262436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.351346, 24.094652, 30.295855>,  <14.986395, 23.940678, 30.351551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.351346, 24.094652, 30.295855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107295, 0.103375, 0.988838,
		0.395035, -0.917135, 0.053016,
		0.912379, 0.384938, -0.139241,
		15.625060, 24.210133, 30.254082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869581, 23.757092, 31.016693>,  <14.986395, 23.940678, 30.351551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869581, 23.757092, 31.016693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.949014, 23.450817, 31.261412>,  <14.996674, 23.267054, 31.408243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.949014, 23.450817, 31.261412>,  <14.869581, 23.757092, 31.016693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949014, 23.450817, 31.261412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756663, -0.516518, -0.400837,
		0.622918, -0.383323, -0.681936,
		0.198582, -0.765684, 0.611795,
		15.008589, 23.221111, 31.444950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231426, 23.141371, 30.629927>,  <14.869581, 23.757092, 31.016693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231426, 23.141371, 30.629927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.995147, 23.060831, 30.942474>,  <14.853379, 23.012506, 31.130003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.995147, 23.060831, 30.942474>,  <15.231426, 23.141371, 30.629927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995147, 23.060831, 30.942474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545777, -0.613540, -0.570698,
		0.594310, -0.763562, 0.252525,
		-0.590698, -0.201349, 0.781367,
		14.817938, 23.000427, 31.176884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187621, 22.384832, 30.721703>,  <15.231426, 23.141371, 30.629927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187621, 22.384832, 30.721703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.849212, 22.522795, 30.884323>,  <14.646166, 22.605572, 30.981895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.849212, 22.522795, 30.884323>,  <15.187621, 22.384832, 30.721703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849212, 22.522795, 30.884323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532200, -0.500954, -0.682502,
		-0.031737, -0.793779, 0.607378,
		-0.846023, 0.344907, 0.406551,
		14.595405, 22.626266, 31.006289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.736562, 21.873089, 30.513727>,  <15.187621, 22.384832, 30.721703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.736562, 21.873089, 30.513727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.515640, 22.194445, 30.602745>,  <14.383087, 22.387259, 30.656157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.515640, 22.194445, 30.602745>,  <14.736562, 21.873089, 30.513727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515640, 22.194445, 30.602745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675999, -0.275390, -0.683510,
		-0.487838, -0.527945, 0.695189,
		-0.552304, 0.803389, 0.222544,
		14.349949, 22.435461, 30.669508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133517, 21.600523, 30.501480>,  <14.736562, 21.873089, 30.513727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133517, 21.600523, 30.501480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.037409, 21.988770, 30.496181>,  <13.979744, 22.221718, 30.493002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.037409, 21.988770, 30.496181>,  <14.133517, 21.600523, 30.501480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.037409, 21.988770, 30.496181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667303, -0.175068, -0.723918,
		-0.704965, -0.165098, 0.689759,
		-0.240272, 0.970615, -0.013246,
		13.965327, 22.279955, 30.492208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.381826, 21.688995, 30.559217>,  <14.133517, 21.600523, 30.501480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.381826, 21.688995, 30.559217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.511187, 22.016695, 30.369801>,  <13.588802, 22.213314, 30.256149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.511187, 22.016695, 30.369801>,  <13.381826, 21.688995, 30.559217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511187, 22.016695, 30.369801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607388, -0.204016, -0.767761,
		-0.725598, 0.535919, 0.431623,
		0.323401, 0.819248, -0.473544,
		13.608207, 22.262470, 30.227737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757352, 22.008968, 30.195917>,  <13.381826, 21.688995, 30.559217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757352, 22.008968, 30.195917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.055223, 22.193373, 30.002869>,  <13.233945, 22.304016, 29.887039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.055223, 22.193373, 30.002869>,  <12.757352, 22.008968, 30.195917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.055223, 22.193373, 30.002869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438263, -0.207607, -0.874542,
		-0.503371, 0.862767, 0.047445,
		0.744676, 0.461012, -0.482623,
		13.278625, 22.331676, 29.858082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444717, 22.500404, 29.798416>,  <12.757352, 22.008968, 30.195917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.444717, 22.500404, 29.798416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.801491, 22.440395, 29.627796>,  <13.015555, 22.404390, 29.525423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.801491, 22.440395, 29.627796>,  <12.444717, 22.500404, 29.798416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.801491, 22.440395, 29.627796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440379, -0.074247, -0.894737,
		0.102561, 0.985891, -0.132291,
		0.891935, -0.150023, -0.426551,
		13.069071, 22.395388, 29.499830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457581, 22.905630, 29.077530>,  <12.444717, 22.500404, 29.798416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.457581, 22.905630, 29.077530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.760367, 22.648146, 29.032562>,  <12.942039, 22.493656, 29.005581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.760367, 22.648146, 29.032562>,  <12.457581, 22.905630, 29.077530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760367, 22.648146, 29.032562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210676, -0.077558, -0.974474,
		0.618559, 0.761330, -0.194323,
		0.756968, -0.643709, -0.112420,
		12.987457, 22.455032, 28.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.675665, 23.034279, 28.377398>,  <12.457581, 22.905630, 29.077530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.675665, 23.034279, 28.377398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.836920, 22.679039, 28.465721>,  <12.933673, 22.465895, 28.518715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.836920, 22.679039, 28.465721>,  <12.675665, 23.034279, 28.377398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836920, 22.679039, 28.465721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167441, -0.308794, -0.936274,
		0.899692, 0.340474, -0.273191,
		0.403136, -0.888101, 0.220811,
		12.957861, 22.412609, 28.531965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.286954, 22.923523, 27.927273>,  <12.675665, 23.034279, 28.377398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.286954, 22.923523, 27.927273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.138511, 22.571499, 28.045778>,  <13.049444, 22.360285, 28.116880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.138511, 22.571499, 28.045778>,  <13.286954, 22.923523, 27.927273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.138511, 22.571499, 28.045778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187852, -0.241298, -0.952096,
		0.909390, -0.408985, -0.075773,
		-0.371109, -0.880061, 0.296263,
		13.027178, 22.307480, 28.134657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585254, 22.504631, 27.473696>,  <13.286954, 22.923523, 27.927273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585254, 22.504631, 27.473696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.284168, 22.298880, 27.638056>,  <13.103518, 22.175428, 27.736671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.284168, 22.298880, 27.638056>,  <13.585254, 22.504631, 27.473696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.284168, 22.298880, 27.638056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239672, -0.367212, -0.898729,
		0.613173, -0.774966, 0.153123,
		-0.752712, -0.514377, 0.410902,
		13.058354, 22.144567, 27.761326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682508, 21.733084, 27.385521>,  <13.585254, 22.504631, 27.473696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682508, 21.733084, 27.385521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.292233, 21.809816, 27.427906>,  <13.058066, 21.855856, 27.453337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.292233, 21.809816, 27.427906>,  <13.682508, 21.733084, 27.385521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292233, 21.809816, 27.427906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155212, -0.263525, -0.952084,
		-0.154713, -0.945387, 0.286893,
		-0.975691, 0.191829, 0.105965,
		12.999525, 21.867365, 27.459696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474179, 21.341394, 26.889578>,  <13.682508, 21.733084, 27.385521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474179, 21.341394, 26.889578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.149702, 21.544821, 27.005041>,  <12.955015, 21.666878, 27.074320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.149702, 21.544821, 27.005041>,  <13.474179, 21.341394, 26.889578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.149702, 21.544821, 27.005041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368226, -0.060759, -0.927749,
		-0.454285, -0.858875, 0.236555,
		-0.811193, 0.508568, 0.288658,
		12.906344, 21.697392, 27.091639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.929211, 20.949677, 26.714560>,  <13.474179, 21.341394, 26.889578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.929211, 20.949677, 26.714560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.805013, 21.329777, 26.704643>,  <12.730494, 21.557837, 26.698692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.805013, 21.329777, 26.704643>,  <12.929211, 20.949677, 26.714560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805013, 21.329777, 26.704643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356997, -0.140742, -0.923442,
		-0.880992, -0.277872, 0.382936,
		-0.310494, 0.950252, -0.024793,
		12.711864, 21.614853, 26.697205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.322893, 20.901684, 26.384941>,  <12.929211, 20.949677, 26.714560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.322893, 20.901684, 26.384941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.388939, 21.296173, 26.380959>,  <12.428566, 21.532867, 26.378569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.388939, 21.296173, 26.380959>,  <12.322893, 20.901684, 26.384941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.388939, 21.296173, 26.380959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453953, 0.067031, -0.888501,
		-0.875593, 0.151224, 0.458767,
		0.165114, 0.986224, -0.009957,
		12.438473, 21.592041, 26.377972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.648051, 21.302637, 26.196098>,  <12.322893, 20.901684, 26.384941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.648051, 21.302637, 26.196098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.942451, 21.548813, 26.083288>,  <12.119090, 21.696518, 26.015602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.942451, 21.548813, 26.083288>,  <11.648051, 21.302637, 26.196098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942451, 21.548813, 26.083288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426908, 0.098610, -0.898903,
		-0.525410, 0.781991, 0.335313,
		0.735999, 0.615440, -0.282028,
		12.163250, 21.733444, 25.998680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290585, 21.751514, 25.855040>,  <11.648051, 21.302637, 26.196098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290585, 21.751514, 25.855040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.669719, 21.806860, 25.740173>,  <11.897199, 21.840067, 25.671253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.669719, 21.806860, 25.740173>,  <11.290585, 21.751514, 25.855040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.669719, 21.806860, 25.740173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304862, 0.130353, -0.943434,
		-0.093103, 0.981766, 0.165735,
		0.947835, 0.138363, -0.287167,
		11.954069, 21.848370, 25.654024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.256246, 22.344154, 25.393778>,  <11.290585, 21.751514, 25.855040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.256246, 22.344154, 25.393778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.590701, 22.147709, 25.296061>,  <11.791374, 22.029842, 25.237431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.590701, 22.147709, 25.296061>,  <11.256246, 22.344154, 25.393778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.590701, 22.147709, 25.296061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219879, 0.107925, -0.969539,
		0.502519, 0.864384, -0.017746,
		0.836138, -0.491114, -0.244295,
		11.841542, 22.000374, 25.222773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.544081, 22.811104, 24.884140>,  <11.256246, 22.344154, 25.393778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.544081, 22.811104, 24.884140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.690496, 22.441929, 24.836466>,  <11.778346, 22.220425, 24.807861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.690496, 22.441929, 24.836466>,  <11.544081, 22.811104, 24.884140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.690496, 22.441929, 24.836466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211471, 0.042228, -0.976472,
		0.906254, 0.382630, -0.179717,
		0.366039, -0.922936, -0.119184,
		11.800308, 22.165049, 24.800711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.893700, 22.908318, 24.311163>,  <11.544081, 22.811104, 24.884140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.893700, 22.908318, 24.311163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.836916, 22.512800, 24.329636>,  <11.802846, 22.275490, 24.340719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.836916, 22.512800, 24.329636>,  <11.893700, 22.908318, 24.311163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.836916, 22.512800, 24.329636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272229, -0.005857, -0.962215,
		0.951703, -0.149166, -0.268347,
		-0.141958, -0.988795, 0.046181,
		11.794329, 22.216162, 24.343491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.886662, 17.649954, 9.354902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.632882, 17.714991, 9.052634>,  <15.480614, 17.754013, 8.871274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.632882, 17.714991, 9.052634>,  <15.886662, 17.649954, 9.354902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632882, 17.714991, 9.052634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764771, 0.274002, -0.583137,
		0.112242, -0.947885, -0.298187,
		-0.634451, 0.162593, -0.755669,
		15.442547, 17.763769, 8.825933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853994, 17.261452, 8.662724>,  <15.886662, 17.649954, 9.354902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853994, 17.261452, 8.662724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.738906, 17.634697, 8.576454>,  <15.669853, 17.858644, 8.524692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.738906, 17.634697, 8.576454>,  <15.853994, 17.261452, 8.662724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.738906, 17.634697, 8.576454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755046, 0.082469, -0.650465,
		-0.589171, -0.349998, -0.728271,
		-0.287721, 0.933113, -0.215676,
		15.652590, 17.914631, 8.511751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696140, 17.315802, 7.930424>,  <15.853994, 17.261452, 8.662724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696140, 17.315802, 7.930424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.836028, 17.662390, 8.072928>,  <15.919961, 17.870342, 8.158431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.836028, 17.662390, 8.072928>,  <15.696140, 17.315802, 7.930424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836028, 17.662390, 8.072928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618684, 0.071958, -0.782338,
		-0.703510, 0.494012, -0.510907,
		0.349720, 0.866472, 0.356260,
		15.940944, 17.922331, 8.179807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624599, 17.777769, 7.329084>,  <15.696140, 17.315802, 7.930424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624599, 17.777769, 7.329084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.894190, 17.875875, 7.607824>,  <16.055944, 17.934738, 7.775068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.894190, 17.875875, 7.607824>,  <15.624599, 17.777769, 7.329084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.894190, 17.875875, 7.607824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736917, -0.156749, -0.657559,
		-0.052045, 0.956700, -0.286385,
		0.673977, 0.245265, 0.696850,
		16.096382, 17.949455, 7.816879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019346, 18.377640, 7.204094>,  <15.624599, 17.777769, 7.329084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019346, 18.377640, 7.204094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.266371, 18.132456, 7.401235>,  <16.414585, 17.985346, 7.519519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.266371, 18.132456, 7.401235>,  <16.019346, 18.377640, 7.204094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266371, 18.132456, 7.401235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673884, 0.089225, -0.733429,
		0.405586, 0.785062, 0.468164,
		0.617559, -0.612957, 0.492852,
		16.451639, 17.948568, 7.549090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747345, 18.513458, 6.799798>,  <16.019346, 18.377640, 7.204094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747345, 18.513458, 6.799798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.882383, 18.644365, 7.152824>,  <16.963408, 18.722910, 7.364641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.882383, 18.644365, 7.152824>,  <16.747345, 18.513458, 6.799798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882383, 18.644365, 7.152824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193450, -0.941722, 0.275203,
		0.921198, 0.077825, -0.381232,
		0.337597, 0.327265, 0.882568,
		16.983662, 18.742544, 7.417595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972496, 17.958511, 7.163384>,  <16.747345, 18.513458, 6.799798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972496, 17.958511, 7.163384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.021267, 18.185390, 7.489187>,  <17.050529, 18.321518, 7.684669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.021267, 18.185390, 7.489187>,  <16.972496, 17.958511, 7.163384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021267, 18.185390, 7.489187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373704, -0.786475, 0.491734,
		0.919499, 0.244428, -0.307858,
		0.121929, 0.567197, 0.814506,
		17.057846, 18.355549, 7.733539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081772, 17.189625, 7.427145>,  <16.972496, 17.958511, 7.163384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081772, 17.189625, 7.427145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.433630, 17.379829, 7.422944>,  <17.644745, 17.493952, 7.420424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.433630, 17.379829, 7.422944>,  <17.081772, 17.189625, 7.427145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433630, 17.379829, 7.422944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139325, -0.236502, 0.961590,
		0.454765, -0.847322, -0.274289,
		0.879646, 0.475513, -0.010501,
		17.697523, 17.522484, 7.419794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571648, 16.688940, 7.650732>,  <17.081772, 17.189625, 7.427145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571648, 16.688940, 7.650732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.694195, 17.059483, 7.738372>,  <17.767723, 17.281807, 7.790956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.694195, 17.059483, 7.738372>,  <17.571648, 16.688940, 7.650732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694195, 17.059483, 7.738372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047268, -0.244690, 0.968449,
		0.950738, -0.286347, -0.118752,
		0.306370, 0.926354, 0.219101,
		17.786106, 17.337389, 7.804102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223131, 16.570694, 7.890020>,  <17.571648, 16.688940, 7.650732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223131, 16.570694, 7.890020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.063358, 16.903267, 8.044513>,  <17.967495, 17.102810, 8.137208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.063358, 16.903267, 8.044513>,  <18.223131, 16.570694, 7.890020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.063358, 16.903267, 8.044513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250467, -0.306300, 0.918394,
		0.881885, 0.463573, -0.085900,
		-0.399431, 0.831433, 0.386231,
		17.943529, 17.152697, 8.160382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656759, 16.732767, 8.349737>,  <18.223131, 16.570694, 7.890020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656759, 16.732767, 8.349737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.311436, 16.894140, 8.471022>,  <18.104240, 16.990965, 8.543792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.311436, 16.894140, 8.471022>,  <18.656759, 16.732767, 8.349737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311436, 16.894140, 8.471022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096082, -0.458428, 0.883523,
		0.495442, 0.791888, 0.357003,
		-0.863311, 0.403432, 0.303210,
		18.052443, 17.015169, 8.561985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825680, 16.992208, 9.010163>,  <18.656759, 16.732767, 8.349737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825680, 16.992208, 9.010163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.428305, 17.036993, 9.019476>,  <18.189878, 17.063864, 9.025064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.428305, 17.036993, 9.019476>,  <18.825680, 16.992208, 9.010163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.428305, 17.036993, 9.019476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007914, -0.135796, 0.990705,
		0.114083, 0.984390, 0.134020,
		-0.993440, 0.111962, 0.023282,
		18.130272, 17.070581, 9.026461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.559265, 17.586445, 9.436230>,  <18.825680, 16.992208, 9.010163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.559265, 17.586445, 9.436230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.284294, 17.296129, 9.446613>,  <18.119310, 17.121941, 9.452844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.284294, 17.296129, 9.446613>,  <18.559265, 17.586445, 9.436230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284294, 17.296129, 9.446613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039012, -0.001212, 0.999238,
		-0.725203, 0.687917, 0.029148,
		-0.687428, -0.725788, 0.025958,
		18.078066, 17.078392, 9.454401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076454, 17.757202, 9.947825>,  <18.559265, 17.586445, 9.436230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076454, 17.757202, 9.947825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.988794, 17.370459, 9.895435>,  <17.936199, 17.138412, 9.864001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.988794, 17.370459, 9.895435>,  <18.076454, 17.757202, 9.947825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988794, 17.370459, 9.895435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223717, -0.080867, 0.971294,
		-0.949697, 0.242160, -0.198582,
		-0.219150, -0.966860, -0.130974,
		17.923050, 17.080400, 9.856143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454443, 17.623701, 10.307574>,  <18.076454, 17.757202, 9.947825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454443, 17.623701, 10.307574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.595961, 17.253588, 10.252897>,  <17.680872, 17.031521, 10.220091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.595961, 17.253588, 10.252897>,  <17.454443, 17.623701, 10.307574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595961, 17.253588, 10.252897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076636, -0.174331, 0.981700,
		-0.932179, -0.336843, -0.132587,
		0.353793, -0.925281, -0.136693,
		17.702099, 16.976004, 10.211889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910418, 17.128824, 10.600512>,  <17.454443, 17.623701, 10.307574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910418, 17.128824, 10.600512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.266415, 16.949928, 10.564981>,  <17.480013, 16.842590, 10.543663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.266415, 16.949928, 10.564981>,  <16.910418, 17.128824, 10.600512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.266415, 16.949928, 10.564981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009701, -0.176187, 0.984309,
		-0.455873, -0.876889, -0.152466,
		0.889992, -0.447241, -0.088826,
		17.533413, 16.815756, 10.538334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878441, 16.646395, 11.052586>,  <16.910418, 17.128824, 10.600512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878441, 16.646395, 11.052586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.276525, 16.636278, 11.014826>,  <17.515377, 16.630209, 10.992169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.276525, 16.636278, 11.014826>,  <16.878441, 16.646395, 11.052586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276525, 16.636278, 11.014826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082138, -0.306956, 0.948173,
		-0.052956, -0.951388, -0.303410,
		0.995213, -0.025290, -0.094400,
		17.575089, 16.628691, 10.986506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111820, 16.024927, 11.397854>,  <16.878441, 16.646395, 11.052586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111820, 16.024927, 11.397854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.414095, 16.286690, 11.387322>,  <17.595459, 16.443747, 11.381003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.414095, 16.286690, 11.387322>,  <17.111820, 16.024927, 11.397854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414095, 16.286690, 11.387322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315600, -0.328631, 0.890167,
		0.573877, -0.680997, -0.454872,
		0.755686, 0.654405, -0.026329,
		17.640800, 16.483011, 11.379424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.770189, 15.626252, 11.644793>,  <17.111820, 16.024927, 11.397854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.770189, 15.626252, 11.644793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.824625, 16.021801, 11.668825>,  <17.857286, 16.259130, 11.683245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.824625, 16.021801, 11.668825>,  <17.770189, 15.626252, 11.644793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.824625, 16.021801, 11.668825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253024, -0.093327, 0.962948,
		0.957840, -0.115845, -0.262910,
		0.136089, 0.988873, 0.060081,
		17.865452, 16.318462, 11.686850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493624, 15.771663, 11.978449>,  <17.770189, 15.626252, 11.644793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.493624, 15.771663, 11.978449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.287039, 16.112339, 12.013973>,  <18.163088, 16.316746, 12.035288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.287039, 16.112339, 12.013973>,  <18.493624, 15.771663, 11.978449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.287039, 16.112339, 12.013973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287424, 0.074720, 0.954884,
		0.806631, 0.518689, -0.283387,
		-0.516463, 0.851692, 0.088812,
		18.132099, 16.367847, 12.040617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916632, 16.182281, 12.497969>,  <18.493624, 15.771663, 11.978449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916632, 16.182281, 12.497969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.555046, 16.353086, 12.506964>,  <18.338095, 16.455570, 12.512361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.555046, 16.353086, 12.506964>,  <18.916632, 16.182281, 12.497969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.555046, 16.353086, 12.506964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109960, 0.181313, 0.977259,
		0.413226, 0.885880, -0.210855,
		-0.903965, 0.427014, 0.022488,
		18.283857, 16.481192, 12.513710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.997755, 16.887527, 12.858664>,  <18.916632, 16.182281, 12.497969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.997755, 16.887527, 12.858664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.613426, 16.785648, 12.902395>,  <18.382830, 16.724522, 12.928634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.613426, 16.785648, 12.902395>,  <18.997755, 16.887527, 12.858664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613426, 16.785648, 12.902395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131782, -0.072780, 0.988603,
		-0.243837, 0.964278, 0.103493,
		-0.960821, -0.254696, 0.109328,
		18.325180, 16.709240, 12.935194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709753, 17.324194, 13.446554>,  <18.997755, 16.887527, 12.858664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709753, 17.324194, 13.446554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.472080, 17.005077, 13.405612>,  <18.329477, 16.813608, 13.381046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.472080, 17.005077, 13.405612>,  <18.709753, 17.324194, 13.446554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472080, 17.005077, 13.405612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056015, -0.085904, 0.994728,
		-0.802379, 0.596782, 0.006355,
		-0.594181, -0.797792, -0.102356,
		18.293825, 16.765739, 13.374906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222210, 17.392811, 14.149545>,  <18.709753, 17.324194, 13.446554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222210, 17.392811, 14.149545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161837, 17.022306, 14.011408>,  <18.125612, 16.800005, 13.928526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161837, 17.022306, 14.011408>,  <18.222210, 17.392811, 14.149545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161837, 17.022306, 14.011408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057880, -0.340465, 0.938474,
		-0.986848, 0.161636, -0.002224,
		-0.150934, -0.926260, -0.345343,
		18.116556, 16.744429, 13.907805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588932, 17.113087, 14.499316>,  <18.222210, 17.392811, 14.149545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588932, 17.113087, 14.499316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.857515, 16.842424, 14.378464>,  <18.018665, 16.680027, 14.305952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.857515, 16.842424, 14.378464>,  <17.588932, 17.113087, 14.499316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857515, 16.842424, 14.378464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242511, -0.184614, 0.952421,
		-0.700238, -0.712781, 0.040135,
		0.671458, -0.676655, -0.302131,
		18.058952, 16.639427, 14.287825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466560, 16.557858, 14.896457>,  <17.588932, 17.113087, 14.499316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466560, 16.557858, 14.896457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843262, 16.497976, 14.775996>,  <18.069283, 16.462048, 14.703720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843262, 16.497976, 14.775996>,  <17.466560, 16.557858, 14.896457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843262, 16.497976, 14.775996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263509, -0.227925, 0.937344,
		-0.208953, -0.962103, -0.175204,
		0.941755, -0.149693, -0.301149,
		18.125788, 16.453066, 14.685651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668819, 15.911392, 15.212863>,  <17.466560, 16.557858, 14.896457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668819, 15.911392, 15.212863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.017172, 16.069321, 15.095775>,  <18.226183, 16.164078, 15.025522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.017172, 16.069321, 15.095775>,  <17.668819, 15.911392, 15.212863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.017172, 16.069321, 15.095775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375170, -0.149258, 0.914860,
		0.317515, -0.906553, -0.278111,
		0.870880, 0.394821, -0.292720,
		18.278437, 16.187767, 15.007958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115417, 15.415804, 15.381062>,  <17.668819, 15.911392, 15.212863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115417, 15.415804, 15.381062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.326548, 15.751241, 15.327152>,  <18.453226, 15.952503, 15.294806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.326548, 15.751241, 15.327152>,  <18.115417, 15.415804, 15.381062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326548, 15.751241, 15.327152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475777, -0.160478, 0.864802,
		0.703589, -0.520585, -0.483687,
		0.527825, 0.838593, -0.134772,
		18.484896, 16.002819, 15.286720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745340, 15.186792, 15.401034>,  <18.115417, 15.415804, 15.381062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745340, 15.186792, 15.401034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.768694, 15.572895, 15.502914>,  <18.782707, 15.804557, 15.564042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.768694, 15.572895, 15.502914>,  <18.745340, 15.186792, 15.401034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768694, 15.572895, 15.502914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481183, -0.250752, 0.839992,
		0.874674, 0.073515, -0.479105,
		0.058385, 0.965256, 0.254700,
		18.786209, 15.862472, 15.579325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.438585, 15.291440, 15.469777>,  <18.745340, 15.186792, 15.401034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.438585, 15.291440, 15.469777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.247574, 15.576557, 15.675258>,  <19.132967, 15.747627, 15.798546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.247574, 15.576557, 15.675258>,  <19.438585, 15.291440, 15.469777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247574, 15.576557, 15.675258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504394, -0.256329, 0.824550,
		0.719410, 0.652856, -0.237124,
		-0.477531, 0.712793, 0.513702,
		19.104315, 15.790395, 15.829369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816633, 15.537880, 16.051792>,  <19.438585, 15.291440, 15.469777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816633, 15.537880, 16.051792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.460838, 15.671809, 16.176180>,  <19.247360, 15.752167, 16.250813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.460838, 15.671809, 16.176180>,  <19.816633, 15.537880, 16.051792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.460838, 15.671809, 16.176180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228054, -0.264446, 0.937048,
		0.395981, 0.904412, 0.158864,
		-0.889489, 0.334823, 0.310970,
		19.193991, 15.772256, 16.269470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996206, 16.038805, 16.583405>,  <19.816633, 15.537880, 16.051792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996206, 16.038805, 16.583405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.638708, 15.864994, 16.627953>,  <19.424210, 15.760707, 16.654682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.638708, 15.864994, 16.627953>,  <19.996206, 16.038805, 16.583405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.638708, 15.864994, 16.627953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327509, -0.462446, 0.823943,
		-0.306524, 0.772870, 0.555621,
		-0.893745, -0.434529, 0.111371,
		19.370584, 15.734635, 16.661364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.565435, 16.382236, 16.120613>,  <19.996206, 16.038805, 16.583405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.565435, 16.382236, 16.120613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.488230, 16.718462, 15.918148>,  <20.441906, 16.920197, 15.796669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.488230, 16.718462, 15.918148>,  <20.565435, 16.382236, 16.120613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488230, 16.718462, 15.918148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635935, -0.285682, -0.716919,
		-0.747217, -0.460261, -0.479403,
		-0.193013, 0.840563, -0.506162,
		20.430326, 16.970631, 15.766299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.076693, 15.866318, 16.015171>,  <20.565435, 16.382236, 16.120613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.076693, 15.866318, 16.015171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.151880, 15.643216, 16.338549>,  <21.196993, 15.509356, 16.532576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.151880, 15.643216, 16.338549>,  <21.076693, 15.866318, 16.015171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.151880, 15.643216, 16.338549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949866, -0.106153, -0.294086,
		0.249845, 0.823191, 0.509837,
		0.187968, -0.557753, 0.808443,
		21.208271, 15.475890, 16.581081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.608297, 16.166693, 16.518993>,  <21.076693, 15.866318, 16.015171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.608297, 16.166693, 16.518993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.592699, 15.768213, 16.487831>,  <21.583340, 15.529126, 16.469133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.592699, 15.768213, 16.487831>,  <21.608297, 16.166693, 16.518993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.592699, 15.768213, 16.487831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952553, -0.013508, -0.304072,
		0.301863, -0.086066, 0.949458,
		-0.038995, -0.996198, -0.077905,
		21.581001, 15.469354, 16.464460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.865065, 16.018841, 15.837817>,  <21.608297, 16.166693, 16.518993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.865065, 16.018841, 15.837817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641914, 16.100080, 15.515941>,  <21.508024, 16.148825, 15.322815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.641914, 16.100080, 15.515941>,  <21.865065, 16.018841, 15.837817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641914, 16.100080, 15.515941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491698, 0.861989, -0.123323,
		0.668588, -0.464464, -0.580744,
		-0.557874, 0.203098, -0.804691,
		21.474552, 16.161011, 15.274533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.308565, 16.130281, 15.213099>,  <21.865065, 16.018841, 15.837817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.308565, 16.130281, 15.213099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.970043, 16.337399, 15.163041>,  <21.766930, 16.461668, 15.133007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.970043, 16.337399, 15.163041>,  <22.308565, 16.130281, 15.213099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.970043, 16.337399, 15.163041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531054, 0.801626, -0.274548,
		-0.041841, -0.298809, -0.953395,
		-0.846304, 0.517792, -0.125142,
		21.716152, 16.492737, 15.125499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275034, 16.485329, 14.595471>,  <22.308565, 16.130281, 15.213099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275034, 16.485329, 14.595471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.053535, 16.724493, 14.827288>,  <21.920635, 16.867990, 14.966377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.053535, 16.724493, 14.827288>,  <22.275034, 16.485329, 14.595471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053535, 16.724493, 14.827288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532290, 0.789395, -0.305815,
		-0.640337, 0.139140, -0.755387,
		-0.553748, 0.597909, 0.579542,
		21.887411, 16.903866, 15.001150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.607244, 16.668772, 13.915219>,  <22.275034, 16.485329, 14.595471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.607244, 16.668772, 13.915219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.951321, 16.859886, 13.986544>,  <23.157766, 16.974554, 14.029339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.951321, 16.859886, 13.986544>,  <22.607244, 16.668772, 13.915219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.951321, 16.859886, 13.986544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397004, 0.846836, -0.353918,
		-0.320098, 0.233646, 0.918121,
		0.860189, 0.477786, 0.178312,
		23.209377, 17.003222, 14.040037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413349, 17.381800, 14.155188>,  <22.607244, 16.668772, 13.915219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413349, 17.381800, 14.155188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.796143, 17.418795, 14.045188>,  <23.025820, 17.440992, 13.979188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.796143, 17.418795, 14.045188>,  <22.413349, 17.381800, 14.155188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.796143, 17.418795, 14.045188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192119, 0.912262, -0.361756,
		0.217413, 0.399028, 0.890791,
		0.956986, 0.092488, -0.274998,
		23.083239, 17.446541, 13.962688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.644873, 18.021797, 14.405000>,  <22.413349, 17.381800, 14.155188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.644873, 18.021797, 14.405000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866987, 17.922428, 14.087524>,  <23.000256, 17.862806, 13.897039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866987, 17.922428, 14.087524>,  <22.644873, 18.021797, 14.405000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866987, 17.922428, 14.087524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176899, 0.897224, -0.404593,
		0.812627, 0.365068, 0.454272,
		0.555288, -0.248422, -0.793689,
		23.033573, 17.847902, 13.849418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.894527, 18.573658, 14.220063>,  <22.644873, 18.021797, 14.405000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.894527, 18.573658, 14.220063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.995039, 18.368320, 13.891835>,  <23.055346, 18.245117, 13.694899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.995039, 18.368320, 13.891835>,  <22.894527, 18.573658, 14.220063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995039, 18.368320, 13.891835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067924, 0.836329, -0.544004,
		0.965529, 0.192433, 0.175283,
		0.251279, -0.513346, -0.820570,
		23.070423, 18.214317, 13.645664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.090565, 19.180588, 13.849126>,  <22.894527, 18.573658, 14.220063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.090565, 19.180588, 13.849126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.067074, 18.903788, 13.561325>,  <23.052980, 18.737707, 13.388644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.067074, 18.903788, 13.561325>,  <23.090565, 19.180588, 13.849126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.067074, 18.903788, 13.561325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255216, 0.707201, -0.659341,
		0.965099, 0.144909, -0.218141,
		-0.058725, -0.692002, -0.719503,
		23.049456, 18.696186, 13.345474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445917, 19.439495, 13.327989>,  <23.090565, 19.180588, 13.849126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445917, 19.439495, 13.327989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.196966, 19.167875, 13.172276>,  <23.047596, 19.004904, 13.078850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.196966, 19.167875, 13.172276>,  <23.445917, 19.439495, 13.327989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.196966, 19.167875, 13.172276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374001, 0.694894, -0.614204,
		0.687576, -0.236682, -0.686455,
		-0.622384, -0.679047, -0.389273,
		23.010254, 18.964161, 13.055492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.447517, 19.463465, 12.498176>,  <23.445917, 19.439495, 13.327989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.447517, 19.463465, 12.498176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.105850, 19.274212, 12.584471>,  <22.900850, 19.160660, 12.636248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.105850, 19.274212, 12.584471>,  <23.447517, 19.463465, 12.498176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.105850, 19.274212, 12.584471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449408, 0.462976, -0.763993,
		0.261587, -0.749534, -0.608089,
		-0.854169, -0.473131, 0.215738,
		22.849600, 19.132273, 12.649192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163237, 19.277582, 11.910583>,  <23.447517, 19.463465, 12.498176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163237, 19.277582, 11.910583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.837046, 19.228117, 12.136753>,  <22.641331, 19.198437, 12.272455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.837046, 19.228117, 12.136753>,  <23.163237, 19.277582, 11.910583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.837046, 19.228117, 12.136753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561393, 0.406712, -0.720711,
		-0.140838, -0.905148, -0.401088,
		-0.815477, -0.123664, 0.565424,
		22.592403, 19.191017, 12.306380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647701, 19.244743, 11.434840>,  <23.163237, 19.277582, 11.910583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647701, 19.244743, 11.434840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.448996, 19.296532, 11.778111>,  <22.329773, 19.327604, 11.984073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.448996, 19.296532, 11.778111>,  <22.647701, 19.244743, 11.434840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.448996, 19.296532, 11.778111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848000, 0.138055, -0.511700,
		-0.184725, -0.981926, 0.041210,
		-0.496762, 0.129470, 0.858175,
		22.299967, 19.335373, 12.035563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156170, 18.624510, 11.561872>,  <22.647701, 19.244743, 11.434840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156170, 18.624510, 11.561872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059700, 18.976341, 11.725908>,  <22.001818, 19.187441, 11.824330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059700, 18.976341, 11.725908>,  <22.156170, 18.624510, 11.561872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059700, 18.976341, 11.725908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821114, 0.040302, -0.569339,
		-0.517307, -0.474041, 0.712516,
		-0.241174, 0.879580, 0.410090,
		21.987349, 19.240215, 11.848935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.493446, 18.518084, 11.500260>,  <22.156170, 18.624510, 11.561872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.493446, 18.518084, 11.500260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.516108, 18.896666, 11.627391>,  <21.529705, 19.123816, 11.703670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.516108, 18.896666, 11.627391>,  <21.493446, 18.518084, 11.500260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516108, 18.896666, 11.627391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855607, 0.210079, -0.473079,
		-0.514516, -0.245134, 0.821695,
		0.056653, 0.946454, 0.317827,
		21.533104, 19.180601, 11.722739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.892374, 18.675360, 11.867503>,  <21.493446, 18.518084, 11.500260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.892374, 18.675360, 11.867503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.057451, 18.996078, 11.694617>,  <21.156498, 19.188509, 11.590886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.057451, 18.996078, 11.694617>,  <20.892374, 18.675360, 11.867503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.057451, 18.996078, 11.694617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822436, 0.124049, -0.555168,
		-0.391515, 0.584582, 0.710619,
		0.412693, 0.801795, -0.432214,
		21.181259, 19.236616, 11.564953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414417, 19.081833, 11.611108>,  <20.892374, 18.675360, 11.867503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414417, 19.081833, 11.611108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.689384, 19.288561, 11.407008>,  <20.854364, 19.412598, 11.284548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.689384, 19.288561, 11.407008>,  <20.414417, 19.081833, 11.611108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.689384, 19.288561, 11.407008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708324, 0.321904, -0.628215,
		-0.160423, 0.793268, 0.587358,
		0.687416, 0.516820, -0.510250,
		20.895609, 19.443607, 11.253933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.189299, 19.836081, 11.492847>,  <20.414417, 19.081833, 11.611108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.189299, 19.836081, 11.492847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.463432, 19.745443, 11.216016>,  <20.627913, 19.691061, 11.049917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.463432, 19.745443, 11.216016>,  <20.189299, 19.836081, 11.492847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463432, 19.745443, 11.216016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574652, 0.415486, -0.705086,
		0.447317, 0.880924, 0.154535,
		0.685335, -0.226593, -0.692078,
		20.669033, 19.677465, 11.008392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.383285, 22.352755, 19.142260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233913, 21.989765, 19.219246>,  <14.144291, 21.771971, 19.265438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233913, 21.989765, 19.219246>,  <14.383285, 22.352755, 19.142260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233913, 21.989765, 19.219246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251166, -0.298630, -0.920726,
		0.893010, -0.295485, 0.339443,
		-0.373428, -0.907474, 0.192464,
		14.121885, 21.717524, 19.276985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794694, 21.968134, 18.754190>,  <14.383285, 22.352755, 19.142260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794694, 21.968134, 18.754190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477473, 21.731220, 18.811134>,  <14.287141, 21.589071, 18.845301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477473, 21.731220, 18.811134>,  <14.794694, 21.968134, 18.754190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477473, 21.731220, 18.811134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114653, -0.374655, -0.920048,
		0.598267, -0.713324, 0.365028,
		-0.793052, -0.592286, 0.142359,
		14.239557, 21.553534, 18.853842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004969, 21.264559, 18.535774>,  <14.794694, 21.968134, 18.754190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004969, 21.264559, 18.535774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.608158, 21.220306, 18.559923>,  <14.370071, 21.193756, 18.574413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.608158, 21.220306, 18.559923>,  <15.004969, 21.264559, 18.535774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608158, 21.220306, 18.559923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019288, -0.606662, -0.794726,
		0.124546, -0.787224, 0.603958,
		-0.992026, -0.110629, 0.060373,
		14.310550, 21.187119, 18.578035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867191, 20.480324, 18.432085>,  <15.004969, 21.264559, 18.535774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.867191, 20.480324, 18.432085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554097, 20.710711, 18.337776>,  <14.366241, 20.848942, 18.281191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554097, 20.710711, 18.337776>,  <14.867191, 20.480324, 18.432085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.554097, 20.710711, 18.337776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088411, -0.477905, -0.873951,
		-0.616045, -0.663225, 0.424995,
		-0.782733, 0.575967, -0.235775,
		14.319277, 20.883501, 18.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.312971, 20.039326, 18.095922>,  <14.867191, 20.480324, 18.432085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.312971, 20.039326, 18.095922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198007, 20.402763, 17.974691>,  <14.129028, 20.620825, 17.901953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198007, 20.402763, 17.974691>,  <14.312971, 20.039326, 18.095922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198007, 20.402763, 17.974691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128347, -0.350107, -0.927875,
		-0.949169, -0.227782, 0.217240,
		-0.287411, 0.908592, -0.303076,
		14.111783, 20.675341, 17.883768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690601, 19.943718, 17.751740>,  <14.312971, 20.039326, 18.095922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690601, 19.943718, 17.751740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883748, 20.273672, 17.634159>,  <13.999636, 20.471643, 17.563610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883748, 20.273672, 17.634159>,  <13.690601, 19.943718, 17.751740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883748, 20.273672, 17.634159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074879, -0.295555, -0.952386,
		-0.872487, 0.481886, -0.080947,
		0.482866, 0.824884, -0.293951,
		14.028608, 20.521137, 17.545973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.327582, 20.159298, 17.248743>,  <13.690601, 19.943718, 17.751740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.327582, 20.159298, 17.248743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.654997, 20.370792, 17.158911>,  <13.851445, 20.497688, 17.105011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.654997, 20.370792, 17.158911>,  <13.327582, 20.159298, 17.248743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654997, 20.370792, 17.158911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124123, -0.218925, -0.967815,
		-0.560884, 0.820067, -0.113570,
		0.818537, 0.528736, -0.224581,
		13.900558, 20.529413, 17.091537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201732, 20.556465, 16.694643>,  <13.327582, 20.159298, 17.248743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201732, 20.556465, 16.694643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599923, 20.572847, 16.660366>,  <13.838839, 20.582678, 16.639799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599923, 20.572847, 16.660366>,  <13.201732, 20.556465, 16.694643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.599923, 20.572847, 16.660366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075596, -0.204528, -0.975937,
		-0.057499, 0.978004, -0.200507,
		0.995479, 0.040958, -0.085693,
		13.898567, 20.585135, 16.634659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.318069, 20.805912, 16.084555>,  <13.201732, 20.556465, 16.694643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.318069, 20.805912, 16.084555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692087, 20.670401, 16.126347>,  <13.916498, 20.589094, 16.151423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692087, 20.670401, 16.126347>,  <13.318069, 20.805912, 16.084555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.692087, 20.670401, 16.126347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004738, -0.282740, -0.959185,
		0.354494, 0.897377, -0.262770,
		0.935046, -0.338780, 0.104481,
		13.972601, 20.568766, 16.157690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.780130, 21.064529, 15.470255>,  <13.318069, 20.805912, 16.084555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.780130, 21.064529, 15.470255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.924371, 20.731234, 15.637911>,  <14.010915, 20.531256, 15.738504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.924371, 20.731234, 15.637911>,  <13.780130, 21.064529, 15.470255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924371, 20.731234, 15.637911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045891, -0.432979, -0.900235,
		0.931591, 0.343860, -0.117894,
		0.360600, -0.833240, 0.419140,
		14.032551, 20.481262, 15.763653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.274882, 20.841318, 15.055071>,  <13.780130, 21.064529, 15.470255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.274882, 20.841318, 15.055071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182449, 20.498924, 15.240066>,  <14.126989, 20.293488, 15.351063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182449, 20.498924, 15.240066>,  <14.274882, 20.841318, 15.055071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182449, 20.498924, 15.240066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103781, -0.494328, -0.863058,
		0.967383, -0.151439, 0.203065,
		-0.231081, -0.855982, 0.462488,
		14.113125, 20.242130, 15.378812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.754604, 20.353561, 14.809186>,  <14.274882, 20.841318, 15.055071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.754604, 20.353561, 14.809186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471409, 20.118042, 14.965171>,  <14.301492, 19.976730, 15.058762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471409, 20.118042, 14.965171>,  <14.754604, 20.353561, 14.809186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471409, 20.118042, 14.965171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143928, -0.660887, -0.736554,
		0.691402, -0.465345, 0.552645,
		-0.707988, -0.588796, 0.389962,
		14.259012, 19.941402, 15.082160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070501, 19.721592, 15.165135>,  <14.754604, 20.353561, 14.809186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070501, 19.721592, 15.165135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714124, 19.675726, 14.989377>,  <14.500297, 19.648207, 14.883922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714124, 19.675726, 14.989377>,  <15.070501, 19.721592, 15.165135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.714124, 19.675726, 14.989377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339479, -0.810841, -0.476751,
		-0.301614, -0.573924, 0.761341,
		-0.890945, -0.114664, -0.439396,
		14.446840, 19.641327, 14.857558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631559, 19.063766, 15.064625>,  <15.070501, 19.721592, 15.165135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631559, 19.063766, 15.064625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695818, 19.363480, 14.807636>,  <14.734373, 19.543306, 14.653443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695818, 19.363480, 14.807636>,  <14.631559, 19.063766, 15.064625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.695818, 19.363480, 14.807636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958631, 0.273419, 0.079174,
		0.234988, 0.603174, 0.762208,
		0.160647, 0.749281, -0.642472,
		14.744012, 19.588264, 14.614895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190806, 18.497131, 14.826317>,  <14.631559, 19.063766, 15.064625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190806, 18.497131, 14.826317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506109, 18.253706, 14.789865>,  <15.695291, 18.107651, 14.767995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506109, 18.253706, 14.789865>,  <15.190806, 18.497131, 14.826317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.506109, 18.253706, 14.789865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185981, 0.094448, 0.978003,
		-0.586569, -0.787865, 0.187630,
		0.788256, -0.608562, -0.091128,
		15.742586, 18.071136, 14.762527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.944297, 17.811867, 15.197824>,  <15.190806, 18.497131, 14.826317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.944297, 17.811867, 15.197824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343806, 17.831518, 15.195429>,  <15.583512, 17.843309, 15.193992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343806, 17.831518, 15.195429>,  <14.944297, 17.811867, 15.197824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.343806, 17.831518, 15.195429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008278, -0.046501, 0.998884,
		0.048799, -0.997709, -0.046851,
		0.998775, 0.049132, -0.005990,
		15.643438, 17.846258, 15.193632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263202, 17.308435, 15.671021>,  <14.944297, 17.811867, 15.197824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.263202, 17.308435, 15.671021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569371, 17.562107, 15.627308>,  <15.753073, 17.714310, 15.601080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569371, 17.562107, 15.627308>,  <15.263202, 17.308435, 15.671021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569371, 17.562107, 15.627308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111754, 0.036245, 0.993075,
		0.633748, -0.772337, -0.043129,
		0.765425, 0.634179, -0.109282,
		15.798999, 17.752361, 15.594523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741575, 17.110254, 16.111908>,  <15.263202, 17.308435, 15.671021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741575, 17.110254, 16.111908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867283, 17.484241, 16.046099>,  <15.942707, 17.708633, 16.006613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867283, 17.484241, 16.046099>,  <15.741575, 17.110254, 16.111908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867283, 17.484241, 16.046099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131189, 0.128871, 0.982946,
		0.940226, -0.330493, -0.082157,
		0.314269, 0.934969, -0.164525,
		15.961563, 17.764732, 15.996741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252422, 17.132277, 16.533110>,  <15.741575, 17.110254, 16.111908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.252422, 17.132277, 16.533110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175665, 17.516083, 16.450642>,  <16.129610, 17.746367, 16.401161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175665, 17.516083, 16.450642>,  <16.252422, 17.132277, 16.533110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175665, 17.516083, 16.450642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130498, 0.233156, 0.963643,
		0.972701, 0.158010, -0.169956,
		-0.191892, 0.959516, -0.206171,
		16.118097, 17.803938, 16.388790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785702, 17.493511, 16.790213>,  <16.252422, 17.132277, 16.533110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785702, 17.493511, 16.790213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472605, 17.741951, 16.774456>,  <16.284746, 17.891014, 16.765003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472605, 17.741951, 16.774456>,  <16.785702, 17.493511, 16.790213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.472605, 17.741951, 16.774456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242320, 0.362459, 0.899947,
		0.573234, 0.694881, -0.434216,
		-0.782741, 0.621099, -0.039391,
		16.237782, 17.928280, 16.762638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986526, 18.105057, 17.195885>,  <16.785702, 17.493511, 16.790213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986526, 18.105057, 17.195885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587416, 18.122534, 17.175774>,  <16.347948, 18.133020, 17.163708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587416, 18.122534, 17.175774>,  <16.986526, 18.105057, 17.195885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.587416, 18.122534, 17.175774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032782, 0.334979, 0.941655,
		0.057984, 0.941212, -0.332803,
		-0.997779, 0.043691, -0.050278,
		16.288082, 18.135641, 17.160690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858782, 18.581322, 17.731438>,  <16.986526, 18.105057, 17.195885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858782, 18.581322, 17.731438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501228, 18.420389, 17.652340>,  <16.286695, 18.323830, 17.604881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501228, 18.420389, 17.652340>,  <16.858782, 18.581322, 17.731438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501228, 18.420389, 17.652340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274968, 0.143668, 0.950659,
		-0.354068, 0.904152, -0.239050,
		-0.893884, -0.402330, -0.197745,
		16.233063, 18.299690, 17.593016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422771, 19.144634, 17.901253>,  <16.858782, 18.581322, 17.731438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422771, 19.144634, 17.901253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215157, 18.803143, 17.917988>,  <16.090588, 18.598248, 17.928028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215157, 18.803143, 17.917988>,  <16.422771, 19.144634, 17.901253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215157, 18.803143, 17.917988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626491, 0.413269, 0.660846,
		-0.581473, 0.316793, -0.749354,
		-0.519036, -0.853728, 0.041836,
		16.059446, 18.547024, 17.930538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684538, 19.261057, 17.906706>,  <16.422771, 19.144634, 17.901253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684538, 19.261057, 17.906706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718119, 18.892868, 18.059380>,  <15.738267, 18.671955, 18.150984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718119, 18.892868, 18.059380>,  <15.684538, 19.261057, 17.906706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718119, 18.892868, 18.059380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386103, 0.323068, 0.864032,
		-0.918627, -0.219908, -0.328274,
		0.083953, -0.920471, 0.381687,
		15.743304, 18.616726, 18.173885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980937, 19.071409, 18.012440>,  <15.684538, 19.261057, 17.906706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980937, 19.071409, 18.012440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222021, 18.869049, 18.259277>,  <15.366672, 18.747633, 18.407381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222021, 18.869049, 18.259277>,  <14.980937, 19.071409, 18.012440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.222021, 18.869049, 18.259277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490347, 0.375294, 0.786584,
		-0.629524, -0.776673, -0.021872,
		0.602710, -0.505898, 0.617096,
		15.402834, 18.717279, 18.444407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.571996, 18.712429, 18.582325>,  <14.980937, 19.071409, 18.012440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.571996, 18.712429, 18.582325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942719, 18.691067, 18.731010>,  <15.165154, 18.678249, 18.820223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942719, 18.691067, 18.731010>,  <14.571996, 18.712429, 18.582325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.942719, 18.691067, 18.731010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359595, 0.159083, 0.919448,
		-0.108238, -0.985820, 0.128236,
		0.926810, -0.053406, 0.371714,
		15.220762, 18.675045, 18.842525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514333, 18.245306, 19.073849>,  <14.571996, 18.712429, 18.582325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514333, 18.245306, 19.073849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832312, 18.477329, 19.144947>,  <15.023099, 18.616543, 19.187607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832312, 18.477329, 19.144947>,  <14.514333, 18.245306, 19.073849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.832312, 18.477329, 19.144947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368485, 0.228896, 0.901013,
		0.481953, -0.781755, 0.395703,
		0.794947, 0.580056, 0.177748,
		15.070796, 18.651346, 19.198271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710348, 18.104568, 19.657175>,  <14.514333, 18.245306, 19.073849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710348, 18.104568, 19.657175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897656, 18.457079, 19.631641>,  <15.010041, 18.668585, 19.616322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897656, 18.457079, 19.631641>,  <14.710348, 18.104568, 19.657175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.897656, 18.457079, 19.631641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365392, 0.258919, 0.894119,
		0.804494, -0.395366, 0.443256,
		0.468272, 0.881275, -0.063835,
		15.038138, 18.721462, 19.612492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009234, 17.495531, 19.807943>,  <14.710348, 18.104568, 19.657175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009234, 17.495531, 19.807943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919242, 17.118635, 19.907192>,  <14.865247, 16.892498, 19.966742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919242, 17.118635, 19.907192>,  <15.009234, 17.495531, 19.807943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919242, 17.118635, 19.907192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152507, -0.217458, -0.964082,
		0.962354, -0.254740, -0.094774,
		-0.224980, -0.942242, 0.248121,
		14.851748, 16.835962, 19.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335289, 17.122503, 19.333982>,  <15.009234, 17.495531, 19.807943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335289, 17.122503, 19.333982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038342, 16.893864, 19.473793>,  <14.860175, 16.756680, 19.557680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038342, 16.893864, 19.473793>,  <15.335289, 17.122503, 19.333982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.038342, 16.893864, 19.473793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138052, -0.379994, -0.914629,
		0.655619, -0.727242, 0.203184,
		-0.742365, -0.571598, 0.349529,
		14.815633, 16.722385, 19.578651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435500, 16.563873, 19.034729>,  <15.335289, 17.122503, 19.333982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435500, 16.563873, 19.034729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048770, 16.573750, 19.136425>,  <14.816731, 16.579676, 19.197443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048770, 16.573750, 19.136425>,  <15.435500, 16.563873, 19.034729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048770, 16.573750, 19.136425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252418, -0.244847, -0.936128,
		0.039138, -0.969248, 0.242956,
		-0.966826, 0.024688, 0.254238,
		14.758722, 16.581156, 19.212696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.216352, 16.017851, 18.754541>,  <15.435500, 16.563873, 19.034729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.216352, 16.017851, 18.754541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879604, 16.223993, 18.818626>,  <14.677556, 16.347679, 18.857077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879604, 16.223993, 18.818626>,  <15.216352, 16.017851, 18.754541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.879604, 16.223993, 18.818626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357516, -0.310175, -0.880894,
		-0.404279, -0.798875, 0.445374,
		-0.841868, 0.515355, 0.160214,
		14.627045, 16.378601, 18.866690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.642027, 15.519696, 18.622744>,  <15.216352, 16.017851, 18.754541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.642027, 15.519696, 18.622744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433509, 15.858289, 18.579439>,  <14.308398, 16.061445, 18.553457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433509, 15.858289, 18.579439>,  <14.642027, 15.519696, 18.622744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.433509, 15.858289, 18.579439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334258, -0.319260, -0.886761,
		-0.785189, -0.426078, 0.449372,
		-0.521296, 0.846481, -0.108259,
		14.277121, 16.112232, 18.546961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.930400, 15.372886, 18.529375>,  <14.642027, 15.519696, 18.622744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.930400, 15.372886, 18.529375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001938, 15.728800, 18.361425>,  <14.044861, 15.942348, 18.260656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001938, 15.728800, 18.361425>,  <13.930400, 15.372886, 18.529375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001938, 15.728800, 18.361425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426596, -0.314425, -0.848029,
		-0.886584, 0.330783, 0.323345,
		0.178845, 0.889786, -0.419875,
		14.055592, 15.995736, 18.235462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.428854, 15.311386, 18.075769>,  <13.930400, 15.372886, 18.529375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.428854, 15.311386, 18.075769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.627215, 15.637583, 17.956402>,  <13.746232, 15.833301, 17.884781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.627215, 15.637583, 17.956402>,  <13.428854, 15.311386, 18.075769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627215, 15.637583, 17.956402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295811, -0.164455, -0.940984,
		-0.816440, 0.554913, 0.159677,
		0.495904, 0.815491, -0.298417,
		13.775987, 15.882230, 17.866877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004281, 15.715802, 17.747622>,  <13.428854, 15.311386, 18.075769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.004281, 15.715802, 17.747622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.360265, 15.834597, 17.609188>,  <13.573855, 15.905873, 17.526129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.360265, 15.834597, 17.609188>,  <13.004281, 15.715802, 17.747622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.360265, 15.834597, 17.609188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366183, 0.013052, -0.930451,
		-0.271813, 0.954793, 0.120367,
		0.889959, 0.296985, -0.346081,
		13.627253, 15.923693, 17.505363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824402, 16.274384, 17.293407>,  <13.004281, 15.715802, 17.747622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.824402, 16.274384, 17.293407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.193590, 16.173111, 17.177460>,  <13.415103, 16.112347, 17.107891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.193590, 16.173111, 17.177460>,  <12.824402, 16.274384, 17.293407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.193590, 16.173111, 17.177460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302589, -0.011942, -0.953046,
		0.237834, 0.967345, -0.087632,
		0.922971, -0.253183, -0.289867,
		13.470482, 16.097157, 17.090500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.085723, 16.687401, 16.746330>,  <12.824402, 16.274384, 17.293407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.085723, 16.687401, 16.746330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283420, 16.341852, 16.707447>,  <13.402038, 16.134523, 16.684116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283420, 16.341852, 16.707447>,  <13.085723, 16.687401, 16.746330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.283420, 16.341852, 16.707447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455307, -0.161979, -0.875476,
		0.740554, 0.476957, -0.473384,
		0.494243, -0.863872, -0.097208,
		13.431692, 16.082691, 16.678286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.384830, 16.726404, 16.076576>,  <13.085723, 16.687401, 16.746330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.384830, 16.726404, 16.076576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315742, 16.345779, 16.178322>,  <13.274289, 16.117405, 16.239368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315742, 16.345779, 16.178322>,  <13.384830, 16.726404, 16.076576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.315742, 16.345779, 16.178322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412869, -0.164519, -0.895808,
		0.894263, -0.259741, -0.364455,
		-0.172719, -0.951561, 0.254362,
		13.263926, 16.060310, 16.254631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579386, 16.311731, 15.535892>,  <13.384830, 16.726404, 16.076576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579386, 16.311731, 15.535892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.330705, 16.068544, 15.733421>,  <13.181496, 15.922632, 15.851938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.330705, 16.068544, 15.733421>,  <13.579386, 16.311731, 15.535892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.330705, 16.068544, 15.733421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434514, -0.256855, -0.863263,
		0.651677, -0.751266, -0.104483,
		-0.621703, -0.607968, 0.493822,
		13.144194, 15.886154, 15.881568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.914371, 17.357557, 25.366129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.268388, 17.542025, 25.340759>,  <14.480798, 17.652704, 25.325537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.268388, 17.542025, 25.340759>,  <13.914371, 17.357557, 25.366129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268388, 17.542025, 25.340759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160050, -0.429397, -0.888821,
		-0.437131, 0.776493, -0.453845,
		0.885043, 0.461169, -0.063425,
		14.533900, 17.680376, 25.321732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913057, 17.746485, 24.651062>,  <13.914371, 17.357557, 25.366129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913057, 17.746485, 24.651062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.290145, 17.689116, 24.771536>,  <14.516397, 17.654694, 24.843821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.290145, 17.689116, 24.771536>,  <13.913057, 17.746485, 24.651062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.290145, 17.689116, 24.771536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259996, -0.249778, -0.932745,
		0.209005, 0.957623, -0.198181,
		0.942719, -0.143422, 0.301183,
		14.572961, 17.646090, 24.861891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.312691, 18.098959, 24.214415>,  <13.913057, 17.746485, 24.651062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.312691, 18.098959, 24.214415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575057, 17.853157, 24.389757>,  <14.732477, 17.705675, 24.494963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575057, 17.853157, 24.389757>,  <14.312691, 18.098959, 24.214415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575057, 17.853157, 24.389757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524798, -0.046163, -0.849974,
		0.542549, 0.787561, 0.292212,
		0.655917, -0.614505, 0.438356,
		14.771832, 17.668806, 24.521263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.996170, 18.240810, 23.894772>,  <14.312691, 18.098959, 24.214415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.996170, 18.240810, 23.894772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.059016, 17.887861, 24.072191>,  <15.096724, 17.676092, 24.178642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.059016, 17.887861, 24.072191>,  <14.996170, 18.240810, 23.894772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059016, 17.887861, 24.072191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581126, -0.280535, -0.763932,
		0.798503, 0.377783, 0.468693,
		0.157116, -0.882372, 0.443548,
		15.106151, 17.623150, 24.205256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656966, 18.119276, 23.809879>,  <14.996170, 18.240810, 23.894772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656966, 18.119276, 23.809879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.454345, 17.775934, 23.842463>,  <15.332772, 17.569929, 23.862013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.454345, 17.775934, 23.842463>,  <15.656966, 18.119276, 23.809879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.454345, 17.775934, 23.842463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319984, -0.274882, -0.906670,
		0.800634, -0.433210, 0.413901,
		-0.506552, -0.858352, 0.081460,
		15.302379, 17.518429, 23.866899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121593, 17.562950, 23.490461>,  <15.656966, 18.119276, 23.809879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121593, 17.562950, 23.490461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.746037, 17.426100, 23.505634>,  <15.520704, 17.343990, 23.514738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.746037, 17.426100, 23.505634>,  <16.121593, 17.562950, 23.490461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.746037, 17.426100, 23.505634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118053, -0.423548, -0.898148,
		0.323345, -0.838783, 0.438054,
		-0.938888, -0.342125, 0.037931,
		15.464371, 17.323462, 23.517014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221380, 16.826677, 23.389565>,  <16.121593, 17.562950, 23.490461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221380, 16.826677, 23.389565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.841022, 16.932695, 23.325638>,  <15.612806, 16.996307, 23.287281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.841022, 16.932695, 23.325638>,  <16.221380, 16.826677, 23.389565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.841022, 16.932695, 23.325638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024310, -0.450814, -0.892287,
		-0.308545, -0.852360, 0.422235,
		-0.950899, 0.265046, -0.159818,
		15.555752, 17.012209, 23.277693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800235, 16.245300, 23.092896>,  <16.221380, 16.826677, 23.389565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800235, 16.245300, 23.092896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.550558, 16.539911, 22.988655>,  <15.400752, 16.716677, 22.926111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.550558, 16.539911, 22.988655>,  <15.800235, 16.245300, 23.092896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.550558, 16.539911, 22.988655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182076, -0.461515, -0.868247,
		-0.759759, -0.494502, 0.422177,
		-0.624191, 0.736527, -0.260603,
		15.363300, 16.760870, 22.910475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.244385, 15.885625, 22.766832>,  <15.800235, 16.245300, 23.092896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.244385, 15.885625, 22.766832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.223342, 16.269978, 22.658064>,  <15.210716, 16.500589, 22.592804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.223342, 16.269978, 22.658064>,  <15.244385, 15.885625, 22.766832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223342, 16.269978, 22.658064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170555, -0.276941, -0.945629,
		-0.983943, -0.003369, 0.178452,
		-0.052607, 0.960881, -0.271920,
		15.207560, 16.558243, 22.576488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670700, 15.960200, 22.282318>,  <15.244385, 15.885625, 22.766832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.670700, 15.960200, 22.282318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.884209, 16.280693, 22.174156>,  <15.012314, 16.472988, 22.109259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.884209, 16.280693, 22.174156>,  <14.670700, 15.960200, 22.282318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.884209, 16.280693, 22.174156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398728, -0.043520, -0.916036,
		-0.745724, 0.596771, 0.296244,
		0.533771, 0.801231, -0.270403,
		15.044340, 16.521063, 22.093035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201027, 16.325754, 21.716873>,  <14.670700, 15.960200, 22.282318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201027, 16.325754, 21.716873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.565702, 16.489265, 21.700262>,  <14.784508, 16.587372, 21.690296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.565702, 16.489265, 21.700262>,  <14.201027, 16.325754, 21.716873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565702, 16.489265, 21.700262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085986, 0.090987, -0.992133,
		-0.401784, 0.908087, 0.118101,
		0.911688, 0.408779, -0.041526,
		14.839209, 16.611898, 21.687805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.122404, 16.982496, 21.400045>,  <14.201027, 16.325754, 21.716873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.122404, 16.982496, 21.400045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.486386, 16.837030, 21.320318>,  <14.704776, 16.749750, 21.272482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.486386, 16.837030, 21.320318>,  <14.122404, 16.982496, 21.400045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486386, 16.837030, 21.320318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148423, 0.163203, -0.975364,
		0.387235, 0.917122, 0.094532,
		0.909956, -0.363664, -0.199320,
		14.759373, 16.727932, 21.260523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.351055, 17.431437, 21.026566>,  <14.122404, 16.982496, 21.400045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.351055, 17.431437, 21.026566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.581182, 17.111706, 20.957180>,  <14.719257, 16.919868, 20.915548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.581182, 17.111706, 20.957180>,  <14.351055, 17.431437, 21.026566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.581182, 17.111706, 20.957180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166775, 0.092983, -0.981601,
		0.800748, 0.593660, -0.079813,
		0.575316, -0.799326, -0.173464,
		14.753777, 16.871908, 20.905140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727041, 17.584309, 20.480833>,  <14.351055, 17.431437, 21.026566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727041, 17.584309, 20.480833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.791546, 17.189558, 20.484163>,  <14.830249, 16.952707, 20.486160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.791546, 17.189558, 20.484163>,  <14.727041, 17.584309, 20.480833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791546, 17.189558, 20.484163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082613, -0.021903, -0.996341,
		0.983448, 0.159984, -0.085060,
		0.161262, -0.986877, 0.008323,
		14.839925, 16.893496, 20.486660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103760, 18.155834, 20.243849>,  <14.727041, 17.584309, 20.480833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103760, 18.155834, 20.243849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.091213, 18.531473, 20.106960>,  <15.083686, 18.756857, 20.024828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.091213, 18.531473, 20.106960>,  <15.103760, 18.155834, 20.243849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091213, 18.531473, 20.106960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030309, 0.341338, 0.939452,
		0.999048, 0.039839, 0.017757,
		-0.031366, 0.939096, -0.342221,
		15.081803, 18.813202, 20.004293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664868, 18.504391, 20.618399>,  <15.103760, 18.155834, 20.243849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664868, 18.504391, 20.618399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.464329, 18.818588, 20.473265>,  <15.344005, 19.007107, 20.386185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.464329, 18.818588, 20.473265>,  <15.664868, 18.504391, 20.618399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464329, 18.818588, 20.473265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155412, 0.494276, 0.855300,
		0.851173, 0.372415, -0.369880,
		-0.501349, 0.785493, -0.362837,
		15.313924, 19.054235, 20.364414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040621, 19.065998, 20.848856>,  <15.664868, 18.504391, 20.618399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040621, 19.065998, 20.848856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.673846, 19.199028, 20.760660>,  <15.453781, 19.278847, 20.707743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.673846, 19.199028, 20.760660>,  <16.040621, 19.065998, 20.848856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.673846, 19.199028, 20.760660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045680, 0.461449, 0.885990,
		0.396405, 0.822471, -0.407928,
		-0.916939, 0.332577, -0.220491,
		15.398765, 19.298801, 20.694513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020855, 19.737551, 21.013500>,  <16.040621, 19.065998, 20.848856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.020855, 19.737551, 21.013500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.632599, 19.642122, 21.001225>,  <15.399645, 19.584866, 20.993860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.632599, 19.642122, 21.001225>,  <16.020855, 19.737551, 21.013500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632599, 19.642122, 21.001225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149506, 0.498433, 0.853939,
		-0.188429, 0.833456, -0.519467,
		-0.970640, -0.238570, -0.030687,
		15.341407, 19.570551, 20.992018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.755504, 20.374731, 21.177521>,  <16.020855, 19.737551, 21.013500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.755504, 20.374731, 21.177521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.486074, 20.085718, 21.239807>,  <15.324417, 19.912312, 21.277178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.486074, 20.085718, 21.239807>,  <15.755504, 20.374731, 21.177521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486074, 20.085718, 21.239807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115770, 0.311210, 0.943263,
		-0.729997, 0.617330, -0.293270,
		-0.673574, -0.722531, 0.155714,
		15.284002, 19.868959, 21.286522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224330, 20.709625, 21.613821>,  <15.755504, 20.374731, 21.177521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224330, 20.709625, 21.613821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.147167, 20.322704, 21.679682>,  <15.100869, 20.090551, 21.719198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.147167, 20.322704, 21.679682>,  <15.224330, 20.709625, 21.613821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147167, 20.322704, 21.679682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072478, 0.181390, 0.980737,
		-0.978537, 0.177258, -0.105099,
		-0.192907, -0.967304, 0.164650,
		15.089295, 20.032513, 21.729076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606303, 20.659340, 22.054029>,  <15.224330, 20.709625, 21.613821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606303, 20.659340, 22.054029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.820603, 20.324991, 22.101851>,  <14.949183, 20.124382, 22.130543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.820603, 20.324991, 22.101851>,  <14.606303, 20.659340, 22.054029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820603, 20.324991, 22.101851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025899, 0.125252, 0.991787,
		-0.843979, -0.534447, 0.045455,
		0.535750, -0.835870, 0.119552,
		14.981329, 20.074230, 22.137716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.202040, 20.292175, 22.587265>,  <14.606303, 20.659340, 22.054029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.202040, 20.292175, 22.587265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575135, 20.148209, 22.578724>,  <14.798993, 20.061829, 22.573599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575135, 20.148209, 22.578724>,  <14.202040, 20.292175, 22.587265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575135, 20.148209, 22.578724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087788, 0.169269, 0.981652,
		-0.349701, -0.917500, 0.189481,
		0.932739, -0.359919, -0.021352,
		14.854957, 20.040234, 22.572319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.354777, 20.066196, 23.223808>,  <14.202040, 20.292175, 22.587265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.354777, 20.066196, 23.223808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.737429, 20.053888, 23.107937>,  <14.967020, 20.046503, 23.038414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.737429, 20.053888, 23.107937>,  <14.354777, 20.066196, 23.223808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737429, 20.053888, 23.107937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291185, 0.072023, 0.953952,
		-0.008495, -0.996928, 0.077861,
		0.956629, -0.030776, -0.289679,
		15.024418, 20.044657, 23.021032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646216, 19.617920, 23.703409>,  <14.354777, 20.066196, 23.223808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646216, 19.617920, 23.703409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.961641, 19.801208, 23.539360>,  <15.150896, 19.911182, 23.440931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.961641, 19.801208, 23.539360>,  <14.646216, 19.617920, 23.703409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961641, 19.801208, 23.539360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502877, -0.096633, 0.858940,
		0.353955, -0.883569, -0.306631,
		0.788563, 0.458223, -0.410123,
		15.198210, 19.938675, 23.416323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254332, 19.273407, 23.883778>,  <14.646216, 19.617920, 23.703409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254332, 19.273407, 23.883778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.392817, 19.635937, 23.786852>,  <15.475907, 19.853455, 23.728697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.392817, 19.635937, 23.786852>,  <15.254332, 19.273407, 23.883778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392817, 19.635937, 23.786852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633620, -0.035414, 0.772834,
		0.691855, -0.421101, -0.586524,
		0.346212, 0.906322, -0.242316,
		15.496680, 19.907833, 23.714157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925568, 19.220037, 24.152428>,  <15.254332, 19.273407, 23.883778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925568, 19.220037, 24.152428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.870771, 19.614252, 24.112524>,  <15.837893, 19.850780, 24.088583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.870771, 19.614252, 24.112524>,  <15.925568, 19.220037, 24.152428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870771, 19.614252, 24.112524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571779, 0.160909, 0.804473,
		0.808889, 0.053166, -0.585552,
		-0.136991, 0.985536, -0.099758,
		15.829674, 19.909912, 24.082596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497995, 19.487522, 24.644108>,  <15.925568, 19.220037, 24.152428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497995, 19.487522, 24.644108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.324873, 19.828205, 24.525942>,  <16.221001, 20.032616, 24.455042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.324873, 19.828205, 24.525942>,  <16.497995, 19.487522, 24.644108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324873, 19.828205, 24.525942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303713, 0.446303, 0.841767,
		0.848786, 0.274599, -0.451838,
		-0.432805, 0.851709, -0.295416,
		16.195032, 20.083717, 24.437317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989502, 20.140762, 24.638487>,  <16.497995, 19.487522, 24.644108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989502, 20.140762, 24.638487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.618097, 20.267279, 24.716282>,  <16.395254, 20.343187, 24.762959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.618097, 20.267279, 24.716282>,  <16.989502, 20.140762, 24.638487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.618097, 20.267279, 24.716282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333481, 0.480065, 0.811374,
		0.163261, 0.818229, -0.551223,
		-0.928513, 0.316288, 0.194488,
		16.339544, 20.362165, 24.774628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.552485, 19.475832, 26.519930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.933750, 19.368853, 26.463428>,  <11.162509, 19.304665, 26.429527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.933750, 19.368853, 26.463428>,  <10.552485, 19.475832, 26.519930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.933750, 19.368853, 26.463428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228068, -0.328781, -0.916454,
		0.198664, 0.905745, -0.374378,
		0.953162, -0.267450, -0.141254,
		11.219699, 19.288618, 26.421053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.800528, 19.867155, 25.975342>,  <10.552485, 19.475832, 26.519930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.800528, 19.867155, 25.975342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.025517, 19.537550, 26.002552>,  <11.160511, 19.339787, 26.018879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.025517, 19.537550, 26.002552>,  <10.800528, 19.867155, 25.975342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.025517, 19.537550, 26.002552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122318, -0.164301, -0.978797,
		0.817717, 0.542228, -0.193207,
		0.562475, -0.824011, 0.068028,
		11.194260, 19.290346, 26.022961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.296360, 19.968403, 25.488739>,  <10.800528, 19.867155, 25.975342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.296360, 19.968403, 25.488739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.267421, 19.573784, 25.547382>,  <11.250057, 19.337013, 25.582567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.267421, 19.573784, 25.547382>,  <11.296360, 19.968403, 25.488739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.267421, 19.573784, 25.547382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080374, -0.140748, -0.986778,
		0.994136, -0.083176, -0.069110,
		-0.072349, -0.986546, 0.146607,
		11.245716, 19.277821, 25.591364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.689216, 19.659355, 24.936535>,  <11.296360, 19.968403, 25.488739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.689216, 19.659355, 24.936535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.491191, 19.346209, 25.087282>,  <11.372375, 19.158319, 25.177731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.491191, 19.346209, 25.087282>,  <11.689216, 19.659355, 24.936535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.491191, 19.346209, 25.087282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061102, -0.401308, -0.913903,
		0.866706, -0.475466, 0.150838,
		-0.495062, -0.782869, 0.376868,
		11.342672, 19.111347, 25.200342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054118, 19.054998, 24.883310>,  <11.689216, 19.659355, 24.936535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054118, 19.054998, 24.883310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.670430, 18.944944, 24.909235>,  <11.440218, 18.878912, 24.924789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.670430, 18.944944, 24.909235>,  <12.054118, 19.054998, 24.883310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.670430, 18.944944, 24.909235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097559, -0.537443, -0.837638,
		0.265295, -0.797155, 0.542367,
		-0.959219, -0.275134, 0.064811,
		11.382665, 18.862404, 24.928679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.051891, 18.327116, 24.799337>,  <12.054118, 19.054998, 24.883310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.051891, 18.327116, 24.799337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.676261, 18.437275, 24.717077>,  <11.450883, 18.503370, 24.667721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.676261, 18.437275, 24.717077>,  <12.051891, 18.327116, 24.799337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676261, 18.437275, 24.717077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040557, -0.505358, -0.861956,
		-0.341305, -0.817783, 0.463401,
		-0.939077, 0.275396, -0.205648,
		11.394538, 18.519894, 24.655382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.719731, 17.738510, 24.413145>,  <12.051891, 18.327116, 24.799337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.719731, 17.738510, 24.413145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.456230, 18.029222, 24.335342>,  <11.298129, 18.203650, 24.288660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.456230, 18.029222, 24.335342>,  <11.719731, 17.738510, 24.413145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.456230, 18.029222, 24.335342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127051, -0.362278, -0.923370,
		-0.741553, -0.583561, 0.330990,
		-0.658754, 0.726781, -0.194506,
		11.258604, 18.247257, 24.276991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.148209, 17.400764, 24.019701>,  <11.719731, 17.738510, 24.413145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.148209, 17.400764, 24.019701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.099466, 17.794029, 23.965229>,  <11.070221, 18.029987, 23.932547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.099466, 17.794029, 23.965229>,  <11.148209, 17.400764, 24.019701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099466, 17.794029, 23.965229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104594, -0.149156, -0.983266,
		-0.987022, -0.105572, 0.121009,
		-0.121855, 0.983162, -0.136178,
		11.062910, 18.088978, 23.924376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.520562, 17.559576, 23.764795>,  <11.148209, 17.400764, 24.019701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.520562, 17.559576, 23.764795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.769968, 17.852045, 23.654076>,  <10.919611, 18.027527, 23.587645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.769968, 17.852045, 23.654076>,  <10.520562, 17.559576, 23.764795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.769968, 17.852045, 23.654076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221987, -0.173902, -0.959417,
		-0.749635, 0.659655, 0.053880,
		0.623514, 0.731172, -0.276798,
		10.957023, 18.071396, 23.571035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.158957, 17.939304, 23.206623>,  <10.520562, 17.559576, 23.764795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.158957, 17.939304, 23.206623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.538365, 18.062761, 23.178200>,  <10.766010, 18.136835, 23.161146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.538365, 18.062761, 23.178200>,  <10.158957, 17.939304, 23.206623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.538365, 18.062761, 23.178200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078942, 0.013112, -0.996793,
		-0.306720, 0.951088, 0.036802,
		0.948520, 0.308642, -0.071059,
		10.822922, 18.155354, 23.156881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.106311, 18.251997, 22.641619>,  <10.158957, 17.939304, 23.206623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.106311, 18.251997, 22.641619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.501377, 18.286007, 22.694212>,  <10.738417, 18.306414, 22.725769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.501377, 18.286007, 22.694212>,  <10.106311, 18.251997, 22.641619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.501377, 18.286007, 22.694212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115446, 0.171878, -0.978330,
		-0.105782, 0.981442, 0.159942,
		0.987665, 0.085025, 0.131485,
		10.797677, 18.311514, 22.733658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.405179, 18.906488, 22.520983>,  <10.106311, 18.251997, 22.641619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.405179, 18.906488, 22.520983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.671650, 18.614958, 22.457714>,  <10.831532, 18.440039, 22.419752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.671650, 18.614958, 22.457714>,  <10.405179, 18.906488, 22.520983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.671650, 18.614958, 22.457714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021989, 0.192801, -0.980992,
		0.745469, 0.656993, 0.112414,
		0.666178, -0.728827, -0.158173,
		10.871503, 18.396309, 22.410263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.760619, 19.169262, 21.894566>,  <10.405179, 18.906488, 22.520983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.760619, 19.169262, 21.894566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.878068, 18.787285, 21.911884>,  <10.948537, 18.558100, 21.922276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.878068, 18.787285, 21.911884>,  <10.760619, 19.169262, 21.894566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.878068, 18.787285, 21.911884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082222, -0.019897, -0.996415,
		0.952379, 0.296129, 0.072675,
		0.293621, -0.954941, 0.043297,
		10.966154, 18.500803, 21.924873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228996, 19.089388, 21.304028>,  <10.760619, 19.169262, 21.894566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228996, 19.089388, 21.304028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.129650, 18.713955, 21.399841>,  <11.070043, 18.488695, 21.457331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.129650, 18.713955, 21.399841>,  <11.228996, 19.089388, 21.304028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.129650, 18.713955, 21.399841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082094, -0.226000, -0.970662,
		0.965181, -0.260743, -0.020921,
		-0.248366, -0.938582, 0.239536,
		11.055140, 18.432381, 21.471703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.772277, 19.629454, 21.106817>,  <11.228996, 19.089388, 21.304028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.772277, 19.629454, 21.106817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.649047, 19.960150, 20.918524>,  <11.575109, 20.158567, 20.805548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.649047, 19.960150, 20.918524>,  <11.772277, 19.629454, 21.106817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.649047, 19.960150, 20.918524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141219, 0.449580, 0.882006,
		0.940822, 0.338202, -0.021754,
		-0.308076, 0.826739, -0.470736,
		11.556624, 20.208172, 20.777304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129837, 20.072315, 21.472542>,  <11.772277, 19.629454, 21.106817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129837, 20.072315, 21.472542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.877868, 20.319849, 21.284822>,  <11.726686, 20.468369, 21.172190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.877868, 20.319849, 21.284822>,  <12.129837, 20.072315, 21.472542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877868, 20.319849, 21.284822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164429, 0.484296, 0.859314,
		0.759052, 0.618468, -0.203314,
		-0.629923, 0.618833, -0.469300,
		11.688890, 20.505499, 21.144032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.353235, 20.763866, 21.617048>,  <12.129837, 20.072315, 21.472542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.353235, 20.763866, 21.617048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.969194, 20.779715, 21.506315>,  <11.738770, 20.789225, 21.439877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.969194, 20.779715, 21.506315>,  <12.353235, 20.763866, 21.617048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.969194, 20.779715, 21.506315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176829, 0.680879, 0.710729,
		0.216649, 0.731323, -0.646706,
		-0.960101, 0.039622, -0.276831,
		11.681164, 20.791601, 21.423265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.207104, 21.453041, 21.371317>,  <12.353235, 20.763866, 21.617048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.207104, 21.453041, 21.371317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.868703, 21.268688, 21.478550>,  <11.665663, 21.158075, 21.542891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.868703, 21.268688, 21.478550>,  <12.207104, 21.453041, 21.371317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868703, 21.268688, 21.478550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117966, 0.652136, 0.748867,
		-0.519968, 0.601918, -0.606076,
		-0.846001, -0.460883, 0.268084,
		11.614902, 21.130423, 21.558975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.795254, 22.041033, 21.607864>,  <12.207104, 21.453041, 21.371317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.795254, 22.041033, 21.607864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.628656, 21.707670, 21.753172>,  <11.528698, 21.507652, 21.840357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.628656, 21.707670, 21.753172>,  <11.795254, 22.041033, 21.607864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.628656, 21.707670, 21.753172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320364, 0.508483, 0.799257,
		-0.850823, 0.216508, -0.478774,
		-0.416494, -0.833408, 0.363268,
		11.503708, 21.457647, 21.862152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228814, 22.227785, 22.038422>,  <11.795254, 22.041033, 21.607864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228814, 22.227785, 22.038422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.304743, 21.856339, 22.165947>,  <11.350300, 21.633471, 22.242462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.304743, 21.856339, 22.165947>,  <11.228814, 22.227785, 22.038422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.304743, 21.856339, 22.165947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207040, 0.279554, 0.937542,
		-0.959741, -0.243973, -0.139195,
		0.189823, -0.928616, 0.318811,
		11.361690, 21.577753, 22.261591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.691444, 22.112684, 22.532347>,  <11.228814, 22.227785, 22.038422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.691444, 22.112684, 22.532347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.985474, 21.853773, 22.613045>,  <11.161891, 21.698427, 22.661463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.985474, 21.853773, 22.613045>,  <10.691444, 22.112684, 22.532347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.985474, 21.853773, 22.613045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108982, 0.180888, 0.977447,
		-0.669172, -0.740481, 0.062424,
		0.735072, -0.647277, 0.201745,
		11.205996, 21.659590, 22.673569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.500576, 21.992151, 23.271828>,  <10.691444, 22.112684, 22.532347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.500576, 21.992151, 23.271828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.858312, 21.813297, 23.265760>,  <11.072953, 21.705986, 23.262119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.858312, 21.813297, 23.265760>,  <10.500576, 21.992151, 23.271828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.858312, 21.813297, 23.265760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084628, 0.135779, 0.987118,
		-0.439314, -0.884102, 0.159273,
		0.894339, -0.447134, -0.015170,
		11.126614, 21.679157, 23.261209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.630725, 21.331861, 23.796183>,  <10.500576, 21.992151, 23.271828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.630725, 21.331861, 23.796183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.973131, 21.524647, 23.721401>,  <11.178575, 21.640318, 23.676533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.973131, 21.524647, 23.721401>,  <10.630725, 21.331861, 23.796183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.973131, 21.524647, 23.721401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176695, 0.067077, 0.981977,
		0.485816, -0.873621, -0.027741,
		0.856015, 0.481962, -0.186951,
		11.229936, 21.669235, 23.665316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955992, 21.171164, 24.375851>,  <10.630725, 21.331861, 23.796183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.955992, 21.171164, 24.375851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.207129, 21.443104, 24.224264>,  <11.357812, 21.606268, 24.133312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.207129, 21.443104, 24.224264>,  <10.955992, 21.171164, 24.375851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.207129, 21.443104, 24.224264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400887, 0.134889, 0.906143,
		0.667159, -0.720840, -0.187854,
		0.627844, 0.679849, -0.378968,
		11.395483, 21.647058, 24.110575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.640060, 20.952854, 24.479954>,  <10.955992, 21.171164, 24.375851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.640060, 20.952854, 24.479954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.702032, 21.345219, 24.432955>,  <11.739215, 21.580637, 24.404755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.702032, 21.345219, 24.432955>,  <11.640060, 20.952854, 24.479954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702032, 21.345219, 24.432955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617121, -0.003216, 0.786862,
		0.771465, -0.194418, -0.605840,
		0.154929, 0.980913, -0.117498,
		11.748511, 21.639492, 24.397705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308315, 21.030497, 24.642315>,  <11.640060, 20.952854, 24.479954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308315, 21.030497, 24.642315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.133954, 21.387423, 24.689236>,  <12.029337, 21.601578, 24.717388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.133954, 21.387423, 24.689236>,  <12.308315, 21.030497, 24.642315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.133954, 21.387423, 24.689236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600858, 0.191504, 0.776077,
		0.670043, 0.408775, -0.619633,
		-0.435903, 0.892317, 0.117300,
		12.003183, 21.655117, 24.724426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910001, 21.469042, 24.676073>,  <12.308315, 21.030497, 24.642315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910001, 21.469042, 24.676073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.588395, 21.627916, 24.853071>,  <12.395432, 21.723242, 24.959270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.588395, 21.627916, 24.853071>,  <12.910001, 21.469042, 24.676073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588395, 21.627916, 24.853071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543811, 0.190215, 0.817366,
		0.240478, 0.897808, -0.368931,
		-0.804015, 0.397187, 0.442495,
		12.347191, 21.747072, 24.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.071939, 22.087294, 25.084856>,  <12.910001, 21.469042, 24.676073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.071939, 22.087294, 25.084856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.731123, 22.005112, 25.277445>,  <12.526633, 21.955803, 25.392998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.731123, 22.005112, 25.277445>,  <13.071939, 22.087294, 25.084856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731123, 22.005112, 25.277445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425946, 0.262549, 0.865817,
		-0.304296, 0.942792, -0.136189,
		-0.852041, -0.205455, 0.481471,
		12.475511, 21.943476, 25.421886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308018, 22.898186, 25.108278>,  <13.071939, 22.087294, 25.084856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308018, 22.898186, 25.108278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.649027, 22.995401, 24.923178>,  <13.853632, 23.053730, 24.812117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.649027, 22.995401, 24.923178>,  <13.308018, 22.898186, 25.108278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649027, 22.995401, 24.923178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327151, -0.442365, -0.835036,
		-0.407650, 0.863276, -0.297616,
		0.852522, 0.243037, -0.462751,
		13.904783, 23.068312, 24.784351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099067, 23.085657, 24.345173>,  <13.308018, 22.898186, 25.108278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099067, 23.085657, 24.345173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.490237, 23.002102, 24.343201>,  <13.724939, 22.951969, 24.342016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.490237, 23.002102, 24.343201>,  <13.099067, 23.085657, 24.345173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.490237, 23.002102, 24.343201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095709, -0.426842, -0.899247,
		0.185736, 0.879871, -0.437413,
		0.977928, -0.208887, -0.004932,
		13.783615, 22.939436, 24.341721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197626, 23.303558, 23.713144>,  <13.099067, 23.085657, 24.345173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197626, 23.303558, 23.713144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.514875, 23.079458, 23.808704>,  <13.705225, 22.944998, 23.866041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.514875, 23.079458, 23.808704>,  <13.197626, 23.303558, 23.713144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.514875, 23.079458, 23.808704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021368, -0.366409, -0.930208,
		0.608686, 0.742875, -0.278636,
		0.793124, -0.560251, 0.238902,
		13.752812, 22.911383, 23.880375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556615, 23.415707, 23.223364>,  <13.197626, 23.303558, 23.713144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556615, 23.415707, 23.223364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.750458, 23.091476, 23.354893>,  <13.866763, 22.896938, 23.433809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.750458, 23.091476, 23.354893>,  <13.556615, 23.415707, 23.223364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.750458, 23.091476, 23.354893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011406, -0.381736, -0.924201,
		0.874658, 0.444124, -0.194237,
		0.484607, -0.810575, 0.328823,
		13.895840, 22.848305, 23.453539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.166988, 23.349852, 22.784029>,  <13.556615, 23.415707, 23.223364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.166988, 23.349852, 22.784029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.071842, 23.006617, 22.966066>,  <14.014754, 22.800676, 23.075289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.071842, 23.006617, 22.966066>,  <14.166988, 23.349852, 22.784029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.071842, 23.006617, 22.966066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073072, -0.451405, -0.889322,
		0.968546, -0.244792, 0.044671,
		-0.237864, -0.858085, 0.455094,
		14.000483, 22.749191, 23.102594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548784, 22.927380, 22.363949>,  <14.166988, 23.349852, 22.784029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548784, 22.927380, 22.363949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.285248, 22.698168, 22.558910>,  <14.127126, 22.560640, 22.675888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.285248, 22.698168, 22.558910>,  <14.548784, 22.927380, 22.363949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285248, 22.698168, 22.558910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156153, -0.529619, -0.833738,
		0.735897, -0.625411, 0.259455,
		-0.658841, -0.573031, 0.487405,
		14.087595, 22.526258, 22.705132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.765261, 22.266893, 22.173805>,  <14.548784, 22.927380, 22.363949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.765261, 22.266893, 22.173805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.379882, 22.254015, 22.280188>,  <14.148654, 22.246288, 22.344017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.379882, 22.254015, 22.280188>,  <14.765261, 22.266893, 22.173805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.379882, 22.254015, 22.280188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239535, -0.341026, -0.909024,
		0.119964, -0.939502, 0.320849,
		-0.963447, -0.032196, 0.265955,
		14.090848, 22.244356, 22.359974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555034, 21.644941, 22.037245>,  <14.765261, 22.266893, 22.173805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555034, 21.644941, 22.037245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.221333, 21.865492, 22.036385>,  <14.021111, 21.997822, 22.035868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.221333, 21.865492, 22.036385>,  <14.555034, 21.644941, 22.037245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.221333, 21.865492, 22.036385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193316, -0.296144, -0.935376,
		-0.516382, -0.779924, 0.353649,
		-0.834253, 0.551377, -0.002152,
		13.971057, 22.030905, 22.035740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994916, 21.219492, 21.824276>,  <14.555034, 21.644941, 22.037245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994916, 21.219492, 21.824276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.902046, 21.600002, 21.743113>,  <13.846325, 21.828308, 21.694414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.902046, 21.600002, 21.743113>,  <13.994916, 21.219492, 21.824276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.902046, 21.600002, 21.743113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238314, -0.257882, -0.936324,
		-0.943028, -0.169035, 0.286575,
		-0.232174, 0.951275, -0.202906,
		13.832394, 21.885386, 21.682241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372754, 21.183624, 21.407629>,  <13.994916, 21.219492, 21.824276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372754, 21.183624, 21.407629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.538744, 21.541864, 21.343510>,  <13.638338, 21.756809, 21.305038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.538744, 21.541864, 21.343510>,  <13.372754, 21.183624, 21.407629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.538744, 21.541864, 21.343510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213947, -0.075189, -0.973947,
		-0.884320, 0.438460, 0.160409,
		0.414976, 0.895600, -0.160298,
		13.663237, 21.810545, 21.295420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989892, 21.396751, 20.751575>,  <13.372754, 21.183624, 21.407629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.989892, 21.396751, 20.751575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.320024, 21.618795, 20.792910>,  <13.518105, 21.752022, 20.817711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.320024, 21.618795, 20.792910>,  <12.989892, 21.396751, 20.751575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320024, 21.618795, 20.792910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088049, 0.054249, -0.994638,
		-0.557740, 0.830005, -0.004104,
		0.825332, 0.555111, 0.103337,
		13.567624, 21.785328, 20.823912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.813599, 21.902414, 20.287518>,  <12.989892, 21.396751, 20.751575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.813599, 21.902414, 20.287518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.208494, 21.890568, 20.350103>,  <13.445432, 21.883459, 20.387655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.208494, 21.890568, 20.350103>,  <12.813599, 21.902414, 20.287518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.208494, 21.890568, 20.350103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159243, 0.186111, -0.969538,
		-0.000406, 0.982082, 0.188452,
		0.987239, -0.029616, 0.156465,
		13.504666, 21.881683, 20.397043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.068117, 22.193235, 19.662521>,  <12.813599, 21.902414, 20.287518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.068117, 22.193235, 19.662521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.404312, 22.044312, 19.819984>,  <13.606030, 21.954956, 19.914461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.404312, 22.044312, 19.819984>,  <13.068117, 22.193235, 19.662521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404312, 22.044312, 19.819984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320128, -0.244946, -0.915161,
		0.437149, 0.895202, -0.086687,
		0.840487, -0.372311, 0.393657,
		13.656458, 21.932619, 19.938082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665287, 22.490366, 19.285978>,  <13.068117, 22.193235, 19.662521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665287, 22.490366, 19.285978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798725, 22.144072, 19.435226>,  <13.878788, 21.936295, 19.524775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798725, 22.144072, 19.435226>,  <13.665287, 22.490366, 19.285978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.798725, 22.144072, 19.435226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299242, -0.278077, -0.912758,
		0.893962, 0.416144, 0.166300,
		0.333594, -0.865735, 0.373118,
		13.898804, 21.884352, 19.547161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.150582, 3.067096, 10.493003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.387152, 3.261735, 10.235806>,  <9.529094, 3.378518, 10.081487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.387152, 3.261735, 10.235806>,  <9.150582, 3.067096, 10.493003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.387152, 3.261735, 10.235806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504211, 0.845448, 0.176035,
		0.629276, 0.220093, 0.745366,
		0.591425, 0.486597, -0.642994,
		9.564579, 3.407714, 10.042908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.112609, 3.670240, 10.739092>,  <9.150582, 3.067096, 10.493003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.112609, 3.670240, 10.739092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.255653, 3.739744, 10.372066>,  <9.341480, 3.781447, 10.151852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.255653, 3.739744, 10.372066>,  <9.112609, 3.670240, 10.739092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.255653, 3.739744, 10.372066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290376, 0.954523, 0.067590,
		0.887579, 0.242267, 0.391805,
		0.357612, 0.173762, -0.917562,
		9.362937, 3.791873, 10.096798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.628679, 4.314857, 10.663578>,  <9.112609, 3.670240, 10.739092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.628679, 4.314857, 10.663578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.364204, 4.256380, 10.369243>,  <9.205520, 4.221294, 10.192641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.364204, 4.256380, 10.369243>,  <9.628679, 4.314857, 10.663578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.364204, 4.256380, 10.369243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483400, 0.833095, 0.268845,
		0.573721, 0.533461, -0.621501,
		-0.661188, -0.146191, -0.735839,
		9.165848, 4.212523, 10.148491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.577196, 4.983356, 10.279585>,  <9.628679, 4.314857, 10.663578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.577196, 4.983356, 10.279585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.249459, 4.754282, 10.268917>,  <9.052817, 4.616838, 10.262516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.249459, 4.754282, 10.268917>,  <9.577196, 4.983356, 10.279585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.249459, 4.754282, 10.268917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570717, 0.819174, -0.056890,
		0.054427, -0.031392, -0.998024,
		-0.819342, -0.572685, -0.026670,
		9.003656, 4.582477, 10.260916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.213564, 5.071762, 9.724473>,  <9.577196, 4.983356, 10.279585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.213564, 5.071762, 9.724473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.945307, 4.970766, 10.003468>,  <8.784352, 4.910168, 10.170864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.945307, 4.970766, 10.003468>,  <9.213564, 5.071762, 9.724473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.945307, 4.970766, 10.003468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484297, 0.861265, -0.153878,
		-0.561868, -0.440988, -0.699882,
		-0.670643, -0.252491, 0.697486,
		8.744114, 4.895018, 10.212713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.574208, 5.170587, 9.484139>,  <9.213564, 5.071762, 9.724473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.574208, 5.170587, 9.484139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.592956, 5.216635, 9.881038>,  <8.604204, 5.244264, 10.119177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.592956, 5.216635, 9.881038>,  <8.574208, 5.170587, 9.484139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.592956, 5.216635, 9.881038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585639, 0.807875, -0.066066,
		-0.809216, -0.578001, 0.105283,
		0.046869, 0.115120, 0.992245,
		8.607017, 5.251171, 10.178711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.863769, 5.198667, 9.706424>,  <8.574208, 5.170587, 9.484139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.863769, 5.198667, 9.706424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.132400, 5.388661, 9.933887>,  <8.293578, 5.502657, 10.070366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.132400, 5.388661, 9.933887>,  <7.863769, 5.198667, 9.706424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.132400, 5.388661, 9.933887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635729, 0.763601, 0.112969,
		-0.380570, -0.437380, 0.814779,
		0.671576, 0.474986, 0.568659,
		8.333873, 5.531157, 10.104486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.469588, 5.429625, 10.316237>,  <7.863769, 5.198667, 9.706424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.469588, 5.429625, 10.316237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.791352, 5.647784, 10.222034>,  <7.984411, 5.778679, 10.165512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.791352, 5.647784, 10.222034>,  <7.469588, 5.429625, 10.316237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.791352, 5.647784, 10.222034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585301, 0.795471, -0.156998,
		0.101714, 0.264134, 0.959108,
		0.804411, 0.545398, -0.235508,
		8.032676, 5.811403, 10.151381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.530740, 6.037869, 10.743235>,  <7.469588, 5.429625, 10.316237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.530740, 6.037869, 10.743235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.709254, 6.107988, 10.392213>,  <7.816362, 6.150059, 10.181600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.709254, 6.107988, 10.392213>,  <7.530740, 6.037869, 10.743235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.709254, 6.107988, 10.392213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530035, 0.841894, -0.101379,
		0.721035, 0.510379, 0.468638,
		0.446285, 0.175297, -0.877554,
		7.843139, 6.160577, 10.128946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.918622, 6.700701, 10.768374>,  <7.530740, 6.037869, 10.743235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.918622, 6.700701, 10.768374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.793283, 6.634474, 10.394337>,  <7.718080, 6.594737, 10.169914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.793283, 6.634474, 10.394337>,  <7.918622, 6.700701, 10.768374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.793283, 6.634474, 10.394337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230340, 0.968530, -0.094303,
		0.921281, 0.185840, -0.341622,
		-0.313346, -0.165569, -0.935094,
		7.699279, 6.584803, 10.113809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.114903, 7.229103, 10.354265>,  <7.918622, 6.700701, 10.768374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.114903, 7.229103, 10.354265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.800450, 7.089215, 10.150425>,  <7.611778, 7.005283, 10.028121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.800450, 7.089215, 10.150425>,  <8.114903, 7.229103, 10.354265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.800450, 7.089215, 10.150425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375102, 0.925271, -0.056327,
		0.491217, 0.146872, -0.858565,
		-0.786132, -0.349718, -0.509600,
		7.564610, 6.984300, 9.997545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.869005, 7.696565, 9.715693>,  <8.114903, 7.229103, 10.354265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.869005, 7.696565, 9.715693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.539346, 7.491208, 9.811365>,  <7.341550, 7.367994, 9.868768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.539346, 7.491208, 9.811365>,  <7.869005, 7.696565, 9.715693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.539346, 7.491208, 9.811365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559619, 0.803170, -0.204315,
		-0.087208, -0.302235, -0.949236,
		-0.824149, -0.513393, 0.239179,
		7.292101, 7.337190, 9.883119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.286308, 7.825583, 9.242626>,  <7.869005, 7.696565, 9.715693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.286308, 7.825583, 9.242626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.104544, 7.701314, 9.576571>,  <6.995486, 7.626753, 9.776938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.104544, 7.701314, 9.576571>,  <7.286308, 7.825583, 9.242626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.104544, 7.701314, 9.576571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579867, 0.814615, -0.012481,
		-0.676214, -0.489781, -0.550317,
		-0.454410, -0.310671, 0.834862,
		6.968221, 7.608113, 9.827030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.490050, 7.896997, 9.102607>,  <7.286308, 7.825583, 9.242626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.490050, 7.896997, 9.102607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.532246, 7.864217, 9.499022>,  <6.557563, 7.844548, 9.736871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.532246, 7.864217, 9.499022>,  <6.490050, 7.896997, 9.102607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.532246, 7.864217, 9.499022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452461, 0.883507, 0.121221,
		-0.885523, -0.461194, 0.056121,
		0.105489, -0.081951, 0.991038,
		6.563893, 7.839632, 9.796333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.839915, 8.208898, 9.292251>,  <6.490050, 7.896997, 9.102607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.839915, 8.208898, 9.292251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.077869, 8.198234, 9.613599>,  <6.220641, 8.191835, 9.806408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.077869, 8.198234, 9.613599>,  <5.839915, 8.208898, 9.292251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.077869, 8.198234, 9.613599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422223, 0.840100, 0.340529,
		-0.683989, -0.541776, 0.488505,
		0.594884, -0.026660, 0.803369,
		6.256334, 8.190236, 9.854609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.443716, 8.405643, 9.816743>,  <5.839915, 8.208898, 9.292251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.443716, 8.405643, 9.816743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.802831, 8.477524, 9.977582>,  <6.018300, 8.520653, 10.074085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.802831, 8.477524, 9.977582>,  <5.443716, 8.405643, 9.816743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.802831, 8.477524, 9.977582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391798, 0.742885, 0.542786,
		-0.201173, -0.644848, 0.737360,
		0.897788, 0.179702, 0.402099,
		6.072167, 8.531435, 10.098211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.341807, 8.576649, 10.503079>,  <5.443716, 8.405643, 9.816743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.341807, 8.576649, 10.503079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.715032, 8.714554, 10.462023>,  <5.938966, 8.797297, 10.437388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.715032, 8.714554, 10.462023>,  <5.341807, 8.576649, 10.503079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.715032, 8.714554, 10.462023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170168, 0.674437, 0.718455,
		0.316923, -0.652896, 0.687958,
		0.933061, 0.344764, -0.102642,
		5.994950, 8.817983, 10.431230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.687937, 8.713311, 11.150767>,  <5.341807, 8.576649, 10.503079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.687937, 8.713311, 11.150767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.862481, 8.947293, 10.877295>,  <5.967207, 9.087683, 10.713212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.862481, 8.947293, 10.877295>,  <5.687937, 8.713311, 11.150767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.862481, 8.947293, 10.877295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162024, 0.798498, 0.579783,
		0.885065, -0.142220, 0.443208,
		0.436358, 0.584956, -0.683680,
		5.993388, 9.122780, 10.672192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.049214, 9.179871, 11.569536>,  <5.687937, 8.713311, 11.150767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.049214, 9.179871, 11.569536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.101124, 9.370402, 11.221682>,  <6.132270, 9.484721, 11.012969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.101124, 9.370402, 11.221682>,  <6.049214, 9.179871, 11.569536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.101124, 9.370402, 11.221682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148660, 0.876487, 0.457897,
		0.980336, 0.069856, 0.184558,
		0.129776, 0.476329, -0.869637,
		6.140057, 9.513301, 10.960791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.632629, 9.633931, 11.579412>,  <6.049214, 9.179871, 11.569536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.632629, 9.633931, 11.579412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.410652, 9.763490, 11.272914>,  <6.277466, 9.841225, 11.089015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.410652, 9.763490, 11.272914>,  <6.632629, 9.633931, 11.579412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.410652, 9.763490, 11.272914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077172, 0.897073, 0.435090,
		0.828301, 0.300583, -0.472829,
		-0.554943, 0.323897, -0.766244,
		6.244169, 9.860659, 11.043041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.892161, 10.247119, 11.363027>,  <6.632629, 9.633931, 11.579412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.892161, 10.247119, 11.363027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513820, 10.259516, 11.233784>,  <6.286815, 10.266953, 11.156238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513820, 10.259516, 11.233784>,  <6.892161, 10.247119, 11.363027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.513820, 10.259516, 11.233784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170092, 0.800489, 0.574705,
		0.276455, 0.598545, -0.751875,
		-0.945855, 0.030992, -0.323107,
		6.230063, 10.268813, 11.136851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.770382, 10.989834, 11.238551>,  <6.892161, 10.247119, 11.363027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.770382, 10.989834, 11.238551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.401649, 10.836690, 11.262680>,  <6.180408, 10.744803, 11.277158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.401649, 10.836690, 11.262680>,  <6.770382, 10.989834, 11.238551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.401649, 10.836690, 11.262680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330989, 0.858617, 0.391437,
		-0.201660, 0.340874, -0.918226,
		-0.921835, -0.382860, 0.060323,
		6.125098, 10.721832, 11.280777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.303776, 11.539552, 11.312517>,  <6.770382, 10.989834, 11.238551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.303776, 11.539552, 11.312517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.063174, 11.238530, 11.419739>,  <5.918812, 11.057918, 11.484072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.063174, 11.238530, 11.419739>,  <6.303776, 11.539552, 11.312517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.063174, 11.238530, 11.419739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551309, 0.633874, 0.542459,
		-0.578143, 0.178511, -0.796169,
		-0.601506, -0.752554, 0.268055,
		5.882722, 11.012764, 11.500155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.674679, 11.704556, 11.088413>,  <6.303776, 11.539552, 11.312517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.674679, 11.704556, 11.088413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.589470, 11.460297, 11.393498>,  <5.538344, 11.313742, 11.576550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.589470, 11.460297, 11.393498>,  <5.674679, 11.704556, 11.088413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.589470, 11.460297, 11.393498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526990, 0.729156, 0.436593,
		-0.822741, -0.308938, -0.477132,
		-0.213023, -0.610647, 0.762713,
		5.525563, 11.277102, 11.622313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.872424, 11.771646, 11.203380>,  <5.674679, 11.704556, 11.088413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.872424, 11.771646, 11.203380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.078038, 11.657603, 11.526979>,  <5.201406, 11.589177, 11.721140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.078038, 11.657603, 11.526979>,  <4.872424, 11.771646, 11.203380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.078038, 11.657603, 11.526979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480655, 0.685421, 0.546963,
		-0.710450, -0.670008, 0.215291,
		0.514035, -0.285109, 0.809000,
		5.232248, 11.572070, 11.769679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.383677, 11.670296, 11.689651>,  <4.872424, 11.771646, 11.203380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.383677, 11.670296, 11.689651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.720670, 11.706923, 11.902004>,  <4.922866, 11.728899, 12.029416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.720670, 11.706923, 11.902004>,  <4.383677, 11.670296, 11.689651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.720670, 11.706923, 11.902004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472945, 0.597584, 0.647469,
		-0.257961, -0.796560, 0.546761,
		0.842484, 0.091567, 0.530883,
		4.973415, 11.734393, 12.061269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.211972, 11.491029, 12.496982>,  <4.383677, 11.670296, 11.689651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.211972, 11.491029, 12.496982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.536231, 11.725193, 12.501830>,  <4.730786, 11.865691, 12.504740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.536231, 11.725193, 12.501830>,  <4.211972, 11.491029, 12.496982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.536231, 11.725193, 12.501830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497211, 0.677285, 0.542279,
		0.309245, -0.445625, 0.840111,
		0.810647, 0.585409, 0.012122,
		4.779425, 11.900816, 12.505466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.223938, 11.833781, 13.146772>,  <4.211972, 11.491029, 12.496982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.223938, 11.833781, 13.146772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.506550, 12.043274, 12.956395>,  <4.676117, 12.168969, 12.842169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.506550, 12.043274, 12.956395>,  <4.223938, 11.833781, 13.146772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.506550, 12.043274, 12.956395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321542, 0.836682, 0.443367,
		0.630418, -0.160216, 0.759542,
		0.706529, 0.523731, -0.475943,
		4.718509, 12.200394, 12.813612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.630753, 12.176543, 13.653363>,  <4.223938, 11.833781, 13.146772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.630753, 12.176543, 13.653363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.685653, 12.369619, 13.307375>,  <4.718593, 12.485465, 13.099782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.685653, 12.369619, 13.307375>,  <4.630753, 12.176543, 13.653363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.685653, 12.369619, 13.307375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247331, 0.862274, 0.441940,
		0.959161, 0.153278, 0.237732,
		0.137250, 0.482690, -0.864970,
		4.726828, 12.514426, 13.047884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.204715, 12.672789, 13.782410>,  <4.630753, 12.176543, 13.653363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.204715, 12.672789, 13.782410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.971453, 12.814321, 13.489907>,  <4.831495, 12.899240, 13.314405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.971453, 12.814321, 13.489907>,  <5.204715, 12.672789, 13.782410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.971453, 12.814321, 13.489907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095872, 0.863895, 0.494463,
		0.806684, 0.358456, -0.469862,
		-0.583155, 0.353829, -0.731256,
		4.796506, 12.920469, 13.270531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.468317, 13.396585, 13.670341>,  <5.204715, 12.672789, 13.782410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.468317, 13.396585, 13.670341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.106291, 13.382484, 13.500817>,  <4.889075, 13.374023, 13.399102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.106291, 13.382484, 13.500817>,  <5.468317, 13.396585, 13.670341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.106291, 13.382484, 13.500817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272468, 0.813228, 0.514220,
		0.326527, 0.580877, -0.745629,
		-0.905064, -0.035253, -0.423811,
		4.834772, 13.371908, 13.373673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.451946, 14.119996, 13.653082>,  <5.468317, 13.396585, 13.670341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.451946, 14.119996, 13.653082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.660962, 14.444459, 13.758136>,  <5.786372, 14.639136, 13.821168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.660962, 14.444459, 13.758136>,  <5.451946, 14.119996, 13.653082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.660962, 14.444459, 13.758136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848098, -0.526163, -0.062307,
		0.087647, 0.255298, -0.962882,
		0.522539, 0.811157, 0.262634,
		5.817724, 14.687806, 13.836926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.837820, 14.532389, 13.075556>,  <5.451946, 14.119996, 13.653082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.837820, 14.532389, 13.075556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.009277, 14.550879, 13.436472>,  <6.112152, 14.561974, 13.653022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.009277, 14.550879, 13.436472>,  <5.837820, 14.532389, 13.075556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.009277, 14.550879, 13.436472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639384, -0.721113, -0.266804,
		0.638320, 0.691273, -0.338657,
		0.428644, 0.046226, 0.902290,
		6.137871, 14.564747, 13.707159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.419650, 14.502977, 12.865797>,  <5.837820, 14.532389, 13.075556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.419650, 14.502977, 12.865797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444869, 14.405691, 13.252966>,  <6.460001, 14.347320, 13.485267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444869, 14.405691, 13.252966>,  <6.419650, 14.502977, 12.865797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.444869, 14.405691, 13.252966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592577, -0.771262, -0.232397,
		0.803043, 0.588219, 0.095498,
		0.063047, -0.243215, 0.967921,
		6.463783, 14.332726, 13.543343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.172198, 14.393878, 13.088798>,  <6.419650, 14.502977, 12.865797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.172198, 14.393878, 13.088798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.947434, 14.181810, 13.342783>,  <6.812576, 14.054569, 13.495174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.947434, 14.181810, 13.342783>,  <7.172198, 14.393878, 13.088798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.947434, 14.181810, 13.342783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438388, -0.841806, -0.314926,
		0.701480, 0.101401, 0.705438,
		-0.561909, -0.530170, 0.634963,
		6.778862, 14.022759, 13.533272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.591455, 14.102512, 13.441710>,  <7.172198, 14.393878, 13.088798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.591455, 14.102512, 13.441710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.271915, 13.865099, 13.480815>,  <7.080192, 13.722651, 13.504278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.271915, 13.865099, 13.480815>,  <7.591455, 14.102512, 13.441710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.271915, 13.865099, 13.480815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585432, -0.804482, -0.100392,
		0.138236, -0.022964, 0.990133,
		-0.798849, -0.593534, 0.097764,
		7.032261, 13.687038, 13.510144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.728986, 13.634408, 14.038409>,  <7.591455, 14.102512, 13.441710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.728986, 13.634408, 14.038409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.474936, 13.459886, 13.783458>,  <7.322506, 13.355172, 13.630487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.474936, 13.459886, 13.783458>,  <7.728986, 13.634408, 14.038409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.474936, 13.459886, 13.783458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621795, -0.778357, -0.086786,
		-0.458242, -0.451439, 0.765648,
		-0.635126, -0.436307, -0.637378,
		7.284398, 13.328994, 13.592244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.942925, 12.917967, 14.067058>,  <7.728986, 13.634408, 14.038409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.942925, 12.917967, 14.067058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.677984, 12.865878, 13.771942>,  <7.519019, 12.834625, 13.594873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.677984, 12.865878, 13.771942>,  <7.942925, 12.917967, 14.067058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.677984, 12.865878, 13.771942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456670, -0.850857, -0.259799,
		-0.593920, -0.509004, 0.623036,
		-0.662353, -0.130222, -0.737788,
		7.479278, 12.826812, 13.550606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.733873, 12.293230, 14.078710>,  <7.942925, 12.917967, 14.067058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.733873, 12.293230, 14.078710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.631701, 12.372134, 13.700113>,  <7.570398, 12.419477, 13.472956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.631701, 12.372134, 13.700113>,  <7.733873, 12.293230, 14.078710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.631701, 12.372134, 13.700113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371201, -0.883927, -0.284397,
		-0.892730, -0.423981, 0.152555,
		-0.255427, 0.197262, -0.946491,
		7.555072, 12.431313, 13.416166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.174627, 11.810683, 13.818761>,  <7.733873, 12.293230, 14.078710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.174627, 11.810683, 13.818761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.392704, 11.966120, 13.521638>,  <7.523550, 12.059381, 13.343365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.392704, 11.966120, 13.521638>,  <7.174627, 11.810683, 13.818761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.392704, 11.966120, 13.521638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413127, -0.895550, -0.165277,
		-0.729446, -0.216766, -0.648785,
		0.545193, 0.388591, -0.742807,
		7.556262, 12.082697, 13.298796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.040225, 11.370461, 13.294032>,  <7.174627, 11.810683, 13.818761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.040225, 11.370461, 13.294032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.375800, 11.563617, 13.193632>,  <7.577145, 11.679510, 13.133392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.375800, 11.563617, 13.193632>,  <7.040225, 11.370461, 13.294032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.375800, 11.563617, 13.193632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418190, -0.867143, -0.270517,
		-0.348283, 0.121981, -0.929419,
		0.838937, 0.482890, -0.251000,
		7.627481, 11.708484, 13.118332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.171903, 11.129633, 12.583425>,  <7.040225, 11.370461, 13.294032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.171903, 11.129633, 12.583425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524774, 11.256487, 12.722672>,  <7.736497, 11.332600, 12.806221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524774, 11.256487, 12.722672>,  <7.171903, 11.129633, 12.583425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.524774, 11.256487, 12.722672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444413, -0.805159, -0.392703,
		0.155752, 0.501143, -0.851232,
		0.882178, 0.317135, 0.348120,
		7.789427, 11.351627, 12.827108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.725569, 11.104645, 11.977159>,  <7.171903, 11.129633, 12.583425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.725569, 11.104645, 11.977159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.944080, 11.133596, 12.310947>,  <8.075187, 11.150968, 12.511221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.944080, 11.133596, 12.310947>,  <7.725569, 11.104645, 11.977159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.944080, 11.133596, 12.310947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631459, -0.690134, -0.353519,
		0.550310, 0.720054, -0.422708,
		0.546277, 0.072378, 0.834471,
		8.107963, 11.155310, 12.561289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.473940, 11.183938, 11.741088>,  <7.725569, 11.104645, 11.977159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.473940, 11.183938, 11.741088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.476692, 11.024222, 12.107808>,  <8.478344, 10.928393, 12.327840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.476692, 11.024222, 12.107808>,  <8.473940, 11.183938, 11.741088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.476692, 11.024222, 12.107808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666296, -0.681818, -0.301949,
		0.745655, 0.612938, 0.261353,
		0.006881, -0.399288, 0.916800,
		8.478756, 10.904436, 12.382848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.157955, 10.928687, 11.888324>,  <8.473940, 11.183938, 11.741088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.157955, 10.928687, 11.888324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.960320, 10.747519, 12.185170>,  <8.841738, 10.638818, 12.363278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.960320, 10.747519, 12.185170>,  <9.157955, 10.928687, 11.888324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.960320, 10.747519, 12.185170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591834, -0.800499, -0.094519,
		0.636873, 0.392510, 0.663572,
		-0.494090, -0.452921, 0.742117,
		8.812093, 10.611642, 12.407805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.614902, 10.457578, 12.073145>,  <9.157955, 10.928687, 11.888324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.614902, 10.457578, 12.073145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.303880, 10.309403, 12.276393>,  <9.117267, 10.220499, 12.398341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.303880, 10.309403, 12.276393>,  <9.614902, 10.457578, 12.073145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.303880, 10.309403, 12.276393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405008, -0.913158, -0.045955,
		0.481016, 0.170060, 0.860060,
		-0.777555, -0.370436, 0.508119,
		9.070613, 10.198273, 12.428828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.881495, 10.062330, 12.664525>,  <9.614902, 10.457578, 12.073145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.881495, 10.062330, 12.664525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.515282, 9.927254, 12.577106>,  <9.295553, 9.846208, 12.524653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.515282, 9.927254, 12.577106>,  <9.881495, 10.062330, 12.664525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.515282, 9.927254, 12.577106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353175, -0.934905, -0.034936,
		-0.192525, -0.109171, 0.975201,
		-0.915533, -0.337691, -0.218549,
		9.240622, 9.825947, 12.511540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.746102, 9.578527, 13.228600>,  <9.881495, 10.062330, 12.664525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.746102, 9.578527, 13.228600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.505567, 9.493788, 12.920441>,  <9.361245, 9.442944, 12.735545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.505567, 9.493788, 12.920441>,  <9.746102, 9.578527, 13.228600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.505567, 9.493788, 12.920441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205630, -0.972764, 0.106992,
		-0.772080, -0.094078, 0.628523,
		-0.601339, -0.211849, -0.770397,
		9.325165, 9.430233, 12.689322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.417414, 8.933341, 13.402086>,  <9.746102, 9.578527, 13.228600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.417414, 8.933341, 13.402086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.359274, 8.934609, 13.006336>,  <9.324389, 8.935370, 12.768887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.359274, 8.934609, 13.006336>,  <9.417414, 8.933341, 13.402086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.359274, 8.934609, 13.006336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208837, -0.977366, -0.033814,
		-0.967089, -0.211533, 0.141398,
		-0.145351, 0.003172, -0.989375,
		9.315669, 8.935561, 12.709523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.978422, 8.318804, 13.327352>,  <9.417414, 8.933341, 13.402086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.978422, 8.318804, 13.327352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.145215, 8.412252, 12.976001>,  <9.245291, 8.468322, 12.765190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.145215, 8.412252, 12.976001>,  <8.978422, 8.318804, 13.327352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.145215, 8.412252, 12.976001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208850, -0.965171, -0.157562,
		-0.884595, -0.117748, -0.451252,
		0.416982, 0.233623, -0.878377,
		9.270309, 8.482339, 12.712487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.789443, 7.812041, 12.927280>,  <8.978422, 8.318804, 13.327352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.789443, 7.812041, 12.927280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.111055, 7.964428, 12.744678>,  <9.304023, 8.055860, 12.635118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.111055, 7.964428, 12.744678>,  <8.789443, 7.812041, 12.927280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.111055, 7.964428, 12.744678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308523, -0.923635, -0.227405,
		-0.508278, 0.041999, -0.860169,
		0.804032, 0.380966, -0.456505,
		9.352265, 8.078718, 12.607727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.861481, 7.460860, 12.233951>,  <8.789443, 7.812041, 12.927280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.861481, 7.460860, 12.233951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.217669, 7.620211, 12.321909>,  <9.431383, 7.715822, 12.374684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.217669, 7.620211, 12.321909>,  <8.861481, 7.460860, 12.233951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.217669, 7.620211, 12.321909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444083, -0.866225, -0.229009,
		0.099246, 0.301578, -0.948262,
		0.890472, 0.398379, 0.219896,
		9.484811, 7.739725, 12.387877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.116615, 20.766783, 24.996603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.738167, 20.666216, 25.078228>,  <16.511097, 20.605877, 25.127203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.738167, 20.666216, 25.078228>,  <17.116615, 20.766783, 24.996603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738167, 20.666216, 25.078228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028857, 0.562222, 0.826483,
		-0.322519, 0.787843, -0.524676,
		-0.946123, -0.251416, 0.204062,
		16.454330, 20.590792, 25.139446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847303, 21.406784, 25.222115>,  <17.116615, 20.766783, 24.996603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847303, 21.406784, 25.222115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.586679, 21.132307, 25.351488>,  <16.430305, 20.967621, 25.429113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.586679, 21.132307, 25.351488>,  <16.847303, 21.406784, 25.222115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586679, 21.132307, 25.351488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060010, 0.471646, 0.879743,
		-0.756220, 0.553796, -0.348484,
		-0.651560, -0.686192, 0.323435,
		16.391211, 20.926449, 25.448519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265762, 21.784100, 25.552273>,  <16.847303, 21.406784, 25.222115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265762, 21.784100, 25.552273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.265127, 21.410473, 25.695110>,  <16.264746, 21.186296, 25.780813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.265127, 21.410473, 25.695110>,  <16.265762, 21.784100, 25.552273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265127, 21.410473, 25.695110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169630, 0.352170, 0.920435,
		-0.985506, -0.059113, -0.159005,
		-0.001587, -0.934067, 0.357094,
		16.264650, 21.130253, 25.802238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560281, 21.624226, 25.957935>,  <16.265762, 21.784100, 25.552273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560281, 21.624226, 25.957935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.874716, 21.402866, 26.068073>,  <16.063377, 21.270050, 26.134157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.874716, 21.402866, 26.068073>,  <15.560281, 21.624226, 25.957935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874716, 21.402866, 26.068073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138016, 0.277071, 0.950885,
		-0.602509, -0.785482, 0.141425,
		0.786088, -0.553398, 0.275347,
		16.110542, 21.236847, 26.150677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390619, 21.338249, 26.567007>,  <15.560281, 21.624226, 25.957935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390619, 21.338249, 26.567007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.784146, 21.270336, 26.589899>,  <16.020264, 21.229589, 26.603634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.784146, 21.270336, 26.589899>,  <15.390619, 21.338249, 26.567007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784146, 21.270336, 26.589899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037232, 0.118720, 0.992230,
		-0.175257, -0.978304, 0.110477,
		0.983818, -0.169782, 0.057231,
		16.079292, 21.219402, 26.607069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450850, 20.979334, 27.179594>,  <15.390619, 21.338249, 26.567007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.450850, 20.979334, 27.179594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.825238, 21.095345, 27.099751>,  <16.049871, 21.164951, 27.051846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.825238, 21.095345, 27.099751>,  <15.450850, 20.979334, 27.179594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825238, 21.095345, 27.099751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139187, 0.215953, 0.966432,
		0.323400, -0.932334, 0.161757,
		0.935970, 0.290030, -0.199608,
		16.106030, 21.182354, 27.039867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.872744, 20.703724, 27.676422>,  <15.450850, 20.979334, 27.179594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.872744, 20.703724, 27.676422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.094007, 21.007299, 27.539001>,  <16.226767, 21.189444, 27.456549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.094007, 21.007299, 27.539001>,  <15.872744, 20.703724, 27.676422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094007, 21.007299, 27.539001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353568, 0.159532, 0.921705,
		0.754323, -0.631320, -0.180089,
		0.553161, 0.758937, -0.343553,
		16.259956, 21.234980, 27.435936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505405, 20.591150, 27.921780>,  <15.872744, 20.703724, 27.676422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505405, 20.591150, 27.921780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.492750, 20.981026, 27.833250>,  <16.485157, 21.214951, 27.780132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.492750, 20.981026, 27.833250>,  <16.505405, 20.591150, 27.921780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492750, 20.981026, 27.833250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402050, 0.215142, 0.889983,
		0.915071, -0.060825, -0.398679,
		-0.031639, 0.974687, -0.221325,
		16.483259, 21.273432, 27.766853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.290607, 20.769808, 28.042435>,  <16.505405, 20.591150, 27.921780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.290607, 20.769808, 28.042435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.041073, 21.079973, 28.081547>,  <16.891352, 21.266073, 28.105015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.041073, 21.079973, 28.081547>,  <17.290607, 20.769808, 28.042435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041073, 21.079973, 28.081547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344421, 0.160449, 0.925003,
		0.701572, 0.610727, -0.367163,
		-0.623836, 0.775415, 0.097781,
		16.853922, 21.312597, 28.110882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762133, 21.215639, 28.322020>,  <17.290607, 20.769808, 28.042435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762133, 21.215639, 28.322020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.390343, 21.349115, 28.384920>,  <17.167269, 21.429201, 28.422661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.390343, 21.349115, 28.384920>,  <17.762133, 21.215639, 28.322020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390343, 21.349115, 28.384920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224892, 0.174682, 0.958598,
		0.292407, 0.926356, -0.237407,
		-0.929474, 0.333691, 0.157252,
		17.111500, 21.449223, 28.432096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.799297, 21.932934, 28.740587>,  <17.762133, 21.215639, 28.322020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.799297, 21.932934, 28.740587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.436481, 21.779165, 28.809292>,  <17.218792, 21.686905, 28.850513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.436481, 21.779165, 28.809292>,  <17.799297, 21.932934, 28.740587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436481, 21.779165, 28.809292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036214, 0.335196, 0.941452,
		-0.419488, 0.860153, -0.290115,
		-0.907038, -0.384422, 0.171760,
		17.164370, 21.663839, 28.860821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379068, 22.533985, 29.046930>,  <17.799297, 21.932934, 28.740587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379068, 22.533985, 29.046930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.207808, 22.191015, 29.161131>,  <17.105051, 21.985233, 29.229650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.207808, 22.191015, 29.161131>,  <17.379068, 22.533985, 29.046930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207808, 22.191015, 29.161131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012272, 0.310375, 0.950535,
		-0.903623, 0.410478, -0.122366,
		-0.428153, -0.857424, 0.285500,
		17.079361, 21.933788, 29.246780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.316868, 23.053215, 29.723610>,  <17.379068, 22.533985, 29.046930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.316868, 23.053215, 29.723610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.262560, 23.252436, 30.066191>,  <17.229975, 23.371967, 30.271740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.262560, 23.252436, 30.066191>,  <17.316868, 23.053215, 29.723610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262560, 23.252436, 30.066191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843001, 0.396079, -0.363965,
		-0.520496, -0.771407, 0.366082,
		-0.135768, 0.498049, 0.856454,
		17.221830, 23.401850, 30.323128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604624, 22.977800, 29.961433>,  <17.316868, 23.053215, 29.723610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604624, 22.977800, 29.961433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.765499, 23.322525, 30.085060>,  <16.862024, 23.529360, 30.159235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.765499, 23.322525, 30.085060>,  <16.604624, 22.977800, 29.961433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765499, 23.322525, 30.085060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694084, 0.507146, -0.510932,
		-0.597069, -0.009026, 0.802139,
		0.402190, 0.861813, 0.309066,
		16.886156, 23.581068, 30.177780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617767, 23.783087, 29.785151>,  <16.604624, 22.977800, 29.961433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617767, 23.783087, 29.785151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.244970, 23.921741, 29.827547>,  <16.021292, 24.004934, 29.852985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.244970, 23.921741, 29.827547>,  <16.617767, 23.783087, 29.785151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244970, 23.921741, 29.827547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219245, -0.306215, -0.926371,
		-0.288659, -0.886608, 0.361388,
		-0.931991, 0.346638, 0.105992,
		15.965373, 24.025732, 29.859344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178719, 23.247417, 29.385979>,  <16.617767, 23.783087, 29.785151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.178719, 23.247417, 29.385979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.995962, 23.600946, 29.426199>,  <15.886309, 23.813063, 29.450331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.995962, 23.600946, 29.426199>,  <16.178719, 23.247417, 29.385979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995962, 23.600946, 29.426199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472249, -0.145217, -0.869421,
		-0.753811, -0.444715, 0.483732,
		-0.456891, 0.883821, 0.100550,
		15.858894, 23.866093, 29.456364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604506, 23.122837, 29.006664>,  <16.178719, 23.247417, 29.385979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.604506, 23.122837, 29.006664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.580544, 23.520533, 29.042215>,  <15.566168, 23.759150, 29.063547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.580544, 23.520533, 29.042215>,  <15.604506, 23.122837, 29.006664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580544, 23.520533, 29.042215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508536, 0.046221, -0.859799,
		-0.858954, -0.096703, 0.502838,
		-0.059904, 0.994239, 0.088879,
		15.562573, 23.818804, 29.068878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898082, 23.268923, 28.907743>,  <15.604506, 23.122837, 29.006664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898082, 23.268923, 28.907743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.112106, 23.592213, 28.809372>,  <15.240521, 23.786186, 28.750349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.112106, 23.592213, 28.809372>,  <14.898082, 23.268923, 28.907743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112106, 23.592213, 28.809372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480952, 0.052092, -0.875198,
		-0.694546, 0.586565, 0.416590,
		0.535061, 0.808225, -0.245929,
		15.272625, 23.834681, 28.735594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544077, 23.772131, 28.679874>,  <14.898082, 23.268923, 28.907743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544077, 23.772131, 28.679874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.871841, 23.913174, 28.499105>,  <15.068501, 23.997799, 28.390644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.871841, 23.913174, 28.499105>,  <14.544077, 23.772131, 28.679874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.871841, 23.913174, 28.499105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496234, 0.041748, -0.867184,
		-0.286908, 0.934840, 0.209184,
		0.819412, 0.352606, -0.451922,
		15.117665, 24.018955, 28.363529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355816, 24.284290, 28.345976>,  <14.544077, 23.772131, 28.679874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.355816, 24.284290, 28.345976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.699059, 24.171564, 28.174288>,  <14.905005, 24.103928, 28.071274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.699059, 24.171564, 28.174288>,  <14.355816, 24.284290, 28.345976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699059, 24.171564, 28.174288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394296, 0.173806, -0.902398,
		0.328911, 0.943595, 0.038025,
		0.858107, -0.281815, -0.429223,
		14.956491, 24.087019, 28.045521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.465346, 24.760826, 27.857885>,  <14.355816, 24.284290, 28.345976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.465346, 24.760826, 27.857885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.688070, 24.450842, 27.738287>,  <14.821705, 24.264851, 27.666529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.688070, 24.450842, 27.738287>,  <14.465346, 24.760826, 27.857885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688070, 24.450842, 27.738287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338097, 0.117341, -0.933767,
		0.758718, 0.621020, -0.196675,
		0.556810, -0.774962, -0.298994,
		14.855113, 24.218353, 27.648588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697473, 24.910423, 27.272568>,  <14.465346, 24.760826, 27.857885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697473, 24.910423, 27.272568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.786086, 24.520493, 27.262449>,  <14.839254, 24.286535, 27.256378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.786086, 24.520493, 27.262449>,  <14.697473, 24.910423, 27.272568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786086, 24.520493, 27.262449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295582, -0.042409, -0.954375,
		0.929276, 0.218904, -0.297536,
		0.221535, -0.974824, -0.025294,
		14.852547, 24.228045, 27.254862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141156, 24.861670, 26.695026>,  <14.697473, 24.910423, 27.272568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141156, 24.861670, 26.695026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.964195, 24.514891, 26.786839>,  <14.858019, 24.306824, 26.841927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.964195, 24.514891, 26.786839>,  <15.141156, 24.861670, 26.695026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964195, 24.514891, 26.786839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352635, -0.067162, -0.933348,
		0.824578, -0.493856, -0.276003,
		-0.442402, -0.866946, 0.229531,
		14.831474, 24.254807, 26.855698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.375249, 24.469620, 26.137747>,  <15.141156, 24.861670, 26.695026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.375249, 24.469620, 26.137747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.088352, 24.246422, 26.304699>,  <14.916214, 24.112503, 26.404871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.088352, 24.246422, 26.304699>,  <15.375249, 24.469620, 26.137747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.088352, 24.246422, 26.304699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227852, -0.378247, -0.897225,
		0.658519, -0.738629, 0.144155,
		-0.717242, -0.557993, 0.417381,
		14.873179, 24.079023, 26.429913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495129, 23.769361, 25.829571>,  <15.375249, 24.469620, 26.137747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495129, 23.769361, 25.829571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.117496, 23.756882, 25.960865>,  <14.890918, 23.749393, 26.039642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.117496, 23.756882, 25.960865>,  <15.495129, 23.769361, 25.829571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117496, 23.756882, 25.960865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257576, -0.551688, -0.793281,
		0.205834, -0.833467, 0.512802,
		-0.944080, -0.031199, 0.328238,
		14.834272, 23.747522, 26.059336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329638, 23.069918, 25.740685>,  <15.495129, 23.769361, 25.829571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329638, 23.069918, 25.740685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.987279, 23.276560, 25.731285>,  <14.781863, 23.400545, 25.725645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.987279, 23.276560, 25.731285>,  <15.329638, 23.069918, 25.740685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.987279, 23.276560, 25.731285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313567, -0.554571, -0.770796,
		-0.411229, -0.652357, 0.636648,
		-0.855901, 0.516606, -0.023498,
		14.730509, 23.431541, 25.724236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.719880, 22.554333, 25.626780>,  <15.329638, 23.069918, 25.740685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.719880, 22.554333, 25.626780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.555064, 22.911734, 25.555361>,  <14.456175, 23.126175, 25.512510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.555064, 22.911734, 25.555361>,  <14.719880, 22.554333, 25.626780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555064, 22.911734, 25.555361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521046, -0.391807, -0.758286,
		-0.747486, -0.219412, 0.626996,
		-0.412038, 0.893502, -0.178546,
		14.431453, 23.179785, 25.501797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896439, 22.483498, 25.590824>,  <14.719880, 22.554333, 25.626780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896439, 22.483498, 25.590824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.040071, 22.790564, 25.378502>,  <14.126251, 22.974802, 25.251108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.040071, 22.790564, 25.378502>,  <13.896439, 22.483498, 25.590824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040071, 22.790564, 25.378502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376647, -0.401172, -0.834984,
		-0.853930, 0.499754, 0.145084,
		0.359083, 0.767663, -0.530804,
		14.147797, 23.020863, 25.219261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232960, 22.288418, 25.833090>,  <13.896439, 22.483498, 25.590824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232960, 22.288418, 25.833090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.850836, 22.177732, 25.874687>,  <12.621561, 22.111322, 25.899645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.850836, 22.177732, 25.874687>,  <13.232960, 22.288418, 25.833090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850836, 22.177732, 25.874687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075929, 0.110292, 0.990995,
		-0.285690, 0.954603, -0.084352,
		-0.955310, -0.276712, 0.103991,
		12.564243, 22.094719, 25.905884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.737514, 22.860445, 26.266579>,  <13.232960, 22.288418, 25.833090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.737514, 22.860445, 26.266579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.635284, 22.475775, 26.306311>,  <12.573947, 22.244972, 26.330151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.635284, 22.475775, 26.306311>,  <12.737514, 22.860445, 26.266579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.635284, 22.475775, 26.306311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132347, 0.066976, 0.988938,
		-0.957688, 0.265892, 0.110158,
		-0.255572, -0.961673, 0.099332,
		12.558613, 22.187273, 26.336111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.215140, 22.804070, 26.801355>,  <12.737514, 22.860445, 26.266579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.215140, 22.804070, 26.801355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.391797, 22.448452, 26.753099>,  <12.497791, 22.235081, 26.724146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.391797, 22.448452, 26.753099>,  <12.215140, 22.804070, 26.801355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.391797, 22.448452, 26.753099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258330, -0.002764, 0.966053,
		-0.859196, -0.457815, 0.228446,
		0.441642, -0.889043, -0.120642,
		12.524290, 22.181740, 26.716908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836142, 22.531069, 27.327923>,  <12.215140, 22.804070, 26.801355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836142, 22.531069, 27.327923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.140453, 22.278996, 27.265842>,  <12.323040, 22.127752, 27.228594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.140453, 22.278996, 27.265842>,  <11.836142, 22.531069, 27.327923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.140453, 22.278996, 27.265842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203601, 0.004678, 0.979043,
		-0.616249, -0.776434, 0.131865,
		0.760779, -0.630181, -0.155200,
		12.368687, 22.089941, 27.219282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.802242, 21.995306, 27.818907>,  <11.836142, 22.531069, 27.327923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.802242, 21.995306, 27.818907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.173453, 21.932926, 27.683588>,  <12.396180, 21.895498, 27.602396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.173453, 21.932926, 27.683588>,  <11.802242, 21.995306, 27.818907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.173453, 21.932926, 27.683588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292114, -0.258883, 0.920679,
		-0.231154, -0.953237, -0.194698,
		0.928029, -0.155945, -0.338296,
		12.451861, 21.886141, 27.582100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.009017, 21.381220, 28.077232>,  <11.802242, 21.995306, 27.818907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.009017, 21.381220, 28.077232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.326042, 21.613947, 28.004204>,  <12.516257, 21.753584, 27.960386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.326042, 21.613947, 28.004204>,  <12.009017, 21.381220, 28.077232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.326042, 21.613947, 28.004204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335652, -0.166287, 0.927193,
		0.509099, -0.796138, -0.327081,
		0.792563, 0.581818, -0.182569,
		12.563811, 21.788492, 27.949432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.695289, 21.037699, 28.305950>,  <12.009017, 21.381220, 28.077232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.695289, 21.037699, 28.305950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.762561, 21.431732, 28.291399>,  <12.802924, 21.668152, 28.282669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.762561, 21.431732, 28.291399>,  <12.695289, 21.037699, 28.305950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.762561, 21.431732, 28.291399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468290, -0.047368, 0.882304,
		0.867421, -0.165422, -0.469272,
		0.168181, 0.985085, -0.036377,
		12.813015, 21.727257, 28.280485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114676, 20.383009, 28.451464>,  <12.695289, 21.037699, 28.305950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114676, 20.383009, 28.451464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.913841, 20.058338, 28.570854>,  <12.793340, 19.863535, 28.642488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.913841, 20.058338, 28.570854>,  <13.114676, 20.383009, 28.451464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913841, 20.058338, 28.570854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290864, -0.166533, -0.942160,
		0.814436, -0.559862, -0.152474,
		-0.502087, -0.811678, 0.298474,
		12.763215, 19.814835, 28.660397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.240458, 19.909100, 27.957727>,  <13.114676, 20.383009, 28.451464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.240458, 19.909100, 27.957727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.945056, 19.733690, 28.162590>,  <12.767815, 19.628445, 28.285507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.945056, 19.733690, 28.162590>,  <13.240458, 19.909100, 27.957727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.945056, 19.733690, 28.162590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400285, -0.326099, -0.856406,
		0.542570, -0.837470, 0.065291,
		-0.738505, -0.438525, 0.512158,
		12.723504, 19.602133, 28.316236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.322682, 19.186731, 27.836161>,  <13.240458, 19.909100, 27.957727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.322682, 19.186731, 27.836161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.944872, 19.296965, 27.907631>,  <12.718185, 19.363106, 27.950514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.944872, 19.296965, 27.907631>,  <13.322682, 19.186731, 27.836161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944872, 19.296965, 27.907631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307384, -0.550071, -0.776490,
		-0.115702, -0.788337, 0.604266,
		-0.944525, 0.275584, 0.178677,
		12.661514, 19.379641, 27.961233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.885147, 18.647032, 27.542526>,  <13.322682, 19.186731, 27.836161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.885147, 18.647032, 27.542526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.639505, 18.956196, 27.606380>,  <12.492120, 19.141695, 27.644693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.639505, 18.956196, 27.606380>,  <12.885147, 18.647032, 27.542526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.639505, 18.956196, 27.606380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521728, -0.245801, -0.816935,
		-0.592178, -0.584971, 0.554197,
		-0.614105, 0.772911, 0.159637,
		12.455274, 19.188068, 27.654272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.134026, 18.351696, 27.509142>,  <12.885147, 18.647032, 27.542526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.134026, 18.351696, 27.509142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.076622, 18.745537, 27.469213>,  <12.042180, 18.981842, 27.445257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.076622, 18.745537, 27.469213>,  <12.134026, 18.351696, 27.509142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.076622, 18.745537, 27.469213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652805, -0.169990, -0.738206,
		-0.743808, -0.040775, 0.667148,
		-0.143509, 0.984602, -0.099822,
		12.033569, 19.040916, 27.439266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.391094, 18.408035, 27.495331>,  <12.134026, 18.351696, 27.509142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.391094, 18.408035, 27.495331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.555620, 18.739986, 27.344534>,  <11.654336, 18.939157, 27.254057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.555620, 18.739986, 27.344534>,  <11.391094, 18.408035, 27.495331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.555620, 18.739986, 27.344534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546769, -0.106280, -0.830511,
		-0.729289, 0.547729, 0.410037,
		0.411316, 0.829878, -0.376990,
		11.679015, 18.988951, 27.231438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815720, 18.934654, 27.309315>,  <11.391094, 18.408035, 27.495331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815720, 18.934654, 27.309315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.146669, 19.007772, 27.096886>,  <11.345240, 19.051643, 26.969429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.146669, 19.007772, 27.096886>,  <10.815720, 18.934654, 27.309315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.146669, 19.007772, 27.096886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470758, -0.290018, -0.833233,
		-0.306330, 0.939402, -0.153902,
		0.827375, 0.182794, -0.531072,
		11.394882, 19.062611, 26.937565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<19.369093, 19.788734, 27.690742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.756283, 19.820383, 27.595444>,  <19.988598, 19.839373, 27.538265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.756283, 19.820383, 27.595444>,  <19.369093, 19.788734, 27.690742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756283, 19.820383, 27.595444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152523, -0.568443, -0.808461,
		-0.199395, 0.818909, -0.538171,
		0.967976, 0.079120, -0.238248,
		20.046677, 19.844118, 27.523970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385729, 19.681068, 27.037243>,  <19.369093, 19.788734, 27.690742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.385729, 19.681068, 27.037243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.782320, 19.707123, 27.082363>,  <20.020275, 19.722755, 27.109436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.782320, 19.707123, 27.082363>,  <19.385729, 19.681068, 27.037243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782320, 19.707123, 27.082363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127169, -0.296589, -0.946500,
		-0.028193, 0.952781, -0.302345,
		0.991480, 0.065134, 0.112803,
		20.079763, 19.726664, 27.116203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161339, 19.863241, 26.391989>,  <19.385729, 19.681068, 27.037243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161339, 19.863241, 26.391989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.844646, 20.018705, 26.580500>,  <18.654631, 20.111984, 26.693607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.844646, 20.018705, 26.580500>,  <19.161339, 19.863241, 26.391989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844646, 20.018705, 26.580500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488179, 0.061200, -0.870595,
		-0.367208, -0.919346, 0.141282,
		-0.791732, 0.388660, 0.471279,
		18.607126, 20.135303, 26.721884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520197, 19.831066, 25.894411>,  <19.161339, 19.863241, 26.391989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.520197, 19.831066, 25.894411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.253063, 19.677710, 26.149601>,  <18.092783, 19.585695, 26.302715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.253063, 19.677710, 26.149601>,  <18.520197, 19.831066, 25.894411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.253063, 19.677710, 26.149601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744156, 0.326493, -0.582782,
		0.015139, -0.863953, -0.503345,
		-0.667834, -0.383390, 0.637972,
		18.052713, 19.562693, 26.340992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991404, 19.447020, 25.461853>,  <18.520197, 19.831066, 25.894411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991404, 19.447020, 25.461853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.806164, 19.555367, 25.799414>,  <17.695019, 19.620375, 26.001949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.806164, 19.555367, 25.799414>,  <17.991404, 19.447020, 25.461853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806164, 19.555367, 25.799414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802449, 0.276135, -0.528984,
		-0.376315, -0.922161, 0.089477,
		-0.463101, 0.270866, 0.843901,
		17.667234, 19.636625, 26.052584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525679, 19.084948, 25.683832>,  <17.991404, 19.447020, 25.461853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525679, 19.084948, 25.683832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.382673, 19.422251, 25.844381>,  <17.296871, 19.624632, 25.940712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.382673, 19.422251, 25.844381>,  <17.525679, 19.084948, 25.683832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382673, 19.422251, 25.844381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794042, -0.048227, -0.605946,
		-0.491612, -0.535341, 0.686825,
		-0.357511, 0.843258, 0.401374,
		17.275419, 19.675228, 25.964794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753790, 19.019506, 26.008139>,  <17.525679, 19.084948, 25.683832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753790, 19.019506, 26.008139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.857544, 19.370136, 25.845987>,  <16.919796, 19.580515, 25.748695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.857544, 19.370136, 25.845987>,  <16.753790, 19.019506, 26.008139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857544, 19.370136, 25.845987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825438, -0.016686, -0.564246,
		-0.501369, 0.480974, 0.719231,
		0.259387, 0.876576, -0.405380,
		16.935360, 19.633110, 25.724373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175110, 19.233128, 26.354479>,  <16.753790, 19.019506, 26.008139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.175110, 19.233128, 26.354479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.927921, 19.047098, 26.608036>,  <15.779608, 18.935480, 26.760170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.927921, 19.047098, 26.608036>,  <16.175110, 19.233128, 26.354479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927921, 19.047098, 26.608036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172978, -0.706086, -0.686674,
		0.766934, -0.533995, 0.355894,
		-0.617973, -0.465072, 0.633891,
		15.742530, 18.907578, 26.798203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330160, 18.496183, 26.261225>,  <16.175110, 19.233128, 26.354479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330160, 18.496183, 26.261225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.980576, 18.470850, 26.453964>,  <15.770824, 18.455650, 26.569609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.980576, 18.470850, 26.453964>,  <16.330160, 18.496183, 26.261225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980576, 18.470850, 26.453964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347865, -0.610849, -0.711234,
		0.339381, -0.789210, 0.511828,
		-0.873963, -0.063332, 0.481848,
		15.718387, 18.451851, 26.598518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125481, 17.757835, 26.391699>,  <16.330160, 18.496183, 26.261225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125481, 17.757835, 26.391699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.775416, 17.951088, 26.402142>,  <15.565378, 18.067039, 26.408407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.775416, 17.951088, 26.402142>,  <16.125481, 17.757835, 26.391699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775416, 17.951088, 26.402142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360333, -0.614812, -0.701546,
		-0.322887, -0.623372, 0.712146,
		-0.875159, 0.483129, 0.026107,
		15.512869, 18.096027, 26.409973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653203, 17.286564, 26.304926>,  <16.125481, 17.757835, 26.391699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653203, 17.286564, 26.304926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.419834, 17.601845, 26.226589>,  <15.279813, 17.791014, 26.179588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.419834, 17.601845, 26.226589>,  <15.653203, 17.286564, 26.304926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419834, 17.601845, 26.226589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400151, -0.488800, -0.775212,
		-0.706752, -0.373910, 0.600577,
		-0.583421, 0.788205, -0.195840,
		15.244808, 17.838306, 26.167837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054707, 17.009571, 26.235775>,  <15.653203, 17.286564, 26.304926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054707, 17.009571, 26.235775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.045847, 17.356167, 26.036295>,  <15.040531, 17.564125, 25.916607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.045847, 17.356167, 26.036295>,  <15.054707, 17.009571, 26.235775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045847, 17.356167, 26.036295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350741, -0.473852, -0.807741,
		-0.936211, 0.157024, 0.314409,
		-0.022148, 0.866492, -0.498700,
		15.039203, 17.616114, 25.886684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972433, 16.609388, 26.802103>,  <15.054707, 17.009571, 26.235775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972433, 16.609388, 26.802103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.652285, 16.399591, 26.918251>,  <14.460196, 16.273714, 26.987940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.652285, 16.399591, 26.918251>,  <14.972433, 16.609388, 26.802103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652285, 16.399591, 26.918251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056883, 0.415723, 0.907711,
		-0.596799, 0.743024, -0.302898,
		-0.800372, -0.524491, 0.290369,
		14.412173, 16.242245, 27.005362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.557323, 17.095161, 27.147034>,  <14.972433, 16.609388, 26.802103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.557323, 17.095161, 27.147034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454210, 16.732580, 27.280834>,  <14.392343, 16.515032, 27.361115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454210, 16.732580, 27.280834>,  <14.557323, 17.095161, 27.147034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454210, 16.732580, 27.280834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201516, 0.288151, 0.936141,
		-0.944955, 0.308727, 0.108385,
		-0.257781, -0.906453, 0.334503,
		14.376876, 16.460644, 27.381186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.154613, 17.258093, 27.706604>,  <14.557323, 17.095161, 27.147034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.154613, 17.258093, 27.706604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.295404, 16.884529, 27.731659>,  <14.379879, 16.660391, 27.746691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.295404, 16.884529, 27.731659>,  <14.154613, 17.258093, 27.706604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295404, 16.884529, 27.731659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101961, 0.104775, 0.989255,
		-0.930438, -0.341810, 0.132101,
		0.351978, -0.933910, 0.062636,
		14.400998, 16.604357, 27.750450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737633, 16.903315, 28.224543>,  <14.154613, 17.258093, 27.706604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737633, 16.903315, 28.224543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.093273, 16.721378, 28.204081>,  <14.306658, 16.612217, 28.191803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.093273, 16.721378, 28.204081>,  <13.737633, 16.903315, 28.224543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093273, 16.721378, 28.204081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195077, 0.275462, 0.941311,
		-0.414056, -0.846900, 0.333643,
		0.889102, -0.454841, -0.051154,
		14.360003, 16.584927, 28.188734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826806, 16.558989, 28.899652>,  <13.737633, 16.903315, 28.224543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826806, 16.558989, 28.899652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.189393, 16.573669, 28.731380>,  <14.406945, 16.582478, 28.630417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.189393, 16.573669, 28.731380>,  <13.826806, 16.558989, 28.899652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189393, 16.573669, 28.731380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407604, 0.184291, 0.894369,
		0.110354, -0.982186, 0.152093,
		0.906466, 0.036703, -0.420681,
		14.461333, 16.584681, 28.605177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228906, 16.405590, 29.363722>,  <13.826806, 16.558989, 28.899652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228906, 16.405590, 29.363722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.503382, 16.563551, 29.119362>,  <14.668067, 16.658327, 28.972746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.503382, 16.563551, 29.119362>,  <14.228906, 16.405590, 29.363722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.503382, 16.563551, 29.119362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413644, 0.478988, 0.774254,
		0.598367, -0.783979, 0.165328,
		0.686189, 0.394901, -0.610899,
		14.709239, 16.682020, 28.936092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803175, 16.388128, 29.860247>,  <14.228906, 16.405590, 29.363722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803175, 16.388128, 29.860247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.895211, 16.627670, 29.553410>,  <14.950433, 16.771397, 29.369308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.895211, 16.627670, 29.553410>,  <14.803175, 16.388128, 29.860247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.895211, 16.627670, 29.553410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597383, 0.535338, 0.597117,
		0.768240, -0.595638, -0.234570,
		0.230092, 0.598857, -0.767091,
		14.964239, 16.807327, 29.323282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.533060, 16.382191, 29.815224>,  <14.803175, 16.388128, 29.860247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.533060, 16.382191, 29.815224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.369260, 16.713684, 29.662642>,  <15.270980, 16.912580, 29.571093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.369260, 16.713684, 29.662642>,  <15.533060, 16.382191, 29.815224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369260, 16.713684, 29.662642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512343, 0.554864, 0.655462,
		0.754860, 0.072976, -0.651814,
		-0.409501, 0.828734, -0.381456,
		15.246409, 16.962305, 29.548204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163828, 16.795740, 29.728697>,  <15.533060, 16.382191, 29.815224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163828, 16.795740, 29.728697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.843804, 17.035606, 29.721676>,  <15.651791, 17.179527, 29.717463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.843804, 17.035606, 29.721676>,  <16.163828, 16.795740, 29.728697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.843804, 17.035606, 29.721676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480832, 0.658459, 0.578992,
		0.358760, 0.454787, -0.815144,
		-0.800057, 0.599667, -0.017553,
		15.603787, 17.215506, 29.716410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415222, 17.564795, 29.671288>,  <16.163828, 16.795740, 29.728697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415222, 17.564795, 29.671288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.045835, 17.577570, 29.824224>,  <15.824203, 17.585236, 29.915987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.045835, 17.577570, 29.824224>,  <16.415222, 17.564795, 29.671288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045835, 17.577570, 29.824224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266892, 0.769387, 0.580355,
		-0.275634, 0.637984, -0.719029,
		-0.923469, 0.031938, 0.382342,
		15.768795, 17.587151, 29.938927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278374, 18.277283, 29.628420>,  <16.415222, 17.564795, 29.671288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278374, 18.277283, 29.628420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.045589, 18.118132, 29.912115>,  <15.905919, 18.022642, 30.082333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.045589, 18.118132, 29.912115>,  <16.278374, 18.277283, 29.628420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045589, 18.118132, 29.912115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272960, 0.725968, 0.631239,
		-0.766038, 0.560950, -0.313881,
		-0.581961, -0.397876, 0.709236,
		15.871001, 17.998768, 30.124886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977658, 18.831234, 29.915119>,  <16.278374, 18.277283, 29.628420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977658, 18.831234, 29.915119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.889927, 18.561363, 30.197029>,  <15.837288, 18.399441, 30.366175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.889927, 18.561363, 30.197029>,  <15.977658, 18.831234, 29.915119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889927, 18.561363, 30.197029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194473, 0.677636, 0.709218,
		-0.956073, 0.292610, -0.017418,
		-0.219327, -0.674677, 0.704774,
		15.824129, 18.358959, 30.408461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513070, 19.134464, 30.448723>,  <15.977658, 18.831234, 29.915119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.513070, 19.134464, 30.448723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.662461, 18.816216, 30.639511>,  <15.752096, 18.625267, 30.753984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.662461, 18.816216, 30.639511>,  <15.513070, 19.134464, 30.448723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662461, 18.816216, 30.639511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240507, 0.579646, 0.778567,
		-0.895919, -0.176063, 0.407837,
		0.373478, -0.795621, 0.476972,
		15.774505, 18.577530, 30.782602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.160380, 19.120411, 31.118467>,  <15.513070, 19.134464, 30.448723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.160380, 19.120411, 31.118467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.509575, 18.929766, 31.159904>,  <15.719091, 18.815378, 31.184767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.509575, 18.929766, 31.159904>,  <15.160380, 19.120411, 31.118467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.509575, 18.929766, 31.159904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078017, 0.346114, 0.934943,
		-0.481463, -0.808111, 0.339338,
		0.872987, -0.476614, 0.103594,
		15.771471, 18.786781, 31.190983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.620834, 18.768108, 30.754503>,  <15.160380, 19.120411, 31.118467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.620834, 18.768108, 30.754503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.411076, 19.088392, 30.870344>,  <14.285220, 19.280563, 30.939850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.411076, 19.088392, 30.870344>,  <14.620834, 18.768108, 30.754503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411076, 19.088392, 30.870344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807268, -0.359365, -0.468162,
		-0.270789, -0.479291, 0.834837,
		-0.524397, 0.800710, 0.289604,
		14.253757, 19.328606, 30.957226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881873, 18.633904, 30.712875>,  <14.620834, 18.768108, 30.754503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881873, 18.633904, 30.712875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.855390, 19.027523, 30.778917>,  <13.839499, 19.263695, 30.818542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.855390, 19.027523, 30.778917>,  <13.881873, 18.633904, 30.712875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.855390, 19.027523, 30.778917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738066, 0.063053, -0.671776,
		-0.671472, -0.166337, 0.722120,
		-0.066209, 0.984051, 0.165106,
		13.835526, 19.322739, 30.828449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.204139, 18.835052, 30.856579>,  <13.881873, 18.633904, 30.712875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.204139, 18.835052, 30.856579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.380134, 19.160074, 30.703651>,  <13.485731, 19.355087, 30.611895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.380134, 19.160074, 30.703651>,  <13.204139, 18.835052, 30.856579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380134, 19.160074, 30.703651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695135, 0.038654, -0.717840,
		-0.568506, 0.581602, 0.581842,
		0.439988, 0.812555, -0.382317,
		13.512130, 19.403841, 30.588957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629734, 19.362856, 30.706699>,  <13.204139, 18.835052, 30.856579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629734, 19.362856, 30.706699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.959047, 19.451847, 30.497812>,  <13.156635, 19.505241, 30.372480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.959047, 19.451847, 30.497812>,  <12.629734, 19.362856, 30.706699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959047, 19.451847, 30.497812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564025, 0.217072, -0.796716,
		-0.063895, 0.950464, 0.304195,
		0.823282, 0.222479, -0.522216,
		13.206032, 19.518591, 30.341148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375674, 19.882797, 30.289812>,  <12.629734, 19.362856, 30.706699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375674, 19.882797, 30.289812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.713321, 19.790155, 30.096390>,  <12.915909, 19.734571, 29.980335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.713321, 19.790155, 30.096390>,  <12.375674, 19.882797, 30.289812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713321, 19.790155, 30.096390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413581, 0.292680, -0.862142,
		0.341202, 0.927739, 0.151269,
		0.844116, -0.231603, -0.483558,
		12.966556, 19.720675, 29.951323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.506145, 20.362408, 29.817425>,  <12.375674, 19.882797, 30.289812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.506145, 20.362408, 29.817425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.724574, 20.061905, 29.669144>,  <12.855631, 19.881603, 29.580175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.724574, 20.061905, 29.669144>,  <12.506145, 20.362408, 29.817425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724574, 20.061905, 29.669144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418730, 0.138496, -0.897488,
		0.725584, 0.645317, -0.238945,
		0.546071, -0.751256, -0.370704,
		12.888395, 19.836529, 29.557932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.752780, 20.627457, 29.079603>,  <12.506145, 20.362408, 29.817425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.752780, 20.627457, 29.079603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.782082, 20.228811, 29.094555>,  <12.799663, 19.989624, 29.103527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.782082, 20.228811, 29.094555>,  <12.752780, 20.627457, 29.079603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.782082, 20.228811, 29.094555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295474, -0.057487, -0.953620,
		0.952538, 0.058812, -0.298684,
		0.073255, -0.996612, 0.037381,
		12.804058, 19.929827, 29.105770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315635, 21.217207, 28.845154>,  <12.752780, 20.627457, 29.079603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315635, 21.217207, 28.845154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.215124, 21.589966, 28.740520>,  <13.154818, 21.813622, 28.677740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.215124, 21.589966, 28.740520>,  <13.315635, 21.217207, 28.845154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215124, 21.589966, 28.740520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366926, 0.341792, 0.865184,
		0.895670, 0.121420, -0.427822,
		-0.251277, 0.931899, -0.261581,
		13.139741, 21.869535, 28.662046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.898511, 21.556324, 28.950422>,  <13.315635, 21.217207, 28.845154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.898511, 21.556324, 28.950422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.619868, 21.843060, 28.962276>,  <13.452682, 22.015100, 28.969389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.619868, 21.843060, 28.962276>,  <13.898511, 21.556324, 28.950422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619868, 21.843060, 28.962276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402424, 0.356202, 0.843312,
		0.593964, 0.599383, -0.536607,
		-0.696608, 0.716840, 0.029635,
		13.410886, 22.058111, 28.971167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243636, 22.163572, 29.001068>,  <13.898511, 21.556324, 28.950422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243636, 22.163572, 29.001068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.883408, 22.265144, 29.142200>,  <13.667271, 22.326088, 29.226879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.883408, 22.265144, 29.142200>,  <14.243636, 22.163572, 29.001068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883408, 22.265144, 29.142200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434610, 0.543133, 0.718415,
		-0.009205, 0.800328, -0.599492,
		-0.900572, 0.253932, 0.352830,
		13.613236, 22.341324, 29.248049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208695, 22.933851, 29.202753>,  <14.243636, 22.163572, 29.001068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208695, 22.933851, 29.202753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.953363, 22.725058, 29.429050>,  <13.800164, 22.599781, 29.564829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.953363, 22.725058, 29.429050>,  <14.208695, 22.933851, 29.202753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953363, 22.725058, 29.429050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278974, 0.528120, 0.802037,
		-0.717433, 0.669791, -0.191494,
		-0.638329, -0.521986, 0.565745,
		13.761865, 22.568462, 29.598774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151857, 23.302942, 29.747232>,  <14.208695, 22.933851, 29.202753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151857, 23.302942, 29.747232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.947732, 22.991884, 29.894117>,  <13.825257, 22.805248, 29.982248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.947732, 22.991884, 29.894117>,  <14.151857, 23.302942, 29.747232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.947732, 22.991884, 29.894117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288827, 0.247217, 0.924912,
		-0.810037, 0.578056, 0.098448,
		-0.510313, -0.777647, 0.367213,
		13.794638, 22.758591, 30.004282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842579, 23.549469, 30.296684>,  <14.151857, 23.302942, 29.747232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842579, 23.549469, 30.296684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.891610, 23.154125, 30.332737>,  <13.921029, 22.916920, 30.354368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.891610, 23.154125, 30.332737>,  <13.842579, 23.549469, 30.296684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.891610, 23.154125, 30.332737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349946, 0.128025, 0.927980,
		-0.928716, -0.082209, 0.361565,
		0.122577, -0.988358, 0.090130,
		13.928384, 22.857618, 30.359776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.456060, 23.313131, 30.823534>,  <13.842579, 23.549469, 30.296684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.456060, 23.313131, 30.823534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.760765, 23.059481, 30.770466>,  <13.943587, 22.907290, 30.738625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.760765, 23.059481, 30.770466>,  <13.456060, 23.313131, 30.823534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760765, 23.059481, 30.770466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286326, 0.145830, 0.946969,
		-0.581152, -0.759352, 0.292655,
		0.761761, -0.634128, -0.132672,
		13.989293, 22.869242, 30.730663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524751, 23.177822, 31.567026>,  <13.456060, 23.313131, 30.823534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524751, 23.177822, 31.567026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.845739, 23.036562, 31.374641>,  <14.038332, 22.951805, 31.259211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.845739, 23.036562, 31.374641>,  <13.524751, 23.177822, 31.567026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.845739, 23.036562, 31.374641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581760, 0.283863, 0.762219,
		-0.132650, -0.891464, 0.433240,
		0.802471, -0.353150, -0.480964,
		14.086480, 22.930616, 31.230352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.879458, 22.821321, 32.134373>,  <13.524751, 23.177822, 31.567026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.879458, 22.821321, 32.134373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.137087, 22.882830, 31.834633>,  <14.291664, 22.919735, 31.654789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.137087, 22.882830, 31.834633>,  <13.879458, 22.821321, 32.134373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.137087, 22.882830, 31.834633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608123, 0.491347, 0.623510,
		0.464069, -0.857283, 0.222951,
		0.644071, 0.153770, -0.749352,
		14.330308, 22.928961, 31.609827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<11.687112, 17.620285, 17.073114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985189, 17.828863, 16.906847>,  <12.164036, 17.954010, 16.807087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985189, 17.828863, 16.906847>,  <11.687112, 17.620285, 17.073114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985189, 17.828863, 16.906847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079433, 0.549486, 0.831719,
		0.662102, -0.652808, 0.368052,
		0.745192, 0.521447, -0.415670,
		12.208747, 17.985296, 16.782146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.271504, 17.493629, 17.429621>,  <11.687112, 17.620285, 17.073114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.271504, 17.493629, 17.429621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306249, 17.848549, 17.248446>,  <12.327095, 18.061501, 17.139740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306249, 17.848549, 17.248446>,  <12.271504, 17.493629, 17.429621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306249, 17.848549, 17.248446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014956, 0.455769, 0.889972,
		0.996108, -0.070529, 0.052859,
		0.086861, 0.887299, -0.452940,
		12.332307, 18.114738, 17.112564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.935434, 17.869724, 17.733385>,  <12.271504, 17.493629, 17.429621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.935434, 17.869724, 17.733385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696615, 18.144939, 17.568392>,  <12.553324, 18.310068, 17.469397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696615, 18.144939, 17.568392>,  <12.935434, 17.869724, 17.733385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696615, 18.144939, 17.568392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117384, 0.583579, 0.803527,
		0.793572, 0.431325, -0.429189,
		-0.597047, 0.688037, -0.412481,
		12.517501, 18.351351, 17.444647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182994, 18.405910, 18.045286>,  <12.935434, 17.869724, 17.733385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182994, 18.405910, 18.045286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836105, 18.528004, 17.887928>,  <12.627972, 18.601259, 17.793512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836105, 18.528004, 17.887928>,  <13.182994, 18.405910, 18.045286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836105, 18.528004, 17.887928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202952, 0.504779, 0.839052,
		0.454683, 0.807485, -0.375808,
		-0.867222, 0.305232, -0.393395,
		12.575939, 18.619574, 17.769909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.085835, 19.054567, 18.332830>,  <13.182994, 18.405910, 18.045286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.085835, 19.054567, 18.332830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.716075, 18.967590, 18.207481>,  <12.494219, 18.915403, 18.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.716075, 18.967590, 18.207481>,  <13.085835, 19.054567, 18.332830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.716075, 18.967590, 18.207481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379108, 0.433336, 0.817617,
		-0.041990, 0.874607, -0.483010,
		-0.924399, -0.217444, -0.313375,
		12.438755, 18.902357, 18.113468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.838316, 19.699965, 18.197163>,  <13.085835, 19.054567, 18.332830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.838316, 19.699965, 18.197163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568831, 19.419228, 18.289707>,  <12.407141, 19.250786, 18.345234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568831, 19.419228, 18.289707>,  <12.838316, 19.699965, 18.197163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568831, 19.419228, 18.289707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429276, 0.626518, 0.650536,
		-0.601526, 0.338957, -0.723377,
		-0.673712, -0.701843, 0.231361,
		12.366717, 19.208675, 18.359116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153497, 20.025175, 18.219877>,  <12.838316, 19.699965, 18.197163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153497, 20.025175, 18.219877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.057920, 19.689463, 18.415230>,  <12.000573, 19.488035, 18.532440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.057920, 19.689463, 18.415230>,  <12.153497, 20.025175, 18.219877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.057920, 19.689463, 18.415230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603177, 0.522434, 0.602694,
		-0.760975, -0.150571, -0.631067,
		-0.238943, -0.839280, 0.488380,
		11.986237, 19.437679, 18.561745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.499051, 20.225359, 18.393290>,  <12.153497, 20.025175, 18.219877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.499051, 20.225359, 18.393290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631102, 19.921864, 18.617908>,  <11.710332, 19.739767, 18.752680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631102, 19.921864, 18.617908>,  <11.499051, 20.225359, 18.393290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631102, 19.921864, 18.617908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295843, 0.481758, 0.824855,
		-0.896378, -0.438436, -0.065426,
		0.330126, -0.758738, 0.561546,
		11.730140, 19.694242, 18.786373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.932701, 20.047649, 18.819521>,  <11.499051, 20.225359, 18.393290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.932701, 20.047649, 18.819521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.280192, 19.948286, 18.990917>,  <11.488688, 19.888668, 19.093756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.280192, 19.948286, 18.990917>,  <10.932701, 20.047649, 18.819521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280192, 19.948286, 18.990917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325216, 0.366411, 0.871767,
		-0.373557, -0.896681, 0.237526,
		0.868729, -0.248407, 0.428490,
		11.540812, 19.873764, 19.119465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.674976, 19.885586, 19.368851>,  <10.932701, 20.047649, 18.819521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.674976, 19.885586, 19.368851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.066916, 19.934462, 19.432047>,  <11.302081, 19.963787, 19.469965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.066916, 19.934462, 19.432047>,  <10.674976, 19.885586, 19.368851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.066916, 19.934462, 19.432047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188585, 0.305456, 0.933345,
		0.065783, -0.944334, 0.322345,
		0.979851, 0.122188, 0.157993,
		11.360872, 19.971119, 19.479445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.826488, 19.645792, 20.040321>,  <10.674976, 19.885586, 19.368851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.826488, 19.645792, 20.040321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164690, 19.846350, 19.966862>,  <11.367611, 19.966684, 19.922787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.164690, 19.846350, 19.966862>,  <10.826488, 19.645792, 20.040321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164690, 19.846350, 19.966862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082241, 0.217551, 0.972578,
		0.527599, -0.837422, 0.142705,
		0.845503, 0.501395, -0.183650,
		11.418341, 19.996769, 19.911766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.255035, 19.394558, 20.582005>,  <10.826488, 19.645792, 20.040321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.255035, 19.394558, 20.582005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375824, 19.757872, 20.466187>,  <11.448298, 19.975859, 20.396696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375824, 19.757872, 20.466187>,  <11.255035, 19.394558, 20.582005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375824, 19.757872, 20.466187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067311, 0.323279, 0.943907,
		0.950938, -0.265544, 0.158758,
		0.301972, 0.908282, -0.289544,
		11.466415, 20.030355, 20.379324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573508, 18.666521, 20.816732>,  <11.255035, 19.394558, 20.582005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.573508, 18.666521, 20.816732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.315184, 18.388927, 20.944052>,  <11.160189, 18.222372, 21.020443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.315184, 18.388927, 20.944052>,  <11.573508, 18.666521, 20.816732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.315184, 18.388927, 20.944052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326072, -0.126266, -0.936875,
		0.690365, -0.708834, -0.144744,
		-0.645812, -0.693983, 0.318301,
		11.121440, 18.180733, 21.039541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.708008, 17.985161, 20.453846>,  <11.573508, 18.666521, 20.816732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.708008, 17.985161, 20.453846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336100, 17.980091, 20.601015>,  <11.112955, 17.977049, 20.689318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336100, 17.980091, 20.601015>,  <11.708008, 17.985161, 20.453846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336100, 17.980091, 20.601015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355006, -0.233732, -0.905174,
		0.097468, -0.972218, 0.212818,
		-0.929769, -0.012674, 0.367924,
		11.057169, 17.976290, 20.711391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519835, 17.460936, 20.158939>,  <11.708008, 17.985161, 20.453846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519835, 17.460936, 20.158939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156041, 17.578131, 20.276920>,  <10.937765, 17.648447, 20.347710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156041, 17.578131, 20.276920>,  <11.519835, 17.460936, 20.158939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.156041, 17.578131, 20.276920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404216, -0.457318, -0.792130,
		-0.097196, -0.839654, 0.534354,
		-0.909485, 0.292986, 0.294952,
		10.883196, 17.666027, 20.365406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.053303, 16.966244, 19.879313>,  <11.519835, 17.460936, 20.158939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.053303, 16.966244, 19.879313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812437, 17.269358, 19.979837>,  <10.667918, 17.451227, 20.040154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812437, 17.269358, 19.979837>,  <11.053303, 16.966244, 19.879313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.812437, 17.269358, 19.979837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556935, -0.173167, -0.812303,
		-0.572033, -0.629105, 0.526313,
		-0.602164, 0.757787, 0.251313,
		10.631788, 17.496695, 20.055231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.352993, 16.657724, 19.781662>,  <11.053303, 16.966244, 19.879313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.352993, 16.657724, 19.781662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.339302, 17.056450, 19.752842>,  <10.331087, 17.295685, 19.735550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.339302, 17.056450, 19.752842>,  <10.352993, 16.657724, 19.781662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.339302, 17.056450, 19.752842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577941, -0.078557, -0.812289,
		-0.815360, 0.013838, 0.578788,
		-0.034227, 0.996814, -0.072050,
		10.329034, 17.355494, 19.731228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.714876, 16.875425, 19.654184>,  <10.352993, 16.657724, 19.781662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.714876, 16.875425, 19.654184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.940342, 17.163549, 19.492476>,  <10.075622, 17.336424, 19.395451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.940342, 17.163549, 19.492476>,  <9.714876, 16.875425, 19.654184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.940342, 17.163549, 19.492476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513288, -0.078011, -0.854663,
		-0.647162, 0.689250, 0.325755,
		0.563664, 0.720312, -0.404270,
		10.109441, 17.379642, 19.371195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.205929, 17.149702, 19.222992>,  <9.714876, 16.875425, 19.654184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.205929, 17.149702, 19.222992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.552206, 17.300440, 19.091196>,  <9.759973, 17.390882, 19.012119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.552206, 17.300440, 19.091196>,  <9.205929, 17.149702, 19.222992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.552206, 17.300440, 19.091196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215934, -0.312696, -0.924983,
		-0.451605, 0.871900, -0.189325,
		0.865694, 0.376846, -0.329488,
		9.811914, 17.413494, 18.992350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.042232, 17.637449, 18.716454>,  <9.205929, 17.149702, 19.222992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.042232, 17.637449, 18.716454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422800, 17.535797, 18.646925>,  <9.651141, 17.474806, 18.605207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422800, 17.535797, 18.646925>,  <9.042232, 17.637449, 18.716454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.422800, 17.535797, 18.646925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231822, -0.219753, -0.947611,
		0.202619, 0.941874, -0.267991,
		0.951422, -0.254130, -0.173821,
		9.708227, 17.459558, 18.594778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.332870, 18.120825, 18.298950>,  <9.042232, 17.637449, 18.716454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.332870, 18.120825, 18.298950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.516231, 17.768814, 18.249271>,  <9.626246, 17.557608, 18.219465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.516231, 17.768814, 18.249271>,  <9.332870, 18.120825, 18.298950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.516231, 17.768814, 18.249271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520514, -0.152571, -0.840111,
		0.720370, 0.449753, -0.528004,
		0.458401, -0.880025, -0.124195,
		9.653751, 17.504807, 18.212013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.305831, 18.008553, 17.624796>,  <9.332870, 18.120825, 18.298950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.305831, 18.008553, 17.624796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.370255, 17.629810, 17.736168>,  <9.408909, 17.402565, 17.802990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.370255, 17.629810, 17.736168>,  <9.305831, 18.008553, 17.624796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.370255, 17.629810, 17.736168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360408, -0.319054, -0.876533,
		0.918785, 0.040827, -0.392642,
		0.161060, -0.946856, 0.278428,
		9.418572, 17.345753, 17.819696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.385786, 17.660860, 17.021053>,  <9.305831, 18.008553, 17.624796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.385786, 17.660860, 17.021053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331863, 17.357416, 17.276031>,  <9.299510, 17.175350, 17.429018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331863, 17.357416, 17.276031>,  <9.385786, 17.660860, 17.021053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.331863, 17.357416, 17.276031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392472, -0.549823, -0.737333,
		0.909832, -0.349576, -0.223614,
		-0.134806, -0.758612, 0.637445,
		9.291422, 17.129833, 17.467264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.745644, 17.065298, 16.630386>,  <9.385786, 17.660860, 17.021053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.745644, 17.065298, 16.630386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484380, 16.910160, 16.890528>,  <9.327621, 16.817078, 17.046612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484380, 16.910160, 16.890528>,  <9.745644, 17.065298, 16.630386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.484380, 16.910160, 16.890528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262783, -0.689390, -0.675046,
		0.710160, -0.611814, 0.348363,
		-0.653160, -0.387847, 0.650351,
		9.288432, 16.793806, 17.085632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.760711, 16.318689, 16.631159>,  <9.745644, 17.065298, 16.630386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.760711, 16.318689, 16.631159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.394444, 16.431860, 16.745356>,  <9.174685, 16.499763, 16.813873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.394444, 16.431860, 16.745356>,  <9.760711, 16.318689, 16.631159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.394444, 16.431860, 16.745356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401192, -0.600086, -0.692056,
		-0.024481, -0.748230, 0.662987,
		-0.915667, 0.282927, 0.285494,
		9.119744, 16.516739, 16.831003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.237828, 15.710958, 16.557465>,  <9.760711, 16.318689, 16.631159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.237828, 15.710958, 16.557465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.015264, 16.043320, 16.558565>,  <8.881724, 16.242737, 16.559225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.015264, 16.043320, 16.558565>,  <9.237828, 15.710958, 16.557465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.015264, 16.043320, 16.558565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721236, -0.481324, -0.498142,
		-0.412581, -0.279160, 0.867091,
		-0.556413, 0.830901, 0.002755,
		8.848340, 16.292591, 16.559391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.748442, 15.549396, 17.058056>,  <9.237828, 15.710958, 16.557465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.748442, 15.549396, 17.058056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.889335, 15.886545, 17.220781>,  <9.973870, 16.088835, 17.318417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.889335, 15.886545, 17.220781>,  <9.748442, 15.549396, 17.058056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.889335, 15.886545, 17.220781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076387, -0.459110, 0.885090,
		0.932790, -0.280682, -0.226097,
		0.352232, 0.842874, 0.406813,
		9.995005, 16.139408, 17.342825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123141, 14.975880, 16.842171>,  <9.748442, 15.549396, 17.058056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123141, 14.975880, 16.842171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441256, 14.735665, 16.808992>,  <10.632124, 14.591537, 16.789085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441256, 14.735665, 16.808992>,  <10.123141, 14.975880, 16.842171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441256, 14.735665, 16.808992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258232, 0.211782, 0.942584,
		-0.548487, -0.771042, 0.323504,
		0.795285, -0.600535, -0.082948,
		10.679841, 14.555505, 16.784107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.136400, 14.682863, 17.413748>,  <10.123141, 14.975880, 16.842171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.136400, 14.682863, 17.413748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.505452, 14.647625, 17.263552>,  <10.726883, 14.626482, 17.173433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.505452, 14.647625, 17.263552>,  <10.136400, 14.682863, 17.413748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.505452, 14.647625, 17.263552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381658, 0.068207, 0.921783,
		-0.055595, -0.993774, 0.096553,
		0.922630, -0.088097, -0.375490,
		10.782241, 14.621197, 17.150904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.520766, 14.095602, 17.848940>,  <10.136400, 14.682863, 17.413748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.520766, 14.095602, 17.848940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.785493, 14.343411, 17.680090>,  <10.944328, 14.492097, 17.578779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.785493, 14.343411, 17.680090>,  <10.520766, 14.095602, 17.848940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.785493, 14.343411, 17.680090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490300, 0.068258, 0.868877,
		0.567104, -0.782004, -0.258579,
		0.661815, 0.619524, -0.422126,
		10.984037, 14.529268, 17.553452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.257903, 13.857696, 18.019991>,  <10.520766, 14.095602, 17.848940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.257903, 13.857696, 18.019991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285830, 14.242495, 17.914400>,  <11.302586, 14.473374, 17.851046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285830, 14.242495, 17.914400>,  <11.257903, 13.857696, 18.019991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285830, 14.242495, 17.914400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645769, 0.158111, 0.746983,
		0.760334, -0.222621, -0.610190,
		0.069816, 0.961998, -0.263979,
		11.306774, 14.531094, 17.835207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831269, 14.025688, 18.310621>,  <11.257903, 13.857696, 18.019991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831269, 14.025688, 18.310621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673866, 14.389389, 18.256342>,  <11.579425, 14.607610, 18.223774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673866, 14.389389, 18.256342>,  <11.831269, 14.025688, 18.310621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673866, 14.389389, 18.256342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554190, 0.352390, 0.754119,
		0.733502, 0.221548, -0.642566,
		-0.393507, 0.909251, -0.135699,
		11.555814, 14.662165, 18.215631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.443575, 14.467658, 18.260109>,  <11.831269, 14.025688, 18.310621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.443575, 14.467658, 18.260109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102806, 14.655415, 18.352974>,  <11.898345, 14.768068, 18.408693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102806, 14.655415, 18.352974>,  <12.443575, 14.467658, 18.260109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.102806, 14.655415, 18.352974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341329, 0.161507, 0.925964,
		0.397143, 0.868094, -0.297809,
		-0.851922, 0.469391, 0.232164,
		11.847229, 14.796232, 18.422623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705136, 14.928046, 18.866430>,  <12.443575, 14.467658, 18.260109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705136, 14.928046, 18.866430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.312379, 15.003643, 18.871622>,  <12.076725, 15.049001, 18.874737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.312379, 15.003643, 18.871622>,  <12.705136, 14.928046, 18.866430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312379, 15.003643, 18.871622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051560, 0.200695, 0.978296,
		0.182285, 0.961251, -0.206806,
		-0.981893, 0.188992, 0.012978,
		12.017811, 15.060341, 18.875515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.591976, 15.628778, 19.253443>,  <12.705136, 14.928046, 18.866430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.591976, 15.628778, 19.253443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.256431, 15.413075, 19.283144>,  <12.055103, 15.283654, 19.300964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.256431, 15.413075, 19.283144>,  <12.591976, 15.628778, 19.253443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.256431, 15.413075, 19.283144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037581, 0.078707, 0.996189,
		-0.543043, 0.838457, -0.045759,
		-0.838863, -0.539254, 0.074251,
		12.004771, 15.251299, 19.305420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.131530, 16.024145, 19.652403>,  <12.591976, 15.628778, 19.253443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.131530, 16.024145, 19.652403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.002592, 15.646558, 19.680733>,  <11.925230, 15.420005, 19.697731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.002592, 15.646558, 19.680733>,  <12.131530, 16.024145, 19.652403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.002592, 15.646558, 19.680733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163983, 0.018003, 0.986299,
		-0.932311, 0.329541, 0.148992,
		-0.322344, -0.943969, 0.070824,
		11.905889, 15.363367, 19.701981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.717582, 15.896252, 20.318935>,  <12.131530, 16.024145, 19.652403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.717582, 15.896252, 20.318935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815927, 15.520130, 20.224802>,  <11.874933, 15.294457, 20.168322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815927, 15.520130, 20.224802>,  <11.717582, 15.896252, 20.318935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.815927, 15.520130, 20.224802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223359, -0.181294, 0.957728,
		-0.943219, -0.288033, 0.165452,
		0.245862, -0.940303, -0.235335,
		11.889686, 15.238039, 20.154202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.318971, 15.407836, 20.741972>,  <11.717582, 15.896252, 20.318935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.318971, 15.407836, 20.741972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.652628, 15.225186, 20.618233>,  <11.852822, 15.115597, 20.543989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.652628, 15.225186, 20.618233>,  <11.318971, 15.407836, 20.741972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.652628, 15.225186, 20.618233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256171, -0.175961, 0.950481,
		-0.488447, -0.872084, -0.029803,
		0.834144, -0.456625, -0.309350,
		11.902871, 15.088199, 20.525427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.372259, 14.994325, 21.284388>,  <11.318971, 15.407836, 20.741972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.372259, 14.994325, 21.284388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.725695, 14.931175, 21.108047>,  <11.937756, 14.893286, 21.002243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.725695, 14.931175, 21.108047>,  <11.372259, 14.994325, 21.284388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725695, 14.931175, 21.108047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424558, -0.127064, 0.896440,
		-0.197542, -0.979250, -0.045245,
		0.883588, -0.157876, -0.440849,
		11.990771, 14.883813, 20.975792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.517935, 14.308461, 21.550335>,  <11.372259, 14.994325, 21.284388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.517935, 14.308461, 21.550335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853639, 14.494644, 21.437914>,  <12.055061, 14.606354, 21.370461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853639, 14.494644, 21.437914>,  <11.517935, 14.308461, 21.550335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853639, 14.494644, 21.437914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383665, -0.140672, 0.912695,
		0.385285, -0.873819, -0.296640,
		0.839259, 0.465458, -0.281055,
		12.105416, 14.634282, 21.353598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.095278, 13.787137, 21.688229>,  <11.517935, 14.308461, 21.550335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.095278, 13.787137, 21.688229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196283, 14.173475, 21.664982>,  <12.256886, 14.405278, 21.651033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196283, 14.173475, 21.664982>,  <12.095278, 13.787137, 21.688229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196283, 14.173475, 21.664982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368319, -0.040405, 0.928821,
		0.894750, -0.255947, -0.365943,
		0.252515, 0.965846, -0.058118,
		12.272038, 14.463229, 21.647547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.744892, 13.798995, 21.902046>,  <12.095278, 13.787137, 21.688229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.744892, 13.798995, 21.902046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617953, 14.173875, 21.959938>,  <12.541790, 14.398803, 21.994673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617953, 14.173875, 21.959938>,  <12.744892, 13.798995, 21.902046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.617953, 14.173875, 21.959938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578913, 0.070580, 0.812329,
		0.751100, 0.341577, -0.564955,
		-0.317347, 0.937200, 0.144730,
		12.522749, 14.455035, 22.003357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321868, 14.072504, 22.197958>,  <12.744892, 13.798995, 21.902046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321868, 14.072504, 22.197958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.035475, 14.335178, 22.292727>,  <12.863639, 14.492783, 22.349588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.035475, 14.335178, 22.292727>,  <13.321868, 14.072504, 22.197958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035475, 14.335178, 22.292727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437116, 0.157081, 0.885582,
		0.544332, 0.737625, -0.399515,
		-0.715983, 0.656685, 0.236924,
		12.820680, 14.532184, 22.363804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737335, 14.712098, 22.461275>,  <13.321868, 14.072504, 22.197958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737335, 14.712098, 22.461275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.360880, 14.744558, 22.592531>,  <13.135007, 14.764034, 22.671284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.360880, 14.744558, 22.592531>,  <13.737335, 14.712098, 22.461275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.360880, 14.744558, 22.592531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335361, 0.345773, 0.876341,
		-0.042347, 0.934802, -0.352635,
		-0.941137, 0.081149, 0.328139,
		13.078539, 14.768903, 22.690973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699318, 15.373163, 22.653131>,  <13.737335, 14.712098, 22.461275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699318, 15.373163, 22.653131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.424964, 15.180592, 22.871412>,  <13.260351, 15.065049, 23.002380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.424964, 15.180592, 22.871412>,  <13.699318, 15.373163, 22.653131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.424964, 15.180592, 22.871412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327455, 0.465497, 0.822245,
		-0.649874, 0.742657, -0.161631,
		-0.685885, -0.481428, 0.545701,
		13.219198, 15.036163, 23.035122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.438377, 15.873039, 23.231955>,  <13.699318, 15.373163, 22.653131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.438377, 15.873039, 23.231955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.323542, 15.515875, 23.370686>,  <13.254640, 15.301576, 23.453924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.323542, 15.515875, 23.370686>,  <13.438377, 15.873039, 23.231955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.323542, 15.515875, 23.370686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136814, 0.320133, 0.937442,
		-0.948083, 0.316581, 0.030256,
		-0.287090, -0.892912, 0.346825,
		13.237414, 15.248001, 23.474733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931204, 16.000341, 23.734991>,  <13.438377, 15.873039, 23.231955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931204, 16.000341, 23.734991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064304, 15.632169, 23.817051>,  <13.144164, 15.411265, 23.866287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064304, 15.632169, 23.817051>,  <12.931204, 16.000341, 23.734991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064304, 15.632169, 23.817051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172306, 0.273227, 0.946392,
		-0.927140, -0.279564, 0.249512,
		0.332750, -0.920430, 0.205149,
		13.164129, 15.356040, 23.878595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.533659, 15.745185, 24.349997>,  <12.931204, 16.000341, 23.734991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.533659, 15.745185, 24.349997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853937, 15.505605, 24.345198>,  <13.046104, 15.361856, 24.342319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853937, 15.505605, 24.345198>,  <12.533659, 15.745185, 24.349997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853937, 15.505605, 24.345198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148707, 0.179320, 0.972487,
		-0.580321, -0.780450, 0.232649,
		0.800696, -0.598951, -0.011996,
		13.094146, 15.325919, 24.341599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.406491, 15.229852, 24.870701>,  <12.533659, 15.745185, 24.349997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.406491, 15.229852, 24.870701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.801090, 15.206036, 24.809675>,  <13.037849, 15.191746, 24.773060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.801090, 15.206036, 24.809675>,  <12.406491, 15.229852, 24.870701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.801090, 15.206036, 24.809675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160160, 0.156157, 0.974661,
		-0.034208, -0.985936, 0.163584,
		0.986499, -0.059541, -0.152565,
		13.097040, 15.188173, 24.763906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.736188, 14.718111, 25.482897>,  <12.406491, 15.229852, 24.870701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.736188, 14.718111, 25.482897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.012712, 14.967317, 25.336506>,  <13.178627, 15.116840, 25.248671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.012712, 14.967317, 25.336506>,  <12.736188, 14.718111, 25.482897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.012712, 14.967317, 25.336506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321139, 0.188804, 0.928021,
		0.647269, -0.759082, -0.069552,
		0.691312, 0.623015, -0.365978,
		13.220106, 15.154221, 25.226713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315444, 14.564116, 25.790661>,  <12.736188, 14.718111, 25.482897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315444, 14.564116, 25.790661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410369, 14.936336, 25.679115>,  <13.467324, 15.159667, 25.612188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410369, 14.936336, 25.679115>,  <13.315444, 14.564116, 25.790661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410369, 14.936336, 25.679115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371515, 0.178302, 0.911145,
		0.897585, -0.319828, -0.303399,
		0.237313, 0.930547, -0.278862,
		13.481563, 15.215500, 25.595457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.972173, 14.630943, 25.888420>,  <13.315444, 14.564116, 25.790661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.972173, 14.630943, 25.888420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853536, 15.012816, 25.898331>,  <13.782353, 15.241940, 25.904276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853536, 15.012816, 25.898331>,  <13.972173, 14.630943, 25.888420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853536, 15.012816, 25.898331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594726, 0.164342, 0.786951,
		0.747217, 0.248137, -0.616518,
		-0.296592, 0.954683, 0.024774,
		13.764558, 15.299221, 25.905764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.589774, 15.026496, 25.952778>,  <13.972173, 14.630943, 25.888420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.589774, 15.026496, 25.952778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319416, 15.289126, 26.086687>,  <14.157201, 15.446705, 26.167032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319416, 15.289126, 26.086687>,  <14.589774, 15.026496, 25.952778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.319416, 15.289126, 26.086687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592808, 0.214451, 0.776266,
		0.437886, 0.723131, -0.534170,
		-0.675896, 0.656576, 0.334773,
		14.116648, 15.486099, 26.187119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965434, 15.604033, 26.228132>,  <14.589774, 15.026496, 25.952778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965434, 15.604033, 26.228132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610065, 15.658769, 26.403395>,  <14.396844, 15.691610, 26.508553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610065, 15.658769, 26.403395>,  <14.965434, 15.604033, 26.228132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610065, 15.658769, 26.403395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456562, 0.362224, 0.812616,
		-0.047511, 0.921992, -0.384284,
		-0.888422, 0.136841, 0.438156,
		14.343538, 15.699821, 26.534842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
