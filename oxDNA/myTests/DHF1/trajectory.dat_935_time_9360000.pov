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
	<1.745570, 2.994639, 2.048072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.678543, 3.041584, 1.656532>,  <1.638327, 3.069751, 1.421608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.678543, 3.041584, 1.656532>,  <1.745570, 2.994639, 2.048072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.678543, 3.041584, 1.656532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985002, 0.021506, 0.171198,
		0.041143, 0.992856, 0.112000,
		-0.167567, 0.117364, -0.978850,
		1.628273, 3.076793, 1.362877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.328846, 3.658263, 2.016069>,  <1.745570, 2.994639, 2.048072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.328846, 3.658263, 2.016069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.207474, 3.392736, 1.742638>,  <1.134650, 3.233421, 1.578579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.207474, 3.392736, 1.742638>,  <1.328846, 3.658263, 2.016069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.207474, 3.392736, 1.742638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952093, 0.182563, 0.245337,
		-0.038063, 0.725272, -0.687409,
		-0.303432, -0.663816, -0.683577,
		1.116444, 3.193592, 1.537564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.811511, 3.988726, 1.735366>,  <1.328846, 3.658263, 2.016069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.811511, 3.988726, 1.735366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.744568, 3.595455, 1.706093>,  <0.704402, 3.359493, 1.688529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.744568, 3.595455, 1.706093>,  <0.811511, 3.988726, 1.735366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.744568, 3.595455, 1.706093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917038, 0.127986, 0.377704,
		-0.361983, 0.130322, -0.923030,
		-0.167358, -0.983176, -0.073182,
		0.694360, 3.300502, 1.684138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.095209, 3.744045, 1.360146>,  <0.811511, 3.988726, 1.735366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.095209, 3.744045, 1.360146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.236198, 3.522213, 1.661663>,  <0.320792, 3.389114, 1.842573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.236198, 3.522213, 1.661663>,  <0.095209, 3.744045, 1.360146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.236198, 3.522213, 1.661663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861413, 0.122487, 0.492914,
		-0.365690, -0.823066, -0.434549,
		0.352474, -0.554580, 0.753793,
		0.341941, 3.355839, 1.887801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.457956, 3.387386, 1.608921>,  <0.095209, 3.744045, 1.360146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.457956, 3.387386, 1.608921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.202484, 3.426464, 1.914219>,  <-0.049201, 3.449911, 2.097398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.202484, 3.426464, 1.914219>,  <-0.457956, 3.387386, 1.608921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.202484, 3.426464, 1.914219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764347, 0.194851, 0.614661,
		-0.088668, -0.975955, 0.199122,
		0.638680, 0.097697, 0.763245,
		-0.010880, 3.455773, 2.143193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.719064, 2.928469, 2.113970>,  <-0.457956, 3.387386, 1.608921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.719064, 2.928469, 2.113970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.488541, 3.200964, 2.294540>,  <-0.350227, 3.364461, 2.402883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.488541, 3.200964, 2.294540>,  <-0.719064, 2.928469, 2.113970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.488541, 3.200964, 2.294540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744964, 0.210811, 0.632920,
		0.336003, -0.701052, 0.628989,
		0.576307, 0.681237, 0.451426,
		-0.315648, 3.405335, 2.429968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.922469, 2.841547, 2.764106>,  <-0.719064, 2.928469, 2.113970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.922469, 2.841547, 2.764106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.709389, 3.176659, 2.812031>,  <-0.581541, 3.377726, 2.840786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.709389, 3.176659, 2.812031>,  <-0.922469, 2.841547, 2.764106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.709389, 3.176659, 2.812031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725609, 0.379265, 0.574151,
		0.435572, -0.392787, 0.809936,
		0.532700, 0.837781, 0.119812,
		-0.549579, 3.427993, 2.847975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.017705, 3.095213, 3.477756>,  <-0.922469, 2.841547, 2.764106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.017705, 3.095213, 3.477756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.940880, 3.420258, 3.257656>,  <-0.894785, 3.615284, 3.125596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.940880, 3.420258, 3.257656>,  <-1.017705, 3.095213, 3.477756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.940880, 3.420258, 3.257656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692341, 0.509575, 0.510880,
		0.695540, 0.282839, 0.660474,
		0.192064, 0.812610, -0.550251,
		-0.883261, 3.664041, 3.092581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.345155, 5.593203, 2.112068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719009, 5.524525, 2.236633>,  <3.943322, 5.483318, 2.311373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719009, 5.524525, 2.236633>,  <3.345155, 5.593203, 2.112068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.719009, 5.524525, 2.236633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161617, 0.574965, 0.802057,
		-0.316761, -0.799960, 0.509633,
		0.934635, -0.171695, 0.311414,
		3.999400, 5.473016, 2.330057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.402829, 5.205081, 2.761677>,  <3.345155, 5.593203, 2.112068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.402829, 5.205081, 2.761677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.699463, 5.470936, 2.725208>,  <3.877443, 5.630448, 2.703327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.699463, 5.470936, 2.725208>,  <3.402829, 5.205081, 2.761677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.699463, 5.470936, 2.725208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299594, 0.449704, 0.841433,
		0.600248, -0.596678, 0.532614,
		0.741583, 0.664637, -0.091173,
		3.921938, 5.670327, 2.697857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.703107, 4.576484, 2.337085>,  <3.402829, 5.205081, 2.761677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.703107, 4.576484, 2.337085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.829468, 4.429424, 2.686951>,  <3.905284, 4.341188, 2.896870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.829468, 4.429424, 2.686951>,  <3.703107, 4.576484, 2.337085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.829468, 4.429424, 2.686951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835560, -0.328940, -0.440043,
		0.449494, 0.869846, 0.203280,
		0.315903, -0.367649, 0.874665,
		3.924239, 4.319129, 2.949350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.466383, 4.692597, 2.465470>,  <3.703107, 4.576484, 2.337085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.466383, 4.692597, 2.465470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.360596, 4.369968, 2.676941>,  <4.297123, 4.176392, 2.803824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.360596, 4.369968, 2.676941>,  <4.466383, 4.692597, 2.465470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.360596, 4.369968, 2.676941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786288, -0.497751, -0.366053,
		0.558397, 0.318885, 0.765836,
		-0.264467, -0.806571, 0.528678,
		4.281256, 4.127997, 2.835544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.049485, 4.539134, 2.841459>,  <4.466383, 4.692597, 2.465470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.049485, 4.539134, 2.841459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.867554, 4.183262, 2.857460>,  <4.758395, 3.969738, 2.867061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.867554, 4.183262, 2.857460>,  <5.049485, 4.539134, 2.841459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.867554, 4.183262, 2.857460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780020, -0.419638, -0.464190,
		0.429767, -0.179923, 0.884832,
		-0.454828, -0.889680, 0.040003,
		4.731105, 3.916358, 2.869461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.441874, 4.105395, 3.237915>,  <5.049485, 4.539134, 2.841459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.441874, 4.105395, 3.237915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.213470, 3.899139, 2.982395>,  <5.076428, 3.775386, 2.829083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.213470, 3.899139, 2.982395>,  <5.441874, 4.105395, 3.237915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.213470, 3.899139, 2.982395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812983, -0.463279, -0.352749,
		-0.114051, -0.720755, 0.683743,
		-0.571009, -0.515640, -0.638799,
		5.042168, 3.744447, 2.790755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.830772, 3.508060, 3.101358>,  <5.441874, 4.105395, 3.237915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.830772, 3.508060, 3.101358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.552567, 3.466263, 2.817009>,  <5.385643, 3.441184, 2.646399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.552567, 3.466263, 2.817009>,  <5.830772, 3.508060, 3.101358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.552567, 3.466263, 2.817009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668801, -0.455759, -0.587358,
		-0.262610, -0.883948, 0.386874,
		-0.695515, -0.104495, -0.710872,
		5.343912, 3.434915, 2.603747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.886640, 2.755805, 2.883301>,  <5.830772, 3.508060, 3.101358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.886640, 2.755805, 2.883301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.729691, 2.966225, 2.581490>,  <5.635521, 3.092477, 2.400402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.729691, 2.966225, 2.581490>,  <5.886640, 2.755805, 2.883301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.729691, 2.966225, 2.581490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741551, -0.304414, -0.597858,
		-0.544192, -0.794106, -0.270649,
		-0.392373, 0.526050, -0.754530,
		5.611979, 3.124040, 2.355131>
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
