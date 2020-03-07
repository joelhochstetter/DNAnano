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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<0.168018, 0.670720, 2.886539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.175953, 0.634792, 3.284843>,  <0.180715, 0.613236, 3.523826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.175953, 0.634792, 3.284843>,  <0.168018, 0.670720, 2.886539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.175953, 0.634792, 3.284843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985738, 0.168226, -0.004465,
		-0.167112, 0.981648, 0.091875,
		0.019839, -0.089818, 0.995761,
		0.181905, 0.607847, 3.583572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.497359, 1.324766, 3.022085>,  <0.168018, 0.670720, 2.886539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.497359, 1.324766, 3.022085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.549204, 1.021465, 3.277664>,  <0.580312, 0.839485, 3.431012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.549204, 1.021465, 3.277664>,  <0.497359, 1.324766, 3.022085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.549204, 1.021465, 3.277664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981589, 0.006946, -0.190878,
		0.140295, 0.651925, 0.745192,
		0.129614, -0.758252, 0.638948,
		0.588089, 0.793990, 3.469349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.039765, 1.416078, 3.480628>,  <0.497359, 1.324766, 3.022085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.039765, 1.416078, 3.480628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.010911, 1.020405, 3.429535>,  <0.993599, 0.783001, 3.398879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.010911, 1.020405, 3.429535>,  <1.039765, 1.416078, 3.480628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.010911, 1.020405, 3.429535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928833, -0.019961, -0.369960,
		0.363408, -0.145330, 0.920225,
		-0.072135, -0.989182, -0.127733,
		0.989271, 0.723650, 3.391215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670617, 1.060323, 3.906222>,  <1.039765, 1.416078, 3.480628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670617, 1.060323, 3.906222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527178, 0.850533, 3.597332>,  <1.441115, 0.724658, 3.411998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527178, 0.850533, 3.597332>,  <1.670617, 1.060323, 3.906222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.527178, 0.850533, 3.597332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909570, -0.010236, -0.415425,
		0.209976, -0.851363, 0.480719,
		-0.358598, -0.524477, -0.772225,
		1.419599, 0.693190, 3.365664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.987927, 0.407134, 3.861396>,  <1.670617, 1.060323, 3.906222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.987927, 0.407134, 3.861396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.871849, 0.540184, 3.502476>,  <1.802202, 0.620014, 3.287124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.871849, 0.540184, 3.502476>,  <1.987927, 0.407134, 3.861396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.871849, 0.540184, 3.502476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946908, -0.035785, -0.319506,
		-0.138386, -0.942380, -0.304582,
		-0.290196, 0.332626, -0.897299,
		1.784790, 0.639972, 3.233286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.303022, -0.122260, 3.399443>,  <1.987927, 0.407134, 3.861396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.303022, -0.122260, 3.399443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.231488, 0.228176, 3.220341>,  <2.188567, 0.438438, 3.112879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.231488, 0.228176, 3.220341>,  <2.303022, -0.122260, 3.399443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.231488, 0.228176, 3.220341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899294, -0.039055, -0.435598,
		-0.399110, -0.480564, -0.780877,
		-0.178836, 0.876089, -0.447756,
		2.177837, 0.491003, 3.086014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.556938, -0.240410, 2.745643>,  <2.303022, -0.122260, 3.399443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.556938, -0.240410, 2.745643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.516850, 0.157089, 2.765327>,  <2.492798, 0.395589, 2.777138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.516850, 0.157089, 2.765327>,  <2.556938, -0.240410, 2.745643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.516850, 0.157089, 2.765327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942397, 0.110672, -0.315657,
		-0.319130, 0.014742, -0.947596,
		-0.100219, 0.993748, 0.049212,
		2.486785, 0.455214, 2.780091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924234, -0.047964, 2.115526>,  <2.556938, -0.240410, 2.745643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924234, -0.047964, 2.115526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938164, 0.268887, 2.359272>,  <2.946522, 0.458997, 2.505519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938164, 0.268887, 2.359272>,  <2.924234, -0.047964, 2.115526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.938164, 0.268887, 2.359272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949976, 0.163124, -0.266337,
		-0.310374, 0.588156, -0.746820,
		0.034824, 0.792125, 0.609364,
		2.948611, 0.506524, 2.542081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.175761, 1.070137, 4.781157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947977, 1.026474, 4.455261>,  <3.811306, 1.000276, 4.259724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947977, 1.026474, 4.455261>,  <4.175761, 1.070137, 4.781157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.947977, 1.026474, 4.455261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581632, 0.753896, 0.305524,
		0.580878, 0.647862, -0.492805,
		-0.569461, -0.109159, -0.814738,
		3.777139, 0.993726, 4.210840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.838217, 1.492107, 4.299272>,  <4.175761, 1.070137, 4.781157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.838217, 1.492107, 4.299272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.520250, 1.278252, 4.184540>,  <3.329471, 1.149938, 4.115701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.520250, 1.278252, 4.184540>,  <3.838217, 1.492107, 4.299272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.520250, 1.278252, 4.184540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606566, 0.689652, 0.395547,
		-0.013663, 0.488408, -0.872508,
		-0.794916, -0.534639, -0.286829,
		3.281776, 1.117860, 4.098491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.403315, 1.921528, 3.936017>,  <3.838217, 1.492107, 4.299272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.403315, 1.921528, 3.936017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.201925, 1.628937, 4.119953>,  <3.081092, 1.453382, 4.230315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.201925, 1.628937, 4.119953>,  <3.403315, 1.921528, 3.936017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.201925, 1.628937, 4.119953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562220, 0.681488, 0.468490,
		-0.656067, -0.022660, -0.754363,
		-0.503473, -0.731479, 0.459841,
		3.050883, 1.409493, 4.257905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.698970, 2.113377, 3.794228>,  <3.403315, 1.921528, 3.936017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.698970, 2.113377, 3.794228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.741358, 1.901772, 4.131016>,  <2.766790, 1.774808, 4.333089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.741358, 1.901772, 4.131016>,  <2.698970, 2.113377, 3.794228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.741358, 1.901772, 4.131016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572500, 0.659862, 0.486648,
		-0.813028, -0.533597, -0.232936,
		0.105969, -0.529014, 0.841970,
		2.773149, 1.743067, 4.383607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.036865, 1.565483, 3.224634>,  <2.698970, 2.113377, 3.794228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.036865, 1.565483, 3.224634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.005127, 1.240265, 2.993927>,  <2.986084, 1.045134, 2.855503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.005127, 1.240265, 2.993927>,  <3.036865, 1.565483, 3.224634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.005127, 1.240265, 2.993927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994834, 0.027837, 0.097619,
		-0.063314, 0.581533, -0.811055,
		-0.079346, -0.813046, -0.576767,
		2.981323, 0.996351, 2.820897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.512069, 1.724051, 2.847569>,  <3.036865, 1.565483, 3.224634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.512069, 1.724051, 2.847569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.509136, 1.324203, 2.836903>,  <2.507377, 1.084295, 2.830503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.509136, 1.324203, 2.836903>,  <2.512069, 1.724051, 2.847569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.509136, 1.324203, 2.836903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973163, 0.000999, 0.230113,
		-0.229998, 0.027638, -0.972799,
		-0.007331, -0.999618, -0.026666,
		2.506937, 1.024318, 2.828903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.982783, 1.625838, 2.412081>,  <2.512069, 1.724051, 2.847569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.982783, 1.625838, 2.412081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.040688, 1.283310, 2.610378>,  <2.075431, 1.077793, 2.729357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.040688, 1.283310, 2.610378>,  <1.982783, 1.625838, 2.412081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.040688, 1.283310, 2.610378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972628, -0.031114, 0.230274,
		-0.181763, -0.515509, -0.837384,
		0.144762, -0.856319, 0.495743,
		2.084116, 1.026414, 2.759101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.502429, 1.187891, 2.130527>,  <1.982783, 1.625838, 2.412081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.502429, 1.187891, 2.130527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.589085, 1.014557, 2.480450>,  <1.641078, 0.910556, 2.690403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.589085, 1.014557, 2.480450>,  <1.502429, 1.187891, 2.130527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.589085, 1.014557, 2.480450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968223, 0.019320, 0.249342,
		-0.124950, -0.901026, -0.415380,
		0.216638, -0.433335, 0.874807,
		1.654076, 0.884556, 2.742892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
