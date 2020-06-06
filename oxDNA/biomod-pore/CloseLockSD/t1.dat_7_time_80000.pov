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
	<4.781206, 15.164182, 14.844533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.473913, 14.959261, 14.998087>,  <4.289537, 14.836308, 15.090219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.473913, 14.959261, 14.998087>,  <4.781206, 15.164182, 14.844533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.473913, 14.959261, 14.998087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524914, 0.847354, 0.080350,
		-0.366449, -0.139779, -0.919879,
		-0.768232, -0.512301, 0.383884,
		4.243443, 14.805571, 15.113252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.440116, 15.149865, 14.459765>,  <4.781206, 15.164182, 14.844533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.440116, 15.149865, 14.459765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.608916, 15.395598, 14.193079>,  <5.710196, 15.543038, 14.033068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.608916, 15.395598, 14.193079>,  <5.440116, 15.149865, 14.459765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.608916, 15.395598, 14.193079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698517, -0.689118, -0.192847,
		-0.577918, -0.384331, -0.719931,
		0.422000, 0.614334, -0.666715,
		5.735517, 15.579899, 13.993065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.460750, 14.786139, 13.825624>,  <5.440116, 15.149865, 14.459765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.460750, 14.786139, 13.825624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.729237, 15.081078, 13.795195>,  <5.890329, 15.258040, 13.776937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.729237, 15.081078, 13.795195>,  <5.460750, 14.786139, 13.825624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.729237, 15.081078, 13.795195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665358, -0.644547, -0.376640,
		-0.326748, 0.202190, -0.923231,
		0.671218, 0.737346, -0.076075,
		5.930603, 15.302281, 13.772372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.988265, 14.406322, 14.180447>,  <5.460750, 14.786139, 13.825624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.988265, 14.406322, 14.180447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347508, 14.348415, 14.014343>,  <6.563055, 14.313671, 13.914681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347508, 14.348415, 14.014343>,  <5.988265, 14.406322, 14.180447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.347508, 14.348415, 14.014343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288814, -0.906252, -0.308698,
		-0.331639, 0.397178, -0.855725,
		0.898110, -0.144769, -0.415259,
		6.616941, 14.304985, 13.889766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.954655, 14.080985, 13.495621>,  <5.988265, 14.406322, 14.180447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.954655, 14.080985, 13.495621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.323715, 14.009493, 13.632309>,  <6.545151, 13.966598, 13.714322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.323715, 14.009493, 13.632309>,  <5.954655, 14.080985, 13.495621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.323715, 14.009493, 13.632309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075020, -0.952372, -0.295567,
		0.378273, 0.247069, -0.892113,
		0.922649, -0.178731, 0.341722,
		6.600510, 13.955873, 13.734825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.313574, 13.697833, 12.983253>,  <5.954655, 14.080985, 13.495621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.313574, 13.697833, 12.983253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.506937, 13.616015, 13.323718>,  <6.622954, 13.566925, 13.527997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.506937, 13.616015, 13.323718>,  <6.313574, 13.697833, 12.983253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.506937, 13.616015, 13.323718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158606, -0.935761, -0.314952,
		0.860907, 0.287250, -0.419912,
		0.483407, -0.204544, 0.851164,
		6.651959, 13.554652, 13.579067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.937757, 13.302268, 12.766246>,  <6.313574, 13.697833, 12.983253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.937757, 13.302268, 12.766246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.859364, 13.228947, 13.151575>,  <6.812327, 13.184954, 13.382772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.859364, 13.228947, 13.151575>,  <6.937757, 13.302268, 12.766246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.859364, 13.228947, 13.151575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265488, -0.955603, -0.127821,
		0.943984, 0.230700, 0.235948,
		-0.195984, -0.183302, 0.963322,
		6.800568, 13.173956, 13.440572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.411561, 12.903451, 12.939807>,  <6.937757, 13.302268, 12.766246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.411561, 12.903451, 12.939807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.118285, 12.839955, 13.204301>,  <6.942319, 12.801858, 13.362997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.118285, 12.839955, 13.204301>,  <7.411561, 12.903451, 12.939807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.118285, 12.839955, 13.204301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148284, -0.986295, -0.072354,
		0.663659, 0.045001, 0.746680,
		-0.733191, -0.158739, 0.661236,
		6.898327, 12.792334, 13.402672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.688369, 12.535831, 13.347369>,  <7.411561, 12.903451, 12.939807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.688369, 12.535831, 13.347369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.309023, 12.455923, 13.445916>,  <7.081415, 12.407978, 13.505044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.309023, 12.455923, 13.445916>,  <7.688369, 12.535831, 13.347369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.309023, 12.455923, 13.445916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227043, -0.969947, 0.087484,
		0.221486, 0.138903, 0.965220,
		-0.948364, -0.199770, 0.246366,
		7.024514, 12.395992, 13.519826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.691042, 12.022202, 13.879336>,  <7.688369, 12.535831, 13.347369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.691042, 12.022202, 13.879336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.326057, 12.002711, 13.716837>,  <7.107066, 11.991017, 13.619337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.326057, 12.002711, 13.716837>,  <7.691042, 12.022202, 13.879336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.326057, 12.002711, 13.716837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100601, -0.989122, -0.107322,
		-0.396600, -0.138796, 0.907438,
		-0.912463, -0.048725, -0.406249,
		7.052318, 11.988093, 13.594962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.409055, 11.524338, 14.308317>,  <7.691042, 12.022202, 13.879336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.409055, 11.524338, 14.308317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.152621, 11.527942, 14.001350>,  <6.998760, 11.530104, 13.817170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.152621, 11.527942, 14.001350>,  <7.409055, 11.524338, 14.308317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.152621, 11.527942, 14.001350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122771, -0.985850, -0.114134,
		-0.757586, -0.167386, 0.630909,
		-0.641086, 0.009009, -0.767416,
		6.960295, 11.530644, 13.771126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.891870, 11.005613, 14.459367>,  <7.409055, 11.524338, 14.308317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.891870, 11.005613, 14.459367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.916033, 11.062789, 14.064212>,  <6.930531, 11.097095, 13.827119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.916033, 11.062789, 14.064212>,  <6.891870, 11.005613, 14.459367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.916033, 11.062789, 14.064212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211192, -0.969118, -0.127310,
		-0.975576, -0.200943, -0.088730,
		0.060408, 0.142939, -0.987886,
		6.934155, 11.105671, 13.767846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.612242, 10.397897, 14.165590>,  <6.891870, 11.005613, 14.459367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.612242, 10.397897, 14.165590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.849229, 10.570118, 13.893236>,  <6.991422, 10.673450, 13.729824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.849229, 10.570118, 13.893236>,  <6.612242, 10.397897, 14.165590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.849229, 10.570118, 13.893236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244641, -0.901441, -0.357148,
		-0.767549, 0.045028, -0.639407,
		0.592470, 0.430554, -0.680884,
		7.026970, 10.699284, 13.688971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.439190, 10.075877, 13.555798>,  <6.612242, 10.397897, 14.165590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.439190, 10.075877, 13.555798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.793958, 10.253194, 13.503848>,  <7.006819, 10.359584, 13.472678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.793958, 10.253194, 13.503848>,  <6.439190, 10.075877, 13.555798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.793958, 10.253194, 13.503848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357450, -0.836721, -0.414883,
		-0.292582, 0.321545, -0.900558,
		0.886919, 0.443291, -0.129873,
		7.060034, 10.386181, 13.464886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.654958, 9.748034, 12.978140>,  <6.439190, 10.075877, 13.555798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.654958, 9.748034, 12.978140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.984622, 9.920556, 13.124965>,  <7.182420, 10.024070, 13.213059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.984622, 9.920556, 13.124965>,  <6.654958, 9.748034, 12.978140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.984622, 9.920556, 13.124965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533337, -0.809107, -0.246772,
		0.190559, 0.399148, -0.896866,
		0.824159, 0.431307, 0.367063,
		7.231869, 10.049949, 13.235084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.138915, 9.673158, 12.443583>,  <6.654958, 9.748034, 12.978140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.138915, 9.673158, 12.443583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.361777, 9.698680, 12.774765>,  <7.495494, 9.713993, 12.973474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.361777, 9.698680, 12.774765>,  <7.138915, 9.673158, 12.443583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.361777, 9.698680, 12.774765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642433, -0.664878, -0.381075,
		0.526173, 0.744222, -0.411431,
		0.557156, 0.063805, 0.827953,
		7.528924, 9.717821, 13.023151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.768811, 9.801683, 12.281624>,  <7.138915, 9.673158, 12.443583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.768811, 9.801683, 12.281624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.827190, 9.653172, 12.648416>,  <7.862217, 9.564066, 12.868491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.827190, 9.653172, 12.648416>,  <7.768811, 9.801683, 12.281624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.827190, 9.653172, 12.648416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609453, -0.696387, -0.378962,
		0.779273, 0.614164, 0.124641,
		0.145947, -0.371278, 0.916980,
		7.870974, 9.541789, 12.923510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.473860, 9.803583, 12.356429>,  <7.768811, 9.801683, 12.281624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.473860, 9.803583, 12.356429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.362408, 9.537198, 12.633227>,  <8.295537, 9.377367, 12.799307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.362408, 9.537198, 12.633227>,  <8.473860, 9.803583, 12.356429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.362408, 9.537198, 12.633227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744525, -0.604928, -0.282391,
		0.606670, 0.436526, 0.664376,
		-0.278629, -0.665963, 0.691997,
		8.278819, 9.337409, 12.840826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.106914, 9.584946, 12.612953>,  <8.473860, 9.803583, 12.356429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.106914, 9.584946, 12.612953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.879170, 9.303761, 12.783446>,  <8.742524, 9.135050, 12.885742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.879170, 9.303761, 12.783446>,  <9.106914, 9.584946, 12.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.879170, 9.303761, 12.783446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741773, -0.662807, -0.102277,
		0.354407, 0.257936, 0.898813,
		-0.569358, -0.702962, 0.426234,
		8.708363, 9.092872, 12.911317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.400467, 9.365230, 13.173270>,  <9.106914, 9.584946, 12.612953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.400467, 9.365230, 13.173270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.182420, 9.046015, 13.070521>,  <9.051591, 8.854486, 13.008872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.182420, 9.046015, 13.070521>,  <9.400467, 9.365230, 13.173270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.182420, 9.046015, 13.070521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811299, -0.579369, 0.078263,
		-0.211280, -0.165737, 0.963272,
		-0.545119, -0.798037, -0.256871,
		9.018885, 8.806603, 12.993460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.678061, 8.863724, 13.544936>,  <9.400467, 9.365230, 13.173270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.678061, 8.863724, 13.544936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.426220, 8.632833, 13.336931>,  <9.275116, 8.494300, 13.212128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.426220, 8.632833, 13.336931>,  <9.678061, 8.863724, 13.544936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.426220, 8.632833, 13.336931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613451, -0.780070, 0.123164,
		-0.476740, -0.241459, 0.845232,
		-0.629601, -0.577225, -0.520013,
		9.237340, 8.459666, 13.180927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.663112, 8.132666, 13.932405>,  <9.678061, 8.863724, 13.544936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.663112, 8.132666, 13.932405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.527929, 8.050553, 13.565005>,  <9.446819, 8.001286, 13.344565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.527929, 8.050553, 13.565005>,  <9.663112, 8.132666, 13.932405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.527929, 8.050553, 13.565005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705922, -0.700742, -0.103127,
		-0.622462, -0.683243, 0.381733,
		-0.337957, -0.205281, -0.918501,
		9.426542, 7.988969, 13.289454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.689898, 7.430902, 13.826084>,  <9.663112, 8.132666, 13.932405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.689898, 7.430902, 13.826084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.687957, 7.568236, 13.450404>,  <9.686792, 7.650636, 13.224996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.687957, 7.568236, 13.450404>,  <9.689898, 7.430902, 13.826084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.687957, 7.568236, 13.450404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670266, -0.695885, -0.257850,
		-0.742105, -0.630765, -0.226750,
		-0.004851, 0.343335, -0.939200,
		9.686502, 7.671237, 13.168644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.566175, 6.902293, 13.396541>,  <9.689898, 7.430902, 13.826084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.566175, 6.902293, 13.396541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.790000, 7.177990, 13.212440>,  <9.924294, 7.343409, 13.101979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.790000, 7.177990, 13.212440>,  <9.566175, 6.902293, 13.396541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.790000, 7.177990, 13.212440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692602, -0.693879, -0.197064,
		-0.455185, -0.208502, -0.865641,
		0.559562, 0.689245, -0.460252,
		9.957869, 7.384764, 13.074364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.955214, 6.563201, 12.884916>,  <9.566175, 6.902293, 13.396541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.955214, 6.563201, 12.884916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.171155, 6.897300, 12.926719>,  <10.300719, 7.097760, 12.951800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.171155, 6.897300, 12.926719>,  <9.955214, 6.563201, 12.884916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.171155, 6.897300, 12.926719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841757, -0.535973, -0.064640,
		0.002022, 0.122864, -0.992421,
		0.539853, 0.835247, 0.104506,
		10.333111, 7.147874, 12.958071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.696573, 6.424010, 12.614245>,  <9.955214, 6.563201, 12.884916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.696573, 6.424010, 12.614245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758616, 6.750279, 12.837178>,  <10.795842, 6.946040, 12.970938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758616, 6.750279, 12.837178>,  <10.696573, 6.424010, 12.614245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.758616, 6.750279, 12.837178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945401, -0.286245, 0.155819,
		0.286631, 0.502734, -0.815537,
		0.155108, 0.815673, 0.557333,
		10.805149, 6.994981, 13.004378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.354436, 6.717215, 12.497473>,  <10.696573, 6.424010, 12.614245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.354436, 6.717215, 12.497473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302935, 6.875958, 12.860994>,  <11.272034, 6.971204, 13.079107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302935, 6.875958, 12.860994>,  <11.354436, 6.717215, 12.497473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302935, 6.875958, 12.860994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959325, -0.182326, 0.215529,
		0.251234, 0.899589, -0.357241,
		-0.128753, 0.396859, 0.908805,
		11.264309, 6.995016, 13.133636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.067231, 7.240402, 12.087693>,  <11.354436, 6.717215, 12.497473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.067231, 7.240402, 12.087693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307767, 7.211255, 11.769427>,  <11.452088, 7.193766, 11.578467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307767, 7.211255, 11.769427>,  <11.067231, 7.240402, 12.087693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307767, 7.211255, 11.769427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480952, -0.828221, -0.287638,
		-0.638027, 0.555644, -0.533087,
		0.601339, -0.072868, -0.795665,
		11.488169, 7.189394, 11.530728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781803, 7.495087, 11.447099>,  <11.067231, 7.240402, 12.087693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781803, 7.495087, 11.447099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038011, 7.197179, 11.372205>,  <11.191735, 7.018435, 11.327269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038011, 7.197179, 11.372205>,  <10.781803, 7.495087, 11.447099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.038011, 7.197179, 11.372205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762073, -0.586351, -0.274659,
		0.094771, 0.318611, -0.943136,
		0.640518, -0.744768, -0.187236,
		11.230166, 6.973749, 11.316034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.857111, 7.359787, 10.698698>,  <10.781803, 7.495087, 11.447099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.857111, 7.359787, 10.698698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.908103, 7.024129, 10.910201>,  <10.938699, 6.822734, 11.037103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.908103, 7.024129, 10.910201>,  <10.857111, 7.359787, 10.698698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.908103, 7.024129, 10.910201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780613, -0.413765, -0.468447,
		0.611876, -0.353037, -0.707794,
		0.127481, -0.839145, 0.528758,
		10.946347, 6.772386, 11.068829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.579158, 7.361739, 10.423542>,  <10.857111, 7.359787, 10.698698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.579158, 7.361739, 10.423542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398050, 7.143646, 10.141344>,  <11.289386, 7.012791, 9.972025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398050, 7.143646, 10.141344>,  <11.579158, 7.361739, 10.423542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.398050, 7.143646, 10.141344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195696, 0.711184, -0.675219,
		0.869888, -0.443780, -0.215301,
		-0.452767, -0.545232, -0.705496,
		11.262220, 6.980077, 9.929695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308850, 7.517785, 10.321897>,  <11.579158, 7.361739, 10.423542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308850, 7.517785, 10.321897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.387641, 7.386254, 10.691344>,  <12.434916, 7.307335, 10.913013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.387641, 7.386254, 10.691344>,  <12.308850, 7.517785, 10.321897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.387641, 7.386254, 10.691344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530477, 0.828007, 0.181655,
		-0.824497, 0.454177, 0.337533,
		0.196976, -0.328828, 0.923619,
		12.446733, 7.287605, 10.968430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.992772, 7.946614, 10.943055>,  <12.308850, 7.517785, 10.321897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.992772, 7.946614, 10.943055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341908, 7.757008, 10.989471>,  <12.551389, 7.643245, 11.017321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341908, 7.757008, 10.989471>,  <11.992772, 7.946614, 10.943055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341908, 7.757008, 10.989471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411427, 0.842637, 0.347406,
		-0.262455, -0.255488, 0.930507,
		0.872838, -0.474014, 0.116040,
		12.603759, 7.614804, 11.024283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.238470, 7.880229, 11.752584>,  <11.992772, 7.946614, 10.943055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.238470, 7.880229, 11.752584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546824, 7.869919, 11.498003>,  <12.731837, 7.863732, 11.345255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546824, 7.869919, 11.498003>,  <12.238470, 7.880229, 11.752584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546824, 7.869919, 11.498003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377132, 0.823697, 0.423433,
		0.513327, -0.566444, 0.644699,
		0.770887, -0.025777, -0.636450,
		12.778090, 7.862186, 11.307068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806689, 8.002629, 12.075358>,  <12.238470, 7.880229, 11.752584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806689, 8.002629, 12.075358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887296, 8.129280, 11.704599>,  <12.935659, 8.205271, 11.482144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887296, 8.129280, 11.704599>,  <12.806689, 8.002629, 12.075358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.887296, 8.129280, 11.704599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480939, 0.792396, 0.375242,
		0.853282, -0.521398, 0.007401,
		0.201515, 0.316627, -0.926898,
		12.947750, 8.224268, 11.426530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592691, 8.366020, 12.033088>,  <12.806689, 8.002629, 12.075358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.592691, 8.366020, 12.033088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.331630, 8.521639, 11.773030>,  <13.174993, 8.615010, 11.616996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.331630, 8.521639, 11.773030>,  <13.592691, 8.366020, 12.033088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.331630, 8.521639, 11.773030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128914, 0.902607, 0.410710,
		0.746608, 0.184238, -0.639243,
		-0.652654, 0.389047, -0.650143,
		13.135834, 8.638353, 11.577988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.764679, 9.145226, 11.902236>,  <13.592691, 8.366020, 12.033088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.764679, 9.145226, 11.902236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395386, 9.107089, 11.753347>,  <13.173810, 9.084207, 11.664015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395386, 9.107089, 11.753347>,  <13.764679, 9.145226, 11.902236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395386, 9.107089, 11.753347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245331, 0.891833, 0.380062,
		0.295722, 0.442204, -0.846761,
		-0.923234, -0.095344, -0.372221,
		13.118416, 9.078485, 11.641681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.670144, 9.758575, 11.534818>,  <13.764679, 9.145226, 11.902236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.670144, 9.758575, 11.534818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.311512, 9.630938, 11.657664>,  <13.096333, 9.554355, 11.731372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.311512, 9.630938, 11.657664>,  <13.670144, 9.758575, 11.534818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.311512, 9.630938, 11.657664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196929, 0.908370, 0.368894,
		-0.396688, 0.270264, -0.877267,
		-0.896581, -0.319095, 0.307116,
		13.042538, 9.535209, 11.749799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187178, 10.334579, 11.250121>,  <13.670144, 9.758575, 11.534818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187178, 10.334579, 11.250121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022328, 10.133563, 11.554123>,  <12.923419, 10.012954, 11.736525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022328, 10.133563, 11.554123>,  <13.187178, 10.334579, 11.250121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022328, 10.133563, 11.554123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331516, 0.859670, 0.388671,
		-0.848676, -0.091774, -0.520890,
		-0.412124, -0.502539, 0.760005,
		12.898691, 9.982801, 11.782125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.460929, 10.495473, 11.257757>,  <13.187178, 10.334579, 11.250121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.460929, 10.495473, 11.257757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543378, 10.373919, 11.629815>,  <12.592847, 10.300987, 11.853050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543378, 10.373919, 11.629815>,  <12.460929, 10.495473, 11.257757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.543378, 10.373919, 11.629815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485080, 0.793807, 0.366835,
		-0.849830, -0.526807, 0.016214,
		0.206122, -0.303882, 0.930144,
		12.605214, 10.282755, 11.908858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.854216, 10.686069, 11.565856>,  <12.460929, 10.495473, 11.257757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.854216, 10.686069, 11.565856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096782, 10.623968, 11.877794>,  <12.242321, 10.586707, 12.064957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096782, 10.623968, 11.877794>,  <11.854216, 10.686069, 11.565856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096782, 10.623968, 11.877794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480059, 0.710358, 0.514718,
		-0.633881, -0.686504, 0.356241,
		0.606414, -0.155254, 0.779845,
		12.278706, 10.577392, 12.111748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429607, 10.486466, 12.156736>,  <11.854216, 10.686069, 11.565856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429607, 10.486466, 12.156736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785671, 10.612748, 12.288157>,  <11.999310, 10.688518, 12.367008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785671, 10.612748, 12.288157>,  <11.429607, 10.486466, 12.156736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.785671, 10.612748, 12.288157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455591, 0.628006, 0.630908,
		-0.007151, -0.711294, 0.702858,
		0.890160, 0.315705, 0.328550,
		12.052719, 10.707459, 12.386722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.324412, 10.648755, 12.874861>,  <11.429607, 10.486466, 12.156736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.324412, 10.648755, 12.874861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655643, 10.843198, 12.763155>,  <11.854381, 10.959864, 12.696132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655643, 10.843198, 12.763155>,  <11.324412, 10.648755, 12.874861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655643, 10.843198, 12.763155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226465, 0.745738, 0.626569,
		0.512839, -0.455603, 0.727614,
		0.828076, 0.486108, -0.279265,
		11.904065, 10.989030, 12.679376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654540, 10.829535, 13.515173>,  <11.324412, 10.648755, 12.874861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654540, 10.829535, 13.515173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802586, 11.087734, 13.247936>,  <11.891413, 11.242654, 13.087594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802586, 11.087734, 13.247936>,  <11.654540, 10.829535, 13.515173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.802586, 11.087734, 13.247936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212932, 0.758963, 0.615334,
		0.904254, -0.085485, 0.418350,
		0.370113, 0.645498, -0.668093,
		11.913620, 11.281384, 13.047508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.996114, 11.382010, 13.898547>,  <11.654540, 10.829535, 13.515173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.996114, 11.382010, 13.898547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.920427, 11.527337, 13.533648>,  <11.875015, 11.614533, 13.314708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.920427, 11.527337, 13.533648>,  <11.996114, 11.382010, 13.898547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.920427, 11.527337, 13.533648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317626, 0.856439, 0.406972,
		0.929145, 0.366760, -0.046653,
		-0.189216, 0.363317, -0.912249,
		11.863663, 11.636333, 13.259973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.332012, 11.976406, 13.931819>,  <11.996114, 11.382010, 13.898547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.332012, 11.976406, 13.931819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064283, 12.006831, 13.636191>,  <11.903646, 12.025086, 13.458815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064283, 12.006831, 13.636191>,  <12.332012, 11.976406, 13.931819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.064283, 12.006831, 13.636191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435019, 0.766283, 0.472830,
		0.602301, 0.637984, -0.479802,
		-0.669322, 0.076063, -0.739068,
		11.863486, 12.029650, 13.414471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202513, 12.701243, 13.931499>,  <12.332012, 11.976406, 13.931819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202513, 12.701243, 13.931499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.890912, 12.553473, 13.728846>,  <11.703952, 12.464809, 13.607253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.890912, 12.553473, 13.728846>,  <12.202513, 12.701243, 13.931499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.890912, 12.553473, 13.728846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625485, 0.514361, 0.586687,
		0.043855, 0.773923, -0.631760,
		-0.779003, -0.369428, -0.506634,
		11.657211, 12.442644, 13.576856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.778732, 13.309290, 13.867349>,  <12.202513, 12.701243, 13.931499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.778732, 13.309290, 13.867349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534200, 12.996745, 13.817157>,  <11.387480, 12.809218, 13.787042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534200, 12.996745, 13.817157>,  <11.778732, 13.309290, 13.867349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534200, 12.996745, 13.817157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701367, 0.461506, 0.543228,
		-0.366548, 0.420100, -0.830156,
		-0.611332, -0.781363, -0.125480,
		11.350801, 12.762336, 13.779512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.151830, 13.553834, 13.556618>,  <11.778732, 13.309290, 13.867349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.151830, 13.553834, 13.556618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070906, 13.205495, 13.735813>,  <11.022351, 12.996491, 13.843330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070906, 13.205495, 13.735813>,  <11.151830, 13.553834, 13.556618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.070906, 13.205495, 13.735813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815194, 0.403253, 0.415747,
		-0.542705, -0.281088, -0.791492,
		-0.202310, -0.870848, 0.447989,
		11.010213, 12.944241, 13.870210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498219, 13.349329, 13.177215>,  <11.151830, 13.553834, 13.556618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498219, 13.349329, 13.177215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.544187, 13.179263, 13.536331>,  <10.571767, 13.077224, 13.751801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.544187, 13.179263, 13.536331>,  <10.498219, 13.349329, 13.177215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.544187, 13.179263, 13.536331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874618, 0.385209, 0.294375,
		-0.470995, -0.819054, -0.327588,
		0.114919, -0.425164, 0.897791,
		10.578663, 13.051714, 13.805669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.869984, 13.103982, 13.449385>,  <10.498219, 13.349329, 13.177215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.869984, 13.103982, 13.449385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.094033, 13.161926, 13.775642>,  <10.228463, 13.196692, 13.971397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.094033, 13.161926, 13.775642>,  <9.869984, 13.103982, 13.449385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.094033, 13.161926, 13.775642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792229, 0.381467, 0.476294,
		-0.242145, -0.912961, 0.328432,
		0.560124, 0.144861, 0.815645,
		10.262071, 13.205384, 14.020336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.384798, 12.955288, 13.862091>,  <9.869984, 13.103982, 13.449385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.384798, 12.955288, 13.862091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.651792, 13.112542, 14.115045>,  <9.811988, 13.206895, 14.266816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.651792, 13.112542, 14.115045>,  <9.384798, 12.955288, 13.862091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.651792, 13.112542, 14.115045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732854, 0.497234, 0.464417,
		-0.131864, -0.773436, 0.620007,
		0.667485, 0.393135, 0.632383,
		9.852037, 13.230483, 14.304760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.233172, 12.646163, 14.576797>,  <9.384798, 12.955288, 13.862091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.233172, 12.646163, 14.576797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.419360, 12.999771, 14.593987>,  <9.531073, 13.211936, 14.604302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.419360, 12.999771, 14.593987>,  <9.233172, 12.646163, 14.576797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.419360, 12.999771, 14.593987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733928, 0.358390, 0.576980,
		0.494660, -0.300108, 0.815627,
		0.465469, 0.884021, 0.042977,
		9.559001, 13.264977, 14.606881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.320374, 12.709825, 15.272030>,  <9.233172, 12.646163, 14.576797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.320374, 12.709825, 15.272030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352396, 13.068915, 15.098742>,  <9.371609, 13.284369, 14.994769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352396, 13.068915, 15.098742>,  <9.320374, 12.709825, 15.272030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.352396, 13.068915, 15.098742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663276, 0.372404, 0.649138,
		0.744081, 0.235379, 0.625252,
		0.080053, 0.897726, -0.433220,
		9.376412, 13.338233, 14.968776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.340810, 13.127601, 15.855935>,  <9.320374, 12.709825, 15.272030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.340810, 13.127601, 15.855935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.250846, 13.354115, 15.538764>,  <9.196867, 13.490025, 15.348461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.250846, 13.354115, 15.538764>,  <9.340810, 13.127601, 15.855935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.250846, 13.354115, 15.538764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762104, 0.404828, 0.505283,
		0.607134, 0.717938, 0.340519,
		-0.224910, 0.566286, -0.792928,
		9.183372, 13.524001, 15.300885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.239379, 13.900085, 15.988955>,  <9.340810, 13.127601, 15.855935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.239379, 13.900085, 15.988955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.043703, 13.839412, 15.645401>,  <8.926298, 13.803007, 15.439268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.043703, 13.839412, 15.645401>,  <9.239379, 13.900085, 15.988955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.043703, 13.839412, 15.645401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766346, 0.544930, 0.340243,
		0.416423, 0.824647, -0.382817,
		-0.489189, -0.151685, -0.858886,
		8.896946, 13.793906, 15.387735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.501093, 14.597628, 16.248310>,  <9.239379, 13.900085, 15.988955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.501093, 14.597628, 16.248310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.894202, 14.659915, 16.208498>,  <10.130068, 14.697288, 16.184610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.894202, 14.659915, 16.208498>,  <9.501093, 14.597628, 16.248310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.894202, 14.659915, 16.208498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139962, -0.275421, 0.951081,
		0.120688, -0.948628, -0.292471,
		0.982774, 0.155719, -0.099532,
		10.189034, 14.706631, 16.178638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.849313, 14.048922, 16.451183>,  <9.501093, 14.597628, 16.248310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.849313, 14.048922, 16.451183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084333, 14.363010, 16.529373>,  <10.225346, 14.551463, 16.576288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084333, 14.363010, 16.529373>,  <9.849313, 14.048922, 16.451183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084333, 14.363010, 16.529373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008818, -0.235343, 0.971872,
		0.809139, -0.572749, -0.131352,
		0.587551, 0.785222, 0.195476,
		10.260599, 14.598577, 16.588017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.447361, 13.730490, 16.848192>,  <9.849313, 14.048922, 16.451183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.447361, 13.730490, 16.848192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449444, 14.116212, 16.954090>,  <10.450694, 14.347645, 17.017628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449444, 14.116212, 16.954090>,  <10.447361, 13.730490, 16.848192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.449444, 14.116212, 16.954090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216287, -0.259566, 0.941194,
		0.976316, 0.052359, -0.209918,
		0.005207, 0.964305, 0.264743,
		10.451006, 14.405503, 17.033512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.849988, 13.728068, 17.363762>,  <10.447361, 13.730490, 16.848192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.849988, 13.728068, 17.363762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665661, 14.079863, 17.411346>,  <10.555065, 14.290939, 17.439898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665661, 14.079863, 17.411346>,  <10.849988, 13.728068, 17.363762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.665661, 14.079863, 17.411346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371226, 0.069259, 0.925956,
		0.806126, 0.470859, -0.358404,
		-0.460818, 0.879486, 0.118963,
		10.527415, 14.343708, 17.447035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.356575, 14.278193, 17.679329>,  <10.849988, 13.728068, 17.363762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.356575, 14.278193, 17.679329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.968277, 14.338789, 17.753847>,  <10.735298, 14.375147, 17.798559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.968277, 14.338789, 17.753847>,  <11.356575, 14.278193, 17.679329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.968277, 14.338789, 17.753847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212035, 0.176730, 0.961149,
		0.112680, 0.972531, -0.203681,
		-0.970744, 0.151490, 0.186296,
		10.677053, 14.384236, 17.809736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.353683, 14.826407, 17.973431>,  <11.356575, 14.278193, 17.679329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.353683, 14.826407, 17.973431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.022473, 14.630596, 18.082787>,  <10.823748, 14.513109, 18.148399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.022473, 14.630596, 18.082787>,  <11.353683, 14.826407, 17.973431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.022473, 14.630596, 18.082787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152222, 0.273009, 0.949892,
		-0.539635, 0.828148, -0.151542,
		-0.828023, -0.489527, 0.273387,
		10.774066, 14.483738, 18.164803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.863377, 15.374318, 18.373226>,  <11.353683, 14.826407, 17.973431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.863377, 15.374318, 18.373226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.859877, 14.985534, 18.467218>,  <10.857777, 14.752263, 18.523613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.859877, 14.985534, 18.467218>,  <10.863377, 15.374318, 18.373226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.859877, 14.985534, 18.467218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007040, 0.234922, 0.971989,
		-0.999937, 0.010160, 0.004787,
		-0.008751, -0.971961, 0.234978,
		10.857251, 14.693945, 18.537712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.197170, 15.175339, 18.747862>,  <10.863377, 15.374318, 18.373226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.197170, 15.175339, 18.747862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.513206, 14.950058, 18.844664>,  <10.702826, 14.814890, 18.902744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.513206, 14.950058, 18.844664>,  <10.197170, 15.175339, 18.747862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.513206, 14.950058, 18.844664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124140, 0.239600, 0.962903,
		-0.600292, -0.790820, 0.119389,
		0.790088, -0.563201, 0.242002,
		10.750232, 14.781097, 18.917265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.959808, 14.933475, 19.432890>,  <10.197170, 15.175339, 18.747862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.959808, 14.933475, 19.432890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348954, 14.851746, 19.389463>,  <10.582441, 14.802708, 19.363407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348954, 14.851746, 19.389463>,  <9.959808, 14.933475, 19.432890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.348954, 14.851746, 19.389463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135080, 0.120598, 0.983468,
		-0.187854, -0.971446, 0.144926,
		0.972864, -0.204325, -0.108569,
		10.640814, 14.790448, 19.356894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.070418, 14.320317, 19.777983>,  <9.959808, 14.933475, 19.432890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.070418, 14.320317, 19.777983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.392168, 14.557924, 19.773527>,  <10.585218, 14.700489, 19.770853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.392168, 14.557924, 19.773527>,  <10.070418, 14.320317, 19.777983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.392168, 14.557924, 19.773527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072755, -0.079874, 0.994146,
		0.589651, -0.800477, -0.107467,
		0.804375, 0.594018, -0.011141,
		10.633480, 14.736130, 19.770185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.490524, 14.016028, 20.252640>,  <10.070418, 14.320317, 19.777983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.490524, 14.016028, 20.252640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.618296, 14.391231, 20.198811>,  <10.694959, 14.616352, 20.166513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.618296, 14.391231, 20.198811>,  <10.490524, 14.016028, 20.252640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.618296, 14.391231, 20.198811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109773, 0.104428, 0.988456,
		0.941231, -0.330514, -0.069611,
		0.319429, 0.938006, -0.134572,
		10.714125, 14.672632, 20.158440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.126908, 14.121125, 20.671669>,  <10.490524, 14.016028, 20.252640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.126908, 14.121125, 20.671669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.053063, 14.507586, 20.599592>,  <11.008757, 14.739462, 20.556345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.053063, 14.507586, 20.599592>,  <11.126908, 14.121125, 20.671669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.053063, 14.507586, 20.599592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462183, 0.247151, 0.851647,
		0.867355, 0.073943, -0.492166,
		-0.184613, 0.966151, -0.180193,
		10.997680, 14.797431, 20.545534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.661509, 14.503172, 21.034714>,  <11.126908, 14.121125, 20.671669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.661509, 14.503172, 21.034714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.410033, 14.801228, 20.945702>,  <11.259149, 14.980061, 20.892294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.410033, 14.801228, 20.945702>,  <11.661509, 14.503172, 21.034714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.410033, 14.801228, 20.945702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192853, 0.426606, 0.883637,
		0.753366, 0.512616, -0.411904,
		-0.628687, 0.745139, -0.222531,
		11.221427, 15.024769, 20.878942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973858, 15.169342, 21.224789>,  <11.661509, 14.503172, 21.034714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973858, 15.169342, 21.224789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.575173, 15.201044, 21.231575>,  <11.335963, 15.220065, 21.235647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.575173, 15.201044, 21.231575>,  <11.973858, 15.169342, 21.224789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.575173, 15.201044, 21.231575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057253, 0.540322, 0.839508,
		0.057368, 0.837717, -0.543082,
		-0.996710, 0.079254, 0.016965,
		11.276160, 15.224820, 21.236664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831419, 15.806114, 21.236532>,  <11.973858, 15.169342, 21.224789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831419, 15.806114, 21.236532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494870, 15.650032, 21.386110>,  <11.292941, 15.556383, 21.475857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494870, 15.650032, 21.386110>,  <11.831419, 15.806114, 21.236532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494870, 15.650032, 21.386110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142950, 0.506590, 0.850254,
		-0.521210, 0.768835, -0.370451,
		-0.841371, -0.390205, 0.373945,
		11.242458, 15.532970, 21.498293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542657, 16.371996, 21.579134>,  <11.831419, 15.806114, 21.236532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542657, 16.371996, 21.579134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340274, 16.067297, 21.740997>,  <11.218844, 15.884478, 21.838116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340274, 16.067297, 21.740997>,  <11.542657, 16.371996, 21.579134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340274, 16.067297, 21.740997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079350, 0.508253, 0.857544,
		-0.858901, 0.401771, -0.317599,
		-0.505957, -0.761747, 0.404659,
		11.188487, 15.838773, 21.862394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.975205, 16.693243, 21.958895>,  <11.542657, 16.371996, 21.579134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.975205, 16.693243, 21.958895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.039305, 16.336882, 22.128889>,  <11.077765, 16.123064, 22.230885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.039305, 16.336882, 22.128889>,  <10.975205, 16.693243, 21.958895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.039305, 16.336882, 22.128889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080883, 0.440953, 0.893878,
		-0.983757, -0.108869, 0.142720,
		0.160249, -0.890903, 0.424985,
		11.087379, 16.069611, 22.256384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.522716, 16.652761, 22.484818>,  <10.975205, 16.693243, 21.958895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.522716, 16.652761, 22.484818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.792831, 16.368608, 22.564157>,  <10.954901, 16.198116, 22.611761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.792831, 16.368608, 22.564157>,  <10.522716, 16.652761, 22.484818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.792831, 16.368608, 22.564157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050416, 0.312760, 0.948493,
		-0.735829, -0.630507, 0.247018,
		0.675289, -0.710382, 0.198350,
		10.995418, 16.155495, 22.623663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.246419, 16.380924, 23.146683>,  <10.522716, 16.652761, 22.484818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.246419, 16.380924, 23.146683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.631902, 16.274189, 23.143433>,  <10.863192, 16.210148, 23.141481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.631902, 16.274189, 23.143433>,  <10.246419, 16.380924, 23.146683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.631902, 16.274189, 23.143433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054555, 0.167050, 0.984438,
		-0.261327, -0.949154, 0.175544,
		0.963707, -0.266837, -0.008127,
		10.921014, 16.194138, 23.140995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.282971, 16.029360, 23.697859>,  <10.246419, 16.380924, 23.146683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.282971, 16.029360, 23.697859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665998, 16.103693, 23.609734>,  <10.895813, 16.148293, 23.556858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665998, 16.103693, 23.609734>,  <10.282971, 16.029360, 23.697859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.665998, 16.103693, 23.609734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228754, -0.025011, 0.973163,
		0.175335, -0.982263, -0.066460,
		0.957564, 0.185832, -0.220312,
		10.953267, 16.159443, 23.543640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651233, 15.721775, 24.199823>,  <10.282971, 16.029360, 23.697859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651233, 15.721775, 24.199823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904174, 16.002815, 24.069296>,  <11.055939, 16.171438, 23.990980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904174, 16.002815, 24.069296>,  <10.651233, 15.721775, 24.199823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.904174, 16.002815, 24.069296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351577, 0.115069, 0.929060,
		0.690306, -0.702220, -0.174253,
		0.632353, 0.702600, -0.326317,
		11.093880, 16.213594, 23.971401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.314716, 15.478895, 24.472431>,  <10.651233, 15.721775, 24.199823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.314716, 15.478895, 24.472431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334756, 15.867867, 24.381334>,  <11.346780, 16.101252, 24.326675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334756, 15.867867, 24.381334>,  <11.314716, 15.478895, 24.472431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.334756, 15.867867, 24.381334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463626, 0.179328, 0.867694,
		0.884613, -0.149059, -0.441861,
		0.050100, 0.972432, -0.227743,
		11.349786, 16.159597, 24.313011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.913102, 15.630422, 24.687977>,  <11.314716, 15.478895, 24.472431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.913102, 15.630422, 24.687977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.741447, 15.991583, 24.678110>,  <11.638454, 16.208279, 24.672190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.741447, 15.991583, 24.678110>,  <11.913102, 15.630422, 24.687977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.741447, 15.991583, 24.678110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527557, 0.272720, 0.804554,
		0.733161, 0.332251, -0.593367,
		-0.429137, 0.902903, -0.024666,
		11.612706, 16.262453, 24.670710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458117, 16.055134, 24.818323>,  <11.913102, 15.630422, 24.687977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.458117, 16.055134, 24.818323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144201, 16.291357, 24.893530>,  <11.955853, 16.433090, 24.938654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144201, 16.291357, 24.893530>,  <12.458117, 16.055134, 24.818323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.144201, 16.291357, 24.893530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494512, 0.413808, 0.764344,
		0.373586, 0.692824, -0.616789,
		-0.784788, 0.590557, 0.188017,
		11.908765, 16.468525, 24.949934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.737031, 16.765692, 24.670776>,  <12.458117, 16.055134, 24.818323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.737031, 16.765692, 24.670776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415945, 16.755535, 24.909105>,  <12.223293, 16.749441, 25.052103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415945, 16.755535, 24.909105>,  <12.737031, 16.765692, 24.670776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415945, 16.755535, 24.909105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524431, 0.445625, 0.725527,
		-0.283937, 0.894859, -0.344393,
		-0.802715, -0.025393, 0.595822,
		12.175131, 16.747917, 25.087852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.766554, 17.369509, 25.206839>,  <12.737031, 16.765692, 24.670776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.766554, 17.369509, 25.206839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.510032, 17.113464, 25.376068>,  <12.356119, 16.959839, 25.477606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.510032, 17.113464, 25.376068>,  <12.766554, 17.369509, 25.206839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.510032, 17.113464, 25.376068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297892, 0.300423, 0.906094,
		-0.707099, 0.707111, -0.001979,
		-0.641304, -0.640109, 0.423071,
		12.317640, 16.921432, 25.502989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439808, 17.825926, 25.679180>,  <12.766554, 17.369509, 25.206839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439808, 17.825926, 25.679180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400219, 17.449055, 25.807247>,  <12.376466, 17.222933, 25.884087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400219, 17.449055, 25.807247>,  <12.439808, 17.825926, 25.679180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400219, 17.449055, 25.807247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492219, 0.233275, 0.838632,
		-0.864827, 0.240594, 0.440669,
		-0.098973, -0.942177, 0.320168,
		12.370527, 17.166401, 25.903297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236918, 17.843187, 26.366604>,  <12.439808, 17.825926, 25.679180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236918, 17.843187, 26.366604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417262, 17.490480, 26.311161>,  <12.525468, 17.278856, 26.277895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417262, 17.490480, 26.311161>,  <12.236918, 17.843187, 26.366604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417262, 17.490480, 26.311161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524469, 0.136050, 0.840490,
		-0.722259, -0.451637, 0.523799,
		0.450859, -0.881768, -0.138606,
		12.552520, 17.225950, 26.269579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.098125, 17.534641, 27.020071>,  <12.236918, 17.843187, 26.366604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.098125, 17.534641, 27.020071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.407426, 17.362074, 26.834187>,  <12.593007, 17.258533, 26.722656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.407426, 17.362074, 26.834187>,  <12.098125, 17.534641, 27.020071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.407426, 17.362074, 26.834187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501706, -0.031927, 0.864449,
		-0.387774, -0.901588, 0.191757,
		0.773254, -0.431416, -0.464712,
		12.639402, 17.232649, 26.694773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.273174, 16.976622, 27.426014>,  <12.098125, 17.534641, 27.020071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.273174, 16.976622, 27.426014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611984, 17.032837, 27.220959>,  <12.815270, 17.066566, 27.097925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611984, 17.032837, 27.220959>,  <12.273174, 16.976622, 27.426014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611984, 17.032837, 27.220959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529297, -0.134241, 0.837749,
		0.048921, -0.980932, -0.188093,
		0.847025, 0.140541, -0.512638,
		12.866092, 17.074999, 27.067167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.755640, 16.584974, 27.717154>,  <12.273174, 16.976622, 27.426014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.755640, 16.584974, 27.717154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009058, 16.824341, 27.520983>,  <13.161109, 16.967960, 27.403280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009058, 16.824341, 27.520983>,  <12.755640, 16.584974, 27.717154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009058, 16.824341, 27.520983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642050, -0.052924, 0.764834,
		0.431733, -0.799436, -0.417742,
		0.633545, 0.598415, -0.490429,
		13.199121, 17.003866, 27.373854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427885, 16.335226, 27.965761>,  <12.755640, 16.584974, 27.717154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427885, 16.335226, 27.965761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503907, 16.691349, 27.800241>,  <13.549520, 16.905024, 27.700930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503907, 16.691349, 27.800241>,  <13.427885, 16.335226, 27.965761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503907, 16.691349, 27.800241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663097, 0.194412, 0.722846,
		0.724004, -0.411768, -0.553413,
		0.190055, 0.890310, -0.413797,
		13.560924, 16.958443, 27.676102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206162, 16.395370, 28.011349>,  <13.427885, 16.335226, 27.965761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206162, 16.395370, 28.011349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.060799, 16.766533, 27.978067>,  <13.973580, 16.989231, 27.958099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.060799, 16.766533, 27.978067>,  <14.206162, 16.395370, 28.011349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.060799, 16.766533, 27.978067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560159, 0.288994, 0.776341,
		0.744417, 0.235523, -0.624798,
		-0.363409, 0.927907, -0.083202,
		13.951777, 17.044905, 27.953106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769240, 16.856630, 28.086628>,  <14.206162, 16.395370, 28.011349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769240, 16.856630, 28.086628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486835, 17.130537, 28.158894>,  <14.317390, 17.294880, 28.202253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486835, 17.130537, 28.158894>,  <14.769240, 16.856630, 28.086628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486835, 17.130537, 28.158894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590720, 0.428703, 0.683567,
		0.390631, 0.589331, -0.707175,
		-0.706015, 0.684764, 0.180665,
		14.275030, 17.335966, 28.213093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185466, 17.363781, 28.419312>,  <14.769240, 16.856630, 28.086628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185466, 17.363781, 28.419312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.817240, 17.504503, 28.487186>,  <14.596304, 17.588936, 28.527912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.817240, 17.504503, 28.487186>,  <15.185466, 17.363781, 28.419312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.817240, 17.504503, 28.487186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342776, 0.519372, 0.782789,
		0.187259, 0.778772, -0.598706,
		-0.920564, 0.351806, 0.169687,
		14.541070, 17.610044, 28.538092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125739, 18.213776, 28.452629>,  <15.185466, 17.363781, 28.419312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125739, 18.213776, 28.452629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868290, 18.025703, 28.694183>,  <14.713820, 17.912861, 28.839117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868290, 18.025703, 28.694183>,  <15.125739, 18.213776, 28.452629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868290, 18.025703, 28.694183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405076, 0.460186, 0.790027,
		-0.649356, 0.753100, -0.105728,
		-0.643623, -0.470180, 0.603887,
		14.675203, 17.884649, 28.875349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671623, 18.684994, 28.828339>,  <15.125739, 18.213776, 28.452629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671623, 18.684994, 28.828339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781370, 18.342945, 29.004290>,  <14.847219, 18.137716, 29.109859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781370, 18.342945, 29.004290>,  <14.671623, 18.684994, 28.828339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781370, 18.342945, 29.004290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553642, 0.514480, 0.654821,
		-0.786259, 0.063873, 0.614587,
		0.274368, -0.855120, 0.439878,
		14.863681, 18.086409, 29.136253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649454, 18.804602, 29.565287>,  <14.671623, 18.684994, 28.828339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649454, 18.804602, 29.565287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910648, 18.509201, 29.498085>,  <15.067365, 18.331961, 29.457764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910648, 18.509201, 29.498085>,  <14.649454, 18.804602, 29.565287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910648, 18.509201, 29.498085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661522, 0.448127, 0.601308,
		-0.368781, -0.503783, 0.781155,
		0.652985, -0.738502, -0.168002,
		15.106544, 18.287651, 29.447683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953299, 18.630838, 30.146585>,  <14.649454, 18.804602, 29.565287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953299, 18.630838, 30.146585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.213923, 18.476389, 29.885397>,  <15.370298, 18.383718, 29.728683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.213923, 18.476389, 29.885397>,  <14.953299, 18.630838, 30.146585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213923, 18.476389, 29.885397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752293, 0.439608, 0.490714,
		0.097576, -0.810958, 0.576911,
		0.651563, -0.386124, -0.652973,
		15.409392, 18.360552, 29.689505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577755, 18.355980, 30.566702>,  <14.953299, 18.630838, 30.146585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577755, 18.355980, 30.566702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.732564, 18.365620, 30.198000>,  <15.825449, 18.371403, 29.976778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.732564, 18.365620, 30.198000>,  <15.577755, 18.355980, 30.566702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.732564, 18.365620, 30.198000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891971, 0.243550, 0.380882,
		0.233671, -0.969589, 0.072767,
		0.387022, 0.024095, -0.921756,
		15.848670, 18.372849, 29.921473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169254, 18.062510, 30.684113>,  <15.577755, 18.355980, 30.566702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169254, 18.062510, 30.684113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.237722, 18.216965, 30.321545>,  <16.278803, 18.309637, 30.104004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.237722, 18.216965, 30.321545>,  <16.169254, 18.062510, 30.684113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.237722, 18.216965, 30.321545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921284, 0.263341, 0.286160,
		0.349194, -0.884053, -0.310666,
		0.171169, 0.386137, -0.906421,
		16.289074, 18.332806, 30.049618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864914, 17.850536, 30.392555>,  <16.169254, 18.062510, 30.684113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864914, 17.850536, 30.392555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742151, 18.193213, 30.226717>,  <16.668493, 18.398819, 30.127214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742151, 18.193213, 30.226717>,  <16.864914, 17.850536, 30.392555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742151, 18.193213, 30.226717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888568, 0.413980, 0.197658,
		0.340965, -0.307732, -0.888281,
		-0.306905, 0.856692, -0.414593,
		16.650080, 18.450220, 30.102339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360691, 18.091888, 29.898127>,  <16.864914, 17.850536, 30.392555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360691, 18.091888, 29.898127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192644, 18.443684, 29.987572>,  <17.091816, 18.654760, 30.041239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192644, 18.443684, 29.987572>,  <17.360691, 18.091888, 29.898127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192644, 18.443684, 29.987572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840205, 0.283878, 0.462027,
		0.342868, 0.381986, -0.858212,
		-0.420116, 0.879488, 0.223614,
		17.066610, 18.707531, 30.054655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827301, 18.499971, 29.632479>,  <17.360691, 18.091888, 29.898127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827301, 18.499971, 29.632479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598831, 18.691067, 29.899469>,  <17.461750, 18.805725, 30.059664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598831, 18.691067, 29.899469>,  <17.827301, 18.499971, 29.632479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598831, 18.691067, 29.899469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812792, 0.442700, 0.378663,
		-0.114590, 0.758803, -0.641161,
		-0.571173, 0.477739, 0.667478,
		17.427479, 18.834389, 30.099712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228788, 19.103745, 29.719688>,  <17.827301, 18.499971, 29.632479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228788, 19.103745, 29.719688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.991154, 19.096590, 30.041370>,  <17.848574, 19.092297, 30.234379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.991154, 19.096590, 30.041370>,  <18.228788, 19.103745, 29.719688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.991154, 19.096590, 30.041370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701907, 0.476816, 0.529124,
		-0.392922, 0.878821, -0.270714,
		-0.594086, -0.017888, 0.804203,
		17.812927, 19.091223, 30.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.161951, 19.803944, 30.011440>,  <18.228788, 19.103745, 29.719688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.161951, 19.803944, 30.011440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047398, 19.565382, 30.311384>,  <17.978664, 19.422245, 30.491350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047398, 19.565382, 30.311384>,  <18.161951, 19.803944, 30.011440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047398, 19.565382, 30.311384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691515, 0.413046, 0.592621,
		-0.663167, 0.688256, 0.294131,
		-0.286385, -0.596403, 0.749858,
		17.961483, 19.386461, 30.536341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963041, 20.301561, 30.560883>,  <18.161951, 19.803944, 30.011440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963041, 20.301561, 30.560883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015497, 19.954485, 30.752682>,  <18.046970, 19.746239, 30.867762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015497, 19.954485, 30.752682>,  <17.963041, 20.301561, 30.560883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015497, 19.954485, 30.752682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678869, 0.431075, 0.594400,
		-0.722454, 0.247567, 0.645578,
		0.131139, -0.867690, 0.479497,
		18.054838, 19.694178, 30.896530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.027641, 20.501276, 31.244204>,  <17.963041, 20.301561, 30.560883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.027641, 20.501276, 31.244204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212374, 20.148151, 31.209890>,  <18.323214, 19.936277, 31.189302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212374, 20.148151, 31.209890>,  <18.027641, 20.501276, 31.244204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212374, 20.148151, 31.209890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818190, 0.386678, 0.425494,
		-0.342460, -0.266693, 0.900886,
		0.461830, -0.882811, -0.085784,
		18.350924, 19.883308, 31.184155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421612, 20.295460, 31.901546>,  <18.027641, 20.501276, 31.244204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421612, 20.295460, 31.901546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619961, 20.118565, 31.602606>,  <18.738970, 20.012426, 31.423241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619961, 20.118565, 31.602606>,  <18.421612, 20.295460, 31.901546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619961, 20.118565, 31.602606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868334, 0.242252, 0.432793,
		-0.010350, -0.863562, 0.504137,
		0.495871, -0.442239, -0.747353,
		18.768723, 19.985893, 31.378401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991068, 19.819857, 32.205879>,  <18.421612, 20.295460, 31.901546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.991068, 19.819857, 32.205879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057875, 19.975378, 31.843458>,  <19.097960, 20.068691, 31.626005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057875, 19.975378, 31.843458>,  <18.991068, 19.819857, 32.205879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057875, 19.975378, 31.843458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800672, 0.482774, 0.354760,
		0.575352, -0.784704, -0.230672,
		0.167019, 0.388805, -0.906055,
		19.107981, 20.092020, 31.571642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450871, 20.345072, 32.638474>,  <18.991068, 19.819857, 32.205879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450871, 20.345072, 32.638474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.811279, 20.223721, 32.762486>,  <20.027525, 20.150909, 32.836891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.811279, 20.223721, 32.762486>,  <19.450871, 20.345072, 32.638474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811279, 20.223721, 32.762486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109334, 0.850497, 0.514492,
		-0.419766, -0.429672, 0.799487,
		0.901023, -0.303377, 0.310032,
		20.081587, 20.132708, 32.855495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775742, 19.616205, 32.571545>,  <19.450871, 20.345072, 32.638474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775742, 19.616205, 32.571545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.048960, 19.751343, 32.830563>,  <20.212891, 19.832426, 32.985973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.048960, 19.751343, 32.830563>,  <19.775742, 19.616205, 32.571545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048960, 19.751343, 32.830563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490523, -0.869076, -0.063989,
		0.541143, 0.361341, -0.759340,
		0.683046, 0.337846, 0.647540,
		20.253874, 19.852697, 33.024826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.446335, 19.459839, 32.192398>,  <19.775742, 19.616205, 32.571545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.446335, 19.459839, 32.192398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.485636, 19.526386, 32.584862>,  <20.509216, 19.566315, 32.820339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.485636, 19.526386, 32.584862>,  <20.446335, 19.459839, 32.192398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.485636, 19.526386, 32.584862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650605, -0.756784, 0.063173,
		0.753034, 0.632139, -0.182593,
		0.098250, 0.166367, 0.981157,
		20.515110, 19.576296, 32.879208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239363, 19.465937, 32.380226>,  <20.446335, 19.459839, 32.192398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.239363, 19.465937, 32.380226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007797, 19.368607, 32.691521>,  <20.868858, 19.310207, 32.878296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007797, 19.368607, 32.691521>,  <21.239363, 19.465937, 32.380226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007797, 19.368607, 32.691521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518310, -0.846610, 0.120856,
		0.629456, 0.473333, 0.616232,
		-0.578913, -0.243326, 0.778237,
		20.834124, 19.295609, 32.924992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.458298, 19.976170, 31.921566>,  <21.239363, 19.465937, 32.380226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.458298, 19.976170, 31.921566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.301523, 20.337620, 31.852463>,  <21.207458, 20.554489, 31.811001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.301523, 20.337620, 31.852463>,  <21.458298, 19.976170, 31.921566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.301523, 20.337620, 31.852463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015430, -0.181298, -0.983307,
		-0.919862, -0.388061, 0.057115,
		-0.391938, 0.903626, -0.172758,
		21.183943, 20.608707, 31.800636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736479, 20.123791, 31.632664>,  <21.458298, 19.976170, 31.921566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736479, 20.123791, 31.632664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024708, 20.372650, 31.510218>,  <21.197645, 20.521965, 31.436750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024708, 20.372650, 31.510218>,  <20.736479, 20.123791, 31.632664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024708, 20.372650, 31.510218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037687, -0.475973, -0.878652,
		-0.692353, 0.621597, -0.366421,
		0.720574, 0.622146, -0.306116,
		21.240881, 20.559294, 31.418383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.517290, 20.567266, 30.964024>,  <20.736479, 20.123791, 31.632664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.517290, 20.567266, 30.964024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897951, 20.460039, 31.024021>,  <21.126348, 20.395702, 31.060020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897951, 20.460039, 31.024021>,  <20.517290, 20.567266, 30.964024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897951, 20.460039, 31.024021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044427, -0.363054, -0.930708,
		0.303949, 0.892374, -0.333591,
		0.951652, -0.268067, 0.149996,
		21.183447, 20.379620, 31.069019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904249, 20.760561, 30.227634>,  <20.517290, 20.567266, 30.964024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904249, 20.760561, 30.227634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058859, 20.479597, 30.466705>,  <21.151625, 20.311018, 30.610147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058859, 20.479597, 30.466705>,  <20.904249, 20.760561, 30.227634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.058859, 20.479597, 30.466705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034739, -0.636495, -0.770498,
		0.921624, 0.318580, -0.221620,
		0.386525, -0.702410, 0.597677,
		21.174816, 20.268873, 30.646008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.315149, 20.376179, 29.825127>,  <20.904249, 20.760561, 30.227634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.315149, 20.376179, 29.825127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188902, 20.140919, 30.122974>,  <21.113153, 19.999762, 30.301683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188902, 20.140919, 30.122974>,  <21.315149, 20.376179, 29.825127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.188902, 20.140919, 30.122974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170019, -0.736980, -0.654182,
		0.933530, -0.333072, 0.132608,
		-0.315619, -0.588152, 0.744622,
		21.094215, 19.964474, 30.346361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.530849, 19.626106, 29.617649>,  <21.315149, 20.376179, 29.825127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.530849, 19.626106, 29.617649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.211338, 19.624390, 29.858292>,  <21.019630, 19.623360, 30.002678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.211338, 19.624390, 29.858292>,  <21.530849, 19.626106, 29.617649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211338, 19.624390, 29.858292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418637, -0.714209, -0.560936,
		0.432080, -0.699919, 0.568700,
		-0.798780, -0.004291, 0.601608,
		20.971704, 19.623102, 30.038774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.541874, 18.894779, 29.959103>,  <21.530849, 19.626106, 29.617649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.541874, 18.894779, 29.959103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.185604, 19.076609, 29.962255>,  <20.971842, 19.185707, 29.964148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.185604, 19.076609, 29.962255>,  <21.541874, 18.894779, 29.959103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185604, 19.076609, 29.962255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364743, -0.704100, -0.609266,
		-0.271408, -0.545532, 0.792927,
		-0.890674, 0.454574, 0.007881,
		20.918402, 19.212980, 29.964621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.033352, 18.329214, 30.065910>,  <21.541874, 18.894779, 29.959103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.033352, 18.329214, 30.065910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.824493, 18.619774, 29.887156>,  <20.699179, 18.794109, 29.779902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.824493, 18.619774, 29.887156>,  <21.033352, 18.329214, 30.065910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.824493, 18.619774, 29.887156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501599, -0.685341, -0.527927,
		-0.689756, -0.051496, 0.722208,
		-0.522145, 0.726399, -0.446888,
		20.667849, 18.837694, 29.753090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.326872, 18.010883, 29.881161>,  <21.033352, 18.329214, 30.065910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.326872, 18.010883, 29.881161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.343536, 18.345360, 29.662418>,  <20.353535, 18.546045, 29.531174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.343536, 18.345360, 29.662418>,  <20.326872, 18.010883, 29.881161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.343536, 18.345360, 29.662418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506947, -0.453952, -0.732756,
		-0.860970, 0.307755, 0.404992,
		0.041662, 0.836190, -0.546855,
		20.356035, 18.596216, 29.498362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823467, 17.917887, 29.383526>,  <20.326872, 18.010883, 29.881161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823467, 17.917887, 29.383526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975983, 18.243147, 29.207615>,  <20.067492, 18.438303, 29.102068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975983, 18.243147, 29.207615>,  <19.823467, 17.917887, 29.383526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975983, 18.243147, 29.207615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431207, -0.264355, -0.862657,
		-0.817728, 0.518557, 0.249840,
		0.381290, 0.813152, -0.439775,
		20.090370, 18.487093, 29.075682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302088, 18.157740, 29.004967>,  <19.823467, 17.917887, 29.383526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302088, 18.157740, 29.004967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620592, 18.309090, 28.816158>,  <19.811695, 18.399899, 28.702873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620592, 18.309090, 28.816158>,  <19.302088, 18.157740, 29.004967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.620592, 18.309090, 28.816158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397850, -0.260258, -0.879762,
		-0.455726, 0.888312, -0.056697,
		0.796259, 0.378374, -0.472021,
		19.859470, 18.422602, 28.674551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.124943, 18.817347, 28.537233>,  <19.302088, 18.157740, 29.004967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.124943, 18.817347, 28.537233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.454546, 18.634523, 28.403303>,  <19.652308, 18.524830, 28.322945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.454546, 18.634523, 28.403303>,  <19.124943, 18.817347, 28.537233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454546, 18.634523, 28.403303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449419, -0.167420, -0.877492,
		0.345008, 0.873539, -0.343366,
		0.824010, -0.457057, -0.334824,
		19.701750, 18.497406, 28.302856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167595, 18.984282, 27.790892>,  <19.124943, 18.817347, 28.537233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167595, 18.984282, 27.790892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.434694, 18.694031, 27.857321>,  <19.594954, 18.519880, 27.897179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.434694, 18.694031, 27.857321>,  <19.167595, 18.984282, 27.790892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.434694, 18.694031, 27.857321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127975, -0.331683, -0.934670,
		0.733304, 0.602871, -0.314343,
		0.667748, -0.725626, 0.166072,
		19.635019, 18.476343, 27.907143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541687, 18.980312, 27.239660>,  <19.167595, 18.984282, 27.790892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541687, 18.980312, 27.239660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638630, 18.618971, 27.381205>,  <19.696796, 18.402166, 27.466131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638630, 18.618971, 27.381205>,  <19.541687, 18.980312, 27.239660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.638630, 18.618971, 27.381205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133522, -0.392319, -0.910087,
		0.960955, 0.173318, -0.215699,
		0.242357, -0.903353, 0.353859,
		19.711336, 18.347965, 27.487362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.108805, 18.627764, 26.877964>,  <19.541687, 18.980312, 27.239660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.108805, 18.627764, 26.877964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884575, 18.347673, 27.054798>,  <19.750036, 18.179619, 27.160898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884575, 18.347673, 27.054798>,  <20.108805, 18.627764, 26.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884575, 18.347673, 27.054798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127043, -0.454811, -0.881480,
		0.818300, -0.550300, 0.165997,
		-0.560576, -0.700227, 0.442083,
		19.716402, 18.137606, 27.187424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.354538, 17.991785, 26.599548>,  <20.108805, 18.627764, 26.877964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.354538, 17.991785, 26.599548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.000845, 17.871096, 26.742149>,  <19.788630, 17.798681, 26.827709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.000845, 17.871096, 26.742149>,  <20.354538, 17.991785, 26.599548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.000845, 17.871096, 26.742149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057167, -0.687650, -0.723788,
		0.463533, -0.660378, 0.590795,
		-0.884234, -0.301725, 0.356501,
		19.735575, 17.780579, 26.849100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300070, 17.245720, 26.529194>,  <20.354538, 17.991785, 26.599548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300070, 17.245720, 26.529194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915386, 17.343966, 26.577835>,  <19.684576, 17.402912, 26.607019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915386, 17.343966, 26.577835>,  <20.300070, 17.245720, 26.529194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915386, 17.343966, 26.577835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255859, -0.645566, -0.719570,
		-0.098231, -0.723132, 0.683690,
		-0.961711, 0.245612, 0.121605,
		19.626873, 17.417648, 26.614317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881615, 16.587736, 26.453691>,  <20.300070, 17.245720, 26.529194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.881615, 16.587736, 26.453691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.639399, 16.892239, 26.360905>,  <19.494068, 17.074940, 26.305233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.639399, 16.892239, 26.360905>,  <19.881615, 16.587736, 26.453691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.639399, 16.892239, 26.360905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359652, -0.521799, -0.773548,
		-0.709909, -0.384987, 0.589758,
		-0.605541, 0.761256, -0.231969,
		19.457737, 17.120615, 26.291315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.217081, 16.289310, 26.335365>,  <19.881615, 16.587736, 26.453691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.217081, 16.289310, 26.335365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210293, 16.649946, 26.162460>,  <19.206219, 16.866327, 26.058718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210293, 16.649946, 26.162460>,  <19.217081, 16.289310, 26.335365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210293, 16.649946, 26.162460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420130, -0.398736, -0.815169,
		-0.907305, 0.167771, 0.385552,
		-0.016972, 0.901589, -0.432260,
		19.205202, 16.920424, 26.032782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570641, 16.334259, 26.049751>,  <19.217081, 16.289310, 26.335365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570641, 16.334259, 26.049751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806269, 16.578581, 25.838123>,  <18.947645, 16.725174, 25.711147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806269, 16.578581, 25.838123>,  <18.570641, 16.334259, 26.049751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806269, 16.578581, 25.838123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425088, -0.322584, -0.845718,
		-0.687236, 0.723090, 0.069620,
		0.589073, 0.610803, -0.529069,
		18.982990, 16.761822, 25.679403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172371, 16.779915, 25.631081>,  <18.570641, 16.334259, 26.049751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172371, 16.779915, 25.631081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527082, 16.776413, 25.446234>,  <18.739908, 16.774311, 25.335325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527082, 16.776413, 25.446234>,  <18.172371, 16.779915, 25.631081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527082, 16.776413, 25.446234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426770, -0.399408, -0.811382,
		-0.177467, 0.916732, -0.357923,
		0.886777, -0.008757, -0.462115,
		18.793116, 16.773787, 25.307600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043995, 16.965878, 24.909260>,  <18.172371, 16.779915, 25.631081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043995, 16.965878, 24.909260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402605, 16.788839, 24.916704>,  <18.617771, 16.682615, 24.921171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402605, 16.788839, 24.916704>,  <18.043995, 16.965878, 24.909260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402605, 16.788839, 24.916704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207675, -0.457037, -0.864863,
		0.391293, 0.771508, -0.501663,
		0.896527, -0.442598, 0.018613,
		18.671564, 16.656059, 24.922289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245399, 17.034824, 24.229641>,  <18.043995, 16.965878, 24.909260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245399, 17.034824, 24.229641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486851, 16.753313, 24.379484>,  <18.631721, 16.584406, 24.469391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486851, 16.753313, 24.379484>,  <18.245399, 17.034824, 24.229641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486851, 16.753313, 24.379484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092219, -0.528346, -0.844006,
		0.791916, 0.474919, -0.383826,
		0.603627, -0.703778, 0.374609,
		18.667938, 16.542179, 24.491867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753342, 16.829477, 23.686527>,  <18.245399, 17.034824, 24.229641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753342, 16.829477, 23.686527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.734518, 16.518547, 23.937462>,  <18.723225, 16.331989, 24.088022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.734518, 16.518547, 23.937462>,  <18.753342, 16.829477, 23.686527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734518, 16.518547, 23.937462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123270, -0.618715, -0.775884,
		0.991257, -0.113843, -0.066705,
		-0.047058, -0.777323, 0.627339,
		18.720400, 16.285351, 24.125664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232264, 16.208691, 23.442062>,  <18.753342, 16.829477, 23.686527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232264, 16.208691, 23.442062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942436, 16.072031, 23.681488>,  <18.768539, 15.990035, 23.825144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942436, 16.072031, 23.681488>,  <19.232264, 16.208691, 23.442062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942436, 16.072031, 23.681488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164369, -0.757764, -0.631487,
		0.669317, -0.555940, 0.492895,
		-0.724567, -0.341649, 0.598564,
		18.725065, 15.969536, 23.861057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274015, 15.472456, 23.385550>,  <19.232264, 16.208691, 23.442062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274015, 15.472456, 23.385550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902639, 15.547127, 23.514017>,  <18.679813, 15.591929, 23.591097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902639, 15.547127, 23.514017>,  <19.274015, 15.472456, 23.385550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902639, 15.547127, 23.514017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360128, -0.664414, -0.654875,
		0.091139, -0.723675, 0.684097,
		-0.928441, 0.186677, 0.321169,
		18.624107, 15.603130, 23.610369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939476, 14.928918, 23.290838>,  <19.274015, 15.472456, 23.385550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939476, 14.928918, 23.290838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613695, 15.156954, 23.334032>,  <18.418226, 15.293776, 23.359949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613695, 15.156954, 23.334032>,  <18.939476, 14.928918, 23.290838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613695, 15.156954, 23.334032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488241, -0.572803, -0.658421,
		-0.313504, -0.588977, 0.744863,
		-0.814455, 0.570090, 0.107987,
		18.369358, 15.327981, 23.366428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365990, 14.419396, 23.461330>,  <18.939476, 14.928918, 23.290838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365990, 14.419396, 23.461330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.225700, 14.761292, 23.308271>,  <18.141527, 14.966429, 23.216436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.225700, 14.761292, 23.308271>,  <18.365990, 14.419396, 23.461330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225700, 14.761292, 23.308271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572709, -0.519049, -0.634501,
		-0.740944, -0.003388, 0.671558,
		-0.350722, 0.854737, -0.382646,
		18.120483, 15.017713, 23.193478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714289, 14.223354, 23.260021>,  <18.365990, 14.419396, 23.461330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714289, 14.223354, 23.260021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.785736, 14.566081, 23.066542>,  <17.828604, 14.771717, 22.950455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.785736, 14.566081, 23.066542>,  <17.714289, 14.223354, 23.260021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.785736, 14.566081, 23.066542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622199, -0.282468, -0.730123,
		-0.762210, 0.431368, 0.482657,
		0.178617, 0.856816, -0.483696,
		17.839321, 14.823126, 22.921432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120296, 14.453564, 23.076328>,  <17.714289, 14.223354, 23.260021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120296, 14.453564, 23.076328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361975, 14.649091, 22.824614>,  <17.506983, 14.766407, 22.673584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361975, 14.649091, 22.824614>,  <17.120296, 14.453564, 23.076328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361975, 14.649091, 22.824614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501206, -0.380814, -0.777029,
		-0.619466, 0.784881, 0.014912,
		0.604197, 0.488817, -0.629289,
		17.543234, 14.795736, 22.635826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646519, 14.905343, 22.728123>,  <17.120296, 14.453564, 23.076328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646519, 14.905343, 22.728123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976856, 14.882778, 22.503695>,  <17.175058, 14.869240, 22.369038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976856, 14.882778, 22.503695>,  <16.646519, 14.905343, 22.728123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976856, 14.882778, 22.503695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550614, -0.295373, -0.780755,
		-0.121681, 0.953715, -0.274993,
		0.825844, -0.056412, -0.561070,
		17.224609, 14.865854, 22.335373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391964, 15.116129, 22.069569>,  <16.646519, 14.905343, 22.728123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391964, 15.116129, 22.069569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748959, 14.960785, 21.977791>,  <16.963156, 14.867579, 21.922724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748959, 14.960785, 21.977791>,  <16.391964, 15.116129, 22.069569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748959, 14.960785, 21.977791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402765, -0.457087, -0.793002,
		0.203094, 0.800156, -0.564362,
		0.892487, -0.388359, -0.229443,
		17.016705, 14.844277, 21.908958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543333, 15.386376, 21.425787>,  <16.391964, 15.116129, 22.069569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.543333, 15.386376, 21.425787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.727312, 15.036983, 21.489634>,  <16.837700, 14.827348, 21.527943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.727312, 15.036983, 21.489634>,  <16.543333, 15.386376, 21.425787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727312, 15.036983, 21.489634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323591, -0.332284, -0.885932,
		0.826885, 0.355830, -0.435483,
		0.459946, -0.873483, 0.159617,
		16.865295, 14.774939, 21.537519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.655937, 15.214367, 20.816031>,  <16.543333, 15.386376, 21.425787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.655937, 15.214367, 20.816031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721266, 14.869526, 21.007908>,  <16.760462, 14.662621, 21.123034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721266, 14.869526, 21.007908>,  <16.655937, 15.214367, 20.816031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721266, 14.869526, 21.007908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333462, -0.505842, -0.795567,
		0.928510, -0.030027, -0.370092,
		0.163319, -0.862104, 0.479692,
		16.770262, 14.610895, 21.151815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048717, 14.889265, 20.428534>,  <16.655937, 15.214367, 20.816031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048717, 14.889265, 20.428534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843618, 14.629660, 20.653343>,  <16.720558, 14.473897, 20.788229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843618, 14.629660, 20.653343>,  <17.048717, 14.889265, 20.428534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843618, 14.629660, 20.653343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391197, -0.406104, -0.825860,
		0.764234, -0.643321, -0.045662,
		-0.512749, -0.649013, 0.562024,
		16.689793, 14.434956, 20.821951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118988, 14.342745, 20.031485>,  <17.048717, 14.889265, 20.428534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118988, 14.342745, 20.031485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814871, 14.267913, 20.280308>,  <16.632401, 14.223014, 20.429602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814871, 14.267913, 20.280308>,  <17.118988, 14.342745, 20.031485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814871, 14.267913, 20.280308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526392, -0.383670, -0.758755,
		0.380613, -0.904322, 0.193223,
		-0.760293, -0.187081, 0.622058,
		16.586782, 14.211789, 20.466925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811615, 13.745377, 19.777853>,  <17.118988, 14.342745, 20.031485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811615, 13.745377, 19.777853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511311, 13.864983, 20.013462>,  <16.331127, 13.936746, 20.154827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511311, 13.864983, 20.013462>,  <16.811615, 13.745377, 19.777853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511311, 13.864983, 20.013462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659968, -0.377658, -0.649474,
		0.028248, -0.876336, 0.480871,
		-0.750762, 0.299013, 0.589022,
		16.286081, 13.954687, 20.190168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260952, 13.173839, 19.727345>,  <16.811615, 13.745377, 19.777853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260952, 13.173839, 19.727345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108871, 13.528665, 19.832083>,  <16.017624, 13.741560, 19.894926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108871, 13.528665, 19.832083>,  <16.260952, 13.173839, 19.727345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108871, 13.528665, 19.832083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762548, -0.140421, -0.631508,
		-0.523420, -0.439770, 0.729818,
		-0.380200, 0.887065, 0.261846,
		15.994811, 13.794785, 19.910637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542810, 12.957748, 19.819744>,  <16.260952, 13.173839, 19.727345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.542810, 12.957748, 19.819744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495440, 13.354875, 19.826557>,  <15.467017, 13.593151, 19.830645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495440, 13.354875, 19.826557>,  <15.542810, 12.957748, 19.819744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495440, 13.354875, 19.826557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826953, -0.089120, -0.555164,
		-0.549659, -0.079830, 0.831566,
		-0.118428, 0.992817, 0.017030,
		15.459911, 13.652719, 19.831667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788748, 13.096479, 20.066050>,  <15.542810, 12.957748, 19.819744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.788748, 13.096479, 20.066050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914888, 13.415753, 19.860739>,  <14.990573, 13.607318, 19.737553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914888, 13.415753, 19.860739>,  <14.788748, 13.096479, 20.066050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914888, 13.415753, 19.860739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893808, 0.068095, -0.443251,
		-0.318844, 0.598552, 0.734897,
		0.315351, 0.798185, -0.513279,
		15.009494, 13.655209, 19.706755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267484, 13.549938, 20.117018>,  <14.788748, 13.096479, 20.066050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267484, 13.549938, 20.117018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480620, 13.656952, 19.795893>,  <14.608502, 13.721160, 19.603218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480620, 13.656952, 19.795893>,  <14.267484, 13.549938, 20.117018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480620, 13.656952, 19.795893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831908, -0.008107, -0.554854,
		-0.154951, 0.963514, 0.218244,
		0.532841, 0.267534, -0.802812,
		14.640472, 13.737212, 19.555050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001172, 14.157433, 19.860678>,  <14.267484, 13.549938, 20.117018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001172, 14.157433, 19.860678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.211441, 14.015615, 19.551365>,  <14.337603, 13.930526, 19.365776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.211441, 14.015615, 19.551365>,  <14.001172, 14.157433, 19.860678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211441, 14.015615, 19.551365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776507, 0.171266, -0.606387,
		0.347427, 0.919221, -0.185275,
		0.525673, -0.354542, -0.773284,
		14.369143, 13.909253, 19.319380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718280, 14.559493, 19.285521>,  <14.001172, 14.157433, 19.860678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718280, 14.559493, 19.285521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913580, 14.251778, 19.120691>,  <14.030760, 14.067148, 19.021793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913580, 14.251778, 19.120691>,  <13.718280, 14.559493, 19.285521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913580, 14.251778, 19.120691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622710, 0.023715, -0.782093,
		0.611429, 0.638460, -0.467465,
		0.488249, -0.769290, -0.412075,
		14.060055, 14.020990, 18.997068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.875693, 14.875974, 18.741236>,  <13.718280, 14.559493, 19.285521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.875693, 14.875974, 18.741236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.845286, 14.477355, 18.727869>,  <13.827043, 14.238184, 18.719849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.845286, 14.477355, 18.727869>,  <13.875693, 14.875974, 18.741236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.845286, 14.477355, 18.727869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898070, 0.082989, -0.431953,
		0.433235, -0.002827, -0.901277,
		-0.076017, -0.996546, -0.033415,
		13.822481, 14.178391, 18.717844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443464, 14.782331, 18.082857>,  <13.875693, 14.875974, 18.741236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443464, 14.782331, 18.082857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419837, 14.433749, 18.277620>,  <13.405661, 14.224600, 18.394478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419837, 14.433749, 18.277620>,  <13.443464, 14.782331, 18.082857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419837, 14.433749, 18.277620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941737, -0.113144, -0.316748,
		0.331122, -0.477249, -0.813997,
		-0.059069, -0.871454, 0.486908,
		13.402117, 14.172313, 18.423693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078783, 15.151097, 17.989571>,  <13.443464, 14.782331, 18.082857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078783, 15.151097, 17.989571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.379914, 15.261407, 17.750505>,  <14.560593, 15.327593, 17.607067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.379914, 15.261407, 17.750505>,  <14.078783, 15.151097, 17.989571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.379914, 15.261407, 17.750505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188186, 0.779921, 0.596916,
		0.630741, -0.561847, 0.535251,
		0.752829, 0.275773, -0.597660,
		14.605762, 15.344139, 17.571207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614692, 15.300439, 18.389547>,  <14.078783, 15.151097, 17.989571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614692, 15.300439, 18.389547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705765, 15.503503, 18.057177>,  <14.760408, 15.625341, 17.857754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705765, 15.503503, 18.057177>,  <14.614692, 15.300439, 18.389547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705765, 15.503503, 18.057177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344882, 0.755981, 0.556371,
		0.910614, -0.413247, -0.002960,
		0.227681, 0.507661, -0.830929,
		14.774069, 15.655801, 17.807898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351617, 15.492184, 18.437197>,  <14.614692, 15.300439, 18.389547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351617, 15.492184, 18.437197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176108, 15.762400, 18.200174>,  <15.070803, 15.924529, 18.057961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176108, 15.762400, 18.200174>,  <15.351617, 15.492184, 18.437197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176108, 15.762400, 18.200174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350884, 0.735876, 0.579109,
		0.827260, 0.046178, -0.559918,
		-0.438772, 0.675540, -0.592557,
		15.044477, 15.965062, 18.022408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826175, 16.042448, 18.414494>,  <15.351617, 15.492184, 18.437197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826175, 16.042448, 18.414494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.513200, 16.235550, 18.257147>,  <15.325415, 16.351412, 18.162739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.513200, 16.235550, 18.257147>,  <15.826175, 16.042448, 18.414494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.513200, 16.235550, 18.257147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262941, 0.828726, 0.494041,
		0.564494, 0.283125, -0.775363,
		-0.782438, 0.482757, -0.393365,
		15.278468, 16.380377, 18.139137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127489, 16.667936, 18.069281>,  <15.826175, 16.042448, 18.414494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127489, 16.667936, 18.069281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.737711, 16.705578, 18.150866>,  <15.503844, 16.728163, 18.199816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.737711, 16.705578, 18.150866>,  <16.127489, 16.667936, 18.069281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737711, 16.705578, 18.150866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191075, 0.824652, 0.532391,
		-0.118097, 0.557758, -0.821559,
		-0.974445, 0.094106, 0.203963,
		15.445377, 16.733810, 18.212055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914151, 17.397943, 17.908672>,  <16.127489, 16.667936, 18.069281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914151, 17.397943, 17.908672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641454, 17.253078, 18.162937>,  <15.477835, 17.166161, 18.315496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641454, 17.253078, 18.162937>,  <15.914151, 17.397943, 17.908672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641454, 17.253078, 18.162937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128258, 0.796252, 0.591212,
		-0.720260, 0.484584, -0.496391,
		-0.681744, -0.362160, 0.635660,
		15.436931, 17.144430, 18.353636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413878, 17.901161, 18.018570>,  <15.914151, 17.397943, 17.908672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413878, 17.901161, 18.018570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388149, 17.652531, 18.330853>,  <15.372712, 17.503351, 18.518223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388149, 17.652531, 18.330853>,  <15.413878, 17.901161, 18.018570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388149, 17.652531, 18.330853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144444, 0.768290, 0.623592,
		-0.987420, 0.152879, 0.040365,
		-0.064322, -0.621578, 0.780707,
		15.368853, 17.466057, 18.565065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342629, 18.282412, 18.558262>,  <15.413878, 17.901161, 18.018570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342629, 18.282412, 18.558262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.412488, 17.974173, 18.803432>,  <15.454403, 17.789228, 18.950535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.412488, 17.974173, 18.803432>,  <15.342629, 18.282412, 18.558262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.412488, 17.974173, 18.803432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234879, 0.637128, 0.734098,
		-0.956206, 0.015756, 0.292270,
		0.174647, -0.770597, 0.612926,
		15.464882, 17.742994, 18.987310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090629, 18.500469, 19.239643>,  <15.342629, 18.282412, 18.558262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090629, 18.500469, 19.239643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347489, 18.202297, 19.311171>,  <15.501606, 18.023394, 19.354088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347489, 18.202297, 19.311171>,  <15.090629, 18.500469, 19.239643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347489, 18.202297, 19.311171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335893, 0.483297, 0.808455,
		-0.689069, -0.459087, 0.560734,
		0.642152, -0.745428, 0.178821,
		15.540135, 17.978668, 19.364817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.013322, 18.389252, 19.949760>,  <15.090629, 18.500469, 19.239643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.013322, 18.389252, 19.949760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.364289, 18.233229, 19.838055>,  <15.574870, 18.139614, 19.771032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.364289, 18.233229, 19.838055>,  <15.013322, 18.389252, 19.949760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364289, 18.233229, 19.838055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433347, 0.394745, 0.810177,
		-0.205780, -0.831883, 0.515388,
		0.877419, -0.390060, -0.279263,
		15.627515, 18.116211, 19.754276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296692, 18.214853, 20.564970>,  <15.013322, 18.389252, 19.949760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296692, 18.214853, 20.564970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603448, 18.253414, 20.311171>,  <15.787501, 18.276550, 20.158892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603448, 18.253414, 20.311171>,  <15.296692, 18.214853, 20.564970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603448, 18.253414, 20.311171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604059, 0.225521, 0.764365,
		0.216761, -0.969460, 0.114732,
		0.766894, 0.096380, -0.634495,
		15.833515, 18.282335, 20.120821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782721, 17.783289, 20.849564>,  <15.296692, 18.214853, 20.564970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782721, 17.783289, 20.849564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959804, 18.051586, 20.611534>,  <16.066053, 18.212564, 20.468718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959804, 18.051586, 20.611534>,  <15.782721, 17.783289, 20.849564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959804, 18.051586, 20.611534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778390, 0.041955, 0.626378,
		0.445106, -0.740500, -0.503527,
		0.442707, 0.670745, -0.595072,
		16.092615, 18.252810, 20.433012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464128, 17.505882, 20.558096>,  <15.782721, 17.783289, 20.849564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464128, 17.505882, 20.558096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468424, 17.904463, 20.591494>,  <16.471001, 18.143610, 20.611532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468424, 17.904463, 20.591494>,  <16.464128, 17.505882, 20.558096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468424, 17.904463, 20.591494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832418, -0.055173, 0.551394,
		0.554044, 0.063582, -0.830056,
		0.010738, 0.996450, 0.083495,
		16.471645, 18.203398, 20.616543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.079710, 17.582247, 20.609259>,  <16.464128, 17.505882, 20.558096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.079710, 17.582247, 20.609259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931202, 17.918924, 20.766083>,  <16.842098, 18.120932, 20.860178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931202, 17.918924, 20.766083>,  <17.079710, 17.582247, 20.609259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931202, 17.918924, 20.766083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727309, 0.001132, 0.686309,
		0.577218, 0.539953, -0.612593,
		-0.371269, 0.841694, 0.392060,
		16.819822, 18.171432, 20.883701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612158, 18.026400, 20.721516>,  <17.079710, 17.582247, 20.609259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612158, 18.026400, 20.721516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360516, 18.253672, 20.933702>,  <17.209530, 18.390034, 21.061016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360516, 18.253672, 20.933702>,  <17.612158, 18.026400, 20.721516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360516, 18.253672, 20.933702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723059, 0.177247, 0.667660,
		0.285326, 0.803590, -0.522334,
		-0.629106, 0.568179, 0.530469,
		17.171783, 18.424126, 21.092844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923265, 18.668648, 20.844439>,  <17.612158, 18.026400, 20.721516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923265, 18.668648, 20.844439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.644569, 18.597002, 21.122280>,  <17.477352, 18.554014, 21.288984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.644569, 18.597002, 21.122280>,  <17.923265, 18.668648, 20.844439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644569, 18.597002, 21.122280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686055, 0.116396, 0.718179,
		-0.209484, 0.976919, 0.041783,
		-0.696739, -0.179112, 0.694603,
		17.435547, 18.543268, 21.330662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054487, 19.195417, 21.408096>,  <17.923265, 18.668648, 20.844439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054487, 19.195417, 21.408096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822594, 18.929037, 21.595892>,  <17.683458, 18.769209, 21.708569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822594, 18.929037, 21.595892>,  <18.054487, 19.195417, 21.408096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822594, 18.929037, 21.595892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571822, 0.077952, 0.816666,
		-0.580456, 0.741913, 0.335613,
		-0.579733, -0.665950, 0.469490,
		17.648674, 18.729252, 21.736738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.920753, 19.441523, 21.966503>,  <18.054487, 19.195417, 21.408096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.920753, 19.441523, 21.966503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858191, 19.057673, 22.060020>,  <17.820654, 18.827362, 22.116131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858191, 19.057673, 22.060020>,  <17.920753, 19.441523, 21.966503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858191, 19.057673, 22.060020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370901, 0.162317, 0.914377,
		-0.915407, 0.229728, 0.330539,
		-0.156406, -0.959624, 0.233792,
		17.811270, 18.769785, 22.130157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761831, 19.466253, 22.623634>,  <17.920753, 19.441523, 21.966503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761831, 19.466253, 22.623634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.856096, 19.082779, 22.559908>,  <17.912655, 18.852694, 22.521673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.856096, 19.082779, 22.559908>,  <17.761831, 19.466253, 22.623634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856096, 19.082779, 22.559908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331371, -0.074839, 0.940528,
		-0.913595, -0.274441, 0.300044,
		0.235665, -0.958687, -0.159315,
		17.926796, 18.795174, 22.512114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.535290, 19.108160, 23.199682>,  <17.761831, 19.466253, 22.623634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.535290, 19.108160, 23.199682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.837332, 18.921612, 23.015371>,  <18.018557, 18.809683, 22.904785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.837332, 18.921612, 23.015371>,  <17.535290, 19.108160, 23.199682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.837332, 18.921612, 23.015371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488642, -0.068212, 0.869814,
		-0.437085, -0.881956, 0.176380,
		0.755106, -0.466369, -0.460775,
		18.063864, 18.781700, 22.877138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817739, 18.683950, 23.736362>,  <17.535290, 19.108160, 23.199682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817739, 18.683950, 23.736362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.114328, 18.659208, 23.469112>,  <18.292282, 18.644363, 23.308764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.114328, 18.659208, 23.469112>,  <17.817739, 18.683950, 23.736362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114328, 18.659208, 23.469112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662107, -0.093963, 0.743496,
		-0.108768, -0.993652, -0.028717,
		0.741474, -0.061855, -0.668124,
		18.336771, 18.640652, 23.268675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311544, 18.194588, 24.107780>,  <17.817739, 18.683950, 23.736362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311544, 18.194588, 24.107780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.513231, 18.382280, 23.817791>,  <18.634243, 18.494896, 23.643797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.513231, 18.382280, 23.817791>,  <18.311544, 18.194588, 24.107780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.513231, 18.382280, 23.817791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773218, 0.128550, 0.620974,
		0.384576, -0.873668, -0.298002,
		0.504217, 0.469233, -0.724973,
		18.664497, 18.523050, 23.600300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106470, 17.890827, 24.074512>,  <18.311544, 18.194588, 24.107780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106470, 17.890827, 24.074512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072645, 18.265602, 23.938869>,  <19.052351, 18.490467, 23.857483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072645, 18.265602, 23.938869>,  <19.106470, 17.890827, 24.074512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072645, 18.265602, 23.938869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656568, 0.308391, 0.688341,
		0.749511, -0.164441, -0.641243,
		-0.084562, 0.936939, -0.339109,
		19.047277, 18.546684, 23.837137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735828, 18.022516, 23.844063>,  <19.106470, 17.890827, 24.074512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735828, 18.022516, 23.844063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552988, 18.374996, 23.892296>,  <19.443283, 18.586485, 23.921236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552988, 18.374996, 23.892296>,  <19.735828, 18.022516, 23.844063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552988, 18.374996, 23.892296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737529, 0.299768, 0.605136,
		0.497100, 0.365543, -0.786937,
		-0.457102, 0.881202, 0.120584,
		19.415857, 18.639357, 23.928471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.254427, 18.612509, 23.761599>,  <19.735828, 18.022516, 23.844063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.254427, 18.612509, 23.761599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.946751, 18.763372, 23.967937>,  <19.762146, 18.853891, 24.091742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.946751, 18.763372, 23.967937>,  <20.254427, 18.612509, 23.761599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946751, 18.763372, 23.967937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638434, 0.488160, 0.595064,
		-0.027382, 0.787052, -0.616279,
		-0.769189, 0.377159, 0.515848,
		19.715994, 18.876520, 24.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.363585, 19.390429, 23.797890>,  <20.254427, 18.612509, 23.761599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.363585, 19.390429, 23.797890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.134520, 19.241135, 24.089849>,  <19.997080, 19.151558, 24.265026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.134520, 19.241135, 24.089849>,  <20.363585, 19.390429, 23.797890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134520, 19.241135, 24.089849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463894, 0.586553, 0.663896,
		-0.675914, 0.718784, -0.162756,
		-0.572663, -0.373235, 0.729899,
		19.962721, 19.129164, 24.308819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.256054, 19.978840, 24.303782>,  <20.363585, 19.390429, 23.797890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.256054, 19.978840, 24.303782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.168020, 19.638460, 24.494549>,  <20.115200, 19.434233, 24.609009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.168020, 19.638460, 24.494549>,  <20.256054, 19.978840, 24.303782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.168020, 19.638460, 24.494549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368148, 0.380294, 0.848436,
		-0.903344, 0.362304, 0.229577,
		-0.220085, -0.850948, 0.476918,
		20.101995, 19.383175, 24.637625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187372, 20.198721, 24.943304>,  <20.256054, 19.978840, 24.303782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187372, 20.198721, 24.943304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.190294, 19.807199, 25.025177>,  <20.192047, 19.572287, 25.074301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.190294, 19.807199, 25.025177>,  <20.187372, 20.198721, 24.943304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.190294, 19.807199, 25.025177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091026, 0.204488, 0.974628,
		-0.995822, 0.011514, 0.090590,
		0.007303, -0.978801, 0.204681,
		20.192486, 19.513559, 25.086582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.681662, 20.059063, 25.444847>,  <20.187372, 20.198721, 24.943304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.681662, 20.059063, 25.444847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.966616, 19.780327, 25.478123>,  <20.137589, 19.613085, 25.498089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.966616, 19.780327, 25.478123>,  <19.681662, 20.059063, 25.444847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.966616, 19.780327, 25.478123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145103, 0.262233, 0.954033,
		-0.686626, -0.667566, 0.287925,
		0.712383, -0.696843, 0.083190,
		20.180330, 19.571274, 25.503080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543865, 19.792830, 26.089819>,  <19.681662, 20.059063, 25.444847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543865, 19.792830, 26.089819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906616, 19.656487, 25.990715>,  <20.124268, 19.574680, 25.931252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906616, 19.656487, 25.990715>,  <19.543865, 19.792830, 26.089819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906616, 19.656487, 25.990715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380689, 0.410609, 0.828538,
		-0.180680, -0.845705, 0.502134,
		0.906879, -0.340857, -0.247762,
		20.178680, 19.554230, 25.916386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936037, 19.354420, 26.672976>,  <19.543865, 19.792830, 26.089819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.936037, 19.354420, 26.672976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228756, 19.477066, 26.429514>,  <20.404387, 19.550653, 26.283436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228756, 19.477066, 26.429514>,  <19.936037, 19.354420, 26.672976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.228756, 19.477066, 26.429514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489307, 0.385284, 0.782391,
		0.474399, -0.870369, 0.131919,
		0.731795, 0.306616, -0.608656,
		20.448296, 19.569050, 26.246918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.622450, 19.516644, 26.951077>,  <19.936037, 19.354420, 26.672976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.622450, 19.516644, 26.951077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.388929, 19.499342, 27.275373>,  <20.248817, 19.488962, 27.469952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.388929, 19.499342, 27.275373>,  <20.622450, 19.516644, 26.951077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.388929, 19.499342, 27.275373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811357, 0.005344, 0.584526,
		-0.029615, 0.999050, 0.031974,
		-0.583800, -0.043253, 0.810744,
		20.213789, 19.486366, 27.518597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.739067, 20.159592, 27.474470>,  <20.622450, 19.516644, 26.951077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.739067, 20.159592, 27.474470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.603224, 19.818110, 27.632385>,  <20.521719, 19.613220, 27.727135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.603224, 19.818110, 27.632385>,  <20.739067, 20.159592, 27.474470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.603224, 19.818110, 27.632385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667349, 0.077077, 0.740746,
		-0.662806, 0.515024, 0.543543,
		-0.339607, -0.853704, 0.394787,
		20.501341, 19.561998, 27.750822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.770119, 20.809414, 27.114925>,  <20.739067, 20.159592, 27.474470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.770119, 20.809414, 27.114925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776035, 21.162708, 27.302404>,  <20.779585, 21.374685, 27.414892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776035, 21.162708, 27.302404>,  <20.770119, 20.809414, 27.114925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776035, 21.162708, 27.302404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852564, -0.233766, 0.467427,
		0.522414, -0.406508, 0.749557,
		0.014792, 0.883235, 0.468696,
		20.780474, 21.427679, 27.443014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852243, 20.810490, 27.816523>,  <20.770119, 20.809414, 27.114925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852243, 20.810490, 27.816523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.646391, 21.144499, 27.738661>,  <20.522881, 21.344904, 27.691944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.646391, 21.144499, 27.738661>,  <20.852243, 20.810490, 27.816523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646391, 21.144499, 27.738661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785767, -0.368463, 0.496796,
		0.343114, 0.408618, 0.845757,
		-0.514630, 0.835025, -0.194653,
		20.492002, 21.395006, 27.680265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.611900, 21.194635, 28.453629>,  <20.852243, 20.810490, 27.816523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.611900, 21.194635, 28.453629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.377087, 21.231148, 28.131868>,  <20.236198, 21.253056, 27.938812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.377087, 21.231148, 28.131868>,  <20.611900, 21.194635, 28.453629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.377087, 21.231148, 28.131868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767573, -0.378598, 0.517199,
		-0.257333, 0.921049, 0.292315,
		-0.587035, 0.091281, -0.804399,
		20.200975, 21.258532, 27.890549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013262, 21.378180, 28.681368>,  <20.611900, 21.194635, 28.453629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013262, 21.378180, 28.681368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.902277, 21.239723, 28.322882>,  <19.835686, 21.156649, 28.107790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.902277, 21.239723, 28.322882>,  <20.013262, 21.378180, 28.681368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902277, 21.239723, 28.322882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800862, -0.431954, 0.414772,
		-0.530693, 0.832828, -0.157360,
		-0.277461, -0.346140, -0.896215,
		19.819038, 21.135881, 28.054016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188225, 21.623384, 29.395641>,  <20.013262, 21.378180, 28.681368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188225, 21.623384, 29.395641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871368, 21.816309, 29.545248>,  <19.681255, 21.932064, 29.635012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871368, 21.816309, 29.545248>,  <20.188225, 21.623384, 29.395641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871368, 21.816309, 29.545248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454323, -0.056765, -0.889027,
		-0.407559, -0.874158, 0.264092,
		-0.792141, 0.482314, 0.374015,
		19.633726, 21.961002, 29.657452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520683, 21.227823, 29.189564>,  <20.188225, 21.623384, 29.395641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520683, 21.227823, 29.189564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464819, 21.623896, 29.187082>,  <19.431301, 21.861538, 29.185593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464819, 21.623896, 29.187082>,  <19.520683, 21.227823, 29.189564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464819, 21.623896, 29.187082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332017, -0.052732, -0.941799,
		-0.932877, -0.129471, 0.336121,
		-0.139659, 0.990180, -0.006206,
		19.422920, 21.920950, 29.185221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766077, 21.446880, 28.900106>,  <19.520683, 21.227823, 29.189564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766077, 21.446880, 28.900106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.010546, 21.755184, 28.828104>,  <19.157227, 21.940166, 28.784903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.010546, 21.755184, 28.828104>,  <18.766077, 21.446880, 28.900106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010546, 21.755184, 28.828104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315186, 0.028385, -0.948605,
		-0.726036, 0.636495, 0.260280,
		0.611170, 0.770759, -0.180005,
		19.193897, 21.986412, 28.774103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411421, 21.796541, 28.386089>,  <18.766077, 21.446880, 28.900106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411421, 21.796541, 28.386089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777523, 21.957485, 28.377937>,  <18.997185, 22.054050, 28.373047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777523, 21.957485, 28.377937>,  <18.411421, 21.796541, 28.386089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777523, 21.957485, 28.377937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122412, 0.229545, -0.965570,
		-0.383826, 0.886238, 0.259346,
		0.915256, 0.402358, -0.020381,
		19.052099, 22.078192, 28.371822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287373, 22.458496, 28.008087>,  <18.411421, 21.796541, 28.386089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287373, 22.458496, 28.008087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.677784, 22.373621, 27.988710>,  <18.912031, 22.322697, 27.977083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.677784, 22.373621, 27.988710>,  <18.287373, 22.458496, 28.008087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677784, 22.373621, 27.988710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022400, 0.319328, -0.947380,
		0.216492, 0.923583, 0.316426,
		0.976028, -0.212188, -0.048443,
		18.970592, 22.309965, 27.974178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575459, 22.959671, 27.722511>,  <18.287373, 22.458496, 28.008087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575459, 22.959671, 27.722511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.832468, 22.667053, 27.631292>,  <18.986673, 22.491484, 27.576561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.832468, 22.667053, 27.631292>,  <18.575459, 22.959671, 27.722511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.832468, 22.667053, 27.631292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038713, 0.266237, -0.963130,
		0.765285, 0.627664, 0.142743,
		0.642526, -0.731543, -0.228046,
		19.025227, 22.447590, 27.562878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163507, 23.263863, 27.348719>,  <18.575459, 22.959671, 27.722511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163507, 23.263863, 27.348719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156397, 22.874016, 27.259453>,  <19.152130, 22.640108, 27.205893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156397, 22.874016, 27.259453>,  <19.163507, 23.263863, 27.348719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156397, 22.874016, 27.259453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045973, 0.223760, -0.973559,
		0.998784, -0.007045, -0.048784,
		-0.017775, -0.974619, -0.223164,
		19.151064, 22.581631, 27.192503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.572598, 23.308523, 26.734713>,  <19.163507, 23.263863, 27.348719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.572598, 23.308523, 26.734713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443024, 22.930092, 26.734428>,  <19.365280, 22.703033, 26.734259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443024, 22.930092, 26.734428>,  <19.572598, 23.308523, 26.734713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.443024, 22.930092, 26.734428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129509, -0.043599, -0.990619,
		0.937174, -0.320986, 0.136649,
		-0.323933, -0.946080, -0.000711,
		19.345844, 22.646267, 26.734215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914469, 22.905485, 26.207727>,  <19.572598, 23.308523, 26.734713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914469, 22.905485, 26.207727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.593325, 22.674469, 26.266870>,  <19.400639, 22.535860, 26.302357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.593325, 22.674469, 26.266870>,  <19.914469, 22.905485, 26.207727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.593325, 22.674469, 26.266870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035592, -0.201138, -0.978916,
		0.595104, -0.791195, 0.140930,
		-0.802860, -0.577541, 0.147858,
		19.352467, 22.501207, 26.311228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917387, 22.353315, 25.674892>,  <19.914469, 22.905485, 26.207727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.917387, 22.353315, 25.674892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.534708, 22.342678, 25.790838>,  <19.305101, 22.336296, 25.860407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.534708, 22.342678, 25.790838>,  <19.917387, 22.353315, 25.674892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534708, 22.342678, 25.790838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278434, -0.206774, -0.937933,
		0.084878, -0.978027, 0.190416,
		-0.956698, -0.026591, 0.289866,
		19.247698, 22.334702, 25.877798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.752989, 21.854050, 25.220825>,  <19.917387, 22.353315, 25.674892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.752989, 21.854050, 25.220825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432226, 22.031153, 25.381279>,  <19.239769, 22.137415, 25.477551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432226, 22.031153, 25.381279>,  <19.752989, 21.854050, 25.220825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432226, 22.031153, 25.381279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517475, -0.179167, -0.836731,
		-0.298600, -0.878558, 0.372793,
		-0.801908, 0.442759, 0.401132,
		19.191654, 22.163980, 25.501619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239088, 21.500624, 25.085629>,  <19.752989, 21.854050, 25.220825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.239088, 21.500624, 25.085629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.112268, 21.878582, 25.118259>,  <19.036177, 22.105356, 25.137838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.112268, 21.878582, 25.118259>,  <19.239088, 21.500624, 25.085629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112268, 21.878582, 25.118259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385376, -0.049757, -0.921417,
		-0.866583, -0.323572, 0.379915,
		-0.317049, 0.944894, 0.081578,
		19.017155, 22.162050, 25.142733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580765, 21.350863, 24.944855>,  <19.239088, 21.500624, 25.085629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580765, 21.350863, 24.944855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.555336, 21.749989, 24.952003>,  <18.540079, 21.989464, 24.956293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.555336, 21.749989, 24.952003>,  <18.580765, 21.350863, 24.944855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.555336, 21.749989, 24.952003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320276, -0.003438, -0.947318,
		-0.945189, -0.065945, 0.319796,
		-0.063570, 0.997817, 0.017871,
		18.536264, 22.049334, 24.957365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933706, 21.578737, 24.843481>,  <18.580765, 21.350863, 24.944855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933706, 21.578737, 24.843481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170229, 21.869045, 24.702847>,  <18.312143, 22.043230, 24.618465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170229, 21.869045, 24.702847>,  <17.933706, 21.578737, 24.843481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170229, 21.869045, 24.702847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502685, -0.009201, -0.864421,
		-0.630604, 0.687878, 0.359393,
		0.591309, 0.725769, -0.351588,
		18.347622, 22.086777, 24.597370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.452261, 22.099922, 24.643166>,  <17.933706, 21.578737, 24.843481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.452261, 22.099922, 24.643166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794403, 22.192432, 24.457747>,  <17.999689, 22.247938, 24.346495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794403, 22.192432, 24.457747>,  <17.452261, 22.099922, 24.643166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794403, 22.192432, 24.457747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473343, -0.014669, -0.880756,
		-0.210499, 0.972778, 0.096926,
		0.855358, 0.231277, -0.463546,
		18.051010, 22.261816, 24.318684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306845, 22.683828, 24.142725>,  <17.452261, 22.099922, 24.643166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306845, 22.683828, 24.142725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640182, 22.513496, 24.001755>,  <17.840185, 22.411297, 23.917171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640182, 22.513496, 24.001755>,  <17.306845, 22.683828, 24.142725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.640182, 22.513496, 24.001755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442488, -0.131812, -0.887035,
		0.331271, 0.895151, -0.298269,
		0.833345, -0.425829, -0.352428,
		17.890186, 22.385748, 23.896027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325958, 22.894981, 23.479599>,  <17.306845, 22.683828, 24.142725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325958, 22.894981, 23.479599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.572025, 22.579771, 23.469904>,  <17.719666, 22.390646, 23.464087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.572025, 22.579771, 23.469904>,  <17.325958, 22.894981, 23.479599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572025, 22.579771, 23.469904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386766, -0.274852, -0.880266,
		0.687010, 0.550884, -0.473861,
		0.615166, -0.788025, -0.024237,
		17.756575, 22.343363, 23.462633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692080, 22.889380, 22.771389>,  <17.325958, 22.894981, 23.479599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692080, 22.889380, 22.771389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.676235, 22.522228, 22.929340>,  <17.666729, 22.301937, 23.024111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.676235, 22.522228, 22.929340>,  <17.692080, 22.889380, 22.771389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.676235, 22.522228, 22.929340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531180, -0.315379, -0.786373,
		0.846332, -0.240900, -0.475067,
		-0.039611, -0.917880, 0.394877,
		17.664352, 22.246864, 23.047804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.897835, 22.471991, 22.248724>,  <17.692080, 22.889380, 22.771389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.897835, 22.471991, 22.248724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737698, 22.197941, 22.492144>,  <17.641615, 22.033510, 22.638195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737698, 22.197941, 22.492144>,  <17.897835, 22.471991, 22.248724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737698, 22.197941, 22.492144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319427, -0.518099, -0.793435,
		0.858889, -0.512034, -0.011429,
		-0.400344, -0.685124, 0.608547,
		17.617594, 21.992403, 22.674707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988607, 21.865353, 21.930834>,  <17.897835, 22.471991, 22.248724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.988607, 21.865353, 21.930834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.688719, 21.787794, 22.183918>,  <17.508785, 21.741259, 22.335770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.688719, 21.787794, 22.183918>,  <17.988607, 21.865353, 21.930834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.688719, 21.787794, 22.183918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390916, -0.641695, -0.659858,
		0.533952, -0.742046, 0.405294,
		-0.749720, -0.193896, 0.632712,
		17.463802, 21.729626, 22.373732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805716, 21.207001, 21.735994>,  <17.988607, 21.865353, 21.930834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.805716, 21.207001, 21.735994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.485775, 21.335171, 21.938997>,  <17.293810, 21.412073, 22.060799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.485775, 21.335171, 21.938997>,  <17.805716, 21.207001, 21.735994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485775, 21.335171, 21.938997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591168, -0.566696, -0.573913,
		0.103706, -0.759068, 0.642698,
		-0.799853, 0.320424, 0.507507,
		17.245819, 21.431297, 22.091249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508869, 20.629021, 22.058954>,  <17.805716, 21.207001, 21.735994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508869, 20.629021, 22.058954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234161, 20.912317, 21.993549>,  <17.069336, 21.082296, 21.954306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234161, 20.912317, 21.993549>,  <17.508869, 20.629021, 22.058954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234161, 20.912317, 21.993549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505635, -0.627100, -0.592519,
		-0.522187, -0.324247, 0.788787,
		-0.686771, 0.708243, -0.163513,
		17.028130, 21.124790, 21.944496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084118, 20.197189, 21.728014>,  <17.508869, 20.629021, 22.058954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084118, 20.197189, 21.728014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892740, 20.547281, 21.699556>,  <16.777914, 20.757338, 21.682482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892740, 20.547281, 21.699556>,  <17.084118, 20.197189, 21.728014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892740, 20.547281, 21.699556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599551, -0.384789, -0.701767,
		-0.641583, -0.293102, 0.708846,
		-0.478445, 0.875231, -0.071144,
		16.749207, 20.809851, 21.678213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319939, 20.013975, 21.603239>,  <17.084118, 20.197189, 21.728014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319939, 20.013975, 21.603239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389135, 20.389601, 21.484425>,  <16.430653, 20.614977, 21.413136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389135, 20.389601, 21.484425>,  <16.319939, 20.013975, 21.603239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389135, 20.389601, 21.484425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586380, -0.144112, -0.797114,
		-0.791348, 0.312070, 0.525719,
		0.172993, 0.939066, -0.297034,
		16.441032, 20.671320, 21.395315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617472, 20.181541, 21.294250>,  <16.319939, 20.013975, 21.603239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617472, 20.181541, 21.294250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.896458, 20.442511, 21.175669>,  <16.063850, 20.599092, 21.104519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.896458, 20.442511, 21.175669>,  <15.617472, 20.181541, 21.294250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896458, 20.442511, 21.175669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273740, -0.139760, -0.951595,
		-0.662275, 0.744857, 0.081116,
		0.697466, 0.652422, -0.296456,
		16.105698, 20.638237, 21.086731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262151, 20.592264, 20.659943>,  <15.617472, 20.181541, 21.294250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262151, 20.592264, 20.659943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.658379, 20.642179, 20.637312>,  <15.896115, 20.672129, 20.623734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.658379, 20.642179, 20.637312>,  <15.262151, 20.592264, 20.659943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658379, 20.642179, 20.637312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049062, -0.062489, -0.996839,
		-0.127927, 0.990214, -0.055778,
		0.990569, 0.124786, -0.056575,
		15.955549, 20.679615, 20.620338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428648, 21.172447, 20.123825>,  <15.262151, 20.592264, 20.659943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428648, 21.172447, 20.123825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719546, 20.903963, 20.181225>,  <15.894086, 20.742872, 20.215664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719546, 20.903963, 20.181225>,  <15.428648, 21.172447, 20.123825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719546, 20.903963, 20.181225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058098, -0.148120, -0.987261,
		0.683913, 0.726319, -0.068724,
		0.727246, -0.671209, 0.143499,
		15.937720, 20.702600, 20.224274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921132, 21.321489, 19.618912>,  <15.428648, 21.172447, 20.123825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921132, 21.321489, 19.618912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056589, 20.950394, 19.681675>,  <16.137863, 20.727736, 19.719332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056589, 20.950394, 19.681675>,  <15.921132, 21.321489, 19.618912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056589, 20.950394, 19.681675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090510, -0.133867, -0.986857,
		0.936552, 0.348394, 0.038636,
		0.338643, -0.927740, 0.156906,
		16.158182, 20.672071, 19.728746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.388966, 21.335705, 19.148647>,  <15.921132, 21.321489, 19.618912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.388966, 21.335705, 19.148647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.317177, 20.959190, 19.263031>,  <16.274103, 20.733282, 19.331661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.317177, 20.959190, 19.263031>,  <16.388966, 21.335705, 19.148647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317177, 20.959190, 19.263031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037698, -0.297046, -0.954119,
		0.983040, -0.160459, 0.088797,
		-0.179473, -0.941285, 0.285959,
		16.263334, 20.676805, 19.348818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.865459, 20.904837, 18.865753>,  <16.388966, 21.335705, 19.148647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.865459, 20.904837, 18.865753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568254, 20.645939, 18.933876>,  <16.389931, 20.490601, 18.974751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568254, 20.645939, 18.933876>,  <16.865459, 20.904837, 18.865753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568254, 20.645939, 18.933876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162293, -0.421116, -0.892369,
		0.649300, -0.635403, 0.417938,
		-0.743014, -0.647243, 0.170309,
		16.345350, 20.451765, 18.984968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091286, 20.275848, 18.585703>,  <16.865459, 20.904837, 18.865753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091286, 20.275848, 18.585703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705917, 20.171404, 18.609827>,  <16.474695, 20.108738, 18.624302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705917, 20.171404, 18.609827>,  <17.091286, 20.275848, 18.585703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705917, 20.171404, 18.609827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077188, -0.485887, -0.870606,
		0.256629, -0.834107, 0.488270,
		-0.963423, -0.261112, 0.060310,
		16.416891, 20.093071, 18.627920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989176, 19.485184, 18.325918>,  <17.091286, 20.275848, 18.585703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989176, 19.485184, 18.325918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606792, 19.602392, 18.332605>,  <16.377361, 19.672716, 18.336618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606792, 19.602392, 18.332605>,  <16.989176, 19.485184, 18.325918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606792, 19.602392, 18.332605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194183, -0.588742, -0.784650,
		-0.220076, -0.753341, 0.619713,
		-0.955960, 0.293020, 0.016718,
		16.320004, 19.690298, 18.337620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633268, 18.946468, 18.017296>,  <16.989176, 19.485184, 18.325918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633268, 18.946468, 18.017296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370420, 19.247314, 17.997221>,  <16.212711, 19.427822, 17.985176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370420, 19.247314, 17.997221>,  <16.633268, 18.946468, 18.017296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.370420, 19.247314, 17.997221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383749, -0.391099, -0.836527,
		-0.648792, -0.530439, 0.545622,
		-0.657119, 0.752115, -0.050187,
		16.173285, 19.472948, 17.982164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998695, 18.631519, 18.095736>,  <16.633268, 18.946468, 18.017296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998695, 18.631519, 18.095736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987407, 18.972637, 17.887142>,  <15.980634, 19.177307, 17.761986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987407, 18.972637, 17.887142>,  <15.998695, 18.631519, 18.095736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.987407, 18.972637, 17.887142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388780, -0.489980, -0.780237,
		-0.920898, 0.180722, 0.345378,
		-0.028222, 0.852795, -0.521483,
		15.978940, 19.228476, 17.730698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330600, 18.583422, 17.692017>,  <15.998695, 18.631519, 18.095736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330600, 18.583422, 17.692017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542358, 18.870527, 17.511105>,  <15.669414, 19.042789, 17.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542358, 18.870527, 17.511105>,  <15.330600, 18.583422, 17.692017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542358, 18.870527, 17.511105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437393, -0.225882, -0.870439,
		-0.726930, 0.658632, 0.194363,
		0.529396, 0.717762, -0.452281,
		15.701178, 19.085855, 17.375420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865900, 18.945724, 17.190359>,  <15.330600, 18.583422, 17.692017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865900, 18.945724, 17.190359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237601, 19.015818, 17.060263>,  <15.460622, 19.057873, 16.982204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237601, 19.015818, 17.060263>,  <14.865900, 18.945724, 17.190359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.237601, 19.015818, 17.060263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338978, 0.054328, -0.939224,
		-0.146914, 0.983027, 0.109885,
		0.929252, 0.175233, -0.325243,
		15.516377, 19.068388, 16.962690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867120, 19.344946, 16.637030>,  <14.865900, 18.945724, 17.190359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.867120, 19.344946, 16.637030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.232297, 19.198656, 16.564610>,  <15.451404, 19.110882, 16.521156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.232297, 19.198656, 16.564610>,  <14.867120, 19.344946, 16.637030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.232297, 19.198656, 16.564610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275604, -0.225367, -0.934480,
		0.300959, 0.903026, -0.306542,
		0.912944, -0.365724, -0.181051,
		15.506180, 19.088940, 16.510294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057982, 19.556669, 16.012926>,  <14.867120, 19.344946, 16.637030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057982, 19.556669, 16.012926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.296384, 19.237192, 16.046083>,  <15.439425, 19.045506, 16.065979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.296384, 19.237192, 16.046083>,  <15.057982, 19.556669, 16.012926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296384, 19.237192, 16.046083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375522, -0.368486, -0.850413,
		0.709763, 0.475720, -0.519544,
		0.596003, -0.798692, 0.082895,
		15.475184, 18.997585, 16.070951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275099, 19.478203, 15.358351>,  <15.057982, 19.556669, 16.012926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275099, 19.478203, 15.358351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307364, 19.131948, 15.556004>,  <15.326724, 18.924196, 15.674595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307364, 19.131948, 15.556004>,  <15.275099, 19.478203, 15.358351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307364, 19.131948, 15.556004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428153, -0.477772, -0.767085,
		0.900099, -0.149687, -0.409165,
		0.080665, -0.865637, 0.494131,
		15.331564, 18.872257, 15.704243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397105, 18.961935, 14.794657>,  <15.275099, 19.478203, 15.358351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397105, 18.961935, 14.794657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279616, 18.752539, 15.114578>,  <15.209124, 18.626900, 15.306531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279616, 18.752539, 15.114578>,  <15.397105, 18.961935, 14.794657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279616, 18.752539, 15.114578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443829, -0.666364, -0.599145,
		0.846607, -0.530957, -0.036616,
		-0.293721, -0.523492, 0.799803,
		15.191500, 18.595491, 15.354519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.475655, 18.269245, 14.624874>,  <15.397105, 18.961935, 14.794657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.475655, 18.269245, 14.624874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.222775, 18.251823, 14.934307>,  <15.071048, 18.241369, 15.119967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.222775, 18.251823, 14.934307>,  <15.475655, 18.269245, 14.624874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.222775, 18.251823, 14.934307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479028, -0.762764, -0.434424,
		0.608982, -0.645209, 0.461352,
		-0.632197, -0.043556, 0.773582,
		15.033116, 18.238756, 15.166382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.321602, 17.605331, 14.833759>,  <15.475655, 18.269245, 14.624874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.321602, 17.605331, 14.833759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002124, 17.797789, 14.978306>,  <14.810437, 17.913263, 15.065034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002124, 17.797789, 14.978306>,  <15.321602, 17.605331, 14.833759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.002124, 17.797789, 14.978306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595264, -0.719601, -0.357540,
		0.088011, -0.500674, 0.861150,
		-0.798695, 0.481145, 0.361366,
		14.762515, 17.942133, 15.086716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827635, 17.089342, 15.006126>,  <15.321602, 17.605331, 14.833759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827635, 17.089342, 15.006126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.597681, 17.416630, 15.004228>,  <14.459709, 17.613003, 15.003089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.597681, 17.416630, 15.004228>,  <14.827635, 17.089342, 15.006126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597681, 17.416630, 15.004228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791483, -0.557550, -0.250386,
		-0.207517, -0.140186, 0.968134,
		-0.574884, 0.818221, -0.004746,
		14.425216, 17.662096, 15.002804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.327706, 17.304707, 15.590061>,  <14.827635, 17.089342, 15.006126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.327706, 17.304707, 15.590061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662708, 17.088133, 15.560574>,  <14.863709, 16.958189, 15.542881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662708, 17.088133, 15.560574>,  <14.327706, 17.304707, 15.590061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662708, 17.088133, 15.560574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457621, -0.768699, 0.446861,
		-0.298613, -0.340513, -0.891561,
		0.837504, -0.541435, -0.073718,
		14.913960, 16.925703, 15.538458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143935, 16.631771, 15.508739>,  <14.327706, 17.304707, 15.590061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143935, 16.631771, 15.508739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490443, 16.665192, 15.705755>,  <14.698348, 16.685244, 15.823965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490443, 16.665192, 15.705755>,  <14.143935, 16.631771, 15.508739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490443, 16.665192, 15.705755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329804, -0.644895, 0.689449,
		0.375240, -0.759691, -0.531097,
		0.866270, 0.083551, 0.492539,
		14.750324, 16.690256, 15.853517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494525, 15.984842, 15.581236>,  <14.143935, 16.631771, 15.508739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494525, 15.984842, 15.581236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656131, 16.204643, 15.873761>,  <14.753095, 16.336523, 16.049276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656131, 16.204643, 15.873761>,  <14.494525, 15.984842, 15.581236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656131, 16.204643, 15.873761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023886, -0.792856, 0.608940,
		0.914440, -0.263489, -0.307200,
		0.404015, 0.549502, 0.731313,
		14.777335, 16.369493, 16.093155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263958, 15.963195, 15.768440>,  <14.494525, 15.984842, 15.581236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.263958, 15.963195, 15.768440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043211, 16.010944, 16.098577>,  <14.910763, 16.039595, 16.296659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043211, 16.010944, 16.098577>,  <15.263958, 15.963195, 15.768440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043211, 16.010944, 16.098577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172511, -0.951952, 0.253036,
		0.815893, 0.282023, 0.504759,
		-0.551868, 0.119373, 0.825343,
		14.877650, 16.046757, 16.346180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646766, 15.750965, 16.425901>,  <15.263958, 15.963195, 15.768440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646766, 15.750965, 16.425901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258481, 15.743375, 16.521702>,  <15.025511, 15.738820, 16.579182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258481, 15.743375, 16.521702>,  <15.646766, 15.750965, 16.425901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258481, 15.743375, 16.521702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112861, -0.916053, 0.384849,
		0.212093, 0.400607, 0.891364,
		-0.970711, -0.018976, 0.239501,
		14.967268, 15.737682, 16.593552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487583, 15.691071, 17.089331>,  <15.646766, 15.750965, 16.425901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487583, 15.691071, 17.089331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176910, 15.524654, 16.900154>,  <14.990507, 15.424805, 16.786648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176910, 15.524654, 16.900154>,  <15.487583, 15.691071, 17.089331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176910, 15.524654, 16.900154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164824, -0.858906, 0.484886,
		-0.607946, 0.298649, 0.735670,
		-0.776682, -0.416040, -0.472944,
		14.943906, 15.399842, 16.758270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146442, 15.413525, 16.889923>,  <15.487583, 15.691071, 17.089331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.146442, 15.413525, 16.889923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416725, 15.157245, 16.744087>,  <16.578896, 15.003477, 16.656586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416725, 15.157245, 16.744087>,  <16.146442, 15.413525, 16.889923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416725, 15.157245, 16.744087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206110, 0.310651, -0.927909,
		0.707770, 0.702140, 0.077854,
		0.675707, -0.640700, -0.364587,
		16.619438, 14.965034, 16.634710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.545158, 15.847971, 16.482870>,  <16.146442, 15.413525, 16.889923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.545158, 15.847971, 16.482870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.607641, 15.471930, 16.361671>,  <16.645130, 15.246305, 16.288952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.607641, 15.471930, 16.361671>,  <16.545158, 15.847971, 16.482870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607641, 15.471930, 16.361671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187272, 0.273009, -0.943608,
		0.969809, 0.204141, -0.133409,
		0.156207, -0.940103, -0.302997,
		16.654503, 15.189898, 16.270773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026707, 15.831000, 15.902807>,  <16.545158, 15.847971, 16.482870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026707, 15.831000, 15.902807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829842, 15.488162, 15.841927>,  <16.711723, 15.282459, 15.805398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829842, 15.488162, 15.841927>,  <17.026707, 15.831000, 15.902807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829842, 15.488162, 15.841927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003819, 0.172715, -0.984964,
		0.870496, -0.485343, -0.081730,
		-0.492161, -0.857095, -0.152201,
		16.682194, 15.231033, 15.796267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301615, 15.544600, 15.250926>,  <17.026707, 15.831000, 15.902807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301615, 15.544600, 15.250926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.960468, 15.342403, 15.303229>,  <16.755781, 15.221086, 15.334611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.960468, 15.342403, 15.303229>,  <17.301615, 15.544600, 15.250926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960468, 15.342403, 15.303229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148718, -0.004877, -0.988867,
		0.500504, -0.862817, -0.071016,
		-0.852865, -0.505493, 0.130758,
		16.704609, 15.190756, 15.342457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261305, 14.860099, 14.774980>,  <17.301615, 15.544600, 15.250926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261305, 14.860099, 14.774980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.885174, 14.941350, 14.884174>,  <16.659494, 14.990101, 14.949691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.885174, 14.941350, 14.884174>,  <17.261305, 14.860099, 14.774980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.885174, 14.941350, 14.884174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302776, -0.133391, -0.943681,
		-0.155292, -0.970020, 0.186938,
		-0.940325, 0.203147, 0.272984,
		16.603075, 15.002288, 14.966070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822641, 14.330980, 14.422132>,  <17.261305, 14.860099, 14.774980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822641, 14.330980, 14.422132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598188, 14.654874, 14.490792>,  <16.463516, 14.849210, 14.531988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598188, 14.654874, 14.490792>,  <16.822641, 14.330980, 14.422132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598188, 14.654874, 14.490792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506045, -0.171493, -0.845286,
		-0.655019, -0.561180, 0.505991,
		-0.561131, 0.809733, 0.171651,
		16.429850, 14.897794, 14.542288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298340, 14.100998, 14.000452>,  <16.822641, 14.330980, 14.422132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298340, 14.100998, 14.000452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227942, 14.484118, 14.091358>,  <16.185703, 14.713989, 14.145902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227942, 14.484118, 14.091358>,  <16.298340, 14.100998, 14.000452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227942, 14.484118, 14.091358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374931, 0.148245, -0.915123,
		-0.910194, -0.246266, 0.333018,
		-0.175995, 0.957798, 0.227264,
		16.175142, 14.771457, 14.159537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611596, 14.235512, 13.908910>,  <16.298340, 14.100998, 14.000452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611596, 14.235512, 13.908910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813383, 14.577172, 13.858415>,  <15.934456, 14.782168, 13.828117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813383, 14.577172, 13.858415>,  <15.611596, 14.235512, 13.908910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813383, 14.577172, 13.858415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405828, 0.105512, -0.907839,
		-0.762112, 0.509207, 0.399866,
		0.504468, 0.854152, -0.126238,
		15.964724, 14.833418, 13.820543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198564, 14.642189, 13.627741>,  <15.611596, 14.235512, 13.908910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198564, 14.642189, 13.627741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546197, 14.824755, 13.551447>,  <15.754777, 14.934295, 13.505671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546197, 14.824755, 13.551447>,  <15.198564, 14.642189, 13.627741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546197, 14.824755, 13.551447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321625, 0.228415, -0.918904,
		-0.375835, 0.859949, 0.345306,
		0.869083, 0.456415, -0.190734,
		15.806922, 14.961679, 13.494226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076359, 15.270285, 13.220274>,  <15.198564, 14.642189, 13.627741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.076359, 15.270285, 13.220274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468196, 15.219354, 13.158067>,  <15.703299, 15.188795, 13.120743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468196, 15.219354, 13.158067>,  <15.076359, 15.270285, 13.220274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468196, 15.219354, 13.158067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135139, 0.155505, -0.978548,
		0.148780, 0.979595, 0.135125,
		0.979593, -0.127328, -0.155517,
		15.762074, 15.181155, 13.111412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206723, 15.761496, 12.686081>,  <15.076359, 15.270285, 13.220274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206723, 15.761496, 12.686081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482887, 15.472129, 12.685483>,  <15.648585, 15.298509, 12.685124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482887, 15.472129, 12.685483>,  <15.206723, 15.761496, 12.686081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482887, 15.472129, 12.685483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050925, -0.046539, -0.997618,
		0.721623, 0.688842, -0.068972,
		0.690410, -0.723417, -0.001496,
		15.690010, 15.255104, 12.685034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684096, 15.951716, 12.166890>,  <15.206723, 15.761496, 12.686081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684096, 15.951716, 12.166890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701457, 15.554641, 12.211942>,  <15.711874, 15.316396, 12.238973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701457, 15.554641, 12.211942>,  <15.684096, 15.951716, 12.166890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.701457, 15.554641, 12.211942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089025, -0.108444, -0.990108,
		0.995083, 0.053000, 0.083667,
		0.043402, -0.992689, 0.112630,
		15.714478, 15.256834, 12.245730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251038, 15.757812, 11.622973>,  <15.684096, 15.951716, 12.166890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251038, 15.757812, 11.622973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.036303, 15.432237, 11.711792>,  <15.907461, 15.236891, 11.765083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.036303, 15.432237, 11.711792>,  <16.251038, 15.757812, 11.622973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036303, 15.432237, 11.711792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139606, -0.345258, -0.928066,
		0.832054, -0.467223, 0.298979,
		-0.536839, -0.813941, 0.222047,
		15.875251, 15.188054, 11.778406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492725, 15.273975, 11.208982>,  <16.251038, 15.757812, 11.622973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492725, 15.273975, 11.208982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170906, 15.070253, 11.331170>,  <15.977815, 14.948020, 11.404483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170906, 15.070253, 11.331170>,  <16.492725, 15.273975, 11.208982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170906, 15.070253, 11.331170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000380, -0.513914, -0.857842,
		0.593888, -0.690291, 0.413275,
		-0.804548, -0.509305, 0.305470,
		15.929542, 14.917462, 11.422811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724041, 14.618019, 11.452315>,  <16.492725, 15.273975, 11.208982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724041, 14.618019, 11.452315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.346931, 14.589520, 11.322024>,  <16.120665, 14.572421, 11.243850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.346931, 14.589520, 11.322024>,  <16.724041, 14.618019, 11.452315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346931, 14.589520, 11.322024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279449, -0.701744, -0.655335,
		-0.181888, -0.708858, 0.681497,
		-0.942776, -0.071246, -0.325728,
		16.064098, 14.568147, 11.224306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506725, 13.895151, 11.367004>,  <16.724041, 14.618019, 11.452315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506725, 13.895151, 11.367004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.249014, 14.088048, 11.129568>,  <16.094387, 14.203786, 10.987106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.249014, 14.088048, 11.129568>,  <16.506725, 13.895151, 11.367004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.249014, 14.088048, 11.129568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309087, -0.545752, -0.778858,
		-0.699552, -0.685272, 0.202560,
		-0.644276, 0.482243, -0.593590,
		16.055731, 14.232720, 10.951491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123623, 13.419218, 11.058053>,  <16.506725, 13.895151, 11.367004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.123623, 13.419218, 11.058053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068777, 13.729636, 10.811816>,  <16.035870, 13.915887, 10.664074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068777, 13.729636, 10.811816>,  <16.123623, 13.419218, 11.058053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068777, 13.729636, 10.811816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255561, -0.572708, -0.778906,
		-0.957020, -0.264122, -0.119799,
		-0.137116, 0.776045, -0.615592,
		16.027641, 13.962450, 10.627138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532152, 13.238124, 10.671043>,  <16.123623, 13.419218, 11.058053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532152, 13.238124, 10.671043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730186, 13.525686, 10.475875>,  <15.849007, 13.698223, 10.358774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730186, 13.525686, 10.475875>,  <15.532152, 13.238124, 10.671043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730186, 13.525686, 10.475875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031729, -0.546240, -0.837028,
		-0.868265, 0.429881, -0.247625,
		0.495085, 0.718905, -0.487920,
		15.878712, 13.741358, 10.329499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237974, 13.143672, 9.965848>,  <15.532152, 13.238124, 10.671043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237974, 13.143672, 9.965848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.566493, 13.369945, 9.936253>,  <15.763604, 13.505709, 9.918495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.566493, 13.369945, 9.936253>,  <15.237974, 13.143672, 9.965848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.566493, 13.369945, 9.936253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285022, -0.519201, -0.805725,
		-0.494199, 0.640652, -0.587650,
		0.821298, 0.565682, -0.073988,
		15.812882, 13.539649, 9.914056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315729, 13.297163, 9.257354>,  <15.237974, 13.143672, 9.965848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315729, 13.297163, 9.257354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671235, 13.325828, 9.438444>,  <15.884539, 13.343026, 9.547098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671235, 13.325828, 9.438444>,  <15.315729, 13.297163, 9.257354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671235, 13.325828, 9.438444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447765, -0.346888, -0.824121,
		0.097988, 0.935165, -0.340390,
		0.888766, 0.071661, 0.452725,
		15.937865, 13.347326, 9.574262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712992, 13.389977, 8.663599>,  <15.315729, 13.297163, 9.257354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712992, 13.389977, 8.663599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986375, 13.289143, 8.937632>,  <16.150406, 13.228642, 9.102051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986375, 13.289143, 8.937632>,  <15.712992, 13.389977, 8.663599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986375, 13.289143, 8.937632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554052, -0.431916, -0.711670,
		0.475301, 0.865968, -0.155528,
		0.683459, -0.252087, 0.685081,
		16.191412, 13.213516, 9.143156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266647, 13.665242, 8.375937>,  <15.712992, 13.389977, 8.663599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266647, 13.665242, 8.375937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388962, 13.395752, 8.645036>,  <16.462351, 13.234057, 8.806495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388962, 13.395752, 8.645036>,  <16.266647, 13.665242, 8.375937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388962, 13.395752, 8.645036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767804, -0.243331, -0.592678,
		0.563003, 0.697770, 0.442883,
		0.305786, -0.673726, 0.672746,
		16.480698, 13.193634, 8.846860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043341, 13.695398, 8.456261>,  <16.266647, 13.665242, 8.375937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043341, 13.695398, 8.456261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.924845, 13.323428, 8.543422>,  <16.853748, 13.100246, 8.595718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.924845, 13.323428, 8.543422>,  <17.043341, 13.695398, 8.456261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.924845, 13.323428, 8.543422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532830, -0.350247, -0.770337,
		0.792676, -0.112098, 0.599249,
		-0.296238, -0.929925, 0.217903,
		16.835974, 13.044451, 8.608792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368040, 13.675316, 9.238631>,  <17.043341, 13.695398, 8.456261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368040, 13.675316, 9.238631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088757, 13.390948, 9.204926>,  <16.921186, 13.220327, 9.184702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088757, 13.390948, 9.204926>,  <17.368040, 13.675316, 9.238631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088757, 13.390948, 9.204926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585135, -0.498896, -0.639312,
		0.412461, -0.495678, 0.764316,
		-0.698207, -0.710920, -0.084263,
		16.879295, 13.177672, 9.179646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735996, 12.993262, 9.422513>,  <17.368040, 13.675316, 9.238631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735996, 12.993262, 9.422513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.427130, 12.991600, 9.168351>,  <17.241810, 12.990602, 9.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.427130, 12.991600, 9.168351>,  <17.735996, 12.993262, 9.422513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.427130, 12.991600, 9.168351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600256, -0.332809, -0.727277,
		-0.208445, -0.942985, 0.259480,
		-0.772168, -0.004157, -0.635405,
		17.195478, 12.990353, 8.977730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525326, 12.240969, 9.239198>,  <17.735996, 12.993262, 9.422513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525326, 12.240969, 9.239198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.484669, 12.546100, 8.983772>,  <17.460274, 12.729177, 8.830517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.484669, 12.546100, 8.983772>,  <17.525326, 12.240969, 9.239198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.484669, 12.546100, 8.983772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786163, -0.331742, -0.521435,
		-0.609603, -0.555016, -0.565987,
		-0.101643, 0.762826, -0.638565,
		17.454176, 12.774947, 8.792203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569578, 11.524367, 9.401221>,  <17.525326, 12.240969, 9.239198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569578, 11.524367, 9.401221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300179, 11.611894, 9.683644>,  <17.138538, 11.664410, 9.853098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300179, 11.611894, 9.683644>,  <17.569578, 11.524367, 9.401221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300179, 11.611894, 9.683644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568678, -0.456840, 0.684034,
		0.472233, 0.862216, 0.183247,
		-0.673500, 0.218815, 0.706058,
		17.098129, 11.677538, 9.895462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.832615, 11.846559, 9.969190>,  <17.569578, 11.524367, 9.401221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.832615, 11.846559, 9.969190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524427, 11.664145, 10.147365>,  <17.339516, 11.554697, 10.254270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524427, 11.664145, 10.147365>,  <17.832615, 11.846559, 9.969190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.524427, 11.664145, 10.147365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539082, -0.093139, 0.837087,
		-0.340252, 0.885076, 0.317600,
		-0.770466, -0.456033, 0.445438,
		17.293287, 11.527335, 10.280996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648642, 12.228371, 10.570400>,  <17.832615, 11.846559, 9.969190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648642, 12.228371, 10.570400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.549458, 11.850522, 10.656382>,  <17.489946, 11.623813, 10.707971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.549458, 11.850522, 10.656382>,  <17.648642, 12.228371, 10.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.549458, 11.850522, 10.656382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405075, 0.100459, 0.908748,
		-0.880017, 0.312405, 0.357733,
		-0.247959, -0.944622, 0.214953,
		17.475069, 11.567135, 10.720867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369532, 12.336185, 11.206025>,  <17.648642, 12.228371, 10.570400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.369532, 12.336185, 11.206025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571545, 12.006331, 11.104106>,  <17.692753, 11.808419, 11.042954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571545, 12.006331, 11.104106>,  <17.369532, 12.336185, 11.206025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.571545, 12.006331, 11.104106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633098, 0.153292, 0.758741,
		-0.586624, -0.544502, 0.599491,
		0.505033, -0.824633, -0.254798,
		17.723055, 11.758942, 11.027666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502598, 11.844635, 11.830820>,  <17.369532, 12.336185, 11.206025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502598, 11.844635, 11.830820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.785322, 11.798391, 11.551662>,  <17.954956, 11.770645, 11.384168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.785322, 11.798391, 11.551662>,  <17.502598, 11.844635, 11.830820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.785322, 11.798391, 11.551662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705041, 0.195691, 0.681631,
		0.057768, -0.973827, 0.219826,
		0.706809, -0.115610, -0.697894,
		17.997364, 11.763708, 11.342295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026270, 11.442066, 12.068252>,  <17.502598, 11.844635, 11.830820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026270, 11.442066, 12.068252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204721, 11.620056, 11.757648>,  <18.311792, 11.726850, 11.571286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204721, 11.620056, 11.757648>,  <18.026270, 11.442066, 12.068252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204721, 11.620056, 11.757648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796178, 0.198929, 0.571426,
		0.408740, -0.873170, -0.265530,
		0.446130, 0.444974, -0.776509,
		18.338560, 11.753549, 11.524695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.718407, 11.108043, 12.039269>,  <18.026270, 11.442066, 12.068252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.718407, 11.108043, 12.039269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.712654, 11.482195, 11.897930>,  <18.709202, 11.706686, 11.813127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.712654, 11.482195, 11.897930>,  <18.718407, 11.108043, 12.039269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.712654, 11.482195, 11.897930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755706, 0.241574, 0.608729,
		0.654753, -0.258272, -0.710348,
		-0.014384, 0.935381, -0.353349,
		18.708340, 11.762809, 11.791925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.409269, 11.373374, 12.190098>,  <18.718407, 11.108043, 12.039269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.409269, 11.373374, 12.190098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237413, 11.720975, 12.091921>,  <19.134300, 11.929536, 12.033014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237413, 11.720975, 12.091921>,  <19.409269, 11.373374, 12.190098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.237413, 11.720975, 12.091921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599765, 0.477814, 0.641854,
		0.675049, 0.128558, -0.726486,
		-0.429641, 0.869003, -0.245443,
		19.108521, 11.981676, 12.018288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.963135, 11.852871, 12.134412>,  <19.409269, 11.373374, 12.190098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.963135, 11.852871, 12.134412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628613, 12.062158, 12.199940>,  <19.427898, 12.187730, 12.239256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628613, 12.062158, 12.199940>,  <19.963135, 11.852871, 12.134412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628613, 12.062158, 12.199940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530859, 0.698074, 0.480502,
		0.137049, 0.488811, -0.861557,
		-0.836305, 0.523218, 0.163819,
		19.377722, 12.219123, 12.249085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.100000, 12.603108, 12.045342>,  <19.963135, 11.852871, 12.134412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.100000, 12.603108, 12.045342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764389, 12.607906, 12.262925>,  <19.563023, 12.610785, 12.393475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764389, 12.607906, 12.262925>,  <20.100000, 12.603108, 12.045342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.764389, 12.607906, 12.262925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402122, 0.687133, 0.605101,
		-0.366513, 0.726433, -0.581346,
		-0.839027, 0.011994, 0.543958,
		19.512680, 12.611505, 12.426112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914265, 13.359708, 12.211241>,  <20.100000, 12.603108, 12.045342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914265, 13.359708, 12.211241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.715616, 13.140436, 12.480422>,  <19.596428, 13.008873, 12.641931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.715616, 13.140436, 12.480422>,  <19.914265, 13.359708, 12.211241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.715616, 13.140436, 12.480422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224251, 0.667962, 0.709605,
		-0.838498, 0.503316, -0.208794,
		-0.496621, -0.548179, 0.672953,
		19.566629, 12.975983, 12.682308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607508, 13.853337, 12.605697>,  <19.914265, 13.359708, 12.211241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607508, 13.853337, 12.605697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608955, 13.523385, 12.831816>,  <19.609825, 13.325414, 12.967487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608955, 13.523385, 12.831816>,  <19.607508, 13.853337, 12.605697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608955, 13.523385, 12.831816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265560, 0.545796, 0.794723,
		-0.964087, 0.147243, 0.221031,
		0.003620, -0.824880, 0.565297,
		19.610041, 13.275921, 13.001405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284021, 14.030849, 13.126012>,  <19.607508, 13.853337, 12.605697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284021, 14.030849, 13.126012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.461210, 13.704609, 13.274915>,  <19.567524, 13.508865, 13.364257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.461210, 13.704609, 13.274915>,  <19.284021, 14.030849, 13.126012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.461210, 13.704609, 13.274915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322823, 0.532470, 0.782471,
		-0.836398, -0.226438, 0.499163,
		0.442971, -0.815599, 0.372258,
		19.594101, 13.459929, 13.386592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066492, 14.070917, 13.839459>,  <19.284021, 14.030849, 13.126012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066492, 14.070917, 13.839459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356094, 13.796135, 13.864466>,  <19.529856, 13.631266, 13.879469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356094, 13.796135, 13.864466>,  <19.066492, 14.070917, 13.839459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.356094, 13.796135, 13.864466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376470, 0.469457, 0.798674,
		-0.578001, -0.554710, 0.598507,
		0.724006, -0.686955, 0.062515,
		19.573296, 13.590049, 13.883220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.083403, 13.815178, 14.544773>,  <19.066492, 14.070917, 13.839459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.083403, 13.815178, 14.544773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.438850, 13.799776, 14.361962>,  <19.652119, 13.790535, 14.252275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.438850, 13.799776, 14.361962>,  <19.083403, 13.815178, 14.544773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438850, 13.799776, 14.361962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422148, 0.458210, 0.782198,
		0.179296, -0.888010, 0.423429,
		0.888619, -0.038504, -0.457027,
		19.705437, 13.788225, 14.224854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653727, 13.543251, 15.042731>,  <19.083403, 13.815178, 14.544773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.653727, 13.543251, 15.042731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884205, 13.702520, 14.757226>,  <20.022491, 13.798081, 14.585923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884205, 13.702520, 14.757226>,  <19.653727, 13.543251, 15.042731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884205, 13.702520, 14.757226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531696, 0.480637, 0.697343,
		0.620724, -0.781310, 0.065234,
		0.576195, 0.398173, -0.713763,
		20.057064, 13.821972, 14.543097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422394, 13.300451, 15.201947>,  <19.653727, 13.543251, 15.042731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.422394, 13.300451, 15.201947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438551, 13.640592, 14.992082>,  <20.448246, 13.844676, 14.866162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438551, 13.640592, 14.992082>,  <20.422394, 13.300451, 15.201947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438551, 13.640592, 14.992082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554093, 0.417893, 0.719963,
		0.831474, -0.319795, -0.454293,
		0.040394, 0.850351, -0.524664,
		20.450668, 13.895697, 14.834682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099747, 13.400472, 15.110168>,  <20.422394, 13.300451, 15.201947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099747, 13.400472, 15.110168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.941738, 13.764464, 15.059742>,  <20.846933, 13.982860, 15.029486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.941738, 13.764464, 15.059742>,  <21.099747, 13.400472, 15.110168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941738, 13.764464, 15.059742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670751, 0.379457, 0.637264,
		0.627735, 0.167174, -0.760264,
		-0.395021, 0.909981, -0.126066,
		20.823233, 14.037458, 15.021922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.674883, 13.931288, 14.980603>,  <21.099747, 13.400472, 15.110168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.674883, 13.931288, 14.980603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355700, 14.148753, 15.084677>,  <21.164190, 14.279233, 15.147120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355700, 14.148753, 15.084677>,  <21.674883, 13.931288, 14.980603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355700, 14.148753, 15.084677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564975, 0.524351, 0.637071,
		0.209925, 0.655351, -0.725566,
		-0.797956, 0.543664, 0.260183,
		21.116312, 14.311852, 15.162731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.896011, 14.718305, 15.066652>,  <21.674883, 13.931288, 14.980603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.896011, 14.718305, 15.066652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.569901, 14.583698, 15.255155>,  <21.374235, 14.502934, 15.368257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.569901, 14.583698, 15.255155>,  <21.896011, 14.718305, 15.066652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.569901, 14.583698, 15.255155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363275, 0.336532, 0.868779,
		-0.450950, 0.879491, -0.152118,
		-0.815276, -0.336515, 0.471256,
		21.325317, 14.482743, 15.396531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.542397, 14.864565, 15.109001>,  <21.896011, 14.718305, 15.066652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.542397, 14.864565, 15.109001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.477722, 14.652642, 14.775976>,  <22.438917, 14.525489, 14.576160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.477722, 14.652642, 14.775976>,  <22.542397, 14.864565, 15.109001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.477722, 14.652642, 14.775976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021362, 0.841587, -0.539698,
		0.986611, -0.105045, -0.124754,
		-0.161684, -0.529808, -0.832564,
		22.429216, 14.493700, 14.526207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.023451, 14.925999, 14.638096>,  <22.542397, 14.864565, 15.109001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.023451, 14.925999, 14.638096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677288, 14.865027, 14.447168>,  <22.469589, 14.828444, 14.332612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677288, 14.865027, 14.447168>,  <23.023451, 14.925999, 14.638096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.677288, 14.865027, 14.447168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130698, 0.850959, -0.508711,
		0.483720, -0.502628, -0.716506,
		-0.865409, -0.152428, -0.477318,
		22.417665, 14.819299, 14.303973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.615427, 14.901108, 15.135744>,  <23.023451, 14.925999, 14.638096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.615427, 14.901108, 15.135744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.904387, 15.122808, 15.301126>,  <24.077763, 15.255829, 15.400354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.904387, 15.122808, 15.301126>,  <23.615427, 14.901108, 15.135744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.904387, 15.122808, 15.301126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366979, -0.814080, 0.450111,
		0.586058, -0.173432, -0.791490,
		0.722400, 0.554252, 0.413453,
		24.121107, 15.289084, 15.425161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217464, 14.637504, 14.909651>,  <23.615427, 14.901108, 15.135744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217464, 14.637504, 14.909651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270445, 14.827718, 15.257519>,  <24.302233, 14.941846, 15.466239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270445, 14.827718, 15.257519>,  <24.217464, 14.637504, 14.909651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270445, 14.827718, 15.257519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585984, -0.745216, 0.318239,
		0.799424, 0.467462, -0.377360,
		0.132450, 0.475535, 0.869669,
		24.310181, 14.970378, 15.518419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838957, 14.491629, 15.091887>,  <24.217464, 14.637504, 14.909651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838957, 14.491629, 15.091887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759897, 14.606415, 15.466819>,  <24.712461, 14.675286, 15.691778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759897, 14.606415, 15.466819>,  <24.838957, 14.491629, 15.091887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759897, 14.606415, 15.466819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689485, -0.638996, 0.341019,
		0.696810, 0.713676, -0.071562,
		-0.197649, 0.286966, 0.937329,
		24.700602, 14.692505, 15.748017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404930, 14.914495, 15.478154>,  <24.838957, 14.491629, 15.091887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404930, 14.914495, 15.478154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203154, 14.706036, 15.753528>,  <25.082088, 14.580959, 15.918752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203154, 14.706036, 15.753528>,  <25.404930, 14.914495, 15.478154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203154, 14.706036, 15.753528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796822, -0.588086, 0.138675,
		0.332588, 0.618513, 0.711918,
		-0.504441, -0.521150, 0.688434,
		25.051821, 14.549690, 15.960058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729376, 14.700942, 14.767649>,  <25.404930, 14.914495, 15.478154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729376, 14.700942, 14.767649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958122, 14.682620, 15.095276>,  <26.095369, 14.671627, 15.291852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958122, 14.682620, 15.095276>,  <25.729376, 14.700942, 14.767649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958122, 14.682620, 15.095276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686321, -0.520211, -0.508275,
		0.449370, 0.852809, -0.266053,
		0.571865, -0.045806, 0.819068,
		26.129683, 14.668879, 15.340996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436588, 15.165991, 14.845472>,  <25.729376, 14.700942, 14.767649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436588, 15.165991, 14.845472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447716, 14.823934, 15.052529>,  <26.454391, 14.618699, 15.176764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447716, 14.823934, 15.052529>,  <26.436588, 15.165991, 14.845472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447716, 14.823934, 15.052529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728890, -0.337023, -0.595932,
		0.684066, 0.393883, 0.613930,
		0.027819, -0.855144, 0.517643,
		26.456060, 14.567390, 15.207823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080664, 15.207278, 15.217244>,  <26.436588, 15.165991, 14.845472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080664, 15.207278, 15.217244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957031, 14.855518, 15.072400>,  <26.882853, 14.644463, 14.985494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957031, 14.855518, 15.072400>,  <27.080664, 15.207278, 15.217244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957031, 14.855518, 15.072400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772464, -0.010031, -0.634980,
		0.554769, -0.475976, 0.682406,
		-0.309081, -0.879401, -0.362109,
		26.864307, 14.591698, 14.963767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.892075, 20.838226, 25.673296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.797600, 20.535662, 25.917280>,  <12.740914, 20.354122, 26.063671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.797600, 20.535662, 25.917280>,  <12.892075, 20.838226, 25.673296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.797600, 20.535662, 25.917280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170610, -0.585690, -0.792376,
		0.956613, -0.291215, 0.009281,
		-0.236187, -0.756413, 0.609962,
		12.726744, 20.308737, 26.100269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.264024, 20.350260, 25.383268>,  <12.892075, 20.838226, 25.673296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.264024, 20.350260, 25.383268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.997408, 20.163431, 25.615671>,  <12.837439, 20.051334, 25.755114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.997408, 20.163431, 25.615671>,  <13.264024, 20.350260, 25.383268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.997408, 20.163431, 25.615671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318351, -0.526400, -0.788388,
		0.674075, -0.710456, 0.202175,
		-0.666540, -0.467070, 0.581008,
		12.797446, 20.023310, 25.789974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.402160, 19.620428, 25.239908>,  <13.264024, 20.350260, 25.383268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.402160, 19.620428, 25.239908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.034663, 19.662415, 25.392170>,  <12.814165, 19.687607, 25.483526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.034663, 19.662415, 25.392170>,  <13.402160, 19.620428, 25.239908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034663, 19.662415, 25.392170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367235, -0.581395, -0.726030,
		0.145102, -0.806822, 0.572698,
		-0.918740, 0.104966, 0.380654,
		12.759041, 19.693905, 25.506367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030974, 19.023666, 25.126627>,  <13.402160, 19.620428, 25.239908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030974, 19.023666, 25.126627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.707817, 19.239685, 25.220993>,  <12.513923, 19.369297, 25.277613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.707817, 19.239685, 25.220993>,  <13.030974, 19.023666, 25.126627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.707817, 19.239685, 25.220993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541678, -0.522787, -0.658239,
		-0.232146, -0.659577, 0.714888,
		-0.807894, 0.540047, 0.235916,
		12.465449, 19.401699, 25.291767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446468, 18.546610, 25.177286>,  <13.030974, 19.023666, 25.126627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446468, 18.546610, 25.177286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.284489, 18.901365, 25.088343>,  <12.187301, 19.114218, 25.034977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.284489, 18.901365, 25.088343>,  <12.446468, 18.546610, 25.177286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.284489, 18.901365, 25.088343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496690, -0.417554, -0.760886,
		-0.767668, -0.197678, 0.609597,
		-0.404950, 0.886889, -0.222358,
		12.163004, 19.167433, 25.021635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.659340, 18.434717, 25.136822>,  <12.446468, 18.546610, 25.177286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.659340, 18.434717, 25.136822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.766394, 18.764877, 24.937992>,  <11.830626, 18.962975, 24.818695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.766394, 18.764877, 24.937992>,  <11.659340, 18.434717, 25.136822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.766394, 18.764877, 24.937992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409962, -0.369317, -0.833988,
		-0.871954, 0.426986, 0.239542,
		0.267634, 0.825402, -0.497075,
		11.846684, 19.012499, 24.788870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.057961, 18.620512, 24.608986>,  <11.659340, 18.434717, 25.136822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.057961, 18.620512, 24.608986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.356418, 18.838661, 24.456228>,  <11.535492, 18.969551, 24.364573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.356418, 18.838661, 24.456228>,  <11.057961, 18.620512, 24.608986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.356418, 18.838661, 24.456228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314724, -0.216549, -0.924151,
		-0.586704, 0.809739, 0.010065,
		0.746141, 0.545371, -0.381895,
		11.580260, 19.002272, 24.341660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.752371, 19.074652, 24.108801>,  <11.057961, 18.620512, 24.608986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.752371, 19.074652, 24.108801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.137438, 19.099825, 24.003492>,  <11.368478, 19.114929, 23.940308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.137438, 19.099825, 24.003492>,  <10.752371, 19.074652, 24.108801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.137438, 19.099825, 24.003492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248469, -0.180455, -0.951682,
		-0.107403, 0.981568, -0.158080,
		0.962667, 0.062935, -0.263271,
		11.426238, 19.118706, 23.924511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.764492, 19.481441, 23.538368>,  <10.752371, 19.074652, 24.108801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.764492, 19.481441, 23.538368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.093000, 19.253445, 23.548363>,  <11.290106, 19.116646, 23.554359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.093000, 19.253445, 23.548363>,  <10.764492, 19.481441, 23.538368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.093000, 19.253445, 23.548363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121953, -0.218163, -0.968262,
		0.557353, 0.792158, -0.248683,
		0.821271, -0.569991, 0.024988,
		11.339381, 19.082447, 23.555859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.119101, 19.574402, 22.943829>,  <10.764492, 19.481441, 23.538368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.119101, 19.574402, 22.943829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.315497, 19.238329, 23.035936>,  <11.433335, 19.036686, 23.091202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.315497, 19.238329, 23.035936>,  <11.119101, 19.574402, 22.943829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.315497, 19.238329, 23.035936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014727, -0.272293, -0.962102,
		0.871040, 0.468992, -0.146067,
		0.490991, -0.840180, 0.230271,
		11.462795, 18.986275, 23.105019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.832410, 19.444286, 22.512114>,  <11.119101, 19.574402, 22.943829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.832410, 19.444286, 22.512114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.713591, 19.090313, 22.655588>,  <11.642299, 18.877930, 22.741673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.713591, 19.090313, 22.655588>,  <11.832410, 19.444286, 22.512114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713591, 19.090313, 22.655588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116193, -0.406349, -0.906300,
		0.947767, -0.227537, 0.223528,
		-0.297048, -0.884934, 0.358685,
		11.624476, 18.824833, 22.763193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.285152, 18.945158, 22.157633>,  <11.832410, 19.444286, 22.512114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.285152, 18.945158, 22.157633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.978175, 18.723572, 22.286724>,  <11.793989, 18.590620, 22.364180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.978175, 18.723572, 22.286724>,  <12.285152, 18.945158, 22.157633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.978175, 18.723572, 22.286724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009990, -0.492990, -0.869977,
		0.641040, -0.670882, 0.372807,
		-0.767442, -0.553966, 0.322729,
		11.747942, 18.557383, 22.383543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.477484, 18.207502, 21.988876>,  <12.285152, 18.945158, 22.157633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.477484, 18.207502, 21.988876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.080355, 18.229044, 22.031590>,  <11.842077, 18.241970, 22.057217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.080355, 18.229044, 22.031590>,  <12.477484, 18.207502, 21.988876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.080355, 18.229044, 22.031590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118572, -0.326817, -0.937620,
		-0.015598, -0.943552, 0.330857,
		-0.992823, 0.053856, 0.106781,
		11.782508, 18.245201, 22.063623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214735, 17.504677, 21.726318>,  <12.477484, 18.207502, 21.988876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214735, 17.504677, 21.726318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.919676, 17.772627, 21.692514>,  <11.742640, 17.933397, 21.672232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.919676, 17.772627, 21.692514>,  <12.214735, 17.504677, 21.726318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.919676, 17.772627, 21.692514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149020, -0.283608, -0.947291,
		-0.658534, -0.686174, 0.309028,
		-0.737649, 0.669875, -0.084512,
		11.698381, 17.973589, 21.667160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.590793, 17.214136, 21.342007>,  <12.214735, 17.504677, 21.726318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.590793, 17.214136, 21.342007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.533847, 17.609478, 21.320501>,  <11.499680, 17.846684, 21.307598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.533847, 17.609478, 21.320501>,  <11.590793, 17.214136, 21.342007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.533847, 17.609478, 21.320501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009129, -0.055625, -0.998410,
		-0.989772, -0.141646, 0.016942,
		-0.142363, 0.988353, -0.053763,
		11.491138, 17.905985, 21.304373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.871272, 17.272312, 20.998260>,  <11.590793, 17.214136, 21.342007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.871272, 17.272312, 20.998260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.039638, 17.630608, 20.941013>,  <11.140656, 17.845585, 20.906664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.039638, 17.630608, 20.941013>,  <10.871272, 17.272312, 20.998260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.039638, 17.630608, 20.941013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030929, -0.143513, -0.989165,
		-0.906573, 0.420780, -0.032702,
		0.420914, 0.895739, -0.143120,
		11.165912, 17.899330, 20.898077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.418732, 17.609049, 20.582314>,  <10.871272, 17.272312, 20.998260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.418732, 17.609049, 20.582314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.753488, 17.823805, 20.539667>,  <10.954341, 17.952658, 20.514080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.753488, 17.823805, 20.539667>,  <10.418732, 17.609049, 20.582314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753488, 17.823805, 20.539667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207173, 0.130401, -0.969575,
		-0.506651, 0.833514, 0.220360,
		0.836889, 0.536889, -0.106614,
		11.004555, 17.984871, 20.507683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.204027, 18.169247, 20.235165>,  <10.418732, 17.609049, 20.582314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.204027, 18.169247, 20.235165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.598805, 18.121616, 20.191790>,  <10.835672, 18.093039, 20.165764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.598805, 18.121616, 20.191790>,  <10.204027, 18.169247, 20.235165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.598805, 18.121616, 20.191790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092535, 0.131813, -0.986946,
		0.131813, 0.984097, 0.119073,
		0.986946, -0.119073, -0.108438,
		10.894889, 18.085894, 20.159258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.427825, 18.580599, 19.643011>,  <10.204027, 18.169247, 20.235165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.427825, 18.580599, 19.643011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.749901, 18.345556, 19.674980>,  <10.943146, 18.204531, 19.694160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.749901, 18.345556, 19.674980>,  <10.427825, 18.580599, 19.643011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.749901, 18.345556, 19.674980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027094, -0.171081, -0.984884,
		0.592399, 0.790853, -0.153673,
		0.805189, -0.587608, 0.079921,
		10.991458, 18.169273, 19.698956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993804, 18.904934, 19.148563>,  <10.427825, 18.580599, 19.643011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993804, 18.904934, 19.148563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.040445, 18.513287, 19.215176>,  <11.068430, 18.278297, 19.255142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.040445, 18.513287, 19.215176>,  <10.993804, 18.904934, 19.148563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.040445, 18.513287, 19.215176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060752, -0.160327, -0.985193,
		0.991319, 0.124994, 0.040789,
		0.116604, -0.979118, 0.166529,
		11.075426, 18.219551, 19.265135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.346889, 18.669647, 18.534882>,  <10.993804, 18.904934, 19.148563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.346889, 18.669647, 18.534882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.227657, 18.327669, 18.704691>,  <11.156118, 18.122482, 18.806578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.227657, 18.327669, 18.704691>,  <11.346889, 18.669647, 18.534882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.227657, 18.327669, 18.704691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059666, -0.427184, -0.902194,
		0.952675, -0.294254, 0.076323,
		-0.298078, -0.854944, 0.424524,
		11.138234, 18.071186, 18.832048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.716446, 18.103031, 18.204212>,  <11.346889, 18.669647, 18.534882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.716446, 18.103031, 18.204212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.374098, 17.959204, 18.352913>,  <11.168689, 17.872908, 18.442133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.374098, 17.959204, 18.352913>,  <11.716446, 18.103031, 18.204212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.374098, 17.959204, 18.352913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032307, -0.680216, -0.732300,
		0.516182, -0.638763, 0.570559,
		-0.855870, -0.359567, 0.371751,
		11.117337, 17.851334, 18.464437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.922864, 18.336586, 17.614769>,  <11.716446, 18.103031, 18.204212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.922864, 18.336586, 17.614769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.179646, 18.543447, 17.388336>,  <12.333714, 18.667564, 17.252476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.179646, 18.543447, 17.388336>,  <11.922864, 18.336586, 17.614769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.179646, 18.543447, 17.388336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583602, 0.149281, 0.798201,
		0.497297, -0.842774, -0.205980,
		0.641954, 0.517153, -0.566081,
		12.372231, 18.698593, 17.218512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697165, 18.179319, 17.677179>,  <11.922864, 18.336586, 17.614769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697165, 18.179319, 17.677179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.667109, 18.566832, 17.582674>,  <12.649076, 18.799339, 17.525970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.667109, 18.566832, 17.582674>,  <12.697165, 18.179319, 17.677179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.667109, 18.566832, 17.582674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602858, 0.232864, 0.763110,
		0.794302, -0.085092, -0.601534,
		-0.075141, 0.968779, -0.236263,
		12.644567, 18.857466, 17.511795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.140310, 18.411421, 18.107313>,  <12.697165, 18.179319, 17.677179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.140310, 18.411421, 18.107313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.065442, 18.772285, 17.951843>,  <13.020521, 18.988804, 17.858561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.065442, 18.772285, 17.951843>,  <13.140310, 18.411421, 18.107313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065442, 18.772285, 17.951843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508124, 0.427538, 0.747677,
		0.840700, -0.057551, -0.538434,
		-0.187172, 0.902164, -0.388674,
		13.009291, 19.042934, 17.835241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.817698, 18.810511, 17.973583>,  <13.140310, 18.411421, 18.107313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.817698, 18.810511, 17.973583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.506083, 19.056993, 18.019875>,  <13.319115, 19.204884, 18.047649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.506083, 19.056993, 18.019875>,  <13.817698, 18.810511, 17.973583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.506083, 19.056993, 18.019875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521358, 0.534138, 0.665494,
		0.348265, 0.578781, -0.737377,
		-0.779036, 0.616206, 0.115730,
		13.272372, 19.241856, 18.054594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191487, 19.434380, 18.083607>,  <13.817698, 18.810511, 17.973583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191487, 19.434380, 18.083607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.819857, 19.508045, 18.211918>,  <13.596878, 19.552244, 18.288904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.819857, 19.508045, 18.211918>,  <14.191487, 19.434380, 18.083607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819857, 19.508045, 18.211918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369671, 0.491941, 0.788249,
		-0.012635, 0.850927, -0.525132,
		-0.929077, 0.184166, 0.320779,
		13.541134, 19.563295, 18.308151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191006, 20.104189, 18.419813>,  <14.191487, 19.434380, 18.083607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191006, 20.104189, 18.419813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.856637, 19.941170, 18.566858>,  <13.656016, 19.843357, 18.655085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.856637, 19.941170, 18.566858>,  <14.191006, 20.104189, 18.419813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856637, 19.941170, 18.566858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208150, 0.384345, 0.899418,
		-0.507847, 0.828361, -0.236450,
		-0.835921, -0.407550, 0.367612,
		13.605861, 19.818905, 18.677141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784823, 20.607323, 18.850531>,  <14.191006, 20.104189, 18.419813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784823, 20.607323, 18.850531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.632230, 20.264183, 18.988264>,  <13.540674, 20.058300, 19.070904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.632230, 20.264183, 18.988264>,  <13.784823, 20.607323, 18.850531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632230, 20.264183, 18.988264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072509, 0.399125, 0.914025,
		-0.921528, 0.323718, -0.214461,
		-0.381483, -0.857850, 0.344332,
		13.517785, 20.006828, 19.091564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.161427, 20.809412, 19.239618>,  <13.784823, 20.607323, 18.850531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.161427, 20.809412, 19.239618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.267625, 20.447052, 19.371593>,  <13.331343, 20.229635, 19.450779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.267625, 20.447052, 19.371593>,  <13.161427, 20.809412, 19.239618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267625, 20.447052, 19.371593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061423, 0.325630, 0.943500,
		-0.962154, -0.270758, 0.030809,
		0.265492, -0.905900, 0.329937,
		13.347273, 20.175282, 19.470575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.789152, 20.669575, 19.766350>,  <13.161427, 20.809412, 19.239618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.789152, 20.669575, 19.766350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.075633, 20.399839, 19.838261>,  <13.247521, 20.237997, 19.881407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.075633, 20.399839, 19.838261>,  <12.789152, 20.669575, 19.766350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075633, 20.399839, 19.838261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072742, 0.184068, 0.980218,
		-0.694091, -0.715112, 0.082778,
		0.716202, -0.674340, 0.179779,
		13.290494, 20.197538, 19.892195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.584111, 20.238211, 20.410332>,  <12.789152, 20.669575, 19.766350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.584111, 20.238211, 20.410332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.979774, 20.222013, 20.353861>,  <13.217171, 20.212296, 20.319979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.979774, 20.222013, 20.353861>,  <12.584111, 20.238211, 20.410332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.979774, 20.222013, 20.353861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141571, 0.006974, 0.989903,
		-0.039099, -0.999155, 0.012630,
		0.989155, -0.040492, -0.141179,
		13.276520, 20.209866, 20.311506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735581, 19.898117, 21.061213>,  <12.584111, 20.238211, 20.410332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.735581, 19.898117, 21.061213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.076358, 20.043909, 20.910828>,  <13.280824, 20.131384, 20.820597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.076358, 20.043909, 20.910828>,  <12.735581, 19.898117, 21.061213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076358, 20.043909, 20.910828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327240, 0.189920, 0.925659,
		0.408788, -0.911638, 0.042527,
		0.851942, 0.364482, -0.375962,
		13.331941, 20.153254, 20.798038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291845, 19.533171, 21.419409>,  <12.735581, 19.898117, 21.061213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291845, 19.533171, 21.419409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.482075, 19.850508, 21.267387>,  <13.596212, 20.040909, 21.176174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.482075, 19.850508, 21.267387>,  <13.291845, 19.533171, 21.419409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482075, 19.850508, 21.267387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469710, 0.136276, 0.872239,
		0.743775, -0.593328, -0.307831,
		0.475574, 0.793341, -0.380051,
		13.624747, 20.088511, 21.153372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024282, 19.518297, 21.664911>,  <13.291845, 19.533171, 21.419409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024282, 19.518297, 21.664911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.935354, 19.899389, 21.582081>,  <13.881997, 20.128044, 21.532383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.935354, 19.899389, 21.582081>,  <14.024282, 19.518297, 21.664911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935354, 19.899389, 21.582081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355723, 0.277014, 0.892594,
		0.907764, 0.124781, -0.400494,
		-0.222321, 0.952729, -0.207075,
		13.868658, 20.185207, 21.519958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652755, 19.962784, 21.659311>,  <14.024282, 19.518297, 21.664911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652755, 19.962784, 21.659311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.342568, 20.198376, 21.750313>,  <14.156457, 20.339731, 21.804914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.342568, 20.198376, 21.750313>,  <14.652755, 19.962784, 21.659311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342568, 20.198376, 21.750313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455332, 0.272044, 0.847741,
		0.437409, 0.760984, -0.479142,
		-0.775465, 0.588978, 0.227506,
		14.109929, 20.375069, 21.818565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947683, 20.585400, 21.838461>,  <14.652755, 19.962784, 21.659311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.947683, 20.585400, 21.838461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.578454, 20.594833, 21.992022>,  <14.356916, 20.600492, 22.084158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.578454, 20.594833, 21.992022>,  <14.947683, 20.585400, 21.838461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578454, 20.594833, 21.992022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366373, 0.357722, 0.858957,
		-0.117073, 0.933530, -0.338843,
		-0.923074, 0.023582, 0.383900,
		14.301532, 20.601908, 22.107191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067532, 21.100193, 22.376043>,  <14.947683, 20.585400, 21.838461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067532, 21.100193, 22.376043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.684976, 21.022821, 22.463591>,  <14.455442, 20.976398, 22.516119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.684976, 21.022821, 22.463591>,  <15.067532, 21.100193, 22.376043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.684976, 21.022821, 22.463591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074937, 0.561747, 0.823908,
		-0.282318, 0.804379, -0.522754,
		-0.956390, -0.193430, 0.218869,
		14.398059, 20.964792, 22.529251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696402, 21.744808, 22.603836>,  <15.067532, 21.100193, 22.376043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696402, 21.744808, 22.603836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.496019, 21.431322, 22.750715>,  <14.375790, 21.243231, 22.838842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.496019, 21.431322, 22.750715>,  <14.696402, 21.744808, 22.603836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496019, 21.431322, 22.750715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082219, 0.465449, 0.881247,
		-0.861558, 0.411276, -0.297606,
		-0.500956, -0.783715, 0.367197,
		14.345733, 21.196207, 22.860874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.116526, 22.071924, 22.981098>,  <14.696402, 21.744808, 22.603836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.116526, 22.071924, 22.981098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.174644, 21.700216, 23.116949>,  <14.209516, 21.477192, 23.198460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.174644, 21.700216, 23.116949>,  <14.116526, 22.071924, 22.981098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174644, 21.700216, 23.116949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177878, 0.313142, 0.932899,
		-0.973267, -0.195961, -0.119798,
		0.145298, -0.929269, 0.339628,
		14.218234, 21.421436, 23.218838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.521177, 21.839685, 23.470543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.850800, 21.629295, 23.554716>,  <14.048573, 21.503061, 23.605221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.850800, 21.629295, 23.554716>,  <13.521177, 21.839685, 23.470543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.850800, 21.629295, 23.554716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081152, 0.258026, 0.962724,
		-0.560668, -0.810414, 0.169943,
		0.824055, -0.525977, 0.210434,
		14.098016, 21.471502, 23.617846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379716, 21.490570, 24.013311>,  <13.521177, 21.839685, 23.470543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.379716, 21.490570, 24.013311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.779592, 21.480637, 24.014151>,  <14.019517, 21.474676, 24.014654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.779592, 21.480637, 24.014151>,  <13.379716, 21.490570, 24.013311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779592, 21.480637, 24.014151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005038, 0.283881, 0.958846,
		-0.024407, -0.958538, 0.283918,
		0.999690, -0.024833, 0.002099,
		14.079498, 21.473186, 24.014780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.580218, 21.445957, 24.729176>,  <13.379716, 21.490570, 24.013311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.580218, 21.445957, 24.729176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.947607, 21.547989, 24.608284>,  <14.168040, 21.609209, 24.535749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.947607, 21.547989, 24.608284>,  <13.580218, 21.445957, 24.729176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.947607, 21.547989, 24.608284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277351, 0.129329, 0.952025,
		0.281930, -0.958231, 0.048038,
		0.918473, 0.255081, -0.302228,
		14.223149, 21.624514, 24.517616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070827, 21.084476, 25.237289>,  <13.580218, 21.445957, 24.729176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070827, 21.084476, 25.237289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.252701, 21.396534, 25.065411>,  <14.361825, 21.583769, 24.962284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.252701, 21.396534, 25.065411>,  <14.070827, 21.084476, 25.237289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.252701, 21.396534, 25.065411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448974, 0.215904, 0.867068,
		0.769211, -0.587164, -0.252096,
		0.454683, 0.780143, -0.429697,
		14.389106, 21.630577, 24.936501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864077, 21.071600, 25.195881>,  <14.070827, 21.084476, 25.237289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864077, 21.071600, 25.195881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.777791, 21.459621, 25.151226>,  <14.726020, 21.692434, 25.124434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.777791, 21.459621, 25.151226>,  <14.864077, 21.071600, 25.195881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.777791, 21.459621, 25.151226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508070, 0.209139, 0.835539,
		0.833866, 0.123519, -0.537970,
		-0.215715, 0.970054, -0.111637,
		14.713077, 21.750637, 25.117735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.510887, 21.393480, 25.294071>,  <14.864077, 21.071600, 25.195881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.510887, 21.393480, 25.294071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.229462, 21.672651, 25.347576>,  <15.060606, 21.840155, 25.379679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.229462, 21.672651, 25.347576>,  <15.510887, 21.393480, 25.294071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229462, 21.672651, 25.347576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448170, 0.289702, 0.845705,
		0.551490, 0.654957, -0.516615,
		-0.703564, 0.697928, 0.133764,
		15.018393, 21.882030, 25.387705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863362, 21.834150, 25.558199>,  <15.510887, 21.393480, 25.294071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863362, 21.834150, 25.558199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.501683, 21.985397, 25.637653>,  <15.284676, 22.076145, 25.685326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.501683, 21.985397, 25.637653>,  <15.863362, 21.834150, 25.558199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501683, 21.985397, 25.637653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348625, 0.384690, 0.854678,
		0.246755, 0.842046, -0.479656,
		-0.904197, 0.378116, 0.198634,
		15.230424, 22.098831, 25.697243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906160, 22.586329, 25.616230>,  <15.863362, 21.834150, 25.558199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906160, 22.586329, 25.616230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.592107, 22.457520, 25.827841>,  <15.403675, 22.380234, 25.954807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.592107, 22.457520, 25.827841>,  <15.906160, 22.586329, 25.616230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.592107, 22.457520, 25.827841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324403, 0.513806, 0.794208,
		-0.527570, 0.795176, -0.298940,
		-0.785133, -0.322023, 0.529025,
		15.356567, 22.360912, 25.986549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736568, 23.233683, 26.091690>,  <15.906160, 22.586329, 25.616230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736568, 23.233683, 26.091690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.547102, 22.922773, 26.257334>,  <15.433422, 22.736227, 26.356720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.547102, 22.922773, 26.257334>,  <15.736568, 23.233683, 26.091690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547102, 22.922773, 26.257334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091575, 0.424188, 0.900932,
		-0.875930, 0.464664, -0.129745,
		-0.473667, -0.777273, 0.414110,
		15.405002, 22.689592, 26.381567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197535, 23.551043, 26.516251>,  <15.736568, 23.233683, 26.091690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197535, 23.551043, 26.516251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.250541, 23.197290, 26.695276>,  <15.282345, 22.985039, 26.802692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.250541, 23.197290, 26.695276>,  <15.197535, 23.551043, 26.516251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250541, 23.197290, 26.695276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052301, 0.457157, 0.887847,
		-0.989800, -0.094246, 0.106834,
		0.132516, -0.884378, 0.447565,
		15.290296, 22.931976, 26.829546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822179, 23.524483, 27.078720>,  <15.197535, 23.551043, 26.516251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822179, 23.524483, 27.078720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.111494, 23.257145, 27.148201>,  <15.285083, 23.096743, 27.189890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.111494, 23.257145, 27.148201>,  <14.822179, 23.524483, 27.078720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.111494, 23.257145, 27.148201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253347, 0.490829, 0.833608,
		-0.642394, -0.558932, 0.524333,
		0.723288, -0.668343, 0.173702,
		15.328481, 23.056643, 27.200312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.871673, 23.260347, 27.890715>,  <14.822179, 23.524483, 27.078720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.871673, 23.260347, 27.890715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.224807, 23.169106, 27.726486>,  <15.436687, 23.114361, 27.627949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.224807, 23.169106, 27.726486>,  <14.871673, 23.260347, 27.890715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224807, 23.169106, 27.726486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464199, 0.290572, 0.836712,
		-0.071558, -0.929266, 0.362414,
		0.882835, -0.228106, -0.410572,
		15.489657, 23.100674, 27.603315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353035, 22.924294, 28.405169>,  <14.871673, 23.260347, 27.890715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353035, 22.924294, 28.405169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.590096, 23.089104, 28.128328>,  <15.732331, 23.187990, 27.962225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.590096, 23.089104, 28.128328>,  <15.353035, 22.924294, 28.405169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590096, 23.089104, 28.128328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652699, 0.257821, 0.712399,
		0.471964, -0.873936, -0.116130,
		0.592650, 0.412025, -0.692100,
		15.767891, 23.212711, 27.920698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041061, 22.632246, 28.707325>,  <15.353035, 22.924294, 28.405169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041061, 22.632246, 28.707325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.116365, 22.903080, 28.422758>,  <16.161549, 23.065580, 28.252018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.116365, 22.903080, 28.422758>,  <16.041061, 22.632246, 28.707325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116365, 22.903080, 28.422758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889891, 0.188862, 0.415240,
		0.415513, -0.711256, -0.566978,
		0.188262, 0.677087, -0.711415,
		16.172844, 23.106207, 28.209333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699608, 22.498440, 28.403694>,  <16.041061, 22.632246, 28.707325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699608, 22.498440, 28.403694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.607355, 22.886955, 28.380354>,  <16.552004, 23.120066, 28.366350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.607355, 22.886955, 28.380354>,  <16.699608, 22.498440, 28.403694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607355, 22.886955, 28.380354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862903, 0.231872, 0.449037,
		0.449674, 0.053213, -0.891606,
		-0.230634, 0.971290, -0.058349,
		16.538164, 23.178343, 28.362848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252850, 22.797794, 28.217100>,  <16.699608, 22.498440, 28.403694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252850, 22.797794, 28.217100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.045242, 23.106403, 28.364271>,  <16.920677, 23.291569, 28.452574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.045242, 23.106403, 28.364271>,  <17.252850, 22.797794, 28.217100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045242, 23.106403, 28.364271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770898, 0.236570, 0.591398,
		0.369238, 0.590580, -0.717550,
		-0.519019, 0.771524, 0.367926,
		16.889536, 23.337860, 28.474649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727743, 23.132879, 28.493835>,  <17.252850, 22.797794, 28.217100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727743, 23.132879, 28.493835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.426422, 23.350668, 28.641396>,  <17.245630, 23.481340, 28.729931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.426422, 23.350668, 28.641396>,  <17.727743, 23.132879, 28.493835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426422, 23.350668, 28.641396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587079, 0.303876, 0.750332,
		0.296433, 0.781800, -0.548558,
		-0.753303, 0.544470, 0.368899,
		17.200432, 23.514009, 28.752066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052429, 23.776161, 28.631079>,  <17.727743, 23.132879, 28.493835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052429, 23.776161, 28.631079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.723686, 23.721659, 28.852343>,  <17.526440, 23.688957, 28.985100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.723686, 23.721659, 28.852343>,  <18.052429, 23.776161, 28.631079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.723686, 23.721659, 28.852343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496330, 0.305384, 0.812648,
		-0.279656, 0.942430, -0.183353,
		-0.821857, -0.136258, 0.553158,
		17.477129, 23.680780, 29.018290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907717, 24.471985, 29.017763>,  <18.052429, 23.776161, 28.631079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907717, 24.471985, 29.017763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.732822, 24.171272, 29.215206>,  <17.627886, 23.990845, 29.333672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.732822, 24.171272, 29.215206>,  <17.907717, 24.471985, 29.017763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732822, 24.171272, 29.215206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242156, 0.430168, 0.869664,
		-0.866132, 0.499779, -0.006036,
		-0.437237, -0.751782, 0.493607,
		17.601652, 23.945738, 29.363289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637138, 24.864134, 29.496634>,  <17.907717, 24.471985, 29.017763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637138, 24.864134, 29.496634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.611078, 24.496830, 29.652866>,  <17.595442, 24.276447, 29.746605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.611078, 24.496830, 29.652866>,  <17.637138, 24.864134, 29.496634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.611078, 24.496830, 29.652866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101219, 0.383312, 0.918056,
		-0.992728, 0.099348, 0.067972,
		-0.065152, -0.918260, 0.390580,
		17.591532, 24.221352, 29.770041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325235, 24.943050, 30.121143>,  <17.637138, 24.864134, 29.496634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325235, 24.943050, 30.121143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.501387, 24.587675, 30.172901>,  <17.607077, 24.374449, 30.203955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.501387, 24.587675, 30.172901>,  <17.325235, 24.943050, 30.121143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501387, 24.587675, 30.172901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430521, 0.335436, 0.837934,
		-0.787858, -0.313300, 0.530210,
		0.440376, -0.888440, 0.129394,
		17.633499, 24.321142, 30.211720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123940, 24.624294, 30.812426>,  <17.325235, 24.943050, 30.121143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123940, 24.624294, 30.812426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.469296, 24.453300, 30.705231>,  <17.676508, 24.350704, 30.640913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.469296, 24.453300, 30.705231>,  <17.123940, 24.624294, 30.812426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469296, 24.453300, 30.705231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384451, 0.213436, 0.898133,
		-0.326738, -0.878466, 0.348625,
		0.863389, -0.427483, -0.267989,
		17.728312, 24.325056, 30.624834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456684, 24.279301, 31.432861>,  <17.123940, 24.624294, 30.812426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.456684, 24.279301, 31.432861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.744595, 24.347904, 31.163788>,  <17.917341, 24.389067, 31.002344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.744595, 24.347904, 31.163788>,  <17.456684, 24.279301, 31.432861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744595, 24.347904, 31.163788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606896, 0.314997, 0.729695,
		0.337041, -0.933468, 0.122641,
		0.719778, 0.171507, -0.672685,
		17.960527, 24.399357, 30.961983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.361977, 23.513269, 31.720634>,  <17.456684, 24.279301, 31.432861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.361977, 23.513269, 31.720634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.427691, 23.219599, 31.984146>,  <17.467119, 23.043396, 32.142254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.427691, 23.219599, 31.984146>,  <17.361977, 23.513269, 31.720634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.427691, 23.219599, 31.984146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294099, -0.673937, -0.677728,
		0.941550, -0.082407, -0.326639,
		0.164285, -0.734179, 0.658781,
		17.476976, 22.999346, 32.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751986, 23.025295, 31.398659>,  <17.361977, 23.513269, 31.720634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751986, 23.025295, 31.398659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.553730, 22.858280, 31.703291>,  <17.434776, 22.758072, 31.886070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.553730, 22.858280, 31.703291>,  <17.751986, 23.025295, 31.398659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553730, 22.858280, 31.703291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283742, -0.750908, -0.596346,
		0.820872, -0.511665, 0.253708,
		-0.495640, -0.417536, 0.761580,
		17.405037, 22.733019, 31.931765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926874, 22.344278, 31.276690>,  <17.751986, 23.025295, 31.398659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926874, 22.344278, 31.276690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.600397, 22.365099, 31.506861>,  <17.404510, 22.377592, 31.644964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.600397, 22.365099, 31.506861>,  <17.926874, 22.344278, 31.276690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600397, 22.365099, 31.506861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433217, -0.714109, -0.549883,
		0.382296, -0.698097, 0.605402,
		-0.816194, 0.052052, 0.575428,
		17.355539, 22.380714, 31.679489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819330, 21.707338, 31.442354>,  <17.926874, 22.344278, 31.276690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819330, 21.707338, 31.442354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.465071, 21.883854, 31.500174>,  <17.252516, 21.989763, 31.534866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.465071, 21.883854, 31.500174>,  <17.819330, 21.707338, 31.442354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465071, 21.883854, 31.500174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442002, -0.705696, -0.553739,
		-0.142350, -0.554309, 0.820047,
		-0.885647, 0.441287, 0.144550,
		17.199377, 22.016239, 31.543539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375404, 21.189011, 31.532040>,  <17.819330, 21.707338, 31.442354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375404, 21.189011, 31.532040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.133831, 21.492184, 31.433409>,  <16.988888, 21.674088, 31.374231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.133831, 21.492184, 31.433409>,  <17.375404, 21.189011, 31.532040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133831, 21.492184, 31.433409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467217, -0.587295, -0.660903,
		-0.645735, -0.283936, 0.708807,
		-0.603933, 0.757935, -0.246578,
		16.952650, 21.719564, 31.359436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723539, 20.897146, 31.489847>,  <17.375404, 21.189011, 31.532040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723539, 20.897146, 31.489847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.648788, 21.228453, 31.278545>,  <16.603937, 21.427237, 31.151764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.648788, 21.228453, 31.278545>,  <16.723539, 20.897146, 31.489847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648788, 21.228453, 31.278545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437992, -0.551573, -0.709881,
		-0.879341, 0.098710, 0.465850,
		-0.186878, 0.828266, -0.528254,
		16.592726, 21.476933, 31.120070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106276, 20.736053, 31.149317>,  <16.723539, 20.897146, 31.489847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106276, 20.736053, 31.149317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.252241, 21.051041, 30.950626>,  <16.339821, 21.240032, 30.831413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.252241, 21.051041, 30.950626>,  <16.106276, 20.736053, 31.149317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252241, 21.051041, 30.950626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494414, -0.288177, -0.820066,
		-0.788919, 0.544840, 0.284175,
		0.364912, 0.787466, -0.496725,
		16.361715, 21.287281, 30.801609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.498576, 21.159584, 30.881109>,  <16.106276, 20.736053, 31.149317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.498576, 21.159584, 30.881109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.828620, 21.225498, 30.664946>,  <16.026646, 21.265047, 30.535248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.828620, 21.225498, 30.664946>,  <15.498576, 21.159584, 30.881109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828620, 21.225498, 30.664946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532156, -0.094579, -0.841347,
		-0.189754, 0.981784, 0.009655,
		0.825108, 0.164786, -0.540409,
		16.076153, 21.274935, 30.502823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.380982, 21.634954, 30.442766>,  <15.498576, 21.159584, 30.881109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.380982, 21.634954, 30.442766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.690832, 21.468891, 30.251936>,  <15.876742, 21.369253, 30.137438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.690832, 21.468891, 30.251936>,  <15.380982, 21.634954, 30.442766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690832, 21.468891, 30.251936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491013, 0.080620, -0.867414,
		0.398575, 0.906170, -0.141397,
		0.774625, -0.415157, -0.477075,
		15.923220, 21.344343, 30.108814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.292089, 21.897814, 29.805458>,  <15.380982, 21.634954, 30.442766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.292089, 21.897814, 29.805458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.551373, 21.602039, 29.732727>,  <15.706943, 21.424574, 29.689089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.551373, 21.602039, 29.732727>,  <15.292089, 21.897814, 29.805458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551373, 21.602039, 29.732727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388167, -0.115442, -0.914330,
		0.655098, 0.663255, -0.361856,
		0.648207, -0.739436, -0.181828,
		15.745834, 21.380209, 29.678179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592860, 22.020254, 29.144701>,  <15.292089, 21.897814, 29.805458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592860, 22.020254, 29.144701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.607914, 21.634657, 29.250002>,  <15.616946, 21.403299, 29.313183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.607914, 21.634657, 29.250002>,  <15.592860, 22.020254, 29.144701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607914, 21.634657, 29.250002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481179, -0.248368, -0.840702,
		0.875814, -0.095031, -0.473201,
		0.037635, -0.963993, 0.263251,
		15.619205, 21.345459, 29.328978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701193, 21.701071, 28.504471>,  <15.592860, 22.020254, 29.144701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.701193, 21.701071, 28.504471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.594298, 21.397738, 28.742298>,  <15.530162, 21.215736, 28.884995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.594298, 21.397738, 28.742298>,  <15.701193, 21.701071, 28.504471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594298, 21.397738, 28.742298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613894, -0.341622, -0.711638,
		0.742778, -0.555178, -0.374243,
		-0.267237, -0.758335, 0.594570,
		15.514128, 21.170237, 28.920670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801285, 21.178680, 28.125822>,  <15.701193, 21.701071, 28.504471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801285, 21.178680, 28.125822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.514287, 21.095453, 28.391727>,  <15.342088, 21.045517, 28.551270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.514287, 21.095453, 28.391727>,  <15.801285, 21.178680, 28.125822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514287, 21.095453, 28.391727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571754, -0.369189, -0.732664,
		0.397867, -0.905763, 0.145927,
		-0.717495, -0.208069, 0.664762,
		15.299039, 21.033033, 28.591156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605324, 20.629419, 27.818958>,  <15.801285, 21.178680, 28.125822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.605324, 20.629419, 27.818958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.332345, 20.731012, 28.093115>,  <15.168558, 20.791967, 28.257608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.332345, 20.731012, 28.093115>,  <15.605324, 20.629419, 27.818958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.332345, 20.731012, 28.093115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728715, -0.309454, -0.610912,
		0.056938, -0.916369, 0.396264,
		-0.682446, 0.253980, 0.685391,
		15.127611, 20.807207, 28.298733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030075, 20.206715, 27.655243>,  <15.605324, 20.629419, 27.818958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030075, 20.206715, 27.655243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.833349, 20.448704, 27.905722>,  <14.715313, 20.593897, 28.056009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.833349, 20.448704, 27.905722>,  <15.030075, 20.206715, 27.655243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.833349, 20.448704, 27.905722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859610, -0.222953, -0.459741,
		-0.138518, -0.764395, 0.629693,
		-0.491816, 0.604973, 0.626199,
		14.685804, 20.630196, 28.093580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.422375, 19.884531, 27.844467>,  <15.030075, 20.206715, 27.655243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.422375, 19.884531, 27.844467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.358713, 20.274199, 27.908548>,  <14.320516, 20.507999, 27.946997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.358713, 20.274199, 27.908548>,  <14.422375, 19.884531, 27.844467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.358713, 20.274199, 27.908548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728371, -0.006324, -0.685153,
		-0.666442, -0.225732, 0.710563,
		-0.159155, 0.974169, 0.160202,
		14.310966, 20.566450, 27.956610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.672322, 19.886787, 28.003256>,  <14.422375, 19.884531, 27.844467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.672322, 19.886787, 28.003256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.777903, 20.250845, 27.875525>,  <13.841250, 20.469280, 27.798885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.777903, 20.250845, 27.875525>,  <13.672322, 19.886787, 28.003256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.777903, 20.250845, 27.875525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760504, -0.007253, -0.649292,
		-0.593265, 0.414230, 0.690253,
		0.263950, 0.910143, -0.319327,
		13.857087, 20.523888, 27.779726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034365, 20.265371, 27.998838>,  <13.672322, 19.886787, 28.003256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034365, 20.265371, 27.998838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.284892, 20.467726, 27.761585>,  <13.435208, 20.589138, 27.619234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.284892, 20.467726, 27.761585>,  <13.034365, 20.265371, 27.998838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.284892, 20.467726, 27.761585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710577, 0.057532, -0.701264,
		-0.320634, 0.860681, 0.395503,
		0.626318, 0.505884, -0.593133,
		13.472788, 20.619492, 27.583645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.725951, 20.891182, 27.704248>,  <13.034365, 20.265371, 27.998838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.725951, 20.891182, 27.704248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.028286, 20.794674, 27.460773>,  <13.209686, 20.736769, 27.314688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.028286, 20.794674, 27.460773>,  <12.725951, 20.891182, 27.704248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028286, 20.794674, 27.460773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654401, -0.247550, -0.714477,
		0.021701, 0.938354, -0.344994,
		0.755836, -0.241269, -0.608688,
		13.255036, 20.722294, 27.278168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.424715, 21.001492, 27.091520>,  <12.725951, 20.891182, 27.704248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.424715, 21.001492, 27.091520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.732953, 20.776073, 26.972456>,  <12.917895, 20.640823, 26.901018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.732953, 20.776073, 26.972456>,  <12.424715, 21.001492, 27.091520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.732953, 20.776073, 26.972456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547626, -0.346569, -0.761574,
		0.326021, 0.749872, -0.575676,
		0.770594, -0.563545, -0.297661,
		12.964131, 20.607010, 26.883158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.431796, 21.092657, 26.310951>,  <12.424715, 21.001492, 27.091520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.431796, 21.092657, 26.310951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.639423, 20.762859, 26.401083>,  <12.764000, 20.564980, 26.455162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.639423, 20.762859, 26.401083>,  <12.431796, 21.092657, 26.310951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.639423, 20.762859, 26.401083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386160, -0.461403, -0.798741,
		0.762527, 0.327588, -0.557888,
		0.519069, -0.824496, 0.225330,
		12.795144, 20.515511, 26.468681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.638916, 12.851600, 5.367839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.888655, 13.066695, 5.594476>,  <17.038498, 13.195752, 5.730458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.888655, 13.066695, 5.594476>,  <16.638916, 12.851600, 5.367839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888655, 13.066695, 5.594476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208781, -0.584073, 0.784391,
		0.752728, -0.608027, -0.252395,
		0.624348, 0.537738, 0.566592,
		17.075958, 13.228017, 5.764454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916666, 12.491044, 5.914883>,  <16.638916, 12.851600, 5.367839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916666, 12.491044, 5.914883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.982376, 12.856474, 6.063688>,  <17.021803, 13.075732, 6.152971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.982376, 12.856474, 6.063688>,  <16.916666, 12.491044, 5.914883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982376, 12.856474, 6.063688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076479, -0.364205, 0.928174,
		0.983445, -0.180927, 0.010039,
		0.164275, 0.913576, 0.372012,
		17.031658, 13.130547, 6.175292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276423, 12.538045, 6.531396>,  <16.916666, 12.491044, 5.914883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276423, 12.538045, 6.531396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.291260, 12.830921, 6.803431>,  <17.300163, 13.006647, 6.966652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.291260, 12.830921, 6.803431>,  <17.276423, 12.538045, 6.531396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291260, 12.830921, 6.803431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894828, 0.278629, -0.348782,
		-0.444868, 0.621500, -0.644849,
		0.037094, 0.732191, 0.680088,
		17.302387, 13.050578, 7.007458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458359, 11.934207, 6.726807>,  <17.276423, 12.538045, 6.531396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458359, 11.934207, 6.726807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.565395, 12.289320, 6.876600>,  <17.629618, 12.502388, 6.966476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.565395, 12.289320, 6.876600>,  <17.458359, 11.934207, 6.726807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565395, 12.289320, 6.876600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904939, 0.365027, -0.218724,
		-0.330876, -0.280355, 0.901067,
		0.267593, 0.887782, 0.374483,
		17.645674, 12.555655, 6.988945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401232, 12.146901, 7.444618>,  <17.458359, 11.934207, 6.726807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401232, 12.146901, 7.444618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.541452, 12.070518, 7.811365>,  <17.625586, 12.024689, 8.031414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.541452, 12.070518, 7.811365>,  <17.401232, 12.146901, 7.444618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541452, 12.070518, 7.811365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826455, 0.397444, 0.398761,
		-0.440549, -0.897538, -0.018491,
		0.350554, -0.190956, 0.916869,
		17.646618, 12.013231, 8.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845135, 11.910460, 7.894300>,  <17.401232, 12.146901, 7.444618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845135, 11.910460, 7.894300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.109209, 12.087865, 8.136770>,  <17.267654, 12.194308, 8.282252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.109209, 12.087865, 8.136770>,  <16.845135, 11.910460, 7.894300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109209, 12.087865, 8.136770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749540, 0.441035, 0.493639,
		-0.048409, -0.780246, 0.623596,
		0.660187, 0.443513, 0.606176,
		17.307264, 12.220919, 8.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.517090, 11.902734, 8.532400>,  <16.845135, 11.910460, 7.894300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.517090, 11.902734, 8.532400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.805906, 12.160442, 8.633251>,  <16.979197, 12.315067, 8.693762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.805906, 12.160442, 8.633251>,  <16.517090, 11.902734, 8.532400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805906, 12.160442, 8.633251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609250, 0.419436, 0.672970,
		0.327822, -0.639523, 0.695372,
		0.722044, 0.644270, 0.252129,
		17.022518, 12.353724, 8.708889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559380, 11.964340, 9.292892>,  <16.517090, 11.902734, 8.532400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559380, 11.964340, 9.292892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.735039, 12.294887, 9.151886>,  <16.840435, 12.493215, 9.067282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.735039, 12.294887, 9.151886>,  <16.559380, 11.964340, 9.292892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735039, 12.294887, 9.151886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572172, 0.559763, 0.599403,
		0.692653, -0.061526, 0.718642,
		0.439148, 0.826366, -0.352518,
		16.866783, 12.542796, 9.046131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792545, 12.389175, 9.906029>,  <16.559380, 11.964340, 9.292892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792545, 12.389175, 9.906029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.724333, 12.604488, 9.575896>,  <16.683405, 12.733676, 9.377817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.724333, 12.604488, 9.575896>,  <16.792545, 12.389175, 9.906029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724333, 12.604488, 9.575896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485503, 0.682968, 0.545749,
		0.857442, 0.493768, 0.144870,
		-0.170532, 0.538282, -0.825331,
		16.673174, 12.765973, 9.328297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047083, 12.990919, 10.029483>,  <16.792545, 12.389175, 9.906029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047083, 12.990919, 10.029483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.751631, 13.050797, 9.766570>,  <16.574360, 13.086724, 9.608823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.751631, 13.050797, 9.766570>,  <17.047083, 12.990919, 10.029483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751631, 13.050797, 9.766570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425677, 0.652472, 0.626961,
		0.522710, 0.742881, -0.418213,
		-0.738629, 0.149695, -0.657281,
		16.530043, 13.095706, 9.569386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076080, 13.619411, 10.021467>,  <17.047083, 12.990919, 10.029483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076080, 13.619411, 10.021467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.719334, 13.536781, 9.860520>,  <16.505285, 13.487204, 9.763952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.719334, 13.536781, 9.860520>,  <17.076080, 13.619411, 10.021467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719334, 13.536781, 9.860520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429155, 0.667404, 0.608602,
		0.142821, 0.715471, -0.683888,
		-0.891868, -0.206573, -0.402368,
		16.451773, 13.474810, 9.739810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868769, 14.259604, 9.624015>,  <17.076080, 13.619411, 10.021467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868769, 14.259604, 9.624015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.550785, 14.040505, 9.728333>,  <16.359995, 13.909046, 9.790923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.550785, 14.040505, 9.728333>,  <16.868769, 14.259604, 9.624015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550785, 14.040505, 9.728333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264005, 0.699392, 0.664193,
		-0.546208, 0.459154, -0.700595,
		-0.794958, -0.547748, 0.260795,
		16.312298, 13.876181, 9.806571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382914, 14.739840, 9.643117>,  <16.868769, 14.259604, 9.624015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382914, 14.739840, 9.643117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.244846, 14.426812, 9.850364>,  <16.162006, 14.238996, 9.974712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.244846, 14.426812, 9.850364>,  <16.382914, 14.739840, 9.643117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244846, 14.426812, 9.850364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265516, 0.610916, 0.745844,
		-0.900200, 0.119873, -0.418653,
		-0.345168, -0.782568, 0.518118,
		16.141296, 14.192041, 10.005799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.700592, 14.940206, 9.856680>,  <16.382914, 14.739840, 9.643117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.700592, 14.940206, 9.856680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.808141, 14.644152, 10.103228>,  <15.872670, 14.466519, 10.251156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.808141, 14.644152, 10.103228>,  <15.700592, 14.940206, 9.856680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808141, 14.644152, 10.103228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370747, 0.511098, 0.775452,
		-0.888963, -0.437014, -0.136983,
		0.268872, -0.740134, 0.616368,
		15.888803, 14.422112, 10.288138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090447, 14.710787, 10.231865>,  <15.700592, 14.940206, 9.856680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090447, 14.710787, 10.231865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.389330, 14.573571, 10.459551>,  <15.568660, 14.491241, 10.596163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.389330, 14.573571, 10.459551>,  <15.090447, 14.710787, 10.231865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.389330, 14.573571, 10.459551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400194, 0.451552, 0.797462,
		-0.530591, -0.823666, 0.200121,
		0.747207, -0.343039, 0.569215,
		15.613492, 14.470659, 10.630316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.770334, 14.516054, 10.878026>,  <15.090447, 14.710787, 10.231865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.770334, 14.516054, 10.878026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.157621, 14.513618, 10.978038>,  <15.389994, 14.512156, 11.038045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.157621, 14.513618, 10.978038>,  <14.770334, 14.516054, 10.878026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157621, 14.513618, 10.978038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230905, 0.362340, 0.902991,
		-0.096098, -0.932026, 0.349418,
		0.968219, -0.006093, 0.250030,
		15.448087, 14.511789, 11.053047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839369, 14.231228, 11.630488>,  <14.770334, 14.516054, 10.878026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839369, 14.231228, 11.630488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.193701, 14.411953, 11.588214>,  <15.406301, 14.520388, 11.562849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.193701, 14.411953, 11.588214>,  <14.839369, 14.231228, 11.630488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193701, 14.411953, 11.588214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056924, 0.120229, 0.991113,
		0.460504, -0.883974, 0.080784,
		0.885831, 0.451813, -0.105686,
		15.459450, 14.547497, 11.556508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349300, 14.093412, 12.079882>,  <14.839369, 14.231228, 11.630488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349300, 14.093412, 12.079882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.535756, 14.432658, 11.979150>,  <15.647630, 14.636206, 11.918711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.535756, 14.432658, 11.979150>,  <15.349300, 14.093412, 12.079882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535756, 14.432658, 11.979150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296663, 0.118326, 0.947624,
		0.833490, -0.516432, -0.196447,
		0.466138, 0.848114, -0.251829,
		15.675598, 14.687092, 11.903601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957406, 14.020724, 12.433722>,  <15.349300, 14.093412, 12.079882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.957406, 14.020724, 12.433722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.900572, 14.411117, 12.367663>,  <15.866471, 14.645352, 12.328028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.900572, 14.411117, 12.367663>,  <15.957406, 14.020724, 12.433722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900572, 14.411117, 12.367663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311884, 0.202483, 0.928294,
		0.939436, 0.080391, -0.333163,
		-0.142086, 0.975980, -0.165147,
		15.857946, 14.703911, 12.318119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610676, 14.376892, 12.740046>,  <15.957406, 14.020724, 12.433722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.610676, 14.376892, 12.740046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.335140, 14.665499, 12.711994>,  <16.169819, 14.838662, 12.695164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.335140, 14.665499, 12.711994>,  <16.610676, 14.376892, 12.740046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335140, 14.665499, 12.711994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311129, 0.381634, 0.870376,
		0.654753, 0.577729, -0.487368,
		-0.688838, 0.721515, -0.070127,
		16.128489, 14.881953, 12.690956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972357, 15.002934, 12.912951>,  <16.610676, 14.376892, 12.740046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972357, 15.002934, 12.912951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.586327, 15.083170, 12.980351>,  <16.354708, 15.131311, 13.020792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.586327, 15.083170, 12.980351>,  <16.972357, 15.002934, 12.912951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586327, 15.083170, 12.980351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235628, 0.383521, 0.892968,
		0.114497, 0.901485, -0.417391,
		-0.965075, 0.200591, 0.168503,
		16.296804, 15.143347, 13.030903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.828812, 15.768907, 13.209168>,  <16.972357, 15.002934, 12.912951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.828812, 15.768907, 13.209168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.541307, 15.507895, 13.305158>,  <16.368805, 15.351289, 13.362751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.541307, 15.507895, 13.305158>,  <16.828812, 15.768907, 13.209168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.541307, 15.507895, 13.305158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206393, 0.129340, 0.969883,
		-0.663915, 0.746644, 0.041712,
		-0.718762, -0.652529, 0.239973,
		16.325678, 15.312137, 13.377150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516254, 16.015404, 13.824271>,  <16.828812, 15.768907, 13.209168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516254, 16.015404, 13.824271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.366903, 15.644333, 13.823241>,  <16.277292, 15.421691, 13.822623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.366903, 15.644333, 13.823241>,  <16.516254, 16.015404, 13.824271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366903, 15.644333, 13.823241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073964, -0.032535, 0.996730,
		-0.924727, 0.371965, 0.080762,
		-0.373376, -0.927676, -0.002574,
		16.254890, 15.366030, 13.822469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981937, 16.011223, 14.276322>,  <16.516254, 16.015404, 13.824271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981937, 16.011223, 14.276322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.063566, 15.620532, 14.249917>,  <16.112543, 15.386117, 14.234074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.063566, 15.620532, 14.249917>,  <15.981937, 16.011223, 14.276322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063566, 15.620532, 14.249917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011701, -0.064995, 0.997817,
		-0.978886, -0.204398, -0.001835,
		0.204071, -0.976728, -0.066014,
		16.124788, 15.327514, 14.230113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616560, 15.742350, 14.967601>,  <15.981937, 16.011223, 14.276322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616560, 15.742350, 14.967601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.844891, 15.443316, 14.831790>,  <15.981889, 15.263897, 14.750303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.844891, 15.443316, 14.831790>,  <15.616560, 15.742350, 14.967601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844891, 15.443316, 14.831790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339642, -0.161487, 0.926588,
		-0.747530, -0.644237, 0.161730,
		0.570825, -0.747583, -0.339527,
		16.016138, 15.219042, 14.729932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407124, 15.254881, 15.297433>,  <15.616560, 15.742350, 14.967601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407124, 15.254881, 15.297433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.783974, 15.166304, 15.196744>,  <16.010084, 15.113157, 15.136331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.783974, 15.166304, 15.196744>,  <15.407124, 15.254881, 15.297433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.783974, 15.166304, 15.196744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224605, -0.140537, 0.964262,
		-0.248907, -0.964993, -0.082665,
		0.942124, -0.221445, -0.251723,
		16.066610, 15.099871, 15.121227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.543071, 14.615047, 15.532865>,  <15.407124, 15.254881, 15.297433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.543071, 14.615047, 15.532865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.899927, 14.782473, 15.464878>,  <16.114040, 14.882929, 15.424086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.899927, 14.782473, 15.464878>,  <15.543071, 14.615047, 15.532865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899927, 14.782473, 15.464878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332815, -0.354543, 0.873804,
		0.305484, -0.836123, -0.455608,
		0.892140, 0.418567, -0.169967,
		16.167568, 14.908043, 15.413888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938655, 14.182216, 15.767096>,  <15.543071, 14.615047, 15.532865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938655, 14.182216, 15.767096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.172039, 14.507040, 15.762478>,  <16.312069, 14.701935, 15.759707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.172039, 14.507040, 15.762478>,  <15.938655, 14.182216, 15.767096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.172039, 14.507040, 15.762478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312809, -0.211588, 0.925949,
		0.749483, -0.543864, -0.377473,
		0.583459, 0.812060, -0.011544,
		16.347076, 14.750658, 15.759014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.706635, 13.952923, 15.853477>,  <15.938655, 14.182216, 15.767096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.706635, 13.952923, 15.853477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.701260, 14.339141, 15.957433>,  <16.698034, 14.570871, 16.019806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.701260, 14.339141, 15.957433>,  <16.706635, 13.952923, 15.853477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701260, 14.339141, 15.957433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559608, -0.208135, 0.802196,
		0.828648, 0.156214, -0.537531,
		-0.013436, 0.965545, 0.259889,
		16.697229, 14.628804, 16.035400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502701, 14.173423, 15.971666>,  <16.706635, 13.952923, 15.853477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502701, 14.173423, 15.971666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.231026, 14.380943, 16.179338>,  <17.068020, 14.505456, 16.303942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.231026, 14.380943, 16.179338>,  <17.502701, 14.173423, 15.971666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231026, 14.380943, 16.179338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493370, -0.201000, 0.846277,
		0.543405, 0.830930, -0.119444,
		-0.679189, 0.518801, 0.519180,
		17.027269, 14.536584, 16.335093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797600, 14.495308, 16.605616>,  <17.502701, 14.173423, 15.971666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.797600, 14.495308, 16.605616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.408813, 14.485764, 16.699183>,  <17.175543, 14.480037, 16.755322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.408813, 14.485764, 16.699183>,  <17.797600, 14.495308, 16.605616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408813, 14.485764, 16.699183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229876, -0.305537, 0.924015,
		0.049422, 0.951881, 0.302456,
		-0.971964, -0.023861, 0.233915,
		17.117224, 14.478605, 16.769358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699533, 14.813856, 17.198418>,  <17.797600, 14.495308, 16.605616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699533, 14.813856, 17.198418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.404552, 14.549139, 17.144463>,  <17.227564, 14.390308, 17.112089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.404552, 14.549139, 17.144463>,  <17.699533, 14.813856, 17.198418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404552, 14.549139, 17.144463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215400, -0.419740, 0.881715,
		-0.640132, 0.621167, 0.452088,
		-0.737451, -0.661794, -0.134889,
		17.183317, 14.350601, 17.103996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297142, 15.246748, 17.216808>,  <17.699533, 14.813856, 17.198418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297142, 15.246748, 17.216808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.467728, 15.602329, 17.150009>,  <18.570080, 15.815679, 17.109930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.467728, 15.602329, 17.150009>,  <18.297142, 15.246748, 17.216808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.467728, 15.602329, 17.150009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693881, -0.203098, 0.690855,
		0.580221, -0.410503, -0.703442,
		0.426465, 0.888954, -0.166999,
		18.595667, 15.869016, 17.099909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421341, 14.921393, 16.608772>,  <18.297142, 15.246748, 17.216808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421341, 14.921393, 16.608772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.289127, 14.807200, 16.248940>,  <18.209799, 14.738685, 16.033039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.289127, 14.807200, 16.248940>,  <18.421341, 14.921393, 16.608772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289127, 14.807200, 16.248940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770741, -0.631758, -0.082705,
		-0.544706, -0.720681, 0.428851,
		-0.330534, -0.285483, -0.899581,
		18.189966, 14.721556, 15.979065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408670, 15.541027, 16.119337>,  <18.421341, 14.921393, 16.608772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408670, 15.541027, 16.119337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.698256, 15.422719, 16.368624>,  <18.872007, 15.351734, 16.518196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.698256, 15.422719, 16.368624>,  <18.408670, 15.541027, 16.119337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698256, 15.422719, 16.368624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281997, -0.697602, -0.658657,
		0.629568, 0.652588, -0.421631,
		0.723963, -0.295771, 0.623216,
		18.915443, 15.333988, 16.555588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063963, 15.747834, 15.884652>,  <18.408670, 15.541027, 16.119337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063963, 15.747834, 15.884652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.098913, 15.408623, 16.093731>,  <19.119883, 15.205096, 16.219179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.098913, 15.408623, 16.093731>,  <19.063963, 15.747834, 15.884652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.098913, 15.408623, 16.093731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450435, -0.434370, -0.780020,
		0.888524, 0.303595, 0.344028,
		0.087375, -0.848029, 0.522698,
		19.125126, 15.154214, 16.250540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777336, 15.592382, 15.898494>,  <19.063963, 15.747834, 15.884652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777336, 15.592382, 15.898494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542448, 15.268625, 15.895605>,  <19.401514, 15.074370, 15.893872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542448, 15.268625, 15.895605>,  <19.777336, 15.592382, 15.898494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.542448, 15.268625, 15.895605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541734, -0.386371, -0.746486,
		0.601411, -0.442265, 0.665362,
		-0.587221, -0.809394, -0.007222,
		19.366282, 15.025807, 15.893438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021032, 15.004337, 15.374869>,  <19.777336, 15.592382, 15.898494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021032, 15.004337, 15.374869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.360872, 14.804036, 15.308625>,  <20.564775, 14.683856, 15.268879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.360872, 14.804036, 15.308625>,  <20.021032, 15.004337, 15.374869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360872, 14.804036, 15.308625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366108, -0.333887, -0.868611,
		0.379664, 0.798603, -0.466999,
		0.849600, -0.500752, -0.165611,
		20.615753, 14.653811, 15.258942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474113, 15.242621, 14.691716>,  <20.021032, 15.004337, 15.374869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474113, 15.242621, 14.691716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.560371, 14.865086, 14.791849>,  <20.612125, 14.638564, 14.851929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.560371, 14.865086, 14.791849>,  <20.474113, 15.242621, 14.691716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560371, 14.865086, 14.791849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459366, -0.324280, -0.826937,
		0.861673, 0.063330, -0.503496,
		0.215643, -0.943839, 0.250332,
		20.625065, 14.581934, 14.866948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.560423, 14.879795, 14.040412>,  <20.474113, 15.242621, 14.691716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.560423, 14.879795, 14.040412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.537613, 14.561218, 14.281219>,  <20.523928, 14.370072, 14.425704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.537613, 14.561218, 14.281219>,  <20.560423, 14.879795, 14.040412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537613, 14.561218, 14.281219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492795, -0.501970, -0.710760,
		0.868275, -0.337202, -0.363860,
		-0.057023, -0.796443, 0.602019,
		20.520506, 14.322286, 14.461825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845625, 14.289291, 13.635243>,  <20.560423, 14.879795, 14.040412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845625, 14.289291, 13.635243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.616180, 14.136153, 13.924905>,  <20.478514, 14.044271, 14.098701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.616180, 14.136153, 13.924905>,  <20.845625, 14.289291, 13.635243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616180, 14.136153, 13.924905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552578, -0.471744, -0.687106,
		0.604671, -0.794284, 0.059046,
		-0.573612, -0.382845, 0.724154,
		20.444098, 14.021299, 14.142151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.899574, 13.634119, 13.609591>,  <20.845625, 14.289291, 13.635243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.899574, 13.634119, 13.609591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546818, 13.685521, 13.791030>,  <20.335163, 13.716363, 13.899894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546818, 13.685521, 13.791030>,  <20.899574, 13.634119, 13.609591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546818, 13.685521, 13.791030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416003, -0.664815, -0.620453,
		0.221828, -0.735871, 0.639754,
		-0.881892, 0.128505, 0.453599,
		20.282249, 13.724072, 13.927110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742537, 13.023784, 13.799223>,  <20.899574, 13.634119, 13.609591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742537, 13.023784, 13.799223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.376999, 13.184101, 13.825316>,  <20.157677, 13.280292, 13.840972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.376999, 13.184101, 13.825316>,  <20.742537, 13.023784, 13.799223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.376999, 13.184101, 13.825316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388459, -0.816067, -0.427942,
		-0.118281, -0.416412, 0.901449,
		-0.913843, 0.400793, 0.065233,
		20.102846, 13.304339, 13.844887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.270502, 12.417773, 13.870502>,  <20.742537, 13.023784, 13.799223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.270502, 12.417773, 13.870502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.064123, 12.730574, 13.730633>,  <19.940296, 12.918254, 13.646711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.064123, 12.730574, 13.730633>,  <20.270502, 12.417773, 13.870502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.064123, 12.730574, 13.730633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411639, -0.584317, -0.699376,
		-0.751233, -0.216902, 0.623380,
		-0.515948, 0.782001, -0.349673,
		19.909338, 12.965174, 13.625731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624716, 12.252192, 13.817521>,  <20.270502, 12.417773, 13.870502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624716, 12.252192, 13.817521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.595930, 12.565437, 13.570439>,  <19.578659, 12.753384, 13.422191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.595930, 12.565437, 13.570439>,  <19.624716, 12.252192, 13.817521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.595930, 12.565437, 13.570439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497740, -0.564880, -0.658153,
		-0.864335, 0.260092, 0.430438,
		-0.071966, 0.783111, -0.617704,
		19.574341, 12.800370, 13.385128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915623, 12.271247, 13.577802>,  <19.624716, 12.252192, 13.817521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915623, 12.271247, 13.577802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.121683, 12.473847, 13.301229>,  <19.245319, 12.595407, 13.135284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.121683, 12.473847, 13.301229>,  <18.915623, 12.271247, 13.577802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.121683, 12.473847, 13.301229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429035, -0.545983, -0.719605,
		-0.741991, 0.667352, -0.063956,
		0.515149, 0.506501, -0.691432,
		19.276228, 12.625798, 13.093799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514967, 12.717931, 13.201397>,  <18.915623, 12.271247, 13.577802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514967, 12.717931, 13.201397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.821434, 12.698412, 12.945083>,  <19.005314, 12.686701, 12.791294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.821434, 12.698412, 12.945083>,  <18.514967, 12.717931, 13.201397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821434, 12.698412, 12.945083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620489, -0.315706, -0.717859,
		-0.167270, 0.947601, -0.272163,
		0.766168, -0.048798, -0.640785,
		19.051285, 12.683772, 12.752848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424431, 13.060063, 12.461111>,  <18.514967, 12.717931, 13.201397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424431, 13.060063, 12.461111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.701988, 12.777100, 12.407327>,  <18.868523, 12.607321, 12.375056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.701988, 12.777100, 12.407327>,  <18.424431, 13.060063, 12.461111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701988, 12.777100, 12.407327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579583, -0.437876, -0.687276,
		0.427309, 0.554829, -0.713843,
		0.693895, -0.707410, -0.134461,
		18.910156, 12.564877, 12.366988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555668, 13.104029, 11.791616>,  <18.424431, 13.060063, 12.461111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555668, 13.104029, 11.791616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.719625, 12.746190, 11.862815>,  <18.818001, 12.531487, 11.905534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.719625, 12.746190, 11.862815>,  <18.555668, 13.104029, 11.791616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.719625, 12.746190, 11.862815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457518, -0.370465, -0.808352,
		0.789090, 0.249904, -0.561146,
		0.409895, -0.894597, 0.177995,
		18.842594, 12.477811, 11.916213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.784639, 12.873289, 11.070993>,  <18.555668, 13.104029, 11.791616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.784639, 12.873289, 11.070993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.771404, 12.545278, 11.299539>,  <18.763464, 12.348471, 11.436666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.771404, 12.545278, 11.299539>,  <18.784639, 12.873289, 11.070993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771404, 12.545278, 11.299539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464045, -0.493717, -0.735463,
		0.885193, -0.289473, -0.364195,
		-0.033087, -0.820030, 0.571363,
		18.761478, 12.299269, 11.470947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994463, 12.396006, 10.625277>,  <18.784639, 12.873289, 11.070993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.994463, 12.396006, 10.625277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.775837, 12.208108, 10.902580>,  <18.644661, 12.095369, 11.068962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.775837, 12.208108, 10.902580>,  <18.994463, 12.396006, 10.625277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775837, 12.208108, 10.902580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517108, -0.461841, -0.720626,
		0.658686, -0.752358, 0.009517,
		-0.546564, -0.469745, 0.693258,
		18.611868, 12.067184, 11.110558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.777699, 11.715568, 10.299027>,  <18.994463, 12.396006, 10.625277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.777699, 11.715568, 10.299027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.536728, 11.734260, 10.617749>,  <18.392145, 11.745475, 10.808982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.536728, 11.734260, 10.617749>,  <18.777699, 11.715568, 10.299027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536728, 11.734260, 10.617749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630977, -0.639259, -0.439564,
		0.488823, -0.767571, 0.414593,
		-0.602428, 0.046730, 0.796804,
		18.355999, 11.748279, 10.856791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.098610, 21.236198, 20.663607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.960227, 20.889572, 20.807482>,  <13.877197, 20.681597, 20.893806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.960227, 20.889572, 20.807482>,  <14.098610, 21.236198, 20.663607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.960227, 20.889572, 20.807482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055090, -0.363937, -0.929793,
		0.936632, -0.341483, 0.078168,
		-0.345957, -0.866567, 0.359687,
		13.856440, 20.629602, 20.915388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350402, 20.812538, 20.313759>,  <14.098610, 21.236198, 20.663607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350402, 20.812538, 20.313759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.041923, 20.610981, 20.469370>,  <13.856835, 20.490046, 20.562737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.041923, 20.610981, 20.469370>,  <14.350402, 20.812538, 20.313759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.041923, 20.610981, 20.469370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208901, -0.376952, -0.902368,
		0.601344, -0.777173, 0.185441,
		-0.771198, -0.503895, 0.389030,
		13.810563, 20.459812, 20.586079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592141, 20.160168, 20.259214>,  <14.350402, 20.812538, 20.313759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592141, 20.160168, 20.259214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192597, 20.177927, 20.252184>,  <13.952871, 20.188583, 20.247965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192597, 20.177927, 20.252184>,  <14.592141, 20.160168, 20.259214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192597, 20.177927, 20.252184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003892, -0.442585, -0.896718,
		-0.047591, -0.895627, 0.442253,
		-0.998859, 0.044397, -0.017577,
		13.892940, 20.191246, 20.246910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.387450, 19.476170, 19.950478>,  <14.592141, 20.160168, 20.259214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.387450, 19.476170, 19.950478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050490, 19.689835, 19.922094>,  <13.848314, 19.818033, 19.905064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050490, 19.689835, 19.922094>,  <14.387450, 19.476170, 19.950478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050490, 19.689835, 19.922094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136189, -0.338463, -0.931072,
		-0.521361, -0.774670, 0.357868,
		-0.842399, 0.534162, -0.070959,
		13.797771, 19.850082, 19.900806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.831263, 19.019789, 19.782661>,  <14.387450, 19.476170, 19.950478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.831263, 19.019789, 19.782661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676826, 19.378103, 19.694574>,  <13.584164, 19.593092, 19.641722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676826, 19.378103, 19.694574>,  <13.831263, 19.019789, 19.782661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.676826, 19.378103, 19.694574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102424, -0.278884, -0.954847,
		-0.916756, -0.346104, 0.199425,
		-0.386093, 0.895788, -0.220219,
		13.560998, 19.646839, 19.628508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135867, 18.922495, 19.551138>,  <13.831263, 19.019789, 19.782661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135867, 18.922495, 19.551138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239565, 19.266577, 19.375483>,  <13.301784, 19.473026, 19.270090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239565, 19.266577, 19.375483>,  <13.135867, 18.922495, 19.551138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.239565, 19.266577, 19.375483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195698, -0.398465, -0.896062,
		-0.945777, 0.318238, 0.065040,
		0.259245, 0.860204, -0.439138,
		13.317338, 19.524637, 19.243742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.586444, 19.163584, 19.144064>,  <13.135867, 18.922495, 19.551138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.586444, 19.163584, 19.144064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900952, 19.366508, 19.002975>,  <13.089657, 19.488264, 18.918324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900952, 19.366508, 19.002975>,  <12.586444, 19.163584, 19.144064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.900952, 19.366508, 19.002975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308819, -0.171780, -0.935480,
		-0.535172, 0.844466, 0.021602,
		0.786271, 0.507314, -0.352719,
		13.136833, 19.518703, 18.897160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293934, 19.718895, 18.712200>,  <12.586444, 19.163584, 19.144064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293934, 19.718895, 18.712200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671703, 19.659214, 18.595032>,  <12.898365, 19.623405, 18.524731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671703, 19.659214, 18.595032>,  <12.293934, 19.718895, 18.712200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.671703, 19.659214, 18.595032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290462, 0.038511, -0.956111,
		0.153934, 0.988057, -0.006967,
		0.944424, -0.149202, -0.292921,
		12.955030, 19.614454, 18.507154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.250576, 20.044691, 18.183966>,  <12.293934, 19.718895, 18.712200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.250576, 20.044691, 18.183966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.581572, 19.835165, 18.103090>,  <12.780169, 19.709450, 18.054565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.581572, 19.835165, 18.103090>,  <12.250576, 20.044691, 18.183966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581572, 19.835165, 18.103090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372029, -0.241793, -0.896176,
		0.420542, 0.816795, -0.394955,
		0.827489, -0.523814, -0.202187,
		12.829819, 19.678020, 18.042435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417090, 20.130114, 17.429472>,  <12.250576, 20.044691, 18.183966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417090, 20.130114, 17.429472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624465, 19.807001, 17.541693>,  <12.748890, 19.613132, 17.609026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624465, 19.807001, 17.541693>,  <12.417090, 20.130114, 17.429472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.624465, 19.807001, 17.541693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165251, -0.416547, -0.893969,
		0.838997, 0.417105, -0.349440,
		0.518437, -0.807783, 0.280554,
		12.779996, 19.564667, 17.625858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.988874, 20.036911, 16.936430>,  <12.417090, 20.130114, 17.429472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.988874, 20.036911, 16.936430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862426, 19.703539, 17.117743>,  <12.786557, 19.503515, 17.226530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862426, 19.703539, 17.117743>,  <12.988874, 20.036911, 16.936430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862426, 19.703539, 17.117743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084141, -0.451268, -0.888413,
		0.944980, -0.318985, 0.072530,
		-0.316121, -0.833430, 0.453279,
		12.767590, 19.453510, 17.253727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.170641, 19.485804, 16.452021>,  <12.988874, 20.036911, 16.936430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.170641, 19.485804, 16.452021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938649, 19.262218, 16.689064>,  <12.799455, 19.128067, 16.831289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938649, 19.262218, 16.689064>,  <13.170641, 19.485804, 16.452021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.938649, 19.262218, 16.689064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286434, -0.541079, -0.790689,
		0.762615, -0.628325, 0.153708,
		-0.579978, -0.558964, 0.592609,
		12.764656, 19.094530, 16.866846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212711, 18.651142, 16.327154>,  <13.170641, 19.485804, 16.452021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212711, 18.651142, 16.327154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860655, 18.777451, 16.468939>,  <12.649421, 18.853235, 16.554010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860655, 18.777451, 16.468939>,  <13.212711, 18.651142, 16.327154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.860655, 18.777451, 16.468939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432873, -0.227338, -0.872318,
		-0.194871, -0.921198, 0.336778,
		-0.880140, 0.315771, 0.354460,
		12.596613, 18.872181, 16.575277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.805223, 18.395197, 15.780412>,  <13.212711, 18.651142, 16.327154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.805223, 18.395197, 15.780412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087265, 18.244965, 15.539825>,  <14.256491, 18.154825, 15.395473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087265, 18.244965, 15.539825>,  <13.805223, 18.395197, 15.780412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087265, 18.244965, 15.539825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708904, 0.393346, 0.585435,
		0.016704, -0.839176, 0.543604,
		0.705107, -0.375583, -0.601465,
		14.298798, 18.132290, 15.359385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258173, 18.092583, 16.183914>,  <13.805223, 18.395197, 15.780412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.258173, 18.092583, 16.183914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497050, 18.134060, 15.865767>,  <14.640377, 18.158945, 15.674878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497050, 18.134060, 15.865767>,  <14.258173, 18.092583, 16.183914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497050, 18.134060, 15.865767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707656, 0.398706, 0.583315,
		0.377600, -0.911198, 0.164729,
		0.597194, 0.103688, -0.795366,
		14.676208, 18.165167, 15.627156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.860001, 17.829576, 16.369717>,  <14.258173, 18.092583, 16.183914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.860001, 17.829576, 16.369717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952980, 18.064915, 16.059925>,  <15.008767, 18.206118, 15.874050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952980, 18.064915, 16.059925>,  <14.860001, 17.829576, 16.369717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.952980, 18.064915, 16.059925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715275, 0.436168, 0.546021,
		0.659052, -0.680887, -0.319443,
		0.232447, 0.588346, -0.774479,
		15.022715, 18.241419, 15.827581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600311, 17.743044, 16.218483>,  <14.860001, 17.829576, 16.369717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600311, 17.743044, 16.218483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500995, 18.102285, 16.073288>,  <15.441404, 18.317831, 15.986171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500995, 18.102285, 16.073288>,  <15.600311, 17.743044, 16.218483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.500995, 18.102285, 16.073288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806441, 0.399244, 0.436184,
		0.536660, -0.184429, -0.823397,
		-0.248292, 0.898103, -0.362990,
		15.426507, 18.371716, 15.964391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241798, 17.980240, 16.265350>,  <15.600311, 17.743044, 16.218483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.241798, 17.980240, 16.265350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017286, 18.303581, 16.194324>,  <15.882580, 18.497587, 16.151709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017286, 18.303581, 16.194324>,  <16.241798, 17.980240, 16.265350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017286, 18.303581, 16.194324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499668, 0.502006, 0.705919,
		0.659772, 0.307493, -0.685674,
		-0.561278, 0.808355, -0.177565,
		15.848903, 18.546087, 16.141054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656202, 18.591084, 16.330042>,  <16.241798, 17.980240, 16.265350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656202, 18.591084, 16.330042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274702, 18.692410, 16.394777>,  <16.045801, 18.753204, 16.433619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274702, 18.692410, 16.394777>,  <16.656202, 18.591084, 16.330042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274702, 18.692410, 16.394777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277667, 0.536164, 0.797138,
		0.115156, 0.805208, -0.581704,
		-0.953751, 0.253315, 0.161837,
		15.988577, 18.768404, 16.443329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693758, 19.320894, 16.475140>,  <16.656202, 18.591084, 16.330042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693758, 19.320894, 16.475140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337553, 19.245302, 16.640680>,  <16.123831, 19.199947, 16.740005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337553, 19.245302, 16.640680>,  <16.693758, 19.320894, 16.475140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337553, 19.245302, 16.640680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199364, 0.655573, 0.728339,
		-0.408951, 0.731103, -0.546121,
		-0.890513, -0.188978, 0.413853,
		16.070398, 19.188608, 16.764835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604731, 19.883963, 16.901924>,  <16.693758, 19.320894, 16.475140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604731, 19.883963, 16.901924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308603, 19.651876, 17.037735>,  <16.130926, 19.512625, 17.119221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308603, 19.651876, 17.037735>,  <16.604731, 19.883963, 16.901924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308603, 19.651876, 17.037735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049165, 0.456973, 0.888121,
		-0.670455, 0.674186, -0.309779,
		-0.740319, -0.580215, 0.339526,
		16.086508, 19.477812, 17.139593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168797, 20.388378, 17.217287>,  <16.604731, 19.883963, 16.901924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.168797, 20.388378, 17.217287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102736, 20.027702, 17.377129>,  <16.063099, 19.811296, 17.473034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102736, 20.027702, 17.377129>,  <16.168797, 20.388378, 17.217287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102736, 20.027702, 17.377129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107002, 0.419156, 0.901587,
		-0.980446, 0.106143, -0.165708,
		-0.165154, -0.901689, 0.399602,
		16.053188, 19.757196, 17.497009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547802, 20.545246, 17.669409>,  <16.168797, 20.388378, 17.217287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547802, 20.545246, 17.669409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.720906, 20.204739, 17.788105>,  <15.824769, 20.000433, 17.859324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.720906, 20.204739, 17.788105>,  <15.547802, 20.545246, 17.669409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720906, 20.204739, 17.788105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107010, 0.278327, 0.954506,
		-0.895135, -0.444827, 0.029355,
		0.432761, -0.851271, 0.296742,
		15.850735, 19.949358, 17.877127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179951, 20.194586, 18.181875>,  <15.547802, 20.545246, 17.669409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179951, 20.194586, 18.181875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544188, 20.039257, 18.238483>,  <15.762731, 19.946060, 18.272448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544188, 20.039257, 18.238483>,  <15.179951, 20.194586, 18.181875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.544188, 20.039257, 18.238483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003635, 0.349918, 0.936773,
		-0.413288, -0.852505, 0.320045,
		0.910593, -0.388320, 0.141518,
		15.817367, 19.922762, 18.280939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164372, 19.771547, 18.765827>,  <15.179951, 20.194586, 18.181875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.164372, 19.771547, 18.765827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546252, 19.877005, 18.710630>,  <15.775380, 19.940279, 18.677511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546252, 19.877005, 18.710630>,  <15.164372, 19.771547, 18.765827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546252, 19.877005, 18.710630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109203, 0.120971, 0.986631,
		0.276811, -0.957005, 0.086700,
		0.954699, 0.263643, -0.137994,
		15.832662, 19.956097, 18.669231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446665, 19.641481, 19.390661>,  <15.164372, 19.771547, 18.765827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446665, 19.641481, 19.390661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.740458, 19.867893, 19.240919>,  <15.916735, 20.003740, 19.151073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.740458, 19.867893, 19.240919>,  <15.446665, 19.641481, 19.390661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740458, 19.867893, 19.240919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284437, 0.244073, 0.927105,
		0.616140, -0.787424, 0.018268,
		0.734484, 0.566031, -0.374355,
		15.960804, 20.037703, 19.128613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988914, 19.382515, 19.720860>,  <15.446665, 19.641481, 19.390661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988914, 19.382515, 19.720860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067478, 19.757521, 19.605972>,  <16.114616, 19.982523, 19.537041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067478, 19.757521, 19.605972>,  <15.988914, 19.382515, 19.720860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067478, 19.757521, 19.605972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173389, 0.255097, 0.951242,
		0.965069, -0.236636, -0.112450,
		0.196413, 0.937512, -0.287216,
		16.126402, 20.038774, 19.519808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680780, 19.560181, 20.038347>,  <15.988914, 19.382515, 19.720860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680780, 19.560181, 20.038347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502562, 19.906683, 19.947937>,  <16.395630, 20.114584, 19.893690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502562, 19.906683, 19.947937>,  <16.680780, 19.560181, 20.038347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.502562, 19.906683, 19.947937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179443, 0.333756, 0.925423,
		0.877091, 0.371760, -0.304147,
		-0.445546, 0.866257, -0.226025,
		16.368898, 20.166559, 19.880129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713888, 18.991241, 19.566246>,  <16.680780, 19.560181, 20.038347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713888, 18.991241, 19.566246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536053, 18.759989, 19.839918>,  <16.429352, 18.621239, 20.004122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536053, 18.759989, 19.839918>,  <16.713888, 18.991241, 19.566246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536053, 18.759989, 19.839918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542000, -0.434493, -0.719342,
		0.713145, -0.690639, -0.120174,
		-0.444591, -0.578129, 0.684183,
		16.402676, 18.586550, 20.045174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.783054, 18.441843, 19.263527>,  <16.713888, 18.991241, 19.566246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.783054, 18.441843, 19.263527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506742, 18.349272, 19.537539>,  <16.340956, 18.293730, 19.701946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506742, 18.349272, 19.537539>,  <16.783054, 18.441843, 19.263527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506742, 18.349272, 19.537539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496050, -0.537618, -0.681837,
		0.526080, -0.810808, 0.256576,
		-0.690778, -0.231426, 0.685031,
		16.299509, 18.279844, 19.743048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727844, 17.683180, 19.268736>,  <16.783054, 18.441843, 19.263527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727844, 17.683180, 19.268736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398018, 17.831917, 19.439299>,  <16.200123, 17.921160, 19.541636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398018, 17.831917, 19.439299>,  <16.727844, 17.683180, 19.268736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.398018, 17.831917, 19.439299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555688, -0.673900, -0.486898,
		0.106306, -0.638429, 0.762304,
		-0.824567, 0.371843, 0.426407,
		16.150648, 17.943470, 19.567221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422140, 17.060944, 19.560949>,  <16.727844, 17.683180, 19.268736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422140, 17.060944, 19.560949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150532, 17.346010, 19.490480>,  <15.987567, 17.517050, 19.448200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150532, 17.346010, 19.490480>,  <16.422140, 17.060944, 19.560949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150532, 17.346010, 19.490480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520502, -0.636599, -0.569052,
		-0.517694, -0.294701, 0.803209,
		-0.679022, 0.712667, -0.176170,
		15.946825, 17.559811, 19.437630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711370, 16.781942, 19.822182>,  <16.422140, 17.060944, 19.560949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711370, 16.781942, 19.822182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649897, 17.058130, 19.539442>,  <15.613012, 17.223843, 19.369799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649897, 17.058130, 19.539442>,  <15.711370, 16.781942, 19.822182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649897, 17.058130, 19.539442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477668, -0.678122, -0.558554,
		-0.864994, 0.251799, 0.434031,
		-0.153683, 0.690469, -0.706848,
		15.603792, 17.265270, 19.327387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077052, 16.611032, 19.563576>,  <15.711370, 16.781942, 19.822182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077052, 16.611032, 19.563576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170305, 16.869957, 19.273298>,  <15.226257, 17.025312, 19.099131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170305, 16.869957, 19.273298>,  <15.077052, 16.611032, 19.563576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170305, 16.869957, 19.273298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470972, -0.577736, -0.666637,
		-0.850784, 0.497198, 0.170177,
		0.233134, 0.647313, -0.725696,
		15.240246, 17.064152, 19.055590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.428105, 16.804190, 19.083952>,  <15.077052, 16.611032, 19.563576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.428105, 16.804190, 19.083952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750225, 16.895977, 18.865288>,  <14.943497, 16.951050, 18.734089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750225, 16.895977, 18.865288>,  <14.428105, 16.804190, 19.083952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750225, 16.895977, 18.865288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343862, -0.570346, -0.745966,
		-0.482961, 0.788701, -0.380393,
		0.805299, 0.229470, -0.546659,
		14.991815, 16.964817, 18.701290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143519, 16.854202, 18.394054>,  <14.428105, 16.804190, 19.083952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143519, 16.854202, 18.394054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538774, 16.833132, 18.336353>,  <14.775928, 16.820490, 18.301733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538774, 16.833132, 18.336353>,  <14.143519, 16.854202, 18.394054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.538774, 16.833132, 18.336353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132834, -0.764539, -0.630742,
		-0.077064, 0.642422, -0.762467,
		0.988138, -0.052674, -0.144254,
		14.835216, 16.817329, 18.293077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209824, 16.921972, 17.695974>,  <14.143519, 16.854202, 18.394054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209824, 16.921972, 17.695974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539689, 16.749201, 17.842054>,  <14.737608, 16.645538, 17.929703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539689, 16.749201, 17.842054>,  <14.209824, 16.921972, 17.695974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.539689, 16.749201, 17.842054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046589, -0.695333, -0.717176,
		0.563703, 0.574414, -0.593538,
		0.824663, -0.431927, 0.365199,
		14.787087, 16.619623, 17.951614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644549, 16.774059, 17.077625>,  <14.209824, 16.921972, 17.695974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644549, 16.774059, 17.077625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742230, 16.520855, 17.371471>,  <14.800838, 16.368933, 17.547779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742230, 16.520855, 17.371471>,  <14.644549, 16.774059, 17.077625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742230, 16.520855, 17.371471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189217, -0.774095, -0.604131,
		0.951085, 0.008528, -0.308812,
		0.244202, -0.633012, 0.734616,
		14.815491, 16.330952, 17.591856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100162, 16.385092, 16.741995>,  <14.644549, 16.774059, 17.077625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100162, 16.385092, 16.741995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973109, 16.183149, 17.063051>,  <14.896878, 16.061985, 17.255686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973109, 16.183149, 17.063051>,  <15.100162, 16.385092, 16.741995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973109, 16.183149, 17.063051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136179, -0.813413, -0.565521,
		0.938385, -0.288930, 0.189614,
		-0.317631, -0.504854, 0.802641,
		14.877820, 16.031693, 17.303844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571880, 17.025099, 16.623495>,  <15.100162, 16.385092, 16.741995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571880, 17.025099, 16.623495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464975, 17.203817, 16.965008>,  <15.400832, 17.311049, 17.169916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464975, 17.203817, 16.965008>,  <15.571880, 17.025099, 16.623495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464975, 17.203817, 16.965008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616487, -0.601690, 0.507852,
		0.740618, 0.662075, -0.114634,
		-0.267262, 0.446795, 0.853783,
		15.384797, 17.337856, 17.221142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.978910, 18.855856, 25.125994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.286291, 18.949417, 24.887741>,  <19.470718, 19.005554, 24.744789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.286291, 18.949417, 24.887741>,  <18.978910, 18.855856, 25.125994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286291, 18.949417, 24.887741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623045, 0.061196, -0.779788,
		-0.145944, 0.970332, 0.192758,
		0.768450, 0.233903, -0.595630,
		19.516827, 19.019588, 24.709053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783424, 19.443171, 24.776011>,  <18.978910, 18.855856, 25.125994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.783424, 19.443171, 24.776011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.090059, 19.275707, 24.581251>,  <19.274040, 19.175230, 24.464396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.090059, 19.275707, 24.581251>,  <18.783424, 19.443171, 24.776011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090059, 19.275707, 24.581251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543684, -0.019698, -0.839059,
		0.341687, 0.907930, -0.242718,
		0.766588, -0.418657, -0.486897,
		19.320036, 19.150110, 24.435183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886492, 19.817532, 24.005449>,  <18.783424, 19.443171, 24.776011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886492, 19.817532, 24.005449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.023106, 19.441751, 24.016647>,  <19.105074, 19.216284, 24.023367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.023106, 19.441751, 24.016647>,  <18.886492, 19.817532, 24.005449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.023106, 19.441751, 24.016647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606774, -0.243141, -0.756774,
		0.717760, 0.241478, -0.653077,
		0.341534, -0.939452, 0.027995,
		19.125566, 19.159916, 24.025045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052826, 19.736752, 23.249216>,  <18.886492, 19.817532, 24.005449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052826, 19.736752, 23.249216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.060383, 19.373167, 23.415794>,  <19.064917, 19.155016, 23.515741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.060383, 19.373167, 23.415794>,  <19.052826, 19.736752, 23.249216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060383, 19.373167, 23.415794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537367, -0.360480, -0.762424,
		0.843137, -0.209380, -0.495258,
		0.018894, -0.908963, 0.416448,
		19.066051, 19.100477, 23.540730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148237, 19.284451, 22.693275>,  <19.052826, 19.736752, 23.249216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148237, 19.284451, 22.693275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.017550, 19.034534, 22.976936>,  <18.939137, 18.884584, 23.147133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.017550, 19.034534, 22.976936>,  <19.148237, 19.284451, 22.693275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017550, 19.034534, 22.976936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603711, -0.439341, -0.665216,
		0.727178, -0.645460, -0.233652,
		-0.326717, -0.624789, 0.709151,
		18.919535, 18.847097, 23.189682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309952, 18.617321, 22.428057>,  <19.148237, 19.284451, 22.693275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309952, 18.617321, 22.428057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.993210, 18.629787, 22.672022>,  <18.803165, 18.637266, 22.818401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.993210, 18.629787, 22.672022>,  <19.309952, 18.617321, 22.428057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.993210, 18.629787, 22.672022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567038, -0.408390, -0.715322,
		0.226790, -0.912275, 0.341057,
		-0.791855, 0.031164, 0.609914,
		18.755653, 18.639137, 22.854996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954041, 18.035208, 22.305580>,  <19.309952, 18.617321, 22.428057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954041, 18.035208, 22.305580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.669298, 18.239874, 22.498022>,  <18.498453, 18.362673, 22.613487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.669298, 18.239874, 22.498022>,  <18.954041, 18.035208, 22.305580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669298, 18.239874, 22.498022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625396, -0.150077, -0.765739,
		-0.319598, -0.845977, 0.426826,
		-0.711854, 0.511664, 0.481107,
		18.455742, 18.393373, 22.642353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306128, 17.589598, 22.379803>,  <18.954041, 18.035208, 22.305580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306128, 17.589598, 22.379803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.234354, 17.982716, 22.397303>,  <18.191290, 18.218586, 22.407803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.234354, 17.982716, 22.397303>,  <18.306128, 17.589598, 22.379803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234354, 17.982716, 22.397303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785267, -0.116297, -0.608138,
		-0.592588, -0.143475, 0.792625,
		-0.179433, 0.982797, 0.043750,
		18.180525, 18.277555, 22.410427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622990, 17.516035, 22.314058>,  <18.306128, 17.589598, 22.379803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622990, 17.516035, 22.314058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.675465, 17.910973, 22.278418>,  <17.706949, 18.147936, 22.257032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.675465, 17.910973, 22.278418>,  <17.622990, 17.516035, 22.314058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675465, 17.910973, 22.278418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799817, 0.052308, -0.597960,
		-0.585733, 0.149709, 0.796558,
		0.131186, 0.987345, -0.089101,
		17.714821, 18.207176, 22.251688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958784, 17.782452, 22.317549>,  <17.622990, 17.516035, 22.314058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958784, 17.782452, 22.317549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.174702, 18.070206, 22.142685>,  <17.304253, 18.242859, 22.037767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.174702, 18.070206, 22.142685>,  <16.958784, 17.782452, 22.317549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174702, 18.070206, 22.142685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603424, -0.031422, -0.796801,
		-0.586944, 0.693899, 0.417134,
		0.539792, 0.719386, -0.437158,
		17.336639, 18.286022, 22.011538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.567331, 18.314501, 22.303942>,  <16.958784, 17.782452, 22.317549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.567331, 18.314501, 22.303942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.836903, 18.362547, 22.012356>,  <16.998646, 18.391375, 21.837404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.836903, 18.362547, 22.012356>,  <16.567331, 18.314501, 22.303942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836903, 18.362547, 22.012356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722643, -0.098027, -0.684236,
		-0.153645, 0.987908, 0.020737,
		0.673929, 0.120115, -0.728966,
		17.039082, 18.398581, 21.793667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305973, 18.917933, 21.952477>,  <16.567331, 18.314501, 22.303942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305973, 18.917933, 21.952477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.568460, 18.759645, 21.695484>,  <16.725954, 18.664673, 21.541288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.568460, 18.759645, 21.695484>,  <16.305973, 18.917933, 21.952477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568460, 18.759645, 21.695484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643170, 0.151928, -0.750500,
		0.394598, 0.905718, -0.154816,
		0.656220, -0.395719, -0.642481,
		16.765327, 18.640930, 21.502741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213688, 19.288696, 21.350691>,  <16.305973, 18.917933, 21.952477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213688, 19.288696, 21.350691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.381378, 18.946295, 21.229689>,  <16.481993, 18.740854, 21.157087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.381378, 18.946295, 21.229689>,  <16.213688, 19.288696, 21.350691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381378, 18.946295, 21.229689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605221, -0.015138, -0.795914,
		0.676725, 0.516749, -0.524417,
		0.419226, -0.856003, -0.302503,
		16.507147, 18.689493, 21.138937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496349, 19.472757, 20.730684>,  <16.213688, 19.288696, 21.350691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496349, 19.472757, 20.730684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.465612, 19.074444, 20.710640>,  <16.447170, 18.835455, 20.698614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.465612, 19.074444, 20.710640>,  <16.496349, 19.472757, 20.730684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465612, 19.074444, 20.710640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389990, 0.076273, -0.917655,
		0.917607, -0.050972, -0.394207,
		-0.076843, -0.995783, -0.050110,
		16.442560, 18.775709, 20.695606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.045269, 19.997128, 20.446306>,  <16.496349, 19.472757, 20.730684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.045269, 19.997128, 20.446306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.727854, 20.221752, 20.352545>,  <16.537405, 20.356527, 20.296288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.727854, 20.221752, 20.352545>,  <17.045269, 19.997128, 20.446306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727854, 20.221752, 20.352545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011122, 0.371754, 0.928265,
		0.608417, 0.739222, -0.288756,
		-0.793540, 0.561560, -0.234403,
		16.489792, 20.390221, 20.282225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238106, 20.615021, 20.522713>,  <17.045269, 19.997128, 20.446306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238106, 20.615021, 20.522713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.840965, 20.649052, 20.556196>,  <16.602680, 20.669470, 20.576286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.840965, 20.649052, 20.556196>,  <17.238106, 20.615021, 20.522713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840965, 20.649052, 20.556196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114247, 0.474505, 0.872807,
		0.034539, 0.876131, -0.480834,
		-0.992852, 0.085080, 0.083707,
		16.543110, 20.674576, 20.581308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175430, 21.290115, 20.653858>,  <17.238106, 20.615021, 20.522713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175430, 21.290115, 20.653858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.838076, 21.113554, 20.776402>,  <16.635662, 21.007616, 20.849928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.838076, 21.113554, 20.776402>,  <17.175430, 21.290115, 20.653858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838076, 21.113554, 20.776402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021805, 0.541594, 0.840358,
		-0.536861, 0.715428, -0.447149,
		-0.843389, -0.441405, 0.306360,
		16.585058, 20.981133, 20.868309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.658079, 21.812534, 20.887318>,  <17.175430, 21.290115, 20.653858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.658079, 21.812534, 20.887318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.576366, 21.468781, 21.074818>,  <16.527338, 21.262527, 21.187317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.576366, 21.468781, 21.074818>,  <16.658079, 21.812534, 20.887318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.576366, 21.468781, 21.074818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211323, 0.428842, 0.878315,
		-0.955830, 0.278483, 0.094003,
		-0.204283, -0.859385, 0.468750,
		16.515081, 21.210964, 21.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318447, 22.035023, 21.463989>,  <16.658079, 21.812534, 20.887318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318447, 22.035023, 21.463989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.435104, 21.661146, 21.545277>,  <16.505098, 21.436821, 21.594049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.435104, 21.661146, 21.545277>,  <16.318447, 22.035023, 21.463989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435104, 21.661146, 21.545277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365569, 0.305241, 0.879311,
		-0.883914, -0.182154, 0.430715,
		0.291642, -0.934691, 0.203217,
		16.522596, 21.380739, 21.606241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994802, 21.844032, 22.091896>,  <16.318447, 22.035023, 21.463989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994802, 21.844032, 22.091896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.333248, 21.641512, 22.025261>,  <16.536316, 21.520000, 21.985281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.333248, 21.641512, 22.025261>,  <15.994802, 21.844032, 22.091896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333248, 21.641512, 22.025261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368123, 0.329077, 0.869594,
		-0.385457, -0.797099, 0.464817,
		0.846114, -0.506301, -0.166586,
		16.587082, 21.489622, 21.975285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162634, 21.672026, 22.802370>,  <15.994802, 21.844032, 22.091896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162634, 21.672026, 22.802370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500343, 21.573954, 22.611753>,  <16.702969, 21.515110, 22.497383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500343, 21.573954, 22.611753>,  <16.162634, 21.672026, 22.802370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500343, 21.573954, 22.611753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535802, 0.404406, 0.741197,
		0.010990, -0.881103, 0.472797,
		0.844272, -0.245180, -0.476541,
		16.753626, 21.500401, 22.468792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609282, 21.589626, 23.311045>,  <16.162634, 21.672026, 22.802370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609282, 21.589626, 23.311045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.868696, 21.616247, 23.007738>,  <17.024345, 21.632219, 22.825754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.868696, 21.616247, 23.007738>,  <16.609282, 21.589626, 23.311045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.868696, 21.616247, 23.007738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690994, 0.366344, 0.623153,
		0.319259, -0.928096, 0.191601,
		0.648538, 0.066552, -0.758267,
		17.063257, 21.636213, 22.780258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184357, 21.112886, 23.482243>,  <16.609282, 21.589626, 23.311045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184357, 21.112886, 23.482243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.308741, 21.394135, 23.226452>,  <17.383371, 21.562883, 23.072977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.308741, 21.394135, 23.226452>,  <17.184357, 21.112886, 23.482243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308741, 21.394135, 23.226452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629375, 0.351832, 0.692893,
		0.712174, -0.617931, -0.333120,
		0.310958, 0.703119, -0.639476,
		17.402027, 21.605070, 23.034609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827543, 21.114019, 23.651882>,  <17.184357, 21.112886, 23.482243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827543, 21.114019, 23.651882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.757025, 21.454597, 23.454311>,  <17.714714, 21.658945, 23.335770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.757025, 21.454597, 23.454311>,  <17.827543, 21.114019, 23.651882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757025, 21.454597, 23.454311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682648, 0.467265, 0.561832,
		0.709163, -0.238129, -0.663613,
		-0.176294, 0.851445, -0.493925,
		17.704136, 21.710032, 23.306133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456486, 21.274549, 23.338070>,  <17.827543, 21.114019, 23.651882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456486, 21.274549, 23.338070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.249670, 21.613403, 23.387114>,  <18.125580, 21.816715, 23.416540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.249670, 21.613403, 23.387114>,  <18.456486, 21.274549, 23.338070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249670, 21.613403, 23.387114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678336, 0.318158, 0.662296,
		0.522044, 0.425606, -0.739142,
		-0.517040, 0.847134, 0.122611,
		18.094559, 21.867544, 23.423897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.957212, 21.814699, 23.428963>,  <18.456486, 21.274549, 23.338070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.957212, 21.814699, 23.428963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.633705, 22.000406, 23.573380>,  <18.439602, 22.111830, 23.660030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.633705, 22.000406, 23.573380>,  <18.957212, 21.814699, 23.428963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.633705, 22.000406, 23.573380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520754, 0.279997, 0.806484,
		0.273334, 0.840272, -0.468221,
		-0.808767, 0.464268, 0.361042,
		18.391075, 22.139687, 23.681692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.118010, 22.494894, 23.584909>,  <18.957212, 21.814699, 23.428963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.118010, 22.494894, 23.584909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.806450, 22.427202, 23.826464>,  <18.619514, 22.386587, 23.971397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.806450, 22.427202, 23.826464>,  <19.118010, 22.494894, 23.584909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806450, 22.427202, 23.826464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504360, 0.403273, 0.763539,
		-0.372745, 0.899295, -0.228756,
		-0.778898, -0.169229, 0.603887,
		18.572781, 22.376434, 24.007629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121487, 23.018988, 24.121010>,  <19.118010, 22.494894, 23.584909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121487, 23.018988, 24.121010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.875177, 22.741465, 24.270386>,  <18.727392, 22.574951, 24.360012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.875177, 22.741465, 24.270386>,  <19.121487, 23.018988, 24.121010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.875177, 22.741465, 24.270386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335796, 0.197675, 0.920959,
		-0.712787, 0.692501, 0.111255,
		-0.615773, -0.693806, 0.373440,
		18.690445, 22.533323, 24.382418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.305078, 17.858402, 28.932138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.679931, 17.791391, 28.809687>,  <13.904842, 17.751184, 28.736216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.679931, 17.791391, 28.809687>,  <13.305078, 17.858402, 28.932138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.679931, 17.791391, 28.809687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343002, -0.280624, -0.896437,
		0.064270, 0.945084, -0.320445,
		0.937133, -0.167527, -0.306130,
		13.961071, 17.741133, 28.717848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304641, 18.173494, 28.332819>,  <13.305078, 17.858402, 28.932138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304641, 18.173494, 28.332819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.611066, 17.917719, 28.306698>,  <13.794921, 17.764254, 28.291025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.611066, 17.917719, 28.306698>,  <13.304641, 18.173494, 28.332819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.611066, 17.917719, 28.306698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212428, -0.155976, -0.964648,
		0.606647, 0.752854, -0.255323,
		0.766064, -0.639439, -0.065305,
		13.840885, 17.725887, 28.287106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.668970, 18.354107, 27.761429>,  <13.304641, 18.173494, 28.332819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.668970, 18.354107, 27.761429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.737769, 17.964169, 27.818134>,  <13.779048, 17.730206, 27.852158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.737769, 17.964169, 27.818134>,  <13.668970, 18.354107, 27.761429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737769, 17.964169, 27.818134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246660, -0.181940, -0.951870,
		0.953717, 0.128751, -0.271748,
		0.171996, -0.974844, 0.141762,
		13.789368, 17.671715, 27.860662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.814879, 18.093882, 27.125994>,  <13.668970, 18.354107, 27.761429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.814879, 18.093882, 27.125994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.754276, 17.738775, 27.299852>,  <13.717915, 17.525711, 27.404167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.754276, 17.738775, 27.299852>,  <13.814879, 18.093882, 27.125994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.754276, 17.738775, 27.299852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411793, -0.343060, -0.844237,
		0.898594, -0.306893, -0.313599,
		-0.151508, -0.887765, 0.434648,
		13.708824, 17.472446, 27.430246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.033093, 17.643196, 26.621206>,  <13.814879, 18.093882, 27.125994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.033093, 17.643196, 26.621206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.766626, 17.463125, 26.859051>,  <13.606746, 17.355083, 27.001757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.766626, 17.463125, 26.859051>,  <14.033093, 17.643196, 26.621206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.766626, 17.463125, 26.859051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461913, -0.376904, -0.802857,
		0.585539, -0.809496, 0.043138,
		-0.666168, -0.450178, 0.594609,
		13.566776, 17.328072, 27.037434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846341, 17.004679, 26.244968>,  <14.033093, 17.643196, 26.621206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846341, 17.004679, 26.244968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.551682, 17.061138, 26.509521>,  <13.374887, 17.095015, 26.668253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.551682, 17.061138, 26.509521>,  <13.846341, 17.004679, 26.244968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551682, 17.061138, 26.509521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666269, -0.319104, -0.673987,
		0.115918, -0.937150, 0.329110,
		-0.736647, 0.141149, 0.661383,
		13.330688, 17.103483, 26.707937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531914, 16.412119, 26.275425>,  <13.846341, 17.004679, 26.244968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531914, 16.412119, 26.275425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.239567, 16.644798, 26.418232>,  <13.064158, 16.784405, 26.503916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.239567, 16.644798, 26.418232>,  <13.531914, 16.412119, 26.275425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.239567, 16.644798, 26.418232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631596, -0.378169, -0.676812,
		-0.258686, -0.720151, 0.643788,
		-0.730868, 0.581696, 0.357017,
		13.020307, 16.819307, 26.525337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.016953, 16.004372, 26.323792>,  <13.531914, 16.412119, 26.275425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.016953, 16.004372, 26.323792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.855631, 16.368635, 26.287914>,  <12.758838, 16.587193, 26.266388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.855631, 16.368635, 26.287914>,  <13.016953, 16.004372, 26.323792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.855631, 16.368635, 26.287914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594334, -0.335214, -0.731026,
		-0.695781, -0.241521, 0.676429,
		-0.403306, 0.910659, -0.089691,
		12.734639, 16.641832, 26.261007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.220347, 15.943120, 26.323654>,  <13.016953, 16.004372, 26.323792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.220347, 15.943120, 26.323654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.260952, 16.316755, 26.186729>,  <12.285315, 16.540936, 26.104574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.260952, 16.316755, 26.186729>,  <12.220347, 15.943120, 26.323654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.260952, 16.316755, 26.186729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728233, -0.164653, -0.665257,
		-0.677771, 0.316812, 0.663519,
		0.101511, 0.934088, -0.342310,
		12.291406, 16.596981, 26.084036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.507641, 16.232895, 26.189390>,  <12.220347, 15.943120, 26.323654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.507641, 16.232895, 26.189390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.761118, 16.424847, 25.946690>,  <11.913204, 16.540018, 25.801069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.761118, 16.424847, 25.946690>,  <11.507641, 16.232895, 26.189390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761118, 16.424847, 25.946690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690745, -0.002126, -0.723095,
		-0.348288, 0.877332, 0.330126,
		0.633693, 0.479879, -0.606753,
		11.951226, 16.568810, 25.764664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085551, 16.668037, 25.819883>,  <11.507641, 16.232895, 26.189390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085551, 16.668037, 25.819883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.418503, 16.668774, 25.598202>,  <11.618274, 16.669216, 25.465193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.418503, 16.668774, 25.598202>,  <11.085551, 16.668037, 25.819883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.418503, 16.668774, 25.598202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542762, 0.204878, -0.814515,
		0.112044, 0.978786, 0.171536,
		0.832379, 0.001842, -0.554203,
		11.668217, 16.669327, 25.431940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.972266, 17.228951, 25.265011>,  <11.085551, 16.668037, 25.819883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.972266, 17.228951, 25.265011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.269714, 16.993805, 25.137608>,  <11.448183, 16.852718, 25.061165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.269714, 16.993805, 25.137608>,  <10.972266, 17.228951, 25.265011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.269714, 16.993805, 25.137608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361358, 0.047438, -0.931220,
		0.562538, 0.807570, -0.177152,
		0.743621, -0.587862, -0.318508,
		11.492801, 16.817446, 25.042055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.158835, 17.481863, 24.599298>,  <10.972266, 17.228951, 25.265011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.158835, 17.481863, 24.599298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.315812, 17.114214, 24.613150>,  <11.409998, 16.893623, 24.621460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.315812, 17.114214, 24.613150>,  <11.158835, 17.481863, 24.599298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.315812, 17.114214, 24.613150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247998, -0.141991, -0.958299,
		0.885712, 0.367490, -0.283664,
		0.392443, -0.919124, 0.034627,
		11.433545, 16.838476, 24.623537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.517515, 17.422213, 23.999720>,  <11.158835, 17.481863, 24.599298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.517515, 17.422213, 23.999720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.480972, 17.038103, 24.105190>,  <11.459046, 16.807636, 24.168472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.480972, 17.038103, 24.105190>,  <11.517515, 17.422213, 23.999720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.480972, 17.038103, 24.105190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147652, -0.248796, -0.957235,
		0.984811, -0.126382, -0.119057,
		-0.091357, -0.960275, 0.263677,
		11.453566, 16.750021, 24.184294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.995445, 17.869732, 23.603359>,  <11.517515, 17.422213, 23.999720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.995445, 17.869732, 23.603359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.831529, 18.193386, 23.434896>,  <11.733178, 18.387579, 23.333818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.831529, 18.193386, 23.434896>,  <11.995445, 17.869732, 23.603359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.831529, 18.193386, 23.434896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303422, 0.556324, 0.773588,
		0.860236, 0.189222, -0.473486,
		-0.409792, 0.809134, -0.421156,
		11.708591, 18.436127, 23.308550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453293, 18.382095, 23.797052>,  <11.995445, 17.869732, 23.603359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453293, 18.382095, 23.797052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.116568, 18.577740, 23.705730>,  <11.914533, 18.695126, 23.650938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.116568, 18.577740, 23.705730>,  <12.453293, 18.382095, 23.797052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.116568, 18.577740, 23.705730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118086, 0.579600, 0.806300,
		0.526695, 0.651794, -0.545671,
		-0.841812, 0.489110, -0.228305,
		11.864024, 18.724472, 23.637239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682127, 19.101080, 23.629377>,  <12.453293, 18.382095, 23.797052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682127, 19.101080, 23.629377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.294559, 19.098942, 23.728302>,  <12.062017, 19.097658, 23.787657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.294559, 19.098942, 23.728302>,  <12.682127, 19.101080, 23.629377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.294559, 19.098942, 23.728302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219361, 0.443520, 0.869006,
		-0.114331, 0.896249, -0.428564,
		-0.968922, -0.005345, 0.247310,
		12.003882, 19.097338, 23.802494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.573773, 19.722380, 23.899660>,  <12.682127, 19.101080, 23.629377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.573773, 19.722380, 23.899660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.269817, 19.511593, 24.051910>,  <12.087444, 19.385120, 24.143261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.269817, 19.511593, 24.051910>,  <12.573773, 19.722380, 23.899660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269817, 19.511593, 24.051910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184232, 0.386938, 0.903514,
		-0.623399, 0.756694, -0.196946,
		-0.759890, -0.526966, 0.380624,
		12.041850, 19.353502, 24.166098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133651, 20.171204, 24.234440>,  <12.573773, 19.722380, 23.899660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133651, 20.171204, 24.234440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.078285, 19.814119, 24.405979>,  <12.045066, 19.599869, 24.508902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.078285, 19.814119, 24.405979>,  <12.133651, 20.171204, 24.234440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.078285, 19.814119, 24.405979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113586, 0.415848, 0.902313,
		-0.983839, 0.173603, 0.043841,
		-0.138413, -0.892711, 0.428847,
		12.036761, 19.546307, 24.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.595496, 20.281931, 24.719919>,  <12.133651, 20.171204, 24.234440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.595496, 20.281931, 24.719919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.765314, 19.935030, 24.823948>,  <11.867205, 19.726891, 24.886366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.765314, 19.935030, 24.823948>,  <11.595496, 20.281931, 24.719919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765314, 19.935030, 24.823948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368319, 0.427828, 0.825412,
		-0.827106, -0.254634, 0.501057,
		0.424544, -0.867252, 0.260072,
		11.892677, 19.674854, 24.901970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435356, 20.174845, 25.475037>,  <11.595496, 20.281931, 24.719919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435356, 20.174845, 25.475037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759812, 19.952534, 25.402195>,  <11.954486, 19.819147, 25.358490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759812, 19.952534, 25.402195>,  <11.435356, 20.174845, 25.475037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759812, 19.952534, 25.402195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429629, 0.354975, 0.830308,
		-0.396823, -0.751735, 0.526713,
		0.811141, -0.555777, -0.182105,
		12.003155, 19.785801, 25.347563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.562184, 19.862295, 26.072134>,  <11.435356, 20.174845, 25.475037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.562184, 19.862295, 26.072134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.912000, 19.840046, 25.879433>,  <12.121889, 19.826696, 25.763811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.912000, 19.840046, 25.879433>,  <11.562184, 19.862295, 26.072134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.912000, 19.840046, 25.879433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465226, 0.376692, 0.801042,
		0.136916, -0.924667, 0.355309,
		0.874539, -0.055623, -0.481754,
		12.174361, 19.823359, 25.734907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.951428, 19.358744, 26.561613>,  <11.562184, 19.862295, 26.072134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.951428, 19.358744, 26.561613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.182573, 19.584177, 26.325493>,  <12.321260, 19.719437, 26.183821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.182573, 19.584177, 26.325493>,  <11.951428, 19.358744, 26.561613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182573, 19.584177, 26.325493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493548, 0.334726, 0.802726,
		0.649989, -0.755206, -0.084729,
		0.577862, 0.563581, -0.590298,
		12.355932, 19.753252, 26.148403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.566903, 19.366148, 26.920198>,  <11.951428, 19.358744, 26.561613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.566903, 19.366148, 26.920198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.607037, 19.658415, 26.650070>,  <12.631117, 19.833775, 26.487993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.607037, 19.658415, 26.650070>,  <12.566903, 19.366148, 26.920198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607037, 19.658415, 26.650070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624051, 0.482425, 0.614676,
		0.774915, -0.483107, -0.407570,
		0.100333, 0.730666, -0.675322,
		12.637136, 19.877615, 26.447474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.359962, 19.392881, 26.783922>,  <12.566903, 19.366148, 26.920198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.359962, 19.392881, 26.783922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.187611, 19.741917, 26.691891>,  <13.084200, 19.951338, 26.636671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.187611, 19.741917, 26.691891>,  <13.359962, 19.392881, 26.783922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187611, 19.741917, 26.691891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674903, 0.480847, 0.559726,
		0.599042, 0.085892, -0.796098,
		-0.430877, 0.872587, -0.230079,
		13.058348, 20.003693, 26.622868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.932654, 19.848209, 26.579981>,  <13.359962, 19.392881, 26.783922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.932654, 19.848209, 26.579981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.629407, 20.092670, 26.670975>,  <13.447458, 20.239347, 26.725571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.629407, 20.092670, 26.670975>,  <13.932654, 19.848209, 26.579981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.629407, 20.092670, 26.670975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623769, 0.577878, 0.526279,
		0.190177, 0.540881, -0.819317,
		-0.758119, 0.611151, 0.227486,
		13.401971, 20.276016, 26.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172058, 20.558399, 26.415571>,  <13.932654, 19.848209, 26.579981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172058, 20.558399, 26.415571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.886229, 20.588743, 26.693745>,  <13.714731, 20.606949, 26.860649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.886229, 20.588743, 26.693745>,  <14.172058, 20.558399, 26.415571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886229, 20.588743, 26.693745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626344, 0.512134, 0.587717,
		-0.311573, 0.855549, -0.413471,
		-0.714573, 0.075858, 0.695435,
		13.671857, 20.611500, 26.902376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288933, 21.161324, 26.750669>,  <14.172058, 20.558399, 26.415571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288933, 21.161324, 26.750669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.041007, 20.971083, 27.000353>,  <13.892252, 20.856939, 27.150162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.041007, 20.971083, 27.000353>,  <14.288933, 21.161324, 26.750669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.041007, 20.971083, 27.000353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507743, 0.363449, 0.781090,
		-0.598355, 0.801067, 0.016212,
		-0.619813, -0.475601, 0.624208,
		13.855063, 20.828402, 27.187614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322923, 21.996681, 26.654884>,  <14.288933, 21.161324, 26.750669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322923, 21.996681, 26.654884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.642937, 22.126408, 26.452988>,  <14.834945, 22.204243, 26.331850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.642937, 22.126408, 26.452988>,  <14.322923, 21.996681, 26.654884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642937, 22.126408, 26.452988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479035, -0.161203, -0.862867,
		-0.361208, 0.932112, 0.026391,
		0.800034, 0.324316, -0.504742,
		14.882947, 22.223703, 26.301565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111217, 22.521269, 26.139135>,  <14.322923, 21.996681, 26.654884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111217, 22.521269, 26.139135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.449157, 22.360519, 25.997868>,  <14.651920, 22.264071, 25.913107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.449157, 22.360519, 25.997868>,  <14.111217, 22.521269, 26.139135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.449157, 22.360519, 25.997868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393397, -0.019258, -0.919167,
		0.362586, 0.915493, -0.174366,
		0.844849, -0.401872, -0.353170,
		14.702612, 22.239958, 25.891916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215506, 22.891897, 25.491024>,  <14.111217, 22.521269, 26.139135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215506, 22.891897, 25.491024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.450863, 22.568686, 25.479174>,  <14.592077, 22.374758, 25.472063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.450863, 22.568686, 25.479174>,  <14.215506, 22.891897, 25.491024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450863, 22.568686, 25.479174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264584, -0.157783, -0.951367,
		0.764060, 0.567618, -0.306631,
		0.588394, -0.808031, -0.029627,
		14.627381, 22.326277, 25.470285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376873, 22.945166, 24.830652>,  <14.215506, 22.891897, 25.491024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376873, 22.945166, 24.830652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.478721, 22.567333, 24.913538>,  <14.539829, 22.340633, 24.963268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.478721, 22.567333, 24.913538>,  <14.376873, 22.945166, 24.830652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478721, 22.567333, 24.913538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123603, -0.244306, -0.961788,
		0.959110, 0.219277, -0.178957,
		0.254618, -0.944580, 0.207214,
		14.555106, 22.283958, 24.975702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941380, 22.649124, 24.319260>,  <14.376873, 22.945166, 24.830652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.941380, 22.649124, 24.319260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.768998, 22.328299, 24.484657>,  <14.665569, 22.135803, 24.583895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.768998, 22.328299, 24.484657>,  <14.941380, 22.649124, 24.319260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768998, 22.328299, 24.484657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084521, -0.420334, -0.903424,
		0.898407, -0.424283, 0.113353,
		-0.430954, -0.802062, 0.413492,
		14.639712, 22.087681, 24.608706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.321542, 22.045891, 24.062475>,  <14.941380, 22.649124, 24.319260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.321542, 22.045891, 24.062475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.967646, 21.917259, 24.197424>,  <14.755308, 21.840080, 24.278393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.967646, 21.917259, 24.197424>,  <15.321542, 22.045891, 24.062475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.967646, 21.917259, 24.197424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140526, -0.506115, -0.850941,
		0.444394, -0.800272, 0.402590,
		-0.884740, -0.321579, 0.337373,
		14.702224, 21.820786, 24.298635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368868, 21.322697, 23.929264>,  <15.321542, 22.045891, 24.062475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368868, 21.322697, 23.929264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976151, 21.379488, 23.979746>,  <14.740521, 21.413563, 24.010035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976151, 21.379488, 23.979746>,  <15.368868, 21.322697, 23.929264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976151, 21.379488, 23.979746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184161, -0.548495, -0.815621,
		-0.046579, -0.824012, 0.564655,
		-0.981792, 0.141979, 0.126203,
		14.681614, 21.422081, 24.017607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.046509, 20.651186, 23.930531>,  <15.368868, 21.322697, 23.929264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.046509, 20.651186, 23.930531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.756978, 20.903469, 23.818617>,  <14.583260, 21.054840, 23.751469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.756978, 20.903469, 23.818617>,  <15.046509, 20.651186, 23.930531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756978, 20.903469, 23.818617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199145, -0.579207, -0.790481,
		-0.660618, -0.516453, 0.544849,
		-0.723827, 0.630710, -0.279785,
		14.539829, 21.092682, 23.734682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.418832, 20.196257, 23.756275>,  <15.046509, 20.651186, 23.930531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.418832, 20.196257, 23.756275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.342033, 20.558804, 23.605736>,  <14.295954, 20.776331, 23.515411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.342033, 20.558804, 23.605736>,  <14.418832, 20.196257, 23.756275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342033, 20.558804, 23.605736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398496, -0.422448, -0.814088,
		-0.896849, -0.006328, 0.442292,
		-0.191997, 0.906365, -0.376350,
		14.284434, 20.830713, 23.492830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752090, 20.197405, 23.446653>,  <14.418832, 20.196257, 23.756275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752090, 20.197405, 23.446653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.929472, 20.499413, 23.253450>,  <14.035901, 20.680616, 23.137529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.929472, 20.499413, 23.253450>,  <13.752090, 20.197405, 23.446653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929472, 20.499413, 23.253450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352209, -0.348747, -0.868519,
		-0.824194, 0.555269, 0.111270,
		0.443456, 0.755018, -0.483006,
		14.062509, 20.725918, 23.108549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.288445, 20.437281, 22.941629>,  <13.752090, 20.197405, 23.446653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.288445, 20.437281, 22.941629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.633589, 20.581692, 22.800133>,  <13.840675, 20.668339, 22.715235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.633589, 20.581692, 22.800133>,  <13.288445, 20.437281, 22.941629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633589, 20.581692, 22.800133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357125, -0.059798, -0.932140,
		-0.357680, 0.930637, 0.077334,
		0.862859, 0.361026, -0.353743,
		13.892447, 20.689999, 22.694010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117060, 20.894627, 22.467884>,  <13.288445, 20.437281, 22.941629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117060, 20.894627, 22.467884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.482794, 20.760687, 22.376785>,  <13.702234, 20.680323, 22.322126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.482794, 20.760687, 22.376785>,  <13.117060, 20.894627, 22.467884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482794, 20.760687, 22.376785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295224, -0.166215, -0.940859,
		0.277190, 0.927496, -0.250831,
		0.914335, -0.334848, -0.227746,
		13.757094, 20.660233, 22.308462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231945, 21.230383, 21.900921>,  <13.117060, 20.894627, 22.467884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231945, 21.230383, 21.900921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.536095, 20.971992, 21.873947>,  <13.718584, 20.816957, 21.857763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.536095, 20.971992, 21.873947>,  <13.231945, 21.230383, 21.900921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.536095, 20.971992, 21.873947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201442, -0.135854, -0.970033,
		0.617457, 0.751172, -0.233426,
		0.760374, -0.645976, -0.067433,
		13.764207, 20.778200, 21.853718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564832, 21.402534, 21.283506>,  <13.231945, 21.230383, 21.900921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564832, 21.402534, 21.283506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.666224, 21.021692, 21.351908>,  <13.727058, 20.793186, 21.392948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.666224, 21.021692, 21.351908>,  <13.564832, 21.402534, 21.283506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.666224, 21.021692, 21.351908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153936, -0.214225, -0.964578,
		0.955014, 0.218178, -0.200865,
		0.253480, -0.952106, 0.171002,
		13.742268, 20.736061, 21.403208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.368971, 9.229792, 15.467740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.073395, 9.173184, 15.204244>,  <13.896049, 9.139220, 15.046145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.073395, 9.173184, 15.204244>,  <14.368971, 9.229792, 15.467740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073395, 9.173184, 15.204244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662124, 0.333523, 0.671084,
		0.124735, 0.932059, -0.340156,
		-0.738940, -0.141518, -0.658741,
		13.851713, 9.130729, 15.006621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001918, 9.787027, 15.268420>,  <14.368971, 9.229792, 15.467740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001918, 9.787027, 15.268420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.723987, 9.501949, 15.229890>,  <13.557228, 9.330902, 15.206772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.723987, 9.501949, 15.229890>,  <14.001918, 9.787027, 15.268420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.723987, 9.501949, 15.229890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582581, 0.479252, 0.656443,
		-0.421679, 0.512233, -0.748200,
		-0.694828, -0.712696, -0.096327,
		13.515538, 9.288140, 15.200992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.241911, 10.143192, 15.348433>,  <14.001918, 9.787027, 15.268420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.241911, 10.143192, 15.348433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.180801, 9.756241, 15.429266>,  <13.144135, 9.524070, 15.477766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.180801, 9.756241, 15.429266>,  <13.241911, 10.143192, 15.348433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.180801, 9.756241, 15.429266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719908, 0.249026, 0.647856,
		-0.677047, -0.046505, -0.734469,
		-0.152773, -0.967380, 0.202082,
		13.134970, 9.466027, 15.489890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.460835, 9.864468, 15.243093>,  <13.241911, 10.143192, 15.348433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.460835, 9.864468, 15.243093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.673949, 9.690901, 15.533708>,  <12.801818, 9.586761, 15.708076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.673949, 9.690901, 15.533708>,  <12.460835, 9.864468, 15.243093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.673949, 9.690901, 15.533708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809351, -0.010526, 0.587231,
		-0.247163, -0.900891, -0.356800,
		0.532787, -0.433918, 0.726535,
		12.833785, 9.560725, 15.751668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.014479, 9.262966, 15.541893>,  <12.460835, 9.864468, 15.243093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.014479, 9.262966, 15.541893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.295069, 9.424052, 15.777095>,  <12.463423, 9.520704, 15.918217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.295069, 9.424052, 15.777095>,  <12.014479, 9.262966, 15.541893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.295069, 9.424052, 15.777095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642512, 0.000330, 0.766275,
		0.308399, -0.915324, 0.258982,
		0.701476, 0.402718, 0.588005,
		12.505511, 9.544868, 15.953497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.403490, 9.070521, 15.090360>,  <12.014479, 9.262966, 15.541893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.403490, 9.070521, 15.090360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.293834, 9.212346, 15.447936>,  <11.228040, 9.297441, 15.662482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.293834, 9.212346, 15.447936>,  <11.403490, 9.070521, 15.090360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.293834, 9.212346, 15.447936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271591, 0.863171, -0.425645,
		-0.922543, -0.359474, -0.140335,
		-0.274141, 0.354562, 0.893942,
		11.211591, 9.318714, 15.716119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.874658, 9.000857, 14.539716>,  <11.403490, 9.070521, 15.090360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.874658, 9.000857, 14.539716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.062886, 8.984167, 14.187165>,  <12.175823, 8.974153, 13.975636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.062886, 8.984167, 14.187165>,  <11.874658, 9.000857, 14.539716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062886, 8.984167, 14.187165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837541, -0.335435, -0.431287,
		-0.277648, 0.941138, -0.192793,
		0.470571, -0.041726, -0.881375,
		12.204058, 8.971649, 13.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.437755, 9.439770, 14.129488>,  <11.874658, 9.000857, 14.539716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.437755, 9.439770, 14.129488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.609970, 9.132895, 13.939303>,  <11.713300, 8.948771, 13.825192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.609970, 9.132895, 13.939303>,  <11.437755, 9.439770, 14.129488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.609970, 9.132895, 13.939303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894030, -0.290191, -0.341319,
		0.123880, 0.572029, -0.810825,
		0.430538, -0.767184, -0.475462,
		11.739132, 8.902740, 13.796664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.168033, 9.362428, 13.371071>,  <11.437755, 9.439770, 14.129488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.168033, 9.362428, 13.371071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.301724, 9.017298, 13.522768>,  <11.381939, 8.810220, 13.613787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.301724, 9.017298, 13.522768>,  <11.168033, 9.362428, 13.371071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.301724, 9.017298, 13.522768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843610, -0.453297, -0.287827,
		0.420254, -0.223734, -0.879392,
		0.334229, -0.862824, 0.379244,
		11.401993, 8.758451, 13.636541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.346731, 8.919821, 12.880041>,  <11.168033, 9.362428, 13.371071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.346731, 8.919821, 12.880041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.246330, 8.691287, 13.192598>,  <11.186090, 8.554167, 13.380133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.246330, 8.691287, 13.192598>,  <11.346731, 8.919821, 12.880041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.246330, 8.691287, 13.192598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763614, -0.379225, -0.522572,
		0.594887, -0.727850, -0.341092,
		-0.251003, -0.571334, 0.781393,
		11.171029, 8.519887, 13.427016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.891894, 8.232791, 12.926787>,  <11.346731, 8.919821, 12.880041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.891894, 8.232791, 12.926787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.724535, 7.872753, 12.878173>,  <10.624120, 7.656730, 12.849004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.724535, 7.872753, 12.878173>,  <10.891894, 8.232791, 12.926787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724535, 7.872753, 12.878173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902369, 0.427165, -0.057102,
		0.103313, 0.085780, -0.990943,
		-0.418398, -0.900095, -0.121537,
		10.599015, 7.602725, 12.841712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.527081, 8.244711, 12.336823>,  <10.891894, 8.232791, 12.926787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.527081, 8.244711, 12.336823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.362677, 7.993235, 12.600889>,  <10.264034, 7.842349, 12.759329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.362677, 7.993235, 12.600889>,  <10.527081, 8.244711, 12.336823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.362677, 7.993235, 12.600889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839226, 0.543762, -0.004655,
		-0.356046, -0.555941, -0.751106,
		-0.411011, -0.628691, 0.660166,
		10.239373, 7.804627, 12.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.969736, 8.120676, 11.989048>,  <10.527081, 8.244711, 12.336823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.969736, 8.120676, 11.989048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.852836, 7.992213, 12.349370>,  <9.782696, 7.915136, 12.565563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.852836, 7.992213, 12.349370>,  <9.969736, 8.120676, 11.989048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.852836, 7.992213, 12.349370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873124, 0.473907, -0.114312,
		-0.390185, -0.819922, -0.418908,
		-0.292251, -0.321156, 0.900804,
		9.765161, 7.895866, 12.619612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.257605, 7.995715, 11.959589>,  <9.969736, 8.120676, 11.989048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.257605, 7.995715, 11.959589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.302788, 7.998002, 12.357022>,  <9.329898, 7.999373, 12.595482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.302788, 7.998002, 12.357022>,  <9.257605, 7.995715, 11.959589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.302788, 7.998002, 12.357022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919925, 0.378485, 0.102405,
		-0.375471, -0.925590, 0.048011,
		0.112957, 0.005716, 0.993584,
		9.336675, 7.999717, 12.655097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.650105, 7.798971, 12.242511>,  <9.257605, 7.995715, 11.959589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.650105, 7.798971, 12.242511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.830159, 8.003806, 12.535126>,  <8.938191, 8.126707, 12.710694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.830159, 8.003806, 12.535126>,  <8.650105, 7.798971, 12.242511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.830159, 8.003806, 12.535126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827452, 0.547192, 0.126109,
		-0.335713, -0.662077, 0.670038,
		0.450133, 0.512088, 0.731537,
		8.965199, 8.157433, 12.754586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.120779, 7.889305, 12.781342>,  <8.650105, 7.798971, 12.242511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.120779, 7.889305, 12.781342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399699, 8.163801, 12.864140>,  <8.567051, 8.328499, 12.913818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399699, 8.163801, 12.864140>,  <8.120779, 7.889305, 12.781342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399699, 8.163801, 12.864140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716411, 0.657988, 0.231966,
		0.022984, -0.310044, 0.950444,
		0.697300, 0.686240, 0.206995,
		8.608890, 8.369673, 12.926238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.773925, 8.212795, 13.278584>,  <8.120779, 7.889305, 12.781342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.773925, 8.212795, 13.278584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.059776, 8.471265, 13.171427>,  <8.231287, 8.626347, 13.107133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.059776, 8.471265, 13.171427>,  <7.773925, 8.212795, 13.278584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.059776, 8.471265, 13.171427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556708, 0.757265, 0.341506,
		0.423536, -0.094913, 0.900893,
		0.714628, 0.646174, -0.267891,
		8.274165, 8.665117, 13.091060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.099963, 8.540581, 13.882724>,  <7.773925, 8.212795, 13.278584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.099963, 8.540581, 13.882724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.103731, 8.770724, 13.555585>,  <8.105992, 8.908811, 13.359302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.103731, 8.770724, 13.555585>,  <8.099963, 8.540581, 13.882724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.103731, 8.770724, 13.555585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313687, 0.778298, 0.543924,
		0.949480, 0.251424, 0.187814,
		0.009420, 0.575359, -0.817847,
		8.106557, 8.943332, 13.310231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.237693, 9.249385, 14.153689>,  <8.099963, 8.540581, 13.882724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.237693, 9.249385, 14.153689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.100223, 9.324506, 13.785642>,  <8.017740, 9.369578, 13.564814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.100223, 9.324506, 13.785642>,  <8.237693, 9.249385, 14.153689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.100223, 9.324506, 13.785642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382634, 0.866774, 0.319834,
		0.857600, 0.461987, -0.226029,
		-0.343675, 0.187803, -0.920118,
		7.997120, 9.380847, 13.509606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.307121, 9.922698, 14.042389>,  <8.237693, 9.249385, 14.153689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.307121, 9.922698, 14.042389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.056496, 9.852395, 13.738671>,  <7.906120, 9.810213, 13.556440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.056496, 9.852395, 13.738671>,  <8.307121, 9.922698, 14.042389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.056496, 9.852395, 13.738671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341969, 0.937447, 0.065196,
		0.700339, 0.300504, -0.647474,
		-0.626564, -0.175757, -0.759294,
		7.868526, 9.799668, 13.510883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.336131, 10.583212, 13.720496>,  <8.307121, 9.922698, 14.042389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.336131, 10.583212, 13.720496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.998924, 10.422481, 13.577471>,  <7.796599, 10.326042, 13.491655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.998924, 10.422481, 13.577471>,  <8.336131, 10.583212, 13.720496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.998924, 10.422481, 13.577471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337000, 0.912691, -0.231141,
		0.419225, -0.074357, -0.904832,
		-0.843019, -0.401829, -0.357564,
		7.746018, 10.301932, 13.470201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.175749, 10.856044, 13.049313>,  <8.336131, 10.583212, 13.720496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.175749, 10.856044, 13.049313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.823309, 10.721778, 13.182574>,  <7.611845, 10.641218, 13.262531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.823309, 10.721778, 13.182574>,  <8.175749, 10.856044, 13.049313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.823309, 10.721778, 13.182574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429870, 0.862115, -0.268270,
		-0.197168, -0.379586, -0.903902,
		-0.881100, -0.335666, 0.333154,
		7.558980, 10.621078, 13.282520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.674452, 11.192567, 12.666950>,  <8.175749, 10.856044, 13.049313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.674452, 11.192567, 12.666950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.481119, 11.039562, 12.981929>,  <7.365119, 10.947760, 13.170917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.481119, 11.039562, 12.981929>,  <7.674452, 11.192567, 12.666950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.481119, 11.039562, 12.981929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544551, 0.835659, 0.071686,
		-0.685458, -0.394157, -0.612199,
		-0.483334, -0.382511, 0.787448,
		7.336119, 10.924809, 13.218163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.977377, 11.242473, 12.496025>,  <7.674452, 11.192567, 12.666950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.977377, 11.242473, 12.496025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.978124, 11.203770, 12.894148>,  <6.978572, 11.180548, 13.133021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.978124, 11.203770, 12.894148>,  <6.977377, 11.242473, 12.496025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.978124, 11.203770, 12.894148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479667, 0.873246, 0.085792,
		-0.877449, -0.477576, -0.044781,
		0.001868, -0.096758, 0.995306,
		6.978684, 11.174742, 13.192739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.328967, 11.509053, 12.628178>,  <6.977377, 11.242473, 12.496025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.328967, 11.509053, 12.628178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.517237, 11.518785, 12.980967>,  <6.630198, 11.524623, 13.192639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.517237, 11.518785, 12.980967>,  <6.328967, 11.509053, 12.628178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.517237, 11.518785, 12.980967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368707, 0.913576, 0.171565,
		-0.801574, -0.405940, 0.438966,
		0.470674, 0.024328, 0.881972,
		6.658439, 11.526083, 13.245558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.888168, 11.893886, 13.091631>,  <6.328967, 11.509053, 12.628178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.888168, 11.893886, 13.091631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.246985, 11.930190, 13.264640>,  <6.462276, 11.951973, 13.368445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.246985, 11.930190, 13.264640>,  <5.888168, 11.893886, 13.091631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.246985, 11.930190, 13.264640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229234, 0.932292, 0.279793,
		-0.377843, -0.350136, 0.857111,
		0.897043, 0.090761, 0.432523,
		6.516098, 11.957418, 13.394397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.767509, 12.178205, 13.825484>,  <5.888168, 11.893886, 13.091631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.767509, 12.178205, 13.825484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.147647, 12.267684, 13.738949>,  <6.375731, 12.321371, 13.687028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.147647, 12.267684, 13.738949>,  <5.767509, 12.178205, 13.825484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.147647, 12.267684, 13.738949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121980, 0.907323, 0.402350,
		0.286293, -0.355983, 0.889557,
		0.950346, 0.223698, -0.216338,
		6.432751, 12.334793, 13.674047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.037498, 12.516357, 14.329370>,  <5.767509, 12.178205, 13.825484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.037498, 12.516357, 14.329370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.296741, 12.623045, 14.044044>,  <6.452286, 12.687057, 13.872848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.296741, 12.623045, 14.044044>,  <6.037498, 12.516357, 14.329370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.296741, 12.623045, 14.044044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064039, 0.914258, 0.400039,
		0.758853, -0.304947, 0.575456,
		0.648106, 0.266719, -0.713316,
		6.491172, 12.703061, 13.830049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.669213, 12.815162, 14.626122>,  <6.037498, 12.516357, 14.329370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.669213, 12.815162, 14.626122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.678000, 12.922170, 14.240801>,  <6.683273, 12.986375, 14.009608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.678000, 12.922170, 14.240801>,  <6.669213, 12.815162, 14.626122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.678000, 12.922170, 14.240801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270915, 0.925891, 0.263309,
		0.962353, -0.266757, -0.052136,
		0.021968, 0.267520, -0.963302,
		6.684591, 13.002426, 13.951810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.187101, 13.321736, 14.770505>,  <6.669213, 12.815162, 14.626122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.187101, 13.321736, 14.770505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.020251, 13.379189, 14.411533>,  <6.920141, 13.413661, 14.196151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.020251, 13.379189, 14.411533>,  <7.187101, 13.321736, 14.770505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.020251, 13.379189, 14.411533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510849, 0.853740, -0.100803,
		0.751692, -0.500497, -0.429491,
		-0.417125, 0.143632, -0.897428,
		6.895114, 13.422279, 14.142305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.693161, 13.532999, 14.271160>,  <7.187101, 13.321736, 14.770505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.693161, 13.532999, 14.271160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.354100, 13.660519, 14.101525>,  <7.150662, 13.737030, 13.999744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.354100, 13.660519, 14.101525>,  <7.693161, 13.532999, 14.271160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.354100, 13.660519, 14.101525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452889, 0.851152, -0.265389,
		0.276357, -0.417023, -0.865863,
		-0.847655, 0.318798, -0.424087,
		7.099803, 13.756158, 13.974299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.392119, 13.817827, 14.526454>,  <7.693161, 13.532999, 14.271160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.392119, 13.817827, 14.526454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.617181, 13.984718, 14.811927>,  <8.752218, 14.084853, 14.983211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.617181, 13.984718, 14.811927>,  <8.392119, 13.817827, 14.526454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.617181, 13.984718, 14.811927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818287, -0.403877, -0.409011,
		0.117589, 0.814128, -0.568655,
		0.562654, 0.417228, 0.713682,
		8.785977, 14.109886, 15.026031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.797341, 14.355145, 14.289686>,  <8.392119, 13.817827, 14.526454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.797341, 14.355145, 14.289686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.944442, 14.135223, 14.589680>,  <9.032702, 14.003271, 14.769676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.944442, 14.135223, 14.589680>,  <8.797341, 14.355145, 14.289686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.944442, 14.135223, 14.589680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764651, -0.280190, -0.580346,
		0.529214, 0.786900, 0.317367,
		0.367751, -0.549802, 0.749984,
		9.054768, 13.970283, 14.814675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.555099, 14.499091, 14.397261>,  <8.797341, 14.355145, 14.289686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.555099, 14.499091, 14.397261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.498119, 14.150261, 14.584532>,  <9.463931, 13.940963, 14.696895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.498119, 14.150261, 14.584532>,  <9.555099, 14.499091, 14.397261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.498119, 14.150261, 14.584532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844307, -0.353919, -0.402352,
		0.516579, 0.337971, 0.786716,
		-0.142451, -0.872076, 0.468179,
		9.455384, 13.888638, 14.724985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.129162, 14.387785, 14.863109>,  <9.555099, 14.499091, 14.397261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.129162, 14.387785, 14.863109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.962269, 14.032063, 14.788221>,  <9.862133, 13.818629, 14.743289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.962269, 14.032063, 14.788221>,  <10.129162, 14.387785, 14.863109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.962269, 14.032063, 14.788221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880238, -0.344211, -0.326649,
		0.226048, -0.301085, 0.926418,
		-0.417233, -0.889307, -0.187218,
		9.837099, 13.765270, 14.732056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.698417, 13.809673, 15.067379>,  <10.129162, 14.387785, 14.863109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.698417, 13.809673, 15.067379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.433425, 13.626031, 14.830620>,  <10.274430, 13.515845, 14.688564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.433425, 13.626031, 14.830620>,  <10.698417, 13.809673, 15.067379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433425, 13.626031, 14.830620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740609, -0.519938, -0.425633,
		-0.112340, -0.720338, 0.684465,
		-0.662479, -0.459105, -0.591899,
		10.234681, 13.488299, 14.653050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815849, 13.142777, 15.174871>,  <10.698417, 13.809673, 15.067379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815849, 13.142777, 15.174871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.652902, 13.181697, 14.811646>,  <10.555133, 13.205049, 14.593710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.652902, 13.181697, 14.811646>,  <10.815849, 13.142777, 15.174871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.652902, 13.181697, 14.811646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738020, -0.550602, -0.390081,
		-0.537936, -0.829078, 0.152492,
		-0.407370, 0.097297, -0.908066,
		10.530691, 13.210887, 14.539226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.692915, 12.449535, 14.983290>,  <10.815849, 13.142777, 15.174871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.692915, 12.449535, 14.983290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.669885, 12.661499, 14.644851>,  <10.656067, 12.788677, 14.441788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.669885, 12.661499, 14.644851>,  <10.692915, 12.449535, 14.983290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.669885, 12.661499, 14.644851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405677, -0.761961, -0.504820,
		-0.912202, -0.372307, -0.171101,
		-0.057575, 0.529909, -0.846098,
		10.652612, 12.820472, 14.391022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.629116, 11.878590, 14.353873>,  <10.692915, 12.449535, 14.983290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.629116, 11.878590, 14.353873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.720015, 12.231956, 14.189951>,  <10.774553, 12.443974, 14.091598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.720015, 12.231956, 14.189951>,  <10.629116, 11.878590, 14.353873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.720015, 12.231956, 14.189951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658489, -0.449421, -0.603667,
		-0.717462, -0.132671, -0.683847,
		0.227246, 0.883414, -0.409805,
		10.788188, 12.496980, 14.067010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.528461, 11.776479, 13.575717>,  <10.629116, 11.878590, 14.353873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.528461, 11.776479, 13.575717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.780081, 12.080983, 13.638682>,  <10.931052, 12.263686, 13.676462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.780081, 12.080983, 13.638682>,  <10.528461, 11.776479, 13.575717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.780081, 12.080983, 13.638682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611350, -0.359381, -0.705051,
		-0.480156, 0.539746, -0.691465,
		0.629048, 0.761262, 0.157414,
		10.968795, 12.309361, 13.685906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.592433, 12.090416, 12.940882>,  <10.528461, 11.776479, 13.575717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.592433, 12.090416, 12.940882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.926677, 12.187469, 13.138016>,  <11.127223, 12.245702, 13.256296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.926677, 12.187469, 13.138016>,  <10.592433, 12.090416, 12.940882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.926677, 12.187469, 13.138016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506085, -0.688928, -0.518899,
		0.213626, 0.683013, -0.698468,
		0.835609, 0.242633, 0.492836,
		11.177360, 12.260260, 13.285867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.082211, 12.252071, 12.368476>,  <10.592433, 12.090416, 12.940882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.082211, 12.252071, 12.368476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.329060, 12.208326, 12.680168>,  <11.477169, 12.182079, 12.867184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.329060, 12.208326, 12.680168>,  <11.082211, 12.252071, 12.368476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.329060, 12.208326, 12.680168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555970, -0.640182, -0.530155,
		0.556829, 0.760399, -0.334269,
		0.617122, -0.109362, 0.779231,
		11.514196, 12.175518, 12.913938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.765071, 12.298632, 12.115436>,  <11.082211, 12.252071, 12.368476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.765071, 12.298632, 12.115436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.790571, 12.083306, 12.451568>,  <11.805872, 11.954111, 12.653247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.790571, 12.083306, 12.451568>,  <11.765071, 12.298632, 12.115436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.790571, 12.083306, 12.451568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657002, -0.611184, -0.441365,
		0.751189, 0.580236, 0.314708,
		0.063751, -0.538313, 0.840331,
		11.809696, 11.921812, 12.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.343701, 11.965912, 12.035694>,  <11.765071, 12.298632, 12.115436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.343701, 11.965912, 12.035694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.208747, 11.775343, 12.360456>,  <12.127774, 11.661001, 12.555314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.208747, 11.775343, 12.360456>,  <12.343701, 11.965912, 12.035694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.208747, 11.775343, 12.360456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595286, -0.776112, -0.208048,
		0.729249, 0.413124, 0.545458,
		-0.337387, -0.476423, 0.811906,
		12.107531, 11.632416, 12.604029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.942178, 11.689453, 12.535304>,  <12.343701, 11.965912, 12.035694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.942178, 11.689453, 12.535304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.613347, 11.464522, 12.571033>,  <12.416049, 11.329564, 12.592471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.613347, 11.464522, 12.571033>,  <12.942178, 11.689453, 12.535304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.613347, 11.464522, 12.571033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531903, -0.814434, -0.231896,
		0.203150, -0.143125, 0.968631,
		-0.822076, -0.562327, 0.089323,
		12.366724, 11.295824, 12.597831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181874, 11.150936, 12.907060>,  <12.942178, 11.689453, 12.535304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181874, 11.150936, 12.907060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.834638, 11.026163, 12.752599>,  <12.626295, 10.951300, 12.659923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.834638, 11.026163, 12.752599>,  <13.181874, 11.150936, 12.907060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834638, 11.026163, 12.752599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377148, -0.920240, -0.104484,
		-0.322761, -0.236338, 0.916498,
		-0.868092, -0.311932, -0.386152,
		12.574210, 10.932584, 12.636753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.075892, 10.453246, 13.134593>,  <13.181874, 11.150936, 12.907060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.075892, 10.453246, 13.134593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.827971, 10.467790, 12.821028>,  <12.679217, 10.476516, 12.632889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.827971, 10.467790, 12.821028>,  <13.075892, 10.453246, 13.134593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.827971, 10.467790, 12.821028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319883, -0.900465, -0.294682,
		-0.716602, -0.433406, 0.546481,
		-0.619803, 0.036360, -0.783914,
		12.642030, 10.478698, 12.585854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.856625, 9.751419, 13.043393>,  <13.075892, 10.453246, 13.134593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.856625, 9.751419, 13.043393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.753673, 9.941284, 12.706715>,  <12.691901, 10.055203, 12.504707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.753673, 9.941284, 12.706715>,  <12.856625, 9.751419, 13.043393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753673, 9.941284, 12.706715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081312, -0.857313, -0.508334,
		-0.962883, -0.199274, 0.182059,
		-0.257379, 0.474662, -0.841695,
		12.676458, 10.083683, 12.454206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.273945, 9.404675, 12.776142>,  <12.856625, 9.751419, 13.043393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.273945, 9.404675, 12.776142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.460211, 9.575936, 12.466344>,  <12.571970, 9.678693, 12.280465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.460211, 9.575936, 12.466344>,  <12.273945, 9.404675, 12.776142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.460211, 9.575936, 12.466344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108600, -0.840912, -0.530163,
		-0.878272, 0.330988, -0.345086,
		0.465665, 0.428151, -0.774495,
		12.599910, 9.704382, 12.233995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.918936, 9.118362, 12.157533>,  <12.273945, 9.404675, 12.776142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.918936, 9.118362, 12.157533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.282047, 9.240752, 12.042769>,  <12.499914, 9.314186, 11.973911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.282047, 9.240752, 12.042769>,  <11.918936, 9.118362, 12.157533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.282047, 9.240752, 12.042769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063637, -0.776560, -0.626821,
		-0.414593, 0.550758, -0.724416,
		0.907779, 0.305975, -0.286908,
		12.554381, 9.332545, 11.956697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.824628, 9.023744, 11.518208>,  <11.918936, 9.118362, 12.157533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.824628, 9.023744, 11.518208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.222425, 9.006193, 11.556281>,  <12.461102, 8.995663, 11.579125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.222425, 9.006193, 11.556281>,  <11.824628, 9.023744, 11.518208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222425, 9.006193, 11.556281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020934, -0.806704, -0.590584,
		0.102698, 0.589324, -0.801343,
		0.994492, -0.043877, 0.095184,
		12.520772, 8.993031, 11.584836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.189101, 8.922440, 10.900703>,  <11.824628, 9.023744, 11.518208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.189101, 8.922440, 10.900703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.424815, 8.735456, 11.164286>,  <12.566244, 8.623265, 11.322435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.424815, 8.735456, 11.164286>,  <12.189101, 8.922440, 10.900703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424815, 8.735456, 11.164286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154425, -0.735409, -0.659793,
		0.793029, 0.490566, -0.361179,
		0.589286, -0.467460, 0.658956,
		12.601601, 8.595218, 11.361973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.892921, 23.385771, 24.785978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.746655, 23.014545, 24.814232>,  <18.658894, 22.791811, 24.831184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.746655, 23.014545, 24.814232>,  <18.892921, 23.385771, 24.785978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746655, 23.014545, 24.814232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141647, 0.019516, 0.989725,
		-0.919904, 0.371916, 0.124321,
		-0.365668, -0.928061, 0.070633,
		18.636953, 22.736128, 24.835423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610466, 23.389673, 25.407251>,  <18.892921, 23.385771, 24.785978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.610466, 23.389673, 25.407251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.705927, 23.011778, 25.317352>,  <18.763203, 22.785040, 25.263412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.705927, 23.011778, 25.317352>,  <18.610466, 23.389673, 25.407251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705927, 23.011778, 25.317352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122492, -0.200303, 0.972047,
		-0.963349, -0.259510, 0.067921,
		0.238651, -0.944740, -0.224750,
		18.777523, 22.728355, 25.249928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319883, 23.026758, 25.975624>,  <18.610466, 23.389673, 25.407251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319883, 23.026758, 25.975624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.574411, 22.761641, 25.817739>,  <18.727129, 22.602570, 25.723009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.574411, 22.761641, 25.817739>,  <18.319883, 23.026758, 25.975624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.574411, 22.761641, 25.817739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168058, -0.380274, 0.909477,
		-0.752896, -0.645053, -0.130588,
		0.636320, -0.662796, -0.394713,
		18.765308, 22.562801, 25.699326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039963, 22.409319, 26.248863>,  <18.319883, 23.026758, 25.975624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039963, 22.409319, 26.248863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424126, 22.389002, 26.139288>,  <18.654623, 22.376812, 26.073544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424126, 22.389002, 26.139288>,  <18.039963, 22.409319, 26.248863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424126, 22.389002, 26.139288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248119, -0.291290, 0.923898,
		-0.126724, -0.955285, -0.267154,
		0.960405, -0.050794, -0.273938,
		18.712248, 22.373764, 26.057106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298052, 21.887594, 26.624273>,  <18.039963, 22.409319, 26.248863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298052, 21.887594, 26.624273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.634220, 22.081535, 26.527435>,  <18.835922, 22.197899, 26.469332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.634220, 22.081535, 26.527435>,  <18.298052, 21.887594, 26.624273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.634220, 22.081535, 26.527435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363774, -0.173593, 0.915169,
		0.401695, -0.857196, -0.322268,
		0.840422, 0.484852, -0.242094,
		18.886347, 22.226990, 26.454807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780720, 21.432093, 26.718933>,  <18.298052, 21.887594, 26.624273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780720, 21.432093, 26.718933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.950304, 21.794046, 26.734133>,  <19.052053, 22.011219, 26.743254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.950304, 21.794046, 26.734133>,  <18.780720, 21.432093, 26.718933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950304, 21.794046, 26.734133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334576, -0.195471, 0.921873,
		0.841617, -0.378122, -0.385624,
		0.423958, 0.904884, 0.038001,
		19.077492, 22.065512, 26.745533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.357157, 21.348995, 27.043455>,  <18.780720, 21.432093, 26.718933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.357157, 21.348995, 27.043455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.304543, 21.744390, 27.073368>,  <19.272974, 21.981627, 27.091316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.304543, 21.744390, 27.073368>,  <19.357157, 21.348995, 27.043455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304543, 21.744390, 27.073368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212476, -0.045574, 0.976103,
		0.968273, 0.144284, -0.204035,
		-0.131538, 0.988486, 0.074785,
		19.265081, 22.040936, 27.095804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942942, 21.633347, 27.405857>,  <19.357157, 21.348995, 27.043455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942942, 21.633347, 27.405857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.648445, 21.900784, 27.447680>,  <19.471748, 22.061247, 27.472773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.648445, 21.900784, 27.447680>,  <19.942942, 21.633347, 27.405857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.648445, 21.900784, 27.447680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095562, -0.050235, 0.994155,
		0.669939, 0.741928, -0.026907,
		-0.736240, 0.668595, 0.104554,
		19.427572, 22.101362, 27.479046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247515, 22.052145, 27.959471>,  <19.942942, 21.633347, 27.405857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247515, 22.052145, 27.959471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.862303, 22.158213, 27.940475>,  <19.631176, 22.221853, 27.929079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.862303, 22.158213, 27.940475>,  <20.247515, 22.052145, 27.959471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862303, 22.158213, 27.940475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024044, 0.090963, 0.995564,
		0.268314, 0.959901, -0.081225,
		-0.963032, 0.265170, -0.047486,
		19.573393, 22.237764, 27.926229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.240963, 22.625479, 28.372801>,  <20.247515, 22.052145, 27.959471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.240963, 22.625479, 28.372801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.886366, 22.440397, 28.370279>,  <19.673609, 22.329350, 28.368767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.886366, 22.440397, 28.370279>,  <20.240963, 22.625479, 28.372801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.886366, 22.440397, 28.370279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023197, 0.030829, 0.999256,
		-0.462163, 0.885978, -0.038063,
		-0.886492, -0.462702, -0.006304,
		19.620419, 22.301586, 28.368387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768957, 23.137007, 28.599098>,  <20.240963, 22.625479, 28.372801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768957, 23.137007, 28.599098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.627119, 22.767378, 28.656158>,  <19.542017, 22.545601, 28.690395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.627119, 22.767378, 28.656158>,  <19.768957, 23.137007, 28.599098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627119, 22.767378, 28.656158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100355, 0.189296, 0.976778,
		-0.929619, 0.332046, -0.159859,
		-0.354596, -0.924074, 0.142651,
		19.520741, 22.490156, 28.698954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246027, 23.199886, 29.105541>,  <19.768957, 23.137007, 28.599098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246027, 23.199886, 29.105541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.306442, 22.805714, 29.136818>,  <19.342691, 22.569210, 29.155584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.306442, 22.805714, 29.136818>,  <19.246027, 23.199886, 29.105541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306442, 22.805714, 29.136818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008013, 0.077877, 0.996931,
		-0.988495, -0.151203, 0.003867,
		0.151040, -0.985430, 0.078192,
		19.351755, 22.510084, 29.160276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959488, 22.980585, 29.669861>,  <19.246027, 23.199886, 29.105541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959488, 22.980585, 29.669861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.222252, 22.684351, 29.613285>,  <19.379910, 22.506611, 29.579340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.222252, 22.684351, 29.613285>,  <18.959488, 22.980585, 29.669861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.222252, 22.684351, 29.613285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139238, -0.065208, 0.988110,
		-0.741002, -0.668792, 0.060282,
		0.656909, -0.740584, -0.141440,
		19.419325, 22.462175, 29.570852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979607, 23.720442, 29.519203>,  <18.959488, 22.980585, 29.669861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979607, 23.720442, 29.519203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.875538, 24.086676, 29.396557>,  <18.813097, 24.306416, 29.322969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.875538, 24.086676, 29.396557>,  <18.979607, 23.720442, 29.519203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.875538, 24.086676, 29.396557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179339, 0.266202, 0.947087,
		0.948761, 0.301395, 0.094941,
		-0.260174, 0.915586, -0.306614,
		18.797485, 24.361351, 29.304573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871717, 23.900667, 30.178530>,  <18.979607, 23.720442, 29.519203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871717, 23.900667, 30.178530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.522331, 24.033871, 30.320610>,  <18.312700, 24.113792, 30.405859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.522331, 24.033871, 30.320610>,  <18.871717, 23.900667, 30.178530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.522331, 24.033871, 30.320610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486171, -0.556926, -0.673403,
		-0.026427, -0.760881, 0.648353,
		-0.873464, 0.333006, 0.355200,
		18.260292, 24.133772, 30.427170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382996, 23.230612, 30.181438>,  <18.871717, 23.900667, 30.178530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382996, 23.230612, 30.181438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.142712, 23.548246, 30.218472>,  <17.998541, 23.738827, 30.240690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.142712, 23.548246, 30.218472>,  <18.382996, 23.230612, 30.181438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.142712, 23.548246, 30.218472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684479, -0.451013, -0.572778,
		-0.413078, -0.407448, 0.814465,
		-0.600712, 0.794086, 0.092586,
		17.962500, 23.786472, 30.246246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641392, 23.100809, 30.399239>,  <18.382996, 23.230612, 30.181438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641392, 23.100809, 30.399239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.615015, 23.439960, 30.188808>,  <17.599188, 23.643452, 30.062550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.615015, 23.439960, 30.188808>,  <17.641392, 23.100809, 30.399239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615015, 23.439960, 30.188808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624900, -0.446122, -0.640683,
		-0.777915, 0.286497, 0.559257,
		-0.065943, 0.847876, -0.526077,
		17.595232, 23.694323, 30.030985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951441, 23.095663, 30.090078>,  <17.641392, 23.100809, 30.399239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951441, 23.095663, 30.090078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.159521, 23.347223, 29.858952>,  <17.284369, 23.498159, 29.720276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.159521, 23.347223, 29.858952>,  <16.951441, 23.095663, 30.090078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159521, 23.347223, 29.858952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499403, -0.324843, -0.803165,
		-0.692813, 0.706370, 0.145092,
		0.520199, 0.628903, -0.577819,
		17.315580, 23.535894, 29.685606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525120, 23.548378, 29.897465>,  <16.951441, 23.095663, 30.090078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525120, 23.548378, 29.897465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.822252, 23.570732, 29.630610>,  <17.000532, 23.584145, 29.470495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.822252, 23.570732, 29.630610>,  <16.525120, 23.548378, 29.897465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822252, 23.570732, 29.630610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666968, -0.024422, -0.744686,
		-0.057910, 0.998138, 0.019131,
		0.742833, 0.055884, -0.667140,
		17.045101, 23.587498, 29.430468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287230, 24.126911, 29.477989>,  <16.525120, 23.548378, 29.897465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287230, 24.126911, 29.477989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.547926, 23.929148, 29.247931>,  <16.704344, 23.810490, 29.109896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.547926, 23.929148, 29.247931>,  <16.287230, 24.126911, 29.477989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547926, 23.929148, 29.247931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708175, -0.125218, -0.694844,
		0.271520, 0.860162, -0.431738,
		0.651740, -0.494410, -0.575146,
		16.743448, 23.780825, 29.075386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166372, 24.312881, 28.842194>,  <16.287230, 24.126911, 29.477989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166372, 24.312881, 28.842194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.398504, 24.006201, 28.732370>,  <16.537783, 23.822191, 28.666477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.398504, 24.006201, 28.732370>,  <16.166372, 24.312881, 28.842194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.398504, 24.006201, 28.732370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564582, -0.135800, -0.814129,
		0.586910, 0.627474, -0.511676,
		0.580330, -0.766704, -0.274558,
		16.572603, 23.776190, 28.650003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227743, 24.395805, 28.164785>,  <16.166372, 24.312881, 28.842194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227743, 24.395805, 28.164785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.349037, 24.020773, 28.232893>,  <16.421814, 23.795753, 28.273758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.349037, 24.020773, 28.232893>,  <16.227743, 24.395805, 28.164785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.349037, 24.020773, 28.232893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400186, -0.287458, -0.870183,
		0.864813, 0.195729, -0.462374,
		0.303233, -0.937581, 0.170269,
		16.440006, 23.739498, 28.283974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477160, 24.158606, 27.544844>,  <16.227743, 24.395805, 28.164785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.477160, 24.158606, 27.544844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.379250, 23.825663, 27.743750>,  <16.320503, 23.625896, 27.863092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.379250, 23.825663, 27.743750>,  <16.477160, 24.158606, 27.544844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.379250, 23.825663, 27.743750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335396, -0.408515, -0.848897,
		0.909723, -0.374567, -0.179175,
		-0.244773, -0.832355, 0.497263,
		16.305817, 23.575956, 27.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689499, 23.589622, 27.116024>,  <16.477160, 24.158606, 27.544844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.689499, 23.589622, 27.116024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.424572, 23.435888, 27.373278>,  <16.265615, 23.343647, 27.527630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.424572, 23.435888, 27.373278>,  <16.689499, 23.589622, 27.116024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424572, 23.435888, 27.373278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416716, -0.524403, -0.742528,
		0.622642, -0.759794, 0.187163,
		-0.662318, -0.384335, 0.643134,
		16.225876, 23.320587, 27.566217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.641666, 22.825706, 27.056282>,  <16.689499, 23.589622, 27.116024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.641666, 22.825706, 27.056282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.288328, 22.905874, 27.225769>,  <16.076326, 22.953974, 27.327461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.288328, 22.905874, 27.225769>,  <16.641666, 22.825706, 27.056282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288328, 22.905874, 27.225769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439770, -0.667171, -0.601236,
		0.162194, -0.717437, 0.677479,
		-0.883343, 0.200418, 0.423718,
		16.023325, 22.966000, 27.352884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307459, 22.164761, 27.185057>,  <16.641666, 22.825706, 27.056282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307459, 22.164761, 27.185057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.013920, 22.436459, 27.188908>,  <15.837796, 22.599478, 27.191219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.013920, 22.436459, 27.188908>,  <16.307459, 22.164761, 27.185057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013920, 22.436459, 27.188908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504877, -0.535869, -0.676716,
		-0.454496, -0.501468, 0.736182,
		-0.733848, 0.679246, 0.009629,
		15.793766, 22.640232, 27.191795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.757483, 21.761627, 27.172737>,  <16.307459, 22.164761, 27.185057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.757483, 21.761627, 27.172737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.599246, 22.112850, 27.065020>,  <15.504304, 22.323584, 27.000389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.599246, 22.112850, 27.065020>,  <15.757483, 21.761627, 27.172737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.599246, 22.112850, 27.065020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371866, -0.421234, -0.827211,
		-0.839776, -0.227096, 0.493157,
		-0.395591, 0.878060, -0.269293,
		15.480569, 22.376268, 26.984232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894204, 21.762390, 27.068766>,  <15.757483, 21.761627, 27.172737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894204, 21.762390, 27.068766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.067739, 22.029560, 26.826885>,  <15.171861, 22.189861, 26.681757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.067739, 22.029560, 26.826885>,  <14.894204, 21.762390, 27.068766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067739, 22.029560, 26.826885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584615, -0.302002, -0.753007,
		-0.685572, 0.680200, 0.259459,
		0.433839, 0.667924, -0.604699,
		15.197891, 22.229937, 26.645475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.256701, 21.689034, 27.311337>,  <14.894204, 21.762390, 27.068766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.256701, 21.689034, 27.311337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.135078, 21.334780, 27.451736>,  <14.062105, 21.122227, 27.535976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.135078, 21.334780, 27.451736>,  <14.256701, 21.689034, 27.311337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135078, 21.334780, 27.451736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553661, 0.135553, 0.821636,
		-0.775248, 0.444157, 0.449126,
		-0.304055, -0.885635, 0.351000,
		14.043862, 21.069090, 27.557035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054065, 21.795712, 28.041985>,  <14.256701, 21.689034, 27.311337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054065, 21.795712, 28.041985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.132045, 21.404341, 28.014637>,  <14.178833, 21.169518, 27.998228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.132045, 21.404341, 28.014637>,  <14.054065, 21.795712, 28.041985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132045, 21.404341, 28.014637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631089, 0.071773, 0.772383,
		-0.750814, -0.193721, 0.631467,
		0.194949, -0.978428, -0.068367,
		14.190530, 21.110813, 27.994127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058476, 21.563360, 28.716524>,  <14.054065, 21.795712, 28.041985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058476, 21.563360, 28.716524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.255365, 21.268507, 28.531330>,  <14.373499, 21.091595, 28.420214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.255365, 21.268507, 28.531330>,  <14.058476, 21.563360, 28.716524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255365, 21.268507, 28.531330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671574, -0.016807, 0.740747,
		-0.553809, -0.675540, 0.486766,
		0.492223, -0.737132, -0.462983,
		14.403032, 21.047367, 28.392435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178955, 21.074530, 29.210747>,  <14.058476, 21.563360, 28.716524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178955, 21.074530, 29.210747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.460356, 20.983599, 28.941404>,  <14.629196, 20.929039, 28.779799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.460356, 20.983599, 28.941404>,  <14.178955, 21.074530, 29.210747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.460356, 20.983599, 28.941404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686813, -0.026073, 0.726366,
		-0.182681, -0.973469, 0.137790,
		0.703502, -0.227329, -0.673354,
		14.671407, 20.915400, 28.739399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489287, 20.488548, 29.421452>,  <14.178955, 21.074530, 29.210747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489287, 20.488548, 29.421452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.727870, 20.704576, 29.183943>,  <14.871019, 20.834194, 29.041437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.727870, 20.704576, 29.183943>,  <14.489287, 20.488548, 29.421452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727870, 20.704576, 29.183943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713385, -0.017658, 0.700550,
		0.367862, -0.841434, -0.395811,
		0.596456, 0.540071, -0.593771,
		14.906807, 20.866598, 29.005812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117703, 20.171139, 29.639858>,  <14.489287, 20.488548, 29.421452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117703, 20.171139, 29.639858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.261603, 20.467524, 29.413036>,  <15.347943, 20.645355, 29.276943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.261603, 20.467524, 29.413036>,  <15.117703, 20.171139, 29.639858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.261603, 20.467524, 29.413036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721621, 0.164308, 0.672507,
		0.591476, -0.651133, -0.475585,
		0.359750, 0.740964, -0.567056,
		15.369529, 20.689814, 29.242920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809668, 20.076395, 29.670887>,  <15.117703, 20.171139, 29.639858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809668, 20.076395, 29.670887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.756263, 20.451298, 29.542061>,  <15.724219, 20.676239, 29.464766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.756263, 20.451298, 29.542061>,  <15.809668, 20.076395, 29.670887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.756263, 20.451298, 29.542061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798050, 0.294362, 0.525801,
		0.587614, -0.186823, -0.787278,
		-0.133513, 0.937256, -0.322065,
		15.716208, 20.732475, 29.445440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307844, 19.539429, 29.552715>,  <15.809668, 20.076395, 29.670887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307844, 19.539429, 29.552715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.427656, 19.204901, 29.736387>,  <16.499544, 19.004183, 29.846590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.427656, 19.204901, 29.736387>,  <16.307844, 19.539429, 29.552715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427656, 19.204901, 29.736387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784244, -0.489912, -0.380720,
		0.543363, -0.246072, -0.802624,
		0.299530, -0.836322, 0.459181,
		16.517515, 18.954004, 29.874142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514490, 19.060087, 28.995729>,  <16.307844, 19.539429, 29.552715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514490, 19.060087, 28.995729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.430445, 18.830734, 29.312485>,  <16.380016, 18.693123, 29.502537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.430445, 18.830734, 29.312485>,  <16.514490, 19.060087, 28.995729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430445, 18.830734, 29.312485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843425, -0.303332, -0.443423,
		0.494455, -0.761067, -0.419870,
		-0.210114, -0.573382, 0.791887,
		16.367411, 18.658720, 29.550051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301893, 18.453304, 28.729536>,  <16.514490, 19.060087, 28.995729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301893, 18.453304, 28.729536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.164932, 18.443117, 29.105219>,  <16.082756, 18.437006, 29.330629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.164932, 18.443117, 29.105219>,  <16.301893, 18.453304, 28.729536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164932, 18.443117, 29.105219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834874, -0.450294, -0.316577,
		0.430982, -0.892517, 0.132919,
		-0.342403, -0.025468, 0.939208,
		16.062212, 18.435476, 29.386982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143724, 17.691925, 28.861721>,  <16.301893, 18.453304, 28.729536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143724, 17.691925, 28.861721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.920776, 17.931541, 29.091673>,  <15.787007, 18.075312, 29.229645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.920776, 17.931541, 29.091673>,  <16.143724, 17.691925, 28.861721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920776, 17.931541, 29.091673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828400, -0.447615, -0.336740,
		0.055603, -0.663919, 0.745734,
		-0.557370, 0.599043, 0.574880,
		15.753566, 18.111254, 29.264137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765286, 17.169600, 29.119707>,  <16.143724, 17.691925, 28.861721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765286, 17.169600, 29.119707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.576564, 17.500372, 29.242071>,  <15.463330, 17.698835, 29.315491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.576564, 17.500372, 29.242071>,  <15.765286, 17.169600, 29.119707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576564, 17.500372, 29.242071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879557, -0.465611, -0.097906,
		0.061475, -0.315260, 0.947012,
		-0.471805, 0.826932, 0.305913,
		15.435022, 17.748451, 29.333845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234460, 16.845646, 29.525835>,  <15.765286, 17.169600, 29.119707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234460, 16.845646, 29.525835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.135949, 17.221424, 29.430515>,  <15.076842, 17.446892, 29.373323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.135949, 17.221424, 29.430515>,  <15.234460, 16.845646, 29.525835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135949, 17.221424, 29.430515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768842, -0.339072, -0.542136,
		-0.590109, 0.049699, 0.805792,
		-0.246278, 0.939447, -0.238300,
		15.062066, 17.503258, 29.359026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423134, 16.961943, 29.688171>,  <15.234460, 16.845646, 29.525835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423134, 16.961943, 29.688171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.551647, 17.205225, 29.397829>,  <14.628756, 17.351194, 29.223623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.551647, 17.205225, 29.397829>,  <14.423134, 16.961943, 29.688171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.551647, 17.205225, 29.397829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803984, -0.229828, -0.548443,
		-0.500387, 0.759780, 0.415147,
		0.321283, 0.608205, -0.725854,
		14.648032, 17.387686, 29.180073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<23.091614, 19.721949, 23.731541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.843292, 19.825607, 24.027498>,  <22.694300, 19.887802, 24.205072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.843292, 19.825607, 24.027498>,  <23.091614, 19.721949, 23.731541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843292, 19.825607, 24.027498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523949, 0.564898, -0.637470,
		-0.583162, -0.783412, -0.214913,
		-0.620806, 0.259145, 0.739894,
		22.657051, 19.903351, 24.249466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.416452, 19.713894, 23.402527>,  <23.091614, 19.721949, 23.731541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.416452, 19.713894, 23.402527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.371445, 19.969423, 23.706959>,  <22.344440, 20.122742, 23.889618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.371445, 19.969423, 23.706959>,  <22.416452, 19.713894, 23.402527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371445, 19.969423, 23.706959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463175, 0.643922, -0.608961,
		-0.879095, -0.421032, 0.223435,
		-0.112517, 0.638824, 0.761080,
		22.337690, 20.161070, 23.935284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659208, 19.936020, 23.554970>,  <22.416452, 19.713894, 23.402527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659208, 19.936020, 23.554970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.941690, 20.214983, 23.603786>,  <22.111179, 20.382360, 23.633078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.941690, 20.214983, 23.603786>,  <21.659208, 19.936020, 23.554970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.941690, 20.214983, 23.603786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475460, 0.594875, -0.648121,
		-0.524606, 0.399681, 0.751694,
		0.706206, 0.697409, 0.122043,
		22.153553, 20.424206, 23.640400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457422, 20.658096, 23.834208>,  <21.659208, 19.936020, 23.554970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457422, 20.658096, 23.834208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.161287, 20.898502, 23.954664>,  <20.983606, 21.042746, 24.026937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.161287, 20.898502, 23.954664>,  <21.457422, 20.658096, 23.834208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.161287, 20.898502, 23.954664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213440, -0.634943, 0.742490,
		0.637454, 0.485416, 0.598351,
		-0.740335, 0.601015, 0.301140,
		20.939186, 21.078806, 24.045006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.639832, 20.876362, 24.412172>,  <21.457422, 20.658096, 23.834208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.639832, 20.876362, 24.412172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.251497, 20.795149, 24.361179>,  <21.018496, 20.746422, 24.330584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.251497, 20.795149, 24.361179>,  <21.639832, 20.876362, 24.412172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.251497, 20.795149, 24.361179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076469, -0.766246, 0.637980,
		-0.227214, 0.609627, 0.759427,
		-0.970838, -0.203031, -0.127484,
		20.960245, 20.734240, 24.322933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.281988, 20.502522, 24.968098>,  <21.639832, 20.876362, 24.412172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.281988, 20.502522, 24.968098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.346586, 20.289230, 24.635931>,  <21.385345, 20.161257, 24.436632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.346586, 20.289230, 24.635931>,  <21.281988, 20.502522, 24.968098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.346586, 20.289230, 24.635931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773238, -0.454482, 0.442209,
		-0.613207, -0.713523, 0.338914,
		0.161496, -0.533227, -0.830415,
		21.395035, 20.129263, 24.386806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.240650, 19.827358, 25.060728>,  <21.281988, 20.502522, 24.968098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.240650, 19.827358, 25.060728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.496883, 19.917030, 24.766954>,  <21.650623, 19.970835, 24.590691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.496883, 19.917030, 24.766954>,  <21.240650, 19.827358, 25.060728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.496883, 19.917030, 24.766954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733332, -0.462292, 0.498509,
		-0.227767, -0.857921, -0.460536,
		0.640584, 0.224182, -0.734435,
		21.689058, 19.984285, 24.546623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.600517, 19.627281, 25.594830>,  <21.240650, 19.827358, 25.060728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.600517, 19.627281, 25.594830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.247744, 19.636192, 25.783167>,  <21.036079, 19.641539, 25.896170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.247744, 19.636192, 25.783167>,  <21.600517, 19.627281, 25.594830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.247744, 19.636192, 25.783167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376341, -0.634740, -0.674887,
		0.283827, -0.772404, 0.568184,
		-0.881935, 0.022279, 0.470844,
		20.983164, 19.642876, 25.924419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333265, 18.993460, 25.524693>,  <21.600517, 19.627281, 25.594830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333265, 18.993460, 25.524693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.999105, 19.169449, 25.656471>,  <20.798611, 19.275042, 25.735538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.999105, 19.169449, 25.656471>,  <21.333265, 18.993460, 25.524693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999105, 19.169449, 25.656471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542310, -0.562183, -0.624380,
		-0.089502, -0.700267, 0.708248,
		-0.835398, 0.439973, 0.329445,
		20.748486, 19.301441, 25.755304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.925484, 18.485279, 25.457649>,  <21.333265, 18.993460, 25.524693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.925484, 18.485279, 25.457649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.679523, 18.799545, 25.484854>,  <20.531948, 18.988106, 25.501177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.679523, 18.799545, 25.484854>,  <20.925484, 18.485279, 25.457649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.679523, 18.799545, 25.484854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523567, -0.342227, -0.780230,
		-0.589726, -0.515371, 0.621785,
		-0.614899, 0.785668, 0.068011,
		20.495054, 19.035246, 25.505257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277370, 18.253521, 25.367798>,  <20.925484, 18.485279, 25.457649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277370, 18.253521, 25.367798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.237734, 18.645449, 25.298357>,  <20.213951, 18.880606, 25.256693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.237734, 18.645449, 25.298357>,  <20.277370, 18.253521, 25.367798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.237734, 18.645449, 25.298357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591292, -0.198300, -0.781697,
		-0.800346, 0.025190, 0.599009,
		-0.099092, 0.979818, -0.173604,
		20.208006, 18.939394, 25.246277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578630, 18.448381, 25.366680>,  <20.277370, 18.253521, 25.367798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578630, 18.448381, 25.366680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.736776, 18.743673, 25.148066>,  <19.831663, 18.920849, 25.016897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.736776, 18.743673, 25.148066>,  <19.578630, 18.448381, 25.366680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736776, 18.743673, 25.148066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823410, 0.021176, -0.567051,
		-0.407042, 0.674214, 0.616240,
		0.395363, 0.738232, -0.546536,
		19.855385, 18.965143, 24.984104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053570, 17.906683, 25.535250>,  <19.578630, 18.448381, 25.366680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.053570, 17.906683, 25.535250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.984005, 17.573448, 25.745287>,  <18.942266, 17.373507, 25.871309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.984005, 17.573448, 25.745287>,  <19.053570, 17.906683, 25.535250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984005, 17.573448, 25.745287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238379, 0.481744, 0.843266,
		-0.955474, 0.271823, 0.114811,
		-0.173910, -0.833088, 0.525091,
		18.931831, 17.323523, 25.902815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554689, 18.053207, 26.121050>,  <19.053570, 17.906683, 25.535250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554689, 18.053207, 26.121050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.782272, 17.739071, 26.218641>,  <18.918821, 17.550589, 26.277197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.782272, 17.739071, 26.218641>,  <18.554689, 18.053207, 26.121050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782272, 17.739071, 26.218641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273497, 0.460493, 0.844480,
		-0.775556, -0.413745, 0.476789,
		0.568957, -0.785342, 0.243980,
		18.952959, 17.503468, 26.291836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388304, 17.728363, 26.732428>,  <18.554689, 18.053207, 26.121050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388304, 17.728363, 26.732428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.773232, 17.621302, 26.713255>,  <19.004189, 17.557064, 26.701752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.773232, 17.621302, 26.713255>,  <18.388304, 17.728363, 26.732428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773232, 17.621302, 26.713255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162026, 0.422878, 0.891584,
		-0.218368, -0.865757, 0.450312,
		0.962322, -0.267656, -0.047932,
		19.061928, 17.541004, 26.698875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.617325, 17.384760, 27.394581>,  <18.388304, 17.728363, 26.732428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.617325, 17.384760, 27.394581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.959232, 17.524452, 27.241005>,  <19.164377, 17.608269, 27.148859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.959232, 17.524452, 27.241005>,  <18.617325, 17.384760, 27.394581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959232, 17.524452, 27.241005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206674, 0.449538, 0.869023,
		0.476096, -0.822159, 0.312068,
		0.854762, 0.349242, -0.383943,
		19.215662, 17.629223, 27.125824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.151026, 17.278326, 27.935570>,  <18.617325, 17.384760, 27.394581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.151026, 17.278326, 27.935570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.325354, 17.523539, 27.671978>,  <19.429951, 17.670666, 27.513823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.325354, 17.523539, 27.671978>,  <19.151026, 17.278326, 27.935570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325354, 17.523539, 27.671978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491540, 0.451221, 0.744841,
		0.753956, -0.648531, -0.104679,
		0.435819, 0.613031, -0.658980,
		19.456099, 17.707447, 27.474283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.857887, 17.194796, 28.006212>,  <19.151026, 17.278326, 27.935570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.857887, 17.194796, 28.006212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.784439, 17.551275, 27.840300>,  <19.740370, 17.765163, 27.740753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.784439, 17.551275, 27.840300>,  <19.857887, 17.194796, 28.006212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.784439, 17.551275, 27.840300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478108, 0.449653, 0.754470,
		0.858892, -0.059772, -0.508657,
		-0.183623, 0.891201, -0.414780,
		19.729353, 17.818636, 27.715866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473036, 17.532257, 28.129057>,  <19.857887, 17.194796, 28.006212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473036, 17.532257, 28.129057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.220299, 17.822199, 28.019247>,  <20.068657, 17.996164, 27.953362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.220299, 17.822199, 28.019247>,  <20.473036, 17.532257, 28.129057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220299, 17.822199, 28.019247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480437, 0.644190, 0.595147,
		0.608240, 0.244147, -0.755272,
		-0.631842, 0.724853, -0.274525,
		20.030746, 18.039654, 27.936890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946739, 18.137184, 27.974180>,  <20.473036, 17.532257, 28.129057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946739, 18.137184, 27.974180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.575361, 18.245939, 28.075424>,  <20.352535, 18.311193, 28.136171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.575361, 18.245939, 28.075424>,  <20.946739, 18.137184, 27.974180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575361, 18.245939, 28.075424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364071, 0.530723, 0.765366,
		0.073763, 0.802751, -0.591735,
		-0.928445, 0.271890, 0.253111,
		20.296827, 18.327507, 28.151358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.017397, 18.752083, 28.239845>,  <20.946739, 18.137184, 27.974180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.017397, 18.752083, 28.239845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.640249, 18.686502, 28.355860>,  <20.413961, 18.647154, 28.425468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.640249, 18.686502, 28.355860>,  <21.017397, 18.752083, 28.239845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640249, 18.686502, 28.355860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156329, 0.551043, 0.819703,
		-0.294214, 0.818212, -0.493930,
		-0.942868, -0.163952, 0.290035,
		20.357389, 18.637318, 28.442871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757492, 19.314938, 28.406073>,  <21.017397, 18.752083, 28.239845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757492, 19.314938, 28.406073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.538582, 19.059019, 28.621906>,  <20.407236, 18.905468, 28.751406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.538582, 19.059019, 28.621906>,  <20.757492, 19.314938, 28.406073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538582, 19.059019, 28.621906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115917, 0.580546, 0.805934,
		-0.828886, 0.503615, -0.243556,
		-0.547276, -0.639795, 0.539584,
		20.374399, 18.867081, 28.783781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400730, 19.727425, 28.797564>,  <20.757492, 19.314938, 28.406073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.400730, 19.727425, 28.797564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.399197, 19.386805, 29.007269>,  <20.398277, 19.182432, 29.133091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.399197, 19.386805, 29.007269>,  <20.400730, 19.727425, 28.797564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.399197, 19.386805, 29.007269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048139, 0.523815, 0.850471,
		-0.998833, -0.021976, -0.043001,
		-0.003834, -0.851549, 0.524262,
		20.398046, 19.131340, 29.164547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872862, 19.738283, 29.262171>,  <20.400730, 19.727425, 28.797564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872862, 19.738283, 29.262171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.119734, 19.470154, 29.426977>,  <20.267857, 19.309277, 29.525860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.119734, 19.470154, 29.426977>,  <19.872862, 19.738283, 29.262171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.119734, 19.470154, 29.426977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052770, 0.557728, 0.828344,
		-0.785052, -0.489495, 0.379591,
		0.617179, -0.670324, 0.412015,
		20.304888, 19.269056, 29.550581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709536, 19.811424, 29.908045>,  <19.872862, 19.738283, 29.262171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.709536, 19.811424, 29.908045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.043413, 19.594555, 29.946688>,  <20.243740, 19.464434, 29.969873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.043413, 19.594555, 29.946688>,  <19.709536, 19.811424, 29.908045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043413, 19.594555, 29.946688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234577, 0.508738, 0.828347,
		-0.498254, -0.668756, 0.551823,
		0.834695, -0.542172, 0.096606,
		20.293821, 19.431904, 29.975670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.808428, 19.620115, 30.668463>,  <19.709536, 19.811424, 29.908045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.808428, 19.620115, 30.668463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.152050, 19.642237, 30.464909>,  <20.358223, 19.655510, 30.342777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.152050, 19.642237, 30.464909>,  <19.808428, 19.620115, 30.668463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.152050, 19.642237, 30.464909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383598, 0.588700, 0.711537,
		0.338930, -0.806458, 0.484513,
		0.859057, 0.055303, -0.508884,
		20.409767, 19.658829, 30.312243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481777, 19.159508, 31.066902>,  <19.808428, 19.620115, 30.668463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481777, 19.159508, 31.066902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.189224, 19.390610, 31.211830>,  <19.013691, 19.529270, 31.298788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.189224, 19.390610, 31.211830>,  <19.481777, 19.159508, 31.066902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189224, 19.390610, 31.211830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677022, -0.551274, -0.487584,
		-0.081965, -0.601912, 0.794345,
		-0.731385, 0.577754, 0.362322,
		18.969809, 19.563936, 31.320526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808575, 18.681263, 31.305523>,  <19.481777, 19.159508, 31.066902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808575, 18.681263, 31.305523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.689131, 19.059874, 31.256670>,  <18.617464, 19.287041, 31.227358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.689131, 19.059874, 31.256670>,  <18.808575, 18.681263, 31.305523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689131, 19.059874, 31.256670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863054, -0.322444, -0.388804,
		-0.407395, -0.010694, 0.913190,
		-0.298611, 0.946528, -0.122132,
		18.599548, 19.343832, 31.220030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169498, 18.575293, 31.595190>,  <18.808575, 18.681263, 31.305523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169498, 18.575293, 31.595190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.137035, 18.904737, 31.370663>,  <18.117558, 19.102404, 31.235947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.137035, 18.904737, 31.370663>,  <18.169498, 18.575293, 31.595190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137035, 18.904737, 31.370663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828227, -0.369033, -0.421729,
		-0.554486, 0.430673, 0.712086,
		-0.081157, 0.823611, -0.561318,
		18.112688, 19.151821, 31.202267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488590, 18.643135, 31.528461>,  <18.169498, 18.575293, 31.595190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488590, 18.643135, 31.528461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.621983, 18.880964, 31.235811>,  <17.702017, 19.023663, 31.060221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.621983, 18.880964, 31.235811>,  <17.488590, 18.643135, 31.528461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.621983, 18.880964, 31.235811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804471, -0.225159, -0.549663,
		-0.491547, 0.771872, 0.403231,
		0.333479, 0.594573, -0.731625,
		17.722027, 19.059336, 31.016323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944233, 19.028776, 31.301130>,  <17.488590, 18.643135, 31.528461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.944233, 19.028776, 31.301130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.201456, 19.051981, 30.995684>,  <17.355791, 19.065903, 30.812416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.201456, 19.051981, 30.995684>,  <16.944233, 19.028776, 31.301130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201456, 19.051981, 30.995684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765561, 0.022973, -0.642953,
		-0.019756, 0.998052, 0.059184,
		0.643059, 0.058011, -0.763616,
		17.394375, 19.069384, 30.766600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654974, 19.506289, 30.982624>,  <16.944233, 19.028776, 31.301130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.654974, 19.506289, 30.982624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.887707, 19.341208, 30.702297>,  <17.027346, 19.242159, 30.534101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.887707, 19.341208, 30.702297>,  <16.654974, 19.506289, 30.982624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887707, 19.341208, 30.702297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770576, -0.004094, -0.637335,
		0.260162, 0.910856, -0.320402,
		0.581832, -0.412705, -0.700819,
		17.062256, 19.217396, 30.492052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435160, 19.805115, 30.286606>,  <16.654974, 19.506289, 30.982624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435160, 19.805115, 30.286606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.634645, 19.461996, 30.236849>,  <16.754337, 19.256124, 30.206995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.634645, 19.461996, 30.236849>,  <16.435160, 19.805115, 30.286606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634645, 19.461996, 30.236849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744679, -0.350592, -0.567925,
		0.443552, 0.375865, -0.813626,
		0.498714, -0.857794, -0.124393,
		16.784260, 19.204659, 30.199532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511927, 20.357660, 29.556068>,  <16.435160, 19.805115, 30.286606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511927, 20.357660, 29.556068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.276819, 20.678642, 29.597242>,  <16.135756, 20.871231, 29.621946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.276819, 20.678642, 29.597242>,  <16.511927, 20.357660, 29.556068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.276819, 20.678642, 29.597242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720752, 0.461584, 0.517162,
		0.367485, 0.378162, -0.849675,
		-0.587767, 0.802455, 0.102936,
		16.100489, 20.919378, 29.628122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849924, 20.933060, 29.334679>,  <16.511927, 20.357660, 29.556068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849924, 20.933060, 29.334679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.575573, 21.060904, 29.596188>,  <16.410961, 21.137609, 29.753094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.575573, 21.060904, 29.596188>,  <16.849924, 20.933060, 29.334679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575573, 21.060904, 29.596188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712807, 0.475986, 0.515115,
		-0.146550, 0.819321, -0.554289,
		-0.685879, 0.319611, 0.653773,
		16.369810, 21.156786, 29.792320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077612, 21.576809, 29.703661>,  <16.849924, 20.933060, 29.334679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077612, 21.576809, 29.703661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.764259, 21.478979, 29.932220>,  <16.576248, 21.420280, 30.069355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.764259, 21.478979, 29.932220>,  <17.077612, 21.576809, 29.703661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764259, 21.478979, 29.932220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427630, 0.455061, 0.781058,
		-0.451047, 0.856214, -0.251900,
		-0.783383, -0.244574, 0.571397,
		16.529243, 21.405607, 30.103640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885481, 22.264860, 30.010584>,  <17.077612, 21.576809, 29.703661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885481, 22.264860, 30.010584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.726156, 21.988735, 30.252184>,  <16.630562, 21.823061, 30.397144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.726156, 21.988735, 30.252184>,  <16.885481, 22.264860, 30.010584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726156, 21.988735, 30.252184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248559, 0.552621, 0.795505,
		-0.882930, 0.466990, -0.048533,
		-0.398313, -0.690312, 0.604000,
		16.606663, 21.781641, 30.433384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591225, 22.589689, 30.486164>,  <16.885481, 22.264860, 30.010584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591225, 22.589689, 30.486164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.615047, 22.241077, 30.680849>,  <16.629341, 22.031910, 30.797661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.615047, 22.241077, 30.680849>,  <16.591225, 22.589689, 30.486164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.615047, 22.241077, 30.680849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187876, 0.488651, 0.852011,
		-0.980385, 0.040699, 0.192842,
		0.059556, -0.871530, 0.486712,
		16.632914, 21.979618, 30.826862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113884, 22.662224, 31.038507>,  <16.591225, 22.589689, 30.486164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113884, 22.662224, 31.038507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.401375, 22.394987, 31.115536>,  <16.573870, 22.234646, 31.161753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.401375, 22.394987, 31.115536>,  <16.113884, 22.662224, 31.038507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401375, 22.394987, 31.115536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302271, 0.549656, 0.778788,
		-0.626148, -0.501529, 0.596998,
		0.718729, -0.668092, 0.192569,
		16.616993, 22.194559, 31.173306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052288, 22.572334, 31.723156>,  <16.113884, 22.662224, 31.038507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052288, 22.572334, 31.723156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.412655, 22.403992, 31.680767>,  <16.628874, 22.302986, 31.655333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.412655, 22.403992, 31.680767>,  <16.052288, 22.572334, 31.723156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412655, 22.403992, 31.680767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331395, 0.509441, 0.794133,
		-0.280230, -0.750566, 0.598433,
		0.900915, -0.420858, -0.105973,
		16.682930, 22.277735, 31.648975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262901, 22.431082, 32.393532>,  <16.052288, 22.572334, 31.723156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262901, 22.431082, 32.393532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.609390, 22.429003, 32.193680>,  <16.817284, 22.427755, 32.073769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.609390, 22.429003, 32.193680>,  <16.262901, 22.431082, 32.393532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.609390, 22.429003, 32.193680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399283, 0.608353, 0.685915,
		0.300387, -0.793649, 0.529045,
		0.866222, -0.005199, -0.499633,
		16.869257, 22.427443, 32.043789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771147, 22.419796, 32.971939>,  <16.262901, 22.431082, 32.393532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771147, 22.419796, 32.971939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.983812, 22.499304, 32.642620>,  <17.111412, 22.547009, 32.445026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.983812, 22.499304, 32.642620>,  <16.771147, 22.419796, 32.971939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983812, 22.499304, 32.642620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577705, 0.625732, 0.524134,
		0.619342, -0.754290, 0.217858,
		0.531670, 0.198760, -0.823299,
		17.143312, 22.558933, 32.395630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<10.108718, 17.190435, 18.962883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.437032, 17.375311, 18.828602>,  <10.634020, 17.486237, 18.748034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.437032, 17.375311, 18.828602>,  <10.108718, 17.190435, 18.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437032, 17.375311, 18.828602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151983, 0.389805, 0.908269,
		0.550650, -0.796513, 0.249701,
		0.820783, 0.462189, -0.335702,
		10.683267, 17.513968, 18.727892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.712775, 17.046499, 19.489859>,  <10.108718, 17.190435, 18.962883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.712775, 17.046499, 19.489859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.861789, 17.351261, 19.277927>,  <10.951197, 17.534119, 19.150768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.861789, 17.351261, 19.277927>,  <10.712775, 17.046499, 19.489859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.861789, 17.351261, 19.277927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507555, 0.310689, 0.803654,
		0.776921, -0.568305, -0.270968,
		0.372534, 0.761907, -0.529827,
		10.973549, 17.579834, 19.118979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.407004, 16.937975, 19.597008>,  <10.712775, 17.046499, 19.489859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.407004, 16.937975, 19.597008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314472, 17.312595, 19.491667>,  <11.258953, 17.537369, 19.428461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.314472, 17.312595, 19.491667>,  <11.407004, 16.937975, 19.597008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.314472, 17.312595, 19.491667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396464, 0.337951, 0.853584,
		0.888427, 0.093050, -0.449488,
		-0.231331, 0.936553, -0.263354,
		11.245073, 17.593561, 19.412661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952677, 17.345049, 19.777424>,  <11.407004, 16.937975, 19.597008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.952677, 17.345049, 19.777424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.644156, 17.598679, 19.755371>,  <11.459043, 17.750856, 19.742140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.644156, 17.598679, 19.755371>,  <11.952677, 17.345049, 19.777424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.644156, 17.598679, 19.755371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357144, 0.502879, 0.787122,
		0.526819, 0.587420, -0.614329,
		-0.771304, 0.634074, -0.055132,
		11.412765, 17.788900, 19.738831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213552, 18.074423, 20.023106>,  <11.952677, 17.345049, 19.777424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213552, 18.074423, 20.023106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817255, 18.053713, 20.073305>,  <11.579477, 18.041286, 20.103426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817255, 18.053713, 20.073305>,  <12.213552, 18.074423, 20.023106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817255, 18.053713, 20.073305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101080, 0.335799, 0.936495,
		-0.090630, 0.940510, -0.327457,
		-0.990742, -0.051775, 0.125500,
		11.520033, 18.038181, 20.110954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120016, 18.681326, 20.341402>,  <12.213552, 18.074423, 20.023106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120016, 18.681326, 20.341402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787576, 18.465668, 20.395947>,  <11.588112, 18.336273, 20.428673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787576, 18.465668, 20.395947>,  <12.120016, 18.681326, 20.341402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787576, 18.465668, 20.395947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004253, 0.239035, 0.971002,
		-0.556106, 0.807580, -0.196369,
		-0.831100, -0.539145, 0.136364,
		11.538245, 18.303925, 20.436855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774478, 19.030363, 20.741531>,  <12.120016, 18.681326, 20.341402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774478, 19.030363, 20.741531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547273, 18.704184, 20.786081>,  <11.410950, 18.508476, 20.812811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547273, 18.704184, 20.786081>,  <11.774478, 19.030363, 20.741531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.547273, 18.704184, 20.786081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111631, 0.210410, 0.971219,
		-0.815413, 0.539233, -0.210545,
		-0.568014, -0.815448, 0.111376,
		11.376868, 18.459549, 20.819494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.032816, 19.133259, 21.113087>,  <11.774478, 19.030363, 20.741531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.032816, 19.133259, 21.113087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.173047, 18.763805, 21.175055>,  <11.257186, 18.542133, 21.212234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.173047, 18.763805, 21.175055>,  <11.032816, 19.133259, 21.113087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.173047, 18.763805, 21.175055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028306, 0.154892, 0.987526,
		-0.936106, -0.350589, 0.028157,
		0.350577, -0.923631, 0.154919,
		11.278220, 18.486715, 21.221531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.740758, 18.965733, 21.745314>,  <11.032816, 19.133259, 21.113087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.740758, 18.965733, 21.745314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.015355, 18.676592, 21.713783>,  <11.180114, 18.503107, 21.694866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.015355, 18.676592, 21.713783>,  <10.740758, 18.965733, 21.745314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.015355, 18.676592, 21.713783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054265, -0.057171, 0.996888,
		-0.725108, -0.688635, -0.000022,
		0.686494, -0.722851, -0.078824,
		11.221303, 18.459736, 21.690136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.511463, 18.372665, 22.121325>,  <10.740758, 18.965733, 21.745314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.511463, 18.372665, 22.121325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909971, 18.341146, 22.107256>,  <11.149076, 18.322235, 22.098814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909971, 18.341146, 22.107256>,  <10.511463, 18.372665, 22.121325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.909971, 18.341146, 22.107256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045600, 0.134707, 0.989836,
		-0.073261, -0.987747, 0.137798,
		0.996270, -0.078800, -0.035172,
		11.208852, 18.317507, 22.096704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.719335, 17.808529, 22.664644>,  <10.511463, 18.372665, 22.121325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.719335, 17.808529, 22.664644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028950, 18.049179, 22.585741>,  <11.214719, 18.193569, 22.538399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028950, 18.049179, 22.585741>,  <10.719335, 17.808529, 22.664644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028950, 18.049179, 22.585741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094617, 0.198141, 0.975596,
		0.626029, -0.773813, 0.096445,
		0.774038, 0.601626, -0.197257,
		11.261162, 18.229668, 22.526564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.217370, 17.695335, 23.165318>,  <10.719335, 17.808529, 22.664644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.217370, 17.695335, 23.165318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.332791, 18.063339, 23.059244>,  <11.402044, 18.284142, 22.995600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.332791, 18.063339, 23.059244>,  <11.217370, 17.695335, 23.165318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.332791, 18.063339, 23.059244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102562, 0.245669, 0.963913,
		0.951955, -0.305337, -0.023469,
		0.288553, 0.920009, -0.265181,
		11.419357, 18.339342, 22.979691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768600, 17.179306, 23.382921>,  <11.217370, 17.695335, 23.165318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768600, 17.179306, 23.382921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.602353, 16.871756, 23.577276>,  <11.502604, 16.687225, 23.693890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.602353, 16.871756, 23.577276>,  <11.768600, 17.179306, 23.382921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.602353, 16.871756, 23.577276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136055, -0.475647, -0.869050,
		0.899306, -0.427300, 0.093077,
		-0.415618, -0.768878, 0.485889,
		11.477668, 16.641092, 23.723043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.140053, 16.517260, 23.259180>,  <11.768600, 17.179306, 23.382921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.140053, 16.517260, 23.259180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775105, 16.385584, 23.356518>,  <11.556136, 16.306578, 23.414921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775105, 16.385584, 23.356518>,  <12.140053, 16.517260, 23.259180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.775105, 16.385584, 23.356518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044040, -0.512056, -0.857822,
		0.406991, -0.793368, 0.452688,
		-0.912370, -0.329190, 0.243342,
		11.501393, 16.286827, 23.429520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.149980, 15.740662, 23.145023>,  <12.140053, 16.517260, 23.259180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.149980, 15.740662, 23.145023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.779750, 15.891590, 23.132742>,  <11.557612, 15.982147, 23.125374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.779750, 15.891590, 23.132742>,  <12.149980, 15.740662, 23.145023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.779750, 15.891590, 23.132742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162252, -0.468665, -0.868347,
		-0.342033, -0.798738, 0.495005,
		-0.925574, 0.377319, -0.030703,
		11.502078, 16.004786, 23.123531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.835647, 15.218833, 22.976164>,  <12.149980, 15.740662, 23.145023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.835647, 15.218833, 22.976164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.566627, 15.501725, 22.888985>,  <11.405214, 15.671460, 22.836678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.566627, 15.501725, 22.888985>,  <11.835647, 15.218833, 22.976164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.566627, 15.501725, 22.888985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212413, -0.466589, -0.858589,
		-0.708912, -0.531150, 0.464029,
		-0.672550, 0.707230, -0.217948,
		11.364861, 15.713894, 22.823601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198897, 14.918970, 22.821646>,  <11.835647, 15.218833, 22.976164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198897, 14.918970, 22.821646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.202155, 15.268545, 22.627258>,  <11.204110, 15.478291, 22.510626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.202155, 15.268545, 22.627258>,  <11.198897, 14.918970, 22.821646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.202155, 15.268545, 22.627258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409519, -0.440447, -0.798937,
		-0.912265, 0.205521, 0.354308,
		0.008144, 0.873938, -0.485969,
		11.204598, 15.530726, 22.481468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.676364, 14.757881, 22.331169>,  <11.198897, 14.918970, 22.821646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.676364, 14.757881, 22.331169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845579, 15.092587, 22.192108>,  <10.947108, 15.293411, 22.108671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845579, 15.092587, 22.192108>,  <10.676364, 14.757881, 22.331169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845579, 15.092587, 22.192108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319826, -0.221089, -0.921320,
		-0.847792, 0.500941, 0.174091,
		0.423037, 0.836766, -0.347652,
		10.972490, 15.343617, 22.087812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.112178, 15.067189, 21.896992>,  <10.676364, 14.757881, 22.331169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.112178, 15.067189, 21.896992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.467293, 15.210477, 21.781397>,  <10.680362, 15.296450, 21.712040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.467293, 15.210477, 21.781397>,  <10.112178, 15.067189, 21.896992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.467293, 15.210477, 21.781397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167853, -0.332647, -0.927993,
		-0.428555, 0.872368, -0.235192,
		0.887787, 0.358218, -0.288987,
		10.733629, 15.317943, 21.694700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.002661, 15.479563, 21.247683>,  <10.112178, 15.067189, 21.896992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.002661, 15.479563, 21.247683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.385570, 15.363910, 21.245375>,  <10.615314, 15.294518, 21.243990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.385570, 15.363910, 21.245375>,  <10.002661, 15.479563, 21.247683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.385570, 15.363910, 21.245375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024443, -0.061019, -0.997837,
		0.288156, 0.955342, -0.065479,
		0.957271, -0.289134, -0.005768,
		10.672751, 15.277169, 21.243645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318929, 15.954473, 20.798441>,  <10.002661, 15.479563, 21.247683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318929, 15.954473, 20.798441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580194, 15.652059, 20.815334>,  <10.736954, 15.470610, 20.825470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580194, 15.652059, 20.815334>,  <10.318929, 15.954473, 20.798441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.580194, 15.652059, 20.815334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066196, 0.001450, -0.997805,
		0.754316, 0.654528, 0.050994,
		0.653165, -0.756036, 0.042233,
		10.776144, 15.425247, 20.828005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.611094, 16.057051, 20.184872>,  <10.318929, 15.954473, 20.798441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.611094, 16.057051, 20.184872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.705843, 15.682947, 20.290085>,  <10.762692, 15.458486, 20.353212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.705843, 15.682947, 20.290085>,  <10.611094, 16.057051, 20.184872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.705843, 15.682947, 20.290085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150514, -0.232141, -0.960966,
		0.959811, 0.267215, 0.085782,
		0.236871, -0.935257, 0.263031,
		10.776904, 15.402369, 20.368994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.249066, 15.885736, 19.914282>,  <10.611094, 16.057051, 20.184872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.249066, 15.885736, 19.914282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.095922, 15.525213, 19.995338>,  <11.004036, 15.308899, 20.043972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.095922, 15.525213, 19.995338>,  <11.249066, 15.885736, 19.914282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.095922, 15.525213, 19.995338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087505, -0.253750, -0.963304,
		0.919653, -0.351077, 0.176020,
		-0.382859, -0.901308, 0.202641,
		10.981065, 15.254821, 20.056131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.778022, 15.372245, 19.580753>,  <11.249066, 15.885736, 19.914282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.778022, 15.372245, 19.580753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.435376, 15.175079, 19.641743>,  <11.229789, 15.056780, 19.678337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.435376, 15.175079, 19.641743>,  <11.778022, 15.372245, 19.580753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.435376, 15.175079, 19.641743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113543, -0.468360, -0.876212,
		0.503309, -0.733263, 0.457171,
		-0.856614, -0.492914, 0.152473,
		11.178391, 15.027205, 19.687485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.041521, 14.772034, 19.426531>,  <11.778022, 15.372245, 19.580753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.041521, 14.772034, 19.426531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642857, 14.792466, 19.401056>,  <11.403658, 14.804726, 19.385771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642857, 14.792466, 19.401056>,  <12.041521, 14.772034, 19.426531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.642857, 14.792466, 19.401056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053117, -0.186671, -0.980986,
		-0.061997, -0.981094, 0.183335,
		-0.996662, 0.051080, -0.063686,
		11.343858, 14.807791, 19.381950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.813791, 14.062370, 19.176998>,  <12.041521, 14.772034, 19.426531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.813791, 14.062370, 19.176998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504531, 14.300562, 19.089689>,  <11.318974, 14.443477, 19.037304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504531, 14.300562, 19.089689>,  <11.813791, 14.062370, 19.176998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.504531, 14.300562, 19.089689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049404, -0.399657, -0.915332,
		-0.632296, -0.696906, 0.338414,
		-0.773150, 0.595480, -0.218272,
		11.272586, 14.479206, 19.024208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488832, 14.067788, 19.304401>,  <11.813791, 14.062370, 19.176998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488832, 14.067788, 19.304401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.554293, 14.011941, 18.913767>,  <12.593569, 13.978433, 18.679386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.554293, 14.011941, 18.913767>,  <12.488832, 14.067788, 19.304401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.554293, 14.011941, 18.913767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775367, -0.593847, 0.214831,
		-0.609939, -0.792372, 0.011071,
		0.163652, -0.139618, -0.976588,
		12.603388, 13.970056, 18.620790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.761459, 13.449552, 19.282595>,  <12.488832, 14.067788, 19.304401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.761459, 13.449552, 19.282595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.878688, 13.643819, 18.953175>,  <12.949025, 13.760379, 18.755522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.878688, 13.643819, 18.953175>,  <12.761459, 13.449552, 19.282595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.878688, 13.643819, 18.953175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937731, -0.314008, 0.148525,
		-0.186468, -0.815797, -0.547453,
		0.293071, 0.485669, -0.823551,
		12.966609, 13.789519, 18.706110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.259434, 13.070425, 18.979170>,  <12.761459, 13.449552, 19.282595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.259434, 13.070425, 18.979170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.320681, 13.405199, 18.768990>,  <13.357429, 13.606063, 18.642881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.320681, 13.405199, 18.768990>,  <13.259434, 13.070425, 18.979170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320681, 13.405199, 18.768990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987899, -0.142950, 0.060184,
		-0.024743, -0.528305, -0.848694,
		0.153117, 0.836934, -0.525449,
		13.366615, 13.656280, 18.611355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826068, 12.891544, 18.426399>,  <13.259434, 13.070425, 18.979170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826068, 12.891544, 18.426399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837703, 13.279402, 18.523514>,  <13.844684, 13.512116, 18.581783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837703, 13.279402, 18.523514>,  <13.826068, 12.891544, 18.426399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837703, 13.279402, 18.523514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960498, -0.094365, 0.261800,
		0.276763, 0.225582, -0.934085,
		0.029088, 0.969643, 0.242788,
		13.846429, 13.570294, 18.596350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495274, 13.006881, 18.370377>,  <13.826068, 12.891544, 18.426399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495274, 13.006881, 18.370377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381720, 13.345920, 18.549704>,  <14.313587, 13.549343, 18.657301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381720, 13.345920, 18.549704>,  <14.495274, 13.006881, 18.370377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.381720, 13.345920, 18.549704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869691, 0.030714, 0.492640,
		0.403790, 0.529752, -0.745866,
		-0.283885, 0.847596, 0.448319,
		14.296554, 13.600199, 18.684198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.041972, 13.451734, 18.208927>,  <14.495274, 13.006881, 18.370377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.041972, 13.451734, 18.208927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838848, 13.585707, 18.526405>,  <14.716973, 13.666090, 18.716892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838848, 13.585707, 18.526405>,  <15.041972, 13.451734, 18.208927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838848, 13.585707, 18.526405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861371, 0.183549, 0.473655,
		0.012961, 0.924192, -0.381709,
		-0.507810, 0.334932, 0.793694,
		14.686505, 13.686186, 18.764513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444411, 14.006206, 18.503712>,  <15.041972, 13.451734, 18.208927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444411, 14.006206, 18.503712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199848, 13.928029, 18.810432>,  <15.053110, 13.881123, 18.994465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199848, 13.928029, 18.810432>,  <15.444411, 14.006206, 18.503712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.199848, 13.928029, 18.810432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692687, 0.336305, 0.638031,
		-0.382576, 0.921250, -0.070239,
		-0.611408, -0.195442, 0.766800,
		15.016426, 13.869396, 19.040472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.512856, 14.602389, 18.982225>,  <15.444411, 14.006206, 18.503712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.512856, 14.602389, 18.982225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363169, 14.300366, 19.197575>,  <15.273355, 14.119152, 19.326784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363169, 14.300366, 19.197575>,  <15.512856, 14.602389, 18.982225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363169, 14.300366, 19.197575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592783, 0.251686, 0.765024,
		-0.713139, 0.605426, 0.353400,
		-0.374220, -0.755059, 0.538374,
		15.250903, 14.073849, 19.359087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477410, 14.940081, 19.570374>,  <15.512856, 14.602389, 18.982225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477410, 14.940081, 19.570374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489473, 14.546316, 19.639683>,  <15.496711, 14.310058, 19.681269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489473, 14.546316, 19.639683>,  <15.477410, 14.940081, 19.570374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489473, 14.546316, 19.639683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643434, 0.151777, 0.750304,
		-0.764908, 0.088863, 0.637981,
		0.030156, -0.984412, 0.173273,
		15.498520, 14.250993, 19.691664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419592, 14.893338, 20.295849>,  <15.477410, 14.940081, 19.570374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419592, 14.893338, 20.295849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.597031, 14.556034, 20.174433>,  <15.703494, 14.353652, 20.101583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.597031, 14.556034, 20.174433>,  <15.419592, 14.893338, 20.295849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597031, 14.556034, 20.174433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688701, 0.104003, 0.717547,
		-0.573510, -0.527348, 0.626889,
		0.443596, -0.843260, -0.303539,
		15.730109, 14.303056, 20.083370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.297982, 14.402541, 20.844013>,  <15.419592, 14.893338, 20.295849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.297982, 14.402541, 20.844013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.622031, 14.280349, 20.643860>,  <15.816461, 14.207033, 20.523767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.622031, 14.280349, 20.643860>,  <15.297982, 14.402541, 20.844013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622031, 14.280349, 20.643860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507321, -0.062462, 0.859490,
		-0.293814, -0.950147, 0.104376,
		0.810123, -0.305483, -0.500382,
		15.865068, 14.188704, 20.493746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559809, 13.767924, 21.198051>,  <15.297982, 14.402541, 20.844013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559809, 13.767924, 21.198051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863571, 13.918884, 20.986061>,  <16.045828, 14.009460, 20.858868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863571, 13.918884, 20.986061>,  <15.559809, 13.767924, 21.198051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863571, 13.918884, 20.986061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592046, -0.063072, 0.803433,
		0.269789, -0.923900, -0.271335,
		0.759405, 0.377400, -0.529975,
		16.091393, 14.032104, 20.827068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077972, 13.637883, 21.692213>,  <15.559809, 13.767924, 21.198051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077972, 13.637883, 21.692213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291687, 13.837250, 21.419121>,  <16.419916, 13.956870, 21.255266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291687, 13.837250, 21.419121>,  <16.077972, 13.637883, 21.692213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.291687, 13.837250, 21.419121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649361, 0.275076, 0.708988,
		0.541174, -0.822140, -0.176683,
		0.534286, 0.498417, -0.682729,
		16.451973, 13.986774, 21.214302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906300, 13.457194, 21.759399>,  <16.077972, 13.637883, 21.692213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906300, 13.457194, 21.759399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850574, 13.812037, 21.583385>,  <16.817139, 14.024943, 21.477777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850574, 13.812037, 21.583385>,  <16.906300, 13.457194, 21.759399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850574, 13.812037, 21.583385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644886, 0.418498, 0.639516,
		0.751474, -0.194679, -0.630386,
		-0.139315, 0.887107, -0.440037,
		16.808781, 14.078170, 21.451374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628115, 13.716429, 21.796246>,  <16.906300, 13.457194, 21.759399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628115, 13.716429, 21.796246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411089, 14.039743, 21.704771>,  <17.280874, 14.233732, 21.649887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411089, 14.039743, 21.704771>,  <17.628115, 13.716429, 21.796246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.411089, 14.039743, 21.704771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628913, 0.571344, 0.527291,
		0.556860, 0.142265, -0.818332,
		-0.542564, 0.808287, -0.228686,
		17.248320, 14.282229, 21.636166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054502, 14.186536, 21.583902>,  <17.628115, 13.716429, 21.796246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054502, 14.186536, 21.583902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725260, 14.376255, 21.708826>,  <17.527714, 14.490087, 21.783781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725260, 14.376255, 21.708826>,  <18.054502, 14.186536, 21.583902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725260, 14.376255, 21.708826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553403, 0.546501, 0.628556,
		0.127445, 0.690201, -0.712306,
		-0.823106, 0.474299, 0.312311,
		17.478329, 14.518544, 21.802519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333750, 14.829588, 21.677868>,  <18.054502, 14.186536, 21.583902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333750, 14.829588, 21.677868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.984539, 14.855817, 21.871166>,  <17.775013, 14.871554, 21.987144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.984539, 14.855817, 21.871166>,  <18.333750, 14.829588, 21.677868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.984539, 14.855817, 21.871166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461818, 0.429534, 0.776031,
		-0.156684, 0.900667, -0.405277,
		-0.873026, 0.065573, 0.483245,
		17.722631, 14.875488, 22.016140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238993, 15.543148, 21.822523>,  <18.333750, 14.829588, 21.677868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238993, 15.543148, 21.822523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015879, 15.332083, 22.078787>,  <17.882010, 15.205443, 22.232546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015879, 15.332083, 22.078787>,  <18.238993, 15.543148, 21.822523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015879, 15.332083, 22.078787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397480, 0.507800, 0.764297,
		-0.728619, 0.680963, -0.073507,
		-0.557785, -0.527664, 0.640661,
		17.848543, 15.173783, 22.270985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872040, 15.986847, 22.265570>,  <18.238993, 15.543148, 21.822523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872040, 15.986847, 22.265570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.881292, 15.631373, 22.448744>,  <17.886845, 15.418089, 22.558649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.881292, 15.631373, 22.448744>,  <17.872040, 15.986847, 22.265570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881292, 15.631373, 22.448744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107016, 0.457628, 0.882680,
		-0.993988, 0.028589, 0.105688,
		0.023131, -0.888684, 0.457936,
		17.888231, 15.364768, 22.586124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554096, 16.155500, 22.832476>,  <17.872040, 15.986847, 22.265570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554096, 16.155500, 22.832476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732479, 15.813812, 22.939383>,  <17.839510, 15.608800, 23.003527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732479, 15.813812, 22.939383>,  <17.554096, 16.155500, 22.832476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732479, 15.813812, 22.939383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252503, 0.406547, 0.878044,
		-0.858699, -0.324085, 0.396996,
		0.445958, -0.854218, 0.267269,
		17.866266, 15.557547, 23.019564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273966, 16.001993, 23.477467>,  <17.554096, 16.155500, 22.832476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273966, 16.001993, 23.477467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619257, 15.801208, 23.456017>,  <17.826431, 15.680737, 23.443146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619257, 15.801208, 23.456017>,  <17.273966, 16.001993, 23.477467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619257, 15.801208, 23.456017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293255, 0.412154, 0.862630,
		-0.410905, -0.760370, 0.502984,
		0.863225, -0.501962, -0.053627,
		17.878225, 15.650620, 23.439928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448191, 15.850649, 24.158485>,  <17.273966, 16.001993, 23.477467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448191, 15.850649, 24.158485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.800894, 15.770134, 23.987844>,  <18.012516, 15.721826, 23.885460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.800894, 15.770134, 23.987844>,  <17.448191, 15.850649, 24.158485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800894, 15.770134, 23.987844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469361, 0.464421, 0.751008,
		0.046955, -0.862436, 0.503983,
		0.881757, -0.201286, -0.426601,
		18.065420, 15.709748, 23.859865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826420, 15.504529, 24.650084>,  <17.448191, 15.850649, 24.158485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826420, 15.504529, 24.650084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.115417, 15.641844, 24.410032>,  <18.288816, 15.724233, 24.266001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.115417, 15.641844, 24.410032>,  <17.826420, 15.504529, 24.650084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.115417, 15.641844, 24.410032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519836, 0.302547, 0.798896,
		0.455819, -0.889167, 0.040135,
		0.722495, 0.343289, -0.600128,
		18.332167, 15.744830, 24.229994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454973, 15.315348, 24.991667>,  <17.826420, 15.504529, 24.650084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454973, 15.315348, 24.991667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532524, 15.609705, 24.732168>,  <18.579056, 15.786320, 24.576469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532524, 15.609705, 24.732168>,  <18.454973, 15.315348, 24.991667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532524, 15.609705, 24.732168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558287, 0.461003, 0.689776,
		0.806676, -0.495919, -0.321461,
		0.193879, 0.735894, -0.648746,
		18.590689, 15.830473, 24.537544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.130598, 15.513039, 25.041500>,  <18.454973, 15.315348, 24.991667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.130598, 15.513039, 25.041500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.018101, 15.852146, 24.861639>,  <18.950602, 16.055611, 24.753721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.018101, 15.852146, 24.861639>,  <19.130598, 15.513039, 25.041500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.018101, 15.852146, 24.861639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533847, 0.527590, 0.660800,
		0.797439, -0.054200, -0.600961,
		-0.281245, 0.847769, -0.449655,
		18.933727, 16.106476, 24.726742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759396, 15.894068, 24.806328>,  <19.130598, 15.513039, 25.041500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759396, 15.894068, 24.806328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449419, 16.144737, 24.839188>,  <19.263433, 16.295139, 24.858904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449419, 16.144737, 24.839188>,  <19.759396, 15.894068, 24.806328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449419, 16.144737, 24.839188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503999, 0.534284, 0.678620,
		0.381383, 0.567293, -0.729881,
		-0.774940, 0.626674, 0.082149,
		19.216938, 16.332739, 24.863832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.032095, 16.590641, 24.847027>,  <19.759396, 15.894068, 24.806328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.032095, 16.590641, 24.847027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662836, 16.627031, 24.996437>,  <19.441280, 16.648867, 25.086082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662836, 16.627031, 24.996437>,  <20.032095, 16.590641, 24.847027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662836, 16.627031, 24.996437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355922, 0.569504, 0.740935,
		-0.145316, 0.816939, -0.558117,
		-0.923148, 0.090977, 0.373524,
		19.385891, 16.654324, 25.108494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.887730, 17.288231, 24.987244>,  <20.032095, 16.590641, 24.847027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.887730, 17.288231, 24.987244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637415, 17.088280, 25.226746>,  <19.487226, 16.968309, 25.370447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637415, 17.088280, 25.226746>,  <19.887730, 17.288231, 24.987244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.637415, 17.088280, 25.226746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316050, 0.539297, 0.780559,
		-0.713092, 0.677702, -0.179499,
		-0.625789, -0.499880, 0.598756,
		19.449678, 16.938316, 25.406372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
