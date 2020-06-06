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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.147966, 34.791332, 34.664360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223122, 35.104393, 34.901730>,  <24.268215, 35.292229, 35.044151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223122, 35.104393, 34.901730>,  <24.147966, 34.791332, 34.664360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223122, 35.104393, 34.901730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060305, -0.612238, 0.788371,
		0.980338, -0.112337, -0.162229,
		0.187886, 0.782653, 0.593425,
		24.279488, 35.339188, 35.079758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732859, 34.786217, 35.135117>,  <24.147966, 34.791332, 34.664360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732859, 34.786217, 35.135117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463585, 35.000732, 35.338768>,  <24.302021, 35.129444, 35.460960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463585, 35.000732, 35.338768>,  <24.732859, 34.786217, 35.135117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463585, 35.000732, 35.338768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190781, -0.539239, 0.820259,
		0.714442, 0.649317, 0.260691,
		-0.673182, 0.536293, 0.509132,
		24.261631, 35.161621, 35.491508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077549, 34.554531, 35.692039>,  <24.732859, 34.786217, 35.135117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077549, 34.554531, 35.692039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772612, 34.793407, 35.791798>,  <24.589649, 34.936733, 35.851654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772612, 34.793407, 35.791798>,  <25.077549, 34.554531, 35.692039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772612, 34.793407, 35.791798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036423, -0.345159, 0.937837,
		0.646146, 0.724039, 0.241378,
		-0.762344, 0.597188, 0.249395,
		24.543909, 34.972565, 35.866615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491510, 34.940430, 35.244041>,  <25.077549, 34.554531, 35.692039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491510, 34.940430, 35.244041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673914, 35.235458, 35.044827>,  <25.783356, 35.412476, 34.925297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673914, 35.235458, 35.044827>,  <25.491510, 34.940430, 35.244041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673914, 35.235458, 35.044827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743741, -0.008488, 0.668414,
		0.488778, -0.675212, -0.552435,
		0.456010, 0.737575, -0.498035,
		25.810717, 35.456730, 34.895416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196342, 34.640236, 34.914215>,  <25.491510, 34.940430, 35.244041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196342, 34.640236, 34.914215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192421, 35.033703, 34.986111>,  <26.190067, 35.269783, 35.029247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192421, 35.033703, 34.986111>,  <26.196342, 34.640236, 34.914215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192421, 35.033703, 34.986111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636097, -0.132555, 0.760138,
		0.771547, 0.121786, -0.624407,
		-0.009806, 0.983665, 0.179740,
		26.189480, 35.328804, 35.040031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870338, 34.836620, 35.097878>,  <26.196342, 34.640236, 34.914215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870338, 34.836620, 35.097878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588524, 35.085804, 35.233849>,  <26.419436, 35.235313, 35.315430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588524, 35.085804, 35.233849>,  <26.870338, 34.836620, 35.097878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588524, 35.085804, 35.233849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470278, 0.051112, 0.881037,
		0.531473, 0.780585, -0.328973,
		-0.704539, 0.622956, 0.339927,
		26.377163, 35.272690, 35.335827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140972, 34.652519, 34.527275>,  <26.870338, 34.836620, 35.097878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140972, 34.652519, 34.527275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213242, 34.990116, 34.729275>,  <27.256603, 35.192677, 34.850475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213242, 34.990116, 34.729275>,  <27.140972, 34.652519, 34.527275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213242, 34.990116, 34.729275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970187, -0.068609, -0.232441,
		-0.161532, 0.531942, -0.831231,
		0.180675, 0.843997, 0.505001,
		27.267445, 35.243317, 34.880775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345942, 35.181030, 34.115505>,  <27.140972, 34.652519, 34.527275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345942, 35.181030, 34.115505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535492, 35.210640, 34.466496>,  <27.649221, 35.228405, 34.677090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535492, 35.210640, 34.466496>,  <27.345942, 35.181030, 34.115505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535492, 35.210640, 34.466496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869921, 0.115304, -0.479523,
		-0.136674, 0.990568, -0.009759,
		0.473875, 0.074028, 0.877475,
		27.677654, 35.232849, 34.729736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679880, 35.938213, 34.290974>,  <27.345942, 35.181030, 34.115505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679880, 35.938213, 34.290974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850216, 35.595356, 34.406879>,  <27.952417, 35.389641, 34.476421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850216, 35.595356, 34.406879>,  <27.679880, 35.938213, 34.290974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850216, 35.595356, 34.406879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753340, 0.158503, -0.638245,
		0.501141, 0.490079, 0.713219,
		0.425837, -0.857146, 0.289764,
		27.977966, 35.338211, 34.493809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386942, 36.111542, 34.654961>,  <27.679880, 35.938213, 34.290974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386942, 36.111542, 34.654961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408329, 35.728600, 34.541389>,  <28.421162, 35.498837, 34.473248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408329, 35.728600, 34.541389>,  <28.386942, 36.111542, 34.654961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408329, 35.728600, 34.541389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727570, 0.232099, -0.645579,
		0.683947, -0.172064, 0.708951,
		0.053466, -0.957353, -0.283932,
		28.424368, 35.441395, 34.456211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133837, 35.865547, 34.792332>,  <28.386942, 36.111542, 34.654961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133837, 35.865547, 34.792332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985811, 35.641331, 34.495995>,  <28.896996, 35.506802, 34.318192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985811, 35.641331, 34.495995>,  <29.133837, 35.865547, 34.792332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985811, 35.641331, 34.495995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747839, 0.293379, -0.595537,
		0.551171, -0.774418, 0.310626,
		-0.370063, -0.560541, -0.740842,
		28.874792, 35.473167, 34.273743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735758, 35.696030, 34.387192>,  <29.133837, 35.865547, 34.792332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735758, 35.696030, 34.387192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421511, 35.591869, 34.162693>,  <29.232962, 35.529373, 34.027996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421511, 35.591869, 34.162693>,  <29.735758, 35.696030, 34.387192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421511, 35.591869, 34.162693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543431, 0.143242, -0.827142,
		0.295785, -0.954815, 0.028978,
		-0.785617, -0.260404, -0.561245,
		29.185825, 35.513748, 33.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505198, 36.173969, 33.804642>,  <29.735758, 35.696030, 34.387192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505198, 36.173969, 33.804642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535824, 35.817646, 33.625488>,  <29.554199, 35.603851, 33.517994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535824, 35.817646, 33.625488>,  <29.505198, 36.173969, 33.804642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535824, 35.817646, 33.625488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808570, -0.318309, 0.494868,
		-0.583398, 0.324257, -0.744650,
		0.076564, -0.890807, -0.447885,
		29.558792, 35.550404, 33.491123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760778, 35.949207, 33.500591>,  <29.505198, 36.173969, 33.804642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760778, 35.949207, 33.500591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002920, 35.634388, 33.548100>,  <29.148205, 35.445496, 33.576603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002920, 35.634388, 33.548100>,  <28.760778, 35.949207, 33.500591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002920, 35.634388, 33.548100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715451, -0.472645, 0.514525,
		-0.348817, -0.396445, -0.849210,
		0.605356, -0.787044, 0.118770,
		29.184526, 35.398273, 33.583729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321983, 35.268227, 33.209610>,  <28.760778, 35.949207, 33.500591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321983, 35.268227, 33.209610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618605, 35.236347, 33.476067>,  <28.796577, 35.217220, 33.635941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618605, 35.236347, 33.476067>,  <28.321983, 35.268227, 33.209610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618605, 35.236347, 33.476067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622679, -0.451376, 0.639164,
		0.249741, -0.888767, -0.384346,
		0.741553, -0.079699, 0.666144,
		28.841070, 35.212437, 33.675911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405836, 34.594677, 33.480747>,  <28.321983, 35.268227, 33.209610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405836, 34.594677, 33.480747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539669, 34.864643, 33.743820>,  <28.619968, 35.026623, 33.901665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539669, 34.864643, 33.743820>,  <28.405836, 34.594677, 33.480747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539669, 34.864643, 33.743820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610312, -0.376578, 0.696928,
		0.718034, -0.634573, 0.285910,
		0.334584, 0.674912, 0.657683,
		28.640045, 35.067116, 33.941124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513988, 34.186993, 34.046150>,  <28.405836, 34.594677, 33.480747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513988, 34.186993, 34.046150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481503, 34.562012, 34.181442>,  <28.462011, 34.787025, 34.262619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481503, 34.562012, 34.181442>,  <28.513988, 34.186993, 34.046150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481503, 34.562012, 34.181442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645462, -0.308055, 0.698915,
		0.759462, -0.161552, 0.630173,
		-0.081217, 0.937552, 0.338232,
		28.457138, 34.843277, 34.282913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586674, 34.208752, 34.823021>,  <28.513988, 34.186993, 34.046150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586674, 34.208752, 34.823021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396124, 34.547901, 34.729912>,  <28.281794, 34.751389, 34.674046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396124, 34.547901, 34.729912>,  <28.586674, 34.208752, 34.823021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396124, 34.547901, 34.729912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645254, -0.157286, 0.747601,
		0.597257, 0.506337, 0.622019,
		-0.476373, 0.847870, -0.232776,
		28.253212, 34.802261, 34.660080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561394, 34.536999, 35.408665>,  <28.586674, 34.208752, 34.823021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561394, 34.536999, 35.408665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275846, 34.698097, 35.179516>,  <28.104517, 34.794758, 35.042027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275846, 34.698097, 35.179516>,  <28.561394, 34.536999, 35.408665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275846, 34.698097, 35.179516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641150, -0.046895, 0.765982,
		0.281631, 0.914110, 0.291698,
		-0.713871, 0.402746, -0.572874,
		28.061686, 34.818920, 35.007652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293320, 35.211899, 35.703480>,  <28.561394, 34.536999, 35.408665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293320, 35.211899, 35.703480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008501, 35.031296, 35.488396>,  <27.837610, 34.922932, 35.359344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008501, 35.031296, 35.488396>,  <28.293320, 35.211899, 35.703480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008501, 35.031296, 35.488396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587633, -0.035929, 0.808329,
		-0.384288, 0.891542, -0.239739,
		-0.712046, -0.451510, -0.537707,
		27.794888, 34.895844, 35.327084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738359, 35.628990, 35.647083>,  <28.293320, 35.211899, 35.703480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738359, 35.628990, 35.647083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655565, 35.237762, 35.637833>,  <27.605888, 35.003025, 35.632282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655565, 35.237762, 35.637833>,  <27.738359, 35.628990, 35.647083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655565, 35.237762, 35.637833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564533, 0.100098, 0.819318,
		-0.799037, 0.182640, -0.572872,
		-0.206983, -0.978071, -0.023124,
		27.593470, 34.944340, 35.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836285, 36.059067, 36.219303>,  <27.738359, 35.628990, 35.647083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836285, 36.059067, 36.219303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766129, 36.403904, 36.409477>,  <27.724035, 36.610806, 36.523582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766129, 36.403904, 36.409477>,  <27.836285, 36.059067, 36.219303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766129, 36.403904, 36.409477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105014, -0.463786, 0.879701,
		0.978882, 0.204218, -0.009188,
		-0.175389, 0.862089, 0.475438,
		27.713512, 36.662529, 36.552109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423458, 36.316448, 36.743465>,  <27.836285, 36.059067, 36.219303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423458, 36.316448, 36.743465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034870, 36.375717, 36.817532>,  <27.801716, 36.411278, 36.861973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034870, 36.375717, 36.817532>,  <28.423458, 36.316448, 36.743465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034870, 36.375717, 36.817532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107717, -0.419910, 0.901151,
		0.211279, 0.895389, 0.391970,
		-0.971472, 0.148172, 0.185167,
		27.743429, 36.420170, 36.873081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182951, 36.718945, 37.460148>,  <28.423458, 36.316448, 36.743465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182951, 36.718945, 37.460148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912798, 36.457230, 37.324055>,  <27.750706, 36.300201, 37.242397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912798, 36.457230, 37.324055>,  <28.182951, 36.718945, 37.460148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912798, 36.457230, 37.324055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002583, -0.459255, 0.888301,
		-0.737463, 0.600822, 0.308483,
		-0.675383, -0.654292, -0.340236,
		27.710182, 36.260941, 37.221985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588495, 36.646191, 37.873211>,  <28.182951, 36.718945, 37.460148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588495, 36.646191, 37.873211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606756, 36.286579, 37.699009>,  <27.617712, 36.070812, 37.594486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606756, 36.286579, 37.699009>,  <27.588495, 36.646191, 37.873211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606756, 36.286579, 37.699009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163903, -0.423310, 0.891035,
		-0.985420, -0.112058, 0.128028,
		0.045652, -0.899028, -0.435504,
		27.620451, 36.016872, 37.568359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146027, 36.351212, 38.341526>,  <27.588495, 36.646191, 37.873211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146027, 36.351212, 38.341526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397987, 36.126392, 38.127113>,  <27.549164, 35.991501, 37.998466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397987, 36.126392, 38.127113>,  <27.146027, 36.351212, 38.341526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397987, 36.126392, 38.127113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454321, -0.293118, 0.841234,
		-0.629933, -0.773423, 0.070715,
		0.629902, -0.562048, -0.536028,
		27.586958, 35.957779, 37.966305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173677, 35.564812, 38.551945>,  <27.146027, 36.351212, 38.341526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173677, 35.564812, 38.551945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546858, 35.645386, 38.432594>,  <27.770765, 35.693729, 38.360985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546858, 35.645386, 38.432594>,  <27.173677, 35.564812, 38.551945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546858, 35.645386, 38.432594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351331, -0.328576, 0.876701,
		0.078554, -0.922748, -0.377314,
		0.932950, 0.201430, -0.298380,
		27.826742, 35.705814, 38.343079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316196, 35.874603, 39.230885>,  <27.173677, 35.564812, 38.551945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316196, 35.874603, 39.230885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053907, 35.714394, 39.486889>,  <26.896534, 35.618267, 39.640491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053907, 35.714394, 39.486889>,  <27.316196, 35.874603, 39.230885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053907, 35.714394, 39.486889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151336, -0.760761, -0.631141,
		0.739678, -0.510710, 0.438236,
		-0.655723, -0.400521, 0.640008,
		26.857191, 35.594238, 39.678890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401415, 35.200485, 39.473278>,  <27.316196, 35.874603, 39.230885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401415, 35.200485, 39.473278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001593, 35.205471, 39.484116>,  <26.761700, 35.208462, 39.490616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001593, 35.205471, 39.484116>,  <27.401415, 35.200485, 39.473278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001593, 35.205471, 39.484116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022029, -0.921004, -0.388930,
		0.020102, -0.389354, 0.920869,
		-0.999555, 0.012467, 0.027091,
		26.701727, 35.209209, 39.492245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140154, 34.554039, 39.807415>,  <27.401415, 35.200485, 39.473278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140154, 34.554039, 39.807415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849947, 34.693542, 39.570099>,  <26.675823, 34.777245, 39.427708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849947, 34.693542, 39.570099>,  <27.140154, 34.554039, 39.807415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849947, 34.693542, 39.570099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167538, -0.925653, -0.339261,
		-0.667501, -0.146741, 0.730007,
		-0.725516, 0.348761, -0.593289,
		26.632292, 34.798172, 39.392113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495890, 34.150970, 39.891472>,  <27.140154, 34.554039, 39.807415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495890, 34.150970, 39.891472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482021, 34.303246, 39.521851>,  <26.473701, 34.394611, 39.300079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482021, 34.303246, 39.521851>,  <26.495890, 34.150970, 39.891472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482021, 34.303246, 39.521851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140929, -0.917231, -0.372594,
		-0.989412, 0.117308, 0.085450,
		-0.034669, 0.380691, -0.924052,
		26.471621, 34.417454, 39.244637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036224, 33.708691, 39.664238>,  <26.495890, 34.150970, 39.891472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036224, 33.708691, 39.664238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200119, 33.884350, 39.344421>,  <26.298456, 33.989746, 39.152531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200119, 33.884350, 39.344421>,  <26.036224, 33.708691, 39.664238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200119, 33.884350, 39.344421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063750, -0.860563, -0.505339,
		-0.909973, 0.258028, -0.324610,
		0.409738, 0.439150, -0.799538,
		26.323040, 34.016094, 39.104561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808519, 33.404770, 38.917416>,  <26.036224, 33.708691, 39.664238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808519, 33.404770, 38.917416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170572, 33.558781, 38.845322>,  <26.387804, 33.651188, 38.802067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170572, 33.558781, 38.845322>,  <25.808519, 33.404770, 38.917416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170572, 33.558781, 38.845322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265190, -0.842720, -0.468505,
		-0.332277, 0.376262, -0.864881,
		0.905133, 0.385031, -0.180236,
		26.442112, 33.674290, 38.791252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340300, 32.967068, 39.006073>,  <25.808519, 33.404770, 38.917416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340300, 32.967068, 39.006073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405279, 33.010052, 38.613735>,  <26.444267, 33.035843, 38.378330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405279, 33.010052, 38.613735>,  <26.340300, 32.967068, 39.006073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405279, 33.010052, 38.613735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170456, 0.976051, 0.135162,
		0.971883, -0.189149, 0.140238,
		0.162445, 0.107457, -0.980849,
		26.454014, 33.042290, 38.319481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951630, 33.361492, 38.883575>,  <26.340300, 32.967068, 39.006073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951630, 33.361492, 38.883575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709557, 33.407146, 38.568432>,  <26.564312, 33.434540, 38.379345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709557, 33.407146, 38.568432>,  <26.951630, 33.361492, 38.883575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709557, 33.407146, 38.568432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052450, 0.993236, 0.103596,
		0.794357, 0.021371, -0.607075,
		-0.605183, 0.114133, -0.787863,
		26.528002, 33.441387, 38.332073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167923, 33.946331, 38.331825>,  <26.951630, 33.361492, 38.883575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167923, 33.946331, 38.331825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779293, 33.924881, 38.424061>,  <26.546116, 33.912010, 38.479401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779293, 33.924881, 38.424061>,  <27.167923, 33.946331, 38.331825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779293, 33.924881, 38.424061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065130, 0.875884, 0.478107,
		-0.227606, 0.479534, -0.847492,
		-0.971573, -0.053623, 0.230588,
		26.487822, 33.908794, 38.493237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842197, 34.592571, 38.025536>,  <27.167923, 33.946331, 38.331825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842197, 34.592571, 38.025536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659103, 34.430885, 38.342293>,  <26.549248, 34.333874, 38.532349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659103, 34.430885, 38.342293>,  <26.842197, 34.592571, 38.025536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659103, 34.430885, 38.342293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004736, 0.891774, 0.452457,
		-0.889077, 0.203354, -0.410108,
		-0.457733, -0.404211, 0.791893,
		26.521784, 34.309624, 38.579861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262934, 35.027294, 38.131313>,  <26.842197, 34.592571, 38.025536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262934, 35.027294, 38.131313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294048, 34.832245, 38.479145>,  <26.312717, 34.715214, 38.687843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294048, 34.832245, 38.479145>,  <26.262934, 35.027294, 38.131313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294048, 34.832245, 38.479145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203663, 0.846058, 0.492653,
		-0.975946, -0.215423, -0.033500,
		0.077786, -0.487626, 0.869581,
		26.317385, 34.685959, 38.740021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686552, 35.189800, 38.603889>,  <26.262934, 35.027294, 38.131313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686552, 35.189800, 38.603889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984743, 35.075424, 38.844723>,  <26.163658, 35.006798, 38.989223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984743, 35.075424, 38.844723>,  <25.686552, 35.189800, 38.603889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984743, 35.075424, 38.844723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109489, 0.838501, 0.533787,
		-0.657477, -0.463847, 0.593776,
		0.745477, -0.285940, 0.602081,
		26.208385, 34.989643, 39.025349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.407436, 35.049461, 39.184998>,  <25.686552, 35.189800, 38.603889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.407436, 35.049461, 39.184998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767479, 35.217663, 39.139420>,  <25.983503, 35.318584, 39.112072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767479, 35.217663, 39.139420>,  <25.407436, 35.049461, 39.184998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767479, 35.217663, 39.139420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371733, 0.877672, 0.302502,
		0.227211, -0.229926, 0.946314,
		0.900105, 0.420508, -0.113945,
		26.037510, 35.343815, 39.105236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574928, 35.445042, 39.792946>,  <25.407436, 35.049461, 39.184998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574928, 35.445042, 39.792946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725790, 35.572350, 39.445045>,  <25.816307, 35.648735, 39.236305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725790, 35.572350, 39.445045>,  <25.574928, 35.445042, 39.792946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725790, 35.572350, 39.445045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404930, 0.901251, 0.154202,
		0.832938, 0.294028, 0.468788,
		0.377157, 0.318267, -0.869747,
		25.838938, 35.667831, 39.184120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872677, 36.155331, 39.819847>,  <25.574928, 35.445042, 39.792946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872677, 36.155331, 39.819847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746243, 36.087990, 39.446377>,  <25.670382, 36.047585, 39.222294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746243, 36.087990, 39.446377>,  <25.872677, 36.155331, 39.819847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746243, 36.087990, 39.446377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460543, 0.887627, -0.004139,
		0.829452, 0.428689, -0.358100,
		-0.316085, -0.168354, -0.933674,
		25.651417, 36.037483, 39.166275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680550, 36.092552, 39.951710>,  <25.872677, 36.155331, 39.819847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680550, 36.092552, 39.951710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985338, 35.954704, 40.171032>,  <27.168211, 35.871998, 40.302624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985338, 35.954704, 40.171032>,  <26.680550, 36.092552, 39.951710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985338, 35.954704, 40.171032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638006, -0.544735, 0.544254,
		0.111122, -0.764528, -0.634939,
		0.761972, -0.344616, 0.548306,
		27.213930, 35.851318, 40.335526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275209, 36.733822, 40.224758>,  <26.680550, 36.092552, 39.951710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275209, 36.733822, 40.224758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661219, 36.813351, 40.156403>,  <26.892824, 36.861069, 40.115387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661219, 36.813351, 40.156403>,  <26.275209, 36.733822, 40.224758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661219, 36.813351, 40.156403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252366, 0.527843, -0.810983,
		-0.071039, 0.825742, 0.559556,
		0.965021, 0.198824, -0.170892,
		26.950726, 36.872997, 40.105137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643003, 37.423237, 40.401608>,  <26.275209, 36.733822, 40.224758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643003, 37.423237, 40.401608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851624, 37.286266, 40.089008>,  <26.976795, 37.204086, 39.901451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851624, 37.286266, 40.089008>,  <26.643003, 37.423237, 40.401608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851624, 37.286266, 40.089008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308864, 0.778042, -0.547040,
		0.795355, 0.526684, 0.300024,
		0.521549, -0.342425, -0.781494,
		27.008087, 37.183540, 39.854561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103943, 37.992172, 40.153351>,  <26.643003, 37.423237, 40.401608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103943, 37.992172, 40.153351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990616, 37.719688, 39.883331>,  <26.922619, 37.556198, 39.721321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990616, 37.719688, 39.883331>,  <27.103943, 37.992172, 40.153351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990616, 37.719688, 39.883331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283804, 0.731915, -0.619481,
		0.916072, 0.016072, -0.400693,
		-0.283317, -0.681207, -0.675048,
		26.905621, 37.515327, 39.680817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422958, 38.101669, 39.442802>,  <27.103943, 37.992172, 40.153351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422958, 38.101669, 39.442802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049726, 37.959274, 39.422264>,  <26.825787, 37.873837, 39.409943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049726, 37.959274, 39.422264>,  <27.422958, 38.101669, 39.442802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049726, 37.959274, 39.422264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286725, 0.822410, -0.491357,
		0.217139, -0.443754, -0.869444,
		-0.933081, -0.355984, -0.051342,
		26.769802, 37.852478, 39.406860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837523, 38.479198, 39.773834>,  <27.422958, 38.101669, 39.442802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837523, 38.479198, 39.773834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800371, 38.847179, 39.926182>,  <27.778080, 39.067966, 40.017590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800371, 38.847179, 39.926182>,  <27.837523, 38.479198, 39.773834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800371, 38.847179, 39.926182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583378, -0.259706, 0.769560,
		0.806873, 0.293666, -0.512559,
		-0.092879, 0.919953, 0.380868,
		27.772507, 39.123165, 40.040443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466835, 38.772270, 39.961082>,  <27.837523, 38.479198, 39.773834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466835, 38.772270, 39.961082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214298, 38.949665, 40.215553>,  <28.062777, 39.056103, 40.368237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214298, 38.949665, 40.215553>,  <28.466835, 38.772270, 39.961082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214298, 38.949665, 40.215553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541527, -0.335094, 0.771012,
		0.555116, 0.831281, -0.028603,
		-0.631343, 0.443491, 0.636177,
		28.024895, 39.082714, 40.406406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946865, 39.150677, 40.463997>,  <28.466835, 38.772270, 39.961082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946865, 39.150677, 40.463997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593929, 39.039982, 40.616257>,  <28.382168, 38.973564, 40.707611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593929, 39.039982, 40.616257>,  <28.946865, 39.150677, 40.463997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593929, 39.039982, 40.616257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470561, -0.530585, 0.705019,
		0.006862, 0.801185, 0.598378,
		-0.882340, -0.276736, 0.380647,
		28.329227, 38.956963, 40.730450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855831, 39.260803, 41.225594>,  <28.946865, 39.150677, 40.463997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855831, 39.260803, 41.225594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669802, 38.932125, 41.093826>,  <28.558184, 38.734917, 41.014767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669802, 38.932125, 41.093826>,  <28.855831, 39.260803, 41.225594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669802, 38.932125, 41.093826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562371, -0.561608, 0.606906,
		-0.683699, 0.096999, 0.723289,
		-0.465074, -0.821698, -0.329421,
		28.530279, 38.685616, 40.994999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485668, 38.966560, 41.795017>,  <28.855831, 39.260803, 41.225594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485668, 38.966560, 41.795017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638067, 38.716042, 41.522961>,  <28.729507, 38.565731, 41.359726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638067, 38.716042, 41.522961>,  <28.485668, 38.966560, 41.795017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638067, 38.716042, 41.522961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663901, -0.326661, 0.672702,
		-0.643488, -0.707844, 0.291343,
		0.380998, -0.626298, -0.680141,
		28.752367, 38.528152, 41.318920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508348, 38.220448, 42.114254>,  <28.485668, 38.966560, 41.795017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508348, 38.220448, 42.114254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778259, 38.279915, 41.825096>,  <28.940207, 38.315594, 41.651604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778259, 38.279915, 41.825096>,  <28.508348, 38.220448, 42.114254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778259, 38.279915, 41.825096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665371, -0.546324, 0.508734,
		-0.319303, -0.824275, -0.467565,
		0.674779, 0.148664, -0.722892,
		28.980694, 38.324512, 41.608227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844566, 37.626953, 41.754772>,  <28.508348, 38.220448, 42.114254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844566, 37.626953, 41.754772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089682, 37.941566, 41.785397>,  <29.236752, 38.130333, 41.803772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089682, 37.941566, 41.785397>,  <28.844566, 37.626953, 41.754772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089682, 37.941566, 41.785397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649618, -0.556536, 0.517942,
		0.449983, -0.267657, -0.851983,
		0.612790, 0.786529, 0.076557,
		29.273520, 38.177525, 41.808365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694429, 37.105373, 41.264614>,  <28.844566, 37.626953, 41.754772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694429, 37.105373, 41.264614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750187, 36.810505, 41.000145>,  <28.783642, 36.633583, 40.841465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750187, 36.810505, 41.000145>,  <28.694429, 37.105373, 41.264614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750187, 36.810505, 41.000145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956894, -0.071530, 0.281492,
		-0.254802, -0.671906, 0.695427,
		0.139392, -0.737175, -0.661168,
		28.792004, 36.589352, 40.801796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374811, 36.841476, 41.529758>,  <28.694429, 37.105373, 41.264614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374811, 36.841476, 41.529758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259874, 36.608601, 41.225525>,  <29.190912, 36.468876, 41.042984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259874, 36.608601, 41.225525>,  <29.374811, 36.841476, 41.529758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259874, 36.608601, 41.225525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790124, -0.592932, 0.155359,
		-0.541423, -0.556316, 0.630376,
		-0.287341, -0.582190, -0.760585,
		29.173672, 36.433945, 40.997349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573626, 36.152374, 41.693478>,  <29.374811, 36.841476, 41.529758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573626, 36.152374, 41.693478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554142, 36.167122, 41.294224>,  <29.542452, 36.175972, 41.054672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554142, 36.167122, 41.294224>,  <29.573626, 36.152374, 41.693478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554142, 36.167122, 41.294224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698693, -0.712865, -0.060430,
		-0.713762, -0.700331, 0.008959,
		-0.048707, 0.036873, -0.998132,
		29.539530, 36.178185, 40.994785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482946, 35.469978, 41.572598>,  <29.573626, 36.152374, 41.693478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482946, 35.469978, 41.572598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603640, 35.688194, 41.259846>,  <29.676056, 35.819122, 41.072193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603640, 35.688194, 41.259846>,  <29.482946, 35.469978, 41.572598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603640, 35.688194, 41.259846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699943, -0.683590, -0.206847,
		-0.647331, -0.484861, -0.588110,
		0.301734, 0.545541, -0.781883,
		29.694160, 35.851856, 41.025280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605452, 34.974876, 41.160286>,  <29.482946, 35.469978, 41.572598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605452, 34.974876, 41.160286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847857, 35.279129, 41.067177>,  <29.993299, 35.461681, 41.011311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847857, 35.279129, 41.067177>,  <29.605452, 34.974876, 41.160286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847857, 35.279129, 41.067177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751309, -0.643455, -0.146632,
		-0.261310, -0.086021, -0.961414,
		0.606013, 0.760635, -0.232769,
		30.029661, 35.507320, 40.997345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947315, 34.823467, 40.527012>,  <29.605452, 34.974876, 41.160286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947315, 34.823467, 40.527012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199732, 35.070202, 40.715183>,  <30.351183, 35.218243, 40.828087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199732, 35.070202, 40.715183>,  <29.947315, 34.823467, 40.527012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199732, 35.070202, 40.715183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754099, -0.630031, -0.185460,
		0.181984, 0.471782, -0.862730,
		0.631043, 0.616834, 0.470426,
		30.389046, 35.255253, 40.856312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579517, 35.056297, 40.085766>,  <29.947315, 34.823467, 40.527012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579517, 35.056297, 40.085766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678755, 35.061878, 40.473221>,  <30.738297, 35.065228, 40.705692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678755, 35.061878, 40.473221>,  <30.579517, 35.056297, 40.085766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678755, 35.061878, 40.473221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760800, -0.621790, -0.185907,
		0.599694, 0.783060, -0.164876,
		0.248094, 0.013950, 0.968635,
		30.753183, 35.066063, 40.763813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311525, 35.333828, 40.183949>,  <30.579517, 35.056297, 40.085766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311525, 35.333828, 40.183949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208973, 35.095070, 40.488052>,  <31.147442, 34.951817, 40.670513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208973, 35.095070, 40.488052>,  <31.311525, 35.333828, 40.183949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208973, 35.095070, 40.488052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839748, -0.527036, -0.130599,
		0.478637, 0.604941, 0.636359,
		-0.256380, -0.596891, 0.760257,
		31.132059, 34.916004, 40.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875648, 35.321980, 40.561005>,  <31.311525, 35.333828, 40.183949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875648, 35.321980, 40.561005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670776, 35.004738, 40.692856>,  <31.547853, 34.814392, 40.771969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670776, 35.004738, 40.692856>,  <31.875648, 35.321980, 40.561005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670776, 35.004738, 40.692856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807048, -0.575722, -0.131215,
		0.293844, 0.198824, 0.934947,
		-0.512181, -0.793104, 0.329632,
		31.517122, 34.766808, 40.791744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126419, 34.909477, 41.262180>,  <31.875648, 35.321980, 40.561005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126419, 34.909477, 41.262180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935747, 34.688072, 40.989006>,  <31.821344, 34.555229, 40.825100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935747, 34.688072, 40.989006>,  <32.126419, 34.909477, 41.262180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935747, 34.688072, 40.989006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807300, -0.583101, -0.090887,
		-0.347916, -0.594661, 0.724799,
		-0.476678, -0.553509, -0.682940,
		31.792744, 34.522018, 40.784122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453140, 34.281036, 41.422325>,  <32.126419, 34.909477, 41.262180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453140, 34.281036, 41.422325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259106, 34.243717, 41.074535>,  <32.142685, 34.221325, 40.865860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259106, 34.243717, 41.074535>,  <32.453140, 34.281036, 41.422325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259106, 34.243717, 41.074535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731871, -0.587496, -0.345273,
		-0.478598, -0.803830, 0.353271,
		-0.485087, -0.093302, -0.869474,
		32.113579, 34.215725, 40.813694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927860, 33.855801, 40.987617>,  <32.453140, 34.281036, 41.422325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927860, 33.855801, 40.987617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609043, 33.891808, 40.748749>,  <32.417751, 33.913414, 40.605427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609043, 33.891808, 40.748749>,  <32.927860, 33.855801, 40.987617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609043, 33.891808, 40.748749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383726, -0.688076, -0.615878,
		-0.466343, -0.720033, 0.513883,
		-0.797044, 0.090020, -0.597175,
		32.369930, 33.918812, 40.569595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627075, 33.220146, 40.774761>,  <32.927860, 33.855801, 40.987617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627075, 33.220146, 40.774761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517933, 33.456470, 40.471054>,  <32.452450, 33.598267, 40.288830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517933, 33.456470, 40.471054>,  <32.627075, 33.220146, 40.774761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517933, 33.456470, 40.471054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300441, -0.697416, -0.650650,
		-0.913940, -0.405648, 0.012788,
		-0.272854, 0.590813, -0.759270,
		32.436077, 33.633713, 40.243275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008526, 32.953548, 40.324104>,  <32.627075, 33.220146, 40.774761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008526, 32.953548, 40.324104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280468, 33.170937, 40.127151>,  <32.443634, 33.301369, 40.008980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280468, 33.170937, 40.127151>,  <32.008526, 32.953548, 40.324104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280468, 33.170937, 40.127151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081022, -0.722971, -0.686110,
		-0.728855, 0.426563, -0.535550,
		0.679857, 0.543467, -0.492380,
		32.484425, 33.333977, 39.979439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804466, 32.887642, 39.713219>,  <32.008526, 32.953548, 40.324104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804466, 32.887642, 39.713219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170010, 33.033897, 39.642597>,  <32.389336, 33.121651, 39.600224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170010, 33.033897, 39.642597>,  <31.804466, 32.887642, 39.713219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170010, 33.033897, 39.642597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016406, -0.467728, -0.883720,
		-0.405703, 0.804698, -0.433436,
		0.913858, 0.365639, -0.176557,
		32.444168, 33.143589, 39.589630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889557, 33.532524, 39.161877>,  <31.804466, 32.887642, 39.713219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889557, 33.532524, 39.161877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221741, 33.309769, 39.167736>,  <32.421051, 33.176117, 39.171253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221741, 33.309769, 39.167736>,  <31.889557, 33.532524, 39.161877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221741, 33.309769, 39.167736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101824, -0.177600, -0.978821,
		0.547694, 0.811380, -0.204194,
		0.830460, -0.556886, 0.014653,
		32.470879, 33.142704, 39.172131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320400, 33.749535, 38.552235>,  <31.889557, 33.532524, 39.161877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320400, 33.749535, 38.552235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485634, 33.398682, 38.650215>,  <32.584774, 33.188171, 38.709003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485634, 33.398682, 38.650215>,  <32.320400, 33.749535, 38.552235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485634, 33.398682, 38.650215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098287, -0.224463, -0.969513,
		0.905373, 0.424567, -0.006511,
		0.413085, -0.877131, 0.244952,
		32.609558, 33.135544, 38.723701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857716, 33.706871, 38.124302>,  <32.320400, 33.749535, 38.552235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857716, 33.706871, 38.124302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822063, 33.326691, 38.243435>,  <32.800671, 33.098583, 38.314915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822063, 33.326691, 38.243435>,  <32.857716, 33.706871, 38.124302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822063, 33.326691, 38.243435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086497, -0.305279, -0.948326,
		0.992257, -0.058765, 0.109422,
		-0.089133, -0.950448, 0.297833,
		32.795322, 33.041557, 38.332787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365383, 33.378529, 37.715595>,  <32.857716, 33.706871, 38.124302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365383, 33.378529, 37.715595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118923, 33.088837, 37.839436>,  <32.971046, 32.915020, 37.913738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118923, 33.088837, 37.839436>,  <33.365383, 33.378529, 37.715595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118923, 33.088837, 37.839436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052610, -0.430039, -0.901276,
		0.785873, -0.539030, 0.303069,
		-0.616146, -0.724233, 0.309598,
		32.934078, 32.871567, 37.932316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643150, 32.634575, 37.581745>,  <33.365383, 33.378529, 37.715595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643150, 32.634575, 37.581745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244755, 32.601929, 37.596390>,  <33.005718, 32.582340, 37.605175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244755, 32.601929, 37.596390>,  <33.643150, 32.634575, 37.581745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244755, 32.601929, 37.596390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013333, -0.540182, -0.841443,
		0.088451, -0.837582, 0.539105,
		-0.995991, -0.081614, 0.036612,
		32.945957, 32.577446, 37.607372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496925, 32.005283, 37.301945>,  <33.643150, 32.634575, 37.581745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496925, 32.005283, 37.301945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129948, 32.164188, 37.293201>,  <32.909760, 32.259533, 37.287956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129948, 32.164188, 37.293201>,  <33.496925, 32.005283, 37.301945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129948, 32.164188, 37.293201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197998, -0.503533, -0.840982,
		-0.345099, -0.767226, 0.540621,
		-0.917444, 0.397264, -0.021859,
		32.854713, 32.283367, 37.286644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055515, 31.426859, 36.954296>,  <33.496925, 32.005283, 37.301945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055515, 31.426859, 36.954296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871910, 31.781290, 36.928452>,  <32.761749, 31.993950, 36.912945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871910, 31.781290, 36.928452>,  <33.055515, 31.426859, 36.954296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871910, 31.781290, 36.928452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099700, -0.123637, -0.987306,
		-0.882820, -0.446741, 0.145092,
		-0.459009, 0.886079, -0.064610,
		32.734207, 32.047115, 36.909069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363525, 31.285477, 36.711784>,  <33.055515, 31.426859, 36.954296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363525, 31.285477, 36.711784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403107, 31.673746, 36.624146>,  <32.426853, 31.906708, 36.571560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403107, 31.673746, 36.624146>,  <32.363525, 31.285477, 36.711784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403107, 31.673746, 36.624146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285953, -0.183157, -0.940577,
		-0.953121, 0.155723, 0.259443,
		0.098950, 0.970672, -0.219100,
		32.432793, 31.964949, 36.558414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874472, 31.339462, 36.301788>,  <32.363525, 31.285477, 36.711784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874472, 31.339462, 36.301788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081024, 31.675920, 36.237511>,  <32.204956, 31.877796, 36.198944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081024, 31.675920, 36.237511>,  <31.874472, 31.339462, 36.301788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081024, 31.675920, 36.237511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364838, 0.046321, -0.929918,
		-0.774755, 0.538818, 0.330802,
		0.516380, 0.841147, -0.160694,
		32.235939, 31.928265, 36.189301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455288, 31.806576, 36.038071>,  <31.874472, 31.339462, 36.301788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455288, 31.806576, 36.038071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815182, 31.945164, 35.931911>,  <32.031116, 32.028316, 35.868217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815182, 31.945164, 35.931911>,  <31.455288, 31.806576, 36.038071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815182, 31.945164, 35.931911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350885, 0.212641, -0.911956,
		-0.259529, 0.913643, 0.312891,
		0.899736, 0.346468, -0.265397,
		32.085102, 32.049103, 35.852291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373627, 32.454346, 35.731995>,  <31.455288, 31.806576, 36.038071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373627, 32.454346, 35.731995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726322, 32.327908, 35.591927>,  <31.937941, 32.252045, 35.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726322, 32.327908, 35.591927>,  <31.373627, 32.454346, 35.731995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726322, 32.327908, 35.591927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310908, 0.168880, -0.935316,
		0.354782, 0.933577, 0.050633,
		0.881740, -0.316091, -0.350172,
		31.990845, 32.233082, 35.486874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709255, 32.940300, 35.227825>,  <31.373627, 32.454346, 35.731995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709255, 32.940300, 35.227825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824684, 32.565830, 35.147530>,  <31.893942, 32.341148, 35.099350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824684, 32.565830, 35.147530>,  <31.709255, 32.940300, 35.227825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824684, 32.565830, 35.147530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408144, 0.069380, -0.910277,
		0.866109, 0.344613, -0.362074,
		0.288573, -0.936178, -0.200743,
		31.911257, 32.284977, 35.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941687, 33.016853, 34.576111>,  <31.709255, 32.940300, 35.227825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941687, 33.016853, 34.576111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870974, 32.624554, 34.609276>,  <31.828547, 32.389172, 34.629173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870974, 32.624554, 34.609276>,  <31.941687, 33.016853, 34.576111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870974, 32.624554, 34.609276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376799, -0.010385, -0.926237,
		0.909269, -0.194982, -0.367710,
		-0.176781, -0.980752, 0.082912,
		31.817940, 32.330330, 34.634148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051117, 32.807774, 33.995987>,  <31.941687, 33.016853, 34.576111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051117, 32.807774, 33.995987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843973, 32.508911, 34.162636>,  <31.719687, 32.329594, 34.262627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843973, 32.508911, 34.162636>,  <32.051117, 32.807774, 33.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843973, 32.508911, 34.162636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441026, -0.184132, -0.878403,
		0.733019, -0.638633, -0.234160,
		-0.517861, -0.747156, 0.416626,
		31.688616, 32.284763, 34.287624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931973, 32.499523, 33.416660>,  <32.051117, 32.807774, 33.995987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931973, 32.499523, 33.416660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684776, 32.333202, 33.683552>,  <31.536459, 32.233410, 33.843685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684776, 32.333202, 33.683552>,  <31.931973, 32.499523, 33.416660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684776, 32.333202, 33.683552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632282, -0.241518, -0.736130,
		0.467232, -0.876800, -0.113648,
		-0.617991, -0.415801, 0.667230,
		31.499378, 32.208462, 33.883720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821121, 31.863419, 33.140114>,  <31.931973, 32.499523, 33.416660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821121, 31.863419, 33.140114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512930, 31.952234, 33.379131>,  <31.328014, 32.005524, 33.522541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512930, 31.952234, 33.379131>,  <31.821121, 31.863419, 33.140114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512930, 31.952234, 33.379131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637297, -0.246803, -0.730028,
		-0.014617, -0.943285, 0.331660,
		-0.770479, 0.222037, 0.597546,
		31.281786, 32.018845, 33.558395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234865, 31.334356, 32.975018>,  <31.821121, 31.863419, 33.140114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234865, 31.334356, 32.975018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039303, 31.619907, 33.175556>,  <30.921967, 31.791239, 33.295879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039303, 31.619907, 33.175556>,  <31.234865, 31.334356, 32.975018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039303, 31.619907, 33.175556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828923, -0.201133, -0.521950,
		-0.271772, -0.670762, 0.690086,
		-0.488903, 0.713880, 0.501348,
		30.892632, 31.834070, 33.325962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558914, 31.080927, 33.077152>,  <31.234865, 31.334356, 32.975018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558914, 31.080927, 33.077152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503265, 31.470421, 33.149246>,  <30.469877, 31.704117, 33.192501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503265, 31.470421, 33.149246>,  <30.558914, 31.080927, 33.077152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503265, 31.470421, 33.149246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874306, -0.035312, -0.484090,
		-0.465011, -0.224925, 0.856255,
		-0.139120, 0.973736, 0.180232,
		30.461529, 31.762541, 33.203316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885334, 31.173092, 33.260246>,  <30.558914, 31.080927, 33.077152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885334, 31.173092, 33.260246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975697, 31.550413, 33.162968>,  <30.029913, 31.776806, 33.104603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975697, 31.550413, 33.162968>,  <29.885334, 31.173092, 33.260246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975697, 31.550413, 33.162968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863639, 0.078443, -0.497970,
		-0.450660, 0.322526, 0.832396,
		0.225904, 0.943305, -0.243195,
		30.043468, 31.833405, 33.090008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267424, 31.458723, 33.283375>,  <29.885334, 31.173092, 33.260246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267424, 31.458723, 33.283375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501673, 31.696318, 33.062748>,  <29.642221, 31.838875, 32.930370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501673, 31.696318, 33.062748>,  <29.267424, 31.458723, 33.283375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501673, 31.696318, 33.062748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750165, 0.139365, -0.646398,
		-0.307082, 0.792312, 0.527203,
		0.585622, 0.593986, -0.551568,
		29.677359, 31.874514, 32.897278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907354, 32.151802, 33.146641>,  <29.267424, 31.458723, 33.283375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907354, 32.151802, 33.146641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186449, 32.136414, 32.860512>,  <29.353907, 32.127182, 32.688835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186449, 32.136414, 32.860512>,  <28.907354, 32.151802, 33.146641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186449, 32.136414, 32.860512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676710, 0.292177, -0.675792,
		0.235000, 0.955590, 0.177828,
		0.697738, -0.038473, -0.715319,
		29.395771, 32.124870, 32.645916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873047, 32.722668, 32.875114>,  <28.907354, 32.151802, 33.146641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873047, 32.722668, 32.875114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036896, 32.487453, 32.596138>,  <29.135204, 32.346325, 32.428753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036896, 32.487453, 32.596138>,  <28.873047, 32.722668, 32.875114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036896, 32.487453, 32.596138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671919, 0.322640, -0.666655,
		0.617039, 0.741701, -0.262951,
		0.409620, -0.588033, -0.697444,
		29.159782, 32.311043, 32.386906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683851, 33.063354, 32.271946>,  <28.873047, 32.722668, 32.875114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683851, 33.063354, 32.271946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781124, 32.693939, 32.153324>,  <28.839487, 32.472290, 32.082153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781124, 32.693939, 32.153324>,  <28.683851, 33.063354, 32.271946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781124, 32.693939, 32.153324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701030, 0.043962, -0.711776,
		0.670388, 0.380981, -0.636736,
		0.243181, -0.923537, -0.296551,
		28.854078, 32.416878, 32.064358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648855, 33.095882, 31.536821>,  <28.683851, 33.063354, 32.271946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648855, 33.095882, 31.536821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680140, 32.697151, 31.542665>,  <28.698910, 32.457912, 31.546171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680140, 32.697151, 31.542665>,  <28.648855, 33.095882, 31.536821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680140, 32.697151, 31.542665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549473, -0.055328, -0.833678,
		0.831843, 0.057175, -0.552058,
		0.078210, -0.996830, 0.014608,
		28.703602, 32.398102, 31.547049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795813, 32.877434, 30.850601>,  <28.648855, 33.095882, 31.536821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795813, 32.877434, 30.850601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643181, 32.558807, 31.038164>,  <28.551601, 32.367630, 31.150702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643181, 32.558807, 31.038164>,  <28.795813, 32.877434, 30.850601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643181, 32.558807, 31.038164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621425, -0.154466, -0.768096,
		0.684272, -0.584480, -0.436067,
		-0.381579, -0.796570, 0.468908,
		28.528708, 32.319836, 31.178837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541805, 32.463234, 30.299223>,  <28.795813, 32.877434, 30.850601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541805, 32.463234, 30.299223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368299, 32.295483, 30.618214>,  <28.264196, 32.194832, 30.809608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368299, 32.295483, 30.618214>,  <28.541805, 32.463234, 30.299223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368299, 32.295483, 30.618214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803885, -0.219630, -0.552749,
		0.406962, -0.880842, -0.241865,
		-0.433764, -0.419379, 0.797477,
		28.238171, 32.169670, 30.857456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453199, 31.698420, 30.155821>,  <28.541805, 32.463234, 30.299223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453199, 31.698420, 30.155821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184137, 31.863531, 30.401470>,  <28.022699, 31.962599, 30.548861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184137, 31.863531, 30.401470>,  <28.453199, 31.698420, 30.155821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184137, 31.863531, 30.401470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719684, -0.172017, -0.672656,
		-0.172017, -0.894441, 0.412778,
		0.672656, -0.412778, -0.614124,
		27.982340, 31.987364, 30.585707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871552, 31.213961, 30.188787>,  <28.453199, 31.698420, 30.155821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871552, 31.213961, 30.188787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726322, 31.572214, 30.291561>,  <27.639185, 31.787167, 30.353226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726322, 31.572214, 30.291561>,  <27.871552, 31.213961, 30.188787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726322, 31.572214, 30.291561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768593, -0.131998, -0.625972,
		-0.526727, -0.424753, 0.736304,
		-0.363074, 0.895635, 0.256935,
		27.617399, 31.840904, 30.368641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271721, 31.088911, 30.141565>,  <27.871552, 31.213961, 30.188787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271721, 31.088911, 30.141565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266167, 31.488567, 30.125959>,  <27.262835, 31.728361, 30.116596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266167, 31.488567, 30.125959>,  <27.271721, 31.088911, 30.141565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266167, 31.488567, 30.125959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793473, -0.034753, -0.607612,
		-0.608447, 0.022523, 0.793275,
		-0.013883, 0.999142, -0.039016,
		27.262001, 31.788309, 30.114254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598413, 31.337063, 30.216667>,  <27.271721, 31.088911, 30.141565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598413, 31.337063, 30.216667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769869, 31.658493, 30.051485>,  <26.872742, 31.851351, 29.952375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769869, 31.658493, 30.051485>,  <26.598413, 31.337063, 30.216667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769869, 31.658493, 30.051485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714542, 0.021805, -0.699252,
		-0.552899, 0.594802, 0.583536,
		0.428640, 0.803577, -0.412955,
		26.898460, 31.899567, 29.927599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094597, 31.770241, 30.055744>,  <26.598413, 31.337063, 30.216667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094597, 31.770241, 30.055744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400644, 31.851267, 29.811264>,  <26.584272, 31.899883, 29.664576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400644, 31.851267, 29.811264>,  <26.094597, 31.770241, 30.055744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400644, 31.851267, 29.811264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643729, 0.219296, -0.733159,
		-0.014479, 0.954399, 0.298185,
		0.765117, 0.202566, -0.611199,
		26.630178, 31.912037, 29.627905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867865, 32.333199, 29.669598>,  <26.094597, 31.770241, 30.055744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867865, 32.333199, 29.669598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181986, 32.188488, 29.468634>,  <26.370459, 32.101662, 29.348055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181986, 32.188488, 29.468634>,  <25.867865, 32.333199, 29.669598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181986, 32.188488, 29.468634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525155, 0.040537, -0.850040,
		0.327891, 0.931383, -0.158156,
		0.785302, -0.361777, -0.502412,
		26.417576, 32.079956, 29.317909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854263, 32.718044, 29.094633>,  <25.867865, 32.333199, 29.669598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854263, 32.718044, 29.094633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113070, 32.439205, 28.971071>,  <26.268354, 32.271900, 28.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113070, 32.439205, 28.971071>,  <25.854263, 32.718044, 29.094633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113070, 32.439205, 28.971071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403614, 0.030589, -0.914418,
		0.646888, 0.716323, -0.261567,
		0.647017, -0.697098, -0.308905,
		26.307175, 32.230076, 28.878399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156357, 32.921341, 28.448708>,  <25.854263, 32.718044, 29.094633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156357, 32.921341, 28.448708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211565, 32.525414, 28.462658>,  <26.244690, 32.287857, 28.471029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211565, 32.525414, 28.462658>,  <26.156357, 32.921341, 28.448708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211565, 32.525414, 28.462658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367179, -0.083841, -0.926364,
		0.919853, 0.115053, -0.375011,
		0.138023, -0.989815, 0.034877,
		26.252972, 32.228470, 28.473122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480030, 32.880287, 27.900091>,  <26.156357, 32.921341, 28.448708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480030, 32.880287, 27.900091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336226, 32.513733, 27.970503>,  <26.249943, 32.293800, 28.012749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336226, 32.513733, 27.970503>,  <26.480030, 32.880287, 27.900091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336226, 32.513733, 27.970503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418386, -0.010318, -0.908211,
		0.834089, -0.400159, -0.379694,
		-0.359511, -0.916387, 0.176027,
		26.228373, 32.238815, 28.023312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786104, 32.356956, 27.373983>,  <26.480030, 32.880287, 27.900091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786104, 32.356956, 27.373983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443380, 32.205727, 27.514231>,  <26.237745, 32.114986, 27.598379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443380, 32.205727, 27.514231>,  <26.786104, 32.356956, 27.373983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443380, 32.205727, 27.514231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356659, -0.056527, -0.932523,
		0.372387, -0.924046, -0.086412,
		-0.856810, -0.378080, 0.350619,
		26.186337, 32.092304, 27.619417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615963, 31.661842, 26.970612>,  <26.786104, 32.356956, 27.373983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615963, 31.661842, 26.970612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283384, 31.816639, 27.130079>,  <26.083838, 31.909517, 27.225760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283384, 31.816639, 27.130079>,  <26.615963, 31.661842, 26.970612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283384, 31.816639, 27.130079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414975, 0.044597, -0.908739,
		-0.369454, -0.921004, 0.123512,
		-0.831444, 0.386992, 0.398670,
		26.033951, 31.932735, 27.249680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025997, 31.336224, 26.604033>,  <26.615963, 31.661842, 26.970612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025997, 31.336224, 26.604033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860458, 31.653114, 26.783411>,  <25.761135, 31.843248, 26.891037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860458, 31.653114, 26.783411>,  <26.025997, 31.336224, 26.604033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860458, 31.653114, 26.783411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595245, 0.137222, -0.791741,
		-0.688777, -0.594595, 0.414782,
		-0.413848, 0.792230, 0.448445,
		25.736303, 31.890783, 26.917944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416985, 31.418488, 26.213095>,  <26.025997, 31.336224, 26.604033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416985, 31.418488, 26.213095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418503, 31.771658, 26.400896>,  <25.419413, 31.983561, 26.513577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418503, 31.771658, 26.400896>,  <25.416985, 31.418488, 26.213095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418503, 31.771658, 26.400896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593219, 0.379956, -0.709735,
		-0.805032, -0.275824, 0.525209,
		0.003794, 0.882924, 0.469501,
		25.419641, 32.036533, 26.541746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716516, 31.586084, 26.307379>,  <25.416985, 31.418488, 26.213095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716516, 31.586084, 26.307379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916740, 31.930605, 26.342255>,  <25.036875, 32.137318, 26.363180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916740, 31.930605, 26.342255>,  <24.716516, 31.586084, 26.307379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916740, 31.930605, 26.342255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464725, 0.352315, -0.812346,
		-0.730393, 0.366107, 0.576622,
		0.500558, 0.861302, 0.087189,
		25.066908, 32.188995, 26.368412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238214, 32.210335, 26.473005>,  <24.716516, 31.586084, 26.307379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238214, 32.210335, 26.473005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559160, 32.361519, 26.288240>,  <24.751728, 32.452229, 26.177382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559160, 32.361519, 26.288240>,  <24.238214, 32.210335, 26.473005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559160, 32.361519, 26.288240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593754, 0.426942, -0.682038,
		-0.060573, 0.821504, 0.566976,
		0.802363, 0.377958, -0.461910,
		24.799870, 32.474907, 26.149668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.020933, 32.831867, 26.182549>,  <24.238214, 32.210335, 26.473005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.020933, 32.831867, 26.182549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379597, 32.789265, 26.010662>,  <24.594795, 32.763702, 25.907530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379597, 32.789265, 26.010662>,  <24.020933, 32.831867, 26.182549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379597, 32.789265, 26.010662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308727, 0.545264, -0.779343,
		0.317316, 0.831471, 0.456035,
		0.896660, -0.106508, -0.429718,
		24.648594, 32.757313, 25.881746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.205233, 33.529182, 25.981462>,  <24.020933, 32.831867, 26.182549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.205233, 33.529182, 25.981462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379816, 33.234249, 25.775223>,  <24.484566, 33.057289, 25.651480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379816, 33.234249, 25.775223>,  <24.205233, 33.529182, 25.981462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379816, 33.234249, 25.775223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235985, 0.459186, -0.856422,
		0.868225, 0.495468, 0.026417,
		0.436460, -0.737333, -0.515600,
		24.510754, 33.013050, 25.620543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847715, 33.737213, 25.547871>,  <24.205233, 33.529182, 25.981462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847715, 33.737213, 25.547871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658794, 33.423965, 25.386053>,  <24.545441, 33.236019, 25.288963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658794, 33.423965, 25.386053>,  <24.847715, 33.737213, 25.547871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.658794, 33.423965, 25.386053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191839, 0.539286, -0.819981,
		0.860306, -0.309673, -0.404940,
		-0.472304, -0.783118, -0.404544,
		24.517103, 33.189030, 25.264690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067778, 33.580528, 24.865875>,  <24.847715, 33.737213, 25.547871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067778, 33.580528, 24.865875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692671, 33.443192, 24.886700>,  <24.467607, 33.360790, 24.899195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692671, 33.443192, 24.886700>,  <25.067778, 33.580528, 24.865875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692671, 33.443192, 24.886700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194246, 0.394337, -0.898202,
		0.287862, -0.852416, -0.436489,
		-0.937765, -0.343344, 0.052063,
		24.411341, 33.340187, 24.902319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078348, 33.025593, 24.298067>,  <25.067778, 33.580528, 24.865875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078348, 33.025593, 24.298067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746475, 33.213539, 24.418633>,  <24.547352, 33.326305, 24.490973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746475, 33.213539, 24.418633>,  <25.078348, 33.025593, 24.298067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746475, 33.213539, 24.418633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004726, 0.545834, -0.837880,
		-0.558214, -0.693751, -0.455090,
		-0.829683, 0.469867, 0.301414,
		24.497570, 33.354500, 24.509056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346239, 32.338398, 23.925049>,  <25.078348, 33.025593, 24.298067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346239, 32.338398, 23.925049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659620, 32.442017, 23.699095>,  <25.847649, 32.504189, 23.563522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659620, 32.442017, 23.699095>,  <25.346239, 32.338398, 23.925049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659620, 32.442017, 23.699095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309768, 0.625225, 0.716336,
		0.538741, -0.736201, 0.409593,
		0.783455, 0.259041, -0.564885,
		25.894657, 32.519730, 23.529629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898201, 32.401291, 24.504335>,  <25.346239, 32.338398, 23.925049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898201, 32.401291, 24.504335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993328, 32.576687, 24.157654>,  <26.050406, 32.681923, 23.949646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993328, 32.576687, 24.157654>,  <25.898201, 32.401291, 24.504335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993328, 32.576687, 24.157654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514082, 0.700257, 0.495339,
		0.824113, -0.563357, -0.058883,
		0.237819, 0.438486, -0.866702,
		26.064674, 32.708233, 23.897644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678556, 32.561356, 24.558741>,  <25.898201, 32.401291, 24.504335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678556, 32.561356, 24.558741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494715, 32.813747, 24.308741>,  <26.384409, 32.965183, 24.158741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494715, 32.813747, 24.308741>,  <26.678556, 32.561356, 24.558741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494715, 32.813747, 24.308741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487230, 0.767515, 0.416567,
		0.742542, -0.113062, -0.660188,
		-0.459606, 0.630982, -0.624999,
		26.356833, 33.003040, 24.121241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097136, 32.917965, 24.086803>,  <26.678556, 32.561356, 24.558741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097136, 32.917965, 24.086803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792244, 33.148651, 24.204386>,  <26.609308, 33.287064, 24.274935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792244, 33.148651, 24.204386>,  <27.097136, 32.917965, 24.086803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792244, 33.148651, 24.204386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647128, 0.689582, 0.325120,
		-0.015206, 0.438043, -0.898825,
		-0.762230, 0.576711, 0.293956,
		26.563576, 33.321663, 24.292572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389414, 33.687214, 24.165106>,  <27.097136, 32.917965, 24.086803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389414, 33.687214, 24.165106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125629, 33.734821, 24.462009>,  <26.967360, 33.763386, 24.640152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125629, 33.734821, 24.462009>,  <27.389414, 33.687214, 24.165106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125629, 33.734821, 24.462009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731705, 0.328055, 0.597484,
		-0.172393, 0.937131, -0.303423,
		-0.659461, 0.119014, 0.742258,
		26.927792, 33.770527, 24.684687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405743, 34.343590, 24.322157>,  <27.389414, 33.687214, 24.165106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405743, 34.343590, 24.322157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254608, 34.158924, 24.643183>,  <27.163927, 34.048126, 24.835798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254608, 34.158924, 24.643183>,  <27.405743, 34.343590, 24.322157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254608, 34.158924, 24.643183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645759, 0.489784, 0.585754,
		-0.663503, 0.739581, 0.113065,
		-0.377834, -0.461662, 0.802564,
		27.141258, 34.020424, 24.883951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093256, 34.865444, 24.821413>,  <27.405743, 34.343590, 24.322157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093256, 34.865444, 24.821413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172594, 34.542751, 25.044065>,  <27.220198, 34.349136, 25.177658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172594, 34.542751, 25.044065>,  <27.093256, 34.865444, 24.821413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172594, 34.542751, 25.044065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419839, 0.583106, 0.695501,
		-0.885660, 0.095747, 0.454355,
		0.198345, -0.806734, 0.556633,
		27.232098, 34.300732, 25.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909311, 35.025433, 25.514412>,  <27.093256, 34.865444, 24.821413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909311, 35.025433, 25.514412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168623, 34.721680, 25.536598>,  <27.324211, 34.539429, 25.549910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168623, 34.721680, 25.536598>,  <26.909311, 35.025433, 25.514412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168623, 34.721680, 25.536598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428177, 0.423831, 0.798142,
		-0.629600, -0.493672, 0.599910,
		0.648281, -0.759378, 0.055465,
		27.363108, 34.493866, 25.553238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936787, 34.731953, 26.206659>,  <26.909311, 35.025433, 25.514412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936787, 34.731953, 26.206659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288568, 34.618313, 26.053902>,  <27.499638, 34.550129, 25.962246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288568, 34.618313, 26.053902>,  <26.936787, 34.731953, 26.206659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288568, 34.618313, 26.053902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470198, 0.393881, 0.789792,
		-0.073957, -0.874155, 0.479984,
		0.879457, -0.284098, -0.381895,
		27.552406, 34.533085, 25.939333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260807, 34.669666, 26.774698>,  <26.936787, 34.731953, 26.206659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260807, 34.669666, 26.774698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567366, 34.623478, 26.521936>,  <27.751301, 34.595764, 26.370279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567366, 34.623478, 26.521936>,  <27.260807, 34.669666, 26.774698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567366, 34.623478, 26.521936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607925, 0.448178, 0.655411,
		0.207524, -0.886455, 0.413681,
		0.766395, -0.115473, -0.631905,
		27.797283, 34.588837, 26.332365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818150, 34.399883, 27.101547>,  <27.260807, 34.669666, 26.774698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818150, 34.399883, 27.101547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998728, 34.568024, 26.786713>,  <28.107075, 34.668907, 26.597811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998728, 34.568024, 26.786713>,  <27.818150, 34.399883, 27.101547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998728, 34.568024, 26.786713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580358, 0.531702, 0.616829,
		0.677778, -0.735256, -0.003918,
		0.451444, 0.420347, -0.787087,
		28.134161, 34.694126, 26.550587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555166, 34.123901, 27.041149>,  <27.818150, 34.399883, 27.101547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555166, 34.123901, 27.041149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499451, 34.478138, 26.863914>,  <28.466022, 34.690681, 26.757574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499451, 34.478138, 26.863914>,  <28.555166, 34.123901, 27.041149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499451, 34.478138, 26.863914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627150, 0.425167, 0.652622,
		0.766343, -0.186981, -0.614619,
		-0.139288, 0.885591, -0.443089,
		28.457664, 34.743816, 26.730988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149330, 34.392673, 26.959677>,  <28.555166, 34.123901, 27.041149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149330, 34.392673, 26.959677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898092, 34.703861, 26.966106>,  <28.747349, 34.890575, 26.969963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898092, 34.703861, 26.966106>,  <29.149330, 34.392673, 26.959677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898092, 34.703861, 26.966106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632279, 0.498215, 0.593301,
		0.453563, 0.382812, -0.804820,
		-0.628096, 0.777970, 0.016072,
		28.709663, 34.937252, 26.970928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486189, 35.043999, 26.703604>,  <29.149330, 34.392673, 26.959677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486189, 35.043999, 26.703604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180231, 35.150661, 26.938152>,  <28.996656, 35.214657, 27.078880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180231, 35.150661, 26.938152>,  <29.486189, 35.043999, 26.703604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180231, 35.150661, 26.938152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617571, 0.562374, 0.549855,
		-0.183139, 0.782707, -0.594836,
		-0.764896, 0.266654, 0.586370,
		28.950762, 35.230659, 27.114063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716269, 35.671017, 26.931665>,  <29.486189, 35.043999, 26.703604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716269, 35.671017, 26.931665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394438, 35.594349, 27.156492>,  <29.201340, 35.548347, 27.291389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394438, 35.594349, 27.156492>,  <29.716269, 35.671017, 26.931665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394438, 35.594349, 27.156492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501455, 0.287744, 0.815933,
		-0.318120, 0.938332, -0.135399,
		-0.804576, -0.191668, 0.562068,
		29.153065, 35.536850, 27.325113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749094, 36.226494, 27.456713>,  <29.716269, 35.671017, 26.931665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749094, 36.226494, 27.456713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487457, 35.967648, 27.613379>,  <29.330475, 35.812340, 27.707378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487457, 35.967648, 27.613379>,  <29.749094, 36.226494, 27.456713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487457, 35.967648, 27.613379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328459, 0.223436, 0.917710,
		-0.681378, 0.728913, 0.066404,
		-0.654093, -0.647118, 0.391662,
		29.291229, 35.773514, 27.730877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521992, 36.570759, 28.129896>,  <29.749094, 36.226494, 27.456713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521992, 36.570759, 28.129896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420015, 36.187344, 28.180817>,  <29.358829, 35.957294, 28.211369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420015, 36.187344, 28.180817>,  <29.521992, 36.570759, 28.129896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420015, 36.187344, 28.180817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334792, 0.036007, 0.941604,
		-0.907149, 0.282672, 0.311732,
		-0.254941, -0.958540, 0.127301,
		29.343533, 35.899780, 28.219007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183102, 36.473412, 28.773800>,  <29.521992, 36.570759, 28.129896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183102, 36.473412, 28.773800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297726, 36.099716, 28.688868>,  <29.366499, 35.875500, 28.637909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297726, 36.099716, 28.688868>,  <29.183102, 36.473412, 28.773800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297726, 36.099716, 28.688868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265042, -0.135670, 0.954644,
		-0.920672, -0.329837, 0.208735,
		0.286558, -0.934238, -0.212328,
		29.383694, 35.819447, 28.625170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918417, 35.989201, 29.312485>,  <29.183102, 36.473412, 28.773800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918417, 35.989201, 29.312485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243696, 35.802502, 29.173428>,  <29.438864, 35.690483, 29.089993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243696, 35.802502, 29.173428>,  <28.918417, 35.989201, 29.312485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243696, 35.802502, 29.173428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244998, -0.267285, 0.931952,
		-0.527909, -0.843032, -0.103002,
		0.813196, -0.466751, -0.347643,
		29.487656, 35.662476, 29.069134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015120, 35.263397, 29.626387>,  <28.918417, 35.989201, 29.312485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015120, 35.263397, 29.626387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380865, 35.383629, 29.517879>,  <29.600313, 35.455769, 29.452774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380865, 35.383629, 29.517879>,  <29.015120, 35.263397, 29.626387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380865, 35.383629, 29.517879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344369, -0.224971, 0.911481,
		0.212945, -0.926844, -0.309216,
		0.914366, 0.300580, -0.271270,
		29.655174, 35.473804, 29.436499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479256, 34.734241, 30.088770>,  <29.015120, 35.263397, 29.626387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479256, 34.734241, 30.088770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725109, 35.001091, 29.920404>,  <29.872622, 35.161201, 29.819386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725109, 35.001091, 29.920404>,  <29.479256, 34.734241, 30.088770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725109, 35.001091, 29.920404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660643, -0.143787, 0.736802,
		0.431016, -0.730939, -0.529107,
		0.614635, 0.667124, -0.420915,
		29.909500, 35.201229, 29.794130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023415, 34.402939, 30.158947>,  <29.479256, 34.734241, 30.088770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023415, 34.402939, 30.158947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108614, 34.790154, 30.105982>,  <30.159735, 35.022484, 30.074203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108614, 34.790154, 30.105982>,  <30.023415, 34.402939, 30.158947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108614, 34.790154, 30.105982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694331, -0.054622, 0.717580,
		0.687412, -0.244783, -0.683773,
		0.213000, 0.968038, -0.132413,
		30.172514, 35.080566, 30.066257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734083, 34.415955, 30.179279>,  <30.023415, 34.402939, 30.158947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734083, 34.415955, 30.179279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590878, 34.777927, 30.271299>,  <30.504955, 34.995113, 30.326511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590878, 34.777927, 30.271299>,  <30.734083, 34.415955, 30.179279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590878, 34.777927, 30.271299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478568, -0.033718, 0.877403,
		0.801748, 0.424215, -0.421001,
		-0.358012, 0.904934, 0.230049,
		30.483475, 35.049408, 30.340315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259279, 34.773197, 30.394396>,  <30.734083, 34.415955, 30.179279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259279, 34.773197, 30.394396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945717, 34.948360, 30.570454>,  <30.757580, 35.053459, 30.676088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945717, 34.948360, 30.570454>,  <31.259279, 34.773197, 30.394396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945717, 34.948360, 30.570454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520434, 0.076852, 0.850436,
		0.338588, 0.895728, -0.288147,
		-0.783904, 0.437909, 0.440147,
		30.710545, 35.079735, 30.702497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615591, 35.162174, 30.843838>,  <31.259279, 34.773197, 30.394396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615591, 35.162174, 30.843838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238640, 35.201542, 30.971735>,  <31.012468, 35.225163, 31.048473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238640, 35.201542, 30.971735>,  <31.615591, 35.162174, 30.843838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238640, 35.201542, 30.971735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325117, 0.044085, 0.944646,
		0.078880, 0.994168, -0.073544,
		-0.942378, 0.098424, 0.319743,
		30.955927, 35.231068, 31.067657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555038, 35.814358, 31.305542>,  <31.615591, 35.162174, 30.843838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555038, 35.814358, 31.305542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245289, 35.586971, 31.416674>,  <31.059439, 35.450539, 31.483353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245289, 35.586971, 31.416674>,  <31.555038, 35.814358, 31.305542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245289, 35.586971, 31.416674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183728, 0.218157, 0.958463,
		-0.605466, 0.793254, -0.064491,
		-0.774374, -0.568468, 0.277829,
		31.012978, 35.416431, 31.500023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209097, 36.186203, 31.750547>,  <31.555038, 35.814358, 31.305542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209097, 36.186203, 31.750547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085638, 35.814171, 31.830240>,  <31.011562, 35.590954, 31.878056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085638, 35.814171, 31.830240>,  <31.209097, 36.186203, 31.750547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085638, 35.814171, 31.830240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047324, 0.194186, 0.979823,
		-0.949999, 0.311847, -0.015920,
		-0.308647, -0.930077, 0.199234,
		30.993044, 35.535149, 31.890011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626116, 36.250282, 32.290989>,  <31.209097, 36.186203, 31.750547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626116, 36.250282, 32.290989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778353, 35.881058, 32.313301>,  <30.869696, 35.659523, 32.326687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778353, 35.881058, 32.313301>,  <30.626116, 36.250282, 32.290989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778353, 35.881058, 32.313301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108314, 0.104401, 0.988619,
		-0.918378, -0.370219, 0.139714,
		0.380592, -0.923059, 0.055780,
		30.892530, 35.604141, 32.330036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324961, 35.945732, 33.041195>,  <30.626116, 36.250282, 32.290989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324961, 35.945732, 33.041195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628597, 35.704960, 32.942028>,  <30.810780, 35.560497, 32.882530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628597, 35.704960, 32.942028>,  <30.324961, 35.945732, 33.041195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628597, 35.704960, 32.942028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209448, -0.134751, 0.968490,
		-0.616371, -0.787097, 0.023785,
		0.759091, -0.601931, -0.247913,
		30.856325, 35.524380, 32.867653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229101, 35.301479, 33.424007>,  <30.324961, 35.945732, 33.041195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229101, 35.301479, 33.424007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617239, 35.330265, 33.331703>,  <30.850122, 35.347538, 33.276321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617239, 35.330265, 33.331703>,  <30.229101, 35.301479, 33.424007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617239, 35.330265, 33.331703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238486, -0.129313, 0.962498,
		0.039428, -0.988989, -0.142641,
		0.970345, 0.071968, -0.230761,
		30.908342, 35.351856, 33.262474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438400, 34.717144, 33.690693>,  <30.229101, 35.301479, 33.424007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438400, 34.717144, 33.690693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745180, 34.965771, 33.626900>,  <30.929249, 35.114948, 33.588623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745180, 34.965771, 33.626900>,  <30.438400, 34.717144, 33.690693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745180, 34.965771, 33.626900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247673, -0.057450, 0.967139,
		0.591983, -0.781249, -0.198007,
		0.766952, 0.621571, -0.159485,
		30.975266, 35.152241, 33.579056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889053, 34.457169, 34.071087>,  <30.438400, 34.717144, 33.690693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889053, 34.457169, 34.071087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031252, 34.824543, 34.001690>,  <31.116571, 35.044968, 33.960052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031252, 34.824543, 34.001690>,  <30.889053, 34.457169, 34.071087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031252, 34.824543, 34.001690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263252, 0.079717, 0.961428,
		0.896839, -0.387456, -0.213441,
		0.355496, 0.918435, -0.173492,
		31.137901, 35.100075, 33.949642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513800, 34.475666, 34.338398>,  <30.889053, 34.457169, 34.071087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513800, 34.475666, 34.338398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454287, 34.869789, 34.304840>,  <31.418579, 35.106262, 34.284706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454287, 34.869789, 34.304840>,  <31.513800, 34.475666, 34.338398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454287, 34.869789, 34.304840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464673, 0.144550, 0.873605,
		0.872893, 0.090996, -0.479351,
		-0.148784, 0.985305, -0.083893,
		31.409651, 35.165382, 34.279671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178303, 34.880379, 34.434452>,  <31.513800, 34.475666, 34.338398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178303, 34.880379, 34.434452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881636, 35.136280, 34.515099>,  <31.703636, 35.289822, 34.563484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881636, 35.136280, 34.515099>,  <32.178303, 34.880379, 34.434452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881636, 35.136280, 34.515099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477199, 0.292012, 0.828860,
		0.471390, 0.710949, -0.521865,
		-0.741668, 0.639750, 0.201613,
		31.659136, 35.328205, 34.575581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455257, 35.550182, 34.600529>,  <32.178303, 34.880379, 34.434452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455257, 35.550182, 34.600529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096489, 35.544254, 34.777309>,  <31.881229, 35.540699, 34.883377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096489, 35.544254, 34.777309>,  <32.455257, 35.550182, 34.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096489, 35.544254, 34.777309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404447, 0.376576, 0.833435,
		-0.178779, 0.926267, -0.331763,
		-0.896917, -0.014819, 0.441950,
		31.827414, 35.539810, 34.909893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315548, 36.272087, 34.844276>,  <32.455257, 35.550182, 34.600529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315548, 36.272087, 34.844276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072407, 36.028519, 35.048134>,  <31.926523, 35.882378, 35.170448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072407, 36.028519, 35.048134>,  <32.315548, 36.272087, 34.844276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072407, 36.028519, 35.048134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391358, 0.328722, 0.859524,
		-0.690910, 0.721915, 0.038491,
		-0.607850, -0.608918, 0.509644,
		31.890051, 35.845844, 35.201027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225281, 36.558590, 35.497906>,  <32.315548, 36.272087, 34.844276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225281, 36.558590, 35.497906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079678, 36.197166, 35.588310>,  <31.992315, 35.980312, 35.642555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079678, 36.197166, 35.588310>,  <32.225281, 36.558590, 35.497906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079678, 36.197166, 35.588310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384252, 0.075364, 0.920147,
		-0.848438, 0.421789, 0.319760,
		-0.364009, -0.903556, 0.226016,
		31.970474, 35.926098, 35.656116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967325, 36.517788, 36.232109>,  <32.225281, 36.558590, 35.497906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967325, 36.517788, 36.232109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009975, 36.131569, 36.137157>,  <32.035564, 35.899837, 36.080189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009975, 36.131569, 36.137157>,  <31.967325, 36.517788, 36.232109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009975, 36.131569, 36.137157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481732, -0.158680, 0.861832,
		-0.869807, -0.206244, 0.448217,
		0.106625, -0.965549, -0.237375,
		32.041962, 35.841904, 36.065945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837811, 36.214981, 36.941124>,  <31.967325, 36.517788, 36.232109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837811, 36.214981, 36.941124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995396, 35.921604, 36.719543>,  <32.089947, 35.745579, 36.586597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995396, 35.921604, 36.719543>,  <31.837811, 36.214981, 36.941124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995396, 35.921604, 36.719543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572674, -0.275530, 0.772093,
		-0.718913, -0.621408, 0.311473,
		0.393964, -0.733441, -0.553947,
		32.113586, 35.701572, 36.553360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704897, 35.493671, 37.356888>,  <31.837811, 36.214981, 36.941124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704897, 35.493671, 37.356888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019024, 35.504562, 37.109489>,  <32.207500, 35.511097, 36.961052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019024, 35.504562, 37.109489>,  <31.704897, 35.493671, 37.356888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019024, 35.504562, 37.109489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606617, -0.233407, 0.759959,
		-0.123665, -0.971998, -0.199819,
		0.785317, 0.027233, -0.618494,
		32.254620, 35.512733, 36.923943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043228, 34.833687, 37.450954>,  <31.704897, 35.493671, 37.356888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043228, 34.833687, 37.450954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331573, 35.059189, 37.289688>,  <32.504581, 35.194489, 37.192928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331573, 35.059189, 37.289688>,  <32.043228, 34.833687, 37.450954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331573, 35.059189, 37.289688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674448, -0.436627, 0.595380,
		0.159614, -0.701100, -0.694969,
		0.720863, 0.563751, -0.403164,
		32.547832, 35.228313, 37.168739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686592, 34.403484, 37.352268>,  <32.043228, 34.833687, 37.450954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686592, 34.403484, 37.352268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767757, 34.794197, 37.379742>,  <32.816456, 35.028625, 37.396225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767757, 34.794197, 37.379742>,  <32.686592, 34.403484, 37.352268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767757, 34.794197, 37.379742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757332, -0.201013, 0.621322,
		0.620705, -0.074056, -0.780539,
		0.202911, 0.976785, 0.068685,
		32.828632, 35.087234, 37.400349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358276, 34.424313, 37.274021>,  <32.686592, 34.403484, 37.352268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358276, 34.424313, 37.274021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271629, 34.762558, 37.469170>,  <33.219643, 34.965504, 37.586258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271629, 34.762558, 37.469170>,  <33.358276, 34.424313, 37.274021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271629, 34.762558, 37.469170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764506, -0.163852, 0.623444,
		0.607131, 0.508025, -0.610984,
		-0.216615, 0.845614, 0.487868,
		33.206646, 35.016243, 37.615532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997772, 34.754410, 37.363766>,  <33.358276, 34.424313, 37.274021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997772, 34.754410, 37.363766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740471, 34.901382, 37.632458>,  <33.586090, 34.989567, 37.793671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740471, 34.901382, 37.632458>,  <33.997772, 34.754410, 37.363766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740471, 34.901382, 37.632458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689488, -0.103480, 0.716867,
		0.332911, 0.924275, -0.186777,
		-0.643255, 0.367433, 0.671726,
		33.547493, 35.011612, 37.833977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902447, 34.026138, 37.048077>,  <33.997772, 34.754410, 37.363766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902447, 34.026138, 37.048077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286747, 33.918320, 37.074303>,  <34.517326, 33.853630, 37.090038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286747, 33.918320, 37.074303>,  <33.902447, 34.026138, 37.048077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286747, 33.918320, 37.074303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163244, 0.358255, -0.919241,
		0.224289, 0.893867, 0.388197,
		0.960753, -0.269546, 0.065566,
		34.574974, 33.837456, 37.093971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466793, 34.545044, 36.870514>,  <33.902447, 34.026138, 37.048077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466793, 34.545044, 36.870514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541130, 34.160965, 36.787106>,  <34.585732, 33.930515, 36.737061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541130, 34.160965, 36.787106>,  <34.466793, 34.545044, 36.870514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541130, 34.160965, 36.787106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170078, 0.240451, -0.955645,
		0.967749, 0.142131, 0.207994,
		0.185839, -0.960199, -0.208523,
		34.596882, 33.872906, 36.724548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097675, 34.553844, 36.543846>,  <34.466793, 34.545044, 36.870514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097675, 34.553844, 36.543846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930393, 34.208096, 36.432163>,  <34.830025, 34.000645, 36.365154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930393, 34.208096, 36.432163>,  <35.097675, 34.553844, 36.543846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930393, 34.208096, 36.432163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345828, 0.132716, -0.928864,
		0.839943, -0.485017, 0.243422,
		-0.418209, -0.864376, -0.279207,
		34.804932, 33.948784, 36.348400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629871, 34.215145, 36.081493>,  <35.097675, 34.553844, 36.543846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629871, 34.215145, 36.081493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284363, 34.029465, 36.003098>,  <35.077057, 33.918056, 35.956059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284363, 34.029465, 36.003098>,  <35.629871, 34.215145, 36.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284363, 34.029465, 36.003098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173876, 0.090478, -0.980602,
		0.472929, -0.881097, 0.002560,
		-0.863774, -0.464201, -0.195991,
		35.025230, 33.890205, 35.944302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776081, 33.727123, 35.523945>,  <35.629871, 34.215145, 36.081493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776081, 33.727123, 35.523945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379864, 33.781998, 35.522488>,  <35.142136, 33.814922, 35.521614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379864, 33.781998, 35.522488>,  <35.776081, 33.727123, 35.523945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379864, 33.781998, 35.522488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013858, 0.073580, -0.997193,
		-0.136530, -0.987809, -0.074785,
		-0.990539, 0.137183, -0.003643,
		35.082703, 33.823151, 35.521393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530678, 33.168495, 34.979679>,  <35.776081, 33.727123, 35.523945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530678, 33.168495, 34.979679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258781, 33.457607, 35.029533>,  <35.095642, 33.631077, 35.059444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258781, 33.457607, 35.029533>,  <35.530678, 33.168495, 34.979679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258781, 33.457607, 35.029533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230530, -0.049226, -0.971819,
		-0.696280, -0.689319, 0.200085,
		-0.679743, 0.722783, 0.124634,
		35.054859, 33.674442, 35.066925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844158, 32.916477, 34.692829>,  <35.530678, 33.168495, 34.979679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844158, 32.916477, 34.692829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815678, 33.315456, 34.695015>,  <34.798588, 33.554844, 34.696327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815678, 33.315456, 34.695015>,  <34.844158, 32.916477, 34.692829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815678, 33.315456, 34.695015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265003, -0.013633, -0.964151,
		-0.961615, -0.070100, 0.265297,
		-0.071204, 0.997447, 0.005467,
		34.794315, 33.614689, 34.696655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149700, 33.117188, 34.305363>,  <34.844158, 32.916477, 34.692829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149700, 33.117188, 34.305363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347229, 33.464958, 34.299244>,  <34.465748, 33.673622, 34.295570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347229, 33.464958, 34.299244>,  <34.149700, 33.117188, 34.305363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347229, 33.464958, 34.299244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359401, 0.188049, -0.914040,
		-0.791815, 0.456872, 0.405336,
		0.493822, 0.869428, -0.015300,
		34.495377, 33.725788, 34.294655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673111, 33.592873, 33.971161>,  <34.149700, 33.117188, 34.305363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673111, 33.592873, 33.971161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023087, 33.786514, 33.966793>,  <34.233074, 33.902699, 33.964172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023087, 33.786514, 33.966793>,  <33.673111, 33.592873, 33.971161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023087, 33.786514, 33.966793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218809, 0.375137, -0.900775,
		-0.431969, 0.790517, 0.434149,
		0.874943, 0.484103, -0.010924,
		34.285568, 33.931744, 33.963516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491264, 34.326221, 33.707710>,  <33.673111, 33.592873, 33.971161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491264, 34.326221, 33.707710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870056, 34.226601, 33.626522>,  <34.097332, 34.166828, 33.577808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870056, 34.226601, 33.626522>,  <33.491264, 34.326221, 33.707710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870056, 34.226601, 33.626522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105196, 0.356566, -0.928329,
		0.303577, 0.900462, 0.311462,
		0.946982, -0.249055, -0.202971,
		34.154152, 34.151886, 33.565632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683319, 34.845722, 33.249878>,  <33.491264, 34.326221, 33.707710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683319, 34.845722, 33.249878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965931, 34.570126, 33.185242>,  <34.135498, 34.404770, 33.146461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965931, 34.570126, 33.185242>,  <33.683319, 34.845722, 33.249878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965931, 34.570126, 33.185242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047943, 0.181210, -0.982275,
		0.706058, 0.701754, 0.094998,
		0.706530, -0.688988, -0.161589,
		34.177891, 34.363430, 33.136765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067299, 35.108833, 32.731117>,  <33.683319, 34.845722, 33.249878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067299, 35.108833, 32.731117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165520, 34.724297, 32.681267>,  <34.224453, 34.493576, 32.651356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165520, 34.724297, 32.681267>,  <34.067299, 35.108833, 32.731117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165520, 34.724297, 32.681267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066495, 0.111557, -0.991531,
		0.967101, 0.251755, -0.036532,
		0.245548, -0.961340, -0.124628,
		34.239185, 34.435894, 32.643879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253857, 35.120621, 32.061481>,  <34.067299, 35.108833, 32.731117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253857, 35.120621, 32.061481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226803, 34.727383, 32.129539>,  <34.210571, 34.491440, 32.170376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226803, 34.727383, 32.129539>,  <34.253857, 35.120621, 32.061481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226803, 34.727383, 32.129539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238282, -0.149684, -0.959592,
		0.968838, -0.105444, -0.224130,
		-0.067635, -0.983095, 0.170145,
		34.206512, 34.432453, 32.180584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568569, 34.884666, 31.520166>,  <34.253857, 35.120621, 32.061481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568569, 34.884666, 31.520166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360847, 34.564434, 31.639763>,  <34.236214, 34.372295, 31.711521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360847, 34.564434, 31.639763>,  <34.568569, 34.884666, 31.520166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360847, 34.564434, 31.639763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261721, -0.184066, -0.947429,
		0.813527, -0.570255, -0.113943,
		-0.519303, -0.800581, 0.298991,
		34.205055, 34.324261, 31.729460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702267, 34.330894, 30.986668>,  <34.568569, 34.884666, 31.520166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702267, 34.330894, 30.986668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364769, 34.220802, 31.170990>,  <34.162270, 34.154747, 31.281584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364769, 34.220802, 31.170990>,  <34.702267, 34.330894, 30.986668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364769, 34.220802, 31.170990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397004, -0.257761, -0.880879,
		0.361221, -0.926179, 0.108218,
		-0.843746, -0.275229, 0.460806,
		34.111645, 34.138233, 31.309231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461514, 33.743141, 30.627142>,  <34.702267, 34.330894, 30.986668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461514, 33.743141, 30.627142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138920, 33.874142, 30.824047>,  <33.945362, 33.952744, 30.942190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138920, 33.874142, 30.824047>,  <34.461514, 33.743141, 30.627142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138920, 33.874142, 30.824047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573228, -0.229099, -0.786717,
		-0.144871, -0.916656, 0.372496,
		-0.806487, 0.327498, 0.492263,
		33.896973, 33.972393, 30.971725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975616, 33.351368, 30.289186>,  <34.461514, 33.743141, 30.627142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975616, 33.351368, 30.289186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778587, 33.644257, 30.477320>,  <33.660370, 33.819992, 30.590200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778587, 33.644257, 30.477320>,  <33.975616, 33.351368, 30.289186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778587, 33.644257, 30.477320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811814, -0.191877, -0.551491,
		-0.313570, -0.653474, 0.688945,
		-0.492578, 0.732226, 0.470333,
		33.630814, 33.863926, 30.618420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225315, 33.143497, 30.307568>,  <33.975616, 33.351368, 30.289186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225315, 33.143497, 30.307568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230251, 33.541893, 30.343037>,  <33.233215, 33.780930, 30.364319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230251, 33.541893, 30.343037>,  <33.225315, 33.143497, 30.307568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230251, 33.541893, 30.343037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686797, 0.072898, -0.723184,
		-0.726744, -0.051975, 0.684939,
		0.012343, 0.995984, 0.088674,
		33.233955, 33.840687, 30.369638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620636, 33.304867, 30.242153>,  <33.225315, 33.143497, 30.307568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620636, 33.304867, 30.242153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771717, 33.667225, 30.165525>,  <32.862366, 33.884640, 30.119549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771717, 33.667225, 30.165525>,  <32.620636, 33.304867, 30.242153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771717, 33.667225, 30.165525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624827, 0.096675, -0.774755,
		-0.683327, 0.412321, 0.602542,
		0.377698, 0.905895, -0.191569,
		32.885025, 33.938992, 30.108055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131821, 33.839642, 30.249342>,  <32.620636, 33.304867, 30.242153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131821, 33.839642, 30.249342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426319, 34.016628, 30.044531>,  <32.603016, 34.122818, 29.921644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426319, 34.016628, 30.044531>,  <32.131821, 33.839642, 30.249342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426319, 34.016628, 30.044531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648727, 0.246118, -0.720124,
		-0.192609, 0.862353, 0.468241,
		0.736244, 0.442463, -0.512027,
		32.647194, 34.149368, 29.890923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854761, 34.426865, 30.117420>,  <32.131821, 33.839642, 30.249342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854761, 34.426865, 30.117420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139828, 34.378048, 29.841099>,  <32.310867, 34.348759, 29.675306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139828, 34.378048, 29.841099>,  <31.854761, 34.426865, 30.117420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139828, 34.378048, 29.841099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684954, 0.091564, -0.722809,
		0.151464, 0.988293, -0.018337,
		0.712668, -0.122040, -0.690804,
		32.353630, 34.341434, 29.633858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745483, 34.965340, 29.649626>,  <31.854761, 34.426865, 30.117420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745483, 34.965340, 29.649626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931721, 34.647560, 29.493637>,  <32.043465, 34.456894, 29.400043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931721, 34.647560, 29.493637>,  <31.745483, 34.965340, 29.649626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931721, 34.647560, 29.493637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595389, 0.044836, -0.802186,
		0.654779, 0.605676, -0.452129,
		0.465593, -0.794447, -0.389971,
		32.071400, 34.409225, 29.376646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745790, 35.100796, 28.970709>,  <31.745483, 34.965340, 29.649626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745790, 35.100796, 28.970709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816376, 34.707104, 28.975542>,  <31.858727, 34.470886, 28.978441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816376, 34.707104, 28.975542>,  <31.745790, 35.100796, 28.970709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816376, 34.707104, 28.975542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771224, -0.145877, -0.619624,
		0.611617, 0.100022, -0.784806,
		0.176461, -0.984233, 0.012082,
		31.869314, 34.411835, 28.979166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825592, 34.833755, 28.197634>,  <31.745790, 35.100796, 28.970709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825592, 34.833755, 28.197634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747517, 34.493118, 28.392239>,  <31.700672, 34.288734, 28.509001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747517, 34.493118, 28.392239>,  <31.825592, 34.833755, 28.197634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747517, 34.493118, 28.392239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563626, -0.308563, -0.766234,
		0.802638, -0.423770, -0.419752,
		-0.195187, -0.851592, 0.486512,
		31.688961, 34.237640, 28.538193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966318, 34.245296, 27.661894>,  <31.825592, 34.833755, 28.197634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966318, 34.245296, 27.661894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753496, 34.084072, 27.959742>,  <31.625803, 33.987339, 28.138451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753496, 34.084072, 27.959742>,  <31.966318, 34.245296, 27.661894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753496, 34.084072, 27.959742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512882, -0.546315, -0.662187,
		0.673697, -0.734224, 0.083950,
		-0.532057, -0.403057, 0.744621,
		31.593880, 33.963154, 28.183128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981281, 33.515148, 27.531786>,  <31.966318, 34.245296, 27.661894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981281, 33.515148, 27.531786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668873, 33.626823, 27.755236>,  <31.481428, 33.693829, 27.889305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668873, 33.626823, 27.755236>,  <31.981281, 33.515148, 27.531786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668873, 33.626823, 27.755236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616758, -0.485285, -0.619765,
		0.098060, -0.828584, 0.551210,
		-0.781021, 0.279189, 0.558623,
		31.434566, 33.710579, 27.922823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750841, 32.856552, 27.738632>,  <31.981281, 33.515148, 27.531786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750841, 32.856552, 27.738632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447376, 33.116959, 27.748528>,  <31.265297, 33.273201, 27.754465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447376, 33.116959, 27.748528>,  <31.750841, 32.856552, 27.738632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447376, 33.116959, 27.748528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589400, -0.669691, -0.451798,
		-0.277559, -0.357344, 0.891777,
		-0.758662, 0.651014, 0.024740,
		31.219778, 33.312263, 27.755949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153540, 32.485382, 27.992214>,  <31.750841, 32.856552, 27.738632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153540, 32.485382, 27.992214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978273, 32.816761, 27.852682>,  <30.873114, 33.015587, 27.768963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978273, 32.816761, 27.852682>,  <31.153540, 32.485382, 27.992214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978273, 32.816761, 27.852682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698353, -0.558071, -0.448175,
		-0.565969, 0.047246, 0.823072,
		-0.438158, 0.828448, -0.348845,
		30.846823, 33.065296, 27.748034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466518, 32.513687, 28.180454>,  <31.153540, 32.485382, 27.992214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466518, 32.513687, 28.180454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468939, 32.723015, 27.839607>,  <30.470392, 32.848610, 27.635099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468939, 32.723015, 27.839607>,  <30.466518, 32.513687, 28.180454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468939, 32.723015, 27.839607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711707, -0.596338, -0.371287,
		-0.702451, 0.608705, 0.368838,
		0.006052, 0.523315, -0.852118,
		30.470755, 32.880009, 27.583971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830288, 32.466652, 27.990444>,  <30.466518, 32.513687, 28.180454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830288, 32.466652, 27.990444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997929, 32.579559, 27.645266>,  <30.098513, 32.647305, 27.438158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997929, 32.579559, 27.645266>,  <29.830288, 32.466652, 27.990444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997929, 32.579559, 27.645266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739354, -0.445554, -0.504814,
		-0.526982, 0.849593, 0.021963,
		0.419100, 0.282267, -0.862949,
		30.123659, 32.664238, 27.386381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374731, 32.861053, 27.693329>,  <29.830288, 32.466652, 27.990444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374731, 32.861053, 27.693329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611706, 32.751144, 27.390406>,  <29.753891, 32.685200, 27.208651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611706, 32.751144, 27.390406>,  <29.374731, 32.861053, 27.693329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611706, 32.751144, 27.390406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799377, -0.317261, -0.510237,
		-0.100066, 0.907660, -0.407603,
		0.592438, -0.274771, -0.757309,
		29.789436, 32.668713, 27.163214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924109, 32.840008, 27.257227>,  <29.374731, 32.861053, 27.693329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924109, 32.840008, 27.257227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221920, 32.664921, 27.055599>,  <29.400606, 32.559868, 26.934622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221920, 32.664921, 27.055599>,  <28.924109, 32.840008, 27.257227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221920, 32.664921, 27.055599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666173, -0.437910, -0.603696,
		0.043508, 0.785266, -0.617628,
		0.744527, -0.437713, -0.504070,
		29.445278, 32.533607, 26.904379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925192, 33.009567, 26.518284>,  <28.924109, 32.840008, 27.257227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925192, 33.009567, 26.518284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109978, 32.655983, 26.547155>,  <29.220850, 32.443832, 26.564478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109978, 32.655983, 26.547155>,  <28.925192, 33.009567, 26.518284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109978, 32.655983, 26.547155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679862, -0.405212, -0.611221,
		0.569541, 0.233290, -0.788162,
		0.461965, -0.883956, 0.072180,
		29.248568, 32.390797, 26.568810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774076, 32.739067, 25.952362>,  <28.925192, 33.009567, 26.518284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774076, 32.739067, 25.952362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917658, 32.403324, 26.115644>,  <29.003807, 32.201878, 26.213614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917658, 32.403324, 26.115644>,  <28.774076, 32.739067, 25.952362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917658, 32.403324, 26.115644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580496, -0.543240, -0.606560,
		0.730873, -0.019233, -0.682243,
		0.358955, -0.839357, 0.408204,
		29.025345, 32.151516, 26.238106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078632, 32.337372, 25.356215>,  <28.774076, 32.739067, 25.952362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078632, 32.337372, 25.356215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976435, 32.090549, 25.653929>,  <28.915117, 31.942455, 25.832558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976435, 32.090549, 25.653929>,  <29.078632, 32.337372, 25.356215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976435, 32.090549, 25.653929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459427, -0.599873, -0.655041,
		0.850676, -0.509303, -0.130230,
		-0.255493, -0.617060, 0.744285,
		28.899786, 31.905432, 25.877214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145681, 31.644636, 25.069708>,  <29.078632, 32.337372, 25.356215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145681, 31.644636, 25.069708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918688, 31.589939, 25.394487>,  <28.782492, 31.557121, 25.589355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918688, 31.589939, 25.394487>,  <29.145681, 31.644636, 25.069708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918688, 31.589939, 25.394487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353655, -0.850041, -0.390331,
		0.743565, -0.508658, 0.434027,
		-0.567486, -0.136741, 0.811950,
		28.748442, 31.548918, 25.638073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289154, 31.084553, 25.188858>,  <29.145681, 31.644636, 25.069708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289154, 31.084553, 25.188858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937160, 31.126406, 25.374193>,  <28.725964, 31.151518, 25.485394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937160, 31.126406, 25.374193>,  <29.289154, 31.084553, 25.188858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937160, 31.126406, 25.374193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362183, -0.778913, -0.511974,
		0.307330, -0.618341, 0.723327,
		-0.879984, 0.104632, 0.463336,
		28.673164, 31.157795, 25.513193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079376, 30.406992, 25.369772>,  <29.289154, 31.084553, 25.188858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079376, 30.406992, 25.369772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742237, 30.619598, 25.403481>,  <28.539953, 30.747162, 25.423706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742237, 30.619598, 25.403481>,  <29.079376, 30.406992, 25.369772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742237, 30.619598, 25.403481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524432, -0.776085, -0.350233,
		-0.120754, -0.339386, 0.932864,
		-0.842846, 0.531516, 0.084269,
		28.489384, 30.779053, 25.428761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348625, 30.229240, 25.463923>,  <29.079376, 30.406992, 25.369772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348625, 30.229240, 25.463923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444939, 29.886990, 25.280651>,  <28.502726, 29.681639, 25.170689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444939, 29.886990, 25.280651>,  <28.348625, 30.229240, 25.463923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444939, 29.886990, 25.280651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829967, -0.063218, 0.554219,
		-0.503169, -0.513720, 0.694919,
		0.240782, -0.855626, -0.458180,
		28.517174, 29.630302, 25.143196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453699, 29.817354, 26.001829>,  <28.348625, 30.229240, 25.463923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453699, 29.817354, 26.001829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640804, 29.660751, 25.684864>,  <28.753067, 29.566790, 25.494684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640804, 29.660751, 25.684864>,  <28.453699, 29.817354, 26.001829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640804, 29.660751, 25.684864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863923, 0.013208, 0.503451,
		-0.186638, -0.920081, 0.344408,
		0.467765, -0.391505, -0.792414,
		28.781134, 29.543301, 25.447140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964758, 29.303783, 26.265448>,  <28.453699, 29.817354, 26.001829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964758, 29.303783, 26.265448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076017, 29.402811, 25.894213>,  <29.142773, 29.462227, 25.671473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076017, 29.402811, 25.894213>,  <28.964758, 29.303783, 26.265448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076017, 29.402811, 25.894213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960456, -0.084329, 0.265353,
		-0.012571, -0.965193, -0.261235,
		0.278147, 0.247570, -0.928086,
		29.159462, 29.477081, 25.615788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539778, 28.824984, 26.050201>,  <28.964758, 29.303783, 26.265448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539778, 28.824984, 26.050201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549294, 29.168398, 25.845320>,  <29.555002, 29.374447, 25.722391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549294, 29.168398, 25.845320>,  <29.539778, 28.824984, 26.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549294, 29.168398, 25.845320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937378, 0.158937, 0.309938,
		0.347501, -0.487503, -0.800989,
		0.023789, 0.858533, -0.512205,
		29.556431, 29.425959, 25.691658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106276, 28.746170, 25.692247>,  <29.539778, 28.824984, 26.050201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106276, 28.746170, 25.692247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028265, 29.138391, 25.701002>,  <29.981459, 29.373724, 25.706255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028265, 29.138391, 25.701002>,  <30.106276, 28.746170, 25.692247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028265, 29.138391, 25.701002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934954, 0.179121, 0.306230,
		0.296355, 0.080187, -0.951706,
		-0.195026, 0.980554, 0.021888,
		29.969757, 29.432558, 25.707569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720739, 29.012770, 25.451326>,  <30.106276, 28.746170, 25.692247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720739, 29.012770, 25.451326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517813, 29.306305, 25.632044>,  <30.396057, 29.482426, 25.740475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517813, 29.306305, 25.632044>,  <30.720739, 29.012770, 25.451326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517813, 29.306305, 25.632044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819633, 0.248972, 0.515961,
		0.266147, 0.632058, -0.727783,
		-0.507315, 0.733836, 0.451792,
		30.365618, 29.526455, 25.767582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128637, 29.530767, 25.352251>,  <30.720739, 29.012770, 25.451326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128637, 29.530767, 25.352251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896957, 29.641138, 25.659079>,  <30.757950, 29.707361, 25.843174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896957, 29.641138, 25.659079>,  <31.128637, 29.530767, 25.352251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896957, 29.641138, 25.659079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811143, 0.288669, 0.508642,
		-0.081080, 0.916807, -0.391013,
		-0.579200, 0.275927, 0.767067,
		30.723198, 29.723917, 25.889198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174046, 30.239145, 25.506025>,  <31.128637, 29.530767, 25.352251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174046, 30.239145, 25.506025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078140, 30.069195, 25.855194>,  <31.020597, 29.967224, 26.064695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078140, 30.069195, 25.855194>,  <31.174046, 30.239145, 25.506025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078140, 30.069195, 25.855194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757328, 0.480723, 0.441996,
		-0.607427, 0.767063, 0.206511,
		-0.239764, -0.424877, 0.872922,
		31.006210, 29.941732, 26.117071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362320, 30.812420, 26.014151>,  <31.174046, 30.239145, 25.506025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362320, 30.812420, 26.014151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282103, 30.491772, 26.239428>,  <31.233973, 30.299383, 26.374594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282103, 30.491772, 26.239428>,  <31.362320, 30.812420, 26.014151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282103, 30.491772, 26.239428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574012, 0.369714, 0.730631,
		-0.793909, 0.469804, 0.385996,
		-0.200545, -0.801621, 0.563192,
		31.221939, 30.251286, 26.408386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282558, 31.122458, 26.688227>,  <31.362320, 30.812420, 26.014151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282558, 31.122458, 26.688227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380932, 30.741709, 26.761395>,  <31.439957, 30.513260, 26.805296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380932, 30.741709, 26.761395>,  <31.282558, 31.122458, 26.688227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380932, 30.741709, 26.761395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585793, 0.296314, 0.754351,
		-0.772246, -0.078367, 0.630472,
		0.245933, -0.951870, 0.182920,
		31.454712, 30.456148, 26.816271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279432, 31.069468, 27.411623>,  <31.282558, 31.122458, 26.688227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279432, 31.069468, 27.411623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488508, 30.760117, 27.268133>,  <31.613955, 30.574507, 27.182039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488508, 30.760117, 27.268133>,  <31.279432, 31.069468, 27.411623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488508, 30.760117, 27.268133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638022, 0.075776, 0.766280,
		-0.565440, -0.629403, 0.533038,
		0.522690, -0.773376, -0.358727,
		31.645315, 30.528103, 27.160515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282423, 30.703308, 27.939016>,  <31.279432, 31.069468, 27.411623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282423, 30.703308, 27.939016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588779, 30.590569, 27.707855>,  <31.772594, 30.522924, 27.569159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588779, 30.590569, 27.707855>,  <31.282423, 30.703308, 27.939016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588779, 30.590569, 27.707855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620305, 0.087372, 0.779479,
		-0.169203, -0.955472, 0.241750,
		0.765893, -0.281849, -0.577901,
		31.818548, 30.506014, 27.534485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583250, 30.206989, 28.341728>,  <31.282423, 30.703308, 27.939016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583250, 30.206989, 28.341728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850773, 30.340693, 28.076107>,  <32.011288, 30.420916, 27.916735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850773, 30.340693, 28.076107>,  <31.583250, 30.206989, 28.341728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850773, 30.340693, 28.076107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574890, 0.333817, 0.747039,
		0.471379, -0.881383, 0.031096,
		0.668808, 0.334262, -0.664052,
		32.051414, 30.440971, 27.876892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306145, 29.882280, 28.412325>,  <31.583250, 30.206989, 28.341728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306145, 29.882280, 28.412325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312572, 30.263680, 28.291937>,  <32.316429, 30.492519, 28.219704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312572, 30.263680, 28.291937>,  <32.306145, 29.882280, 28.412325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312572, 30.263680, 28.291937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675461, 0.211589, 0.706387,
		0.737221, -0.214644, -0.640651,
		0.016067, 0.953498, -0.300971,
		32.317394, 30.549728, 28.201645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977798, 30.082872, 28.474831>,  <32.306145, 29.882280, 28.412325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977798, 30.082872, 28.474831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775059, 30.427664, 28.478767>,  <32.653416, 30.634539, 28.481129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775059, 30.427664, 28.478767>,  <32.977798, 30.082872, 28.474831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775059, 30.427664, 28.478767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557109, 0.318831, 0.766796,
		0.657824, 0.394132, -0.641816,
		-0.506849, 0.861979, 0.009840,
		32.623005, 30.686258, 28.481720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457268, 30.642065, 28.353092>,  <32.977798, 30.082872, 28.474831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457268, 30.642065, 28.353092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140308, 30.812101, 28.528093>,  <32.950134, 30.914124, 28.633093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140308, 30.812101, 28.528093>,  <33.457268, 30.642065, 28.353092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140308, 30.812101, 28.528093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600814, 0.419823, 0.680273,
		0.105504, 0.801903, -0.588066,
		-0.792396, 0.425090, 0.437501,
		32.902588, 30.939629, 28.659344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647957, 31.299753, 28.466238>,  <33.457268, 30.642065, 28.353092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647957, 31.299753, 28.466238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338882, 31.247427, 28.714705>,  <33.153439, 31.216030, 28.863785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338882, 31.247427, 28.714705>,  <33.647957, 31.299753, 28.466238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338882, 31.247427, 28.714705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473405, 0.533156, 0.701165,
		-0.422902, 0.835842, -0.350032,
		-0.772685, -0.130818, 0.621164,
		33.107079, 31.208181, 28.901054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536308, 31.947697, 28.730103>,  <33.647957, 31.299753, 28.466238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536308, 31.947697, 28.730103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351028, 31.710350, 28.993423>,  <33.239861, 31.567942, 29.151417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351028, 31.710350, 28.993423>,  <33.536308, 31.947697, 28.730103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351028, 31.710350, 28.993423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473461, 0.462236, 0.749781,
		-0.749187, 0.658979, 0.066829,
		-0.463199, -0.593367, 0.658302,
		33.212070, 31.532339, 29.190914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555260, 32.358337, 29.371094>,  <33.536308, 31.947697, 28.730103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555260, 32.358337, 29.371094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394966, 32.013687, 29.495680>,  <33.298790, 31.806896, 29.570431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394966, 32.013687, 29.495680>,  <33.555260, 32.358337, 29.371094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394966, 32.013687, 29.495680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382184, 0.151756, 0.911540,
		-0.832674, 0.484324, 0.268486,
		-0.400736, -0.861627, 0.311464,
		33.274746, 31.755199, 29.589119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202724, 32.520378, 29.937965>,  <33.555260, 32.358337, 29.371094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202724, 32.520378, 29.937965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305611, 32.134224, 29.955309>,  <33.367344, 31.902533, 29.965715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305611, 32.134224, 29.955309>,  <33.202724, 32.520378, 29.937965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305611, 32.134224, 29.955309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451052, 0.159617, 0.878108,
		-0.854630, -0.206307, 0.476493,
		0.257216, -0.965381, 0.043359,
		33.382774, 31.844610, 29.968317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090649, 32.291298, 30.636446>,  <33.202724, 32.520378, 29.937965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090649, 32.291298, 30.636446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340351, 32.003479, 30.514761>,  <33.490173, 31.830788, 30.441750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340351, 32.003479, 30.514761>,  <33.090649, 32.291298, 30.636446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340351, 32.003479, 30.514761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606107, 0.200414, 0.769720,
		-0.492884, -0.664891, 0.561235,
		0.624260, -0.719551, -0.304215,
		33.527630, 31.787613, 30.423496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299698, 31.840158, 31.201078>,  <33.090649, 32.291298, 30.636446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299698, 31.840158, 31.201078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593174, 31.811001, 30.930853>,  <33.769260, 31.793507, 30.768717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593174, 31.811001, 30.930853>,  <33.299698, 31.840158, 31.201078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593174, 31.811001, 30.930853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675452, 0.186427, 0.713449,
		0.073936, -0.979761, 0.186017,
		0.733688, -0.072896, -0.675565,
		33.813282, 31.789133, 30.728184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790272, 31.452326, 31.456087>,  <33.299698, 31.840158, 31.201078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790272, 31.452326, 31.456087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020283, 31.637465, 31.186239>,  <34.158291, 31.748549, 31.024330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020283, 31.637465, 31.186239>,  <33.790272, 31.452326, 31.456087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020283, 31.637465, 31.186239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645529, 0.249906, 0.721693,
		0.502626, -0.850481, -0.155079,
		0.575031, 0.462849, -0.674619,
		34.192791, 31.776320, 30.983854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380898, 31.287764, 31.716314>,  <33.790272, 31.452326, 31.456087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380898, 31.287764, 31.716314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450424, 31.592525, 31.466742>,  <34.492138, 31.775383, 31.316998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450424, 31.592525, 31.466742>,  <34.380898, 31.287764, 31.716314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450424, 31.592525, 31.466742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770389, 0.289458, 0.568080,
		0.613424, -0.579412, -0.536650,
		0.173814, 0.761903, -0.623933,
		34.502567, 31.821096, 31.279562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074604, 31.261694, 31.607304>,  <34.380898, 31.287764, 31.716314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074604, 31.261694, 31.607304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974979, 31.632545, 31.495304>,  <34.915203, 31.855057, 31.428104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974979, 31.632545, 31.495304>,  <35.074604, 31.261694, 31.607304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974979, 31.632545, 31.495304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714504, 0.371068, 0.593121,
		0.653799, -0.052338, -0.754856,
		-0.249060, 0.927130, -0.280000,
		34.900261, 31.910685, 31.411304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712894, 31.587330, 31.251799>,  <35.074604, 31.261694, 31.607304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712894, 31.587330, 31.251799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460709, 31.874367, 31.370174>,  <35.309399, 32.046589, 31.441200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460709, 31.874367, 31.370174>,  <35.712894, 31.587330, 31.251799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460709, 31.874367, 31.370174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770244, 0.531134, 0.353016,
		0.096139, 0.450508, -0.887581,
		-0.630461, 0.717593, 0.295938,
		35.271572, 32.089645, 31.458956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086498, 32.071651, 31.076456>,  <35.712894, 31.587330, 31.251799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086498, 32.071651, 31.076456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801155, 32.192455, 31.329409>,  <35.629948, 32.264938, 31.481180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801155, 32.192455, 31.329409>,  <36.086498, 32.071651, 31.076456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801155, 32.192455, 31.329409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680089, 0.516080, 0.520712,
		-0.169103, 0.801532, -0.573542,
		-0.713361, 0.302006, 0.632384,
		35.587147, 32.283058, 31.519123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151470, 32.839954, 31.160995>,  <36.086498, 32.071651, 31.076456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151470, 32.839954, 31.160995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951202, 32.672092, 31.463840>,  <35.831043, 32.571373, 31.645548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951202, 32.672092, 31.463840>,  <36.151470, 32.839954, 31.160995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951202, 32.672092, 31.463840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648093, 0.398087, 0.649232,
		-0.573851, 0.815729, 0.072668,
		-0.500670, -0.419658, 0.757111,
		35.801003, 32.546196, 31.690973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904118, 33.345009, 31.588593>,  <36.151470, 32.839954, 31.160995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904118, 33.345009, 31.588593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935841, 33.014481, 31.811628>,  <35.954876, 32.816162, 31.945450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935841, 33.014481, 31.811628>,  <35.904118, 33.345009, 31.588593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935841, 33.014481, 31.811628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496872, 0.517682, 0.696508,
		-0.864192, 0.221813, 0.451631,
		0.079307, -0.826320, 0.557589,
		35.959633, 32.766586, 31.978905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732555, 33.513088, 32.308418>,  <35.904118, 33.345009, 31.588593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732555, 33.513088, 32.308418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961578, 33.185997, 32.332073>,  <36.098991, 32.989742, 32.346268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961578, 33.185997, 32.332073>,  <35.732555, 33.513088, 32.308418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961578, 33.185997, 32.332073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580490, 0.455271, 0.675099,
		-0.578974, -0.352200, 0.735353,
		0.572555, -0.817730, 0.059141,
		36.133347, 32.940678, 32.349815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837669, 33.418503, 33.025654>,  <35.732555, 33.513088, 32.308418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837669, 33.418503, 33.025654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123837, 33.196896, 32.855366>,  <36.295536, 33.063931, 32.753193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123837, 33.196896, 32.855366>,  <35.837669, 33.418503, 33.025654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123837, 33.196896, 32.855366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670402, 0.372667, 0.641623,
		-0.196821, -0.744432, 0.638030,
		0.715418, -0.554022, -0.425720,
		36.338463, 33.030689, 32.727650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094219, 33.036842, 33.632381>,  <35.837669, 33.418503, 33.025654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094219, 33.036842, 33.632381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372158, 33.014381, 33.345596>,  <36.538921, 33.000904, 33.173527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372158, 33.014381, 33.345596>,  <36.094219, 33.036842, 33.632381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372158, 33.014381, 33.345596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717596, 0.119824, 0.686075,
		0.047386, -0.991206, 0.123553,
		0.694846, -0.056151, -0.716963,
		36.580612, 32.997536, 33.130508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538727, 32.616215, 33.874218>,  <36.094219, 33.036842, 33.632381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538727, 32.616215, 33.874218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752598, 32.797272, 33.588776>,  <36.880920, 32.905907, 33.417511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752598, 32.797272, 33.588776>,  <36.538727, 32.616215, 33.874218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752598, 32.797272, 33.588776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750785, 0.133141, 0.646990,
		0.387863, -0.881698, -0.268646,
		0.534682, 0.452638, -0.713606,
		36.913002, 32.933064, 33.374695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225979, 32.239967, 33.873981>,  <36.538727, 32.616215, 33.874218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225979, 32.239967, 33.873981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268379, 32.592377, 33.689568>,  <37.293819, 32.803822, 33.578918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268379, 32.592377, 33.689568>,  <37.225979, 32.239967, 33.873981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268379, 32.592377, 33.689568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831744, 0.175533, 0.526679,
		0.544945, -0.439295, -0.714181,
		0.106005, 0.881027, -0.461037,
		37.300182, 32.856686, 33.551258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958031, 32.222286, 33.507690>,  <37.225979, 32.239967, 33.873981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958031, 32.222286, 33.507690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832539, 32.595806, 33.576504>,  <37.757244, 32.819920, 33.617790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832539, 32.595806, 33.576504>,  <37.958031, 32.222286, 33.507690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832539, 32.595806, 33.576504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851362, 0.196421, 0.486418,
		0.420426, 0.299063, -0.856623,
		-0.313729, 0.933799, 0.172030,
		37.738419, 32.875946, 33.628113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562420, 32.658337, 33.519299>,  <37.958031, 32.222286, 33.507690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562420, 32.658337, 33.519299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280762, 32.863659, 33.715542>,  <38.111767, 32.986855, 33.833286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280762, 32.863659, 33.715542>,  <38.562420, 32.658337, 33.519299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280762, 32.863659, 33.715542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687120, 0.318404, 0.653058,
		0.179010, 0.796952, -0.576908,
		-0.704146, 0.513309, 0.490604,
		38.069519, 33.017651, 33.862724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933037, 33.094547, 33.808273>,  <38.562420, 32.658337, 33.519299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933037, 33.094547, 33.808273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588821, 33.190273, 33.988140>,  <38.382290, 33.247707, 34.096058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588821, 33.190273, 33.988140>,  <38.933037, 33.094547, 33.808273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588821, 33.190273, 33.988140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503431, 0.265064, 0.822373,
		0.077613, 0.934062, -0.348575,
		-0.860542, 0.239311, 0.449664,
		38.330658, 33.262066, 34.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116058, 33.801853, 34.196445>,  <38.933037, 33.094547, 33.808273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116058, 33.801853, 34.196445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800976, 33.607086, 34.347408>,  <38.611927, 33.490227, 34.437984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800976, 33.607086, 34.347408>,  <39.116058, 33.801853, 34.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800976, 33.607086, 34.347408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422089, 0.019666, 0.906341,
		-0.448735, 0.873227, 0.190031,
		-0.787704, -0.486917, 0.377404,
		38.564663, 33.461010, 34.460629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820793, 34.200558, 34.684135>,  <39.116058, 33.801853, 34.196445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820793, 34.200558, 34.684135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706913, 33.838863, 34.811447>,  <38.638584, 33.621845, 34.887836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706913, 33.838863, 34.811447>,  <38.820793, 34.200558, 34.684135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706913, 33.838863, 34.811447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481066, 0.152420, 0.863333,
		-0.829170, 0.398905, 0.391603,
		-0.284700, -0.904236, 0.318282,
		38.621502, 33.567593, 34.906933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612808, 34.268456, 35.419720>,  <38.820793, 34.200558, 34.684135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612808, 34.268456, 35.419720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652691, 33.870831, 35.402298>,  <38.676620, 33.632256, 35.391846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652691, 33.870831, 35.402298>,  <38.612808, 34.268456, 35.419720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652691, 33.870831, 35.402298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380657, -0.002331, 0.924713,
		-0.919325, -0.108780, 0.378165,
		0.099708, -0.994063, -0.043551,
		38.682602, 33.572613, 35.389233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221355, 33.884773, 36.005535>,  <38.612808, 34.268456, 35.419720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221355, 33.884773, 36.005535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527321, 33.645550, 35.909843>,  <38.710899, 33.502014, 35.852428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527321, 33.645550, 35.909843>,  <38.221355, 33.884773, 36.005535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527321, 33.645550, 35.909843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260724, -0.052150, 0.964004,
		-0.589006, -0.799755, 0.116038,
		0.764915, -0.598058, -0.239232,
		38.756794, 33.466133, 35.838074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251991, 33.277367, 36.482887>,  <38.221355, 33.884773, 36.005535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251991, 33.277367, 36.482887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619095, 33.280258, 36.324059>,  <38.839355, 33.281994, 36.228764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619095, 33.280258, 36.324059>,  <38.251991, 33.277367, 36.482887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619095, 33.280258, 36.324059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386538, -0.245695, 0.888944,
		-0.091127, -0.969320, -0.228285,
		0.917760, 0.007234, -0.397069,
		38.894424, 33.282429, 36.204937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594460, 32.735966, 36.834263>,  <38.251991, 33.277367, 36.482887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594460, 32.735966, 36.834263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895088, 32.956608, 36.689552>,  <39.075466, 33.088993, 36.602726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895088, 32.956608, 36.689552>,  <38.594460, 32.735966, 36.834263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895088, 32.956608, 36.689552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557965, -0.239028, 0.794695,
		0.351882, -0.799125, -0.487421,
		0.751568, 0.551603, -0.361774,
		39.120560, 33.122089, 36.581020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261681, 32.312229, 36.785007>,  <38.594460, 32.735966, 36.834263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261681, 32.312229, 36.785007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398136, 32.688122, 36.775757>,  <39.480007, 32.913658, 36.770206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398136, 32.688122, 36.775757>,  <39.261681, 32.312229, 36.785007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398136, 32.688122, 36.775757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606579, -0.201271, 0.769125,
		0.718115, -0.276403, -0.638681,
		0.341136, 0.939729, -0.023125,
		39.500477, 32.970039, 36.768818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991421, 32.285950, 36.731777>,  <39.261681, 32.312229, 36.785007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991421, 32.285950, 36.731777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915485, 32.650299, 36.878349>,  <39.869923, 32.868908, 36.966293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915485, 32.650299, 36.878349>,  <39.991421, 32.285950, 36.731777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915485, 32.650299, 36.878349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528053, -0.219918, 0.820241,
		0.827721, 0.349207, -0.439241,
		-0.189837, 0.910873, 0.366431,
		39.858536, 32.923561, 36.988277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607056, 32.573208, 37.016209>,  <39.991421, 32.285950, 36.731777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607056, 32.573208, 37.016209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308056, 32.750641, 37.213985>,  <40.128654, 32.857101, 37.332653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308056, 32.750641, 37.213985>,  <40.607056, 32.573208, 37.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308056, 32.750641, 37.213985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447335, -0.214105, 0.868361,
		0.491055, 0.870282, -0.038388,
		-0.747500, 0.443585, 0.494445,
		40.083805, 32.883717, 37.362320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987206, 32.803295, 37.714638>,  <40.607056, 32.573208, 37.016209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987206, 32.803295, 37.714638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596424, 32.861717, 37.776913>,  <40.361958, 32.896770, 37.814278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596424, 32.861717, 37.776913>,  <40.987206, 32.803295, 37.714638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596424, 32.861717, 37.776913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127978, -0.182987, 0.974750,
		0.170857, 0.972205, 0.160077,
		-0.976949, 0.146057, 0.155686,
		40.303341, 32.905533, 37.823620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059258, 33.241791, 38.333130>,  <40.987206, 32.803295, 37.714638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059258, 33.241791, 38.333130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707115, 33.057354, 38.288628>,  <40.495831, 32.946693, 38.261925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707115, 33.057354, 38.288628>,  <41.059258, 33.241791, 38.333130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707115, 33.057354, 38.288628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060059, -0.341036, 0.938130,
		-0.470504, 0.819202, 0.327924,
		-0.880351, -0.461089, -0.111258,
		40.443008, 32.919025, 38.255249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732338, 33.533672, 38.880653>,  <41.059258, 33.241791, 38.333130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732338, 33.533672, 38.880653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557934, 33.187511, 38.781876>,  <40.453293, 32.979816, 38.722610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557934, 33.187511, 38.781876>,  <40.732338, 33.533672, 38.880653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557934, 33.187511, 38.781876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124296, -0.329674, 0.935877,
		-0.891316, 0.377359, 0.251307,
		-0.436011, -0.865399, -0.246940,
		40.427132, 32.927891, 38.707794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299099, 33.253735, 39.538273>,  <40.732338, 33.533672, 38.880653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299099, 33.253735, 39.538273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350132, 32.911076, 39.338318>,  <40.380753, 32.705482, 39.218346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350132, 32.911076, 39.338318>,  <40.299099, 33.253735, 39.538273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350132, 32.911076, 39.338318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049992, -0.497807, 0.865845,
		-0.990568, -0.135453, -0.020684,
		0.127578, -0.856645, -0.499884,
		40.388405, 32.654083, 39.188354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949017, 32.825020, 40.021645>,  <40.299099, 33.253735, 39.538273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949017, 32.825020, 40.021645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191265, 32.593987, 39.802696>,  <40.336617, 32.455368, 39.671326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191265, 32.593987, 39.802696>,  <39.949017, 32.825020, 40.021645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191265, 32.593987, 39.802696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215564, -0.543074, 0.811544,
		-0.765996, -0.609486, -0.204394,
		0.605626, -0.577579, -0.547375,
		40.372952, 32.420712, 39.638485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959831, 32.117805, 40.190414>,  <39.949017, 32.825020, 40.021645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959831, 32.117805, 40.190414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293953, 32.071808, 39.975365>,  <40.494427, 32.044209, 39.846336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293953, 32.071808, 39.975365>,  <39.959831, 32.117805, 40.190414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293953, 32.071808, 39.975365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337196, -0.665208, 0.666181,
		-0.434236, -0.737750, -0.516878,
		0.835307, -0.114991, -0.537624,
		40.544544, 32.037312, 39.814079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075687, 31.472496, 40.300682>,  <39.959831, 32.117805, 40.190414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075687, 31.472496, 40.300682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417091, 31.640406, 40.177193>,  <40.621933, 31.741152, 40.103100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417091, 31.640406, 40.177193>,  <40.075687, 31.472496, 40.300682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417091, 31.640406, 40.177193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520659, -0.663397, 0.537419,
		0.020790, -0.619431, -0.784776,
		0.853512, 0.419774, -0.308720,
		40.673145, 31.766338, 40.084576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633976, 30.945202, 40.103897>,  <40.075687, 31.472496, 40.300682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633976, 30.945202, 40.103897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819191, 31.290655, 40.183632>,  <40.930321, 31.497927, 40.231472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819191, 31.290655, 40.183632>,  <40.633976, 30.945202, 40.103897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819191, 31.290655, 40.183632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790841, -0.504112, 0.347046,
		0.400208, -0.003051, -0.916419,
		0.463037, 0.863633, 0.199337,
		40.958103, 31.549746, 40.243435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384678, 30.783176, 40.134403>,  <40.633976, 30.945202, 40.103897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384678, 30.783176, 40.134403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351048, 31.151936, 40.285683>,  <41.330868, 31.373192, 40.376450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351048, 31.151936, 40.285683>,  <41.384678, 30.783176, 40.134403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351048, 31.151936, 40.285683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807944, -0.159080, 0.567379,
		0.583230, 0.353267, -0.731468,
		-0.084075, 0.921898, 0.378200,
		41.325825, 31.428505, 40.399143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123425, 30.970245, 40.203362>,  <41.384678, 30.783176, 40.134403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123425, 30.970245, 40.203362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912025, 31.232830, 40.418674>,  <41.785187, 31.390381, 40.547863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912025, 31.232830, 40.418674>,  <42.123425, 30.970245, 40.203362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912025, 31.232830, 40.418674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729880, 0.027547, 0.683020,
		0.433547, 0.753858, -0.493695,
		-0.528499, 0.656460, 0.538283,
		41.753475, 31.429768, 40.580158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570461, 31.522490, 40.432610>,  <42.123425, 30.970245, 40.203362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570461, 31.522490, 40.432610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269142, 31.525646, 40.695663>,  <42.088352, 31.527540, 40.853497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269142, 31.525646, 40.695663>,  <42.570461, 31.522490, 40.432610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269142, 31.525646, 40.695663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657241, 0.045572, 0.752301,
		-0.024034, 0.998930, -0.039515,
		-0.753297, 0.007890, 0.657633,
		42.043152, 31.528013, 40.892952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844692, 31.993755, 40.956028>,  <42.570461, 31.522490, 40.432610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844692, 31.993755, 40.956028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558926, 31.760645, 41.110943>,  <42.387466, 31.620779, 41.203892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558926, 31.760645, 41.110943>,  <42.844692, 31.993755, 40.956028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558926, 31.760645, 41.110943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493085, -0.026584, 0.869575,
		-0.496470, 0.812199, 0.306349,
		-0.714412, -0.582774, 0.387285,
		42.344601, 31.585814, 41.227127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684963, 32.299171, 41.588894>,  <42.844692, 31.993755, 40.956028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684963, 32.299171, 41.588894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571423, 31.919142, 41.640724>,  <42.503296, 31.691124, 41.671822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571423, 31.919142, 41.640724>,  <42.684963, 32.299171, 41.588894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571423, 31.919142, 41.640724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431201, -0.005777, 0.902237,
		-0.856442, 0.311977, 0.411312,
		-0.283853, -0.950072, 0.129577,
		42.486267, 31.634121, 41.679596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214088, 32.218887, 42.177856>,  <42.684963, 32.299171, 41.588894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214088, 32.218887, 42.177856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415485, 31.878996, 42.115288>,  <42.536324, 31.675062, 42.077747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415485, 31.878996, 42.115288>,  <42.214088, 32.218887, 42.177856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415485, 31.878996, 42.115288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399272, 0.068272, 0.914287,
		-0.766213, -0.522788, 0.373645,
		0.503488, -0.849725, -0.156424,
		42.566532, 31.624079, 42.068359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155861, 31.557209, 42.644836>,  <42.214088, 32.218887, 42.177856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155861, 31.557209, 42.644836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513638, 31.555967, 42.465965>,  <42.728302, 31.555222, 42.358643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513638, 31.555967, 42.465965>,  <42.155861, 31.557209, 42.644836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513638, 31.555967, 42.465965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392076, 0.486371, 0.780846,
		0.215069, -0.873747, 0.436247,
		0.894440, -0.003106, -0.447178,
		42.781971, 31.555037, 42.331810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590847, 31.220179, 43.164558>,  <42.155861, 31.557209, 42.644836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590847, 31.220179, 43.164558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769276, 31.477346, 42.915504>,  <42.876331, 31.631647, 42.766071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769276, 31.477346, 42.915504>,  <42.590847, 31.220179, 43.164558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769276, 31.477346, 42.915504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501224, 0.396903, 0.768923,
		0.741482, -0.655074, -0.145200,
		0.446071, 0.642920, -0.622635,
		42.903095, 31.670223, 42.728714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451488, 31.179087, 43.146439>,  <42.590847, 31.220179, 43.164558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451488, 31.179087, 43.146439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316528, 31.549978, 43.081440>,  <43.235554, 31.772514, 43.042439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316528, 31.549978, 43.081440>,  <43.451488, 31.179087, 43.146439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316528, 31.549978, 43.081440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686961, 0.360546, 0.630945,
		0.643620, 0.101249, -0.758618,
		-0.337399, 0.927230, -0.162501,
		43.215309, 31.828148, 43.032688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359463, 31.226185, 42.404484>,  <43.451488, 31.179087, 43.146439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359463, 31.226185, 42.404484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199928, 30.881765, 42.530674>,  <43.104206, 30.675114, 42.606388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199928, 30.881765, 42.530674>,  <43.359463, 31.226185, 42.404484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199928, 30.881765, 42.530674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639033, 0.014229, -0.769048,
		0.657698, -0.508325, -0.555913,
		-0.398836, -0.861048, 0.315478,
		43.080276, 30.623451, 42.625317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321571, 30.761118, 41.912090>,  <43.359463, 31.226185, 42.404484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321571, 30.761118, 41.912090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029385, 30.732969, 42.183819>,  <42.854073, 30.716080, 42.346855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029385, 30.732969, 42.183819>,  <43.321571, 30.761118, 41.912090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029385, 30.732969, 42.183819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659414, 0.331563, -0.674714,
		-0.177757, -0.940805, -0.288598,
		-0.730463, -0.070370, 0.679318,
		42.810246, 30.711859, 42.387615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680218, 30.466145, 41.551949>,  <43.321571, 30.761118, 41.912090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680218, 30.466145, 41.551949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573444, 30.690781, 41.865219>,  <42.509380, 30.825562, 42.053181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573444, 30.690781, 41.865219>,  <42.680218, 30.466145, 41.551949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573444, 30.690781, 41.865219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667167, 0.478753, -0.570687,
		-0.695440, -0.674842, 0.246882,
		-0.266929, 0.561590, 0.783176,
		42.493366, 30.859257, 42.100174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107529, 30.356964, 41.765224>,  <42.680218, 30.466145, 41.551949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107529, 30.356964, 41.765224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181171, 30.750092, 41.770439>,  <42.225357, 30.985968, 41.773567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181171, 30.750092, 41.770439>,  <42.107529, 30.356964, 41.765224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181171, 30.750092, 41.770439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622377, 0.126834, -0.772373,
		-0.760758, 0.134081, 0.635035,
		0.184105, 0.982820, 0.013041,
		42.236404, 31.044937, 41.774353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491024, 30.807657, 41.862026>,  <42.107529, 30.356964, 41.765224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491024, 30.807657, 41.862026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738777, 31.052105, 41.664890>,  <41.887428, 31.198774, 41.546608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738777, 31.052105, 41.664890>,  <41.491024, 30.807657, 41.862026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738777, 31.052105, 41.664890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747759, 0.267951, -0.607502,
		-0.239198, 0.744806, 0.622935,
		0.619387, 0.611119, -0.492842,
		41.924595, 31.235441, 41.517036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210629, 31.514755, 41.884830>,  <41.491024, 30.807657, 41.862026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210629, 31.514755, 41.884830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450378, 31.486303, 41.565910>,  <41.594227, 31.469233, 41.374557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450378, 31.486303, 41.565910>,  <41.210629, 31.514755, 41.884830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450378, 31.486303, 41.565910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766817, 0.234758, -0.597395,
		0.229666, 0.969448, 0.086164,
		0.599371, -0.071129, -0.797305,
		41.630188, 31.464964, 41.326717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870087, 32.030006, 41.439281>,  <41.210629, 31.514755, 41.884830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870087, 32.030006, 41.439281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132496, 31.828659, 41.214336>,  <41.289944, 31.707851, 41.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132496, 31.828659, 41.214336>,  <40.870087, 32.030006, 41.439281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132496, 31.828659, 41.214336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451936, 0.334759, -0.826856,
		0.604468, 0.796590, -0.007879,
		0.656028, -0.503369, -0.562359,
		41.329304, 31.677649, 41.045628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218018, 32.524162, 41.024014>,  <40.870087, 32.030006, 41.439281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218018, 32.524162, 41.024014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249081, 32.169823, 40.841045>,  <41.267719, 31.957218, 40.731262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249081, 32.169823, 40.841045>,  <41.218018, 32.524162, 41.024014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249081, 32.169823, 40.841045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346110, 0.406319, -0.845643,
		0.934975, 0.223986, -0.275050,
		0.077654, -0.885853, -0.457422,
		41.272377, 31.904066, 40.703819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449471, 32.727417, 40.357243>,  <41.218018, 32.524162, 41.024014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449471, 32.727417, 40.357243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295261, 32.358486, 40.346783>,  <41.202736, 32.137127, 40.340508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295261, 32.358486, 40.346783>,  <41.449471, 32.727417, 40.357243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295261, 32.358486, 40.346783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418865, 0.200193, -0.885706,
		0.822145, -0.330508, -0.463510,
		-0.385525, -0.922327, -0.026149,
		41.179604, 32.081787, 40.338940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650700, 32.502056, 39.697163>,  <41.449471, 32.727417, 40.357243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650700, 32.502056, 39.697163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387753, 32.221684, 39.807842>,  <41.229984, 32.053459, 39.874249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387753, 32.221684, 39.807842>,  <41.650700, 32.502056, 39.697163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387753, 32.221684, 39.807842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319826, -0.072960, -0.944663,
		0.682336, -0.709483, -0.176216,
		-0.657365, -0.700936, 0.276695,
		41.190544, 32.011402, 39.890850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705524, 32.028843, 39.230526>,  <41.650700, 32.502056, 39.697163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705524, 32.028843, 39.230526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349548, 31.921877, 39.378311>,  <41.135963, 31.857698, 39.466980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349548, 31.921877, 39.378311>,  <41.705524, 32.028843, 39.230526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349548, 31.921877, 39.378311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380785, -0.010207, -0.924607,
		0.251022, -0.963528, -0.092742,
		-0.889938, -0.267412, 0.369459,
		41.082565, 31.841654, 39.489147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272041, 31.570324, 38.796513>,  <41.705524, 32.028843, 39.230526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272041, 31.570324, 38.796513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055553, 31.832148, 39.007656>,  <40.925659, 31.989241, 39.134342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055553, 31.832148, 39.007656>,  <41.272041, 31.570324, 38.796513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055553, 31.832148, 39.007656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663111, 0.053780, -0.746587,
		-0.517073, -0.754096, 0.404938,
		-0.541220, 0.654559, 0.527857,
		40.893188, 32.028515, 39.166012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660465, 31.583838, 38.457790>,  <41.272041, 31.570324, 38.796513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660465, 31.583838, 38.457790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596546, 31.919867, 38.665154>,  <40.558193, 32.121483, 38.789570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596546, 31.919867, 38.665154>,  <40.660465, 31.583838, 38.457790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596546, 31.919867, 38.665154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595058, 0.337038, -0.729597,
		-0.787636, -0.425069, 0.446033,
		-0.159799, 0.840072, 0.518404,
		40.548607, 32.171886, 38.820675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956146, 31.746857, 38.436558>,  <40.660465, 31.583838, 38.457790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956146, 31.746857, 38.436558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086494, 32.117004, 38.514015>,  <40.164703, 32.339092, 38.560490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086494, 32.117004, 38.514015>,  <39.956146, 31.746857, 38.436558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086494, 32.117004, 38.514015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564049, 0.354675, -0.745690,
		-0.758719, 0.133777, 0.637533,
		0.325873, 0.925370, 0.193641,
		40.184258, 32.394615, 38.572109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139420, 31.672344, 38.419243>,  <39.956146, 31.746857, 38.436558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139420, 31.672344, 38.419243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086700, 31.416700, 38.116146>,  <39.055069, 31.263313, 37.934288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086700, 31.416700, 38.116146>,  <39.139420, 31.672344, 38.419243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086700, 31.416700, 38.116146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638305, 0.530125, -0.558152,
		0.758417, -0.557230, 0.338080,
		-0.131795, -0.639110, -0.757739,
		39.047161, 31.224968, 37.888824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352356, 32.321877, 38.115952>,  <39.139420, 31.672344, 38.419243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352356, 32.321877, 38.115952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671680, 32.555344, 38.175312>,  <39.863277, 32.695423, 38.210930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671680, 32.555344, 38.175312>,  <39.352356, 32.321877, 38.115952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671680, 32.555344, 38.175312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243891, 0.538632, -0.806470,
		-0.550646, 0.607623, 0.572349,
		0.798315, 0.583670, 0.148401,
		39.911175, 32.730446, 38.219833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083149, 33.045338, 38.224873>,  <39.352356, 32.321877, 38.115952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083149, 33.045338, 38.224873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461975, 33.039700, 38.096577>,  <39.689270, 33.036316, 38.019600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461975, 33.039700, 38.096577>,  <39.083149, 33.045338, 38.224873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461975, 33.039700, 38.096577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280806, 0.447922, -0.848831,
		0.155630, 0.893962, 0.420253,
		0.947062, -0.014094, -0.320740,
		39.746094, 33.035473, 38.000355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363289, 33.694096, 38.024914>,  <39.083149, 33.045338, 38.224873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363289, 33.694096, 38.024914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573330, 33.434593, 37.804596>,  <39.699356, 33.278893, 37.672405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573330, 33.434593, 37.804596>,  <39.363289, 33.694096, 38.024914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573330, 33.434593, 37.804596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217005, 0.523740, -0.823775,
		0.822905, 0.552095, 0.134235,
		0.525106, -0.648759, -0.550795,
		39.730862, 33.239967, 37.639359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577663, 34.121807, 37.374519>,  <39.363289, 33.694096, 38.024914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577663, 34.121807, 37.374519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655396, 33.743900, 37.268955>,  <39.702034, 33.517155, 37.205616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655396, 33.743900, 37.268955>,  <39.577663, 34.121807, 37.374519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655396, 33.743900, 37.268955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249189, 0.212667, -0.944816,
		0.948757, 0.249374, -0.194097,
		0.194334, -0.944767, -0.263910,
		39.713696, 33.460468, 37.189781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930626, 34.197029, 36.834347>,  <39.577663, 34.121807, 37.374519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930626, 34.197029, 36.834347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820358, 33.814892, 36.791794>,  <39.754200, 33.585609, 36.766262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820358, 33.814892, 36.791794>,  <39.930626, 34.197029, 36.834347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820358, 33.814892, 36.791794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254105, 0.179163, -0.950437,
		0.927059, -0.234970, -0.292148,
		-0.275667, -0.955348, -0.106387,
		39.737659, 33.528286, 36.759876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010456, 33.962841, 36.167297>,  <39.930626, 34.197029, 36.834347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010456, 33.962841, 36.167297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736710, 33.701237, 36.296238>,  <39.572460, 33.544273, 36.373604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736710, 33.701237, 36.296238>,  <40.010456, 33.962841, 36.167297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736710, 33.701237, 36.296238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474238, 0.063440, -0.878108,
		0.553844, -0.753818, -0.353574,
		-0.684365, -0.654013, 0.322354,
		39.531399, 33.505032, 36.392944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044102, 33.400532, 35.737320>,  <40.010456, 33.962841, 36.167297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044102, 33.400532, 35.737320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672585, 33.392376, 35.885338>,  <39.449673, 33.387482, 35.974148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672585, 33.392376, 35.885338>,  <40.044102, 33.400532, 35.737320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672585, 33.392376, 35.885338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355374, -0.234283, -0.904887,
		0.105146, -0.971955, 0.210353,
		-0.928791, -0.020391, 0.370041,
		39.393948, 33.386257, 35.996349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793720, 32.780674, 35.481445>,  <40.044102, 33.400532, 35.737320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793720, 32.780674, 35.481445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474419, 32.998703, 35.583965>,  <39.282837, 33.129520, 35.645477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474419, 32.998703, 35.583965>,  <39.793720, 32.780674, 35.481445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474419, 32.998703, 35.583965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435012, -0.227404, -0.871236,
		-0.416602, -0.806960, 0.418639,
		-0.798252, 0.545072, 0.256300,
		39.234943, 33.162224, 35.660854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549431, 32.930473, 35.582462>,  <39.793720, 32.780674, 35.481445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549431, 32.930473, 35.582462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551014, 33.324348, 35.652176>,  <40.551964, 33.560673, 35.694004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551014, 33.324348, 35.652176>,  <40.549431, 32.930473, 35.582462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551014, 33.324348, 35.652176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944385, 0.060994, -0.323136,
		-0.328819, -0.163313, 0.930165,
		0.003962, 0.984687, 0.174287,
		40.552204, 33.619755, 35.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554344, 33.346394, 34.996887>,  <40.549431, 32.930473, 35.582462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554344, 33.346394, 34.996887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846214, 33.556488, 34.821754>,  <41.021336, 33.682545, 34.716675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846214, 33.556488, 34.821754>,  <40.554344, 33.346394, 34.996887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846214, 33.556488, 34.821754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578542, -0.132901, 0.804753,
		0.364498, -0.840514, -0.400846,
		0.729678, 0.525237, -0.437830,
		41.065117, 33.714058, 34.690407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192463, 33.005558, 35.136673>,  <40.554344, 33.346394, 34.996887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192463, 33.005558, 35.136673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253056, 33.397186, 35.082314>,  <41.289413, 33.632164, 35.049698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253056, 33.397186, 35.082314>,  <41.192463, 33.005558, 35.136673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253056, 33.397186, 35.082314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530989, 0.035358, 0.846641,
		0.833729, -0.200411, -0.514521,
		0.151484, 0.979074, -0.135895,
		41.298500, 33.690907, 35.041546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808701, 33.313232, 35.188881>,  <41.192463, 33.005558, 35.136673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808701, 33.313232, 35.188881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587254, 33.614513, 35.330975>,  <41.454384, 33.795284, 35.416229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587254, 33.614513, 35.330975>,  <41.808701, 33.313232, 35.188881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587254, 33.614513, 35.330975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469671, -0.069854, 0.880074,
		0.687690, 0.654067, -0.315086,
		-0.553617, 0.753204, 0.355234,
		41.421169, 33.840473, 35.437546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128490, 33.976353, 35.394421>,  <41.808701, 33.313232, 35.188881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128490, 33.976353, 35.394421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813457, 33.886475, 35.623932>,  <41.624435, 33.832546, 35.761639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813457, 33.886475, 35.623932>,  <42.128490, 33.976353, 35.394421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813457, 33.886475, 35.623932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607449, -0.126705, 0.784188,
		-0.103505, 0.966156, 0.236283,
		-0.787586, -0.224697, 0.573776,
		41.577183, 33.819065, 35.796066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806805, 34.529942, 35.734894>,  <42.128490, 33.976353, 35.394421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806805, 34.529942, 35.734894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754124, 34.366283, 36.096058>,  <41.722515, 34.268089, 36.312756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754124, 34.366283, 36.096058>,  <41.806805, 34.529942, 35.734894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754124, 34.366283, 36.096058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510577, -0.808732, -0.291999,
		0.849687, 0.422551, 0.315410,
		-0.131698, -0.409149, 0.902914,
		41.714615, 34.243538, 36.366932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496437, 34.762630, 36.330120>,  <41.806805, 34.529942, 35.734894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496437, 34.762630, 36.330120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628735, 34.985569, 36.634743>,  <41.708115, 35.119331, 36.817516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628735, 34.985569, 36.634743>,  <41.496437, 34.762630, 36.330120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628735, 34.985569, 36.634743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935857, -0.089760, -0.340755,
		-0.121560, 0.825416, -0.551281,
		0.330748, 0.557343, 0.761561,
		41.727959, 35.152771, 36.863213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871799, 35.314240, 36.133507>,  <41.496437, 34.762630, 36.330120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871799, 35.314240, 36.133507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016304, 35.218281, 36.493938>,  <42.103008, 35.160706, 36.710197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016304, 35.218281, 36.493938>,  <41.871799, 35.314240, 36.133507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016304, 35.218281, 36.493938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901514, -0.157040, -0.403250,
		0.238244, 0.958012, 0.159539,
		0.361264, -0.239898, 0.901076,
		42.124683, 35.146313, 36.764259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296700, 35.784042, 36.284939>,  <41.871799, 35.314240, 36.133507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296700, 35.784042, 36.284939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401844, 35.427513, 36.432693>,  <42.464931, 35.213596, 36.521347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401844, 35.427513, 36.432693>,  <42.296700, 35.784042, 36.284939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401844, 35.427513, 36.432693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827619, 0.011508, -0.561173,
		0.495935, 0.453223, 0.740701,
		0.262861, -0.891323, 0.369388,
		42.480701, 35.160118, 36.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026432, 35.810635, 36.504299>,  <42.296700, 35.784042, 36.284939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026432, 35.810635, 36.504299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934528, 35.426235, 36.442734>,  <42.879387, 35.195595, 36.405796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934528, 35.426235, 36.442734>,  <43.026432, 35.810635, 36.504299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934528, 35.426235, 36.442734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845714, -0.118875, -0.520227,
		0.481643, -0.249690, 0.840044,
		-0.229756, -0.961001, -0.153911,
		42.865601, 35.137936, 36.396561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630352, 35.456478, 36.466770>,  <43.026432, 35.810635, 36.504299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630352, 35.456478, 36.466770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373325, 35.215179, 36.277790>,  <43.219109, 35.070400, 36.164402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373325, 35.215179, 36.277790>,  <43.630352, 35.456478, 36.466770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373325, 35.215179, 36.277790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732356, -0.302205, -0.610187,
		0.225315, -0.738084, 0.635975,
		-0.642564, -0.603244, -0.472449,
		43.180557, 35.034206, 36.136055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267017, 35.086323, 36.365620>,  <43.630352, 35.456478, 36.466770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267017, 35.086323, 36.365620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197422, 34.967297, 35.990135>,  <44.155666, 34.895882, 35.764843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197422, 34.967297, 35.990135>,  <44.267017, 35.086323, 36.365620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197422, 34.967297, 35.990135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887105, -0.461207, -0.018222,
		-0.427518, -0.835907, 0.344221,
		-0.173989, -0.297570, -0.938712,
		44.145226, 34.878025, 35.708523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361568, 34.395512, 36.249275>,  <44.267017, 35.086323, 36.365620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361568, 34.395512, 36.249275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439865, 34.570442, 35.898178>,  <44.486843, 34.675400, 35.687519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439865, 34.570442, 35.898178>,  <44.361568, 34.395512, 36.249275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439865, 34.570442, 35.898178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873676, -0.484286, -0.046454,
		-0.445394, -0.757770, -0.476874,
		0.195742, 0.437324, -0.877743,
		44.498589, 34.701641, 35.634853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818249, 33.936043, 35.965420>,  <44.361568, 34.395512, 36.249275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818249, 33.936043, 35.965420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853245, 34.278454, 35.761631>,  <44.874245, 34.483898, 35.639359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853245, 34.278454, 35.761631>,  <44.818249, 33.936043, 35.965420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853245, 34.278454, 35.761631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967879, -0.194060, -0.159847,
		-0.235702, -0.479125, -0.845508,
		0.087493, 0.856026, -0.509475,
		44.879494, 34.535263, 35.608788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965843, 33.815933, 35.255928>,  <44.818249, 33.936043, 35.965420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965843, 33.815933, 35.255928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114227, 34.175816, 35.347950>,  <45.203259, 34.391743, 35.403164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114227, 34.175816, 35.347950>,  <44.965843, 33.815933, 35.255928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114227, 34.175816, 35.347950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893464, -0.278230, -0.352577,
		-0.253207, 0.336334, -0.907064,
		0.370956, 0.899704, 0.230052,
		45.225513, 34.445728, 35.416965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552002, 33.947742, 34.753422>,  <44.965843, 33.815933, 35.255928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552002, 33.947742, 34.753422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609394, 34.263363, 34.992355>,  <45.643829, 34.452736, 35.135715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609394, 34.263363, 34.992355>,  <45.552002, 33.947742, 34.753422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609394, 34.263363, 34.992355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975692, -0.011756, -0.218832,
		-0.165648, 0.614213, -0.771559,
		0.143480, 0.789053, 0.597335,
		45.652439, 34.500080, 35.171555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923439, 34.429234, 34.447746>,  <45.552002, 33.947742, 34.753422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923439, 34.429234, 34.447746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988716, 34.541893, 34.825962>,  <46.027882, 34.609489, 35.052891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988716, 34.541893, 34.825962>,  <45.923439, 34.429234, 34.447746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988716, 34.541893, 34.825962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983402, 0.030607, -0.178842,
		-0.079310, 0.959030, -0.271978,
		0.163191, 0.281648, 0.945539,
		46.037674, 34.626389, 35.109623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550331, 34.884312, 34.470898>,  <45.923439, 34.429234, 34.447746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550331, 34.884312, 34.470898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525845, 34.716751, 34.833282>,  <46.511154, 34.616215, 35.050713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525845, 34.716751, 34.833282>,  <46.550331, 34.884312, 34.470898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525845, 34.716751, 34.833282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997007, 0.017279, 0.075357,
		-0.047222, 0.907866, 0.416593,
		-0.061216, -0.418905, 0.905964,
		46.507481, 34.591080, 35.105072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881100, 35.341530, 34.989101>,  <46.550331, 34.884312, 34.470898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881100, 35.341530, 34.989101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892162, 34.941685, 34.990784>,  <46.898800, 34.701778, 34.991795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892162, 34.941685, 34.990784>,  <46.881100, 35.341530, 34.989101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892162, 34.941685, 34.990784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944009, 0.024732, -0.328991,
		0.328758, 0.013073, 0.944324,
		0.027656, -0.999609, 0.004210,
		46.900459, 34.641804, 34.992046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.386341, 35.139763, 35.488766>,  <46.881100, 35.341530, 34.989101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.386341, 35.139763, 35.488766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323631, 34.921944, 35.159187>,  <47.286007, 34.791252, 34.961441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323631, 34.921944, 35.159187>,  <47.386341, 35.139763, 35.488766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.323631, 34.921944, 35.159187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879431, 0.302701, -0.367388,
		0.449470, -0.782201, 0.431438,
		-0.156775, -0.544550, -0.823946,
		47.276600, 34.758579, 34.912003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.055885, 34.823921, 35.331154>,  <47.386341, 35.139763, 35.488766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.055885, 34.823921, 35.331154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820148, 34.824745, 35.007999>,  <47.678707, 34.825237, 34.814106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820148, 34.824745, 35.007999>,  <48.055885, 34.823921, 35.331154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.820148, 34.824745, 35.007999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757128, 0.350268, -0.551424,
		0.281840, -0.936647, -0.207987,
		-0.589341, 0.002059, -0.807882,
		47.643345, 34.825363, 34.765636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.203035, 28.370655, 32.523594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.135952, 28.742348, 32.655289>,  <29.095701, 28.965364, 32.734306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.135952, 28.742348, 32.655289>,  <29.203035, 28.370655, 32.523594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135952, 28.742348, 32.655289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703397, -0.121205, 0.700387,
		0.690729, 0.349047, -0.633293,
		-0.167710, 0.929234, 0.329239,
		29.085638, 29.021118, 32.754059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835299, 28.657644, 32.608902>,  <29.203035, 28.370655, 32.523594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835299, 28.657644, 32.608902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.619091, 28.922968, 32.815922>,  <29.489367, 29.082163, 32.940136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.619091, 28.922968, 32.815922>,  <29.835299, 28.657644, 32.608902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619091, 28.922968, 32.815922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699197, 0.012011, 0.714828,
		0.467935, 0.748250, -0.470276,
		-0.540518, 0.663308, 0.517554,
		29.456936, 29.121960, 32.971188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295073, 29.092894, 32.800880>,  <29.835299, 28.657644, 32.608902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295073, 29.092894, 32.800880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.997654, 29.149445, 33.062305>,  <29.819202, 29.183376, 33.219162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.997654, 29.149445, 33.062305>,  <30.295073, 29.092894, 32.800880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997654, 29.149445, 33.062305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668677, 0.153481, 0.727540,
		0.002549, 0.977985, -0.208658,
		-0.743549, 0.141379, 0.653565,
		29.774590, 29.191858, 33.258373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320322, 29.796623, 33.111309>,  <30.295073, 29.092894, 32.800880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320322, 29.796623, 33.111309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.110353, 29.576004, 33.370617>,  <29.984373, 29.443632, 33.526203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.110353, 29.576004, 33.370617>,  <30.320322, 29.796623, 33.111309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110353, 29.576004, 33.370617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747652, 0.065217, 0.660881,
		-0.406786, 0.831590, 0.378132,
		-0.524921, -0.551548, 0.648269,
		29.952877, 29.410540, 33.565098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280931, 30.168610, 33.647888>,  <30.320322, 29.796623, 33.111309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280931, 30.168610, 33.647888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.211845, 29.810335, 33.811798>,  <30.170393, 29.595369, 33.910145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.211845, 29.810335, 33.811798>,  <30.280931, 30.168610, 33.647888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211845, 29.810335, 33.811798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770058, 0.136609, 0.623177,
		-0.614150, 0.423180, 0.666137,
		-0.172716, -0.895688, 0.409772,
		30.160030, 29.541628, 33.934731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422699, 30.262539, 34.337940>,  <30.280931, 30.168610, 33.647888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422699, 30.262539, 34.337940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.442022, 29.868408, 34.272461>,  <30.453617, 29.631929, 34.233173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.442022, 29.868408, 34.272461>,  <30.422699, 30.262539, 34.337940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442022, 29.868408, 34.272461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853941, -0.044272, 0.518483,
		-0.518122, -0.164839, 0.839272,
		0.048311, -0.985326, -0.163701,
		30.456516, 29.572811, 34.223351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584509, 30.083153, 34.957596>,  <30.422699, 30.262539, 34.337940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584509, 30.083153, 34.957596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.670456, 29.780670, 34.710377>,  <30.722025, 29.599180, 34.562046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.670456, 29.780670, 34.710377>,  <30.584509, 30.083153, 34.957596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670456, 29.780670, 34.710377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901564, -0.089738, 0.423237,
		-0.375518, -0.648148, 0.662489,
		0.214870, -0.756209, -0.618045,
		30.734917, 29.553808, 34.524963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798506, 29.458616, 35.403461>,  <30.584509, 30.083153, 34.957596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798506, 29.458616, 35.403461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.973383, 29.445940, 35.043938>,  <31.078310, 29.438335, 34.828224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.973383, 29.445940, 35.043938>,  <30.798506, 29.458616, 35.403461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973383, 29.445940, 35.043938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884112, -0.168142, 0.435974,
		-0.164935, -0.985254, -0.045512,
		0.437198, -0.031669, -0.898808,
		31.104542, 29.436434, 34.774296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334986, 28.911715, 35.542019>,  <30.798506, 29.458616, 35.403461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334986, 28.911715, 35.542019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.471563, 29.077698, 35.204681>,  <31.553509, 29.177288, 35.002281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.471563, 29.077698, 35.204681>,  <31.334986, 28.911715, 35.542019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471563, 29.077698, 35.204681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938799, -0.107102, 0.327391,
		0.045530, -0.903514, -0.426133,
		0.341442, 0.414959, -0.843342,
		31.573996, 29.202187, 34.951679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956169, 28.613091, 35.258957>,  <31.334986, 28.911715, 35.542019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956169, 28.613091, 35.258957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971273, 28.977581, 35.094887>,  <31.980337, 29.196276, 34.996445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971273, 28.977581, 35.094887>,  <31.956169, 28.613091, 35.258957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971273, 28.977581, 35.094887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955521, 0.087218, 0.281733,
		0.292497, -0.402566, -0.867402,
		0.037763, 0.911226, -0.410171,
		31.982603, 29.250950, 34.971836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584042, 28.587877, 34.880238>,  <31.956169, 28.613091, 35.258957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584042, 28.587877, 34.880238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.509335, 28.975517, 34.944691>,  <32.464512, 29.208101, 34.983364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.509335, 28.975517, 34.944691>,  <32.584042, 28.587877, 34.880238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509335, 28.975517, 34.944691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978004, 0.167904, 0.123756,
		0.092876, 0.180706, -0.979142,
		-0.186766, 0.969099, 0.161137,
		32.453304, 29.266247, 34.993031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134186, 28.900339, 34.487499>,  <32.584042, 28.587877, 34.880238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134186, 28.900339, 34.487499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.998436, 29.200912, 34.713833>,  <32.916985, 29.381256, 34.849632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.998436, 29.200912, 34.713833>,  <33.134186, 28.900339, 34.487499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998436, 29.200912, 34.713833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940621, 0.266403, 0.210385,
		0.007350, 0.603637, -0.797225,
		-0.339379, 0.751433, 0.565836,
		32.896622, 29.426342, 34.883583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536633, 29.570236, 34.321098>,  <33.134186, 28.900339, 34.487499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536633, 29.570236, 34.321098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.376728, 29.647860, 34.679436>,  <33.280785, 29.694433, 34.894436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.376728, 29.647860, 34.679436>,  <33.536633, 29.570236, 34.321098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376728, 29.647860, 34.679436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852963, 0.436610, 0.286053,
		-0.335622, 0.878473, -0.340064,
		-0.399765, 0.194056, 0.895841,
		33.256798, 29.706076, 34.948189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621063, 30.307531, 34.621712>,  <33.536633, 29.570236, 34.321098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621063, 30.307531, 34.621712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570244, 30.077297, 34.944836>,  <33.539753, 29.939157, 35.138710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570244, 30.077297, 34.944836>,  <33.621063, 30.307531, 34.621712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570244, 30.077297, 34.944836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773832, 0.451969, 0.443743,
		-0.620517, 0.681488, 0.387985,
		-0.127048, -0.575585, 0.807812,
		33.532131, 29.904621, 35.187180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701344, 30.769279, 35.143452>,  <33.621063, 30.307531, 34.621712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701344, 30.769279, 35.143452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751484, 30.413515, 35.319286>,  <33.781570, 30.200056, 35.424786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751484, 30.413515, 35.319286>,  <33.701344, 30.769279, 35.143452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751484, 30.413515, 35.319286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713779, 0.388587, 0.582683,
		-0.689062, 0.240727, 0.683553,
		0.125353, -0.889410, 0.439586,
		33.789089, 30.146692, 35.451160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614059, 30.905428, 35.898659>,  <33.701344, 30.769279, 35.143452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614059, 30.905428, 35.898659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848568, 30.593016, 35.812611>,  <33.989273, 30.405569, 35.760983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848568, 30.593016, 35.812611>,  <33.614059, 30.905428, 35.898659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848568, 30.593016, 35.812611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732474, 0.397622, 0.552610,
		-0.346069, -0.481550, 0.805199,
		0.586274, -0.781029, -0.215119,
		34.024448, 30.358707, 35.748074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998661, 30.761345, 36.534969>,  <33.614059, 30.905428, 35.898659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998661, 30.761345, 36.534969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198185, 30.547474, 36.262115>,  <34.317902, 30.419151, 36.098404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198185, 30.547474, 36.262115>,  <33.998661, 30.761345, 36.534969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198185, 30.547474, 36.262115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858511, 0.196808, 0.473525,
		-0.118935, -0.821818, 0.557198,
		0.498813, -0.534679, -0.682132,
		34.347828, 30.387070, 36.057476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314266, 30.290361, 36.935822>,  <33.998661, 30.761345, 36.534969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314266, 30.290361, 36.935822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518719, 30.308348, 36.592491>,  <34.641392, 30.319139, 36.386494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518719, 30.308348, 36.592491>,  <34.314266, 30.290361, 36.935822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518719, 30.308348, 36.592491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846922, 0.143896, 0.511877,
		0.146531, -0.988571, 0.035458,
		0.511129, 0.044976, -0.858327,
		34.672058, 30.321836, 36.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888889, 29.985338, 37.097298>,  <34.314266, 30.290361, 36.935822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888889, 29.985338, 37.097298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989979, 30.156725, 36.750301>,  <35.050632, 30.259558, 36.542103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989979, 30.156725, 36.750301>,  <34.888889, 29.985338, 37.097298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989979, 30.156725, 36.750301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955165, 0.032445, 0.294289,
		0.154239, -0.902974, -0.401058,
		0.252724, 0.428468, -0.867494,
		35.065796, 30.285265, 36.490051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463120, 29.638966, 36.788490>,  <34.888889, 29.985338, 37.097298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463120, 29.638966, 36.788490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459953, 30.011868, 36.643803>,  <35.458054, 30.235609, 36.556988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459953, 30.011868, 36.643803>,  <35.463120, 29.638966, 36.788490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459953, 30.011868, 36.643803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836996, 0.204107, 0.507719,
		0.547152, -0.298739, -0.781908,
		-0.007918, 0.932253, -0.361721,
		35.457577, 30.291544, 36.535286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149532, 29.784933, 36.439117>,  <35.463120, 29.638966, 36.788490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149532, 29.784933, 36.439117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971397, 30.120756, 36.563576>,  <35.864517, 30.322250, 36.638252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971397, 30.120756, 36.563576>,  <36.149532, 29.784933, 36.439117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971397, 30.120756, 36.563576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840959, 0.272927, 0.467224,
		0.307341, 0.469736, -0.827580,
		-0.445341, 0.839558, 0.311147,
		35.837795, 30.372623, 36.656921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444668, 30.349285, 36.102982>,  <36.149532, 29.784933, 36.439117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444668, 30.349285, 36.102982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263367, 30.509953, 36.421284>,  <36.154587, 30.606352, 36.612263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263367, 30.509953, 36.421284>,  <36.444668, 30.349285, 36.102982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263367, 30.509953, 36.421284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891378, 0.206465, 0.403506,
		-0.002220, 0.892209, -0.451618,
		-0.453255, 0.401667, 0.795754,
		36.127392, 30.630453, 36.660011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630024, 31.007496, 35.989979>,  <36.444668, 30.349285, 36.102982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630024, 31.007496, 35.989979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892189, 31.150106, 35.723648>,  <37.049488, 31.235672, 35.563850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892189, 31.150106, 35.723648>,  <36.630024, 31.007496, 35.989979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892189, 31.150106, 35.723648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488568, -0.472146, -0.733743,
		-0.575965, 0.806206, -0.135265,
		0.655413, 0.356524, -0.665826,
		37.088814, 31.257063, 35.523899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321995, 31.473867, 35.413448>,  <36.630024, 31.007496, 35.989979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321995, 31.473867, 35.413448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653931, 31.318590, 35.253117>,  <36.853092, 31.225424, 35.156918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653931, 31.318590, 35.253117>,  <36.321995, 31.473867, 35.413448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653931, 31.318590, 35.253117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533363, -0.340753, -0.774217,
		0.163960, 0.856268, -0.489819,
		0.829844, -0.388192, -0.400831,
		36.902885, 31.202133, 35.132866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381752, 31.747063, 34.745377>,  <36.321995, 31.473867, 35.413448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381752, 31.747063, 34.745377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615978, 31.423788, 34.720257>,  <36.756516, 31.229822, 34.705185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615978, 31.423788, 34.720257>,  <36.381752, 31.747063, 34.745377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615978, 31.423788, 34.720257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470635, -0.275869, -0.838093,
		0.660011, 0.520317, -0.541901,
		0.585567, -0.808188, -0.062803,
		36.791649, 31.181332, 34.701416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721169, 31.780220, 34.168720>,  <36.381752, 31.747063, 34.745377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721169, 31.780220, 34.168720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750813, 31.389811, 34.250580>,  <36.768600, 31.155565, 34.299698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750813, 31.389811, 34.250580>,  <36.721169, 31.780220, 34.168720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750813, 31.389811, 34.250580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419240, -0.216695, -0.881635,
		0.904845, -0.020460, -0.425249,
		0.074111, -0.976025, 0.204653,
		36.773045, 31.097004, 34.311977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837021, 31.491997, 33.543152>,  <36.721169, 31.780220, 34.168720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837021, 31.491997, 33.543152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749039, 31.170046, 33.763618>,  <36.696247, 30.976875, 33.895901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749039, 31.170046, 33.763618>,  <36.837021, 31.491997, 33.543152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749039, 31.170046, 33.763618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566446, -0.354614, -0.743901,
		0.794202, -0.475836, -0.377919,
		-0.219959, -0.804878, 0.551170,
		36.683052, 30.928583, 33.928970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926010, 30.935678, 33.089722>,  <36.837021, 31.491997, 33.543152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926010, 30.935678, 33.089722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701176, 30.800579, 33.391708>,  <36.566273, 30.719519, 33.572903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701176, 30.800579, 33.391708>,  <36.926010, 30.935678, 33.089722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701176, 30.800579, 33.391708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548092, -0.531496, -0.645838,
		0.619397, -0.776811, 0.113629,
		-0.562087, -0.337751, 0.754972,
		36.532551, 30.699253, 33.618198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841232, 30.217777, 33.004036>,  <36.926010, 30.935678, 33.089722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841232, 30.217777, 33.004036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524010, 30.288279, 33.237274>,  <36.333675, 30.330580, 33.377216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524010, 30.288279, 33.237274>,  <36.841232, 30.217777, 33.004036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524010, 30.288279, 33.237274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538285, -0.650870, -0.535366,
		0.285160, -0.738446, 0.611049,
		-0.793053, 0.176254, 0.583097,
		36.286095, 30.341154, 33.412205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510593, 29.573362, 33.178272>,  <36.841232, 30.217777, 33.004036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510593, 29.573362, 33.178272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217766, 29.838196, 33.242413>,  <36.042068, 29.997097, 33.280895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217766, 29.838196, 33.242413>,  <36.510593, 29.573362, 33.178272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217766, 29.838196, 33.242413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652402, -0.613651, -0.444751,
		-0.196062, -0.430205, 0.881183,
		-0.732073, 0.662085, 0.160353,
		35.998142, 30.036821, 33.290520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009636, 29.152908, 33.513538>,  <36.510593, 29.573362, 33.178272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009636, 29.152908, 33.513538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855125, 29.493597, 33.371910>,  <35.762421, 29.698009, 33.286934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855125, 29.493597, 33.371910>,  <36.009636, 29.152908, 33.513538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855125, 29.493597, 33.371910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793710, -0.502485, -0.342831,
		-0.469909, 0.148597, 0.870117,
		-0.386277, 0.851720, -0.354066,
		35.739243, 29.749113, 33.265690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262775, 29.096714, 33.673061>,  <36.009636, 29.152908, 33.513538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262775, 29.096714, 33.673061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257198, 29.399748, 33.412025>,  <35.253853, 29.581568, 33.255405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257198, 29.399748, 33.412025>,  <35.262775, 29.096714, 33.673061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257198, 29.399748, 33.412025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847470, -0.355323, -0.394385,
		-0.530660, 0.547547, 0.646987,
		-0.013945, 0.757587, -0.652586,
		35.253014, 29.627024, 33.216251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631409, 29.569321, 33.776508>,  <35.262775, 29.096714, 33.673061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631409, 29.569321, 33.776508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765404, 29.603010, 33.401127>,  <34.845802, 29.623224, 33.175900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765404, 29.603010, 33.401127>,  <34.631409, 29.569321, 33.776508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765404, 29.603010, 33.401127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928145, -0.142025, -0.344057,
		-0.162261, 0.986274, 0.030595,
		0.334989, 0.084223, -0.938450,
		34.865902, 29.628277, 33.119591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167725, 29.919388, 33.394386>,  <34.631409, 29.569321, 33.776508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167725, 29.919388, 33.394386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.370453, 29.750957, 33.093498>,  <34.492088, 29.649900, 32.912968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.370453, 29.750957, 33.093498>,  <34.167725, 29.919388, 33.394386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370453, 29.750957, 33.093498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861813, -0.226940, -0.453627,
		0.020302, 0.878177, -0.477905,
		0.506821, -0.421074, -0.752217,
		34.522499, 29.624636, 32.867832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059017, 30.308399, 32.680454>,  <34.167725, 29.919388, 33.394386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059017, 30.308399, 32.680454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186207, 29.936266, 32.607384>,  <34.262520, 29.712986, 32.563541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186207, 29.936266, 32.607384>,  <34.059017, 30.308399, 32.680454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186207, 29.936266, 32.607384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854879, -0.198029, -0.479548,
		0.409965, 0.308649, -0.858292,
		0.317979, -0.930333, -0.182672,
		34.281601, 29.657166, 32.552582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869167, 30.113928, 31.980772>,  <34.059017, 30.308399, 32.680454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869167, 30.113928, 31.980772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949635, 29.744701, 32.111912>,  <33.997913, 29.523167, 32.190594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949635, 29.744701, 32.111912>,  <33.869167, 30.113928, 31.980772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949635, 29.744701, 32.111912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862945, -0.325374, -0.386598,
		0.463528, -0.205144, -0.862008,
		0.201167, -0.923064, 0.327848,
		34.009983, 29.467783, 32.210266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710598, 29.685902, 31.434839>,  <33.869167, 30.113928, 31.980772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710598, 29.685902, 31.434839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.687115, 29.473249, 31.772816>,  <33.673027, 29.345657, 31.975601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.687115, 29.473249, 31.772816>,  <33.710598, 29.685902, 31.434839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687115, 29.473249, 31.772816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944827, -0.243649, -0.218948,
		0.322268, -0.811175, -0.487995,
		-0.058706, -0.531630, 0.844940,
		33.669502, 29.313761, 32.026299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513756, 28.918123, 31.256916>,  <33.710598, 29.685902, 31.434839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513756, 28.918123, 31.256916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408375, 28.969269, 31.639381>,  <33.345146, 28.999956, 31.868860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408375, 28.969269, 31.639381>,  <33.513756, 28.918123, 31.256916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408375, 28.969269, 31.639381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943400, -0.241155, -0.227685,
		0.201471, -0.962027, 0.184158,
		-0.263449, 0.127863, 0.956162,
		33.329342, 29.007627, 31.926229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101830, 28.350174, 31.354898>,  <33.513756, 28.918123, 31.256916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101830, 28.350174, 31.354898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.002850, 28.580606, 31.666513>,  <32.943462, 28.718866, 31.853483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.002850, 28.580606, 31.666513>,  <33.101830, 28.350174, 31.354898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002850, 28.580606, 31.666513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962134, -0.240958, -0.127428,
		0.114306, -0.781070, 0.613892,
		-0.247453, 0.576081, 0.779037,
		32.928616, 28.753431, 31.900225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681759, 27.917118, 31.814190>,  <33.101830, 28.350174, 31.354898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681759, 27.917118, 31.814190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599194, 28.303814, 31.874605>,  <32.549656, 28.535831, 31.910854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599194, 28.303814, 31.874605>,  <32.681759, 27.917118, 31.814190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599194, 28.303814, 31.874605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975822, -0.192047, -0.104355,
		-0.071878, -0.168928, 0.983004,
		-0.206412, 0.966737, 0.151039,
		32.537270, 28.593836, 31.919916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.090275, 27.892595, 32.250248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099915, 28.270901, 32.120667>,  <32.105698, 28.497885, 32.042915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099915, 28.270901, 32.120667>,  <32.090275, 27.892595, 32.250248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099915, 28.270901, 32.120667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887305, -0.129051, -0.442759,
		-0.460552, 0.298119, 0.836072,
		0.024099, 0.945765, -0.323957,
		32.107143, 28.554630, 32.023479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373072, 28.120243, 32.410069>,  <32.090275, 27.892595, 32.250248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373072, 28.120243, 32.410069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521051, 28.358768, 32.125099>,  <31.609838, 28.501883, 31.954117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521051, 28.358768, 32.125099>,  <31.373072, 28.120243, 32.410069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521051, 28.358768, 32.125099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875405, -0.033064, -0.482257,
		-0.311131, 0.802072, 0.509782,
		0.369950, 0.596311, -0.712426,
		31.632036, 28.537663, 31.911371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827690, 28.637442, 32.291573>,  <31.373072, 28.120243, 32.410069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827690, 28.637442, 32.291573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046741, 28.690723, 31.961153>,  <31.178173, 28.722692, 31.762901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046741, 28.690723, 31.961153>,  <30.827690, 28.637442, 32.291573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046741, 28.690723, 31.961153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833000, -0.006205, -0.553238,
		-0.078819, 0.991069, 0.107561,
		0.547630, 0.133204, -0.826050,
		31.211031, 28.730684, 31.713339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460577, 29.166807, 31.894842>,  <30.827690, 28.637442, 32.291573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460577, 29.166807, 31.894842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683846, 28.973984, 31.624712>,  <30.817806, 28.858290, 31.462633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683846, 28.973984, 31.624712>,  <30.460577, 29.166807, 31.894842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683846, 28.973984, 31.624712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747752, 0.060496, -0.661217,
		0.359600, 0.874048, -0.326693,
		0.558172, -0.482059, -0.675325,
		30.851297, 28.829367, 31.422115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344545, 29.509453, 31.282187>,  <30.460577, 29.166807, 31.894842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344545, 29.509453, 31.282187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.477600, 29.150862, 31.165100>,  <30.557432, 28.935707, 31.094849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.477600, 29.150862, 31.165100>,  <30.344545, 29.509453, 31.282187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477600, 29.150862, 31.165100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736948, -0.053423, -0.673835,
		0.588440, 0.439858, -0.678427,
		0.332636, -0.896477, -0.292716,
		30.577391, 28.881918, 31.077286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450817, 29.524887, 30.569014>,  <30.344545, 29.509453, 31.282187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450817, 29.524887, 30.569014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417141, 29.139502, 30.670719>,  <30.396935, 28.908270, 30.731743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417141, 29.139502, 30.670719>,  <30.450817, 29.524887, 30.569014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417141, 29.139502, 30.670719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641594, -0.142822, -0.753631,
		0.762410, -0.226583, -0.606128,
		-0.084192, -0.963464, 0.254263,
		30.391884, 28.850462, 30.746998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439344, 29.138025, 29.957724>,  <30.450817, 29.524887, 30.569014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439344, 29.138025, 29.957724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263926, 28.887074, 30.215118>,  <30.158674, 28.736504, 30.369555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263926, 28.887074, 30.215118>,  <30.439344, 29.138025, 29.957724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263926, 28.887074, 30.215118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676239, -0.241234, -0.696066,
		0.591926, -0.740408, -0.318464,
		-0.438548, -0.627378, 0.643485,
		30.132360, 28.698860, 30.408163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226460, 28.594208, 29.511728>,  <30.439344, 29.138025, 29.957724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226460, 28.594208, 29.511728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.014215, 28.530735, 29.844780>,  <29.886869, 28.492651, 30.044611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.014215, 28.530735, 29.844780>,  <30.226460, 28.594208, 29.511728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014215, 28.530735, 29.844780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649112, -0.555626, -0.519552,
		0.545076, -0.816149, 0.191816,
		-0.530609, -0.158685, 0.832630,
		29.855032, 28.483130, 30.094568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152420, 27.917341, 29.663116>,  <30.226460, 28.594208, 29.511728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152420, 27.917341, 29.663116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838797, 28.068274, 29.860245>,  <29.650621, 28.158833, 29.978521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838797, 28.068274, 29.860245>,  <30.152420, 27.917341, 29.663116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838797, 28.068274, 29.860245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613877, -0.588707, -0.525908,
		0.091684, -0.714874, 0.693217,
		-0.784060, 0.377332, 0.492820,
		29.603579, 28.181473, 30.008091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746426, 27.359352, 29.875467>,  <30.152420, 27.917341, 29.663116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746426, 27.359352, 29.875467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506241, 27.679058, 29.865501>,  <29.362131, 27.870882, 29.859522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506241, 27.679058, 29.865501>,  <29.746426, 27.359352, 29.875467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506241, 27.679058, 29.865501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580136, -0.456856, -0.674333,
		-0.550356, -0.390454, 0.738007,
		-0.600458, 0.799268, -0.024917,
		29.326103, 27.918839, 29.858027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219664, 27.073044, 29.656662>,  <29.746426, 27.359352, 29.875467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219664, 27.073044, 29.656662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124228, 27.459824, 29.620699>,  <29.066965, 27.691891, 29.599121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124228, 27.459824, 29.620699>,  <29.219664, 27.073044, 29.656662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124228, 27.459824, 29.620699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674473, -0.231607, -0.701031,
		-0.698685, -0.106619, 0.707440,
		-0.238592, 0.966949, -0.089909,
		29.052650, 27.749908, 29.593727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456150, 27.150993, 29.768885>,  <29.219664, 27.073044, 29.656662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456150, 27.150993, 29.768885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587097, 27.448782, 29.536129>,  <28.665665, 27.627455, 29.396475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587097, 27.448782, 29.536129>,  <28.456150, 27.150993, 29.768885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587097, 27.448782, 29.536129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668469, -0.252768, -0.699469,
		-0.667817, 0.617958, 0.414907,
		0.327367, 0.744470, -0.581889,
		28.685307, 27.672123, 29.361563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809645, 27.382286, 29.437750>,  <28.456150, 27.150993, 29.768885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809645, 27.382286, 29.437750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.103775, 27.543558, 29.219852>,  <28.280252, 27.640322, 29.089115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.103775, 27.543558, 29.219852>,  <27.809645, 27.382286, 29.437750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103775, 27.543558, 29.219852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549129, -0.116622, -0.827561,
		-0.397185, 0.907659, 0.135642,
		0.735324, 0.403180, -0.544742,
		28.324371, 27.664513, 29.056429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441160, 27.775358, 28.962687>,  <27.809645, 27.382286, 29.437750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441160, 27.775358, 28.962687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810778, 27.750198, 28.811857>,  <28.032549, 27.735104, 28.721359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810778, 27.750198, 28.811857>,  <27.441160, 27.775358, 28.962687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810778, 27.750198, 28.811857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378443, -0.011091, -0.925558,
		0.054033, 0.997958, -0.034052,
		0.924046, -0.062897, -0.377071,
		28.087992, 27.731329, 28.698736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586660, 28.188837, 28.466082>,  <27.441160, 27.775358, 28.962687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586660, 28.188837, 28.466082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.849661, 27.904032, 28.367512>,  <28.007462, 27.733149, 28.308371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.849661, 27.904032, 28.367512>,  <27.586660, 28.188837, 28.466082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849661, 27.904032, 28.367512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422670, -0.077807, -0.902938,
		0.623731, 0.697840, -0.352106,
		0.657502, -0.712015, -0.246425,
		28.046911, 27.690428, 28.293585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795273, 28.359518, 27.763134>,  <27.586660, 28.188837, 28.466082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795273, 28.359518, 27.763134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.917803, 27.978922, 27.774632>,  <27.991322, 27.750565, 27.781530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.917803, 27.978922, 27.774632>,  <27.795273, 28.359518, 27.763134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917803, 27.978922, 27.774632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227562, -0.102516, -0.968352,
		0.924327, 0.290091, -0.247927,
		0.306326, -0.951492, 0.028745,
		28.009701, 27.693474, 27.783255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321102, 28.240173, 27.185217>,  <27.795273, 28.359518, 27.763134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321102, 28.240173, 27.185217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.206186, 27.874245, 27.298752>,  <28.137238, 27.654688, 27.366873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.206186, 27.874245, 27.298752>,  <28.321102, 28.240173, 27.185217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206186, 27.874245, 27.298752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157395, -0.247214, -0.956092,
		0.944823, -0.319350, -0.072966,
		-0.287290, -0.914823, 0.283837,
		28.119999, 27.599798, 27.383904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702021, 27.902132, 26.846434>,  <28.321102, 28.240173, 27.185217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702021, 27.902132, 26.846434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402020, 27.659124, 26.951059>,  <28.222019, 27.513321, 27.013834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402020, 27.659124, 26.951059>,  <28.702021, 27.902132, 26.846434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402020, 27.659124, 26.951059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196594, -0.172827, -0.965133,
		0.631541, -0.775276, 0.010186,
		-0.750004, -0.607518, 0.261562,
		28.177017, 27.476870, 27.029528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654425, 27.452065, 26.339563>,  <28.702021, 27.902132, 26.846434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654425, 27.452065, 26.339563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291502, 27.403713, 26.500650>,  <28.073748, 27.374702, 26.597301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291502, 27.403713, 26.500650>,  <28.654425, 27.452065, 26.339563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291502, 27.403713, 26.500650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404238, -0.012757, -0.914565,
		0.115688, -0.992586, -0.037288,
		-0.907308, -0.120877, 0.402716,
		28.019310, 27.367451, 26.621466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334723, 26.838827, 26.032860>,  <28.654425, 27.452065, 26.339563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334723, 26.838827, 26.032860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.044716, 27.072430, 26.178892>,  <27.870712, 27.212591, 26.266512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.044716, 27.072430, 26.178892>,  <28.334723, 26.838827, 26.032860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044716, 27.072430, 26.178892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499958, -0.081691, -0.862189,
		-0.473701, -0.807627, 0.351207,
		-0.725017, 0.584008, 0.365082,
		27.827211, 27.247631, 26.288418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601082, 26.577530, 25.791550>,  <28.334723, 26.838827, 26.032860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601082, 26.577530, 25.791550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.459515, 26.928679, 25.920599>,  <27.374575, 27.139368, 25.998030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.459515, 26.928679, 25.920599>,  <27.601082, 26.577530, 25.791550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459515, 26.928679, 25.920599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516101, 0.104369, -0.850145,
		-0.779989, -0.467387, 0.416132,
		-0.353916, 0.877871, 0.322625,
		27.353340, 27.192039, 26.017387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888948, 26.568094, 25.682966>,  <27.601082, 26.577530, 25.791550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888948, 26.568094, 25.682966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.976049, 26.958281, 25.695946>,  <27.028309, 27.192392, 25.703733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.976049, 26.958281, 25.695946>,  <26.888948, 26.568094, 25.682966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976049, 26.958281, 25.695946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473305, 0.134613, -0.870553,
		-0.853562, 0.174206, 0.491004,
		0.217751, 0.975465, 0.032448,
		27.041374, 27.250919, 25.705681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333782, 26.945185, 25.477474>,  <26.888948, 26.568094, 25.682966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333782, 26.945185, 25.477474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.692282, 27.110134, 25.412130>,  <26.907381, 27.209105, 25.372925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.692282, 27.110134, 25.412130>,  <26.333782, 26.945185, 25.477474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692282, 27.110134, 25.412130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305264, 0.306271, -0.901672,
		-0.321794, 0.857990, 0.400378,
		0.896249, 0.412373, -0.163357,
		26.961157, 27.233847, 25.363123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204475, 27.637625, 25.094555>,  <26.333782, 26.945185, 25.477474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204475, 27.637625, 25.094555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.572569, 27.495663, 25.028568>,  <26.793425, 27.410486, 24.988977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.572569, 27.495663, 25.028568>,  <26.204475, 27.637625, 25.094555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572569, 27.495663, 25.028568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076254, 0.250838, -0.965021,
		0.383869, 0.900624, 0.203766,
		0.920233, -0.354904, -0.164966,
		26.848639, 27.389191, 24.979078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635496, 28.032188, 25.610247>,  <26.204475, 27.637625, 25.094555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635496, 28.032188, 25.610247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.483797, 28.392651, 25.694239>,  <25.392778, 28.608929, 25.744635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.483797, 28.392651, 25.694239>,  <25.635496, 28.032188, 25.610247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483797, 28.392651, 25.694239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514238, 0.016610, 0.857486,
		0.769241, 0.433178, -0.469708,
		-0.379247, 0.901155, 0.209979,
		25.370024, 28.662996, 25.757233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250088, 28.497627, 25.824461>,  <25.635496, 28.032188, 25.610247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250088, 28.497627, 25.824461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.934662, 28.694340, 25.972147>,  <25.745407, 28.812368, 26.060759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.934662, 28.694340, 25.972147>,  <26.250088, 28.497627, 25.824461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934662, 28.694340, 25.972147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547218, 0.287226, 0.786164,
		0.280574, 0.821980, -0.495607,
		-0.788563, 0.491782, 0.369214,
		25.698093, 28.841875, 26.082911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444105, 29.102083, 26.062506>,  <26.250088, 28.497627, 25.824461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444105, 29.102083, 26.062506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.104362, 29.061918, 26.269777>,  <25.900517, 29.037819, 26.394140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.104362, 29.061918, 26.269777>,  <26.444105, 29.102083, 26.062506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104362, 29.061918, 26.269777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427863, 0.443891, 0.787333,
		-0.309075, 0.890437, -0.334059,
		-0.849356, -0.100414, 0.518180,
		25.849556, 29.031794, 26.425232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203253, 29.778372, 26.395065>,  <26.444105, 29.102083, 26.062506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203253, 29.778372, 26.395065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.038115, 29.480270, 26.604504>,  <25.939032, 29.301409, 26.730167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.038115, 29.480270, 26.604504>,  <26.203253, 29.778372, 26.395065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038115, 29.480270, 26.604504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291448, 0.436554, 0.851163,
		-0.862912, 0.504000, 0.036975,
		-0.412845, -0.745255, 0.523597,
		25.914261, 29.256693, 26.761583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740917, 30.040346, 27.026766>,  <26.203253, 29.778372, 26.395065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740917, 30.040346, 27.026766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.819496, 29.660143, 27.123049>,  <25.866644, 29.432020, 27.180819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.819496, 29.660143, 27.123049>,  <25.740917, 30.040346, 27.026766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819496, 29.660143, 27.123049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147652, 0.271368, 0.951083,
		-0.969334, -0.151296, 0.193654,
		0.196447, -0.950510, 0.240707,
		25.878429, 29.374990, 27.195261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425447, 29.990793, 27.755318>,  <25.740917, 30.040346, 27.026766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425447, 29.990793, 27.755318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.651405, 29.663742, 27.710810>,  <25.786980, 29.467512, 27.684105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.651405, 29.663742, 27.710810>,  <25.425447, 29.990793, 27.755318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651405, 29.663742, 27.710810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143855, -0.035197, 0.988972,
		-0.812527, -0.574671, 0.097737,
		0.564894, -0.817627, -0.111268,
		25.820873, 29.418453, 27.677429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254652, 29.594023, 28.317736>,  <25.425447, 29.990793, 27.755318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254652, 29.594023, 28.317736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.610794, 29.463099, 28.191158>,  <25.824480, 29.384544, 28.115211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.610794, 29.463099, 28.191158>,  <25.254652, 29.594023, 28.317736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610794, 29.463099, 28.191158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321331, -0.040601, 0.946096,
		-0.322515, -0.944044, 0.069025,
		0.890354, -0.327310, -0.316445,
		25.877901, 29.364906, 28.096226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432076, 29.028193, 28.775171>,  <25.254652, 29.594023, 28.317736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432076, 29.028193, 28.775171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.759451, 29.208971, 28.633242>,  <25.955877, 29.317438, 28.548084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.759451, 29.208971, 28.633242>,  <25.432076, 29.028193, 28.775171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759451, 29.208971, 28.633242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376340, 0.045002, 0.925388,
		0.434194, -0.890909, -0.133254,
		0.818440, 0.451947, -0.354824,
		26.004982, 29.344555, 28.526794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010309, 28.731703, 29.086887>,  <25.432076, 29.028193, 28.775171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010309, 28.731703, 29.086887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.147104, 29.085819, 28.960835>,  <26.229181, 29.298288, 28.885202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.147104, 29.085819, 28.960835>,  <26.010309, 28.731703, 29.086887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147104, 29.085819, 28.960835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565666, 0.073846, 0.821322,
		0.750378, -0.459141, -0.475523,
		0.341986, 0.885289, -0.315133,
		26.249701, 29.351406, 28.866295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578226, 28.686363, 29.325624>,  <26.010309, 28.731703, 29.086887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578226, 28.686363, 29.325624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.557646, 29.083719, 29.284588>,  <26.545298, 29.322134, 29.259966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.557646, 29.083719, 29.284588>,  <26.578226, 28.686363, 29.325624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557646, 29.083719, 29.284588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644227, 0.111510, 0.756662,
		0.763102, -0.027161, -0.645707,
		-0.051451, 0.993392, -0.102592,
		26.542210, 29.381737, 29.253811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265863, 28.897026, 29.401310>,  <26.578226, 28.686363, 29.325624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265863, 28.897026, 29.401310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.055779, 29.234371, 29.446724>,  <26.929728, 29.436779, 29.473972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.055779, 29.234371, 29.446724>,  <27.265863, 28.897026, 29.401310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055779, 29.234371, 29.446724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548021, 0.233139, 0.803318,
		0.651020, 0.484131, -0.584628,
		-0.525211, 0.843364, 0.113536,
		26.898214, 29.487381, 29.480785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757425, 29.499374, 29.224234>,  <27.265863, 28.897026, 29.401310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757425, 29.499374, 29.224234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.465277, 29.639534, 29.458763>,  <27.289988, 29.723629, 29.599482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.465277, 29.639534, 29.458763>,  <27.757425, 29.499374, 29.224234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465277, 29.639534, 29.458763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643393, 0.064695, 0.762798,
		0.229349, 0.934364, -0.272694,
		-0.730373, 0.350397, 0.586325,
		27.246164, 29.744654, 29.634661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077835, 29.966169, 29.660065>,  <27.757425, 29.499374, 29.224234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077835, 29.966169, 29.660065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.748428, 29.913208, 29.880714>,  <27.550785, 29.881432, 30.013103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.748428, 29.913208, 29.880714>,  <28.077835, 29.966169, 29.660065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748428, 29.913208, 29.880714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565230, -0.108679, 0.817743,
		-0.048322, 0.985220, 0.164338,
		-0.823517, -0.132404, 0.551625,
		27.501373, 29.873487, 30.046202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267046, 30.253265, 30.239668>,  <28.077835, 29.966169, 29.660065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267046, 30.253265, 30.239668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949774, 30.032698, 30.343048>,  <27.759411, 29.900356, 30.405077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949774, 30.032698, 30.343048>,  <28.267046, 30.253265, 30.239668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949774, 30.032698, 30.343048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378585, -0.114062, 0.918511,
		-0.477006, 0.826394, 0.299231,
		-0.793183, -0.551420, 0.258452,
		27.711819, 29.867271, 30.420584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017067, 30.422159, 30.885645>,  <28.267046, 30.253265, 30.239668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017067, 30.422159, 30.885645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.874073, 30.049288, 30.862850>,  <27.788277, 29.825565, 30.849173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.874073, 30.049288, 30.862850>,  <28.017067, 30.422159, 30.885645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874073, 30.049288, 30.862850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472320, -0.233100, 0.850046,
		-0.805678, 0.276962, 0.523617,
		-0.357486, -0.932178, -0.056989,
		27.766827, 29.769634, 30.845753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731558, 30.459076, 31.550114>,  <28.017067, 30.422159, 30.885645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731558, 30.459076, 31.550114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.772057, 30.084282, 31.416365>,  <27.796356, 29.859406, 31.336115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.772057, 30.084282, 31.416365>,  <27.731558, 30.459076, 31.550114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772057, 30.084282, 31.416365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320661, -0.287428, 0.902531,
		-0.941767, -0.198598, 0.271354,
		0.101247, -0.936987, -0.334373,
		27.802431, 29.803186, 31.316053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339903, 30.063557, 32.037430>,  <27.731558, 30.459076, 31.550114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339903, 30.063557, 32.037430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.634705, 29.871218, 31.847433>,  <27.811584, 29.755814, 31.733437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.634705, 29.871218, 31.847433>,  <27.339903, 30.063557, 32.037430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634705, 29.871218, 31.847433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414526, -0.233501, 0.879571,
		-0.533850, -0.845140, 0.027233,
		0.737002, -0.480848, -0.474988,
		27.855804, 29.726963, 31.704937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388184, 29.406832, 32.330379>,  <27.339903, 30.063557, 32.037430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388184, 29.406832, 32.330379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.744877, 29.461073, 32.157673>,  <27.958893, 29.493618, 32.054047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.744877, 29.461073, 32.157673>,  <27.388184, 29.406832, 32.330379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744877, 29.461073, 32.157673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450726, -0.351995, 0.820333,
		-0.040743, -0.926127, -0.375004,
		0.891732, 0.135601, -0.431771,
		28.012396, 29.501753, 32.028141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750917, 28.784424, 32.559383>,  <27.388184, 29.406832, 32.330379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750917, 28.784424, 32.559383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.047888, 29.026602, 32.444672>,  <28.226070, 29.171907, 32.375847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.047888, 29.026602, 32.444672>,  <27.750917, 28.784424, 32.559383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047888, 29.026602, 32.444672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576219, -0.358758, 0.734346,
		0.341722, -0.710445, -0.615219,
		0.742427, 0.605443, -0.286776,
		28.270617, 29.208235, 32.358639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426979, 28.429380, 32.620655>,  <27.750917, 28.784424, 32.559383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426979, 28.429380, 32.620655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.558975, 28.805557, 32.587963>,  <28.638172, 29.031263, 32.568348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.558975, 28.805557, 32.587963>,  <28.426979, 28.429380, 32.620655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558975, 28.805557, 32.587963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773682, -0.219832, 0.594213,
		0.540854, -0.259320, -0.800144,
		0.329988, 0.940440, -0.081734,
		28.657972, 29.087688, 32.563442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.234142, 28.999466, 31.997341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006855, 29.212385, 32.248352>,  <34.870483, 29.340136, 32.398956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006855, 29.212385, 32.248352>,  <35.234142, 28.999466, 31.997341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006855, 29.212385, 32.248352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790851, 0.563942, 0.237747,
		-0.227336, 0.631371, -0.741410,
		-0.568219, 0.532296, 0.627525,
		34.836388, 29.372074, 32.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309475, 29.819176, 31.906151>,  <35.234142, 28.999466, 31.997341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309475, 29.819176, 31.906151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179192, 29.758129, 32.279381>,  <35.101021, 29.721502, 32.503319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179192, 29.758129, 32.279381>,  <35.309475, 29.819176, 31.906151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179192, 29.758129, 32.279381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644776, 0.685943, 0.337264,
		-0.691506, 0.711471, -0.125011,
		-0.325704, -0.152616, 0.933073,
		35.081482, 29.712345, 32.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322220, 30.415586, 32.192654>,  <35.309475, 29.819176, 31.906151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322220, 30.415586, 32.192654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.299320, 30.185265, 32.518887>,  <35.285580, 30.047071, 32.714626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.299320, 30.185265, 32.518887>,  <35.322220, 30.415586, 32.192654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299320, 30.185265, 32.518887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589766, 0.639641, 0.492987,
		-0.805543, 0.509222, 0.302975,
		-0.057245, -0.575806, 0.815580,
		35.282146, 30.012524, 32.763561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272022, 30.903734, 32.722515>,  <35.322220, 30.415586, 32.192654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272022, 30.903734, 32.722515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.381676, 30.565685, 32.906090>,  <35.447468, 30.362856, 33.016235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.381676, 30.565685, 32.906090>,  <35.272022, 30.903734, 32.722515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381676, 30.565685, 32.906090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517152, 0.531885, 0.670561,
		-0.810806, 0.053517, 0.582863,
		0.274129, -0.845124, 0.458933,
		35.463913, 30.312149, 33.043770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143795, 30.947519, 33.502914>,  <35.272022, 30.903734, 32.722515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143795, 30.947519, 33.502914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.406212, 30.650007, 33.451683>,  <35.563660, 30.471500, 33.420944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.406212, 30.650007, 33.451683>,  <35.143795, 30.947519, 33.502914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406212, 30.650007, 33.451683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537953, 0.341800, 0.770571,
		-0.529357, -0.574426, 0.624352,
		0.656040, -0.743779, -0.128080,
		35.603024, 30.426874, 33.413258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211212, 30.671028, 34.072361>,  <35.143795, 30.947519, 33.502914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211212, 30.671028, 34.072361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.548874, 30.582565, 33.877018>,  <35.751472, 30.529488, 33.759811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.548874, 30.582565, 33.877018>,  <35.211212, 30.671028, 34.072361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548874, 30.582565, 33.877018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534312, 0.421428, 0.732741,
		0.043757, -0.879482, 0.473917,
		0.844154, -0.221157, -0.488358,
		35.802120, 30.516218, 33.730511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645454, 30.347181, 34.487465>,  <35.211212, 30.671028, 34.072361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645454, 30.347181, 34.487465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.930050, 30.472717, 34.235981>,  <36.100807, 30.548038, 34.085091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.930050, 30.472717, 34.235981>,  <35.645454, 30.347181, 34.487465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930050, 30.472717, 34.235981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578593, 0.246078, 0.777609,
		0.398758, -0.917033, -0.006503,
		0.711493, 0.313840, -0.628714,
		36.143497, 30.566870, 34.047367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254765, 30.006887, 34.733139>,  <35.645454, 30.347181, 34.487465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254765, 30.006887, 34.733139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371948, 30.299915, 34.487370>,  <36.442261, 30.475733, 34.339909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371948, 30.299915, 34.487370>,  <36.254765, 30.006887, 34.733139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371948, 30.299915, 34.487370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691071, 0.281857, 0.665565,
		0.660753, -0.619593, -0.423686,
		0.292961, 0.732571, -0.614421,
		36.459835, 30.519688, 34.303043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947044, 29.894693, 34.628075>,  <36.254765, 30.006887, 34.733139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947044, 29.894693, 34.628075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860600, 30.272917, 34.530743>,  <36.808731, 30.499851, 34.472343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860600, 30.272917, 34.530743>,  <36.947044, 29.894693, 34.628075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860600, 30.272917, 34.530743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617015, 0.325412, 0.716519,
		0.756696, 0.004708, -0.653750,
		-0.216111, 0.945561, -0.243333,
		36.795765, 30.556585, 34.457745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585518, 30.193668, 34.597301>,  <36.947044, 29.894693, 34.628075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585518, 30.193668, 34.597301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324127, 30.495018, 34.626671>,  <37.167294, 30.675829, 34.644291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324127, 30.495018, 34.626671>,  <37.585518, 30.193668, 34.597301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324127, 30.495018, 34.626671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534689, 0.390771, 0.749270,
		0.535792, 0.528888, -0.658182,
		-0.653479, 0.753376, 0.073419,
		37.128082, 30.721031, 34.648697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990170, 30.730202, 34.617352>,  <37.585518, 30.193668, 34.597301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990170, 30.730202, 34.617352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639641, 30.831745, 34.781113>,  <37.429321, 30.892672, 34.879368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639641, 30.831745, 34.781113>,  <37.990170, 30.730202, 34.617352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639641, 30.831745, 34.781113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481542, 0.484609, 0.730255,
		-0.013017, 0.837084, -0.546919,
		-0.876326, 0.253858, 0.409400,
		37.376743, 30.907902, 34.903931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435715, 30.948727, 35.235149>,  <37.990170, 30.730202, 34.617352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435715, 30.948727, 35.235149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209263, 31.237488, 35.394321>,  <38.073391, 31.410744, 35.489826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209263, 31.237488, 35.394321>,  <38.435715, 30.948727, 35.235149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209263, 31.237488, 35.394321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571428, -0.004232, 0.820641,
		0.594107, 0.691982, -0.410119,
		-0.566133, 0.721902, 0.397933,
		38.039421, 31.454058, 35.513702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808422, 31.554199, 35.353554>,  <38.435715, 30.948727, 35.235149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808422, 31.554199, 35.353554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.519119, 31.488905, 35.621956>,  <38.345535, 31.449728, 35.782997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.519119, 31.488905, 35.621956>,  <38.808422, 31.554199, 35.353554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519119, 31.488905, 35.621956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680349, -0.001819, 0.732886,
		-0.118414, 0.986585, 0.112374,
		-0.723259, -0.163237, 0.671007,
		38.302143, 31.439934, 35.823257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895138, 32.003216, 35.913422>,  <38.808422, 31.554199, 35.353554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895138, 32.003216, 35.913422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.710388, 31.667309, 36.027588>,  <38.599541, 31.465763, 36.096088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.710388, 31.667309, 36.027588>,  <38.895138, 32.003216, 35.913422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710388, 31.667309, 36.027588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725260, -0.172347, 0.666554,
		-0.510562, 0.514861, 0.688654,
		-0.461871, -0.839770, 0.285415,
		38.571827, 31.415379, 36.113213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894302, 32.305099, 35.289913>,  <38.895138, 32.003216, 35.913422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894302, 32.305099, 35.289913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794388, 32.690281, 35.330582>,  <38.734440, 32.921391, 35.354984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794388, 32.690281, 35.330582>,  <38.894302, 32.305099, 35.289913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794388, 32.690281, 35.330582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568253, -0.060761, -0.820608,
		-0.784026, -0.262749, 0.562376,
		-0.249784, 0.962949, 0.101670,
		38.719452, 32.979164, 35.361084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140682, 32.429207, 35.176506>,  <38.894302, 32.305099, 35.289913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140682, 32.429207, 35.176506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329403, 32.765999, 35.071838>,  <38.442635, 32.968075, 35.009037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329403, 32.765999, 35.071838>,  <38.140682, 32.429207, 35.176506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329403, 32.765999, 35.071838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689226, 0.167102, -0.705014,
		-0.549885, 0.512973, 0.659155,
		0.471799, 0.841983, -0.261667,
		38.470943, 33.018593, 34.993340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653118, 32.979797, 35.189823>,  <38.140682, 32.429207, 35.176506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653118, 32.979797, 35.189823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943035, 33.102962, 34.943291>,  <38.116985, 33.176861, 34.795372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943035, 33.102962, 34.943291>,  <37.653118, 32.979797, 35.189823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943035, 33.102962, 34.943291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679884, 0.174916, -0.712153,
		-0.111476, 0.935197, 0.336124,
		0.724797, 0.307913, -0.616327,
		38.160473, 33.195335, 34.758392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278515, 33.570309, 34.828400>,  <37.653118, 32.979797, 35.189823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278515, 33.570309, 34.828400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595978, 33.471516, 34.606010>,  <37.786457, 33.412239, 34.472576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595978, 33.471516, 34.606010>,  <37.278515, 33.570309, 34.828400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595978, 33.471516, 34.606010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535790, 0.149095, -0.831083,
		0.288154, 0.957482, -0.013998,
		0.793660, -0.246980, -0.555972,
		37.834076, 33.397423, 34.439220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230507, 33.926525, 34.281643>,  <37.278515, 33.570309, 34.828400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230507, 33.926525, 34.281643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484074, 33.644524, 34.154442>,  <37.636211, 33.475323, 34.078121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484074, 33.644524, 34.154442>,  <37.230507, 33.926525, 34.281643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484074, 33.644524, 34.154442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437401, 0.012297, -0.899182,
		0.637834, 0.709101, -0.300572,
		0.633915, -0.705000, -0.318005,
		37.674248, 33.433025, 34.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360760, 34.112938, 33.635120>,  <37.230507, 33.926525, 34.281643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360760, 34.112938, 33.635120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.487389, 33.733574, 33.642147>,  <37.563366, 33.505955, 33.646362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.487389, 33.733574, 33.642147>,  <37.360760, 34.112938, 33.635120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487389, 33.733574, 33.642147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393346, -0.148098, -0.907384,
		0.863171, 0.280340, -0.419935,
		0.316568, -0.948407, 0.017563,
		37.582359, 33.449051, 33.647415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531483, 33.983963, 32.936176>,  <37.360760, 34.112938, 33.635120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531483, 33.983963, 32.936176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436920, 33.637562, 33.112423>,  <37.380184, 33.429722, 33.218170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436920, 33.637562, 33.112423>,  <37.531483, 33.983963, 32.936176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436920, 33.637562, 33.112423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534795, -0.262634, -0.803129,
		0.811237, -0.425505, -0.401049,
		-0.236406, -0.866007, 0.440617,
		37.365997, 33.377758, 33.244610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637184, 33.473469, 32.438904>,  <37.531483, 33.983963, 32.936176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637184, 33.473469, 32.438904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406094, 33.317493, 32.725731>,  <37.267441, 33.223907, 32.897827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.406094, 33.317493, 32.725731>,  <37.637184, 33.473469, 32.438904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406094, 33.317493, 32.725731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627430, -0.349759, -0.695701,
		0.522079, -0.851833, -0.042593,
		-0.577724, -0.389935, 0.717067,
		37.232777, 33.200512, 32.940849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427902, 32.873581, 32.175373>,  <37.637184, 33.473469, 32.438904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427902, 32.873581, 32.175373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176414, 32.898964, 32.485390>,  <37.025520, 32.914192, 32.671398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176414, 32.898964, 32.485390>,  <37.427902, 32.873581, 32.175373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176414, 32.898964, 32.485390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702335, -0.474184, -0.530919,
		0.333821, -0.878136, 0.342696,
		-0.628720, 0.063456, 0.775038,
		36.987797, 32.917999, 32.717899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190941, 32.247395, 32.175182>,  <37.427902, 32.873581, 32.175373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190941, 32.247395, 32.175182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.925560, 32.472786, 32.372089>,  <36.766331, 32.608021, 32.490234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.925560, 32.472786, 32.372089>,  <37.190941, 32.247395, 32.175182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925560, 32.472786, 32.372089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737225, -0.379905, -0.558723,
		-0.127815, -0.733596, 0.667458,
		-0.663448, 0.563480, 0.492267,
		36.726524, 32.641830, 32.519768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626415, 31.745537, 32.449696>,  <37.190941, 32.247395, 32.175182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626415, 31.745537, 32.449696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.478916, 32.117210, 32.459843>,  <36.390415, 32.340214, 32.465931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.478916, 32.117210, 32.459843>,  <36.626415, 31.745537, 32.449696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478916, 32.117210, 32.459843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890635, -0.345379, -0.295775,
		-0.266069, -0.131655, 0.954921,
		-0.368750, 0.929182, 0.025362,
		36.368290, 32.395966, 32.467453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987064, 31.755362, 32.781612>,  <36.626415, 31.745537, 32.449696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987064, 31.755362, 32.781612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.009468, 32.058041, 32.521069>,  <36.022911, 32.239647, 32.364742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.009468, 32.058041, 32.521069>,  <35.987064, 31.755362, 32.781612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009468, 32.058041, 32.521069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867856, -0.285657, -0.406480,
		-0.493649, 0.588056, 0.640704,
		0.056012, 0.756697, -0.651362,
		36.026272, 32.285049, 32.325661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305393, 32.157925, 32.782482>,  <35.987064, 31.755362, 32.781612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305393, 32.157925, 32.782482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.454781, 32.253841, 32.424038>,  <35.544415, 32.311390, 32.208969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.454781, 32.253841, 32.424038>,  <35.305393, 32.157925, 32.782482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454781, 32.253841, 32.424038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883827, -0.201399, -0.422242,
		-0.281725, 0.949705, 0.136714,
		0.373472, 0.239788, -0.896114,
		35.566822, 32.325779, 32.155205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698589, 32.491974, 32.460827>,  <35.305393, 32.157925, 32.782482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698589, 32.491974, 32.460827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.976681, 32.465664, 32.174519>,  <35.143536, 32.449879, 32.002731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.976681, 32.465664, 32.174519>,  <34.698589, 32.491974, 32.460827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976681, 32.465664, 32.174519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718644, -0.083730, -0.690318,
		-0.014525, 0.994315, -0.105481,
		0.695226, -0.065776, -0.715775,
		35.185249, 32.445930, 31.959785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667900, 33.238438, 32.632782>,  <34.698589, 32.491974, 32.460827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667900, 33.238438, 32.632782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.527889, 33.613094, 32.627289>,  <34.443882, 33.837887, 32.623993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.527889, 33.613094, 32.627289>,  <34.667900, 33.238438, 32.632782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527889, 33.613094, 32.627289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514300, 0.204404, 0.832895,
		0.782929, 0.284474, -0.553260,
		-0.350026, 0.936640, -0.013729,
		34.422882, 33.894085, 32.623169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193108, 33.680355, 32.868172>,  <34.667900, 33.238438, 32.632782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193108, 33.680355, 32.868172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867287, 33.890659, 32.966209>,  <34.671795, 34.016842, 33.025032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867287, 33.890659, 32.966209>,  <35.193108, 33.680355, 32.868172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867287, 33.890659, 32.966209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293718, 0.009464, 0.955845,
		0.500230, 0.850578, -0.162136,
		-0.814555, 0.525764, 0.245096,
		34.622921, 34.048389, 33.039738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450684, 34.058689, 33.443642>,  <35.193108, 33.680355, 32.868172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450684, 34.058689, 33.443642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052822, 34.090782, 33.469635>,  <34.814106, 34.110039, 33.485229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052822, 34.090782, 33.469635>,  <35.450684, 34.058689, 33.443642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052822, 34.090782, 33.469635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061660, -0.043228, 0.997161,
		0.082810, 0.995839, 0.038050,
		-0.994656, 0.080229, 0.064983,
		34.754425, 34.114849, 33.489128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406719, 34.581207, 33.907520>,  <35.450684, 34.058689, 33.443642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406719, 34.581207, 33.907520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.058483, 34.385296, 33.926235>,  <34.849541, 34.267750, 33.937466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.058483, 34.385296, 33.926235>,  <35.406719, 34.581207, 33.907520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058483, 34.385296, 33.926235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019443, 0.060775, 0.997962,
		-0.491621, 0.869728, -0.043387,
		-0.870592, -0.489775, 0.046788,
		34.797306, 34.238365, 33.940273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169418, 34.886654, 34.475548>,  <35.406719, 34.581207, 33.907520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169418, 34.886654, 34.475548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.960384, 34.552029, 34.409733>,  <34.834965, 34.351254, 34.370243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.960384, 34.552029, 34.409733>,  <35.169418, 34.886654, 34.475548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960384, 34.552029, 34.409733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053078, -0.160684, 0.985578,
		-0.850932, 0.523783, 0.039568,
		-0.522587, -0.836560, -0.164533,
		34.803608, 34.301060, 34.360374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558666, 34.887760, 34.854996>,  <35.169418, 34.886654, 34.475548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558666, 34.887760, 34.854996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659718, 34.506794, 34.786777>,  <34.720348, 34.278214, 34.745846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659718, 34.506794, 34.786777>,  <34.558666, 34.887760, 34.854996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659718, 34.506794, 34.786777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046657, -0.188049, 0.981051,
		-0.966437, -0.239888, -0.091944,
		0.252632, -0.952413, -0.170546,
		34.735508, 34.221069, 34.735615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081116, 34.556149, 35.285816>,  <34.558666, 34.887760, 34.854996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081116, 34.556149, 35.285816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.364212, 34.283928, 35.209972>,  <34.534069, 34.120598, 35.164467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.364212, 34.283928, 35.209972>,  <34.081116, 34.556149, 35.285816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364212, 34.283928, 35.209972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039410, -0.306003, 0.951214,
		-0.705369, -0.665743, -0.243392,
		0.707744, -0.680550, -0.189609,
		34.576534, 34.079762, 35.153091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789207, 33.946613, 35.529789>,  <34.081116, 34.556149, 35.285816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789207, 33.946613, 35.529789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.183540, 33.884697, 35.503937>,  <34.420139, 33.847546, 35.488426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.183540, 33.884697, 35.503937>,  <33.789207, 33.946613, 35.529789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183540, 33.884697, 35.503937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016486, -0.472812, 0.881009,
		-0.166931, -0.867460, -0.468664,
		0.985830, -0.154794, -0.064626,
		34.479290, 33.838257, 35.484550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919312, 33.288799, 35.654175>,  <33.789207, 33.946613, 35.529789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919312, 33.288799, 35.654175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.264393, 33.468048, 35.747917>,  <34.471443, 33.575596, 35.804161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.264393, 33.468048, 35.747917>,  <33.919312, 33.288799, 35.654175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264393, 33.468048, 35.747917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039407, -0.402444, 0.914596,
		0.504166, -0.798264, -0.329532,
		0.862707, 0.448123, 0.234356,
		34.523205, 33.602486, 35.818222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319618, 32.784676, 35.927128>,  <33.919312, 33.288799, 35.654175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319618, 32.784676, 35.927128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.488441, 33.123131, 36.057304>,  <34.589733, 33.326206, 36.135410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.488441, 33.123131, 36.057304>,  <34.319618, 32.784676, 35.927128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488441, 33.123131, 36.057304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080019, -0.392350, 0.916329,
		0.903032, -0.360700, -0.233301,
		0.422055, 0.846142, 0.325442,
		34.615059, 33.376972, 36.154938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944378, 32.668957, 36.377388>,  <34.319618, 32.784676, 35.927128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944378, 32.668957, 36.377388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.814079, 33.031876, 36.483742>,  <34.735901, 33.249626, 36.547554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.814079, 33.031876, 36.483742>,  <34.944378, 32.668957, 36.377388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814079, 33.031876, 36.483742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082254, -0.252965, 0.963973,
		0.941873, 0.335879, 0.007773,
		-0.325744, 0.907301, 0.265888,
		34.716354, 33.304066, 36.563507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379185, 32.792023, 36.956898>,  <34.944378, 32.668957, 36.377388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379185, 32.792023, 36.956898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062305, 33.034157, 36.987885>,  <34.872177, 33.179436, 37.006477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062305, 33.034157, 36.987885>,  <35.379185, 32.792023, 36.956898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062305, 33.034157, 36.987885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011154, -0.141279, 0.989907,
		0.610167, 0.783335, 0.118672,
		-0.792194, 0.605332, 0.077466,
		34.824646, 33.215755, 37.011124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.325314, 34.037601, 28.803907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030491, 34.170483, 29.039326>,  <32.853596, 34.250210, 29.180576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030491, 34.170483, 29.039326>,  <33.325314, 34.037601, 28.803907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030491, 34.170483, 29.039326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611475, -0.043080, 0.790090,
		0.287826, 0.942223, -0.171382,
		-0.737058, 0.332204, 0.588545,
		32.809372, 34.270145, 29.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605709, 34.646286, 29.207401>,  <33.325314, 34.037601, 28.803907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605709, 34.646286, 29.207401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310848, 34.467701, 29.410294>,  <33.133934, 34.360550, 29.532030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310848, 34.467701, 29.410294>,  <33.605709, 34.646286, 29.207401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310848, 34.467701, 29.410294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511225, 0.122401, 0.850686,
		-0.441884, 0.886392, 0.138014,
		-0.737148, -0.446461, 0.507233,
		33.089703, 34.333763, 29.562464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466473, 35.102367, 29.732071>,  <33.605709, 34.646286, 29.207401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466473, 35.102367, 29.732071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310925, 34.754566, 29.853889>,  <33.217594, 34.545887, 29.926981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310925, 34.754566, 29.853889>,  <33.466473, 35.102367, 29.732071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310925, 34.754566, 29.853889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491120, 0.084032, 0.867029,
		-0.779473, 0.486733, 0.394351,
		-0.388873, -0.869500, 0.304545,
		33.194263, 34.493717, 29.945253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194462, 35.135765, 30.425755>,  <33.466473, 35.102367, 29.732071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194462, 35.135765, 30.425755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230110, 34.737900, 30.404974>,  <33.251499, 34.499180, 30.392506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230110, 34.737900, 30.404974>,  <33.194462, 35.135765, 30.425755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230110, 34.737900, 30.404974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283831, -0.024633, 0.958558,
		-0.954724, -0.100172, 0.280122,
		0.089120, -0.994665, -0.051950,
		33.256847, 34.439499, 30.389389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853313, 34.800167, 31.007936>,  <33.194462, 35.135765, 30.425755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853313, 34.800167, 31.007936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123505, 34.525276, 30.901011>,  <33.285618, 34.360344, 30.836855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123505, 34.525276, 30.901011>,  <32.853313, 34.800167, 31.007936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123505, 34.525276, 30.901011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337981, -0.033651, 0.940551,
		-0.655364, -0.725666, 0.209538,
		0.675475, -0.687224, -0.267315,
		33.326149, 34.319111, 30.820816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843033, 34.446674, 31.587938>,  <32.853313, 34.800167, 31.007936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843033, 34.446674, 31.587938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166862, 34.314484, 31.393873>,  <33.361160, 34.235168, 31.277433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166862, 34.314484, 31.393873>,  <32.843033, 34.446674, 31.587938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166862, 34.314484, 31.393873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481963, -0.097632, 0.870735,
		-0.335124, -0.938751, 0.080236,
		0.809570, -0.330475, -0.485162,
		33.409733, 34.215340, 31.248325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060268, 33.889751, 32.026787>,  <32.843033, 34.446674, 31.587938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060268, 33.889751, 32.026787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377487, 33.964741, 31.794950>,  <33.567818, 34.009735, 31.655848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377487, 33.964741, 31.794950>,  <33.060268, 33.889751, 32.026787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377487, 33.964741, 31.794950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608032, -0.185697, 0.771889,
		0.037084, -0.964556, -0.261259,
		0.793046, 0.187479, -0.579595,
		33.615402, 34.020985, 31.621073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520679, 33.286934, 32.027874>,  <33.060268, 33.889751, 32.026787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520679, 33.286934, 32.027874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732117, 33.617691, 31.951101>,  <33.858978, 33.816147, 31.905039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732117, 33.617691, 31.951101>,  <33.520679, 33.286934, 32.027874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732117, 33.617691, 31.951101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455169, -0.085246, 0.886315,
		0.716528, -0.555859, -0.421436,
		0.528592, 0.826894, -0.191929,
		33.890694, 33.865761, 31.893522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008278, 33.118156, 32.398605>,  <33.520679, 33.286934, 32.027874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008278, 33.118156, 32.398605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084118, 33.502705, 32.318779>,  <34.129623, 33.733433, 32.270885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084118, 33.502705, 32.318779>,  <34.008278, 33.118156, 32.398605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084118, 33.502705, 32.318779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497327, 0.081218, 0.863753,
		0.846591, -0.263018, -0.462714,
		0.189602, 0.961366, -0.199564,
		34.140999, 33.791115, 32.258911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491364, 33.017292, 31.867844>,  <34.008278, 33.118156, 32.398605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491364, 33.017292, 31.867844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745434, 32.740143, 31.731323>,  <34.897877, 32.573853, 31.649410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745434, 32.740143, 31.731323>,  <34.491364, 33.017292, 31.867844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745434, 32.740143, 31.731323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679317, -0.290874, -0.673736,
		0.367535, 0.659792, -0.655433,
		0.635175, -0.692868, -0.341301,
		34.935986, 32.532284, 31.628933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401798, 33.072029, 31.156408>,  <34.491364, 33.017292, 31.867844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401798, 33.072029, 31.156408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585258, 32.720375, 31.208204>,  <34.695335, 32.509384, 31.239281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585258, 32.720375, 31.208204>,  <34.401798, 33.072029, 31.156408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585258, 32.720375, 31.208204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624058, -0.422396, -0.657368,
		0.632610, 0.220691, -0.742361,
		0.458646, -0.879134, 0.129488,
		34.722851, 32.456635, 31.247051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684334, 32.845684, 30.535648>,  <34.401798, 33.072029, 31.156408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684334, 32.845684, 30.535648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619343, 32.530579, 30.773314>,  <34.580349, 32.341515, 30.915913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619343, 32.530579, 30.773314>,  <34.684334, 32.845684, 30.535648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619343, 32.530579, 30.773314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552804, -0.426116, -0.716123,
		0.817319, -0.444808, -0.366246,
		-0.162474, -0.787763, 0.594165,
		34.570599, 32.294250, 30.951563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927017, 32.334595, 30.103428>,  <34.684334, 32.845684, 30.535648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927017, 32.334595, 30.103428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686630, 32.160480, 30.371567>,  <34.542400, 32.056011, 30.532450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686630, 32.160480, 30.371567>,  <34.927017, 32.334595, 30.103428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686630, 32.160480, 30.371567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535992, -0.402687, -0.741995,
		0.592919, -0.805215, 0.008692,
		-0.600966, -0.435284, 0.670349,
		34.506340, 32.029896, 30.572672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720181, 31.680738, 29.787121>,  <34.927017, 32.334595, 30.103428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720181, 31.680738, 29.787121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441257, 31.706785, 30.072645>,  <34.273903, 31.722414, 30.243959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441257, 31.706785, 30.072645>,  <34.720181, 31.680738, 29.787121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441257, 31.706785, 30.072645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678397, -0.381449, -0.627912,
		0.231393, -0.922093, 0.310163,
		-0.697305, 0.065119, 0.713810,
		34.232067, 31.726320, 30.286789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414097, 31.017765, 29.897123>,  <34.720181, 31.680738, 29.787121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414097, 31.017765, 29.897123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131279, 31.253458, 30.053530>,  <33.961590, 31.394875, 30.147373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131279, 31.253458, 30.053530>,  <34.414097, 31.017765, 29.897123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131279, 31.253458, 30.053530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680783, -0.417512, -0.601846,
		-0.191374, -0.691727, 0.696340,
		-0.707043, 0.589234, 0.391015,
		33.919167, 31.430229, 30.170834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767437, 30.590952, 30.103695>,  <34.414097, 31.017765, 29.897123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767437, 30.590952, 30.103695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647480, 30.966400, 30.035505>,  <33.575508, 31.191669, 29.994591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647480, 30.966400, 30.035505>,  <33.767437, 30.590952, 30.103695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647480, 30.966400, 30.035505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702478, -0.338178, -0.626227,
		-0.645440, -0.068044, 0.760774,
		-0.299888, 0.938619, -0.170474,
		33.557514, 31.247986, 29.984364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107147, 30.556377, 30.037539>,  <33.767437, 30.590952, 30.103695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107147, 30.556377, 30.037539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155018, 30.923344, 29.885736>,  <33.183739, 31.143524, 29.794655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155018, 30.923344, 29.885736>,  <33.107147, 30.556377, 30.037539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155018, 30.923344, 29.885736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693803, -0.196143, -0.692939,
		-0.710151, 0.346230, 0.613033,
		0.119674, 0.917416, -0.379507,
		33.190922, 31.198568, 29.771885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411503, 30.842213, 29.935978>,  <33.107147, 30.556377, 30.037539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411503, 30.842213, 29.935978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660648, 31.059628, 29.710907>,  <32.810135, 31.190077, 29.575865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660648, 31.059628, 29.710907>,  <32.411503, 30.842213, 29.935978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660648, 31.059628, 29.710907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602151, -0.126090, -0.788363,
		-0.499451, 0.829862, 0.248754,
		0.622867, 0.543536, -0.562678,
		32.847507, 31.222689, 29.542103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993975, 31.104433, 29.592136>,  <32.411503, 30.842213, 29.935978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993975, 31.104433, 29.592136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331730, 31.122042, 29.378569>,  <32.534382, 31.132607, 29.250427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331730, 31.122042, 29.378569>,  <31.993975, 31.104433, 29.592136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331730, 31.122042, 29.378569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531550, -0.055448, -0.845210,
		-0.066812, 0.997491, -0.023420,
		0.844388, 0.044022, -0.533921,
		32.585045, 31.135248, 29.218391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805902, 31.503674, 29.096230>,  <31.993975, 31.104433, 29.592136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805902, 31.503674, 29.096230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150204, 31.356651, 28.955372>,  <32.356785, 31.268438, 28.870857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150204, 31.356651, 28.955372>,  <31.805902, 31.503674, 29.096230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150204, 31.356651, 28.955372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420002, -0.121990, -0.899287,
		0.287578, 0.921967, -0.259377,
		0.860754, -0.367554, -0.352147,
		32.408428, 31.246386, 28.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923923, 31.754526, 28.490421>,  <31.805902, 31.503674, 29.096230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923923, 31.754526, 28.490421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175701, 31.444433, 28.469213>,  <32.326767, 31.258377, 28.456488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175701, 31.444433, 28.469213>,  <31.923923, 31.754526, 28.490421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175701, 31.444433, 28.469213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421922, -0.283682, -0.861108,
		0.652518, 0.564392, -0.505650,
		0.629446, -0.775233, -0.053022,
		32.364536, 31.211863, 28.453306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211090, 31.770973, 27.877617>,  <31.923923, 31.754526, 28.490421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211090, 31.770973, 27.877617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258415, 31.385300, 27.972576>,  <32.286808, 31.153896, 28.029551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258415, 31.385300, 27.972576>,  <32.211090, 31.770973, 27.877617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258415, 31.385300, 27.972576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530901, -0.263456, -0.805441,
		0.839135, -0.030744, -0.543054,
		0.118308, -0.964181, 0.237397,
		32.293907, 31.096045, 28.043795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493290, 31.488558, 27.231083>,  <32.211090, 31.770973, 27.877617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493290, 31.488558, 27.231083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281296, 31.216221, 27.433298>,  <32.154099, 31.052818, 27.554628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281296, 31.216221, 27.433298>,  <32.493290, 31.488558, 27.231083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281296, 31.216221, 27.433298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461408, -0.268654, -0.845534,
		0.711490, -0.681381, -0.171763,
		-0.529986, -0.680842, 0.505539,
		32.122299, 31.011969, 27.584959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.672337, 31.799688, 31.975214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.819931, 31.923857, 31.624788>,  <27.908487, 31.998358, 31.414534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.819931, 31.923857, 31.624788>,  <27.672337, 31.799688, 31.975214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819931, 31.923857, 31.624788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916720, 0.033823, 0.398096,
		0.153208, -0.949997, -0.272090,
		0.368988, 0.310422, -0.876063,
		27.930628, 32.016983, 31.361969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017899, 31.325769, 31.773773>,  <27.672337, 31.799688, 31.975214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017899, 31.325769, 31.773773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.174248, 31.636806, 31.576767>,  <28.268057, 31.823429, 31.458563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.174248, 31.636806, 31.576767>,  <28.017899, 31.325769, 31.773773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174248, 31.636806, 31.576767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847117, -0.094617, 0.522916,
		0.360015, -0.621611, -0.695693,
		0.390874, 0.777591, -0.492514,
		28.291510, 31.870083, 31.429012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651625, 31.124308, 31.628815>,  <28.017899, 31.325769, 31.773773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651625, 31.124308, 31.628815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.675917, 31.523169, 31.610926>,  <28.690491, 31.762486, 31.600193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.675917, 31.523169, 31.610926>,  <28.651625, 31.124308, 31.628815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675917, 31.523169, 31.610926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757744, -0.016891, 0.652333,
		0.649720, -0.073502, -0.756611,
		0.060728, 0.997152, -0.044721,
		28.694136, 31.822313, 31.597509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357834, 31.165503, 31.720520>,  <28.651625, 31.124308, 31.628815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357834, 31.165503, 31.720520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.199783, 31.528393, 31.778227>,  <29.104954, 31.746128, 31.812851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.199783, 31.528393, 31.778227>,  <29.357834, 31.165503, 31.720520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199783, 31.528393, 31.778227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781452, 0.249393, 0.571958,
		0.482916, 0.338734, -0.807497,
		-0.395126, 0.907228, 0.144268,
		29.081245, 31.800562, 31.821507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827457, 31.670835, 31.486900>,  <29.357834, 31.165503, 31.720520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827457, 31.670835, 31.486900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614407, 31.870853, 31.760035>,  <29.486576, 31.990864, 31.923914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614407, 31.870853, 31.760035>,  <29.827457, 31.670835, 31.486900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614407, 31.870853, 31.760035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821542, 0.111559, 0.559127,
		0.203412, 0.858784, -0.470227,
		-0.532628, 0.500045, 0.682834,
		29.454618, 32.020866, 31.964886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327009, 32.147530, 31.681166>,  <29.827457, 31.670835, 31.486900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327009, 32.147530, 31.681166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.055571, 32.110226, 31.972591>,  <29.892708, 32.087845, 32.147446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.055571, 32.110226, 31.972591>,  <30.327009, 32.147530, 31.681166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055571, 32.110226, 31.972591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695340, 0.238027, 0.678119,
		-0.236658, 0.966771, -0.096679,
		-0.678598, -0.093257, 0.728566,
		29.851992, 32.082249, 32.191162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495062, 32.579250, 32.128933>,  <30.327009, 32.147530, 31.681166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495062, 32.579250, 32.128933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237370, 32.403652, 32.379452>,  <30.082754, 32.298294, 32.529762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237370, 32.403652, 32.379452>,  <30.495062, 32.579250, 32.128933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237370, 32.403652, 32.379452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574183, 0.263344, 0.775218,
		-0.505251, 0.859028, 0.082411,
		-0.644232, -0.438999, 0.626294,
		30.044100, 32.271954, 32.567341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301775, 33.065525, 32.651943>,  <30.495062, 32.579250, 32.128933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301775, 33.065525, 32.651943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.259977, 32.688938, 32.780148>,  <30.234898, 32.462986, 32.857071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.259977, 32.688938, 32.780148>,  <30.301775, 33.065525, 32.651943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259977, 32.688938, 32.780148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650118, 0.179219, 0.738395,
		-0.752614, 0.285529, 0.593335,
		-0.104496, -0.941463, 0.320510,
		30.228628, 32.406498, 32.876301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476419, 33.082729, 33.336643>,  <30.301775, 33.065525, 32.651943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476419, 33.082729, 33.336643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.458473, 32.685280, 33.295258>,  <30.447706, 32.446812, 33.270428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.458473, 32.685280, 33.295258>,  <30.476419, 33.082729, 33.336643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458473, 32.685280, 33.295258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602061, -0.109538, 0.790900,
		-0.797188, -0.026808, 0.603135,
		-0.044864, -0.993621, -0.103463,
		30.445015, 32.387192, 33.264217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309889, 32.758484, 33.963345>,  <30.476419, 33.082729, 33.336643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309889, 32.758484, 33.963345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.494875, 32.460613, 33.770851>,  <30.605867, 32.281891, 33.655354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.494875, 32.460613, 33.770851>,  <30.309889, 32.758484, 33.963345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494875, 32.460613, 33.770851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561310, -0.174251, 0.809053,
		-0.686336, -0.644282, 0.337407,
		0.462465, -0.744673, -0.481237,
		30.633614, 32.237213, 33.626480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362862, 32.190178, 34.481918>,  <30.309889, 32.758484, 33.963345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362862, 32.190178, 34.481918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.629005, 32.126186, 34.190247>,  <30.788692, 32.087791, 34.015244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.629005, 32.126186, 34.190247>,  <30.362862, 32.190178, 34.481918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629005, 32.126186, 34.190247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717854, -0.130971, 0.683763,
		-0.204891, -0.978393, 0.027701,
		0.665361, -0.159982, -0.729178,
		30.828613, 32.078194, 33.971493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605848, 31.553461, 34.501629>,  <30.362862, 32.190178, 34.481918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605848, 31.553461, 34.501629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.881334, 31.766247, 34.304577>,  <31.046625, 31.893919, 34.186344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.881334, 31.766247, 34.304577>,  <30.605848, 31.553461, 34.501629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881334, 31.766247, 34.304577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717008, -0.398920, 0.571631,
		0.107568, -0.746910, -0.656166,
		0.688715, 0.531966, -0.492629,
		31.087950, 31.925837, 34.156788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146164, 31.049374, 34.511124>,  <30.605848, 31.553461, 34.501629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146164, 31.049374, 34.511124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.293718, 31.412148, 34.429745>,  <31.382252, 31.629812, 34.380917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.293718, 31.412148, 34.429745>,  <31.146164, 31.049374, 34.511124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293718, 31.412148, 34.429745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788159, -0.189196, 0.585671,
		0.492674, -0.376396, -0.784601,
		0.368888, 0.906935, -0.203448,
		31.404385, 31.684229, 34.368710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814188, 31.031000, 34.724297>,  <31.146164, 31.049374, 34.511124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814188, 31.031000, 34.724297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.820065, 31.429701, 34.692631>,  <31.823591, 31.668922, 34.673634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.820065, 31.429701, 34.692631>,  <31.814188, 31.031000, 34.724297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820065, 31.429701, 34.692631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756201, 0.040721, 0.653071,
		0.654174, -0.069456, -0.753148,
		0.014691, 0.996754, -0.079161,
		31.824472, 31.728727, 34.668884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903339, 30.379120, 34.425671>,  <31.814188, 31.031000, 34.724297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903339, 30.379120, 34.425671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.949955, 30.015984, 34.586788>,  <31.977924, 29.798101, 34.683456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.949955, 30.015984, 34.586788>,  <31.903339, 30.379120, 34.425671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949955, 30.015984, 34.586788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822449, -0.315564, -0.473283,
		0.556773, -0.276118, -0.783430,
		0.116541, -0.907843, 0.402791,
		31.984917, 29.743631, 34.707626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814938, 29.898663, 33.872326>,  <31.903339, 30.379120, 34.425671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814938, 29.898663, 33.872326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722456, 29.689564, 34.200542>,  <31.666967, 29.564104, 34.397472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722456, 29.689564, 34.200542>,  <31.814938, 29.898663, 33.872326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722456, 29.689564, 34.200542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860231, -0.284135, -0.423403,
		0.454476, -0.803743, -0.383991,
		-0.231202, -0.522747, 0.820537,
		31.653095, 29.532740, 34.446705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582571, 29.202131, 33.618607>,  <31.814938, 29.898663, 33.872326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582571, 29.202131, 33.618607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.438768, 29.271832, 33.985298>,  <31.352486, 29.313652, 34.205315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.438768, 29.271832, 33.985298>,  <31.582571, 29.202131, 33.618607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438768, 29.271832, 33.985298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932231, -0.110470, -0.344590,
		0.041226, -0.978485, 0.202156,
		-0.359509, 0.174250, 0.916728,
		31.330915, 29.324106, 34.260315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283197, 28.578508, 33.842846>,  <31.582571, 29.202131, 33.618607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283197, 28.578508, 33.842846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.091635, 28.852854, 34.062023>,  <30.976696, 29.017460, 34.193531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.091635, 28.852854, 34.062023>,  <31.283197, 28.578508, 33.842846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091635, 28.852854, 34.062023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865214, -0.263186, -0.426775,
		-0.148498, -0.678473, 0.719460,
		-0.478908, 0.685862, 0.547942,
		30.947962, 29.058613, 34.226406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629318, 28.238083, 34.046383>,  <31.283197, 28.578508, 33.842846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629318, 28.238083, 34.046383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.571449, 28.629631, 34.104183>,  <30.536728, 28.864561, 34.138863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.571449, 28.629631, 34.104183>,  <30.629318, 28.238083, 34.046383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571449, 28.629631, 34.104183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975278, -0.116415, -0.187831,
		-0.167040, -0.168100, 0.971514,
		-0.144674, 0.978872, 0.144499,
		30.528048, 28.923292, 34.147533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923180, 28.272015, 34.258335>,  <30.629318, 28.238083, 34.046383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923180, 28.272015, 34.258335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.011297, 28.650665, 34.164211>,  <30.064167, 28.877855, 34.107738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.011297, 28.650665, 34.164211>,  <29.923180, 28.272015, 34.258335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011297, 28.650665, 34.164211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946194, 0.148758, -0.287381,
		-0.237038, 0.285955, 0.928463,
		0.220294, 0.946626, -0.235307,
		30.077385, 28.934652, 34.093620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332403, 28.641394, 34.332962>,  <29.923180, 28.272015, 34.258335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332403, 28.641394, 34.332962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.524847, 28.907745, 34.104877>,  <29.640312, 29.067556, 33.968025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.524847, 28.907745, 34.104877>,  <29.332403, 28.641394, 34.332962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524847, 28.907745, 34.104877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833394, 0.145578, -0.533162,
		-0.272010, 0.731720, 0.624977,
		0.481109, 0.665877, -0.570213,
		29.669180, 29.107508, 33.933815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821718, 29.192787, 34.136044>,  <29.332403, 28.641394, 34.332962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821718, 29.192787, 34.136044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.108637, 29.219961, 33.858665>,  <29.280788, 29.236265, 33.692238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.108637, 29.219961, 33.858665>,  <28.821718, 29.192787, 34.136044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108637, 29.219961, 33.858665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695919, 0.118979, -0.708196,
		0.034394, 0.990570, 0.132621,
		0.717297, 0.067936, -0.693448,
		29.323826, 29.240341, 33.650631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634184, 29.781574, 33.761013>,  <28.821718, 29.192787, 34.136044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634184, 29.781574, 33.761013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.887993, 29.586866, 33.520866>,  <29.040277, 29.470041, 33.376778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.887993, 29.586866, 33.520866>,  <28.634184, 29.781574, 33.761013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887993, 29.586866, 33.520866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637317, 0.109945, -0.762718,
		0.437277, 0.866583, -0.240465,
		0.634521, -0.486771, -0.600364,
		29.078348, 29.440834, 33.340755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600258, 30.200233, 33.149239>,  <28.634184, 29.781574, 33.761013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600258, 30.200233, 33.149239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.738464, 29.840805, 33.041023>,  <28.821388, 29.625149, 32.976093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.738464, 29.840805, 33.041023>,  <28.600258, 30.200233, 33.149239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738464, 29.840805, 33.041023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436547, 0.101289, -0.893961,
		0.830689, 0.426982, -0.357271,
		0.345518, -0.898569, -0.270537,
		28.842119, 29.571234, 32.959862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910009, 30.351265, 32.555672>,  <28.600258, 30.200233, 33.149239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910009, 30.351265, 32.555672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.844055, 29.956755, 32.552277>,  <28.804483, 29.720049, 32.550240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.844055, 29.956755, 32.552277>,  <28.910009, 30.351265, 32.555672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844055, 29.956755, 32.552277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193091, 0.040716, -0.980336,
		0.967227, -0.160004, -0.197155,
		-0.164885, -0.986276, -0.008486,
		28.794590, 29.660872, 32.549732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267916, 29.994167, 32.044819>,  <28.910009, 30.351265, 32.555672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267916, 29.994167, 32.044819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.950596, 29.762020, 32.118416>,  <28.760204, 29.622732, 32.162575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.950596, 29.762020, 32.118416>,  <29.267916, 29.994167, 32.044819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950596, 29.762020, 32.118416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227592, 0.002393, -0.973754,
		0.564696, -0.814350, -0.133986,
		-0.793297, -0.580369, 0.183988,
		28.712606, 29.587910, 32.173611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131886, 29.610542, 31.411377>,  <29.267916, 29.994167, 32.044819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131886, 29.610542, 31.411377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.787169, 29.564161, 31.608910>,  <28.580338, 29.536333, 31.727428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.787169, 29.564161, 31.608910>,  <29.131886, 29.610542, 31.411377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787169, 29.564161, 31.608910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486897, -0.083990, -0.869412,
		0.142290, -0.989697, 0.015924,
		-0.861792, -0.115955, 0.493831,
		28.528631, 29.529375, 31.757059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838289, 29.009624, 31.161079>,  <29.131886, 29.610542, 31.411377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838289, 29.009624, 31.161079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.527775, 29.204496, 31.321098>,  <28.341467, 29.321419, 31.417109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.527775, 29.204496, 31.321098>,  <28.838289, 29.009624, 31.161079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527775, 29.204496, 31.321098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472352, -0.029294, -0.880923,
		-0.417450, -0.872810, 0.252861,
		-0.776286, 0.487180, 0.400045,
		28.294889, 29.350651, 31.441113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089653, 28.325586, 31.100039>,  <28.838289, 29.009624, 31.161079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089653, 28.325586, 31.100039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.343075, 28.359398, 30.792412>,  <29.495127, 28.379684, 30.607836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.343075, 28.359398, 30.792412>,  <29.089653, 28.325586, 31.100039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343075, 28.359398, 30.792412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683607, 0.404362, 0.607596,
		0.362341, -0.910684, 0.198401,
		0.633554, 0.084528, -0.769067,
		29.533140, 28.384756, 30.561691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684891, 27.919279, 31.318245>,  <29.089653, 28.325586, 31.100039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684891, 27.919279, 31.318245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.798124, 28.171907, 31.029528>,  <29.866064, 28.323484, 30.856297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.798124, 28.171907, 31.029528>,  <29.684891, 27.919279, 31.318245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798124, 28.171907, 31.029528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837211, 0.204438, 0.507231,
		0.467914, -0.747880, -0.470884,
		0.283082, 0.631570, -0.721792,
		29.883049, 28.361378, 30.812990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277264, 27.601580, 31.016443>,  <29.684891, 27.919279, 31.318245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277264, 27.601580, 31.016443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.293694, 27.994564, 30.943687>,  <30.303553, 28.230354, 30.900034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.293694, 27.994564, 30.943687>,  <30.277264, 27.601580, 31.016443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293694, 27.994564, 30.943687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827642, 0.068529, 0.557057,
		0.559751, -0.173423, -0.810311,
		0.041077, 0.982460, -0.181891,
		30.306017, 28.289303, 30.889120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942480, 27.718468, 30.682793>,  <30.277264, 27.601580, 31.016443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942480, 27.718468, 30.682793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.842911, 28.079922, 30.822206>,  <30.783169, 28.296795, 30.905855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.842911, 28.079922, 30.822206>,  <30.942480, 27.718468, 30.682793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842911, 28.079922, 30.822206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905475, 0.089409, 0.414875,
		0.343734, 0.418863, -0.840477,
		-0.248922, 0.903637, 0.348537,
		30.768234, 28.351013, 30.926767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524769, 28.169624, 30.533937>,  <30.942480, 27.718468, 30.682793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524769, 28.169624, 30.533937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.319374, 28.375792, 30.808361>,  <31.196138, 28.499491, 30.973015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.319374, 28.375792, 30.808361>,  <31.524769, 28.169624, 30.533937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319374, 28.375792, 30.808361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835025, 0.115976, 0.537850,
		0.197651, 0.849055, -0.489938,
		-0.513486, 0.515417, 0.686059,
		31.165329, 28.530416, 31.014179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848484, 28.787678, 30.627487>,  <31.524769, 28.169624, 30.533937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848484, 28.787678, 30.627487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.649214, 28.733824, 30.970110>,  <31.529652, 28.701511, 31.175684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.649214, 28.733824, 30.970110>,  <31.848484, 28.787678, 30.627487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649214, 28.733824, 30.970110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805135, 0.294842, 0.514613,
		-0.321834, 0.946014, -0.038485,
		-0.498178, -0.134634, 0.856559,
		31.499760, 28.693434, 31.227077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999966, 29.335033, 31.005831>,  <31.848484, 28.787678, 30.627487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999966, 29.335033, 31.005831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.886206, 29.078613, 31.290976>,  <31.817949, 28.924761, 31.462063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.886206, 29.078613, 31.290976>,  <31.999966, 29.335033, 31.005831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886206, 29.078613, 31.290976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833416, 0.202198, 0.514328,
		-0.473849, 0.740386, 0.476755,
		-0.284402, -0.641049, 0.712861,
		31.800884, 28.886299, 31.504833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976622, 29.816687, 31.597347>,  <31.999966, 29.335033, 31.005831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976622, 29.816687, 31.597347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.037449, 29.432198, 31.689373>,  <32.073944, 29.201504, 31.744589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.037449, 29.432198, 31.689373>,  <31.976622, 29.816687, 31.597347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037449, 29.432198, 31.689373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776744, 0.260167, 0.573569,
		-0.611182, 0.091481, 0.786186,
		0.152069, -0.961220, 0.230066,
		32.083069, 29.143831, 31.758392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357155, 29.875120, 32.215374>,  <31.976622, 29.816687, 31.597347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357155, 29.875120, 32.215374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416553, 29.495840, 32.103043>,  <32.452194, 29.268272, 32.035645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416553, 29.495840, 32.103043>,  <32.357155, 29.875120, 32.215374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416553, 29.495840, 32.103043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922325, 0.030354, 0.385219,
		-0.356741, -0.316222, 0.879056,
		0.148498, -0.948199, -0.280832,
		32.461102, 29.211380, 32.018791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701611, 29.647631, 32.817730>,  <32.357155, 29.875120, 32.215374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701611, 29.647631, 32.817730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.747684, 29.356125, 32.547729>,  <32.775330, 29.181221, 32.385727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.747684, 29.356125, 32.547729>,  <32.701611, 29.647631, 32.817730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747684, 29.356125, 32.547729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950656, -0.116190, 0.287669,
		-0.288072, -0.674833, 0.679422,
		0.115187, -0.728766, -0.675005,
		32.782242, 29.137495, 32.345226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982681, 28.996321, 33.139477>,  <32.701611, 29.647631, 32.817730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982681, 28.996321, 33.139477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095745, 29.007690, 32.755959>,  <33.163586, 29.014511, 32.525848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095745, 29.007690, 32.755959>,  <32.982681, 28.996321, 33.139477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095745, 29.007690, 32.755959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956493, -0.083651, 0.279504,
		-0.072261, -0.996090, -0.050830,
		0.282663, 0.028421, -0.958798,
		33.180546, 29.016216, 32.468319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592102, 28.572788, 33.104206>,  <32.982681, 28.996321, 33.139477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592102, 28.572788, 33.104206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.598022, 28.805071, 32.778614>,  <33.601574, 28.944441, 32.583260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.598022, 28.805071, 32.778614>,  <33.592102, 28.572788, 33.104206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598022, 28.805071, 32.778614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988760, 0.112624, 0.098332,
		0.148775, -0.806284, -0.572513,
		0.014805, 0.580708, -0.813978,
		33.602463, 28.979282, 32.534420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198593, 28.379965, 32.838120>,  <33.592102, 28.572788, 33.104206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198593, 28.379965, 32.838120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126377, 28.729488, 32.657516>,  <34.083050, 28.939203, 32.549152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126377, 28.729488, 32.657516>,  <34.198593, 28.379965, 32.838120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126377, 28.729488, 32.657516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982323, 0.183283, -0.038077,
		0.049482, -0.450405, -0.891452,
		-0.180538, 0.873810, -0.451512,
		34.072216, 28.991631, 32.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731594, 28.460283, 32.318333>,  <34.198593, 28.379965, 32.838120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731594, 28.460283, 32.318333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584126, 28.818256, 32.418877>,  <34.495644, 29.033039, 32.479202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584126, 28.818256, 32.418877>,  <34.731594, 28.460283, 32.318333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584126, 28.818256, 32.418877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928188, 0.339729, 0.151824,
		0.050480, 0.289278, -0.955913,
		-0.368670, 0.894931, 0.251355,
		34.473526, 29.086737, 32.494282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.779930, 30.187061, 26.765011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469505, 30.228672, 27.013817>,  <32.283249, 30.253639, 27.163101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469505, 30.228672, 27.013817>,  <32.779930, 30.187061, 26.765011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469505, 30.228672, 27.013817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593856, -0.452532, -0.665244,
		0.212278, -0.885660, 0.412971,
		-0.776062, 0.104029, 0.622017,
		32.236687, 30.259880, 27.200422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344807, 29.480537, 26.823780>,  <32.779930, 30.187061, 26.765011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344807, 29.480537, 26.823780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137695, 29.806473, 26.928040>,  <32.013428, 30.002035, 26.990595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137695, 29.806473, 26.928040>,  <32.344807, 29.480537, 26.823780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137695, 29.806473, 26.928040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802736, -0.357390, -0.477376,
		-0.295832, -0.456409, 0.839151,
		-0.517783, 0.814839, 0.260648,
		31.982361, 30.050924, 27.006233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714886, 29.259457, 27.163118>,  <32.344807, 29.480537, 26.823780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714886, 29.259457, 27.163118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.649529, 29.622084, 27.007460>,  <31.610313, 29.839661, 26.914064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.649529, 29.622084, 27.007460>,  <31.714886, 29.259457, 27.163118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649529, 29.622084, 27.007460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880350, -0.312018, -0.357251,
		-0.445293, 0.284213, 0.849080,
		-0.163393, 0.906569, -0.389146,
		31.600512, 29.894054, 26.890717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047369, 29.153826, 27.009247>,  <31.714886, 29.259457, 27.163118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047369, 29.153826, 27.009247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087742, 29.513845, 26.839672>,  <31.111965, 29.729858, 26.737926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087742, 29.513845, 26.839672>,  <31.047369, 29.153826, 27.009247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087742, 29.513845, 26.839672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872194, -0.124948, -0.472932,
		-0.478633, 0.417490, 0.772407,
		0.100934, 0.900050, -0.423936,
		31.118023, 29.783861, 26.712492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473169, 29.577732, 27.191603>,  <31.047369, 29.153826, 27.009247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473169, 29.577732, 27.191603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.621920, 29.711533, 26.845234>,  <30.711170, 29.791813, 26.637413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.621920, 29.711533, 26.845234>,  <30.473169, 29.577732, 27.191603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621920, 29.711533, 26.845234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858732, -0.230306, -0.457754,
		-0.352545, 0.913821, 0.201601,
		0.371876, 0.334500, -0.865921,
		30.733482, 29.811882, 26.585457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961323, 30.055523, 26.867022>,  <30.473169, 29.577732, 27.191603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961323, 30.055523, 26.867022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191845, 29.964317, 26.553110>,  <30.330158, 29.909594, 26.364763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191845, 29.964317, 26.553110>,  <29.961323, 30.055523, 26.867022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191845, 29.964317, 26.553110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813748, -0.071508, -0.576802,
		0.075402, 0.971028, -0.226758,
		0.576306, -0.228016, -0.784781,
		30.364737, 29.895912, 26.317677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806883, 30.541109, 26.324324>,  <29.961323, 30.055523, 26.867022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806883, 30.541109, 26.324324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.949104, 30.209263, 26.152126>,  <30.034437, 30.010155, 26.048809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.949104, 30.209263, 26.152126>,  <29.806883, 30.541109, 26.324324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949104, 30.209263, 26.152126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742385, 0.029156, -0.669339,
		0.567844, 0.557577, -0.605526,
		0.355553, -0.829613, -0.430492,
		30.055771, 29.960379, 26.022978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704287, 30.673105, 25.642897>,  <29.806883, 30.541109, 26.324324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704287, 30.673105, 25.642897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.781361, 30.281038, 25.661398>,  <29.827606, 30.045797, 25.672499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.781361, 30.281038, 25.661398>,  <29.704287, 30.673105, 25.642897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781361, 30.281038, 25.661398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691039, -0.169013, -0.702780,
		0.696661, 0.103453, -0.709902,
		0.192687, -0.980169, 0.046254,
		29.839167, 29.986988, 25.675274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691332, 30.522587, 24.991550>,  <29.704287, 30.673105, 25.642897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691332, 30.522587, 24.991550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.651672, 30.176172, 25.187572>,  <29.627876, 29.968325, 25.305185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.651672, 30.176172, 25.187572>,  <29.691332, 30.522587, 24.991550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651672, 30.176172, 25.187572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827461, -0.201788, -0.524014,
		0.552701, -0.457456, -0.696603,
		-0.099147, -0.866035, 0.490055,
		29.621929, 29.916363, 25.334589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672014, 29.899294, 24.508770>,  <29.691332, 30.522587, 24.991550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672014, 29.899294, 24.508770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492069, 29.771173, 24.842245>,  <29.384102, 29.694302, 25.042330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492069, 29.771173, 24.842245>,  <29.672014, 29.899294, 24.508770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492069, 29.771173, 24.842245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725092, -0.413995, -0.550319,
		0.521410, -0.852065, -0.046008,
		-0.449860, -0.320301, 0.833686,
		29.357111, 29.675083, 25.092352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392416, 29.250134, 24.349916>,  <29.672014, 29.899294, 24.508770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392416, 29.250134, 24.349916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.201578, 29.318352, 24.694775>,  <29.087074, 29.359283, 24.901690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.201578, 29.318352, 24.694775>,  <29.392416, 29.250134, 24.349916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201578, 29.318352, 24.694775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874075, -0.194208, -0.445282,
		0.091495, -0.966021, 0.241725,
		-0.477096, 0.170545, 0.862144,
		29.058449, 29.369516, 24.953419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967152, 28.571171, 24.511246>,  <29.392416, 29.250134, 24.349916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967152, 28.571171, 24.511246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.834824, 28.916338, 24.664049>,  <28.755426, 29.123438, 24.755732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.834824, 28.916338, 24.664049>,  <28.967152, 28.571171, 24.511246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834824, 28.916338, 24.664049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905918, -0.177011, -0.384681,
		-0.264329, -0.473327, 0.840293,
		-0.330821, 0.862919, 0.382006,
		28.735577, 29.175213, 24.778652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424501, 28.546364, 25.005753>,  <28.967152, 28.571171, 24.511246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424501, 28.546364, 25.005753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402245, 28.888252, 24.799314>,  <28.388889, 29.093386, 24.675451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402245, 28.888252, 24.799314>,  <28.424501, 28.546364, 25.005753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402245, 28.888252, 24.799314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867217, -0.297534, -0.399259,
		-0.494812, 0.425349, 0.757786,
		-0.055643, 0.854723, -0.516093,
		28.385551, 29.144669, 24.644487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854525, 28.804094, 25.241405>,  <28.424501, 28.546364, 25.005753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854525, 28.804094, 25.241405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.930355, 28.914728, 24.864563>,  <27.975853, 28.981108, 24.638458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.930355, 28.914728, 24.864563>,  <27.854525, 28.804094, 25.241405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930355, 28.914728, 24.864563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846504, -0.440116, -0.299548,
		-0.497486, 0.854283, 0.150693,
		0.189576, 0.276583, -0.942106,
		27.987228, 28.997704, 24.581932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434690, 28.489889, 25.686993>,  <27.854525, 28.804094, 25.241405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434690, 28.489889, 25.686993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.299860, 28.113300, 25.688374>,  <27.218962, 27.887348, 25.689201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.299860, 28.113300, 25.688374>,  <27.434690, 28.489889, 25.686993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299860, 28.113300, 25.688374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311542, -0.108079, 0.944066,
		-0.888437, 0.319298, 0.329739,
		-0.337076, -0.941471, 0.003453,
		27.198736, 27.830858, 25.689409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121664, 28.428020, 26.335823>,  <27.434690, 28.489889, 25.686993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121664, 28.428020, 26.335823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.213360, 28.055506, 26.222576>,  <27.268377, 27.831997, 26.154627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.213360, 28.055506, 26.222576>,  <27.121664, 28.428020, 26.335823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213360, 28.055506, 26.222576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285463, -0.213751, 0.934249,
		-0.930570, -0.294987, 0.216848,
		0.229240, -0.931286, -0.283118,
		27.282131, 27.776119, 26.137640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045033, 28.059961, 26.866083>,  <27.121664, 28.428020, 26.335823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045033, 28.059961, 26.866083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212425, 27.743948, 26.686874>,  <27.312860, 27.554340, 26.579350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212425, 27.743948, 26.686874>,  <27.045033, 28.059961, 26.866083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212425, 27.743948, 26.686874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370548, -0.301853, 0.878396,
		-0.829197, -0.533606, 0.166424,
		0.418481, -0.790032, -0.448023,
		27.337969, 27.506939, 26.552467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842815, 27.325623, 27.141188>,  <27.045033, 28.059961, 26.866083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842815, 27.325623, 27.141188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.209190, 27.302242, 26.982372>,  <27.429016, 27.288214, 26.887083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.209190, 27.302242, 26.982372>,  <26.842815, 27.325623, 27.141188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209190, 27.302242, 26.982372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369835, -0.261172, 0.891634,
		-0.155810, -0.963521, -0.217602,
		0.915939, -0.058449, -0.397037,
		27.483973, 27.284708, 26.863260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134405, 26.706907, 27.416952>,  <26.842815, 27.325623, 27.141188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134405, 26.706907, 27.416952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.437534, 26.942421, 27.304497>,  <27.619411, 27.083729, 27.237024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.437534, 26.942421, 27.304497>,  <27.134405, 26.706907, 27.416952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437534, 26.942421, 27.304497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390412, -0.063964, 0.918416,
		0.522767, -0.805755, -0.278342,
		0.757821, 0.588785, -0.281138,
		27.664881, 27.119057, 27.220156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704689, 26.481842, 27.889589>,  <27.134405, 26.706907, 27.416952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704689, 26.481842, 27.889589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.840700, 26.816677, 27.718166>,  <27.922306, 27.017578, 27.615313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.840700, 26.816677, 27.718166>,  <27.704689, 26.481842, 27.889589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840700, 26.816677, 27.718166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512227, 0.217320, 0.830900,
		0.788672, -0.502048, -0.354886,
		0.340028, 0.837090, -0.428557,
		27.942709, 27.067804, 27.589600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477190, 26.467571, 27.825693>,  <27.704689, 26.481842, 27.889589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477190, 26.467571, 27.825693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.338482, 26.842686, 27.818724>,  <28.255257, 27.067755, 27.814541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.338482, 26.842686, 27.818724>,  <28.477190, 26.467571, 27.825693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338482, 26.842686, 27.818724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530568, 0.211443, 0.820846,
		0.773464, 0.275401, -0.570883,
		-0.346772, 0.937788, -0.017425,
		28.234451, 27.124022, 27.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033426, 26.876999, 28.017237>,  <28.477190, 26.467571, 27.825693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033426, 26.876999, 28.017237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715794, 27.111235, 28.082380>,  <28.525215, 27.251776, 28.121466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715794, 27.111235, 28.082380>,  <29.033426, 26.876999, 28.017237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715794, 27.111235, 28.082380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478407, 0.436887, 0.761746,
		0.374917, 0.682801, -0.627073,
		-0.794081, 0.585587, 0.162860,
		28.477570, 27.286911, 28.131239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276112, 27.490759, 28.141155>,  <29.033426, 26.876999, 28.017237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276112, 27.490759, 28.141155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.919710, 27.535547, 28.317146>,  <28.705870, 27.562420, 28.422741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.919710, 27.535547, 28.317146>,  <29.276112, 27.490759, 28.141155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919710, 27.535547, 28.317146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439642, 0.454593, 0.774635,
		-0.113273, 0.883633, -0.454270,
		-0.891002, 0.111971, 0.439976,
		28.652411, 27.569139, 28.449139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294754, 28.165462, 28.375370>,  <29.276112, 27.490759, 28.141155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294754, 28.165462, 28.375370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.996494, 28.011988, 28.593285>,  <28.817539, 27.919903, 28.724033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.996494, 28.011988, 28.593285>,  <29.294754, 28.165462, 28.375370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996494, 28.011988, 28.593285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385794, 0.418025, 0.822446,
		-0.543296, 0.823432, -0.163676,
		-0.745649, -0.383686, 0.544786,
		28.772800, 27.896881, 28.756720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913467, 28.660345, 28.618443>,  <29.294754, 28.165462, 28.375370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913467, 28.660345, 28.618443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.883266, 28.333725, 28.847368>,  <28.865147, 28.137753, 28.984724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.883266, 28.333725, 28.847368>,  <28.913467, 28.660345, 28.618443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883266, 28.333725, 28.847368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404398, 0.499558, 0.766097,
		-0.911461, 0.289285, 0.292493,
		-0.075503, -0.816551, 0.572314,
		28.860615, 28.088760, 29.019062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054276, 28.930271, 29.211664>,  <28.913467, 28.660345, 28.618443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054276, 28.930271, 29.211664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.009954, 28.559217, 29.354332>,  <28.983362, 28.336584, 29.439934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.009954, 28.559217, 29.354332>,  <29.054276, 28.930271, 29.211664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009954, 28.559217, 29.354332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312494, 0.308160, 0.898546,
		-0.943435, 0.211018, 0.255736,
		-0.110801, -0.927636, 0.356671,
		28.976713, 28.280926, 29.461334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637922, 29.021574, 29.808767>,  <29.054276, 28.930271, 29.211664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637922, 29.021574, 29.808767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.834433, 28.673645, 29.826906>,  <28.952339, 28.464888, 29.837790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.834433, 28.673645, 29.826906>,  <28.637922, 29.021574, 29.808767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834433, 28.673645, 29.826906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526196, 0.337876, 0.780357,
		-0.694095, -0.359508, 0.623688,
		0.491274, -0.869824, 0.045346,
		28.981815, 28.412699, 29.840509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592218, 28.778563, 30.502920>,  <28.637922, 29.021574, 29.808767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592218, 28.778563, 30.502920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.910408, 28.599966, 30.339031>,  <29.101322, 28.492809, 30.240698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.910408, 28.599966, 30.339031>,  <28.592218, 28.778563, 30.502920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910408, 28.599966, 30.339031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593752, 0.439064, 0.674301,
		-0.121174, -0.779660, 0.614367,
		0.795472, -0.446489, -0.409722,
		29.149050, 28.466019, 30.216114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036833, 28.536003, 31.033119>,  <28.592218, 28.778563, 30.502920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036833, 28.536003, 31.033119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.963039, 28.920961, 31.112875>,  <27.918762, 29.151937, 31.160728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.963039, 28.920961, 31.112875>,  <28.036833, 28.536003, 31.033119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963039, 28.920961, 31.112875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677192, 0.022559, -0.735460,
		-0.712304, -0.270705, 0.647567,
		-0.184484, 0.962398, 0.199388,
		27.907694, 29.209681, 31.172691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306570, 28.610023, 31.075274>,  <28.036833, 28.536003, 31.033119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306570, 28.610023, 31.075274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.445211, 28.977890, 31.001432>,  <27.528397, 29.198610, 30.957127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.445211, 28.977890, 31.001432>,  <27.306570, 28.610023, 31.075274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445211, 28.977890, 31.001432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721288, 0.135493, -0.679253,
		-0.599674, 0.368584, 0.710307,
		0.346604, 0.919667, -0.184604,
		27.549192, 29.253790, 30.946051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775433, 29.091797, 30.943056>,  <27.306570, 28.610023, 31.075274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775433, 29.091797, 30.943056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.058876, 29.315895, 30.771475>,  <27.228943, 29.450354, 30.668526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.058876, 29.315895, 30.771475>,  <26.775433, 29.091797, 30.943056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058876, 29.315895, 30.771475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622261, 0.209564, -0.754237,
		-0.332664, 0.801380, 0.497117,
		0.708609, 0.560244, -0.428953,
		27.271458, 29.483969, 30.642790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379969, 29.581699, 30.628300>,  <26.775433, 29.091797, 30.943056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379969, 29.581699, 30.628300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.723969, 29.705456, 30.465975>,  <26.930368, 29.779709, 30.368580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.723969, 29.705456, 30.465975>,  <26.379969, 29.581699, 30.628300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723969, 29.705456, 30.465975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475832, 0.198892, -0.856753,
		-0.184358, 0.929903, 0.318264,
		0.859998, 0.309390, -0.405810,
		26.981968, 29.798273, 30.344233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213335, 30.158449, 30.262295>,  <26.379969, 29.581699, 30.628300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213335, 30.158449, 30.262295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.544909, 30.018900, 30.087408>,  <26.743853, 29.935171, 29.982475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.544909, 30.018900, 30.087408>,  <26.213335, 30.158449, 30.262295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544909, 30.018900, 30.087408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419873, 0.128352, -0.898461,
		0.369566, 0.928339, -0.040086,
		0.828932, -0.348872, -0.437219,
		26.793589, 29.914238, 29.956242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340849, 30.667316, 29.702978>,  <26.213335, 30.158449, 30.262295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340849, 30.667316, 29.702978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.513189, 30.313446, 29.631739>,  <26.616594, 30.101124, 29.588995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.513189, 30.313446, 29.631739>,  <26.340849, 30.667316, 29.702978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513189, 30.313446, 29.631739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398930, -0.009693, -0.916930,
		0.809458, 0.466109, -0.357099,
		0.430851, -0.884674, -0.178099,
		26.642445, 30.048044, 29.578308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559765, 30.699684, 29.014938>,  <26.340849, 30.667316, 29.702978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559765, 30.699684, 29.014938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.566137, 30.303068, 29.066473>,  <26.569960, 30.065100, 29.097393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.566137, 30.303068, 29.066473>,  <26.559765, 30.699684, 29.014938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566137, 30.303068, 29.066473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381081, -0.125147, -0.916033,
		0.924405, -0.034505, -0.379849,
		0.015929, -0.991538, 0.128836,
		26.570915, 30.005608, 29.105124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036366, 31.195938, 28.495417>,  <26.559765, 30.699684, 29.014938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036366, 31.195938, 28.495417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.809587, 31.509529, 28.596571>,  <26.673521, 31.697683, 28.657265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.809587, 31.509529, 28.596571>,  <27.036366, 31.195938, 28.495417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809587, 31.509529, 28.596571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632912, 0.218068, 0.742879,
		0.527254, 0.581226, -0.619822,
		-0.566944, 0.783978, 0.252887,
		26.639503, 31.744722, 28.672438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423937, 31.753344, 28.651184>,  <27.036366, 31.195938, 28.495417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423937, 31.753344, 28.651184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.095638, 31.824389, 28.868376>,  <26.898659, 31.867016, 28.998692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.095638, 31.824389, 28.868376>,  <27.423937, 31.753344, 28.651184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095638, 31.824389, 28.868376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569645, 0.326571, 0.754225,
		-0.043361, 0.928334, -0.369210,
		-0.820746, 0.177615, 0.542981,
		26.849415, 31.877672, 29.031271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510853, 32.470013, 28.903587>,  <27.423937, 31.753344, 28.651184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510853, 32.470013, 28.903587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.243372, 32.289185, 29.139711>,  <27.082884, 32.180687, 29.281385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.243372, 32.289185, 29.139711>,  <27.510853, 32.470013, 28.903587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243372, 32.289185, 29.139711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513308, 0.293691, 0.806387,
		-0.537913, 0.842246, 0.035659,
		-0.668703, -0.452071, 0.590311,
		27.042761, 32.153564, 29.316805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430222, 32.915257, 29.407528>,  <27.510853, 32.470013, 28.903587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430222, 32.915257, 29.407528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.272156, 32.585796, 29.570227>,  <27.177317, 32.388119, 29.667847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.272156, 32.585796, 29.570227>,  <27.430222, 32.915257, 29.407528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272156, 32.585796, 29.570227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557111, 0.137178, 0.819029,
		-0.730392, 0.550253, 0.404658,
		-0.395163, -0.823652, 0.406746,
		27.153606, 32.338699, 29.692251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314548, 33.086346, 30.147024>,  <27.430222, 32.915257, 29.407528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314548, 33.086346, 30.147024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.273903, 32.688431, 30.150410>,  <27.249516, 32.449680, 30.152441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.273903, 32.688431, 30.150410>,  <27.314548, 33.086346, 30.147024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273903, 32.688431, 30.150410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502335, -0.043962, 0.863555,
		-0.858682, 0.092002, 0.504184,
		-0.101613, -0.994788, 0.008466,
		27.243420, 32.389996, 30.152950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105463, 32.971119, 30.783716>,  <27.314548, 33.086346, 30.147024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105463, 32.971119, 30.783716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.260777, 32.626900, 30.651838>,  <27.353964, 32.420368, 30.572712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.260777, 32.626900, 30.651838>,  <27.105463, 32.971119, 30.783716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260777, 32.626900, 30.651838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612691, -0.026176, 0.789889,
		-0.688365, -0.508703, 0.517084,
		0.388284, -0.860544, -0.329696,
		27.377262, 32.368736, 30.552929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114641, 32.514324, 31.401655>,  <27.105463, 32.971119, 30.783716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114641, 32.514324, 31.401655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.380911, 32.354225, 31.149725>,  <27.540672, 32.258167, 30.998568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.380911, 32.354225, 31.149725>,  <27.114641, 32.514324, 31.401655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380911, 32.354225, 31.149725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656329, -0.087622, 0.749370,
		-0.355117, -0.912210, 0.204364,
		0.665676, -0.400244, -0.629826,
		27.580614, 32.234154, 30.960777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.430214, 31.551468, 25.505238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731333, 31.288181, 25.507891>,  <27.912004, 31.130209, 25.509483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731333, 31.288181, 25.507891>,  <27.430214, 31.551468, 25.505238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731333, 31.288181, 25.507891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549597, 0.634050, 0.543990,
		-0.362269, -0.405869, 0.839066,
		0.752798, -0.658219, 0.006633,
		27.957172, 31.090715, 25.509880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585135, 31.250601, 26.204681>,  <27.430214, 31.551468, 25.505238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585135, 31.250601, 26.204681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922369, 31.223963, 25.991226>,  <28.124710, 31.207979, 25.863153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922369, 31.223963, 25.991226>,  <27.585135, 31.250601, 26.204681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922369, 31.223963, 25.991226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495282, 0.482770, 0.722239,
		0.209524, -0.873212, 0.440002,
		0.843087, -0.066598, -0.533638,
		28.175295, 31.203983, 25.831135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038383, 31.324442, 26.705814>,  <27.585135, 31.250601, 26.204681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038383, 31.324442, 26.705814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271048, 31.380846, 26.385368>,  <28.410646, 31.414688, 26.193100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271048, 31.380846, 26.385368>,  <28.038383, 31.324442, 26.705814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271048, 31.380846, 26.385368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628522, 0.547271, 0.552679,
		0.516362, -0.824991, 0.229697,
		0.581662, 0.141013, -0.801115,
		28.445545, 31.423149, 26.145035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740070, 31.128988, 26.930567>,  <28.038383, 31.324442, 26.705814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740070, 31.128988, 26.930567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781818, 31.368689, 26.613075>,  <28.806868, 31.512508, 26.422581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781818, 31.368689, 26.613075>,  <28.740070, 31.128988, 26.930567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781818, 31.368689, 26.613075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713121, 0.511204, 0.479718,
		0.693229, -0.616092, -0.373984,
		0.104368, 0.599250, -0.793730,
		28.813129, 31.548464, 26.374956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430351, 31.129807, 26.851875>,  <28.740070, 31.128988, 26.930567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430351, 31.129807, 26.851875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303125, 31.444593, 26.640396>,  <29.226789, 31.633465, 26.513510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303125, 31.444593, 26.640396>,  <29.430351, 31.129807, 26.851875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303125, 31.444593, 26.640396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852867, 0.481061, 0.202972,
		0.414067, -0.386350, -0.824186,
		-0.318066, 0.786965, -0.528697,
		29.207706, 31.680683, 26.481787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990921, 31.294216, 26.585552>,  <29.430351, 31.129807, 26.851875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990921, 31.294216, 26.585552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761633, 31.621927, 26.579893>,  <29.624060, 31.818554, 26.576498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761633, 31.621927, 26.579893>,  <29.990921, 31.294216, 26.585552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761633, 31.621927, 26.579893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789724, 0.556983, 0.257109,
		0.218523, 0.136210, -0.966279,
		-0.573222, 0.819278, -0.014145,
		29.589666, 31.867710, 26.575649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346125, 31.750555, 26.246428>,  <29.990921, 31.294216, 26.585552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346125, 31.750555, 26.246428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.096273, 31.973169, 26.465555>,  <29.946362, 32.106739, 26.597033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.096273, 31.973169, 26.465555>,  <30.346125, 31.750555, 26.246428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096273, 31.973169, 26.465555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749776, 0.623536, 0.221445,
		-0.218344, 0.549064, -0.806755,
		-0.624629, 0.556535, 0.547821,
		29.908884, 32.140129, 26.629902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507507, 32.451817, 26.105108>,  <30.346125, 31.750555, 26.246428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507507, 32.451817, 26.105108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297211, 32.496117, 26.442469>,  <30.171032, 32.522697, 26.644886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297211, 32.496117, 26.442469>,  <30.507507, 32.451817, 26.105108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297211, 32.496117, 26.442469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638940, 0.705954, 0.305588,
		-0.561561, 0.699545, -0.441913,
		-0.525743, 0.110750, 0.843403,
		30.139488, 32.529343, 26.695490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645529, 33.061874, 26.236345>,  <30.507507, 32.451817, 26.105108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645529, 33.061874, 26.236345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479742, 32.964016, 26.586971>,  <30.380270, 32.905300, 26.797346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479742, 32.964016, 26.586971>,  <30.645529, 33.061874, 26.236345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479742, 32.964016, 26.586971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469819, 0.767394, 0.436321,
		-0.779416, 0.592667, -0.203118,
		-0.414465, -0.244647, 0.876565,
		30.355402, 32.890621, 26.849941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470024, 33.711918, 26.556395>,  <30.645529, 33.061874, 26.236345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470024, 33.711918, 26.556395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470057, 33.457687, 26.865211>,  <30.470076, 33.305149, 27.050501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470057, 33.457687, 26.865211>,  <30.470024, 33.711918, 26.556395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470057, 33.457687, 26.865211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433291, 0.695828, 0.572785,
		-0.901254, 0.334472, 0.275445,
		0.000082, -0.635573, 0.772041,
		30.470081, 33.267017, 27.096825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322836, 34.087151, 27.156319>,  <30.470024, 33.711918, 26.556395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322836, 34.087151, 27.156319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503403, 33.771709, 27.323332>,  <30.611742, 33.582447, 27.423540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503403, 33.771709, 27.323332>,  <30.322836, 34.087151, 27.156319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503403, 33.771709, 27.323332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507819, 0.611800, 0.606482,
		-0.733718, -0.061745, 0.676643,
		0.451418, -0.788599, 0.417533,
		30.638828, 33.535130, 27.448591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287073, 34.209198, 27.894266>,  <30.322836, 34.087151, 27.156319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287073, 34.209198, 27.894266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565899, 33.926258, 27.847363>,  <30.733194, 33.756493, 27.819220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565899, 33.926258, 27.847363>,  <30.287073, 34.209198, 27.894266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565899, 33.926258, 27.847363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593577, 0.477564, 0.647764,
		-0.402200, -0.521137, 0.752763,
		0.697067, -0.707353, -0.117259,
		30.775019, 33.714050, 27.812185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851454, 34.630138, 28.403011>,  <30.287073, 34.209198, 27.894266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851454, 34.630138, 28.403011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687222, 34.988491, 28.470926>,  <29.588682, 35.203503, 28.511675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687222, 34.988491, 28.470926>,  <29.851454, 34.630138, 28.403011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687222, 34.988491, 28.470926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550804, -0.095287, -0.829177,
		-0.726663, -0.433963, 0.532576,
		-0.410580, 0.895878, 0.169787,
		29.564047, 35.257256, 28.521862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095785, 34.574753, 28.325754>,  <29.851454, 34.630138, 28.403011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095785, 34.574753, 28.325754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218193, 34.951561, 28.270697>,  <29.291637, 35.177647, 28.237661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218193, 34.951561, 28.270697>,  <29.095785, 34.574753, 28.325754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218193, 34.951561, 28.270697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636778, 0.095058, -0.765165,
		-0.707718, 0.321804, 0.628949,
		0.306020, 0.942022, -0.137644,
		29.309999, 35.234169, 28.229404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452129, 34.963833, 28.221470>,  <29.095785, 34.574753, 28.325754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452129, 34.963833, 28.221470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718159, 35.213722, 28.057812>,  <28.877777, 35.363655, 27.959616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718159, 35.213722, 28.057812>,  <28.452129, 34.963833, 28.221470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718159, 35.213722, 28.057812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563662, 0.060554, -0.823783,
		-0.489857, 0.778498, 0.392403,
		0.665075, 0.624719, -0.409147,
		28.917681, 35.401138, 27.935068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062302, 35.383369, 27.939798>,  <28.452129, 34.963833, 28.221470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062302, 35.383369, 27.939798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408209, 35.439487, 27.746927>,  <28.615753, 35.473160, 27.631205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408209, 35.439487, 27.746927>,  <28.062302, 35.383369, 27.939798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408209, 35.439487, 27.746927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481002, -0.044447, -0.875592,
		-0.144275, 0.989111, 0.029047,
		0.864767, 0.140297, -0.482177,
		28.667639, 35.481575, 27.602274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058826, 36.008076, 27.438335>,  <28.062302, 35.383369, 27.939798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058826, 36.008076, 27.438335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333069, 35.741798, 27.320492>,  <28.497614, 35.582031, 27.249786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333069, 35.741798, 27.320492>,  <28.058826, 36.008076, 27.438335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333069, 35.741798, 27.320492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444460, -0.062271, -0.893632,
		0.576542, 0.743620, -0.338569,
		0.685606, -0.665697, -0.294607,
		28.538750, 35.542088, 27.232109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063765, 36.084171, 26.750998>,  <28.058826, 36.008076, 27.438335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063765, 36.084171, 26.750998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.261112, 35.738361, 26.789333>,  <28.379520, 35.530876, 26.812334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.261112, 35.738361, 26.789333>,  <28.063765, 36.084171, 26.750998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261112, 35.738361, 26.789333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470386, -0.357863, -0.806642,
		0.731658, 0.352892, -0.583218,
		0.493370, -0.864524, 0.095838,
		28.409122, 35.479004, 26.818085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482376, 35.919918, 26.050962>,  <28.063765, 36.084171, 26.750998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482376, 35.919918, 26.050962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433891, 35.584026, 26.262682>,  <28.404800, 35.382492, 26.389713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433891, 35.584026, 26.262682>,  <28.482376, 35.919918, 26.050962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433891, 35.584026, 26.262682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241831, -0.492183, -0.836226,
		0.962718, -0.229362, -0.143415,
		-0.121212, -0.839732, 0.529300,
		28.397528, 35.332108, 26.421473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669306, 35.388096, 25.598488>,  <28.482376, 35.919918, 26.050962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669306, 35.388096, 25.598488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487234, 35.174381, 25.883400>,  <28.377991, 35.046150, 26.054348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487234, 35.174381, 25.883400>,  <28.669306, 35.388096, 25.598488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487234, 35.174381, 25.883400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488228, -0.519210, -0.701466,
		0.744610, -0.667049, -0.024522,
		-0.455180, -0.534291, 0.712281,
		28.350679, 35.014095, 26.097084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679493, 34.705536, 25.398266>,  <28.669306, 35.388096, 25.598488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679493, 34.705536, 25.398266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426937, 34.641724, 25.701818>,  <28.275404, 34.603436, 25.883949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426937, 34.641724, 25.701818>,  <28.679493, 34.705536, 25.398266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426937, 34.641724, 25.701818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422429, -0.749912, -0.509103,
		0.650308, -0.642015, 0.406099,
		-0.631390, -0.159526, 0.758879,
		28.237520, 34.593864, 25.929482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581081, 34.032711, 25.349171>,  <28.679493, 34.705536, 25.398266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581081, 34.032711, 25.349171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281645, 34.197292, 25.557140>,  <28.101984, 34.296040, 25.681921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281645, 34.197292, 25.557140>,  <28.581081, 34.032711, 25.349171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281645, 34.197292, 25.557140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616740, -0.719980, -0.318215,
		0.243402, -0.558869, 0.792730,
		-0.748590, 0.411454, 0.519922,
		28.057068, 34.320728, 25.713118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206482, 33.448494, 25.601421>,  <28.581081, 34.032711, 25.349171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206482, 33.448494, 25.601421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962723, 33.765015, 25.581535>,  <27.816467, 33.954926, 25.569603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962723, 33.765015, 25.581535>,  <28.206482, 33.448494, 25.601421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962723, 33.765015, 25.581535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745929, -0.593451, -0.302332,
		-0.268740, -0.147157, 0.951905,
		-0.609400, 0.791303, -0.049716,
		27.779903, 34.002407, 25.566620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579432, 33.167484, 25.778769>,  <28.206482, 33.448494, 25.601421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579432, 33.167484, 25.778769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493990, 33.515648, 25.601339>,  <27.442724, 33.724548, 25.494881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493990, 33.515648, 25.601339>,  <27.579432, 33.167484, 25.778769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493990, 33.515648, 25.601339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796311, -0.418158, -0.437073,
		-0.565917, 0.259862, 0.782438,
		-0.213604, 0.870411, -0.443574,
		27.429909, 33.776772, 25.468267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790075, 33.185677, 25.801491>,  <27.579432, 33.167484, 25.778769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790075, 33.185677, 25.801491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925415, 33.433876, 25.518507>,  <27.006618, 33.582798, 25.348717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925415, 33.433876, 25.518507>,  <26.790075, 33.185677, 25.801491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925415, 33.433876, 25.518507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706342, -0.329280, -0.626622,
		-0.621773, 0.711724, 0.326876,
		0.338348, 0.620503, -0.707458,
		27.026920, 33.620026, 25.306269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971235, 33.011517, 25.728807>,  <26.790075, 33.185677, 25.801491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971235, 33.011517, 25.728807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613098, 32.877831, 25.846560>,  <25.398216, 32.797619, 25.917210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613098, 32.877831, 25.846560>,  <25.971235, 33.011517, 25.728807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613098, 32.877831, 25.846560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358924, -0.150124, 0.921215,
		-0.263694, 0.930463, 0.254371,
		-0.895343, -0.334218, 0.294378,
		25.344496, 32.777565, 25.934874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793335, 33.264439, 26.372358>,  <25.971235, 33.011517, 25.728807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793335, 33.264439, 26.372358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.588757, 32.920746, 26.367397>,  <25.466009, 32.714531, 26.364420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.588757, 32.920746, 26.367397>,  <25.793335, 33.264439, 26.372358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588757, 32.920746, 26.367397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330168, -0.209813, 0.920309,
		-0.793357, 0.466591, 0.390997,
		-0.511444, -0.859227, -0.012404,
		25.435324, 32.662979, 26.363676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542324, 33.254093, 27.075153>,  <25.793335, 33.264439, 26.372358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542324, 33.254093, 27.075153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.519672, 32.887615, 26.916470>,  <25.506083, 32.667728, 26.821259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.519672, 32.887615, 26.916470>,  <25.542324, 33.254093, 27.075153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519672, 32.887615, 26.916470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106337, -0.400623, 0.910051,
		-0.992716, 0.009349, 0.120111,
		-0.056627, -0.916195, -0.396711,
		25.502684, 32.612755, 26.797457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291607, 32.923901, 27.641308>,  <25.542324, 33.254093, 27.075153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291607, 32.923901, 27.641308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.414490, 32.620403, 27.411549>,  <25.488220, 32.438305, 27.273693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.414490, 32.620403, 27.411549>,  <25.291607, 32.923901, 27.641308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414490, 32.620403, 27.411549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225812, -0.528228, 0.818525,
		-0.924463, -0.381163, 0.009058,
		0.307207, -0.758742, -0.574399,
		25.506653, 32.392780, 27.239229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002205, 32.350365, 27.878307>,  <25.291607, 32.923901, 27.641308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002205, 32.350365, 27.878307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.317873, 32.205997, 27.679531>,  <25.507273, 32.119377, 27.560265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.317873, 32.205997, 27.679531>,  <25.002205, 32.350365, 27.878307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317873, 32.205997, 27.679531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316842, -0.453896, 0.832820,
		-0.526142, -0.814686, -0.243845,
		0.789168, -0.360922, -0.496941,
		25.554623, 32.097721, 27.530449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155113, 31.650398, 28.194271>,  <25.002205, 32.350365, 27.878307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155113, 31.650398, 28.194271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.478098, 31.758646, 27.984596>,  <25.671888, 31.823595, 27.858791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.478098, 31.758646, 27.984596>,  <25.155113, 31.650398, 28.194271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478098, 31.758646, 27.984596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588868, -0.316738, 0.743580,
		0.035198, -0.909088, -0.415113,
		0.807462, 0.270619, -0.524184,
		25.720337, 31.839832, 27.827341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706390, 31.134212, 28.301874>,  <25.155113, 31.650398, 28.194271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706390, 31.134212, 28.301874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.893671, 31.469563, 28.190222>,  <26.006041, 31.670773, 28.123230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.893671, 31.469563, 28.190222>,  <25.706390, 31.134212, 28.301874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893671, 31.469563, 28.190222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623285, -0.089432, 0.776864,
		0.626340, -0.537709, -0.564419,
		0.468203, 0.838374, -0.279131,
		26.034132, 31.721075, 28.106482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367811, 30.966412, 28.378942>,  <25.706390, 31.134212, 28.301874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367811, 30.966412, 28.378942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336695, 31.363937, 28.410656>,  <26.318026, 31.602453, 28.429684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336695, 31.363937, 28.410656>,  <26.367811, 30.966412, 28.378942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336695, 31.363937, 28.410656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552065, -0.023278, 0.833476,
		0.830164, 0.108607, -0.546838,
		-0.077792, 0.993812, 0.079282,
		26.313356, 31.662081, 28.434441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875383, 30.392002, 28.419418>,  <26.367811, 30.966412, 28.378942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875383, 30.392002, 28.419418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685085, 30.071102, 28.563673>,  <26.570906, 29.878563, 28.650227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685085, 30.071102, 28.563673>,  <26.875383, 30.392002, 28.419418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685085, 30.071102, 28.563673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242506, -0.274484, -0.930510,
		0.845492, -0.530144, -0.063965,
		-0.475747, -0.802251, 0.360637,
		26.542360, 29.830427, 28.671864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125973, 29.771196, 28.047745>,  <26.875383, 30.392002, 28.419418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125973, 29.771196, 28.047745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785625, 29.625298, 28.198999>,  <26.581417, 29.537758, 28.289753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785625, 29.625298, 28.198999>,  <27.125973, 29.771196, 28.047745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785625, 29.625298, 28.198999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270094, -0.313665, -0.910310,
		0.450639, -0.876684, 0.168371,
		-0.850867, -0.364745, 0.378137,
		26.530365, 29.515875, 28.312441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050072, 29.135845, 27.705629>,  <27.125973, 29.771196, 28.047745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050072, 29.135845, 27.705629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675951, 29.168165, 27.843431>,  <26.451479, 29.187557, 27.926113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675951, 29.168165, 27.843431>,  <27.050072, 29.135845, 27.705629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675951, 29.168165, 27.843431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343783, -0.438120, -0.830580,
		0.083823, -0.895278, 0.437552,
		-0.935300, 0.080801, 0.344506,
		26.395361, 29.192406, 27.946783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636948, 28.447395, 27.615398>,  <27.050072, 29.135845, 27.705629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636948, 28.447395, 27.615398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362209, 28.737801, 27.628963>,  <26.197367, 28.912043, 27.637102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362209, 28.737801, 27.628963>,  <26.636948, 28.447395, 27.615398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362209, 28.737801, 27.628963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353147, -0.292588, -0.888639,
		-0.635241, -0.622333, 0.457351,
		-0.686845, 0.726012, 0.033911,
		26.156157, 28.955605, 27.639137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974335, 28.112120, 27.463966>,  <26.636948, 28.447395, 27.615398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974335, 28.112120, 27.463966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.932819, 28.504787, 27.400030>,  <25.907909, 28.740389, 27.361668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.932819, 28.504787, 27.400030>,  <25.974335, 28.112120, 27.463966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932819, 28.504787, 27.400030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486907, -0.190285, -0.852475,
		-0.867266, -0.010650, 0.497732,
		-0.103790, 0.981671, -0.159842,
		25.901682, 28.799290, 27.352077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187031, 28.252125, 27.358038>,  <25.974335, 28.112120, 27.463966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187031, 28.252125, 27.358038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.428333, 28.509565, 27.169630>,  <25.573114, 28.664030, 27.056585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.428333, 28.509565, 27.169630>,  <25.187031, 28.252125, 27.358038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428333, 28.509565, 27.169630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535843, -0.110363, -0.837074,
		-0.590723, 0.757364, 0.278291,
		0.603256, 0.643600, -0.471022,
		25.609310, 28.702644, 27.028324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730494, 28.761133, 27.004339>,  <25.187031, 28.252125, 27.358038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730494, 28.761133, 27.004339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.082291, 28.844011, 26.832962>,  <25.293369, 28.893738, 26.730135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.082291, 28.844011, 26.832962>,  <24.730494, 28.761133, 27.004339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082291, 28.844011, 26.832962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465777, 0.189943, -0.864276,
		-0.097693, 0.959684, 0.263560,
		0.879493, 0.207194, -0.428443,
		25.346138, 28.906170, 26.704430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554831, 29.265167, 26.536758>,  <24.730494, 28.761133, 27.004339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554831, 29.265167, 26.536758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.914265, 29.140442, 26.413265>,  <25.129925, 29.065607, 26.339169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.914265, 29.140442, 26.413265>,  <24.554831, 29.265167, 26.536758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914265, 29.140442, 26.413265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320197, 0.015127, -0.947230,
		0.300028, 0.950023, -0.086248,
		0.898586, -0.311812, -0.308734,
		25.183840, 29.046898, 26.320644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798681, 29.772175, 25.951307>,  <24.554831, 29.265167, 26.536758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798681, 29.772175, 25.951307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.961967, 29.409739, 25.906839>,  <25.059938, 29.192276, 25.880159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.961967, 29.409739, 25.906839>,  <24.798681, 29.772175, 25.951307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961967, 29.409739, 25.906839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269894, -0.003456, -0.962884,
		0.872076, 0.423069, -0.245959,
		0.408216, -0.906091, -0.111170,
		25.084433, 29.137911, 25.873487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.482307, 31.405483, 37.414860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659214, 31.122480, 37.194374>,  <35.765358, 30.952679, 37.062084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659214, 31.122480, 37.194374>,  <35.482307, 31.405483, 37.414860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659214, 31.122480, 37.194374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752493, 0.041686, -0.657280,
		0.488007, 0.705477, -0.513956,
		0.442271, -0.707505, -0.551210,
		35.791897, 30.910229, 37.029011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179401, 31.503822, 36.778465>,  <35.482307, 31.405483, 37.414860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179401, 31.503822, 36.778465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404682, 31.175926, 36.736851>,  <35.539852, 30.979187, 36.711884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404682, 31.175926, 36.736851>,  <35.179401, 31.503822, 36.778465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404682, 31.175926, 36.736851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606525, -0.324602, -0.725783,
		0.561185, 0.471864, -0.680011,
		0.563204, -0.819743, -0.104036,
		35.573643, 30.930004, 36.705639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361866, 31.520550, 36.072010>,  <35.179401, 31.503822, 36.778465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361866, 31.520550, 36.072010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420933, 31.154465, 36.221989>,  <35.456371, 30.934814, 36.311977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420933, 31.154465, 36.221989>,  <35.361866, 31.520550, 36.072010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420933, 31.154465, 36.221989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646142, -0.376287, -0.664010,
		0.748796, -0.144215, -0.646921,
		0.147667, -0.915210, 0.374945,
		35.465233, 30.879902, 36.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327801, 31.063004, 35.452515>,  <35.361866, 31.520550, 36.072010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327801, 31.063004, 35.452515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271400, 30.819025, 35.764435>,  <35.237560, 30.672638, 35.951588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271400, 30.819025, 35.764435>,  <35.327801, 31.063004, 35.452515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271400, 30.819025, 35.764435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769920, -0.427607, -0.473684,
		0.622369, -0.667169, -0.409319,
		-0.140999, -0.609949, 0.779796,
		35.229099, 30.636040, 35.998375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326122, 30.367767, 35.206932>,  <35.327801, 31.063004, 35.452515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326122, 30.367767, 35.206932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133831, 30.352196, 35.557335>,  <35.018456, 30.342854, 35.767574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133831, 30.352196, 35.557335>,  <35.326122, 30.367767, 35.206932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133831, 30.352196, 35.557335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742099, -0.514108, -0.430096,
		0.467103, -0.856842, 0.218259,
		-0.480733, -0.038930, 0.876003,
		34.989613, 30.340517, 35.820137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042648, 29.699858, 35.227222>,  <35.326122, 30.367767, 35.206932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042648, 29.699858, 35.227222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812763, 29.909292, 35.478798>,  <34.674831, 30.034954, 35.629742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812763, 29.909292, 35.478798>,  <35.042648, 29.699858, 35.227222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812763, 29.909292, 35.478798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805449, -0.497853, -0.321551,
		0.144757, -0.691375, 0.707846,
		-0.574715, 0.523587, 0.628935,
		34.640350, 30.066368, 35.667477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583992, 29.212404, 35.561138>,  <35.042648, 29.699858, 35.227222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583992, 29.212404, 35.561138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.412628, 29.565121, 35.640045>,  <34.309811, 29.776751, 35.687389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.412628, 29.565121, 35.640045>,  <34.583992, 29.212404, 35.561138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412628, 29.565121, 35.640045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865309, -0.337496, -0.370590,
		-0.260207, -0.329458, 0.907607,
		-0.428407, 0.881790, 0.197264,
		34.284107, 29.829659, 35.699223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065002, 29.036001, 35.989738>,  <34.583992, 29.212404, 35.561138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065002, 29.036001, 35.989738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951633, 29.377258, 35.814548>,  <33.883614, 29.582012, 35.709435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951633, 29.377258, 35.814548>,  <34.065002, 29.036001, 35.989738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951633, 29.377258, 35.814548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907580, -0.386151, -0.164883,
		-0.309793, 0.350764, 0.883738,
		-0.283421, 0.853142, -0.437973,
		33.866608, 29.633202, 35.683155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417545, 29.171511, 36.256359>,  <34.065002, 29.036001, 35.989738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417545, 29.171511, 36.256359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435387, 29.402773, 35.930477>,  <33.446091, 29.541531, 35.734947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435387, 29.402773, 35.930477>,  <33.417545, 29.171511, 36.256359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435387, 29.402773, 35.930477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993879, -0.056825, -0.094736,
		-0.101068, 0.813947, 0.572080,
		0.044601, 0.578153, -0.814708,
		33.448769, 29.576220, 35.686066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890675, 29.753920, 36.199825>,  <33.417545, 29.171511, 36.256359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890675, 29.753920, 36.199825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982025, 29.711048, 35.812763>,  <33.036835, 29.685326, 35.580524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982025, 29.711048, 35.812763>,  <32.890675, 29.753920, 36.199825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982025, 29.711048, 35.812763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973074, 0.006696, -0.230396,
		0.031173, 0.994217, -0.102762,
		0.228376, -0.107178, -0.967656,
		33.050537, 29.678894, 35.522465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455620, 30.212091, 35.825466>,  <32.890675, 29.753920, 36.199825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455620, 30.212091, 35.825466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570717, 29.979767, 35.520870>,  <32.639774, 29.840372, 35.338112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570717, 29.979767, 35.520870>,  <32.455620, 30.212091, 35.825466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570717, 29.979767, 35.520870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956204, -0.129693, -0.262398,
		0.053645, 0.803640, -0.592693,
		0.287742, -0.580812, -0.761486,
		32.657040, 29.805523, 35.292423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291466, 30.554386, 35.177101>,  <32.455620, 30.212091, 35.825466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291466, 30.554386, 35.177101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304913, 30.161722, 35.102039>,  <32.312981, 29.926125, 35.057003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304913, 30.161722, 35.102039>,  <32.291466, 30.554386, 35.177101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304913, 30.161722, 35.102039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988948, -0.005544, -0.148161,
		0.144404, 0.190558, -0.970997,
		0.033617, -0.981660, -0.187651,
		32.314999, 29.867224, 35.045746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572044, 31.205496, 34.965332>,  <32.291466, 30.554386, 35.177101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572044, 31.205496, 34.965332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386040, 31.559607, 34.968044>,  <32.274437, 31.772074, 34.969673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386040, 31.559607, 34.968044>,  <32.572044, 31.205496, 34.965332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386040, 31.559607, 34.968044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534339, 0.274554, 0.799439,
		0.705862, 0.375375, -0.600709,
		-0.465016, 0.885276, 0.006780,
		32.246536, 31.825190, 34.970078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171539, 31.720846, 35.159573>,  <32.572044, 31.205496, 34.965332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171539, 31.720846, 35.159573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810295, 31.873512, 35.238277>,  <32.593548, 31.965111, 35.285500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810295, 31.873512, 35.238277>,  <33.171539, 31.720846, 35.159573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810295, 31.873512, 35.238277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295721, 0.220571, 0.929461,
		0.311341, 0.897597, -0.312067,
		-0.903114, 0.381664, 0.196765,
		32.539360, 31.988012, 35.297306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306049, 32.347832, 35.458130>,  <33.171539, 31.720846, 35.159573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306049, 32.347832, 35.458130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932526, 32.252796, 35.565128>,  <32.708412, 32.195774, 35.629326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932526, 32.252796, 35.565128>,  <33.306049, 32.347832, 35.458130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932526, 32.252796, 35.565128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215465, 0.223410, 0.950612,
		-0.285614, 0.945326, -0.157430,
		-0.933809, -0.237587, 0.267494,
		32.652382, 32.181519, 35.645378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067299, 32.816540, 35.932507>,  <33.306049, 32.347832, 35.458130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067299, 32.816540, 35.932507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777119, 32.550968, 36.005085>,  <32.603012, 32.391624, 36.048630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777119, 32.550968, 36.005085>,  <33.067299, 32.816540, 35.932507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777119, 32.550968, 36.005085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025897, 0.237105, 0.971139,
		-0.687789, 0.709210, -0.154814,
		-0.725449, -0.663929, 0.181444,
		32.559483, 32.351788, 36.059517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531178, 33.218807, 36.298466>,  <33.067299, 32.816540, 35.932507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531178, 33.218807, 36.298466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510033, 32.827538, 36.378853>,  <32.497345, 32.592777, 36.427086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510033, 32.827538, 36.378853>,  <32.531178, 33.218807, 36.298466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510033, 32.827538, 36.378853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045856, 0.198664, 0.978994,
		-0.997549, 0.060966, 0.034353,
		-0.052861, -0.978170, 0.200972,
		32.494175, 32.534088, 36.439144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083721, 33.175243, 36.781750>,  <32.531178, 33.218807, 36.298466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083721, 33.175243, 36.781750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304157, 32.843510, 36.818615>,  <32.436420, 32.644470, 36.840736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304157, 32.843510, 36.818615>,  <32.083721, 33.175243, 36.781750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304157, 32.843510, 36.818615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036682, 0.134422, 0.990245,
		-0.833636, -0.542337, 0.104501,
		0.551094, -0.829338, 0.092165,
		32.469486, 32.594707, 36.846264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713585, 32.878475, 37.265121>,  <32.083721, 33.175243, 36.781750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713585, 32.878475, 37.265121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068638, 32.694557, 37.254536>,  <32.281670, 32.584206, 37.248184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068638, 32.694557, 37.254536>,  <31.713585, 32.878475, 37.265121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068638, 32.694557, 37.254536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082714, 0.102624, 0.991275,
		-0.453068, -0.882075, 0.129123,
		0.887631, -0.459796, -0.026465,
		32.334927, 32.556618, 37.246597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699444, 32.341797, 37.737652>,  <31.713585, 32.878475, 37.265121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699444, 32.341797, 37.737652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083393, 32.443027, 37.689331>,  <32.313763, 32.503765, 37.660339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083393, 32.443027, 37.689331>,  <31.699444, 32.341797, 37.737652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083393, 32.443027, 37.689331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126127, -0.004872, 0.992002,
		0.250463, -0.967434, -0.036596,
		0.959875, 0.253076, -0.120799,
		32.371357, 32.518951, 37.653091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106373, 31.947409, 38.306465>,  <31.699444, 32.341797, 37.737652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106373, 31.947409, 38.306465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.351002, 32.240784, 38.187771>,  <32.497780, 32.416809, 38.116554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.351002, 32.240784, 38.187771>,  <32.106373, 31.947409, 38.306465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351002, 32.240784, 38.187771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238871, 0.186389, 0.952995,
		0.754269, -0.653706, -0.061207,
		0.611570, 0.733435, -0.296739,
		32.534473, 32.460815, 38.098747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560417, 31.891680, 38.830379>,  <32.106373, 31.947409, 38.306465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560417, 31.891680, 38.830379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644638, 32.244362, 38.661491>,  <32.695171, 32.455971, 38.560158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644638, 32.244362, 38.661491>,  <32.560417, 31.891680, 38.830379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644638, 32.244362, 38.661491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284963, 0.357789, 0.889260,
		0.935129, -0.307549, -0.175921,
		0.210548, 0.881703, -0.422219,
		32.707802, 32.508873, 38.534824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284859, 32.072372, 38.998241>,  <32.560417, 31.891680, 38.830379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284859, 32.072372, 38.998241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056313, 32.394112, 38.933060>,  <32.919186, 32.587154, 38.893951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056313, 32.394112, 38.933060>,  <33.284859, 32.072372, 38.998241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056313, 32.394112, 38.933060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282044, 0.378917, 0.881404,
		0.770706, 0.457646, -0.443364,
		-0.571369, 0.804352, -0.162958,
		32.884903, 32.635418, 38.884171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676147, 32.713936, 39.176380>,  <33.284859, 32.072372, 38.998241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676147, 32.713936, 39.176380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285992, 32.802040, 39.180450>,  <33.051899, 32.854904, 39.182892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285992, 32.802040, 39.180450>,  <33.676147, 32.713936, 39.176380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285992, 32.802040, 39.180450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136808, 0.568339, 0.811341,
		0.172921, 0.792765, -0.584485,
		-0.975388, 0.220260, 0.010179,
		32.993374, 32.868118, 39.183502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660629, 33.437576, 39.314247>,  <33.676147, 32.713936, 39.176380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660629, 33.437576, 39.314247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284828, 33.333504, 39.403362>,  <33.059345, 33.271061, 39.456833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284828, 33.333504, 39.403362>,  <33.660629, 33.437576, 39.314247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284828, 33.333504, 39.403362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022828, 0.696535, 0.717159,
		-0.341772, 0.668689, -0.660338,
		-0.939506, -0.260179, 0.222792,
		33.002975, 33.255451, 39.470200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307049, 33.957424, 39.205021>,  <33.660629, 33.437576, 39.314247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307049, 33.957424, 39.205021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088757, 33.762058, 39.477383>,  <32.957783, 33.644840, 39.640800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088757, 33.762058, 39.477383>,  <33.307049, 33.957424, 39.205021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088757, 33.762058, 39.477383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098791, 0.844407, 0.526514,
		-0.832119, 0.220066, -0.509067,
		-0.545727, -0.488414, 0.680907,
		32.925037, 33.615536, 39.681656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746376, 34.403568, 39.354115>,  <33.307049, 33.957424, 39.205021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746376, 34.403568, 39.354115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739792, 34.171539, 39.679874>,  <32.735840, 34.032322, 39.875328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739792, 34.171539, 39.679874>,  <32.746376, 34.403568, 39.354115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739792, 34.171539, 39.679874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173109, 0.803859, 0.569072,
		-0.984765, -0.131613, -0.113647,
		-0.016459, -0.580076, 0.814396,
		32.734856, 33.997517, 39.924194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038040, 35.052795, 38.973190>,  <32.746376, 34.403568, 39.354115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038040, 35.052795, 38.973190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330372, 35.160366, 38.722248>,  <33.505772, 35.224907, 38.571682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330372, 35.160366, 38.722248>,  <33.038040, 35.052795, 38.973190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330372, 35.160366, 38.722248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623719, 0.636455, -0.453762,
		0.277255, 0.722914, 0.632872,
		0.730825, 0.268926, -0.627355,
		33.549618, 35.241043, 38.534042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984581, 35.723747, 38.720123>,  <33.038040, 35.052795, 38.973190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984581, 35.723747, 38.720123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189568, 35.544353, 38.427208>,  <33.312557, 35.436718, 38.251461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189568, 35.544353, 38.427208>,  <32.984581, 35.723747, 38.720123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189568, 35.544353, 38.427208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534290, 0.501067, -0.680783,
		0.672247, 0.740128, 0.017156,
		0.512463, -0.448488, -0.732284,
		33.343307, 35.409805, 38.207523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118622, 36.170185, 38.174046>,  <32.984581, 35.723747, 38.720123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118622, 36.170185, 38.174046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158951, 35.814388, 37.995770>,  <33.183147, 35.600910, 37.888802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158951, 35.814388, 37.995770>,  <33.118622, 36.170185, 38.174046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158951, 35.814388, 37.995770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655144, 0.277783, -0.702583,
		0.748747, 0.362826, -0.554739,
		0.100818, -0.889491, -0.445693,
		33.189198, 35.547543, 37.862061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330090, 36.302406, 37.429901>,  <33.118622, 36.170185, 38.174046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330090, 36.302406, 37.429901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184414, 35.929890, 37.426693>,  <33.097008, 35.706379, 37.424767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184414, 35.929890, 37.426693>,  <33.330090, 36.302406, 37.429901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184414, 35.929890, 37.426693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373565, 0.153966, -0.914737,
		0.853120, -0.330145, -0.403970,
		-0.364193, -0.931289, -0.008021,
		33.075157, 35.650501, 37.424286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477627, 35.992313, 36.726730>,  <33.330090, 36.302406, 37.429901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477627, 35.992313, 36.726730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170486, 35.774189, 36.861214>,  <32.986202, 35.643314, 36.941902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170486, 35.774189, 36.861214>,  <33.477627, 35.992313, 36.726730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170486, 35.774189, 36.861214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495686, 0.173274, -0.851041,
		0.405826, -0.820129, -0.403352,
		-0.767855, -0.545311, 0.336207,
		32.940128, 35.610596, 36.962074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326077, 35.611141, 36.151840>,  <33.477627, 35.992313, 36.726730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326077, 35.611141, 36.151840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995461, 35.589672, 36.375965>,  <32.797092, 35.576790, 36.510441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995461, 35.589672, 36.375965>,  <33.326077, 35.611141, 36.151840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995461, 35.589672, 36.375965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561108, 0.157452, -0.812630,
		-0.044608, -0.986067, -0.160255,
		-0.826540, -0.053671, 0.560314,
		32.747498, 35.573570, 36.544060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926960, 35.100731, 35.792175>,  <33.326077, 35.611141, 36.151840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926960, 35.100731, 35.792175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648079, 35.247902, 36.038277>,  <32.480751, 35.336205, 36.185936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648079, 35.247902, 36.038277>,  <32.926960, 35.100731, 35.792175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648079, 35.247902, 36.038277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665725, -0.013935, -0.746067,
		-0.265923, -0.929751, 0.254652,
		-0.697206, 0.367924, 0.615253,
		32.438915, 35.358280, 36.222851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370918, 34.676365, 35.669609>,  <32.926960, 35.100731, 35.792175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370918, 34.676365, 35.669609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249397, 35.027279, 35.818241>,  <32.176483, 35.237827, 35.907421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249397, 35.027279, 35.818241>,  <32.370918, 34.676365, 35.669609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249397, 35.027279, 35.818241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812592, -0.034987, -0.581781,
		-0.497389, -0.478688, 0.723506,
		-0.303805, 0.877288, 0.371576,
		32.158257, 35.290466, 35.929714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595997, 34.709019, 35.724258>,  <32.370918, 34.676365, 35.669609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595997, 34.709019, 35.724258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726467, 35.086906, 35.710899>,  <31.804749, 35.313641, 35.702885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726467, 35.086906, 35.710899>,  <31.595997, 34.709019, 35.724258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726467, 35.086906, 35.710899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648389, 0.197873, -0.735145,
		-0.687898, 0.261440, 0.677086,
		0.326174, 0.944720, -0.033398,
		31.824320, 35.370323, 35.700878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965670, 35.180054, 35.855244>,  <31.595997, 34.709019, 35.724258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965670, 35.180054, 35.855244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256670, 35.369755, 35.656921>,  <31.431271, 35.483578, 35.537926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256670, 35.369755, 35.656921>,  <30.965670, 35.180054, 35.855244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256670, 35.369755, 35.656921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630886, 0.178358, -0.755097,
		-0.269677, 0.862131, 0.428956,
		0.727500, 0.474255, -0.495808,
		31.474920, 35.512032, 35.508179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637001, 35.616318, 35.352196>,  <30.965670, 35.180054, 35.855244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637001, 35.616318, 35.352196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012194, 35.583927, 35.217354>,  <31.237309, 35.564495, 35.136448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012194, 35.583927, 35.217354>,  <30.637001, 35.616318, 35.352196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012194, 35.583927, 35.217354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310861, 0.234046, -0.921188,
		0.153489, 0.968848, 0.194359,
		0.937980, -0.080974, -0.337100,
		31.293589, 35.559635, 35.116222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644129, 36.084129, 34.782711>,  <30.637001, 35.616318, 35.352196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644129, 36.084129, 34.782711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957067, 35.839443, 34.735832>,  <31.144831, 35.692631, 34.707706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957067, 35.839443, 34.735832>,  <30.644129, 36.084129, 34.782711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957067, 35.839443, 34.735832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055804, 0.118563, -0.991377,
		0.620339, 0.782140, 0.058621,
		0.782346, -0.611719, -0.117195,
		31.191771, 35.655926, 34.700672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073633, 36.416420, 34.202682>,  <30.644129, 36.084129, 34.782711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073633, 36.416420, 34.202682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.160452, 36.026302, 34.219105>,  <31.212543, 35.792233, 34.228958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.160452, 36.026302, 34.219105>,  <31.073633, 36.416420, 34.202682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160452, 36.026302, 34.219105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184517, -0.082295, -0.979378,
		0.958564, 0.204993, -0.197821,
		0.217046, -0.975297, 0.041060,
		31.225565, 35.733711, 34.231422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617188, 36.299072, 33.754372>,  <31.073633, 36.416420, 34.202682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617188, 36.299072, 33.754372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.441027, 35.944359, 33.810471>,  <31.335331, 35.731533, 33.844128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.441027, 35.944359, 33.810471>,  <31.617188, 36.299072, 33.754372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441027, 35.944359, 33.810471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032614, -0.171909, -0.984573,
		0.897208, -0.429034, 0.104630,
		-0.440402, -0.886779, 0.140246,
		31.308907, 35.678326, 33.852543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089554, 35.874210, 33.449703>,  <31.617188, 36.299072, 33.754372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089554, 35.874210, 33.449703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740061, 35.684242, 33.491714>,  <31.530363, 35.570259, 33.516922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740061, 35.684242, 33.491714>,  <32.089554, 35.874210, 33.449703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740061, 35.684242, 33.491714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042488, -0.140575, -0.989158,
		0.484539, -0.868726, 0.102647,
		-0.873738, -0.474925, 0.105024,
		31.477940, 35.541763, 33.523220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168980, 35.393608, 32.955334>,  <32.089554, 35.874210, 33.449703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168980, 35.393608, 32.955334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778934, 35.398827, 33.043858>,  <31.544907, 35.401958, 33.096973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778934, 35.398827, 33.043858>,  <32.168980, 35.393608, 32.955334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778934, 35.398827, 33.043858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217859, -0.241287, -0.945684,
		0.041064, -0.970366, 0.238125,
		-0.975116, 0.013044, 0.221311,
		31.486399, 35.402740, 33.110252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898643, 34.738972, 32.584709>,  <32.168980, 35.393608, 32.955334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898643, 34.738972, 32.584709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583191, 34.973953, 32.657333>,  <31.393919, 35.114941, 32.700909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583191, 34.973953, 32.657333>,  <31.898643, 34.738972, 32.584709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583191, 34.973953, 32.657333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229933, -0.007905, -0.973174,
		-0.570258, -0.809220, 0.141309,
		-0.788629, 0.587452, 0.181559,
		31.346601, 35.150188, 32.711800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359541, 34.416870, 32.182808>,  <31.898643, 34.738972, 32.584709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359541, 34.416870, 32.182808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203127, 34.777073, 32.258896>,  <31.109278, 34.993195, 32.304550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203127, 34.777073, 32.258896>,  <31.359541, 34.416870, 32.182808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203127, 34.777073, 32.258896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360672, 0.040221, -0.931825,
		-0.846762, -0.432986, 0.309058,
		-0.391036, 0.900503, 0.190223,
		31.085815, 35.047222, 32.315964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755730, 34.272823, 31.955654>,  <31.359541, 34.416870, 32.182808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755730, 34.272823, 31.955654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795488, 34.670841, 31.955267>,  <30.819344, 34.909653, 31.955034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795488, 34.670841, 31.955267>,  <30.755730, 34.272823, 31.955654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795488, 34.670841, 31.955267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490692, 0.048168, -0.870000,
		-0.865645, 0.086952, 0.493050,
		0.099398, 0.995047, -0.000970,
		30.825308, 34.969357, 31.954975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064260, 34.625832, 31.897362>,  <30.755730, 34.272823, 31.955654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064260, 34.625832, 31.897362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352631, 34.868752, 31.763819>,  <30.525652, 35.014503, 31.683693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352631, 34.868752, 31.763819>,  <30.064260, 34.625832, 31.897362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352631, 34.868752, 31.763819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386267, -0.047851, -0.921145,
		-0.575382, 0.793034, 0.200081,
		0.720925, 0.607295, -0.333855,
		30.568909, 35.050941, 31.663662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692402, 35.159840, 31.426987>,  <30.064260, 34.625832, 31.897362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692402, 35.159840, 31.426987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.075327, 35.181808, 31.313471>,  <30.305082, 35.194988, 31.245361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.075327, 35.181808, 31.313471>,  <29.692402, 35.159840, 31.426987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075327, 35.181808, 31.313471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287266, 0.071667, -0.955166,
		-0.032122, 0.995915, 0.084385,
		0.957312, 0.054923, -0.283791,
		30.362520, 35.198284, 31.228334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764809, 35.825962, 31.201385>,  <29.692402, 35.159840, 31.426987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764809, 35.825962, 31.201385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.058680, 35.608608, 31.038912>,  <30.235003, 35.478195, 30.941427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.058680, 35.608608, 31.038912>,  <29.764809, 35.825962, 31.201385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058680, 35.608608, 31.038912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325944, 0.242379, -0.913791,
		0.594989, 0.803733, 0.000958,
		0.734676, -0.543383, -0.406185,
		30.279083, 35.445595, 30.917057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863791, 36.202793, 30.633083>,  <29.764809, 35.825962, 31.201385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863791, 36.202793, 30.633083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062128, 35.869469, 30.535326>,  <30.181129, 35.669472, 30.476671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062128, 35.869469, 30.535326>,  <29.863791, 36.202793, 30.633083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062128, 35.869469, 30.535326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177671, 0.178126, -0.967835,
		0.850043, 0.523315, -0.059733,
		0.495842, -0.833314, -0.244393,
		30.210880, 35.619476, 30.462008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306498, 36.406780, 30.047318>,  <29.863791, 36.202793, 30.633083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306498, 36.406780, 30.047318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.260122, 36.009563, 30.055607>,  <30.232298, 35.771233, 30.060581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.260122, 36.009563, 30.055607>,  <30.306498, 36.406780, 30.047318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260122, 36.009563, 30.055607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246515, 0.008556, -0.969101,
		0.962179, -0.117464, -0.245792,
		-0.115938, -0.993040, 0.020724,
		30.225342, 35.711651, 30.061825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706587, 36.121944, 29.431999>,  <30.306498, 36.406780, 30.047318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706587, 36.121944, 29.431999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.440386, 35.843052, 29.538561>,  <30.280666, 35.675716, 29.602497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.440386, 35.843052, 29.538561>,  <30.706587, 36.121944, 29.431999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440386, 35.843052, 29.538561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260188, -0.117822, -0.958342,
		0.699578, -0.707093, -0.103001,
		-0.665501, -0.697235, 0.266403,
		30.240736, 35.633881, 29.618483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848991, 35.488838, 29.012138>,  <30.706587, 36.121944, 29.431999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848991, 35.488838, 29.012138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466927, 35.504833, 29.129484>,  <30.237688, 35.514431, 29.199892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466927, 35.504833, 29.129484>,  <30.848991, 35.488838, 29.012138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466927, 35.504833, 29.129484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293309, 0.007384, -0.955989,
		-0.040406, -0.999172, 0.004679,
		-0.955163, 0.040000, 0.293365,
		30.180378, 35.516830, 29.217493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484797, 34.974281, 28.623270>,  <30.848991, 35.488838, 29.012138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484797, 34.974281, 28.623270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191994, 35.206367, 28.766104>,  <30.016312, 35.345619, 28.851805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191994, 35.206367, 28.766104>,  <30.484797, 34.974281, 28.623270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191994, 35.206367, 28.766104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564525, -0.223137, -0.794683,
		-0.381409, -0.783299, 0.490886,
		-0.732010, 0.580217, 0.357086,
		29.972391, 35.380432, 28.873230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542826, 34.194897, 28.731022>,  <30.484797, 34.974281, 28.623270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542826, 34.194897, 28.731022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.802265, 34.052891, 28.461716>,  <30.957930, 33.967690, 28.300133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.802265, 34.052891, 28.461716>,  <30.542826, 34.194897, 28.731022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802265, 34.052891, 28.461716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759642, 0.246658, 0.601751,
		-0.047562, -0.901735, 0.429664,
		0.648600, -0.355012, -0.673264,
		30.996845, 33.946388, 28.259737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837452, 33.595882, 29.130857>,  <30.542826, 34.194897, 28.731022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837452, 33.595882, 29.130857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076611, 33.729988, 28.839621>,  <31.220106, 33.810452, 28.664879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076611, 33.729988, 28.839621>,  <30.837452, 33.595882, 29.130857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076611, 33.729988, 28.839621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680486, 0.267746, 0.682093,
		0.423627, -0.903276, -0.068060,
		0.597896, 0.335267, -0.728091,
		31.255980, 33.830566, 28.621193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423782, 33.223705, 29.285280>,  <30.837452, 33.595882, 29.130857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423782, 33.223705, 29.285280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513208, 33.520470, 29.032427>,  <31.566864, 33.698528, 28.880714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513208, 33.520470, 29.032427>,  <31.423782, 33.223705, 29.285280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513208, 33.520470, 29.032427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799859, 0.230972, 0.553965,
		0.556997, -0.629463, -0.541785,
		0.223563, 0.741908, -0.632132,
		31.580276, 33.743042, 28.842787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098629, 33.140026, 29.065840>,  <31.423782, 33.223705, 29.285280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098629, 33.140026, 29.065840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059803, 33.532185, 28.997261>,  <32.036507, 33.767479, 28.956114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059803, 33.532185, 28.997261>,  <32.098629, 33.140026, 29.065840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059803, 33.532185, 28.997261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850843, 0.171108, 0.496778,
		0.516377, -0.097655, -0.850775,
		-0.097062, 0.980401, -0.171445,
		32.030685, 33.826305, 28.945827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670509, 33.433182, 28.754038>,  <32.098629, 33.140026, 29.065840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670509, 33.433182, 28.754038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492420, 33.717476, 28.971895>,  <32.385567, 33.888054, 29.102610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492420, 33.717476, 28.971895>,  <32.670509, 33.433182, 28.754038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492420, 33.717476, 28.971895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867607, 0.191987, 0.458693,
		0.221444, 0.676756, -0.702114,
		-0.445220, 0.710734, 0.544644,
		32.358852, 33.930695, 29.135288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
