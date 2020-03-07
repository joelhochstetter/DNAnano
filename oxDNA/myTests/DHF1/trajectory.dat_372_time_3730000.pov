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
	<2.866300, 1.657067, 3.380423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.563633, 1.685257, 3.640419>,  <2.382033, 1.702171, 3.796417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.563633, 1.685257, 3.640419>,  <2.866300, 1.657067, 3.380423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.563633, 1.685257, 3.640419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427462, 0.698921, -0.573398,
		-0.494702, -0.711718, -0.498726,
		-0.756668, 0.070475, 0.649990,
		2.336632, 1.706399, 3.835416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.473828, 2.208758, 3.180051>,  <2.866300, 1.657067, 3.380423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.473828, 2.208758, 3.180051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233150, 2.157761, 3.495445>,  <2.088744, 2.127162, 3.684682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233150, 2.157761, 3.495445>,  <2.473828, 2.208758, 3.180051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.233150, 2.157761, 3.495445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473114, 0.852251, -0.223231,
		-0.643527, -0.507360, -0.573113,
		-0.601695, -0.127493, 0.788486,
		2.052642, 2.119513, 3.731991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459428, 1.655188, 2.627834>,  <2.473828, 2.208758, 3.180051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459428, 1.655188, 2.627834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488213, 1.674049, 2.229317>,  <2.505484, 1.685366, 1.990207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488213, 1.674049, 2.229317>,  <2.459428, 1.655188, 2.627834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488213, 1.674049, 2.229317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513857, 0.857868, 0.003486,
		0.854852, 0.511701, 0.085964,
		0.071962, 0.047154, -0.996292,
		2.509801, 1.688195, 1.930429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.817467, 2.198791, 2.456479>,  <2.459428, 1.655188, 2.627834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.817467, 2.198791, 2.456479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.565895, 2.107849, 2.159088>,  <2.414952, 2.053284, 1.980654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.565895, 2.107849, 2.159088>,  <2.817467, 2.198791, 2.456479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.565895, 2.107849, 2.159088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296397, 0.954182, -0.041058,
		0.718746, 0.194542, -0.667501,
		-0.628930, -0.227356, -0.743476,
		2.377216, 2.039642, 1.936045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.757011, 2.804348, 2.085137>,  <2.817467, 2.198791, 2.456479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.757011, 2.804348, 2.085137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.443180, 2.596901, 1.949211>,  <2.254882, 2.472432, 1.867656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.443180, 2.596901, 1.949211>,  <2.757011, 2.804348, 2.085137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.443180, 2.596901, 1.949211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515289, 0.850204, -0.107847,
		0.344843, 0.090488, -0.934289,
		-0.784577, -0.518619, -0.339814,
		2.207807, 2.441315, 1.847267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.507826, 3.129060, 1.411233>,  <2.757011, 2.804348, 2.085137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.507826, 3.129060, 1.411233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.204647, 2.939285, 1.590309>,  <2.022740, 2.825420, 1.697755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.204647, 2.939285, 1.590309>,  <2.507826, 3.129060, 1.411233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.204647, 2.939285, 1.590309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574248, 0.810858, -0.112910,
		-0.309445, -0.342665, -0.887031,
		-0.757947, -0.474437, 0.447690,
		1.977263, 2.796954, 1.724616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.983100, 3.359726, 1.024761>,  <2.507826, 3.129060, 1.411233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.983100, 3.359726, 1.024761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.811417, 3.204262, 1.350883>,  <1.708407, 3.110983, 1.546557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.811417, 3.204262, 1.350883>,  <1.983100, 3.359726, 1.024761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.811417, 3.204262, 1.350883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684092, 0.729289, -0.012475,
		-0.589744, -0.563098, -0.578897,
		-0.429208, -0.388662, 0.815305,
		1.682654, 3.087663, 1.595475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.199185, 3.355071, 0.922868>,  <1.983100, 3.359726, 1.024761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.199185, 3.355071, 0.922868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.251671, 3.340790, 1.319153>,  <1.283162, 3.332221, 1.556923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.251671, 3.340790, 1.319153>,  <1.199185, 3.355071, 0.922868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.251671, 3.340790, 1.319153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721241, 0.682192, 0.120109,
		-0.680143, -0.730301, 0.063764,
		0.131215, -0.035703, 0.990711,
		1.291035, 3.330079, 1.616366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.666907, 4.230211, 1.442274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559001, 4.095001, 1.802933>,  <0.494257, 4.013875, 2.019328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559001, 4.095001, 1.802933>,  <0.666907, 4.230211, 1.442274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.559001, 4.095001, 1.802933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849147, -0.525049, 0.057217,
		0.454067, 0.781065, 0.428673,
		-0.269765, -0.338025, 0.901646,
		0.478072, 3.993594, 2.073427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.231156, 4.296756, 1.917542>,  <0.666907, 4.230211, 1.442274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.231156, 4.296756, 1.917542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.988410, 4.014122, 2.063118>,  <0.842762, 3.844542, 2.150463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.988410, 4.014122, 2.063118>,  <1.231156, 4.296756, 1.917542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.988410, 4.014122, 2.063118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762890, -0.646296, 0.017336,
		0.222963, 0.288166, 0.931262,
		-0.606866, -0.706585, 0.363939,
		0.806350, 3.802146, 2.172300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.500789, 3.931284, 2.660762>,  <1.231156, 4.296756, 1.917542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.500789, 3.931284, 2.660762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.268974, 3.731911, 2.402863>,  <1.129885, 3.612287, 2.248123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.268974, 3.731911, 2.402863>,  <1.500789, 3.931284, 2.660762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.268974, 3.731911, 2.402863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626432, -0.778512, 0.038768,
		-0.521267, -0.381424, 0.763411,
		-0.579537, -0.498433, -0.644749,
		1.095113, 3.582381, 2.209438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.348262, 3.199128, 2.889008>,  <1.500789, 3.931284, 2.660762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.348262, 3.199128, 2.889008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308972, 3.231064, 2.492226>,  <1.285399, 3.250225, 2.254156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308972, 3.231064, 2.492226>,  <1.348262, 3.199128, 2.889008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308972, 3.231064, 2.492226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626583, -0.769431, -0.123973,
		-0.773140, -0.633721, 0.025553,
		-0.098225, 0.079837, -0.991957,
		1.279505, 3.255015, 2.194639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.003678, 2.624515, 2.661691>,  <1.348262, 3.199128, 2.889008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.003678, 2.624515, 2.661691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197490, 2.749313, 2.334793>,  <1.313777, 2.824193, 2.138654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197490, 2.749313, 2.334793>,  <1.003678, 2.624515, 2.661691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.197490, 2.749313, 2.334793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460227, -0.885407, -0.065159,
		-0.743924, -0.344547, -0.572595,
		0.484529, 0.311997, -0.817245,
		1.342848, 2.842912, 2.089620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.019096, 1.982277, 2.169307>,  <1.003678, 2.624515, 2.661691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.019096, 1.982277, 2.169307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.286839, 2.239189, 2.019943>,  <1.447485, 2.393337, 1.930325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.286839, 2.239189, 2.019943>,  <1.019096, 1.982277, 2.169307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.286839, 2.239189, 2.019943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538076, -0.765670, -0.352452,
		-0.512283, 0.034993, -0.858104,
		0.669358, 0.642281, -0.373411,
		1.487647, 2.431873, 1.907920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.222482, 1.692425, 1.532393>,  <1.019096, 1.982277, 2.169307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.222482, 1.692425, 1.532393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.515903, 1.942574, 1.638832>,  <1.691957, 2.092663, 1.702696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.515903, 1.942574, 1.638832>,  <1.222482, 1.692425, 1.532393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.515903, 1.942574, 1.638832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678048, -0.646713, -0.349304,
		-0.046356, 0.436660, -0.898431,
		0.733555, 0.625372, 0.266098,
		1.735970, 2.130185, 1.718661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.574376, 1.630349, 0.946394>,  <1.222482, 1.692425, 1.532393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.574376, 1.630349, 0.946394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800220, 1.747345, 1.255112>,  <1.935725, 1.817542, 1.440343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800220, 1.747345, 1.255112>,  <1.574376, 1.630349, 0.946394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.800220, 1.747345, 1.255112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657000, -0.725264, -0.205775,
		0.499568, 0.623252, -0.601655,
		0.564608, 0.292489, 0.771795,
		1.969602, 1.835092, 1.486650>
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
