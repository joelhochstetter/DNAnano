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
	<24.518541, 34.767467, 34.810856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363846, 35.069260, 35.022964>,  <24.271029, 35.250336, 35.150230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363846, 35.069260, 35.022964>,  <24.518541, 34.767467, 34.810856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363846, 35.069260, 35.022964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549306, -0.273408, 0.789627,
		0.740741, 0.596660, -0.308705,
		-0.386737, 0.754483, 0.530273,
		24.247826, 35.295605, 35.182045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091484, 35.348709, 35.049644>,  <24.518541, 34.767467, 34.810856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091484, 35.348709, 35.049644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797579, 35.342972, 35.320911>,  <24.621235, 35.339531, 35.483673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797579, 35.342972, 35.320911>,  <25.091484, 35.348709, 35.049644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797579, 35.342972, 35.320911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663297, -0.224455, 0.713902,
		0.141980, 0.974379, 0.174434,
		-0.734764, -0.014342, 0.678171,
		24.577150, 35.338669, 35.524364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290844, 35.755657, 35.709320>,  <25.091484, 35.348709, 35.049644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290844, 35.755657, 35.709320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032301, 35.455132, 35.762615>,  <24.877174, 35.274818, 35.794594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032301, 35.455132, 35.762615>,  <25.290844, 35.755657, 35.709320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032301, 35.455132, 35.762615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544817, -0.332161, 0.769964,
		-0.534223, 0.570266, 0.624021,
		-0.646359, -0.751310, 0.133242,
		24.838392, 35.229740, 35.802589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250273, 35.801521, 36.379913>,  <25.290844, 35.755657, 35.709320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250273, 35.801521, 36.379913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183001, 35.436752, 36.230183>,  <25.142637, 35.217892, 36.140343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183001, 35.436752, 36.230183>,  <25.250273, 35.801521, 36.379913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183001, 35.436752, 36.230183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618030, -0.393377, 0.680656,
		-0.767955, -0.116872, 0.629751,
		-0.168180, -0.911919, -0.374326,
		25.132547, 35.163177, 36.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369982, 35.353611, 36.975609>,  <25.250273, 35.801521, 36.379913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369982, 35.353611, 36.975609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366236, 35.089619, 36.675117>,  <25.363989, 34.931225, 36.494823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366236, 35.089619, 36.675117>,  <25.369982, 35.353611, 36.975609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366236, 35.089619, 36.675117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368180, -0.700756, 0.611053,
		-0.929708, -0.270864, 0.249553,
		-0.009364, -0.659981, -0.751224,
		25.363426, 34.891624, 36.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179520, 34.657654, 37.206654>,  <25.369982, 35.353611, 36.975609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179520, 34.657654, 37.206654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423895, 34.632607, 36.890976>,  <25.570520, 34.617577, 36.701569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423895, 34.632607, 36.890976>,  <25.179520, 34.657654, 37.206654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423895, 34.632607, 36.890976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612162, -0.594755, 0.521080,
		-0.502008, -0.801465, -0.325026,
		0.610938, -0.062617, -0.789198,
		25.607176, 34.613823, 36.654217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432365, 33.888409, 37.031883>,  <25.179520, 34.657654, 37.206654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432365, 33.888409, 37.031883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725756, 34.148972, 36.954235>,  <25.901791, 34.305309, 36.907646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725756, 34.148972, 36.954235>,  <25.432365, 33.888409, 37.031883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725756, 34.148972, 36.954235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636155, -0.557294, 0.533601,
		0.239411, -0.514873, -0.823158,
		0.733477, 0.651406, -0.194117,
		25.945799, 34.344395, 36.896000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957396, 33.555782, 36.964924>,  <25.432365, 33.888409, 37.031883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957396, 33.555782, 36.964924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163404, 33.896069, 37.006950>,  <26.287010, 34.100239, 37.032166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163404, 33.896069, 37.006950>,  <25.957396, 33.555782, 36.964924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163404, 33.896069, 37.006950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748879, -0.506200, 0.427718,
		0.417051, -0.141600, -0.897785,
		0.515023, 0.850712, 0.105070,
		26.317911, 34.151283, 37.038471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695683, 33.502720, 36.600700>,  <25.957396, 33.555782, 36.964924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695683, 33.502720, 36.600700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697653, 33.789234, 36.879818>,  <26.698835, 33.961143, 37.047287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697653, 33.789234, 36.879818>,  <26.695683, 33.502720, 36.600700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697653, 33.789234, 36.879818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816928, -0.405322, 0.410296,
		0.576719, 0.568025, -0.587149,
		0.004927, 0.716283, 0.697792,
		26.699131, 34.004120, 37.089157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382599, 33.758762, 36.577785>,  <26.695683, 33.502720, 36.600700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382599, 33.758762, 36.577785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217300, 33.866341, 36.925785>,  <27.118120, 33.930889, 37.134583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217300, 33.866341, 36.925785>,  <27.382599, 33.758762, 36.577785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217300, 33.866341, 36.925785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885544, -0.103964, 0.452772,
		0.212221, 0.957527, -0.195202,
		-0.413247, 0.268948, 0.869996,
		27.093327, 33.947025, 37.186783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851679, 34.231236, 36.861126>,  <27.382599, 33.758762, 36.577785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851679, 34.231236, 36.861126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611546, 34.101521, 37.153545>,  <27.467464, 34.023689, 37.328999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611546, 34.101521, 37.153545>,  <27.851679, 34.231236, 36.861126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611546, 34.101521, 37.153545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759040, 0.056886, 0.648554,
		-0.251907, 0.944245, 0.212000,
		-0.600335, -0.324292, 0.731049,
		27.431446, 34.004234, 37.372860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831470, 34.692619, 37.469646>,  <27.851679, 34.231236, 36.861126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831470, 34.692619, 37.469646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726871, 34.335487, 37.616325>,  <27.664112, 34.121208, 37.704334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726871, 34.335487, 37.616325>,  <27.831470, 34.692619, 37.469646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726871, 34.335487, 37.616325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844016, -0.027208, 0.535628,
		-0.468249, 0.449567, 0.760679,
		-0.261497, -0.892832, 0.366701,
		27.648422, 34.067638, 37.726337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885048, 34.710335, 38.181221>,  <27.831470, 34.692619, 37.469646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885048, 34.710335, 38.181221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909658, 34.319504, 38.099701>,  <27.924425, 34.085007, 38.050789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909658, 34.319504, 38.099701>,  <27.885048, 34.710335, 38.181221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909658, 34.319504, 38.099701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820935, -0.066601, 0.567125,
		-0.567698, -0.202201, 0.798019,
		0.061524, -0.977077, -0.203803,
		27.928116, 34.026382, 38.038559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017809, 34.433491, 38.859470>,  <27.885048, 34.710335, 38.181221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017809, 34.433491, 38.859470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105148, 34.131321, 38.612354>,  <28.157553, 33.950020, 38.464085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105148, 34.131321, 38.612354>,  <28.017809, 34.433491, 38.859470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105148, 34.131321, 38.612354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726757, -0.296613, 0.619553,
		-0.651267, -0.584261, 0.484242,
		0.218348, -0.755420, -0.617790,
		28.170652, 33.904694, 38.427017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100861, 33.810707, 39.278217>,  <28.017809, 34.433491, 38.859470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100861, 33.810707, 39.278217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305691, 33.735203, 38.943039>,  <28.428589, 33.689899, 38.741932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305691, 33.735203, 38.943039>,  <28.100861, 33.810707, 39.278217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305691, 33.735203, 38.943039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713531, -0.449616, 0.537326,
		-0.478178, -0.873050, -0.095551,
		0.512074, -0.188759, -0.837944,
		28.459312, 33.678577, 38.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493637, 33.149635, 39.359024>,  <28.100861, 33.810707, 39.278217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493637, 33.149635, 39.359024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675301, 33.325417, 39.049026>,  <28.784298, 33.430885, 38.863026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675301, 33.325417, 39.049026>,  <28.493637, 33.149635, 39.359024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675301, 33.325417, 39.049026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890749, -0.241119, 0.385264,
		-0.017559, -0.865297, -0.500952,
		0.454157, 0.439458, -0.774996,
		28.811548, 33.457253, 38.816528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093374, 32.690498, 39.397404>,  <28.493637, 33.149635, 39.359024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093374, 32.690498, 39.397404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174723, 33.007599, 39.167553>,  <29.223532, 33.197857, 39.029644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174723, 33.007599, 39.167553>,  <29.093374, 32.690498, 39.397404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174723, 33.007599, 39.167553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978891, -0.176790, 0.102551,
		-0.020291, -0.583349, -0.811968,
		0.203371, 0.792747, -0.574623,
		29.235735, 33.245422, 38.995167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635881, 32.448978, 38.968761>,  <29.093374, 32.690498, 39.397404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635881, 32.448978, 38.968761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669575, 32.846756, 38.943508>,  <29.689791, 33.085423, 38.928356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669575, 32.846756, 38.943508>,  <29.635881, 32.448978, 38.968761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669575, 32.846756, 38.943508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993646, -0.088575, -0.069448,
		-0.074655, -0.056884, -0.995586,
		0.084233, 0.994444, -0.063135,
		29.694845, 33.145088, 38.924568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232397, 32.580685, 38.483002>,  <29.635881, 32.448978, 38.968761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232397, 32.580685, 38.483002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173046, 32.911537, 38.699829>,  <30.137436, 33.110050, 38.829926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173046, 32.911537, 38.699829>,  <30.232397, 32.580685, 38.483002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173046, 32.911537, 38.699829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978135, 0.041976, 0.203691,
		0.145725, 0.560438, -0.815275,
		-0.148379, 0.827132, 0.542067,
		30.128532, 33.159676, 38.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599546, 33.152203, 38.191826>,  <30.232397, 32.580685, 38.483002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599546, 33.152203, 38.191826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528704, 33.222961, 38.579090>,  <30.486198, 33.265415, 38.811451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528704, 33.222961, 38.579090>,  <30.599546, 33.152203, 38.191826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528704, 33.222961, 38.579090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982136, -0.031783, 0.185471,
		0.063580, 0.983716, -0.168106,
		-0.177108, 0.176896, 0.968164,
		30.475571, 33.276031, 38.869537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151070, 33.599781, 38.351746>,  <30.599546, 33.152203, 38.191826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151070, 33.599781, 38.351746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033588, 33.453678, 38.705090>,  <30.963099, 33.366016, 38.917095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033588, 33.453678, 38.705090>,  <31.151070, 33.599781, 38.351746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033588, 33.453678, 38.705090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954944, -0.070879, 0.288199,
		-0.042655, 0.928205, 0.369616,
		-0.293705, -0.365255, 0.883360,
		30.945477, 33.344101, 38.970097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489937, 34.014496, 38.784817>,  <31.151070, 33.599781, 38.351746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489937, 34.014496, 38.784817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380524, 33.687016, 38.986774>,  <31.314877, 33.490528, 39.107948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380524, 33.687016, 38.986774>,  <31.489937, 34.014496, 38.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380524, 33.687016, 38.986774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914641, -0.058941, 0.399947,
		-0.297677, 0.571192, 0.764936,
		-0.273533, -0.818697, 0.504890,
		31.298464, 33.441406, 39.138241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673866, 34.160099, 39.426819>,  <31.489937, 34.014496, 38.784817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673866, 34.160099, 39.426819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644333, 33.761402, 39.439827>,  <31.626614, 33.522186, 39.447632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644333, 33.761402, 39.439827>,  <31.673866, 34.160099, 39.426819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644333, 33.761402, 39.439827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860988, -0.047256, 0.506425,
		-0.503237, 0.065389, 0.861671,
		-0.073834, -0.996740, 0.032519,
		31.622183, 33.462379, 39.449581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954069, 34.008663, 39.978962>,  <31.673866, 34.160099, 39.426819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954069, 34.008663, 39.978962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952320, 33.633011, 39.841553>,  <31.951271, 33.407619, 39.759106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952320, 33.633011, 39.841553>,  <31.954069, 34.008663, 39.978962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952320, 33.633011, 39.841553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873421, -0.170868, 0.456004,
		-0.486946, -0.298048, 0.821006,
		-0.004373, -0.939133, -0.343525,
		31.951008, 33.351273, 39.738495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842377, 33.496635, 40.522518>,  <31.954069, 34.008663, 39.978962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842377, 33.496635, 40.522518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038639, 33.325905, 40.218655>,  <32.156395, 33.223465, 40.036339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038639, 33.325905, 40.218655>,  <31.842377, 33.496635, 40.522518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038639, 33.325905, 40.218655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827883, -0.043575, 0.559205,
		-0.271787, -0.903282, 0.331985,
		0.490654, -0.426830, -0.759655,
		32.185837, 33.197857, 39.990757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351051, 32.950668, 40.795898>,  <31.842377, 33.496635, 40.522518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351051, 32.950668, 40.795898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502548, 33.049831, 40.439228>,  <32.593445, 33.109329, 40.225224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502548, 33.049831, 40.439228>,  <32.351051, 32.950668, 40.795898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502548, 33.049831, 40.439228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864193, 0.250098, 0.436602,
		0.331247, -0.935943, -0.119521,
		0.378743, 0.247912, -0.891680,
		32.616173, 33.124207, 40.171722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917210, 32.574623, 40.822971>,  <32.351051, 32.950668, 40.795898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917210, 32.574623, 40.822971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946136, 32.902592, 40.595814>,  <32.963493, 33.099373, 40.459518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946136, 32.902592, 40.595814>,  <32.917210, 32.574623, 40.822971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946136, 32.902592, 40.595814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850097, 0.247119, 0.465046,
		0.521637, -0.516398, -0.679138,
		0.072321, 0.819918, -0.567895,
		32.967834, 33.148567, 40.425446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605965, 32.705387, 40.599888>,  <32.917210, 32.574623, 40.822971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605965, 32.705387, 40.599888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500526, 33.082382, 40.517673>,  <33.437263, 33.308578, 40.468346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500526, 33.082382, 40.517673>,  <33.605965, 32.705387, 40.599888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500526, 33.082382, 40.517673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945649, 0.294535, 0.137830,
		0.190439, -0.158031, -0.968896,
		-0.263593, 0.942484, -0.205533,
		33.421448, 33.365128, 40.456013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968060, 32.884449, 39.965469>,  <33.605965, 32.705387, 40.599888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968060, 32.884449, 39.965469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880615, 33.218292, 40.167713>,  <33.828148, 33.418598, 40.289059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880615, 33.218292, 40.167713>,  <33.968060, 32.884449, 39.965469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880615, 33.218292, 40.167713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963023, 0.268137, -0.026236,
		-0.157471, 0.481182, -0.862361,
		-0.218607, 0.834606, 0.505613,
		33.815033, 33.468674, 40.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650890, 33.487144, 39.663147>,  <33.968060, 32.884449, 39.965469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650890, 33.487144, 39.663147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269962, 33.599617, 39.710518>,  <33.041405, 33.667099, 39.738941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269962, 33.599617, 39.710518>,  <33.650890, 33.487144, 39.663147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269962, 33.599617, 39.710518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081844, 0.609364, -0.788655,
		-0.293919, -0.741359, -0.603323,
		-0.952320, 0.281179, 0.118429,
		32.984268, 33.683971, 39.746048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389580, 33.528862, 38.949329>,  <33.650890, 33.487144, 39.663147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389580, 33.528862, 38.949329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185314, 33.258156, 38.737213>,  <33.062756, 33.095734, 38.609943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185314, 33.258156, 38.737213>,  <33.389580, 33.528862, 38.949329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185314, 33.258156, 38.737213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721156, -0.001329, -0.692771,
		0.468140, -0.736196, 0.488734,
		-0.510665, -0.676767, -0.530290,
		33.032116, 33.055126, 38.578125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861370, 32.984421, 38.654331>,  <33.389580, 33.528862, 38.949329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861370, 32.984421, 38.654331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543079, 32.921459, 38.420391>,  <33.352104, 32.883682, 38.280025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543079, 32.921459, 38.420391>,  <33.861370, 32.984421, 38.654331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543079, 32.921459, 38.420391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605528, -0.186603, -0.773638,
		0.012636, -0.969744, 0.243795,
		-0.795724, -0.157401, -0.584849,
		33.304363, 32.874241, 38.244938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039143, 32.378147, 38.171593>,  <33.861370, 32.984421, 38.654331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039143, 32.378147, 38.171593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755409, 32.621151, 38.028606>,  <33.585171, 32.766953, 37.942814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755409, 32.621151, 38.028606>,  <34.039143, 32.378147, 38.171593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755409, 32.621151, 38.028606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474813, 0.037005, -0.879308,
		-0.520960, -0.793450, -0.314703,
		-0.709333, 0.607510, -0.357463,
		33.542610, 32.803402, 37.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798717, 31.981913, 37.655350>,  <34.039143, 32.378147, 38.171593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798717, 31.981913, 37.655350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737991, 32.374756, 37.610775>,  <33.701557, 32.610462, 37.584030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737991, 32.374756, 37.610775>,  <33.798717, 31.981913, 37.655350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737991, 32.374756, 37.610775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620287, 0.006887, -0.784345,
		-0.769543, -0.188197, -0.610234,
		-0.151814, 0.982107, -0.111437,
		33.692448, 32.669388, 37.577343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610699, 32.185165, 36.904732>,  <33.798717, 31.981913, 37.655350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610699, 32.185165, 36.904732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782784, 32.511127, 37.060093>,  <33.886032, 32.706703, 37.153309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782784, 32.511127, 37.060093>,  <33.610699, 32.185165, 36.904732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782784, 32.511127, 37.060093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650339, 0.018625, -0.759416,
		-0.626083, 0.579300, -0.521950,
		0.430208, 0.814901, 0.388403,
		33.911846, 32.755596, 37.176613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993561, 31.432608, 36.973484>,  <33.610699, 32.185165, 36.904732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993561, 31.432608, 36.973484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778690, 31.227118, 36.705894>,  <33.649769, 31.103823, 36.545341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778690, 31.227118, 36.705894>,  <33.993561, 31.432608, 36.973484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778690, 31.227118, 36.705894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623207, 0.776188, -0.095634,
		0.568381, 0.365538, -0.737106,
		-0.537175, -0.513726, -0.668976,
		33.617538, 31.073000, 36.505203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933037, 31.833668, 36.339630>,  <33.993561, 31.432608, 36.973484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933037, 31.833668, 36.339630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620483, 31.587322, 36.379936>,  <33.432953, 31.439514, 36.404118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620483, 31.587322, 36.379936>,  <33.933037, 31.833668, 36.339630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620483, 31.587322, 36.379936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623094, 0.778893, -0.071274,
		-0.034589, -0.118477, -0.992354,
		-0.781382, -0.615864, 0.100763,
		33.386070, 31.402563, 36.410164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405613, 32.092442, 35.828411>,  <33.933037, 31.833668, 36.339630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405613, 32.092442, 35.828411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201824, 31.855415, 36.077991>,  <33.079552, 31.713200, 36.227737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201824, 31.855415, 36.077991>,  <33.405613, 32.092442, 35.828411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201824, 31.855415, 36.077991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839424, 0.501709, -0.208939,
		-0.189231, -0.630204, -0.753017,
		-0.509469, -0.592562, 0.623947,
		33.048985, 31.677647, 36.265175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851707, 32.062263, 35.479446>,  <33.405613, 32.092442, 35.828411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851707, 32.062263, 35.479446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745831, 31.983513, 35.857056>,  <32.682304, 31.936262, 36.083622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745831, 31.983513, 35.857056>,  <32.851707, 32.062263, 35.479446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745831, 31.983513, 35.857056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755924, 0.650192, -0.076351,
		-0.598764, -0.733819, -0.320922,
		-0.264688, -0.196876, 0.944023,
		32.666424, 31.924450, 36.140263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112270, 31.901199, 35.484779>,  <32.851707, 32.062263, 35.479446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112270, 31.901199, 35.484779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215855, 32.031677, 35.848434>,  <32.278008, 32.109962, 36.066628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215855, 32.031677, 35.848434>,  <32.112270, 31.901199, 35.484779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215855, 32.031677, 35.848434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769768, 0.638249, -0.009736,
		-0.583433, -0.697305, 0.416379,
		0.258965, 0.326195, 0.909139,
		32.293545, 32.129536, 36.121178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462833, 31.735559, 35.944485>,  <32.112270, 31.901199, 35.484779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462833, 31.735559, 35.944485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676823, 32.030483, 36.109493>,  <31.805216, 32.207439, 36.208500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676823, 32.030483, 36.109493>,  <31.462833, 31.735559, 35.944485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676823, 32.030483, 36.109493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839744, 0.517735, 0.163647,
		-0.092919, -0.433962, 0.896127,
		0.534973, 0.737311, 0.412524,
		31.837315, 32.251678, 36.233250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008121, 32.039162, 36.275974>,  <31.462833, 31.735559, 35.944485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008121, 32.039162, 36.275974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294634, 32.318283, 36.277081>,  <31.466541, 32.485756, 36.277744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294634, 32.318283, 36.277081>,  <31.008121, 32.039162, 36.275974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294634, 32.318283, 36.277081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695520, 0.713598, 0.083844,
		0.056533, -0.061980, 0.996475,
		0.716279, 0.697808, 0.002767,
		31.509518, 32.527626, 36.277912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894733, 32.476627, 36.870953>,  <31.008121, 32.039162, 36.275974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894733, 32.476627, 36.870953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118486, 32.706451, 36.631966>,  <31.252737, 32.844345, 36.488575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118486, 32.706451, 36.631966>,  <30.894733, 32.476627, 36.870953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118486, 32.706451, 36.631966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585183, 0.784224, 0.206282,
		0.587071, 0.234238, 0.774907,
		0.559382, 0.574565, -0.597468,
		31.286301, 32.878822, 36.452724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824486, 33.096443, 37.250481>,  <30.894733, 32.476627, 36.870953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824486, 33.096443, 37.250481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923553, 33.182667, 36.872658>,  <30.982994, 33.234402, 36.645962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923553, 33.182667, 36.872658>,  <30.824486, 33.096443, 37.250481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923553, 33.182667, 36.872658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526391, 0.848423, 0.055599,
		0.813370, 0.483437, 0.323600,
		0.247671, 0.215563, -0.944559,
		30.997854, 33.247337, 36.589291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036877, 33.883118, 37.357979>,  <30.824486, 33.096443, 37.250481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036877, 33.883118, 37.357979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964399, 33.815693, 36.970421>,  <30.920912, 33.775238, 36.737885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964399, 33.815693, 36.970421>,  <31.036877, 33.883118, 37.357979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964399, 33.815693, 36.970421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598322, 0.800786, -0.027418,
		0.780499, 0.574743, -0.245951,
		-0.181196, -0.168558, -0.968895,
		30.910040, 33.765125, 36.679752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193563, 34.501926, 37.052135>,  <31.036877, 33.883118, 37.357979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193563, 34.501926, 37.052135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960077, 34.312157, 36.788559>,  <30.819986, 34.198296, 36.630413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960077, 34.312157, 36.788559>,  <31.193563, 34.501926, 37.052135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960077, 34.312157, 36.788559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531048, 0.836969, -0.132178,
		0.614218, 0.272772, -0.740494,
		-0.583716, -0.474424, -0.658937,
		30.784962, 34.169830, 36.590878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267513, 34.797493, 36.454853>,  <31.193563, 34.501926, 37.052135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267513, 34.797493, 36.454853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902971, 34.632977, 36.448322>,  <30.684246, 34.534267, 36.444405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902971, 34.632977, 36.448322>,  <31.267513, 34.797493, 36.454853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902971, 34.632977, 36.448322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411086, 0.911479, -0.014665,
		0.020914, -0.006653, -0.999759,
		-0.911357, -0.411293, -0.016328,
		30.629564, 34.509590, 36.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797201, 35.291325, 36.085247>,  <31.267513, 34.797493, 36.454853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797201, 35.291325, 36.085247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521534, 35.046955, 36.241100>,  <30.356134, 34.900333, 36.334614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521534, 35.046955, 36.241100>,  <30.797201, 35.291325, 36.085247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521534, 35.046955, 36.241100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697016, 0.705889, -0.126054,
		-0.198028, -0.358454, -0.912302,
		-0.689169, -0.610928, 0.389634,
		30.314783, 34.863678, 36.357990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222555, 35.388947, 35.630581>,  <30.797201, 35.291325, 36.085247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222555, 35.388947, 35.630581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064629, 35.204407, 35.948395>,  <29.969873, 35.093685, 36.139084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064629, 35.204407, 35.948395>,  <30.222555, 35.388947, 35.630581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064629, 35.204407, 35.948395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863465, 0.481802, -0.149312,
		-0.313922, -0.745001, -0.588579,
		-0.394817, -0.461346, 0.794532,
		29.946184, 35.066002, 36.186752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592533, 35.078510, 35.406349>,  <30.222555, 35.388947, 35.630581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592533, 35.078510, 35.406349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562078, 35.120686, 35.802952>,  <29.543806, 35.145988, 36.040913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562078, 35.120686, 35.802952>,  <29.592533, 35.078510, 35.406349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562078, 35.120686, 35.802952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872900, 0.473567, -0.117387,
		-0.481922, -0.874424, 0.055981,
		-0.076135, 0.105437, 0.991507,
		29.539238, 35.152317, 36.100403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960155, 34.844135, 35.537510>,  <29.592533, 35.078510, 35.406349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960155, 34.844135, 35.537510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025677, 35.082691, 35.851833>,  <29.064989, 35.225826, 36.040428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025677, 35.082691, 35.851833>,  <28.960155, 34.844135, 35.537510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025677, 35.082691, 35.851833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925952, 0.367707, -0.086055,
		-0.340267, -0.713521, 0.612459,
		0.163803, 0.596389, 0.785804,
		29.074818, 35.261608, 36.087574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348240, 34.885487, 35.920830>,  <28.960155, 34.844135, 35.537510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348240, 34.885487, 35.920830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552883, 35.189953, 36.080273>,  <28.675669, 35.372631, 36.175938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552883, 35.189953, 36.080273>,  <28.348240, 34.885487, 35.920830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552883, 35.189953, 36.080273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828628, 0.559774, -0.005388,
		-0.227229, -0.327538, 0.917107,
		0.511608, 0.761165, 0.398604,
		28.706366, 35.418301, 36.199852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178854, 35.074318, 36.572689>,  <28.348240, 34.885487, 35.920830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178854, 35.074318, 36.572689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341763, 35.411427, 36.431908>,  <28.439507, 35.613693, 36.347439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341763, 35.411427, 36.431908>,  <28.178854, 35.074318, 36.572689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341763, 35.411427, 36.431908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778727, 0.521784, 0.348319,
		0.477194, 0.132212, 0.868795,
		0.407271, 0.842770, -0.351949,
		28.463943, 35.664257, 36.326321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095192, 35.662407, 37.071892>,  <28.178854, 35.074318, 36.572689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095192, 35.662407, 37.071892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191444, 35.875092, 36.747082>,  <28.249197, 36.002701, 36.552197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191444, 35.875092, 36.747082>,  <28.095192, 35.662407, 37.071892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191444, 35.875092, 36.747082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708126, 0.668336, 0.227782,
		0.663815, 0.520196, 0.537351,
		0.240640, 0.531717, -0.812016,
		28.263634, 36.034603, 36.503475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918800, 36.353245, 37.225861>,  <28.095192, 35.662407, 37.071892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918800, 36.353245, 37.225861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938540, 36.339344, 36.826591>,  <27.950384, 36.331001, 36.587029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938540, 36.339344, 36.826591>,  <27.918800, 36.353245, 37.225861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938540, 36.339344, 36.826591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781085, 0.621510, -0.060255,
		0.622471, 0.782634, 0.003525,
		0.049349, -0.034754, -0.998177,
		27.953344, 36.328918, 36.527138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659748, 36.983345, 37.043991>,  <27.918800, 36.353245, 37.225861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659748, 36.983345, 37.043991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630081, 36.765759, 36.709663>,  <27.612282, 36.635208, 36.509068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630081, 36.765759, 36.709663>,  <27.659748, 36.983345, 37.043991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630081, 36.765759, 36.709663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866316, 0.450290, -0.216186,
		0.493960, 0.708053, -0.504643,
		-0.074165, -0.543967, -0.835823,
		27.607832, 36.602570, 36.458916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388926, 37.418335, 36.547268>,  <27.659748, 36.983345, 37.043991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388926, 37.418335, 36.547268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314867, 37.055557, 36.395912>,  <27.270432, 36.837891, 36.305099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314867, 37.055557, 36.395912>,  <27.388926, 37.418335, 36.547268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314867, 37.055557, 36.395912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848440, 0.341808, -0.404126,
		0.495855, 0.246217, -0.832770,
		-0.185145, -0.906942, -0.378387,
		27.259323, 36.783474, 36.282394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321383, 37.535297, 35.821098>,  <27.388926, 37.418335, 36.547268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321383, 37.535297, 35.821098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117678, 37.216160, 35.950153>,  <26.995455, 37.024677, 36.027584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117678, 37.216160, 35.950153>,  <27.321383, 37.535297, 35.821098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117678, 37.216160, 35.950153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845782, 0.394690, -0.358988,
		0.159077, -0.455696, -0.875806,
		-0.509261, -0.797847, 0.322634,
		26.964899, 36.976807, 36.046944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081079, 37.453037, 35.710667>,  <27.321383, 37.535297, 35.821098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081079, 37.453037, 35.710667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061630, 37.798203, 35.911873>,  <28.049961, 38.005302, 36.032597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061630, 37.798203, 35.911873>,  <28.081079, 37.453037, 35.710667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061630, 37.798203, 35.911873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807874, -0.262166, 0.527833,
		0.587345, 0.432038, -0.684374,
		-0.048624, 0.862909, 0.503015,
		28.047043, 38.057076, 36.062778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675653, 37.650261, 35.722775>,  <28.081079, 37.453037, 35.710667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675653, 37.650261, 35.722775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462181, 37.804234, 36.023975>,  <28.334097, 37.896618, 36.204697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462181, 37.804234, 36.023975>,  <28.675653, 37.650261, 35.722775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462181, 37.804234, 36.023975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753393, -0.188071, 0.630102,
		0.384163, 0.903580, -0.189634,
		-0.533683, 0.384931, 0.753001,
		28.302076, 37.919712, 36.249874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041410, 38.126991, 36.135014>,  <28.675653, 37.650261, 35.722775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041410, 38.126991, 36.135014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758827, 37.969547, 36.370296>,  <28.589277, 37.875080, 36.511467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758827, 37.969547, 36.370296>,  <29.041410, 38.126991, 36.135014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758827, 37.969547, 36.370296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685759, -0.175084, 0.706456,
		-0.175084, 0.902449, 0.393612,
		-0.706456, -0.393612, 0.588208,
		28.546890, 37.851463, 36.546761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252314, 38.373070, 36.811977>,  <29.041410, 38.126991, 36.135014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252314, 38.373070, 36.811977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037575, 38.037472, 36.847481>,  <28.908731, 37.836113, 36.868782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037575, 38.037472, 36.847481>,  <29.252314, 38.373070, 36.811977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037575, 38.037472, 36.847481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500689, -0.232158, 0.833914,
		-0.679047, 0.492124, 0.544710,
		-0.536848, -0.838998, 0.088755,
		28.876520, 37.785774, 36.874107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958586, 38.550800, 36.938610>,  <29.252314, 38.373070, 36.811977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958586, 38.550800, 36.938610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154516, 38.890064, 37.019302>,  <30.272076, 39.093624, 37.067719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154516, 38.890064, 37.019302>,  <29.958586, 38.550800, 36.938610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154516, 38.890064, 37.019302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867221, -0.450286, -0.212534,
		-0.089426, 0.279051, -0.956103,
		0.489827, 0.848159, 0.201732,
		30.301464, 39.144512, 37.079823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731070, 37.805000, 36.995686>,  <29.958586, 38.550800, 36.938610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731070, 37.805000, 36.995686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726601, 37.541645, 37.296722>,  <29.723919, 37.383633, 37.477345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726601, 37.541645, 37.296722>,  <29.731070, 37.805000, 36.995686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726601, 37.541645, 37.296722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718782, 0.517938, 0.463780,
		-0.695145, 0.546132, 0.467453,
		-0.011174, -0.658392, 0.752592,
		29.723249, 37.344128, 37.522499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441326, 38.092010, 37.694908>,  <29.731070, 37.805000, 36.995686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441326, 38.092010, 37.694908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693830, 37.791637, 37.772480>,  <29.845333, 37.611412, 37.819023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693830, 37.791637, 37.772480>,  <29.441326, 38.092010, 37.694908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693830, 37.791637, 37.772480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532651, 0.601522, 0.595360,
		-0.563729, -0.272531, 0.779703,
		0.631263, -0.750931, 0.193931,
		29.883209, 37.566357, 37.830658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534227, 38.150890, 38.431335>,  <29.441326, 38.092010, 37.694908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534227, 38.150890, 38.431335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836363, 37.940914, 38.274414>,  <30.017645, 37.814926, 38.180264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836363, 37.940914, 38.274414>,  <29.534227, 38.150890, 38.431335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836363, 37.940914, 38.274414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639190, 0.458080, 0.617737,
		-0.144571, -0.717355, 0.681543,
		0.755338, -0.524942, -0.392300,
		30.062963, 37.783432, 38.156723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971554, 37.855133, 39.005135>,  <29.534227, 38.150890, 38.431335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971554, 37.855133, 39.005135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199984, 37.872696, 38.677246>,  <30.337042, 37.883236, 38.480511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199984, 37.872696, 38.677246>,  <29.971554, 37.855133, 39.005135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199984, 37.872696, 38.677246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770874, 0.314576, 0.553891,
		0.282187, -0.948216, 0.145796,
		0.571073, 0.043911, -0.819725,
		30.371305, 37.885868, 38.431328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588423, 37.424675, 39.062595>,  <29.971554, 37.855133, 39.005135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588423, 37.424675, 39.062595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675947, 37.683800, 38.770718>,  <30.728462, 37.839275, 38.595589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675947, 37.683800, 38.770718>,  <30.588423, 37.424675, 39.062595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675947, 37.683800, 38.770718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872409, 0.205077, 0.443672,
		0.437062, -0.733674, -0.520288,
		0.218812, 0.647816, -0.729696,
		30.741590, 37.878143, 38.551807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326540, 37.293316, 38.919720>,  <30.588423, 37.424675, 39.062595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326540, 37.293316, 38.919720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257063, 37.658318, 38.771576>,  <31.215376, 37.877319, 38.682690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257063, 37.658318, 38.771576>,  <31.326540, 37.293316, 38.919720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257063, 37.658318, 38.771576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916971, 0.287013, 0.277107,
		0.359160, -0.291480, -0.886591,
		-0.173692, 0.912504, -0.370362,
		31.204956, 37.932068, 38.660469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044987, 37.641136, 38.859108>,  <31.326540, 37.293316, 38.919720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044987, 37.641136, 38.859108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818047, 37.963909, 38.793411>,  <31.681883, 38.157574, 38.753994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818047, 37.963909, 38.793411>,  <32.044987, 37.641136, 38.859108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818047, 37.963909, 38.793411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553047, 0.521150, 0.650033,
		0.610127, 0.277962, -0.741945,
		-0.567349, 0.806932, -0.164242,
		31.647842, 38.205990, 38.744141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509716, 38.121197, 38.563606>,  <32.044987, 37.641136, 38.859108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509716, 38.121197, 38.563606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218285, 38.323421, 38.748466>,  <32.043427, 38.444756, 38.859383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218285, 38.323421, 38.748466>,  <32.509716, 38.121197, 38.563606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218285, 38.323421, 38.748466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660968, 0.341907, 0.667998,
		0.179701, 0.792155, -0.583265,
		-0.728580, 0.505559, 0.462148,
		31.999710, 38.475090, 38.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802471, 38.741997, 38.729221>,  <32.509716, 38.121197, 38.563606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802471, 38.741997, 38.729221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484684, 38.685093, 38.965385>,  <32.294010, 38.650951, 39.107082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484684, 38.685093, 38.965385>,  <32.802471, 38.741997, 38.729221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484684, 38.685093, 38.965385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541568, 0.273966, 0.794762,
		-0.274815, 0.951160, -0.140614,
		-0.794469, -0.142260, 0.590408,
		32.246342, 38.642414, 39.142509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728748, 39.319736, 39.101292>,  <32.802471, 38.741997, 38.729221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728748, 39.319736, 39.101292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538952, 39.043255, 39.319317>,  <32.425076, 38.877365, 39.450130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538952, 39.043255, 39.319317>,  <32.728748, 39.319736, 39.101292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538952, 39.043255, 39.319317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416617, 0.369125, 0.830769,
		-0.775430, 0.621272, 0.112824,
		-0.474487, -0.691208, 0.545063,
		32.396606, 38.835892, 39.482838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576946, 39.662952, 39.739151>,  <32.728748, 39.319736, 39.101292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576946, 39.662952, 39.739151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552994, 39.272636, 39.823299>,  <32.538624, 39.038448, 39.873791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552994, 39.272636, 39.823299>,  <32.576946, 39.662952, 39.739151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552994, 39.272636, 39.823299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504258, 0.152313, 0.850014,
		-0.861474, 0.156981, 0.482928,
		-0.059880, -0.975786, 0.210373,
		32.535030, 38.979900, 39.886410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500843, 39.607018, 40.401962>,  <32.576946, 39.662952, 39.739151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500843, 39.607018, 40.401962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627068, 39.231918, 40.343925>,  <32.702801, 39.006859, 40.309105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627068, 39.231918, 40.343925>,  <32.500843, 39.607018, 40.401962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627068, 39.231918, 40.343925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617418, 0.086799, 0.781832,
		-0.720566, -0.336300, 0.606372,
		0.315562, -0.937746, -0.145093,
		32.721737, 38.950596, 40.300396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364548, 39.287891, 41.100086>,  <32.500843, 39.607018, 40.401962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364548, 39.287891, 41.100086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628742, 39.058434, 40.906307>,  <32.787258, 38.920757, 40.790039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628742, 39.058434, 40.906307>,  <32.364548, 39.287891, 41.100086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628742, 39.058434, 40.906307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535697, -0.092070, 0.839376,
		-0.526109, -0.813912, 0.246491,
		0.660484, -0.573648, -0.484448,
		32.826889, 38.886341, 40.760971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353382, 38.684986, 41.473915>,  <32.364548, 39.287891, 41.100086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353382, 38.684986, 41.473915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697628, 38.742870, 41.278606>,  <32.904175, 38.777599, 41.161423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697628, 38.742870, 41.278606>,  <32.353382, 38.684986, 41.473915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697628, 38.742870, 41.278606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509055, -0.217084, 0.832909,
		0.014533, -0.965367, -0.260488,
		0.860611, 0.144707, -0.488270,
		32.955811, 38.786282, 41.132126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697189, 38.172951, 41.781246>,  <32.353382, 38.684986, 41.473915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697189, 38.172951, 41.781246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966358, 38.407219, 41.600506>,  <33.127861, 38.547779, 41.492062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966358, 38.407219, 41.600506>,  <32.697189, 38.172951, 41.781246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966358, 38.407219, 41.600506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703818, -0.318959, 0.634748,
		0.227629, -0.745158, -0.626837,
		0.672923, 0.585666, -0.451851,
		33.168236, 38.582920, 41.464951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250225, 37.717758, 41.561203>,  <32.697189, 38.172951, 41.781246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250225, 37.717758, 41.561203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398796, 38.087143, 41.599709>,  <33.487938, 38.308773, 41.622814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398796, 38.087143, 41.599709>,  <33.250225, 37.717758, 41.561203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398796, 38.087143, 41.599709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638863, -0.329434, 0.695218,
		0.673718, -0.196721, -0.712324,
		0.371428, 0.923458, 0.096268,
		33.510223, 38.364182, 41.628590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953712, 37.623383, 41.634251>,  <33.250225, 37.717758, 41.561203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953712, 37.623383, 41.634251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872128, 37.986534, 41.780762>,  <33.823177, 38.204426, 41.868668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872128, 37.986534, 41.780762>,  <33.953712, 37.623383, 41.634251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872128, 37.986534, 41.780762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547874, -0.204213, 0.811253,
		0.811317, 0.366136, -0.455751,
		-0.203959, 0.907878, 0.366278,
		33.810940, 38.258896, 41.890644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533138, 37.795452, 41.935810>,  <33.953712, 37.623383, 41.634251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533138, 37.795452, 41.935810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278629, 38.047241, 42.114212>,  <34.125923, 38.198315, 42.221252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278629, 38.047241, 42.114212>,  <34.533138, 37.795452, 41.935810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278629, 38.047241, 42.114212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424573, -0.196978, 0.883707,
		0.644125, 0.751638, -0.141927,
		-0.636271, 0.629476, 0.446003,
		34.087749, 38.236084, 42.248013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946037, 38.174294, 42.343578>,  <34.533138, 37.795452, 41.935810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946037, 38.174294, 42.343578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593437, 38.263329, 42.510151>,  <34.381878, 38.316750, 42.610092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593437, 38.263329, 42.510151>,  <34.946037, 38.174294, 42.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593437, 38.263329, 42.510151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443997, 0.090595, 0.891437,
		0.160693, 0.970695, -0.178686,
		-0.881501, 0.222583, 0.416428,
		34.328987, 38.330105, 42.635078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074688, 38.835350, 42.839565>,  <34.946037, 38.174294, 42.343578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074688, 38.835350, 42.839565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743946, 38.651424, 42.969112>,  <34.545502, 38.541069, 43.046841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743946, 38.651424, 42.969112>,  <35.074688, 38.835350, 42.839565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743946, 38.651424, 42.969112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272300, 0.176555, 0.945876,
		-0.492104, 0.870288, -0.020778,
		-0.826853, -0.459811, 0.323863,
		34.495892, 38.513481, 43.066273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713261, 39.286732, 43.328266>,  <35.074688, 38.835350, 42.839565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713261, 39.286732, 43.328266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573540, 38.925220, 43.427204>,  <34.489708, 38.708313, 43.486568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573540, 38.925220, 43.427204>,  <34.713261, 39.286732, 43.328266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573540, 38.925220, 43.427204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090301, 0.230274, 0.968927,
		-0.932649, 0.360782, 0.001177,
		-0.349301, -0.903775, 0.247344,
		34.468750, 38.654087, 43.501408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363064, 39.399712, 43.889778>,  <34.713261, 39.286732, 43.328266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363064, 39.399712, 43.889778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388138, 39.000648, 43.900696>,  <34.403183, 38.761211, 43.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388138, 39.000648, 43.900696>,  <34.363064, 39.399712, 43.889778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388138, 39.000648, 43.900696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106618, 0.020502, 0.994089,
		-0.992322, -0.065222, -0.105083,
		0.062682, -0.997660, 0.027298,
		34.406944, 38.701351, 43.908886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812210, 39.206253, 44.283653>,  <34.363064, 39.399712, 43.889778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812210, 39.206253, 44.283653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051975, 38.888390, 44.322052>,  <34.195835, 38.697670, 44.345089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051975, 38.888390, 44.322052>,  <33.812210, 39.206253, 44.283653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051975, 38.888390, 44.322052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161321, -0.002469, 0.986899,
		-0.784014, -0.607047, -0.129676,
		0.599414, -0.794662, 0.095994,
		34.231800, 38.649990, 44.350849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550007, 38.820435, 44.877571>,  <33.812210, 39.206253, 44.283653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550007, 38.820435, 44.877571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925186, 38.687000, 44.839691>,  <34.150295, 38.606937, 44.816963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925186, 38.687000, 44.839691>,  <33.550007, 38.820435, 44.877571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925186, 38.687000, 44.839691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123649, 0.066587, 0.990089,
		-0.323976, -0.940364, 0.103703,
		0.937950, -0.333588, -0.094703,
		34.206570, 38.586926, 44.811279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692501, 38.286556, 45.366302>,  <33.550007, 38.820435, 44.877571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692501, 38.286556, 45.366302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067451, 38.398796, 45.283752>,  <34.292423, 38.466141, 45.234222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067451, 38.398796, 45.283752>,  <33.692501, 38.286556, 45.366302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067451, 38.398796, 45.283752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140712, 0.236925, 0.961284,
		0.318630, -0.930124, 0.182604,
		0.937377, 0.280600, -0.206371,
		34.348663, 38.482975, 45.221840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093803, 37.872795, 45.913147>,  <33.692501, 38.286556, 45.366302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093803, 37.872795, 45.913147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292530, 38.188465, 45.768719>,  <34.411766, 38.377869, 45.682060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292530, 38.188465, 45.768719>,  <34.093803, 37.872795, 45.913147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292530, 38.188465, 45.768719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213255, 0.292284, 0.932251,
		0.841245, -0.540161, -0.023083,
		0.496819, 0.789175, -0.361074,
		34.441574, 38.425217, 45.660397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609241, 37.885494, 46.325443>,  <34.093803, 37.872795, 45.913147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609241, 37.885494, 46.325443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617535, 38.257854, 46.179573>,  <34.622509, 38.481270, 46.092052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617535, 38.257854, 46.179573>,  <34.609241, 37.885494, 46.325443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617535, 38.257854, 46.179573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331484, 0.337724, 0.880943,
		0.943233, -0.139146, -0.301579,
		0.020729, 0.930903, -0.364677,
		34.623753, 38.537125, 46.070171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296646, 38.121105, 46.420746>,  <34.609241, 37.885494, 46.325443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296646, 38.121105, 46.420746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080112, 38.454464, 46.376183>,  <34.950191, 38.654480, 46.349445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080112, 38.454464, 46.376183>,  <35.296646, 38.121105, 46.420746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080112, 38.454464, 46.376183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371565, 0.355974, 0.857451,
		0.754254, 0.422770, -0.502360,
		-0.541332, 0.833395, -0.111408,
		34.917713, 38.704483, 46.342758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804123, 38.603867, 46.534466>,  <35.296646, 38.121105, 46.420746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804123, 38.603867, 46.534466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443203, 38.768856, 46.584629>,  <35.226650, 38.867851, 46.614727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443203, 38.768856, 46.584629>,  <35.804123, 38.603867, 46.534466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443203, 38.768856, 46.584629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276587, 0.330700, 0.902295,
		0.330700, 0.848824, -0.412474,
		-0.902295, 0.412474, 0.125411,
		35.172516, 38.892597, 46.622253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869160, 39.249622, 46.615376>,  <35.804123, 38.603867, 46.534466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869160, 39.249622, 46.615376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521400, 39.174232, 46.798080>,  <35.312744, 39.128998, 46.907703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521400, 39.174232, 46.798080>,  <35.869160, 39.249622, 46.615376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521400, 39.174232, 46.798080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368152, 0.369487, 0.853196,
		-0.329570, 0.909922, -0.251844,
		-0.869395, -0.188471, 0.456761,
		35.260582, 39.117691, 46.935108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749191, 39.840832, 46.970371>,  <35.869160, 39.249622, 46.615376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749191, 39.840832, 46.970371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509514, 39.574081, 47.147568>,  <35.365707, 39.414032, 47.253883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509514, 39.574081, 47.147568>,  <35.749191, 39.840832, 46.970371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509514, 39.574081, 47.147568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220346, 0.394582, 0.892050,
		-0.769686, 0.632120, -0.089487,
		-0.599193, -0.666880, 0.442990,
		35.329758, 39.374016, 47.280464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381336, 40.261791, 47.404663>,  <35.749191, 39.840832, 46.970371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381336, 40.261791, 47.404663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384903, 39.887360, 47.545334>,  <35.387043, 39.662701, 47.629738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384903, 39.887360, 47.545334>,  <35.381336, 40.261791, 47.404663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384903, 39.887360, 47.545334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459031, 0.316276, 0.830217,
		-0.888375, 0.154032, 0.432508,
		0.008912, -0.936079, 0.351677,
		35.387577, 39.606537, 47.650837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873341, 40.207172, 48.051003>,  <35.381336, 40.261791, 47.404663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873341, 40.207172, 48.051003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154263, 39.922749, 48.037369>,  <35.322815, 39.752094, 48.029186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154263, 39.922749, 48.037369>,  <34.873341, 40.207172, 48.051003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154263, 39.922749, 48.037369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459386, 0.416110, 0.784740,
		-0.543814, -0.566785, 0.618887,
		0.702304, -0.711061, -0.034086,
		35.364952, 39.709431, 48.027142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011520, 40.090157, 48.725723>,  <34.873341, 40.207172, 48.051003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011520, 40.090157, 48.725723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325714, 39.884220, 48.588345>,  <35.514229, 39.760658, 48.505917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325714, 39.884220, 48.588345>,  <35.011520, 40.090157, 48.725723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325714, 39.884220, 48.588345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457657, 0.109624, 0.882345,
		-0.416618, -0.850247, 0.321728,
		0.785480, -0.514842, -0.343450,
		35.561359, 39.729767, 48.485310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170815, 39.659481, 49.235203>,  <35.011520, 40.090157, 48.725723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170815, 39.659481, 49.235203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486729, 39.662136, 48.989861>,  <35.676277, 39.663731, 48.842655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486729, 39.662136, 48.989861>,  <35.170815, 39.659481, 49.235203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486729, 39.662136, 48.989861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610808, 0.083098, 0.787406,
		0.056190, -0.996519, 0.061578,
		0.789782, 0.006632, -0.613351,
		35.723663, 39.664127, 48.805855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641685, 39.126457, 49.463028>,  <35.170815, 39.659481, 49.235203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641685, 39.126457, 49.463028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857658, 39.390179, 49.253727>,  <35.987244, 39.548412, 49.128147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857658, 39.390179, 49.253727>,  <35.641685, 39.126457, 49.463028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857658, 39.390179, 49.253727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503196, 0.245503, 0.828566,
		0.674735, -0.710669, -0.199203,
		0.539931, 0.659301, -0.523255,
		36.019638, 39.587971, 49.096752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342422, 38.918743, 49.450413>,  <35.641685, 39.126457, 49.463028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342422, 38.918743, 49.450413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386417, 39.305779, 49.359478>,  <36.412815, 39.537998, 49.304916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386417, 39.305779, 49.359478>,  <36.342422, 38.918743, 49.450413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386417, 39.305779, 49.359478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492193, 0.145693, 0.858207,
		0.863509, -0.206286, -0.460214,
		0.109986, 0.967584, -0.227341,
		36.419415, 39.596054, 49.291275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987171, 39.053581, 49.702526>,  <36.342422, 38.918743, 49.450413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987171, 39.053581, 49.702526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803543, 39.403461, 49.640358>,  <36.693367, 39.613388, 49.603058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803543, 39.403461, 49.640358>,  <36.987171, 39.053581, 49.702526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803543, 39.403461, 49.640358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425819, 0.370187, 0.825615,
		0.779699, 0.312835, -0.542406,
		-0.459073, 0.874698, -0.155423,
		36.665821, 39.665871, 49.593731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588852, 39.619900, 49.723064>,  <36.987171, 39.053581, 49.702526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588852, 39.619900, 49.723064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217808, 39.733219, 49.820461>,  <36.995182, 39.801212, 49.878899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217808, 39.733219, 49.820461>,  <37.588852, 39.619900, 49.723064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217808, 39.733219, 49.820461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338199, 0.360063, 0.869469,
		0.158648, 0.888873, -0.429809,
		-0.927606, 0.283300, 0.243493,
		36.939526, 39.818211, 49.893509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765785, 40.035538, 50.281471>,  <37.588852, 39.619900, 49.723064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765785, 40.035538, 50.281471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366932, 40.007027, 50.291649>,  <37.127621, 39.989918, 50.297756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366932, 40.007027, 50.291649>,  <37.765785, 40.035538, 50.281471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366932, 40.007027, 50.291649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031048, 0.691806, 0.721415,
		-0.069024, 0.718556, -0.692035,
		-0.997132, -0.071281, 0.025441,
		37.067791, 39.985641, 50.299282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484100, 40.730480, 50.200706>,  <37.765785, 40.035538, 50.281471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484100, 40.730480, 50.200706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235111, 40.492027, 50.403549>,  <37.085720, 40.348957, 50.525253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235111, 40.492027, 50.403549>,  <37.484100, 40.730480, 50.200706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235111, 40.492027, 50.403549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108997, 0.575594, 0.810439,
		-0.775016, 0.559748, -0.293314,
		-0.622471, -0.596133, 0.507105,
		37.048370, 40.313187, 50.555679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945808, 41.137203, 50.622372>,  <37.484100, 40.730480, 50.200706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945808, 41.137203, 50.622372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954170, 40.777542, 50.797230>,  <36.959187, 40.561745, 50.902145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954170, 40.777542, 50.797230>,  <36.945808, 41.137203, 50.622372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954170, 40.777542, 50.797230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176995, 0.427002, 0.886759,
		-0.983990, -0.095908, -0.150220,
		0.020904, -0.899150, 0.437141,
		36.960442, 40.507797, 50.928371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282986, 41.102207, 51.031326>,  <36.945808, 41.137203, 50.622372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282986, 41.102207, 51.031326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566181, 40.840580, 51.137871>,  <36.736099, 40.683605, 51.201797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566181, 40.840580, 51.137871>,  <36.282986, 41.102207, 51.031326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566181, 40.840580, 51.137871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118619, 0.261677, 0.957839,
		-0.696189, -0.709736, 0.107681,
		0.707990, -0.654064, 0.266365,
		36.778580, 40.644360, 51.217781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992157, 40.650703, 51.547840>,  <36.282986, 41.102207, 51.031326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992157, 40.650703, 51.547840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384689, 40.665863, 51.623264>,  <36.620209, 40.674957, 51.668518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384689, 40.665863, 51.623264>,  <35.992157, 40.650703, 51.547840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384689, 40.665863, 51.623264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191895, 0.258968, 0.946632,
		-0.012957, -0.965142, 0.261405,
		0.981330, 0.037897, 0.188561,
		36.679089, 40.677231, 51.679832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108917, 40.322201, 52.130833>,  <35.992157, 40.650703, 51.547840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108917, 40.322201, 52.130833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405666, 40.589371, 52.107185>,  <36.583717, 40.749672, 52.092999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405666, 40.589371, 52.107185>,  <36.108917, 40.322201, 52.130833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405666, 40.589371, 52.107185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298504, 0.407925, 0.862840,
		0.600430, -0.622472, 0.502008,
		0.741875, 0.667927, -0.059120,
		36.628227, 40.789749, 52.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597210, 40.254166, 52.764519>,  <36.108917, 40.322201, 52.130833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597210, 40.254166, 52.764519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521652, 40.607204, 52.592312>,  <36.476318, 40.819027, 52.488987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521652, 40.607204, 52.592312>,  <36.597210, 40.254166, 52.764519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521652, 40.607204, 52.592312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383554, 0.337274, 0.859728,
		0.903995, 0.327520, 0.274815,
		-0.188890, 0.882597, -0.430516,
		36.464985, 40.871983, 52.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110039, 40.754757, 53.004040>,  <36.597210, 40.254166, 52.764519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110039, 40.754757, 53.004040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776272, 40.942577, 52.888615>,  <36.576012, 41.055271, 52.819359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776272, 40.942577, 52.888615>,  <37.110039, 40.754757, 53.004040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776272, 40.942577, 52.888615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223027, 0.191120, 0.955893,
		0.503995, 0.861970, -0.054750,
		-0.834415, 0.469555, -0.288566,
		36.525948, 41.083443, 52.802044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824387, 40.709229, 53.440052>,  <37.110039, 40.754757, 53.004040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824387, 40.709229, 53.440052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827591, 40.945015, 53.116951>,  <37.829514, 41.086487, 52.923088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827591, 40.945015, 53.116951>,  <37.824387, 40.709229, 53.440052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827591, 40.945015, 53.116951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973352, -0.180531, -0.141399,
		-0.229174, 0.787364, 0.572308,
		0.008014, 0.589463, -0.807756,
		37.829994, 41.121853, 52.874622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425171, 40.401554, 53.253384>,  <37.824387, 40.709229, 53.440052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425171, 40.401554, 53.253384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787292, 40.404694, 53.083504>,  <39.004566, 40.406578, 52.981575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787292, 40.404694, 53.083504>,  <38.425171, 40.401554, 53.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787292, 40.404694, 53.083504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258813, -0.782609, -0.566161,
		-0.336816, 0.622463, -0.706466,
		0.905301, 0.007850, -0.424697,
		39.058884, 40.407047, 52.956093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339161, 40.518654, 52.499973>,  <38.425171, 40.401554, 53.253384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339161, 40.518654, 52.499973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626583, 40.268894, 52.622478>,  <38.799038, 40.119038, 52.695980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626583, 40.268894, 52.622478>,  <38.339161, 40.518654, 52.499973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626583, 40.268894, 52.622478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505948, -0.771474, -0.385805,
		0.477171, 0.122270, -0.870263,
		0.718558, -0.624402, 0.306263,
		38.842152, 40.081573, 52.714355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605835, 40.153481, 51.904110>,  <38.339161, 40.518654, 52.499973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605835, 40.153481, 51.904110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574528, 39.946785, 52.245132>,  <38.555744, 39.822769, 52.449745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574528, 39.946785, 52.245132>,  <38.605835, 40.153481, 51.904110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574528, 39.946785, 52.245132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686355, -0.592306, -0.422006,
		0.723042, -0.618188, -0.308306,
		-0.078267, -0.516736, 0.852560,
		38.551048, 39.791763, 52.500900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996727, 39.415340, 51.847359>,  <38.605835, 40.153481, 51.904110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996727, 39.415340, 51.847359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657570, 39.426056, 52.059155>,  <38.454075, 39.432487, 52.186234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657570, 39.426056, 52.059155>,  <38.996727, 39.415340, 51.847359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657570, 39.426056, 52.059155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391286, -0.705520, -0.590878,
		0.357736, -0.708183, 0.608689,
		-0.847892, 0.026793, 0.529492,
		38.403202, 39.434093, 52.218002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991222, 38.791683, 52.072140>,  <38.996727, 39.415340, 51.847359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991222, 38.791683, 52.072140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620373, 38.934628, 52.026993>,  <38.397865, 39.020393, 51.999905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620373, 38.934628, 52.026993>,  <38.991222, 38.791683, 52.072140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620373, 38.934628, 52.026993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198203, -0.723177, -0.661612,
		-0.318056, -0.591024, 0.741303,
		-0.927123, 0.357358, -0.112869,
		38.342236, 39.041836, 51.993134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579739, 38.212936, 52.005154>,  <38.991222, 38.791683, 52.072140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579739, 38.212936, 52.005154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382599, 38.521248, 51.843662>,  <38.264313, 38.706234, 51.746769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382599, 38.521248, 51.843662>,  <38.579739, 38.212936, 52.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382599, 38.521248, 51.843662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253713, -0.571135, -0.780663,
		-0.832303, -0.282319, 0.477041,
		-0.492851, 0.770779, -0.403730,
		38.234745, 38.752483, 51.722542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946884, 37.955025, 51.948460>,  <38.579739, 38.212936, 52.005154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946884, 37.955025, 51.948460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002316, 38.248367, 51.682232>,  <38.035572, 38.424374, 51.522495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002316, 38.248367, 51.682232>,  <37.946884, 37.955025, 51.948460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002316, 38.248367, 51.682232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404032, -0.571716, -0.714072,
		-0.904187, 0.367864, 0.217074,
		0.138576, 0.733360, -0.665567,
		38.043888, 38.468376, 51.482563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282791, 37.970097, 51.531372>,  <37.946884, 37.955025, 51.948460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282791, 37.970097, 51.531372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602436, 38.112984, 51.337955>,  <37.794224, 38.198715, 51.221905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602436, 38.112984, 51.337955>,  <37.282791, 37.970097, 51.531372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602436, 38.112984, 51.337955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160913, -0.647881, -0.744552,
		-0.579241, 0.672791, -0.460252,
		0.799117, 0.357214, -0.483540,
		37.842171, 38.220146, 51.192894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068626, 38.233696, 51.061741>,  <37.282791, 37.970097, 51.531372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068626, 38.233696, 51.061741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434589, 38.118458, 50.948643>,  <37.654167, 38.049313, 50.880783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434589, 38.118458, 50.948643>,  <37.068626, 38.233696, 51.061741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434589, 38.118458, 50.948643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390708, -0.455940, -0.799666,
		0.101466, 0.842091, -0.529705,
		0.914905, -0.288099, -0.282749,
		37.709061, 38.032028, 50.863819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972710, 38.308369, 50.304310>,  <37.068626, 38.233696, 51.061741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972710, 38.308369, 50.304310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330036, 38.129906, 50.325974>,  <37.544430, 38.022827, 50.338970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330036, 38.129906, 50.325974>,  <36.972710, 38.308369, 50.304310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330036, 38.129906, 50.325974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160905, -0.429997, -0.888376,
		0.419646, 0.784884, -0.455911,
		0.893312, -0.446162, 0.054155,
		37.598030, 37.996056, 50.342220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285511, 38.329842, 49.631950>,  <36.972710, 38.308369, 50.304310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285511, 38.329842, 49.631950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464970, 38.019157, 49.808784>,  <37.572643, 37.832748, 49.914886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464970, 38.019157, 49.808784>,  <37.285511, 38.329842, 49.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464970, 38.019157, 49.808784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127091, -0.545083, -0.828693,
		0.884628, 0.315603, -0.343261,
		0.448643, -0.776710, 0.442086,
		37.599564, 37.786144, 49.941410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868347, 38.112709, 49.171535>,  <37.285511, 38.329842, 49.631950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868347, 38.112709, 49.171535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776836, 37.809471, 49.415813>,  <37.721931, 37.627529, 49.562382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776836, 37.809471, 49.415813>,  <37.868347, 38.112709, 49.171535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776836, 37.809471, 49.415813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177087, -0.584459, -0.791864,
		0.957237, -0.289305, -0.000539,
		-0.228775, -0.758096, 0.610698,
		37.708202, 37.582043, 49.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175972, 37.572510, 48.916897>,  <37.868347, 38.112709, 49.171535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175972, 37.572510, 48.916897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905212, 37.402592, 49.157349>,  <37.742756, 37.300640, 49.301620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905212, 37.402592, 49.157349>,  <38.175972, 37.572510, 48.916897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905212, 37.402592, 49.157349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248024, -0.637283, -0.729626,
		0.693028, -0.642980, 0.326020,
		-0.676902, -0.424791, 0.601129,
		37.702141, 37.275154, 49.337688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327244, 36.890942, 48.784313>,  <38.175972, 37.572510, 48.916897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327244, 36.890942, 48.784313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950462, 36.906956, 48.917656>,  <37.724396, 36.916565, 48.997662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950462, 36.906956, 48.917656>,  <38.327244, 36.890942, 48.784313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950462, 36.906956, 48.917656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259176, -0.717867, -0.646138,
		0.213436, -0.695028, 0.686572,
		-0.941951, 0.040034, 0.333354,
		37.667877, 36.918964, 49.017662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004570, 36.152027, 48.847984>,  <38.327244, 36.890942, 48.784313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004570, 36.152027, 48.847984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731140, 36.434124, 48.772758>,  <37.567081, 36.603382, 48.727623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731140, 36.434124, 48.772758>,  <38.004570, 36.152027, 48.847984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731140, 36.434124, 48.772758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350290, -0.543035, -0.763158,
		-0.640334, -0.455796, 0.618241,
		-0.683571, 0.705240, -0.188063,
		37.526070, 36.645695, 48.716339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482212, 35.813133, 48.506031>,  <38.004570, 36.152027, 48.847984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482212, 35.813133, 48.506031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348568, 36.187180, 48.458824>,  <37.268383, 36.411606, 48.430500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348568, 36.187180, 48.458824>,  <37.482212, 35.813133, 48.506031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348568, 36.187180, 48.458824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516856, -0.286480, -0.806715,
		-0.788183, -0.208530, 0.579036,
		-0.334107, 0.935118, -0.118019,
		37.248337, 36.467716, 48.423420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689072, 35.856594, 48.479916>,  <37.482212, 35.813133, 48.506031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689072, 35.856594, 48.479916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848114, 36.171959, 48.292168>,  <36.943539, 36.361179, 48.179520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848114, 36.171959, 48.292168>,  <36.689072, 35.856594, 48.479916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848114, 36.171959, 48.292168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554382, -0.201199, -0.807576,
		-0.731141, 0.581312, 0.357083,
		0.397609, 0.788413, -0.469374,
		36.967396, 36.408482, 48.151356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113533, 36.022457, 48.104630>,  <36.689072, 35.856594, 48.479916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113533, 36.022457, 48.104630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420631, 36.244152, 47.976013>,  <36.604893, 36.377167, 47.898846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420631, 36.244152, 47.976013>,  <36.113533, 36.022457, 48.104630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420631, 36.244152, 47.976013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444834, 0.099859, -0.890029,
		-0.461175, 0.826350, 0.323208,
		0.767750, 0.554233, -0.321536,
		36.650955, 36.410423, 47.879551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909718, 36.708138, 47.872185>,  <36.113533, 36.022457, 48.104630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909718, 36.708138, 47.872185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254635, 36.658115, 47.675892>,  <36.461586, 36.628101, 47.558117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254635, 36.658115, 47.675892>,  <35.909718, 36.708138, 47.872185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254635, 36.658115, 47.675892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477526, 0.121808, -0.870133,
		0.168593, 0.984644, 0.045314,
		0.862291, -0.125060, -0.490729,
		36.513321, 36.620598, 47.528675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007324, 37.284012, 47.407486>,  <35.909718, 36.708138, 47.872185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007324, 37.284012, 47.407486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179855, 36.948044, 47.275734>,  <36.283375, 36.746464, 47.196682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179855, 36.948044, 47.275734>,  <36.007324, 37.284012, 47.407486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179855, 36.948044, 47.275734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438930, 0.123599, -0.889980,
		0.788222, 0.528450, -0.315353,
		0.431332, -0.839919, -0.329376,
		36.309254, 36.696068, 47.176922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892826, 37.227631, 46.678123>,  <36.007324, 37.284012, 47.407486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892826, 37.227631, 46.678123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039173, 36.864487, 46.760025>,  <36.126980, 36.646599, 46.809166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039173, 36.864487, 46.760025>,  <35.892826, 37.227631, 46.678123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039173, 36.864487, 46.760025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351240, -0.338436, -0.872979,
		0.861842, 0.247477, -0.442701,
		0.365868, -0.907863, 0.204755,
		36.148933, 36.592129, 46.821453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367058, 37.015308, 46.014229>,  <35.892826, 37.227631, 46.678123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367058, 37.015308, 46.014229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260773, 36.689144, 46.219948>,  <36.197002, 36.493446, 46.343380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260773, 36.689144, 46.219948>,  <36.367058, 37.015308, 46.014229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260773, 36.689144, 46.219948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181542, -0.481612, -0.857375,
		0.946804, -0.321185, -0.020058,
		-0.265716, -0.815408, 0.514301,
		36.181057, 36.444523, 46.374237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707310, 36.435314, 45.669415>,  <36.367058, 37.015308, 46.014229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707310, 36.435314, 45.669415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393810, 36.279575, 45.862968>,  <36.205711, 36.186131, 45.979099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393810, 36.279575, 45.862968>,  <36.707310, 36.435314, 45.669415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393810, 36.279575, 45.862968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401133, -0.277478, -0.872982,
		0.474161, -0.878302, 0.061293,
		-0.783750, -0.389347, 0.483885,
		36.158684, 36.162769, 46.008133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655502, 35.684399, 45.471218>,  <36.707310, 36.435314, 45.669415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655502, 35.684399, 45.471218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295082, 35.816605, 45.583557>,  <36.078831, 35.895927, 45.650959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295082, 35.816605, 45.583557>,  <36.655502, 35.684399, 45.471218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295082, 35.816605, 45.583557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390733, -0.337515, -0.856394,
		-0.188264, -0.881386, 0.433261,
		-0.901046, 0.330517, 0.280845,
		36.024769, 35.915760, 45.667809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234573, 35.146786, 45.262009>,  <36.655502, 35.684399, 45.471218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234573, 35.146786, 45.262009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006119, 35.469925, 45.320217>,  <35.869045, 35.663811, 45.355141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006119, 35.469925, 45.320217>,  <36.234573, 35.146786, 45.262009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006119, 35.469925, 45.320217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575345, -0.267531, -0.772920,
		-0.585473, -0.525170, 0.617591,
		-0.571139, 0.807851, 0.145521,
		35.834778, 35.712280, 45.363873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515011, 34.958374, 45.018204>,  <36.234573, 35.146786, 45.262009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515011, 34.958374, 45.018204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451710, 35.353321, 45.021507>,  <35.413727, 35.590290, 45.023491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451710, 35.353321, 45.021507>,  <35.515011, 34.958374, 45.018204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451710, 35.353321, 45.021507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558631, -0.082632, -0.825290,
		-0.814178, -0.135224, 0.564649,
		-0.158257, 0.987363, 0.008263,
		35.404232, 35.649529, 45.023987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853924, 35.095001, 45.005928>,  <35.515011, 34.958374, 45.018204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853924, 35.095001, 45.005928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013664, 35.432808, 44.863209>,  <35.109509, 35.635490, 44.777576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013664, 35.432808, 44.863209>,  <34.853924, 35.095001, 45.005928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013664, 35.432808, 44.863209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721921, 0.049785, -0.690182,
		-0.565108, 0.533208, 0.629557,
		0.399353, 0.844518, -0.356800,
		35.133469, 35.686165, 44.756168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322372, 35.457882, 44.857330>,  <34.853924, 35.095001, 45.005928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322372, 35.457882, 44.857330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595230, 35.659000, 44.644966>,  <34.758945, 35.779671, 44.517548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595230, 35.659000, 44.644966>,  <34.322372, 35.457882, 44.857330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595230, 35.659000, 44.644966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669936, 0.138795, -0.729329,
		-0.293020, 0.853187, 0.431523,
		0.682147, 0.502801, -0.530911,
		34.799873, 35.809841, 44.485691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937572, 35.948086, 44.623329>,  <34.322372, 35.457882, 44.857330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937572, 35.948086, 44.623329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259090, 35.947010, 44.385368>,  <34.452000, 35.946365, 44.242592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259090, 35.947010, 44.385368>,  <33.937572, 35.948086, 44.623329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259090, 35.947010, 44.385368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591312, 0.106238, -0.799415,
		0.065350, 0.994337, 0.083805,
		0.803791, -0.002687, -0.594906,
		34.500229, 35.946205, 44.206898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773422, 36.434361, 44.082981>,  <33.937572, 35.948086, 44.623329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773422, 36.434361, 44.082981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055901, 36.196701, 43.928951>,  <34.225388, 36.054104, 43.836533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055901, 36.196701, 43.928951>,  <33.773422, 36.434361, 44.082981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055901, 36.196701, 43.928951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546649, -0.111906, -0.829851,
		0.449962, 0.796534, -0.403817,
		0.706194, -0.594147, -0.385070,
		34.267757, 36.018456, 43.813431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864567, 36.660946, 43.382172>,  <33.773422, 36.434361, 44.082981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864567, 36.660946, 43.382172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019169, 36.293289, 43.412601>,  <34.111931, 36.072697, 43.430859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019169, 36.293289, 43.412601>,  <33.864567, 36.660946, 43.382172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019169, 36.293289, 43.412601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535314, -0.290739, -0.793038,
		0.751032, 0.265795, -0.604403,
		0.386510, -0.919143, 0.076071,
		34.135120, 36.017548, 43.435421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016216, 36.482327, 42.668343>,  <33.864567, 36.660946, 43.382172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016216, 36.482327, 42.668343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996609, 36.130058, 42.856819>,  <33.984844, 35.918697, 42.969906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996609, 36.130058, 42.856819>,  <34.016216, 36.482327, 42.668343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996609, 36.130058, 42.856819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339840, -0.428903, -0.836989,
		0.939205, -0.201153, -0.278264,
		-0.049015, -0.880670, 0.471188,
		33.981903, 35.865856, 42.998177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444065, 35.928799, 42.271061>,  <34.016216, 36.482327, 42.668343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444065, 35.928799, 42.271061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165787, 35.737976, 42.485882>,  <33.998817, 35.623482, 42.614773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165787, 35.737976, 42.485882>,  <34.444065, 35.928799, 42.271061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165787, 35.737976, 42.485882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359203, -0.416412, -0.835209,
		0.622075, -0.773963, 0.118338,
		-0.695699, -0.477056, 0.537049,
		33.957077, 35.594860, 42.646996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471519, 35.246548, 42.023979>,  <34.444065, 35.928799, 42.271061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471519, 35.246548, 42.023979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112831, 35.272770, 42.199066>,  <33.897617, 35.288502, 42.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112831, 35.272770, 42.199066>,  <34.471519, 35.246548, 42.023979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112831, 35.272770, 42.199066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431186, -0.352480, -0.830564,
		0.099840, -0.933521, 0.344341,
		-0.896722, 0.065551, 0.437713,
		33.843815, 35.292435, 42.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146030, 34.654766, 41.748524>,  <34.471519, 35.246548, 42.023979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146030, 34.654766, 41.748524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816204, 34.842911, 41.874287>,  <33.618309, 34.955799, 41.949745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816204, 34.842911, 41.874287>,  <34.146030, 34.654766, 41.748524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816204, 34.842911, 41.874287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441589, -0.187659, -0.877373,
		-0.353682, -0.862290, 0.362444,
		-0.824565, 0.470362, 0.314406,
		33.568832, 34.984020, 41.968609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506462, 34.280296, 41.527363>,  <34.146030, 34.654766, 41.748524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506462, 34.280296, 41.527363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398849, 34.662876, 41.572659>,  <33.334282, 34.892426, 41.599838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398849, 34.662876, 41.572659>,  <33.506462, 34.280296, 41.527363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398849, 34.662876, 41.572659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555416, -0.058010, -0.829547,
		-0.786851, -0.286072, 0.546834,
		-0.269032, 0.956451, 0.113243,
		33.318138, 34.949810, 41.606632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787968, 34.330009, 41.526966>,  <33.506462, 34.280296, 41.527363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787968, 34.330009, 41.526966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919830, 34.686520, 41.402412>,  <32.998947, 34.900425, 41.327679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919830, 34.686520, 41.402412>,  <32.787968, 34.330009, 41.526966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919830, 34.686520, 41.402412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417449, -0.158224, -0.894820,
		-0.846796, 0.424972, 0.319900,
		0.329657, 0.891271, -0.311388,
		33.018726, 34.953899, 41.308994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232353, 34.581848, 41.133957>,  <32.787968, 34.330009, 41.526966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232353, 34.581848, 41.133957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519333, 34.847885, 41.051090>,  <32.691521, 35.007507, 41.001369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519333, 34.847885, 41.051090>,  <32.232353, 34.581848, 41.133957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519333, 34.847885, 41.051090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233956, -0.050066, -0.970957,
		-0.656148, 0.745081, 0.119682,
		0.717450, 0.665092, -0.207166,
		32.734570, 35.047413, 40.988941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975765, 35.027191, 40.565968>,  <32.232353, 34.581848, 41.133957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975765, 35.027191, 40.565968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372196, 35.076736, 40.546276>,  <32.610054, 35.106464, 40.534462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372196, 35.076736, 40.546276>,  <31.975765, 35.027191, 40.565968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372196, 35.076736, 40.546276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071489, 0.182275, -0.980645,
		-0.112489, 0.975415, 0.189503,
		0.991078, 0.123859, -0.049228,
		32.669521, 35.113895, 40.531509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994198, 35.575687, 40.242771>,  <31.975765, 35.027191, 40.565968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994198, 35.575687, 40.242771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348934, 35.396534, 40.197315>,  <32.561775, 35.289043, 40.170040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348934, 35.396534, 40.197315>,  <31.994198, 35.575687, 40.242771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348934, 35.396534, 40.197315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091498, 0.070858, -0.993281,
		0.452924, 0.891281, 0.021860,
		0.886842, -0.447880, -0.113644,
		32.614986, 35.262169, 40.163223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314369, 35.967789, 39.771912>,  <31.994198, 35.575687, 40.242771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314369, 35.967789, 39.771912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546196, 35.643192, 39.742012>,  <32.685291, 35.448433, 39.724072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546196, 35.643192, 39.742012>,  <32.314369, 35.967789, 39.771912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546196, 35.643192, 39.742012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061725, 0.135169, -0.988898,
		0.812585, 0.568517, 0.128429,
		0.579565, -0.811491, -0.074745,
		32.720066, 35.399746, 39.719589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867783, 36.194515, 39.392059>,  <32.314369, 35.967789, 39.771912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867783, 36.194515, 39.392059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867313, 35.796089, 39.356602>,  <32.867031, 35.557034, 39.335327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867313, 35.796089, 39.356602>,  <32.867783, 36.194515, 39.392059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867313, 35.796089, 39.356602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183017, 0.086935, -0.979259,
		0.983109, -0.017372, 0.182195,
		-0.001172, -0.996063, -0.088646,
		32.866962, 35.497269, 39.330009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419415, 36.038471, 38.995697>,  <32.867783, 36.194515, 39.392059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419415, 36.038471, 38.995697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158150, 35.741020, 38.938564>,  <33.001392, 35.562550, 38.904285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158150, 35.741020, 38.938564>,  <33.419415, 36.038471, 38.995697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158150, 35.741020, 38.938564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120167, 0.084441, -0.989156,
		0.747622, -0.663243, 0.034206,
		-0.653162, -0.743625, -0.142830,
		32.962200, 35.517933, 38.895714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744324, 35.704491, 38.566631>,  <33.419415, 36.038471, 38.995697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744324, 35.704491, 38.566631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366581, 35.591206, 38.499733>,  <33.139935, 35.523235, 38.459595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366581, 35.591206, 38.499733>,  <33.744324, 35.704491, 38.566631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366581, 35.591206, 38.499733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171551, 0.009721, -0.985127,
		0.280632, -0.959006, 0.039406,
		-0.944360, -0.283218, -0.167246,
		33.083271, 35.506241, 38.449558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331108, 35.750015, 38.157883>,  <33.744324, 35.704491, 38.566631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331108, 35.750015, 38.157883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618671, 35.544731, 37.970360>,  <34.791210, 35.421558, 37.857845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618671, 35.544731, 37.970360>,  <34.331108, 35.750015, 38.157883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618671, 35.544731, 37.970360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272709, -0.412124, 0.869358,
		-0.639372, -0.752839, -0.156324,
		0.718911, -0.513212, -0.468806,
		34.834347, 35.390766, 37.829720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314362, 35.116730, 38.434349>,  <34.331108, 35.750015, 38.157883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314362, 35.116730, 38.434349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679188, 35.137180, 38.271606>,  <34.898083, 35.149452, 38.173962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679188, 35.137180, 38.271606>,  <34.314362, 35.116730, 38.434349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679188, 35.137180, 38.271606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391053, -0.406983, 0.825495,
		-0.123374, -0.912004, -0.391189,
		0.912062, 0.051131, -0.406853,
		34.952805, 35.152519, 38.149551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632893, 34.439068, 38.434280>,  <34.314362, 35.116730, 38.434349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632893, 34.439068, 38.434280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927933, 34.707550, 38.404812>,  <35.104958, 34.868641, 38.387131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927933, 34.707550, 38.404812>,  <34.632893, 34.439068, 38.434280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927933, 34.707550, 38.404812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329980, -0.263113, 0.906578,
		0.589117, -0.693003, -0.415557,
		0.737600, 0.671207, -0.073673,
		35.149212, 34.908913, 38.382710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229527, 34.082680, 38.631569>,  <34.632893, 34.439068, 38.434280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229527, 34.082680, 38.631569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372120, 34.455376, 38.659222>,  <35.457676, 34.678993, 38.675812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372120, 34.455376, 38.659222>,  <35.229527, 34.082680, 38.631569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372120, 34.455376, 38.659222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535178, -0.264290, 0.802331,
		0.765836, -0.249020, -0.592862,
		0.356484, 0.931740, 0.069133,
		35.479065, 34.734898, 38.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049812, 34.076561, 38.775543>,  <35.229527, 34.082680, 38.631569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049812, 34.076561, 38.775543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902348, 34.418312, 38.922035>,  <35.813869, 34.623363, 39.009930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902348, 34.418312, 38.922035>,  <36.049812, 34.076561, 38.775543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902348, 34.418312, 38.922035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546701, -0.119357, 0.828777,
		0.751803, 0.505755, -0.423089,
		-0.368660, 0.854380, 0.366230,
		35.791748, 34.674625, 39.031902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639061, 34.287556, 39.232170>,  <36.049812, 34.076561, 38.775543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639061, 34.287556, 39.232170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325336, 34.516720, 39.327358>,  <36.137100, 34.654221, 39.384472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325336, 34.516720, 39.327358>,  <36.639061, 34.287556, 39.232170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325336, 34.516720, 39.327358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316422, 0.039496, 0.947796,
		0.533606, 0.818664, -0.212259,
		-0.784310, 0.572913, 0.237968,
		36.090042, 34.688595, 39.398750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872185, 34.958809, 39.394550>,  <36.639061, 34.287556, 39.232170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872185, 34.958809, 39.394550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531303, 34.896702, 39.594410>,  <36.326775, 34.859440, 39.714325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531303, 34.896702, 39.594410>,  <36.872185, 34.958809, 39.394550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531303, 34.896702, 39.594410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427704, 0.343317, 0.836183,
		-0.301365, 0.926297, -0.226169,
		-0.852202, -0.155263, 0.499645,
		36.275642, 34.850124, 39.744305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915501, 35.514252, 39.963417>,  <36.872185, 34.958809, 39.394550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915501, 35.514252, 39.963417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619240, 35.264317, 40.062218>,  <36.441483, 35.114353, 40.121498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619240, 35.264317, 40.062218>,  <36.915501, 35.514252, 39.963417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619240, 35.264317, 40.062218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183867, 0.165094, 0.968988,
		-0.646241, 0.763098, -0.007390,
		-0.740652, -0.624841, 0.246999,
		36.397045, 35.076866, 40.136318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570354, 35.913670, 40.508083>,  <36.915501, 35.514252, 39.963417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570354, 35.913670, 40.508083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465542, 35.527893, 40.521935>,  <36.402657, 35.296429, 40.530247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465542, 35.527893, 40.521935>,  <36.570354, 35.913670, 40.508083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465542, 35.527893, 40.521935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200530, -0.019314, 0.979497,
		-0.943996, 0.263599, 0.198460,
		-0.262028, -0.964439, 0.034627,
		36.386932, 35.238560, 40.532322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344299, 35.783100, 41.189575>,  <36.570354, 35.913670, 40.508083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344299, 35.783100, 41.189575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457119, 35.422668, 41.057819>,  <36.524811, 35.206409, 40.978764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457119, 35.422668, 41.057819>,  <36.344299, 35.783100, 41.189575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457119, 35.422668, 41.057819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255503, -0.260386, 0.931084,
		-0.924753, -0.346771, 0.156788,
		0.282048, -0.901082, -0.329393,
		36.541733, 35.152344, 40.959000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115051, 35.467743, 41.703320>,  <36.344299, 35.783100, 41.189575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115051, 35.467743, 41.703320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377289, 35.229233, 41.517994>,  <36.534630, 35.086128, 41.406799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377289, 35.229233, 41.517994>,  <36.115051, 35.467743, 41.703320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377289, 35.229233, 41.517994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346121, -0.308019, 0.886185,
		-0.671116, -0.741339, 0.004446,
		0.655594, -0.596272, -0.463310,
		36.573967, 35.050350, 41.379002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074543, 34.856098, 42.140175>,  <36.115051, 35.467743, 41.703320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074543, 34.856098, 42.140175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422016, 34.828297, 41.943985>,  <36.630501, 34.811615, 41.826271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422016, 34.828297, 41.943985>,  <36.074543, 34.856098, 42.140175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422016, 34.828297, 41.943985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447664, -0.313793, 0.837336,
		-0.212106, -0.946944, -0.241470,
		0.868682, -0.069506, -0.490470,
		36.682621, 34.807446, 41.796844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442924, 34.238960, 42.399811>,  <36.074543, 34.856098, 42.140175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442924, 34.238960, 42.399811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724194, 34.469917, 42.233837>,  <36.892956, 34.608490, 42.134254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724194, 34.469917, 42.233837>,  <36.442924, 34.238960, 42.399811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724194, 34.469917, 42.233837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592437, -0.153102, 0.790935,
		0.393150, -0.801986, -0.449724,
		0.703172, 0.577390, -0.414934,
		36.935146, 34.643135, 42.109356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006786, 33.899448, 42.641674>,  <36.442924, 34.238960, 42.399811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006786, 33.899448, 42.641674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136433, 34.261528, 42.531715>,  <37.214218, 34.478775, 42.465740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136433, 34.261528, 42.531715>,  <37.006786, 33.899448, 42.641674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136433, 34.261528, 42.531715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636523, 0.006301, 0.771231,
		0.699849, -0.424943, -0.574137,
		0.324112, 0.905198, -0.274897,
		37.233665, 34.533089, 42.449245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720470, 33.924313, 42.754162>,  <37.006786, 33.899448, 42.641674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720470, 33.924313, 42.754162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660957, 34.319206, 42.731407>,  <37.625252, 34.556141, 42.717754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660957, 34.319206, 42.731407>,  <37.720470, 33.924313, 42.754162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660957, 34.319206, 42.731407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650792, 0.141062, 0.746037,
		0.744536, 0.073976, -0.663471,
		-0.148779, 0.987233, -0.056882,
		37.616325, 34.615376, 42.714344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330433, 34.231167, 42.990490>,  <37.720470, 33.924313, 42.754162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330433, 34.231167, 42.990490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069592, 34.527786, 43.053570>,  <37.913086, 34.705757, 43.091415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069592, 34.527786, 43.053570>,  <38.330433, 34.231167, 42.990490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069592, 34.527786, 43.053570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469027, 0.231189, 0.852388,
		0.595628, 0.629810, -0.498565,
		-0.652105, 0.741546, 0.157695,
		37.873959, 34.750252, 43.100880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734779, 34.919109, 43.269077>,  <38.330433, 34.231167, 42.990490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734779, 34.919109, 43.269077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346642, 34.986412, 43.338490>,  <38.113758, 35.026794, 43.380135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346642, 34.986412, 43.338490>,  <38.734779, 34.919109, 43.269077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346642, 34.986412, 43.338490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206582, 0.204609, 0.956796,
		0.125484, 0.964274, -0.233301,
		-0.970349, 0.168259, 0.173527,
		38.055538, 35.036888, 43.390549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630547, 35.647461, 43.513733>,  <38.734779, 34.919109, 43.269077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630547, 35.647461, 43.513733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336800, 35.409107, 43.643738>,  <38.160553, 35.266094, 43.721741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336800, 35.409107, 43.643738>,  <38.630547, 35.647461, 43.513733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336800, 35.409107, 43.643738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188330, 0.281156, 0.941001,
		-0.652107, 0.752246, -0.094248,
		-0.734363, -0.595883, 0.325014,
		38.116489, 35.230343, 43.741241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110325, 36.037235, 43.989388>,  <38.630547, 35.647461, 43.513733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110325, 36.037235, 43.989388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048393, 35.653492, 44.083759>,  <38.011234, 35.423244, 44.140381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048393, 35.653492, 44.083759>,  <38.110325, 36.037235, 43.989388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048393, 35.653492, 44.083759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220445, 0.199238, 0.954834,
		-0.963033, 0.199843, 0.180638,
		-0.154827, -0.959358, 0.235927,
		38.001945, 35.365685, 44.154537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821022, 36.136570, 44.557358>,  <38.110325, 36.037235, 43.989388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821022, 36.136570, 44.557358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897919, 35.745090, 44.586151>,  <37.944057, 35.510201, 44.603428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897919, 35.745090, 44.586151>,  <37.821022, 36.136570, 44.557358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897919, 35.745090, 44.586151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159310, 0.103508, 0.981787,
		-0.968330, -0.177273, 0.175816,
		0.192243, -0.978704, 0.071988,
		37.955593, 35.451481, 44.607746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529640, 35.965530, 45.125153>,  <37.821022, 36.136570, 44.557358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529640, 35.965530, 45.125153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821388, 35.695087, 45.083416>,  <37.996437, 35.532822, 45.058372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821388, 35.695087, 45.083416>,  <37.529640, 35.965530, 45.125153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821388, 35.695087, 45.083416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193243, 0.057309, 0.979476,
		-0.656256, -0.734567, 0.172454,
		0.729373, -0.676112, -0.104341,
		38.040199, 35.492252, 45.052113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362572, 35.414997, 45.602367>,  <37.529640, 35.965530, 45.125153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362572, 35.414997, 45.602367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758606, 35.388065, 45.553062>,  <37.996227, 35.371906, 45.523479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758606, 35.388065, 45.553062>,  <37.362572, 35.414997, 45.602367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758606, 35.388065, 45.553062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128724, 0.083949, 0.988121,
		-0.056181, -0.994193, 0.091783,
		0.990088, -0.067328, -0.123260,
		38.055634, 35.367867, 45.516083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641953, 35.198364, 46.286243>,  <37.362572, 35.414997, 45.602367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641953, 35.198364, 46.286243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986446, 35.316654, 46.120926>,  <38.193142, 35.387630, 46.021736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986446, 35.316654, 46.120926>,  <37.641953, 35.198364, 46.286243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986446, 35.316654, 46.120926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285965, 0.390279, 0.875161,
		0.420114, -0.871909, 0.251554,
		0.861237, 0.295732, -0.413297,
		38.244820, 35.405373, 45.996937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146069, 35.073856, 46.845821>,  <37.641953, 35.198364, 46.286243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146069, 35.073856, 46.845821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318447, 35.338833, 46.600723>,  <38.421875, 35.497818, 46.453663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318447, 35.338833, 46.600723>,  <38.146069, 35.073856, 46.845821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318447, 35.338833, 46.600723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352699, 0.501369, 0.790084,
		0.830595, -0.556599, -0.017578,
		0.430947, 0.662440, -0.612746,
		38.447731, 35.537563, 46.416901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942799, 34.891373, 46.884556>,  <38.146069, 35.073856, 46.845821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942799, 34.891373, 46.884556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901653, 35.275517, 46.780918>,  <38.876965, 35.506004, 46.718735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901653, 35.275517, 46.780918>,  <38.942799, 34.891373, 46.884556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901653, 35.275517, 46.780918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443067, 0.277443, 0.852477,
		0.890568, -0.027108, -0.454042,
		-0.102862, 0.960359, -0.259093,
		38.870796, 35.563625, 46.703190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546207, 35.289524, 47.087147>,  <38.942799, 34.891373, 46.884556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546207, 35.289524, 47.087147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290951, 35.586033, 47.003922>,  <39.137794, 35.763939, 46.953987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290951, 35.586033, 47.003922>,  <39.546207, 35.289524, 47.087147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290951, 35.586033, 47.003922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532099, 0.619931, 0.576677,
		0.556456, 0.257295, -0.790035,
		-0.638144, 0.741272, -0.208058,
		39.099506, 35.808414, 46.941505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956493, 35.909260, 46.775421>,  <39.546207, 35.289524, 47.087147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956493, 35.909260, 46.775421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605492, 36.023087, 46.929832>,  <39.394890, 36.091381, 47.022480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605492, 36.023087, 46.929832>,  <39.956493, 35.909260, 46.775421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605492, 36.023087, 46.929832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467605, 0.686401, 0.556955,
		-0.106477, 0.669236, -0.735382,
		-0.877501, 0.284565, 0.386024,
		39.342243, 36.108456, 47.045639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998882, 36.629059, 46.796890>,  <39.956493, 35.909260, 46.775421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998882, 36.629059, 46.796890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697739, 36.530766, 47.041122>,  <39.517052, 36.471790, 47.187664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697739, 36.530766, 47.041122>,  <39.998882, 36.629059, 46.796890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697739, 36.530766, 47.041122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296219, 0.701919, 0.647737,
		-0.587750, 0.668524, -0.455659,
		-0.752864, -0.245733, 0.610583,
		39.471878, 36.457047, 47.224297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519352, 37.244259, 46.868553>,  <39.998882, 36.629059, 46.796890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519352, 37.244259, 46.868553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496140, 36.989944, 47.176426>,  <39.482212, 36.837357, 47.361149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496140, 36.989944, 47.176426>,  <39.519352, 37.244259, 46.868553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496140, 36.989944, 47.176426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240121, 0.739459, 0.628922,
		-0.969007, 0.221311, 0.109757,
		-0.058026, -0.635785, 0.769682,
		39.478733, 36.799210, 47.407330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044044, 37.563461, 47.424526>,  <39.519352, 37.244259, 46.868553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044044, 37.563461, 47.424526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275711, 37.306629, 47.625443>,  <39.414711, 37.152531, 47.745995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275711, 37.306629, 47.625443>,  <39.044044, 37.563461, 47.424526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275711, 37.306629, 47.625443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242939, 0.724098, 0.645495,
		-0.778170, -0.251821, 0.575359,
		0.579165, -0.642082, 0.502294,
		39.449459, 37.114006, 47.776131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880070, 37.636269, 48.162472>,  <39.044044, 37.563461, 47.424526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880070, 37.636269, 48.162472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234673, 37.451393, 48.171368>,  <39.447433, 37.340469, 48.176704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234673, 37.451393, 48.171368>,  <38.880070, 37.636269, 48.162472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234673, 37.451393, 48.171368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303208, 0.616533, 0.726603,
		-0.349534, -0.637395, 0.686697,
		0.886505, -0.462185, 0.022236,
		39.500626, 37.312737, 48.178040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008316, 37.533520, 48.823990>,  <38.880070, 37.636269, 48.162472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008316, 37.533520, 48.823990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368774, 37.526878, 48.650711>,  <39.585049, 37.522892, 48.546745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368774, 37.526878, 48.650711>,  <39.008316, 37.533520, 48.823990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368774, 37.526878, 48.650711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385668, 0.487052, 0.783608,
		0.197974, -0.873215, 0.445310,
		0.901147, -0.016608, -0.433195,
		39.639118, 37.521896, 48.520752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417759, 37.241245, 49.331791>,  <39.008316, 37.533520, 48.823990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417759, 37.241245, 49.331791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688995, 37.402344, 49.085865>,  <39.851738, 37.499001, 48.938309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688995, 37.402344, 49.085865>,  <39.417759, 37.241245, 49.331791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688995, 37.402344, 49.085865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318581, 0.592775, 0.739679,
		0.662345, -0.697435, 0.273648,
		0.678089, 0.402743, -0.614811,
		39.892422, 37.523167, 48.901421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043114, 37.370346, 49.675968>,  <39.417759, 37.241245, 49.331791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043114, 37.370346, 49.675968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074741, 37.615757, 49.361687>,  <40.093719, 37.763004, 49.173119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074741, 37.615757, 49.361687>,  <40.043114, 37.370346, 49.675968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074741, 37.615757, 49.361687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333324, 0.726536, 0.600866,
		0.939491, -0.309404, -0.147057,
		0.079068, 0.613526, -0.785706,
		40.098461, 37.799816, 49.125977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729664, 37.592815, 49.613068>,  <40.043114, 37.370346, 49.675968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729664, 37.592815, 49.613068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519485, 37.871964, 49.418388>,  <40.393379, 38.039452, 49.301582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519485, 37.871964, 49.418388>,  <40.729664, 37.592815, 49.613068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519485, 37.871964, 49.418388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393633, 0.706528, 0.588108,
		0.754291, 0.117440, -0.645951,
		-0.525450, 0.697873, -0.486699,
		40.361851, 38.081326, 49.272377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109436, 38.201317, 49.517082>,  <40.729664, 37.592815, 49.613068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109436, 38.201317, 49.517082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760513, 38.388161, 49.459274>,  <40.551159, 38.500267, 49.424591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760513, 38.388161, 49.459274>,  <41.109436, 38.201317, 49.517082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760513, 38.388161, 49.459274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388051, 0.841189, 0.376587,
		0.297472, 0.272421, -0.915039,
		-0.872311, 0.467106, -0.144517,
		40.498821, 38.528294, 49.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291485, 38.910725, 49.253147>,  <41.109436, 38.201317, 49.517082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291485, 38.910725, 49.253147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927971, 38.931862, 49.418709>,  <40.709862, 38.944546, 49.518044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927971, 38.931862, 49.418709>,  <41.291485, 38.910725, 49.253147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927971, 38.931862, 49.418709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287034, 0.799136, 0.528198,
		-0.302850, 0.598823, -0.741412,
		-0.908787, 0.052846, 0.413901,
		40.655334, 38.947716, 49.542881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086514, 39.529808, 49.417168>,  <41.291485, 38.910725, 49.253147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086514, 39.529808, 49.417168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154823, 39.920055, 49.362022>,  <41.195808, 40.154205, 49.328934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154823, 39.920055, 49.362022>,  <41.086514, 39.529808, 49.417168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154823, 39.920055, 49.362022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167849, -0.166679, -0.971620,
		-0.970909, 0.142783, -0.192220,
		0.170770, 0.975618, -0.137864,
		41.206055, 40.212742, 49.320663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531368, 39.849548, 48.922966>,  <41.086514, 39.529808, 49.417168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531368, 39.849548, 48.922966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897625, 40.010345, 48.923328>,  <41.117378, 40.106823, 48.923546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897625, 40.010345, 48.923328>,  <40.531368, 39.849548, 48.922966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897625, 40.010345, 48.923328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135429, -0.306351, -0.942236,
		-0.378493, 0.862874, -0.334950,
		0.915643, 0.401992, 0.000906,
		41.172318, 40.130943, 48.923599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608013, 40.130920, 48.304264>,  <40.531368, 39.849548, 48.922966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608013, 40.130920, 48.304264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990017, 40.099831, 48.418755>,  <41.219219, 40.081177, 48.487450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990017, 40.099831, 48.418755>,  <40.608013, 40.130920, 48.304264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990017, 40.099831, 48.418755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276255, -0.118076, -0.953804,
		0.107928, 0.989958, -0.091292,
		0.955005, -0.077722, 0.286224,
		41.276520, 40.076515, 48.504623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046200, 40.553066, 47.850636>,  <40.608013, 40.130920, 48.304264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046200, 40.553066, 47.850636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320545, 40.319309, 48.024109>,  <41.485153, 40.179054, 48.128193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320545, 40.319309, 48.024109>,  <41.046200, 40.553066, 47.850636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320545, 40.319309, 48.024109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435048, -0.148460, -0.888084,
		0.583370, 0.797778, 0.152413,
		0.685866, -0.584388, 0.433679,
		41.526306, 40.143993, 48.154213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654949, 40.853889, 47.607552>,  <41.046200, 40.553066, 47.850636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654949, 40.853889, 47.607552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696529, 40.472111, 47.719425>,  <41.721478, 40.243042, 47.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696529, 40.472111, 47.719425>,  <41.654949, 40.853889, 47.607552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696529, 40.472111, 47.719425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327805, -0.232614, -0.915661,
		0.939009, 0.186867, 0.288692,
		0.103953, -0.954448, 0.279682,
		41.727715, 40.185776, 47.803329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247986, 40.594376, 47.325603>,  <41.654949, 40.853889, 47.607552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247986, 40.594376, 47.325603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022720, 40.272976, 47.402794>,  <41.887562, 40.080135, 47.449108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022720, 40.272976, 47.402794>,  <42.247986, 40.594376, 47.325603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022720, 40.272976, 47.402794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125300, -0.313860, -0.941165,
		0.816790, -0.505851, 0.277433,
		-0.563165, -0.803496, 0.192975,
		41.853771, 40.031925, 47.460686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536457, 40.078342, 47.026054>,  <42.247986, 40.594376, 47.325603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536457, 40.078342, 47.026054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159245, 39.955177, 47.076466>,  <41.932919, 39.881279, 47.106712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159245, 39.955177, 47.076466>,  <42.536457, 40.078342, 47.026054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159245, 39.955177, 47.076466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008235, -0.357085, -0.934036,
		0.332606, -0.881861, 0.334206,
		-0.943030, -0.307914, 0.126030,
		41.876335, 39.862804, 47.114273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479481, 39.460430, 46.660526>,  <42.536457, 40.078342, 47.026054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479481, 39.460430, 46.660526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090878, 39.532059, 46.722633>,  <41.857716, 39.575035, 46.759895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090878, 39.532059, 46.722633>,  <42.479481, 39.460430, 46.660526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090878, 39.532059, 46.722633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212337, -0.366558, -0.905841,
		-0.105298, -0.913000, 0.394137,
		-0.971507, 0.179073, 0.155266,
		41.799427, 39.585781, 46.769215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073521, 38.834599, 46.534470>,  <42.479481, 39.460430, 46.660526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073521, 38.834599, 46.534470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853722, 39.164764, 46.482716>,  <41.721840, 39.362865, 46.451664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853722, 39.164764, 46.482716>,  <42.073521, 38.834599, 46.534470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853722, 39.164764, 46.482716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274187, -0.324442, -0.905295,
		-0.789221, -0.461985, 0.404599,
		-0.549502, 0.825413, -0.129386,
		41.688869, 39.412388, 46.443901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590981, 38.407421, 46.371235>,  <42.073521, 38.834599, 46.534470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590981, 38.407421, 46.371235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476864, 38.783474, 46.296654>,  <41.408394, 39.009106, 46.251907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476864, 38.783474, 46.296654>,  <41.590981, 38.407421, 46.371235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476864, 38.783474, 46.296654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567682, -0.322486, -0.757456,
		-0.772236, -0.110250, 0.625697,
		-0.285288, 0.940132, -0.186448,
		41.391277, 39.065514, 46.240719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855850, 38.500336, 46.459244>,  <41.590981, 38.407421, 46.371235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855850, 38.500336, 46.459244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963783, 38.791534, 46.207146>,  <41.028542, 38.966255, 46.055885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963783, 38.791534, 46.207146>,  <40.855850, 38.500336, 46.459244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963783, 38.791534, 46.207146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701409, -0.299829, -0.646628,
		-0.659709, 0.616543, 0.429719,
		0.269831, 0.727995, -0.630249,
		41.044731, 39.009933, 46.018070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303631, 38.564980, 46.111557>,  <40.855850, 38.500336, 46.459244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303631, 38.564980, 46.111557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545033, 38.794624, 45.890224>,  <40.689873, 38.932411, 45.757423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545033, 38.794624, 45.890224>,  <40.303631, 38.564980, 46.111557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545033, 38.794624, 45.890224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576900, -0.164650, -0.800048,
		-0.550422, 0.802052, 0.231837,
		0.603508, 0.574111, -0.553330,
		40.726086, 38.966858, 45.724224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991077, 39.189297, 45.889084>,  <40.303631, 38.564980, 46.111557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991077, 39.189297, 45.889084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261826, 39.025570, 45.644363>,  <40.424274, 38.927334, 45.497532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261826, 39.025570, 45.644363>,  <39.991077, 39.189297, 45.889084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261826, 39.025570, 45.644363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719795, -0.194094, -0.666500,
		0.154064, 0.891508, -0.426003,
		0.676875, -0.409318, -0.611800,
		40.464890, 38.902775, 45.460823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707527, 39.356056, 45.244671>,  <39.991077, 39.189297, 45.889084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707527, 39.356056, 45.244671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995358, 39.095737, 45.147785>,  <40.168056, 38.939545, 45.089653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995358, 39.095737, 45.147785>,  <39.707527, 39.356056, 45.244671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995358, 39.095737, 45.147785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562403, -0.341586, -0.753009,
		0.407323, 0.678068, -0.611810,
		0.719577, -0.650801, -0.242212,
		40.211231, 38.900497, 45.075123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747185, 39.437302, 44.465046>,  <39.707527, 39.356056, 45.244671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747185, 39.437302, 44.465046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886070, 39.080341, 44.580334>,  <39.969402, 38.866165, 44.649506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886070, 39.080341, 44.580334>,  <39.747185, 39.437302, 44.465046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886070, 39.080341, 44.580334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431173, -0.424842, -0.795989,
		0.832785, 0.152108, -0.532289,
		0.347215, -0.892397, 0.288217,
		39.990234, 38.812622, 44.666798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229584, 39.133183, 43.938824>,  <39.747185, 39.437302, 44.465046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229584, 39.133183, 43.938824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103798, 38.823708, 44.158829>,  <40.028328, 38.638023, 44.290833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103798, 38.823708, 44.158829>,  <40.229584, 39.133183, 43.938824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103798, 38.823708, 44.158829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247883, -0.492378, -0.834337,
		0.916333, -0.398709, -0.036950,
		-0.314464, -0.773690, 0.550015,
		40.009460, 38.591602, 44.323833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333679, 38.555935, 43.523972>,  <40.229584, 39.133183, 43.938824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333679, 38.555935, 43.523972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088226, 38.393456, 43.794811>,  <39.940956, 38.295967, 43.957314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088226, 38.393456, 43.794811>,  <40.333679, 38.555935, 43.523972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088226, 38.393456, 43.794811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314428, -0.660901, -0.681429,
		0.724288, -0.631044, 0.277830,
		-0.613630, -0.406194, 0.677100,
		39.904137, 38.271599, 43.997940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428715, 37.794857, 43.490292>,  <40.333679, 38.555935, 43.523972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428715, 37.794857, 43.490292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074070, 37.809536, 43.674713>,  <39.861282, 37.818344, 43.785366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074070, 37.809536, 43.674713>,  <40.428715, 37.794857, 43.490292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074070, 37.809536, 43.674713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317101, -0.773905, -0.548195,
		0.336691, -0.632237, 0.697793,
		-0.886615, 0.036698, 0.461050,
		39.808086, 37.820545, 43.813026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195694, 37.031048, 43.744339>,  <40.428715, 37.794857, 43.490292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195694, 37.031048, 43.744339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870014, 37.259712, 43.703770>,  <39.674606, 37.396912, 43.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870014, 37.259712, 43.703770>,  <40.195694, 37.031048, 43.744339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870014, 37.259712, 43.703770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419745, -0.700281, -0.577425,
		-0.401115, -0.427567, 0.810119,
		-0.814199, 0.571658, -0.101424,
		39.625755, 37.431210, 43.673344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753105, 36.571918, 43.509129>,  <40.195694, 37.031048, 43.744339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753105, 36.571918, 43.509129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543091, 36.907230, 43.450310>,  <39.417084, 37.108418, 43.415020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543091, 36.907230, 43.450310>,  <39.753105, 36.571918, 43.509129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543091, 36.907230, 43.450310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383002, -0.387011, -0.838768,
		-0.760034, -0.384061, 0.524257,
		-0.525031, 0.838284, -0.147046,
		39.385582, 37.158714, 43.406197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137432, 36.313496, 43.538376>,  <39.753105, 36.571918, 43.509129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137432, 36.313496, 43.538376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156898, 36.646442, 43.317543>,  <39.168579, 36.846210, 43.185043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156898, 36.646442, 43.317543>,  <39.137432, 36.313496, 43.538376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156898, 36.646442, 43.317543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572170, -0.429826, -0.698478,
		-0.818690, 0.349876, 0.455339,
		0.048664, 0.832368, -0.552083,
		39.171497, 36.896152, 43.151917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494892, 36.356876, 43.255535>,  <39.137432, 36.313496, 43.538376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494892, 36.356876, 43.255535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669659, 36.618423, 43.008453>,  <38.774521, 36.775352, 42.860203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669659, 36.618423, 43.008453>,  <38.494892, 36.356876, 43.255535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669659, 36.618423, 43.008453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382964, -0.486153, -0.785489,
		-0.813903, 0.579756, 0.037996,
		0.436920, 0.653863, -0.617708,
		38.800735, 36.814583, 42.823139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956661, 36.525303, 42.758469>,  <38.494892, 36.356876, 43.255535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956661, 36.525303, 42.758469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301800, 36.634766, 42.588478>,  <38.508884, 36.700443, 42.486485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301800, 36.634766, 42.588478>,  <37.956661, 36.525303, 42.758469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301800, 36.634766, 42.588478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277715, -0.445832, -0.850946,
		-0.422333, 0.852259, -0.308687,
		0.862849, 0.273656, -0.424975,
		38.560654, 36.716862, 42.460987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794731, 36.554783, 42.007500>,  <37.956661, 36.525303, 42.758469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794731, 36.554783, 42.007500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193871, 36.573238, 42.026093>,  <38.433353, 36.584312, 42.037251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193871, 36.573238, 42.026093>,  <37.794731, 36.554783, 42.007500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193871, 36.573238, 42.026093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058842, -0.319847, -0.945640,
		-0.028767, 0.946345, -0.321876,
		0.997853, 0.046143, 0.046484,
		38.493225, 36.587082, 42.040039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924088, 36.872681, 41.276138>,  <37.794731, 36.554783, 42.007500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924088, 36.872681, 41.276138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249012, 36.678677, 41.405701>,  <38.443966, 36.562275, 41.483437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249012, 36.678677, 41.405701>,  <37.924088, 36.872681, 41.276138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249012, 36.678677, 41.405701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133900, -0.385444, -0.912964,
		0.567647, 0.784981, -0.248157,
		0.812310, -0.485013, 0.323905,
		38.492706, 36.533173, 41.502872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504063, 37.060619, 40.867718>,  <37.924088, 36.872681, 41.276138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504063, 37.060619, 40.867718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592319, 36.697670, 41.010818>,  <38.645271, 36.479900, 41.096680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592319, 36.697670, 41.010818>,  <38.504063, 37.060619, 40.867718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592319, 36.697670, 41.010818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036153, -0.358931, -0.932664,
		0.974685, 0.218717, -0.046390,
		0.220640, -0.907376, 0.357752,
		38.658512, 36.425457, 41.118145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915756, 36.893536, 40.425049>,  <38.504063, 37.060619, 40.867718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915756, 36.893536, 40.425049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815475, 36.544064, 40.591824>,  <38.755306, 36.334381, 40.691891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815475, 36.544064, 40.591824>,  <38.915756, 36.893536, 40.425049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815475, 36.544064, 40.591824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150756, -0.460673, -0.874673,
		0.956255, -0.156422, 0.247202,
		-0.250698, -0.873678, 0.416939,
		38.740265, 36.281960, 40.716904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488274, 36.394032, 40.348595>,  <38.915756, 36.893536, 40.425049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488274, 36.394032, 40.348595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157021, 36.171932, 40.379292>,  <38.958267, 36.038673, 40.397709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157021, 36.171932, 40.379292>,  <39.488274, 36.394032, 40.348595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157021, 36.171932, 40.379292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276985, -0.524405, -0.805157,
		0.487307, -0.645523, 0.588075,
		-0.828138, -0.555247, 0.076746,
		38.908581, 36.005360, 40.402317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703644, 35.859364, 40.112972>,  <39.488274, 36.394032, 40.348595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703644, 35.859364, 40.112972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308350, 35.798191, 40.112652>,  <39.071171, 35.761490, 40.112461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308350, 35.798191, 40.112652>,  <39.703644, 35.859364, 40.112972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308350, 35.798191, 40.112652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078244, -0.501118, -0.861835,
		0.131398, -0.851760, 0.507189,
		-0.988237, -0.152927, -0.000799,
		39.011879, 35.752312, 40.112411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643082, 35.093063, 39.941364>,  <39.703644, 35.859364, 40.112972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643082, 35.093063, 39.941364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306702, 35.281963, 39.835693>,  <39.104874, 35.395302, 39.772289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306702, 35.281963, 39.835693>,  <39.643082, 35.093063, 39.941364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306702, 35.281963, 39.835693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033602, -0.532842, -0.845547,
		-0.540083, -0.702178, 0.463957,
		-0.840940, 0.472256, -0.264185,
		39.054417, 35.423637, 39.756439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402138, 34.613907, 39.498997>,  <39.643082, 35.093063, 39.941364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402138, 34.613907, 39.498997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211826, 34.958412, 39.427612>,  <39.097637, 35.165115, 39.384781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211826, 34.958412, 39.427612>,  <39.402138, 34.613907, 39.498997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211826, 34.958412, 39.427612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091687, -0.250360, -0.963802,
		-0.874771, -0.442197, 0.198084,
		-0.475783, 0.861268, -0.178464,
		39.069092, 35.216793, 39.374073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898178, 34.473457, 39.075764>,  <39.402138, 34.613907, 39.498997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898178, 34.473457, 39.075764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913864, 34.865128, 38.996086>,  <38.923275, 35.100128, 38.948280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913864, 34.865128, 38.996086>,  <38.898178, 34.473457, 39.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913864, 34.865128, 38.996086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189848, -0.188412, -0.963565,
		-0.981030, 0.075604, 0.178506,
		0.039216, 0.979176, -0.199191,
		38.925629, 35.158882, 38.936329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297134, 34.580624, 38.556793>,  <38.898178, 34.473457, 39.075764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297134, 34.580624, 38.556793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522686, 34.910339, 38.536449>,  <38.658016, 35.108170, 38.524242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522686, 34.910339, 38.536449>,  <38.297134, 34.580624, 38.556793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522686, 34.910339, 38.536449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168300, 0.054398, -0.984234,
		-0.808529, 0.563546, 0.169402,
		0.563876, 0.824292, -0.050863,
		38.691849, 35.157627, 38.521191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929241, 35.054092, 38.260666>,  <38.297134, 34.580624, 38.556793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929241, 35.054092, 38.260666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297234, 35.189587, 38.181770>,  <38.518028, 35.270882, 38.134434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297234, 35.189587, 38.181770>,  <37.929241, 35.054092, 38.260666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297234, 35.189587, 38.181770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224275, 0.042205, -0.973611,
		-0.321471, 0.939935, 0.114798,
		0.919977, 0.338734, -0.197236,
		38.573227, 35.291206, 38.122601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857147, 35.692253, 37.839508>,  <37.929241, 35.054092, 38.260666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857147, 35.692253, 37.839508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225464, 35.547451, 37.781403>,  <38.446453, 35.460571, 37.746540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225464, 35.547451, 37.781403>,  <37.857147, 35.692253, 37.839508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225464, 35.547451, 37.781403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121347, 0.088083, -0.988694,
		0.370705, 0.928006, 0.037178,
		0.920789, -0.362002, -0.145264,
		38.501701, 35.438850, 37.737823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085903, 36.087414, 37.299324>,  <37.857147, 35.692253, 37.839508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085903, 36.087414, 37.299324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367195, 35.803040, 37.297161>,  <38.535973, 35.632416, 37.295864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367195, 35.803040, 37.297161>,  <38.085903, 36.087414, 37.299324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367195, 35.803040, 37.297161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289741, 0.293531, -0.910983,
		0.649239, 0.639067, 0.412409,
		0.703234, -0.710938, -0.005408,
		38.578167, 35.589760, 37.295540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790031, 36.392040, 37.060432>,  <38.085903, 36.087414, 37.299324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790031, 36.392040, 37.060432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783363, 35.997932, 36.992355>,  <38.779362, 35.761467, 36.951508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783363, 35.997932, 36.992355>,  <38.790031, 36.392040, 37.060432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783363, 35.997932, 36.992355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347691, 0.153884, -0.924895,
		0.937461, -0.074594, 0.340004,
		-0.016671, -0.985269, -0.170196,
		38.778362, 35.702351, 36.941296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364754, 36.280319, 36.684647>,  <38.790031, 36.392040, 37.060432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364754, 36.280319, 36.684647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159492, 35.942543, 36.623199>,  <39.036335, 35.739880, 36.586330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159492, 35.942543, 36.623199>,  <39.364754, 36.280319, 36.684647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159492, 35.942543, 36.623199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270366, 0.010832, -0.962697,
		0.814602, -0.535543, 0.222749,
		-0.513153, -0.844438, -0.153616,
		39.005547, 35.689213, 36.577114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777584, 35.995087, 36.133327>,  <39.364754, 36.280319, 36.684647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777584, 35.995087, 36.133327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406830, 35.845284, 36.143349>,  <39.184376, 35.755402, 36.149361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406830, 35.845284, 36.143349>,  <39.777584, 35.995087, 36.133327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406830, 35.845284, 36.143349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002598, -0.073140, -0.997318,
		0.375333, -0.924336, 0.068766,
		-0.926886, -0.374505, 0.025051,
		39.128765, 35.732933, 36.150864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793293, 35.448399, 35.776596>,  <39.777584, 35.995087, 36.133327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793293, 35.448399, 35.776596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403145, 35.535213, 35.792324>,  <39.169056, 35.587303, 35.801762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403145, 35.535213, 35.792324>,  <39.793293, 35.448399, 35.776596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403145, 35.535213, 35.792324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010097, 0.134164, -0.990908,
		-0.220338, -0.966900, -0.128668,
		-0.975371, 0.217036, 0.039325,
		39.110535, 35.600323, 35.804123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447876, 35.006954, 35.609932>,  <39.793293, 35.448399, 35.776596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447876, 35.006954, 35.609932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453079, 34.918957, 35.219765>,  <40.456203, 34.866158, 34.985664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453079, 34.918957, 35.219765>,  <40.447876, 35.006954, 35.609932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453079, 34.918957, 35.219765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862754, 0.495584, -0.100264,
		0.505457, -0.840238, 0.196248,
		0.013012, -0.219993, -0.975415,
		40.456982, 34.852959, 34.927139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126278, 34.790489, 35.476219>,  <40.447876, 35.006954, 35.609932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126278, 34.790489, 35.476219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951397, 34.913239, 35.138062>,  <40.846470, 34.986889, 34.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951397, 34.913239, 35.138062>,  <41.126278, 34.790489, 35.476219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951397, 34.913239, 35.138062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854001, 0.436415, -0.283238,
		0.282025, -0.845798, -0.452867,
		-0.437200, 0.306869, -0.845392,
		40.820236, 35.005299, 34.884445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620644, 34.584923, 34.937687>,  <41.126278, 34.790489, 35.476219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620644, 34.584923, 34.937687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407932, 34.889080, 34.788551>,  <41.280304, 35.071575, 34.699070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407932, 34.889080, 34.788551>,  <41.620644, 34.584923, 34.937687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407932, 34.889080, 34.788551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836268, 0.402007, -0.372889,
		-0.133660, -0.510088, -0.849674,
		-0.531781, 0.760395, -0.372838,
		41.248398, 35.117199, 34.676701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834198, 34.603603, 34.254028>,  <41.620644, 34.584923, 34.937687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834198, 34.603603, 34.254028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690727, 34.945274, 34.404617>,  <41.604645, 35.150276, 34.494972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690727, 34.945274, 34.404617>,  <41.834198, 34.603603, 34.254028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690727, 34.945274, 34.404617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742981, 0.505392, -0.438815,
		-0.565092, 0.122320, -0.815910,
		-0.358678, 0.854176, 0.376474,
		41.583122, 35.201527, 34.517559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629395, 35.105793, 33.709427>,  <41.834198, 34.603603, 34.254028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629395, 35.105793, 33.709427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780972, 35.235931, 34.055965>,  <41.871918, 35.314014, 34.263889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780972, 35.235931, 34.055965>,  <41.629395, 35.105793, 33.709427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780972, 35.235931, 34.055965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757361, 0.428938, -0.492357,
		-0.531793, 0.842712, -0.083857,
		0.378946, 0.325343, 0.866344,
		41.894657, 35.333534, 34.315868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686558, 35.867664, 33.689720>,  <41.629395, 35.105793, 33.709427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686558, 35.867664, 33.689720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977600, 35.686272, 33.895611>,  <42.152225, 35.577435, 34.019146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977600, 35.686272, 33.895611>,  <41.686558, 35.867664, 33.689720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977600, 35.686272, 33.895611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676229, 0.347961, -0.649336,
		0.115357, 0.820534, 0.559836,
		0.727603, -0.453483, 0.514729,
		42.195881, 35.550228, 34.050030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287907, 36.294125, 33.819130>,  <41.686558, 35.867664, 33.689720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287907, 36.294125, 33.819130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458794, 35.932816, 33.835083>,  <42.561325, 35.716030, 33.844654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458794, 35.932816, 33.835083>,  <42.287907, 36.294125, 33.819130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458794, 35.932816, 33.835083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599124, 0.249775, -0.760699,
		0.677154, 0.348880, 0.647878,
		0.427216, -0.903269, 0.039886,
		42.586960, 35.661835, 33.847050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011047, 36.329418, 33.990353>,  <42.287907, 36.294125, 33.819130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011047, 36.329418, 33.990353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357273, 36.224052, 33.819981>,  <43.565006, 36.160831, 33.717758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357273, 36.224052, 33.819981>,  <43.011047, 36.329418, 33.990353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357273, 36.224052, 33.819981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463099, -0.097244, -0.880956,
		0.190640, 0.959768, -0.206159,
		0.865561, -0.263418, -0.425929,
		43.616940, 36.145027, 33.692204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261623, 35.712856, 33.908726>,  <43.011047, 36.329418, 33.990353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261623, 35.712856, 33.908726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578781, 35.542294, 34.082855>,  <43.769073, 35.439957, 34.187332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578781, 35.542294, 34.082855>,  <43.261623, 35.712856, 33.908726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578781, 35.542294, 34.082855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404656, -0.902569, -0.147048,
		0.455608, -0.059562, -0.888186,
		0.792890, -0.426406, 0.435319,
		43.816647, 35.414371, 34.213451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443996, 35.188553, 33.426289>,  <43.261623, 35.712856, 33.908726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443996, 35.188553, 33.426289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596893, 35.087360, 33.781792>,  <43.688629, 35.026646, 33.995094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596893, 35.087360, 33.781792>,  <43.443996, 35.188553, 33.426289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596893, 35.087360, 33.781792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306679, -0.942013, -0.136238,
		0.871688, -0.220488, -0.437658,
		0.382240, -0.252977, 0.888760,
		43.711567, 35.011467, 34.048420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844978, 34.660488, 33.280502>,  <43.443996, 35.188553, 33.426289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844978, 34.660488, 33.280502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756710, 34.628418, 33.669323>,  <43.703751, 34.609177, 33.902615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756710, 34.628418, 33.669323>,  <43.844978, 34.660488, 33.280502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756710, 34.628418, 33.669323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391895, -0.905340, -0.163638,
		0.893154, -0.417051, 0.168359,
		-0.220668, -0.080175, 0.972048,
		43.690510, 34.604366, 33.960938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025158, 34.055748, 33.429615>,  <43.844978, 34.660488, 33.280502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025158, 34.055748, 33.429615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768795, 34.129498, 33.727673>,  <43.614979, 34.173748, 33.906509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768795, 34.129498, 33.727673>,  <44.025158, 34.055748, 33.429615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768795, 34.129498, 33.727673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365062, -0.927133, -0.084585,
		0.675255, -0.326236, 0.661514,
		-0.640907, 0.184377, 0.745147,
		43.576523, 34.184811, 33.951218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051895, 33.437347, 33.778103>,  <44.025158, 34.055748, 33.429615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051895, 33.437347, 33.778103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721664, 33.615681, 33.916466>,  <43.523525, 33.722679, 33.999485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721664, 33.615681, 33.916466>,  <44.051895, 33.437347, 33.778103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721664, 33.615681, 33.916466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465142, -0.884723, 0.030132,
		0.319467, -0.136020, 0.937784,
		-0.825581, 0.445829, 0.345908,
		43.473991, 33.749428, 34.020237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854198, 32.950668, 34.199226>,  <44.051895, 33.437347, 33.778103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854198, 32.950668, 34.199226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539730, 33.195522, 34.165226>,  <43.351051, 33.342434, 34.144825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539730, 33.195522, 34.165226>,  <43.854198, 32.950668, 34.199226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539730, 33.195522, 34.165226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617713, -0.782595, 0.077302,
		-0.019199, 0.113276, 0.993378,
		-0.786169, 0.612138, -0.084998,
		43.303879, 33.379166, 34.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353382, 32.733521, 34.638214>,  <43.854198, 32.950668, 34.199226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353382, 32.733521, 34.638214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121799, 32.947842, 34.392376>,  <42.982849, 33.076435, 34.244873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121799, 32.947842, 34.392376>,  <43.353382, 32.733521, 34.638214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121799, 32.947842, 34.392376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549672, -0.813213, -0.191164,
		-0.602222, 0.227149, 0.765331,
		-0.578955, 0.535805, -0.614593,
		42.948112, 33.108582, 34.207996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711258, 32.669575, 34.983482>,  <43.353382, 32.733521, 34.638214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711258, 32.669575, 34.983482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681778, 32.749519, 34.592663>,  <42.664089, 32.797485, 34.358170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681778, 32.749519, 34.592663>,  <42.711258, 32.669575, 34.983482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681778, 32.749519, 34.592663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487812, -0.861733, -0.139482,
		-0.869832, 0.466336, 0.161005,
		-0.073698, 0.199866, -0.977048,
		42.659668, 32.809479, 34.299549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100479, 32.383919, 34.884586>,  <42.711258, 32.669575, 34.983482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100479, 32.383919, 34.884586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259556, 32.423149, 34.519680>,  <42.355003, 32.446686, 34.300735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259556, 32.423149, 34.519680>,  <42.100479, 32.383919, 34.884586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259556, 32.423149, 34.519680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216049, -0.956303, -0.196995,
		-0.891719, 0.275437, -0.359125,
		0.397692, 0.098076, -0.912262,
		42.378864, 32.452572, 34.246002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584290, 32.235306, 34.402882>,  <42.100479, 32.383919, 34.884586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584290, 32.235306, 34.402882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932220, 32.175068, 34.214958>,  <42.140980, 32.138924, 34.102203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932220, 32.175068, 34.214958>,  <41.584290, 32.235306, 34.402882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932220, 32.175068, 34.214958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325296, -0.891018, -0.316654,
		-0.370924, 0.428262, -0.824019,
		0.869826, -0.150596, -0.469812,
		42.193169, 32.129890, 34.074013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326729, 31.894091, 33.788345>,  <41.584290, 32.235306, 34.402882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326729, 31.894091, 33.788345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716743, 31.814342, 33.827435>,  <41.950752, 31.766493, 33.850887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716743, 31.814342, 33.827435>,  <41.326729, 31.894091, 33.788345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716743, 31.814342, 33.827435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180186, -0.967683, -0.176413,
		0.129740, 0.154401, -0.979453,
		0.975039, -0.199372, 0.097727,
		42.009254, 31.754532, 33.856754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407436, 31.452885, 33.315056>,  <41.326729, 31.894091, 33.788345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407436, 31.452885, 33.315056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752945, 31.390709, 33.506779>,  <41.960251, 31.353403, 33.621815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752945, 31.390709, 33.506779>,  <41.407436, 31.452885, 33.315056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752945, 31.390709, 33.506779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097145, -0.984756, -0.144285,
		0.494431, 0.078067, -0.865704,
		0.863772, -0.155438, 0.479310,
		42.012077, 31.344078, 33.650570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744423, 31.002388, 32.951160>,  <41.407436, 31.452885, 33.315056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744423, 31.002388, 32.951160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939392, 30.972092, 33.299110>,  <42.056374, 30.953913, 33.507881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939392, 30.972092, 33.299110>,  <41.744423, 31.002388, 32.951160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939392, 30.972092, 33.299110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013385, -0.996762, -0.079290,
		0.873063, 0.027004, -0.486860,
		0.487424, -0.075742, 0.869874,
		42.085621, 30.949369, 33.560074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302101, 30.417725, 32.812164>,  <41.744423, 31.002388, 32.951160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302101, 30.417725, 32.812164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221325, 30.465614, 33.200985>,  <42.172859, 30.494349, 33.434277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221325, 30.465614, 33.200985>,  <42.302101, 30.417725, 32.812164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221325, 30.465614, 33.200985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134259, -0.986515, 0.093612,
		0.970151, -0.111602, 0.215295,
		-0.201945, 0.119723, 0.972052,
		42.160740, 30.501532, 33.492599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678219, 29.941887, 33.101116>,  <42.302101, 30.417725, 32.812164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678219, 29.941887, 33.101116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377266, 30.024763, 33.351234>,  <42.196693, 30.074488, 33.501305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377266, 30.024763, 33.351234>,  <42.678219, 29.941887, 33.101116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377266, 30.024763, 33.351234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049510, -0.964349, 0.259960,
		0.656868, 0.164630, 0.735813,
		-0.752378, 0.207190, 0.625299,
		42.151554, 30.086920, 33.538826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933334, 29.746544, 33.775341>,  <42.678219, 29.941887, 33.101116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933334, 29.746544, 33.775341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541565, 29.739410, 33.855755>,  <42.306503, 29.735130, 33.904003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541565, 29.739410, 33.855755>,  <42.933334, 29.746544, 33.775341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541565, 29.739410, 33.855755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092388, -0.925214, 0.368027,
		0.179432, 0.379027, 0.907823,
		-0.979423, -0.017836, 0.201030,
		42.247738, 29.734060, 33.916065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848026, 29.551945, 34.493702>,  <42.933334, 29.746544, 33.775341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848026, 29.551945, 34.493702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509823, 29.459066, 34.301373>,  <42.306900, 29.403339, 34.185974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509823, 29.459066, 34.301373>,  <42.848026, 29.551945, 34.493702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509823, 29.459066, 34.301373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039092, -0.925001, 0.377947,
		-0.532522, 0.300763, 0.791177,
		-0.845513, -0.232194, -0.480826,
		42.256168, 29.389408, 34.157124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585518, 29.003490, 34.939983>,  <42.848026, 29.551945, 34.493702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585518, 29.003490, 34.939983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393612, 28.975872, 34.590115>,  <42.278469, 28.959301, 34.380192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393612, 28.975872, 34.590115>,  <42.585518, 29.003490, 34.939983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393612, 28.975872, 34.590115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125851, -0.981175, 0.146484,
		-0.868325, 0.180357, 0.462043,
		-0.479764, -0.069047, -0.874676,
		42.249683, 28.955158, 34.327713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097107, 28.522511, 35.060760>,  <42.585518, 29.003490, 34.939983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097107, 28.522511, 35.060760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137783, 28.507862, 34.663105>,  <42.162189, 28.499073, 34.424511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137783, 28.507862, 34.663105>,  <42.097107, 28.522511, 35.060760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137783, 28.507862, 34.663105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014810, -0.999156, 0.038322,
		-0.994705, -0.018620, -0.101067,
		0.101695, -0.036622, -0.994141,
		42.168293, 28.496876, 34.364864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615707, 27.938557, 34.817711>,  <42.097107, 28.522511, 35.060760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615707, 27.938557, 34.817711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867161, 28.019472, 34.517338>,  <42.018032, 28.068022, 34.337116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867161, 28.019472, 34.517338>,  <41.615707, 27.938557, 34.817711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867161, 28.019472, 34.517338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092387, -0.978166, -0.186161,
		-0.772193, 0.047652, -0.633599,
		0.628636, 0.202289, -0.750930,
		42.055752, 28.080158, 34.292057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332642, 27.609846, 34.230885>,  <41.615707, 27.938557, 34.817711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332642, 27.609846, 34.230885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723019, 27.662951, 34.161713>,  <41.957245, 27.694813, 34.120209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723019, 27.662951, 34.161713>,  <41.332642, 27.609846, 34.230885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723019, 27.662951, 34.161713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106889, -0.982705, -0.151211,
		-0.190014, 0.129089, -0.973258,
		0.975945, 0.132762, -0.172930,
		42.015800, 27.702780, 34.109833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447605, 27.217049, 33.675022>,  <41.332642, 27.609846, 34.230885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447605, 27.217049, 33.675022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808525, 27.272694, 33.838238>,  <42.025078, 27.306082, 33.936169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808525, 27.272694, 33.838238>,  <41.447605, 27.217049, 33.675022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808525, 27.272694, 33.838238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204001, -0.971606, -0.119856,
		0.379783, 0.191388, -0.905061,
		0.902302, 0.139114, 0.408043,
		42.079216, 27.314428, 33.960651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475174, 27.549879, 32.980343>,  <41.447605, 27.217049, 33.675022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475174, 27.549879, 32.980343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723255, 27.589239, 33.291641>,  <41.872105, 27.612856, 33.478420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723255, 27.589239, 33.291641>,  <41.475174, 27.549879, 32.980343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723255, 27.589239, 33.291641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028571, 0.988609, -0.147770,
		-0.783920, 0.113883, 0.610328,
		0.620204, 0.098402, 0.778244,
		41.909317, 27.618759, 33.525116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391926, 27.820724, 32.206139>,  <41.475174, 27.549879, 32.980343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391926, 27.820724, 32.206139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532574, 28.029221, 31.895094>,  <41.616962, 28.154318, 31.708467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532574, 28.029221, 31.895094>,  <41.391926, 27.820724, 32.206139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532574, 28.029221, 31.895094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156846, -0.851710, -0.499990,
		-0.922911, 0.053840, -0.381230,
		0.351617, 0.521241, -0.777608,
		41.638058, 28.185593, 31.661812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202148, 27.395464, 31.647720>,  <41.391926, 27.820724, 32.206139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202148, 27.395464, 31.647720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514679, 27.570704, 31.469913>,  <41.702198, 27.675848, 31.363230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514679, 27.570704, 31.469913>,  <41.202148, 27.395464, 31.647720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514679, 27.570704, 31.469913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414308, -0.896743, -0.155570,
		-0.466772, -0.062616, -0.882158,
		0.781328, 0.438100, -0.444516,
		41.749077, 27.702133, 31.336559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330547, 26.987089, 31.071888>,  <41.202148, 27.395464, 31.647720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330547, 26.987089, 31.071888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653294, 27.179873, 31.208529>,  <41.846939, 27.295542, 31.290512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653294, 27.179873, 31.208529>,  <41.330547, 26.987089, 31.071888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653294, 27.179873, 31.208529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538867, -0.837429, -0.091294,
		0.242066, 0.257739, -0.935401,
		0.806862, 0.481958, 0.341600,
		41.895351, 27.324459, 31.311008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899673, 26.989029, 30.543571>,  <41.330547, 26.987089, 31.071888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899673, 26.989029, 30.543571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044567, 26.991179, 30.916399>,  <42.131504, 26.992468, 31.140097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044567, 26.991179, 30.916399>,  <41.899673, 26.989029, 30.543571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044567, 26.991179, 30.916399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355557, -0.925165, -0.132847,
		0.861605, 0.379526, -0.337040,
		0.362236, 0.005375, 0.932071,
		42.153236, 26.992790, 31.196020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369011, 26.532059, 30.459200>,  <41.899673, 26.989029, 30.543571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369011, 26.532059, 30.459200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368176, 26.576843, 30.856684>,  <42.367676, 26.603714, 31.095175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368176, 26.576843, 30.856684>,  <42.369011, 26.532059, 30.459200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368176, 26.576843, 30.856684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320221, -0.941312, 0.106730,
		0.947341, 0.318430, -0.033885,
		-0.002089, 0.111960, 0.993711,
		42.367550, 26.610432, 31.154797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998432, 26.411234, 30.686605>,  <42.369011, 26.532059, 30.459200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998432, 26.411234, 30.686605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766464, 26.320133, 30.999481>,  <42.627281, 26.265472, 31.187206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766464, 26.320133, 30.999481>,  <42.998432, 26.411234, 30.686605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766464, 26.320133, 30.999481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494269, -0.861590, 0.115588,
		0.647600, 0.453644, 0.612226,
		-0.579924, -0.227749, 0.782188,
		42.592487, 26.251808, 31.234138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518230, 26.368494, 30.119558>,  <42.998432, 26.411234, 30.686605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518230, 26.368494, 30.119558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636761, 26.551918, 30.454679>,  <43.707878, 26.661972, 30.655752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636761, 26.551918, 30.454679>,  <43.518230, 26.368494, 30.119558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636761, 26.551918, 30.454679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599009, -0.594000, 0.536985,
		0.743894, -0.660974, 0.098663,
		0.296327, 0.458560, 0.837802,
		43.725658, 26.689486, 30.706020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447796, 26.847214, 29.664230>,  <43.518230, 26.368494, 30.119558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447796, 26.847214, 29.664230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172264, 27.077011, 29.841082>,  <43.006947, 27.214890, 29.947191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172264, 27.077011, 29.841082>,  <43.447796, 26.847214, 29.664230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172264, 27.077011, 29.841082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719431, 0.616695, 0.319540,
		-0.089084, 0.538188, -0.838104,
		-0.688828, 0.574492, 0.442126,
		42.965614, 27.249359, 29.973719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652302, 27.554153, 29.459558>,  <43.447796, 26.847214, 29.664230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652302, 27.554153, 29.459558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406811, 27.588305, 29.773514>,  <43.259518, 27.608795, 29.961887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406811, 27.588305, 29.773514>,  <43.652302, 27.554153, 29.459558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406811, 27.588305, 29.773514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558413, 0.749726, 0.355086,
		-0.558135, 0.656217, -0.507803,
		-0.613727, 0.085378, 0.784888,
		43.222694, 27.613918, 30.008980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703777, 28.287836, 29.652142>,  <43.652302, 27.554153, 29.459558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703777, 28.287836, 29.652142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527386, 28.130850, 29.975004>,  <43.421551, 28.036657, 30.168722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527386, 28.130850, 29.975004>,  <43.703777, 28.287836, 29.652142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527386, 28.130850, 29.975004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392142, 0.724692, 0.566610,
		-0.807316, 0.566386, -0.165674,
		-0.440983, -0.392466, 0.807159,
		43.395092, 28.013109, 30.217152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384216, 28.822876, 29.900328>,  <43.703777, 28.287836, 29.652142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384216, 28.822876, 29.900328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436779, 28.572319, 30.207668>,  <43.468315, 28.421984, 30.392073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436779, 28.572319, 30.207668>,  <43.384216, 28.822876, 29.900328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436779, 28.572319, 30.207668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306535, 0.762762, 0.569412,
		-0.942746, 0.160704, 0.292241,
		0.131404, -0.626393, 0.768352,
		43.476200, 28.384401, 30.438173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104683, 29.157703, 30.367552>,  <43.384216, 28.822876, 29.900328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104683, 29.157703, 30.367552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324524, 28.885065, 30.560783>,  <43.456429, 28.721483, 30.676723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324524, 28.885065, 30.560783>,  <43.104683, 29.157703, 30.367552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324524, 28.885065, 30.560783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300372, 0.700796, 0.647041,
		-0.779560, -0.210511, 0.589891,
		0.549602, -0.681594, 0.483081,
		43.489403, 28.680588, 30.705708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007698, 29.267815, 31.068613>,  <43.104683, 29.157703, 30.367552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007698, 29.267815, 31.068613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352654, 29.068220, 31.102800>,  <43.559628, 28.948463, 31.123314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352654, 29.068220, 31.102800>,  <43.007698, 29.267815, 31.068613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352654, 29.068220, 31.102800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298180, 0.637088, 0.710780,
		-0.409120, -0.587481, 0.698203,
		0.862386, -0.498984, 0.085471,
		43.611370, 28.918526, 31.128441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095402, 29.202635, 31.808977>,  <43.007698, 29.267815, 31.068613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095402, 29.202635, 31.808977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456043, 29.152060, 31.643507>,  <43.672428, 29.121714, 31.544226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456043, 29.152060, 31.643507>,  <43.095402, 29.202635, 31.808977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456043, 29.152060, 31.643507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397450, 0.619584, 0.676867,
		0.170724, -0.774680, 0.608871,
		0.901602, -0.126438, -0.413675,
		43.726524, 29.114128, 31.519405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657997, 29.091564, 32.356705>,  <43.095402, 29.202635, 31.808977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657997, 29.091564, 32.356705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838406, 29.218170, 32.022903>,  <43.946651, 29.294134, 31.822622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838406, 29.218170, 32.022903>,  <43.657997, 29.091564, 32.356705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838406, 29.218170, 32.022903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441307, 0.733622, 0.516766,
		0.775775, -0.601346, 0.191199,
		0.451023, 0.316516, -0.834503,
		43.973713, 29.313126, 31.772552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307590, 29.196001, 32.559471>,  <43.657997, 29.091564, 32.356705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307590, 29.196001, 32.559471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274975, 29.410057, 32.223145>,  <44.255405, 29.538490, 32.021347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274975, 29.410057, 32.223145>,  <44.307590, 29.196001, 32.559471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274975, 29.410057, 32.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460465, 0.768424, 0.444407,
		0.883925, -0.350930, -0.309071,
		-0.081542, 0.535139, -0.840820,
		44.250511, 29.570599, 31.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946167, 29.434868, 32.582233>,  <44.307590, 29.196001, 32.559471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946167, 29.434868, 32.582233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747837, 29.654974, 32.313496>,  <44.628841, 29.787037, 32.152252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747837, 29.654974, 32.313496>,  <44.946167, 29.434868, 32.582233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747837, 29.654974, 32.313496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529700, 0.804684, 0.268146,
		0.688172, -0.222923, -0.690453,
		-0.495820, 0.550263, -0.671843,
		44.599091, 29.820053, 32.111942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440639, 29.809271, 32.160522>,  <44.946167, 29.434868, 32.582233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440639, 29.809271, 32.160522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105038, 30.019939, 32.105854>,  <44.903675, 30.146341, 32.073051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105038, 30.019939, 32.105854>,  <45.440639, 29.809271, 32.160522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105038, 30.019939, 32.105854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461327, 0.821732, 0.334565,
		0.288516, 0.217651, -0.932409,
		-0.839009, 0.526673, -0.136674,
		44.853336, 30.177942, 32.064850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610340, 30.422451, 31.914410>,  <45.440639, 29.809271, 32.160522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610340, 30.422451, 31.914410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247993, 30.537392, 32.038879>,  <45.030586, 30.606356, 32.113560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247993, 30.537392, 32.038879>,  <45.610340, 30.422451, 31.914410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247993, 30.537392, 32.038879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394681, 0.839281, 0.373944,
		-0.153707, 0.461558, -0.873692,
		-0.905870, 0.287352, 0.311172,
		44.976231, 30.623598, 32.132233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528439, 31.113699, 31.717943>,  <45.610340, 30.422451, 31.914410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528439, 31.113699, 31.717943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264923, 31.059181, 32.013893>,  <45.106812, 31.026470, 32.191463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264923, 31.059181, 32.013893>,  <45.528439, 31.113699, 31.717943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264923, 31.059181, 32.013893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278759, 0.869229, 0.408332,
		-0.698776, 0.475252, -0.534647,
		-0.658791, -0.136295, 0.739877,
		45.067287, 31.018293, 32.235855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226978, 31.787916, 31.795614>,  <45.528439, 31.113699, 31.717943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226978, 31.787916, 31.795614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087959, 31.609922, 32.125755>,  <45.004547, 31.503126, 32.323841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087959, 31.609922, 32.125755>,  <45.226978, 31.787916, 31.795614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087959, 31.609922, 32.125755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037323, 0.872958, 0.486365,
		-0.936921, 0.199837, -0.286782,
		-0.347543, -0.444983, 0.825351,
		44.983696, 31.476427, 32.373360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595276, 32.170013, 32.082138>,  <45.226978, 31.787916, 31.795614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595276, 32.170013, 32.082138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771389, 31.974199, 32.383205>,  <44.877056, 31.856712, 32.563847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771389, 31.974199, 32.383205>,  <44.595276, 32.170013, 32.082138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771389, 31.974199, 32.383205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158572, 0.867510, 0.471467,
		-0.883748, -0.088224, 0.459572,
		0.440278, -0.489533, 0.752670,
		44.903473, 31.827339, 32.609005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483227, 32.674763, 32.667728>,  <44.595276, 32.170013, 32.082138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483227, 32.674763, 32.667728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742779, 32.423096, 32.838894>,  <44.898510, 32.272095, 32.941593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742779, 32.423096, 32.838894>,  <44.483227, 32.674763, 32.667728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742779, 32.423096, 32.838894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223651, 0.695248, 0.683089,
		-0.727282, -0.347537, 0.591844,
		0.648877, -0.629165, 0.427914,
		44.937443, 32.234344, 32.967270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355228, 32.666561, 33.340881>,  <44.483227, 32.674763, 32.667728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355228, 32.666561, 33.340881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732090, 32.533524, 33.324287>,  <44.958206, 32.453701, 33.314331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732090, 32.533524, 33.324287>,  <44.355228, 32.666561, 33.340881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732090, 32.533524, 33.324287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259441, 0.645318, 0.718509,
		-0.212202, -0.687711, 0.694280,
		0.942158, -0.332593, -0.041483,
		45.014736, 32.433746, 33.311844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663853, 32.378582, 34.036591>,  <44.355228, 32.666561, 33.340881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663853, 32.378582, 34.036591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951080, 32.529793, 33.802849>,  <45.123417, 32.620522, 33.662605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951080, 32.529793, 33.802849>,  <44.663853, 32.378582, 34.036591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951080, 32.529793, 33.802849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230771, 0.662794, 0.712355,
		0.656567, -0.646388, 0.388719,
		0.718098, 0.378004, -0.584336,
		45.166504, 32.643200, 33.627544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167572, 32.604462, 34.419815>,  <44.663853, 32.378582, 34.036591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167572, 32.604462, 34.419815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297798, 32.788059, 34.089157>,  <45.375935, 32.898216, 33.890762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297798, 32.788059, 34.089157>,  <45.167572, 32.604462, 34.419815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297798, 32.788059, 34.089157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396138, 0.727627, 0.560030,
		0.858535, -0.509789, 0.055065,
		0.325564, 0.458992, -0.826640,
		45.395466, 32.925758, 33.841164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713535, 32.816555, 34.672485>,  <45.167572, 32.604462, 34.419815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713535, 32.816555, 34.672485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682789, 33.016739, 34.327549>,  <45.664341, 33.136848, 34.120586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682789, 33.016739, 34.327549>,  <45.713535, 32.816555, 34.672485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682789, 33.016739, 34.327549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439829, 0.793216, 0.421139,
		0.894786, -0.346912, -0.281086,
		-0.076864, 0.500459, -0.862341,
		45.659729, 33.166878, 34.068848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377827, 33.214134, 34.608379>,  <45.713535, 32.816555, 34.672485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377827, 33.214134, 34.608379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104168, 33.397923, 34.381809>,  <45.939972, 33.508194, 34.245869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104168, 33.397923, 34.381809>,  <46.377827, 33.214134, 34.608379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104168, 33.397923, 34.381809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349569, 0.888174, 0.298243,
		0.640114, 0.006039, -0.768256,
		-0.684146, 0.459468, -0.566421,
		45.898926, 33.535763, 34.211884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782452, 33.703468, 34.306908>,  <46.377827, 33.214134, 34.608379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782452, 33.703468, 34.306908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399990, 33.818485, 34.284653>,  <46.170513, 33.887497, 34.271297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399990, 33.818485, 34.284653>,  <46.782452, 33.703468, 34.306908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399990, 33.818485, 34.284653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252140, 0.904813, 0.343130,
		0.149010, 0.314054, -0.937638,
		-0.956149, 0.287546, -0.055641,
		46.113144, 33.904751, 34.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186893, 33.855190, 34.845703>,  <46.782452, 33.703468, 34.306908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186893, 33.855190, 34.845703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484161, 33.771740, 35.100002>,  <46.662521, 33.721668, 35.252583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484161, 33.771740, 35.100002>,  <46.186893, 33.855190, 34.845703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.484161, 33.771740, 35.100002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591411, 0.649195, -0.478309,
		-0.312935, 0.731452, 0.605847,
		0.743172, -0.208625, 0.635744,
		46.707111, 33.709152, 35.290726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363499, 34.468784, 35.173340>,  <46.186893, 33.855190, 34.845703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363499, 34.468784, 35.173340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614403, 34.176998, 35.064217>,  <46.764946, 34.001926, 34.998741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614403, 34.176998, 35.064217>,  <46.363499, 34.468784, 35.173340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614403, 34.176998, 35.064217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553229, 0.663898, -0.503168,
		0.548160, 0.164693, 0.819998,
		0.627263, -0.729463, -0.272809,
		46.802582, 33.958160, 34.982372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169136, 34.634422, 35.261784>,  <46.363499, 34.468784, 35.173340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169136, 34.634422, 35.261784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.096695, 34.384144, 34.958282>,  <47.053230, 34.233978, 34.776180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.096695, 34.384144, 34.958282>,  <47.169136, 34.634422, 35.261784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.096695, 34.384144, 34.958282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527505, 0.589339, -0.611897,
		0.830024, -0.511063, 0.223325,
		-0.181104, -0.625694, -0.758754,
		47.042362, 34.196434, 34.730656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438850, 34.783413, 34.492046>,  <47.169136, 34.634422, 35.261784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438850, 34.783413, 34.492046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703094, 34.880695, 34.776146>,  <47.861641, 34.939064, 34.946606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703094, 34.880695, 34.776146>,  <47.438850, 34.783413, 34.492046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703094, 34.880695, 34.776146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605535, 0.386613, -0.695599,
		-0.443764, 0.889596, 0.108129,
		0.660606, 0.243206, 0.710247,
		47.901276, 34.953655, 34.989220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.873184, 41.056374, 42.844166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525093, 40.967979, 43.020287>,  <36.316238, 40.914944, 43.125957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525093, 40.967979, 43.020287>,  <36.873184, 41.056374, 42.844166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525093, 40.967979, 43.020287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448311, -0.015309, -0.893746,
		0.204244, -0.975157, -0.085747,
		-0.870230, -0.220984, 0.440301,
		36.264023, 40.901684, 43.152378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652058, 40.455074, 42.435612>,  <36.873184, 41.056374, 42.844166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652058, 40.455074, 42.435612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342827, 40.590260, 42.650318>,  <36.157288, 40.671371, 42.779144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342827, 40.590260, 42.650318>,  <36.652058, 40.455074, 42.435612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342827, 40.590260, 42.650318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585095, -0.053140, -0.809222,
		-0.244969, -0.939656, 0.238825,
		-0.773081, 0.337969, 0.536770,
		36.110901, 40.691650, 42.811348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125656, 39.984043, 42.350349>,  <36.652058, 40.455074, 42.435612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125656, 39.984043, 42.350349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939381, 40.326004, 42.441799>,  <35.827614, 40.531181, 42.496670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939381, 40.326004, 42.441799>,  <36.125656, 39.984043, 42.350349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939381, 40.326004, 42.441799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545732, -0.074058, -0.834681,
		-0.696641, -0.513473, 0.501037,
		-0.465692, 0.854905, 0.228626,
		35.799671, 40.582474, 42.510387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334507, 39.880314, 42.458858>,  <36.125656, 39.984043, 42.350349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334507, 39.880314, 42.458858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395115, 40.259583, 42.347137>,  <35.431480, 40.487144, 42.280106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395115, 40.259583, 42.347137>,  <35.334507, 39.880314, 42.458858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395115, 40.259583, 42.347137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654172, -0.115638, -0.747454,
		-0.741014, 0.295965, 0.602747,
		0.151519, 0.948173, -0.279301,
		35.440571, 40.544033, 42.263348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806465, 40.028702, 42.047100>,  <35.334507, 39.880314, 42.458858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806465, 40.028702, 42.047100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993069, 40.369099, 41.950619>,  <35.105030, 40.573338, 41.892731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993069, 40.369099, 41.950619>,  <34.806465, 40.028702, 42.047100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993069, 40.369099, 41.950619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387335, -0.048610, -0.920657,
		-0.795199, 0.522918, 0.306944,
		0.466508, 0.850995, -0.241200,
		35.133022, 40.624397, 41.878258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344505, 40.537109, 41.880810>,  <34.806465, 40.028702, 42.047100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344505, 40.537109, 41.880810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681694, 40.658787, 41.703335>,  <34.884007, 40.731792, 41.596851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681694, 40.658787, 41.703335>,  <34.344505, 40.537109, 41.880810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681694, 40.658787, 41.703335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478864, 0.048509, -0.876548,
		-0.245121, 0.951373, 0.186561,
		0.842974, 0.304197, -0.443688,
		34.934586, 40.750046, 41.570229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228573, 41.207951, 41.552166>,  <34.344505, 40.537109, 41.880810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228573, 41.207951, 41.552166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.527691, 41.017124, 41.367470>,  <34.707161, 40.902626, 41.256653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.527691, 41.017124, 41.367470>,  <34.228573, 41.207951, 41.552166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527691, 41.017124, 41.367470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562926, -0.086848, -0.821931,
		0.352017, 0.874564, -0.333499,
		0.747795, -0.477069, -0.461743,
		34.752029, 40.874004, 41.228947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103146, 41.354965, 40.826675>,  <34.228573, 41.207951, 41.552166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103146, 41.354965, 40.826675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.392735, 41.081760, 40.787956>,  <34.566486, 40.917839, 40.764725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.392735, 41.081760, 40.787956>,  <34.103146, 41.354965, 40.826675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392735, 41.081760, 40.787956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289873, -0.173878, -0.941138,
		0.625975, 0.709412, -0.323868,
		0.723968, -0.683009, -0.096796,
		34.609924, 40.876858, 40.758919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224422, 41.360344, 40.036343>,  <34.103146, 41.354965, 40.826675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224422, 41.360344, 40.036343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425110, 41.043098, 40.174473>,  <34.545525, 40.852753, 40.257351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425110, 41.043098, 40.174473>,  <34.224422, 41.360344, 40.036343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425110, 41.043098, 40.174473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018924, -0.389050, -0.921022,
		0.864823, 0.468630, -0.180185,
		0.501720, -0.793111, 0.345328,
		34.575626, 40.805164, 40.278072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743042, 41.195404, 39.618481>,  <34.224422, 41.360344, 40.036343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743042, 41.195404, 39.618481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705727, 40.824650, 39.763905>,  <34.683338, 40.602196, 39.851158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705727, 40.824650, 39.763905>,  <34.743042, 41.195404, 39.618481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705727, 40.824650, 39.763905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075365, -0.370679, -0.925699,
		0.992782, -0.058961, 0.104437,
		-0.093293, -0.926888, 0.363559,
		34.677738, 40.546585, 39.872971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224724, 40.759983, 39.318710>,  <34.743042, 41.195404, 39.618481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224724, 40.759983, 39.318710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974792, 40.477665, 39.452244>,  <34.824833, 40.308273, 39.532364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974792, 40.477665, 39.452244>,  <35.224724, 40.759983, 39.318710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974792, 40.477665, 39.452244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138804, -0.521181, -0.842083,
		0.768323, -0.479821, 0.423617,
		-0.624830, -0.705791, 0.333834,
		34.787342, 40.265926, 39.552395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598236, 40.094261, 39.164101>,  <35.224724, 40.759983, 39.318710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598236, 40.094261, 39.164101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208603, 40.023952, 39.221046>,  <34.974823, 39.981770, 39.255215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208603, 40.023952, 39.221046>,  <35.598236, 40.094261, 39.164101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208603, 40.023952, 39.221046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033276, -0.733909, -0.678432,
		0.223728, -0.656112, 0.720738,
		-0.974083, -0.175768, 0.142363,
		34.916378, 39.971222, 39.263756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532207, 39.357864, 39.432648>,  <35.598236, 40.094261, 39.164101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532207, 39.357864, 39.432648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200024, 39.488564, 39.252174>,  <35.000713, 39.566982, 39.143890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200024, 39.488564, 39.252174>,  <35.532207, 39.357864, 39.432648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200024, 39.488564, 39.252174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112581, -0.694768, -0.710369,
		-0.545584, -0.640728, 0.540191,
		-0.830460, 0.326750, -0.451187,
		34.950886, 39.586590, 39.116817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214973, 38.747356, 39.267395>,  <35.532207, 39.357864, 39.432648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214973, 38.747356, 39.267395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032528, 39.015278, 39.033024>,  <34.923061, 39.176033, 38.892399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032528, 39.015278, 39.033024>,  <35.214973, 38.747356, 39.267395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032528, 39.015278, 39.033024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092980, -0.618936, -0.779919,
		-0.885049, -0.410215, 0.220029,
		-0.456118, 0.669808, -0.585930,
		34.895691, 39.216221, 38.857246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450874, 38.429256, 39.046387>,  <35.214973, 38.747356, 39.267395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450874, 38.429256, 39.046387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612080, 38.698154, 38.797977>,  <34.708801, 38.859493, 38.648933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612080, 38.698154, 38.797977>,  <34.450874, 38.429256, 39.046387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612080, 38.698154, 38.797977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064163, -0.697651, -0.713559,
		-0.912942, 0.247728, -0.324297,
		0.403014, 0.672245, -0.621020,
		34.732983, 38.899830, 38.611671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953175, 38.709400, 38.406456>,  <34.450874, 38.429256, 39.046387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953175, 38.709400, 38.406456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348457, 38.707527, 38.345234>,  <34.585629, 38.706402, 38.308502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348457, 38.707527, 38.345234>,  <33.953175, 38.709400, 38.406456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348457, 38.707527, 38.345234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102299, -0.763942, -0.637124,
		-0.113938, 0.645268, -0.755412,
		0.988207, -0.004685, -0.153053,
		34.644920, 38.706123, 38.299316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879677, 38.076740, 38.016346>,  <33.953175, 38.709400, 38.406456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879677, 38.076740, 38.016346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.233318, 38.236950, 37.920071>,  <34.445503, 38.333076, 37.862305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.233318, 38.236950, 37.920071>,  <33.879677, 38.076740, 38.016346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233318, 38.236950, 37.920071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047658, -0.589691, -0.806222,
		-0.464847, 0.701316, -0.540438,
		0.884108, 0.400525, -0.240693,
		34.498550, 38.357109, 37.847862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831974, 38.323101, 37.333244>,  <33.879677, 38.076740, 38.016346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831974, 38.323101, 37.333244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224789, 38.273357, 37.390011>,  <34.460476, 38.243511, 37.424072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224789, 38.273357, 37.390011>,  <33.831974, 38.323101, 37.333244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224789, 38.273357, 37.390011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062850, -0.493591, -0.867420,
		0.177920, 0.860757, -0.476908,
		0.982036, -0.124358, 0.141918,
		34.519398, 38.236050, 37.432587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199055, 38.594509, 36.724430>,  <33.831974, 38.323101, 37.333244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199055, 38.594509, 36.724430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409725, 38.305618, 36.903763>,  <34.536129, 38.132286, 37.011364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409725, 38.305618, 36.903763>,  <34.199055, 38.594509, 36.724430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409725, 38.305618, 36.903763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007411, -0.523490, -0.852000,
		0.850034, 0.452050, -0.270357,
		0.526675, -0.722225, 0.448335,
		34.567726, 38.088951, 37.038261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592899, 38.364044, 36.233418>,  <34.199055, 38.594509, 36.724430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592899, 38.364044, 36.233418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627316, 38.058819, 36.489647>,  <34.647964, 37.875683, 36.643383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627316, 38.058819, 36.489647>,  <34.592899, 38.364044, 36.233418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627316, 38.058819, 36.489647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061925, -0.645810, -0.760982,
		0.994366, 0.025804, -0.102816,
		0.086036, -0.763062, 0.640573,
		34.653126, 37.829899, 36.681820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107075, 37.956062, 36.010490>,  <34.592899, 38.364044, 36.233418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107075, 37.956062, 36.010490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903362, 37.692741, 36.232216>,  <34.781136, 37.534748, 36.365253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903362, 37.692741, 36.232216>,  <35.107075, 37.956062, 36.010490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903362, 37.692741, 36.232216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025654, -0.655432, -0.754818,
		0.860215, -0.370198, 0.350690,
		-0.509286, -0.658303, 0.554316,
		34.750576, 37.495251, 36.398510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544548, 37.263996, 36.155880>,  <35.107075, 37.956062, 36.010490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544548, 37.263996, 36.155880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154514, 37.179016, 36.181408>,  <34.920494, 37.128029, 36.196724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154514, 37.179016, 36.181408>,  <35.544548, 37.263996, 36.155880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154514, 37.179016, 36.181408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145852, -0.830792, -0.537133,
		0.167137, -0.514442, 0.841080,
		-0.975086, -0.212448, 0.063824,
		34.861988, 37.115280, 36.200554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804443, 36.821323, 35.619049>,  <35.544548, 37.263996, 36.155880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804443, 36.821323, 35.619049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180565, 36.824642, 35.482952>,  <36.406239, 36.826633, 35.401295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180565, 36.824642, 35.482952>,  <35.804443, 36.821323, 35.619049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180565, 36.824642, 35.482952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324573, 0.278943, 0.903794,
		0.102404, -0.960272, 0.259598,
		0.940301, 0.008294, -0.340243,
		36.462654, 36.827129, 35.380878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201450, 36.416096, 36.091991>,  <35.804443, 36.821323, 35.619049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201450, 36.416096, 36.091991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458775, 36.662956, 35.910763>,  <36.613171, 36.811073, 35.802025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458775, 36.662956, 35.910763>,  <36.201450, 36.416096, 36.091991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458775, 36.662956, 35.910763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308179, 0.332983, 0.891150,
		0.700838, -0.712916, 0.024019,
		0.643313, 0.617150, -0.453073,
		36.651768, 36.848103, 35.774841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786316, 36.131733, 36.352898>,  <36.201450, 36.416096, 36.091991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786316, 36.131733, 36.352898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883320, 36.490131, 36.204094>,  <36.941521, 36.705170, 36.114811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883320, 36.490131, 36.204094>,  <36.786316, 36.131733, 36.352898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883320, 36.490131, 36.204094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284156, 0.301035, 0.910293,
		0.927603, -0.326459, -0.181598,
		0.242506, 0.895992, -0.372006,
		36.956070, 36.758930, 36.092491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471912, 36.285439, 36.651993>,  <36.786316, 36.131733, 36.352898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471912, 36.285439, 36.651993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.297142, 36.628139, 36.542400>,  <37.192280, 36.833759, 36.476643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.297142, 36.628139, 36.542400>,  <37.471912, 36.285439, 36.651993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297142, 36.628139, 36.542400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265009, 0.413687, 0.870996,
		0.859573, 0.307951, -0.407798,
		-0.436925, 0.856755, -0.273984,
		37.166065, 36.885166, 36.460205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944813, 36.741516, 36.827671>,  <37.471912, 36.285439, 36.651993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944813, 36.741516, 36.827671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626896, 36.978817, 36.776516>,  <37.436146, 37.121197, 36.745823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626896, 36.978817, 36.776516>,  <37.944813, 36.741516, 36.827671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626896, 36.978817, 36.776516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078092, 0.308961, 0.947863,
		0.601833, 0.743369, -0.291888,
		-0.794795, 0.593250, -0.127891,
		37.388458, 37.156792, 36.738148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185265, 37.433849, 36.916801>,  <37.944813, 36.741516, 36.827671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185265, 37.433849, 36.916801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793373, 37.433887, 36.996925>,  <37.558239, 37.433910, 37.045002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793373, 37.433887, 36.996925>,  <38.185265, 37.433849, 36.916801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793373, 37.433887, 36.996925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189783, 0.320367, 0.928088,
		-0.064089, 0.947294, -0.313891,
		-0.979732, 0.000091, 0.200312,
		37.499454, 37.433914, 37.057018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984436, 38.100853, 37.168823>,  <38.185265, 37.433849, 36.916801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984436, 38.100853, 37.168823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681904, 37.860435, 37.272129>,  <37.500385, 37.716183, 37.334114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681904, 37.860435, 37.272129>,  <37.984436, 38.100853, 37.168823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681904, 37.860435, 37.272129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035010, 0.357034, 0.933435,
		-0.653248, 0.715031, -0.248994,
		-0.756334, -0.601048, 0.258265,
		37.455002, 37.680122, 37.349609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561359, 38.511463, 37.447598>,  <37.984436, 38.100853, 37.168823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561359, 38.511463, 37.447598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475838, 38.141010, 37.571899>,  <37.424526, 37.918739, 37.646481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475838, 38.141010, 37.571899>,  <37.561359, 38.511463, 37.447598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475838, 38.141010, 37.571899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133604, 0.287398, 0.948447,
		-0.967698, 0.244299, 0.062289,
		-0.213803, -0.926132, 0.310754,
		37.411697, 37.863171, 37.665127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089424, 38.613739, 37.994125>,  <37.561359, 38.511463, 37.447598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089424, 38.613739, 37.994125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249043, 38.255280, 38.071777>,  <37.344814, 38.040203, 38.118366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249043, 38.255280, 38.071777>,  <37.089424, 38.613739, 37.994125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249043, 38.255280, 38.071777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224147, 0.300627, 0.927028,
		-0.889111, -0.326417, 0.320834,
		0.399049, -0.896145, 0.194125,
		37.368759, 37.986435, 38.130016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773682, 38.306255, 38.608654>,  <37.089424, 38.613739, 37.994125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773682, 38.306255, 38.608654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115494, 38.105190, 38.556347>,  <37.320583, 37.984550, 38.524963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115494, 38.105190, 38.556347>,  <36.773682, 38.306255, 38.608654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115494, 38.105190, 38.556347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207489, 0.099571, 0.973157,
		-0.476151, -0.858728, 0.189384,
		0.854534, -0.502665, -0.130765,
		37.371853, 37.954391, 38.517117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797009, 37.783630, 39.198078>,  <36.773682, 38.306255, 38.608654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797009, 37.783630, 39.198078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164501, 37.839130, 39.050198>,  <37.384998, 37.872429, 38.961472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164501, 37.839130, 39.050198>,  <36.797009, 37.783630, 39.198078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164501, 37.839130, 39.050198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342612, 0.185394, 0.921003,
		0.196341, -0.972818, 0.122786,
		0.918731, 0.138763, -0.369700,
		37.440121, 37.880753, 38.939289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159370, 37.436104, 39.647545>,  <36.797009, 37.783630, 39.198078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159370, 37.436104, 39.647545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421558, 37.687798, 39.480488>,  <37.578869, 37.838814, 39.380253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421558, 37.687798, 39.480488>,  <37.159370, 37.436104, 39.647545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421558, 37.687798, 39.480488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410787, 0.166989, 0.896308,
		0.633733, -0.759061, -0.149028,
		0.655466, 0.629239, -0.417639,
		37.618198, 37.876568, 39.355198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762032, 37.460850, 40.116978>,  <37.159370, 37.436104, 39.647545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762032, 37.460850, 40.116978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834148, 37.791821, 39.904236>,  <37.877419, 37.990402, 39.776592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834148, 37.791821, 39.904236>,  <37.762032, 37.460850, 40.116978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834148, 37.791821, 39.904236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490867, 0.392881, 0.777620,
		0.852376, -0.401265, -0.335323,
		0.180289, 0.827424, -0.531851,
		37.888237, 38.040047, 39.744682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498985, 37.644493, 40.340279>,  <37.762032, 37.460850, 40.116978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498985, 37.644493, 40.340279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330326, 37.964233, 40.169052>,  <38.229130, 38.156078, 40.066315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330326, 37.964233, 40.169052>,  <38.498985, 37.644493, 40.340279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330326, 37.964233, 40.169052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421519, 0.590770, 0.687977,
		0.802829, 0.109645, -0.586040,
		-0.421649, 0.799355, -0.428070,
		38.203831, 38.204041, 40.040630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046249, 38.120647, 40.284500>,  <38.498985, 37.644493, 40.340279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046249, 38.120647, 40.284500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706001, 38.330948, 40.282417>,  <38.501854, 38.457127, 40.281166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706001, 38.330948, 40.282417>,  <39.046249, 38.120647, 40.284500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706001, 38.330948, 40.282417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314923, 0.517402, 0.795688,
		0.421030, 0.675189, -0.605685,
		-0.850622, 0.525753, -0.005209,
		38.450813, 38.488674, 40.280853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164619, 38.822395, 40.468399>,  <39.046249, 38.120647, 40.284500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164619, 38.822395, 40.468399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776627, 38.830280, 40.565342>,  <38.543831, 38.835011, 40.623508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776627, 38.830280, 40.565342>,  <39.164619, 38.822395, 40.468399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776627, 38.830280, 40.565342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195154, 0.657679, 0.727580,
		-0.145053, 0.753040, -0.641786,
		-0.969987, 0.019709, 0.242357,
		38.485630, 38.836193, 40.638050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161266, 39.497574, 40.679485>,  <39.164619, 38.822395, 40.468399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161266, 39.497574, 40.679485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846710, 39.308117, 40.838108>,  <38.657978, 39.194443, 40.933281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846710, 39.308117, 40.838108>,  <39.161266, 39.497574, 40.679485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846710, 39.308117, 40.838108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002142, 0.639867, 0.768483,
		-0.617729, 0.605175, -0.502169,
		-0.786388, -0.473638, 0.396561,
		38.610794, 39.166027, 40.957077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681301, 40.051792, 40.794468>,  <39.161266, 39.497574, 40.679485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681301, 40.051792, 40.794468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587246, 39.737480, 41.023296>,  <38.530815, 39.548893, 41.160595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587246, 39.737480, 41.023296>,  <38.681301, 40.051792, 40.794468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587246, 39.737480, 41.023296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124151, 0.608033, 0.784144,
		-0.964001, 0.113355, -0.240524,
		-0.235134, -0.785777, 0.572072,
		38.516705, 39.501747, 41.194920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.061043, 40.251808, 41.104084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176716, 39.978916, 41.372692>,  <38.246120, 39.815182, 41.533855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176716, 39.978916, 41.372692>,  <38.061043, 40.251808, 41.104084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176716, 39.978916, 41.372692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162505, 0.656322, 0.736772,
		-0.943379, -0.322190, 0.078934,
		0.289187, -0.682228, 0.671518,
		38.263474, 39.774246, 41.574146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622353, 40.289040, 41.627060>,  <38.061043, 40.251808, 41.104084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622353, 40.289040, 41.627060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933403, 40.100487, 41.793480>,  <38.120033, 39.987354, 41.893333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933403, 40.100487, 41.793480>,  <37.622353, 40.289040, 41.627060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933403, 40.100487, 41.793480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137619, 0.518069, 0.844195,
		-0.613484, -0.713722, 0.337991,
		0.777624, -0.471386, 0.416049,
		38.166691, 39.959072, 41.918293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442844, 40.282166, 42.317657>,  <37.622353, 40.289040, 41.627060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442844, 40.282166, 42.317657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828949, 40.177700, 42.320866>,  <38.060612, 40.115021, 42.322792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828949, 40.177700, 42.320866>,  <37.442844, 40.282166, 42.317657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828949, 40.177700, 42.320866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121043, 0.474156, 0.872081,
		-0.231560, -0.840814, 0.489297,
		0.965261, -0.261164, 0.008021,
		38.118526, 40.099350, 42.323273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501595, 40.201813, 42.956215>,  <37.442844, 40.282166, 42.317657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501595, 40.201813, 42.956215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879448, 40.234863, 42.829189>,  <38.106159, 40.254696, 42.752972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879448, 40.234863, 42.829189>,  <37.501595, 40.201813, 42.956215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879448, 40.234863, 42.829189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230442, 0.521930, 0.821271,
		0.233608, -0.848977, 0.473989,
		0.944629, 0.082628, -0.317566,
		38.162838, 40.259651, 42.733921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877308, 39.709682, 43.342609>,  <37.501595, 40.201813, 42.956215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877308, 39.709682, 43.342609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132137, 39.998253, 43.234032>,  <38.285034, 40.171394, 43.168884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132137, 39.998253, 43.234032>,  <37.877308, 39.709682, 43.342609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132137, 39.998253, 43.234032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207497, 0.178650, 0.961784,
		0.742352, -0.669049, -0.035881,
		0.637070, 0.721428, -0.271447,
		38.323257, 40.214680, 43.152599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417988, 39.650433, 43.795353>,  <37.877308, 39.709682, 43.342609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417988, 39.650433, 43.795353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.443295, 40.027607, 43.664589>,  <38.458477, 40.253910, 43.586132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.443295, 40.027607, 43.664589>,  <38.417988, 39.650433, 43.795353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443295, 40.027607, 43.664589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380582, 0.280019, 0.881333,
		0.922581, -0.180173, -0.341149,
		0.063264, 0.942936, -0.326910,
		38.462273, 40.310486, 43.566517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127655, 39.891983, 43.988976>,  <38.417988, 39.650433, 43.795353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127655, 39.891983, 43.988976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886562, 40.205799, 43.930714>,  <38.741909, 40.394089, 43.895756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886562, 40.205799, 43.930714>,  <39.127655, 39.891983, 43.988976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886562, 40.205799, 43.930714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329377, 0.410875, 0.850113,
		0.726793, 0.464413, -0.506055,
		-0.602730, 0.784539, -0.145654,
		38.705742, 40.441162, 43.887016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502518, 40.484528, 44.144363>,  <39.127655, 39.891983, 43.988976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502518, 40.484528, 44.144363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132702, 40.635719, 44.163757>,  <38.910812, 40.726437, 44.175392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132702, 40.635719, 44.163757>,  <39.502518, 40.484528, 44.144363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132702, 40.635719, 44.163757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275324, 0.574576, 0.770752,
		0.263474, 0.725942, -0.635288,
		-0.924542, 0.377982, 0.048483,
		38.855339, 40.749115, 44.178303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693920, 41.166058, 44.086231>,  <39.502518, 40.484528, 44.144363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693920, 41.166058, 44.086231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335152, 41.096119, 44.248692>,  <39.119892, 41.054157, 44.346169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335152, 41.096119, 44.248692>,  <39.693920, 41.166058, 44.086231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335152, 41.096119, 44.248692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270466, 0.509732, 0.816714,
		-0.349827, 0.842379, -0.409900,
		-0.896922, -0.174845, 0.406153,
		39.066074, 41.043667, 44.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309235, 41.793991, 44.295158>,  <39.693920, 41.166058, 44.086231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309235, 41.793991, 44.295158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142178, 41.496708, 44.504238>,  <39.041943, 41.318336, 44.629684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142178, 41.496708, 44.504238>,  <39.309235, 41.793991, 44.295158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142178, 41.496708, 44.504238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274155, 0.445386, 0.852332,
		-0.866265, 0.499269, 0.017744,
		-0.417640, -0.743210, 0.522700,
		39.016884, 41.273746, 44.661049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022633, 42.173904, 44.812614>,  <39.309235, 41.793991, 44.295158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022633, 42.173904, 44.812614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009113, 41.798462, 44.949951>,  <39.001003, 41.573196, 45.032352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009113, 41.798462, 44.949951>,  <39.022633, 42.173904, 44.812614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009113, 41.798462, 44.949951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215187, 0.328644, 0.919613,
		-0.975988, 0.104963, 0.190868,
		-0.033798, -0.938603, 0.343340,
		38.998974, 41.516880, 45.052952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680401, 42.256874, 45.472580>,  <39.022633, 42.173904, 44.812614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680401, 42.256874, 45.472580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850437, 41.897469, 45.516354>,  <38.952457, 41.681824, 45.542618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850437, 41.897469, 45.516354>,  <38.680401, 42.256874, 45.472580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850437, 41.897469, 45.516354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186752, 0.205363, 0.960703,
		-0.885678, -0.387944, 0.255096,
		0.425086, -0.898513, 0.109436,
		38.977962, 41.627914, 45.549183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368599, 41.865364, 46.025673>,  <38.680401, 42.256874, 45.472580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368599, 41.865364, 46.025673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724304, 41.688938, 45.977215>,  <38.937725, 41.583080, 45.948139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724304, 41.688938, 45.977215>,  <38.368599, 41.865364, 46.025673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724304, 41.688938, 45.977215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241742, 0.228358, 0.943087,
		-0.388301, -0.867935, 0.309695,
		0.889260, -0.441068, -0.121145,
		38.991081, 41.556618, 45.940872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489845, 41.382584, 46.593529>,  <38.368599, 41.865364, 46.025673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489845, 41.382584, 46.593529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852783, 41.472729, 46.451580>,  <39.070545, 41.526817, 46.366409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852783, 41.472729, 46.451580>,  <38.489845, 41.382584, 46.593529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852783, 41.472729, 46.451580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280586, 0.303957, 0.910429,
		0.313053, -0.925645, 0.212556,
		0.907342, 0.225372, -0.354878,
		39.124985, 41.540337, 46.345116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923668, 40.992073, 46.953022>,  <38.489845, 41.382584, 46.593529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923668, 40.992073, 46.953022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149689, 41.287994, 46.806923>,  <39.285301, 41.465546, 46.719265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149689, 41.287994, 46.806923>,  <38.923668, 40.992073, 46.953022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149689, 41.287994, 46.806923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465574, 0.079564, 0.881425,
		0.681143, -0.668101, -0.299476,
		0.565053, 0.739805, -0.365245,
		39.319206, 41.509937, 46.697350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536728, 40.854305, 47.264717>,  <38.923668, 40.992073, 46.953022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536728, 40.854305, 47.264717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589886, 41.229904, 47.137829>,  <39.621780, 41.455265, 47.061695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589886, 41.229904, 47.137829>,  <39.536728, 40.854305, 47.264717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589886, 41.229904, 47.137829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368437, 0.250320, 0.895318,
		0.920105, -0.235854, -0.312696,
		0.132890, 0.938996, -0.317218,
		39.629753, 41.511604, 47.042664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208374, 40.968407, 47.602306>,  <39.536728, 40.854305, 47.264717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208374, 40.968407, 47.602306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054752, 41.331024, 47.532238>,  <39.962582, 41.548595, 47.490196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054752, 41.331024, 47.532238>,  <40.208374, 40.968407, 47.602306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054752, 41.331024, 47.532238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389852, 0.331196, 0.859258,
		0.836971, 0.261707, -0.480614,
		-0.384051, 0.906542, -0.175175,
		39.939537, 41.602985, 47.479687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720554, 41.440334, 47.684998>,  <40.208374, 40.968407, 47.602306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720554, 41.440334, 47.684998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.400665, 41.675289, 47.734665>,  <40.208733, 41.816261, 47.764465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.400665, 41.675289, 47.734665>,  <40.720554, 41.440334, 47.684998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400665, 41.675289, 47.734665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497129, 0.531939, 0.685495,
		0.336599, 0.609936, -0.717412,
		-0.799727, 0.587383, 0.124166,
		40.160748, 41.851505, 47.771915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850597, 42.143658, 47.616623>,  <40.720554, 41.440334, 47.684998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850597, 42.143658, 47.616623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.503498, 42.177044, 47.812599>,  <40.295238, 42.197075, 47.930187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.503498, 42.177044, 47.812599>,  <40.850597, 42.143658, 47.616623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503498, 42.177044, 47.812599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391552, 0.721952, 0.570502,
		-0.306102, 0.686891, -0.659153,
		-0.867749, 0.083461, 0.489945,
		40.243172, 42.202084, 47.959583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664803, 42.940758, 47.588745>,  <40.850597, 42.143658, 47.616623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664803, 42.940758, 47.588745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.476059, 42.739151, 47.878109>,  <40.362812, 42.618187, 48.051727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.476059, 42.739151, 47.878109>,  <40.664803, 42.940758, 47.588745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476059, 42.739151, 47.878109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310415, 0.672987, 0.671365,
		-0.825221, 0.541347, -0.161102,
		-0.471861, -0.504016, 0.723405,
		40.334499, 42.587948, 48.095131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144161, 43.395653, 47.906834>,  <40.664803, 42.940758, 47.588745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144161, 43.395653, 47.906834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198627, 43.094406, 48.164291>,  <40.231308, 42.913658, 48.318764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198627, 43.094406, 48.164291>,  <40.144161, 43.395653, 47.906834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198627, 43.094406, 48.164291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063247, 0.641760, 0.764293,
		-0.988665, -0.144781, 0.039755,
		0.136168, -0.753115, 0.643642,
		40.239479, 42.868473, 48.357384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685112, 43.490173, 48.431164>,  <40.144161, 43.395653, 47.906834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685112, 43.490173, 48.431164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000690, 43.294327, 48.579670>,  <40.190037, 43.176819, 48.668774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000690, 43.294327, 48.579670>,  <39.685112, 43.490173, 48.431164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000690, 43.294327, 48.579670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073658, 0.675207, 0.733941,
		-0.610031, -0.551694, 0.568767,
		0.788946, -0.489621, 0.371261,
		40.237373, 43.147442, 48.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571583, 43.503670, 49.209450>,  <39.685112, 43.490173, 48.431164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571583, 43.503670, 49.209450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955009, 43.459141, 49.104568>,  <40.185066, 43.432423, 49.041637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955009, 43.459141, 49.104568>,  <39.571583, 43.503670, 49.209450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955009, 43.459141, 49.104568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261009, 0.711935, 0.651938,
		0.114098, -0.693366, 0.711495,
		0.958570, -0.111322, -0.262205,
		40.242580, 43.425743, 49.025906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917332, 43.432434, 49.282455>,  <39.571583, 43.503670, 49.209450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917332, 43.432434, 49.282455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881115, 43.392746, 49.678829>,  <38.859386, 43.368935, 49.916653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881115, 43.392746, 49.678829>,  <38.917332, 43.432434, 49.282455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881115, 43.392746, 49.678829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539707, -0.831352, -0.132551,
		0.836970, -0.546818, 0.021724,
		-0.090541, -0.099217, 0.990938,
		38.853954, 43.362980, 49.976112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157131, 42.801514, 49.524014>,  <38.917332, 43.432434, 49.282455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157131, 42.801514, 49.524014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852509, 42.910057, 49.759438>,  <38.669735, 42.975185, 49.900692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852509, 42.910057, 49.759438>,  <39.157131, 42.801514, 49.524014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852509, 42.910057, 49.759438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464656, -0.861686, -0.203940,
		0.451810, -0.428787, 0.782310,
		-0.761553, 0.271363, 0.588557,
		38.624043, 42.991467, 49.936005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973404, 42.229095, 49.820961>,  <39.157131, 42.801514, 49.524014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973404, 42.229095, 49.820961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632763, 42.433788, 49.866398>,  <38.428379, 42.556602, 49.893658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632763, 42.433788, 49.866398>,  <38.973404, 42.229095, 49.820961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632763, 42.433788, 49.866398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518544, -0.790710, -0.325408,
		-0.076706, -0.336019, 0.938727,
		-0.851603, 0.511732, 0.113588,
		38.377281, 42.587307, 49.900475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478333, 41.855930, 50.096455>,  <38.973404, 42.229095, 49.820961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478333, 41.855930, 50.096455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237000, 42.150429, 49.973862>,  <38.092201, 42.327129, 49.900307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237000, 42.150429, 49.973862>,  <38.478333, 41.855930, 50.096455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237000, 42.150429, 49.973862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617478, -0.674479, -0.404721,
		-0.504688, -0.054937, 0.861552,
		-0.603333, 0.736247, -0.306479,
		38.056000, 42.371304, 49.881920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751175, 41.515423, 50.097610>,  <38.478333, 41.855930, 50.096455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751175, 41.515423, 50.097610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766869, 41.837479, 49.860893>,  <37.776287, 42.030712, 49.718864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766869, 41.837479, 49.860893>,  <37.751175, 41.515423, 50.097610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766869, 41.837479, 49.860893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639332, -0.434925, -0.634110,
		-0.767929, 0.403231, 0.497684,
		0.039238, 0.805137, -0.591790,
		37.778641, 42.079021, 49.683357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057568, 41.554089, 49.929916>,  <37.751175, 41.515423, 50.097610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057568, 41.554089, 49.929916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267811, 41.744522, 49.647900>,  <37.393955, 41.858784, 49.478691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267811, 41.744522, 49.647900>,  <37.057568, 41.554089, 49.929916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267811, 41.744522, 49.647900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437556, -0.559440, -0.703968,
		-0.729577, 0.678504, -0.085730,
		0.525606, 0.476088, -0.705038,
		37.425491, 41.887348, 49.436390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544399, 41.604504, 49.464840>,  <37.057568, 41.554089, 49.929916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544399, 41.604504, 49.464840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870754, 41.672653, 49.243824>,  <37.066566, 41.713543, 49.111214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870754, 41.672653, 49.243824>,  <36.544399, 41.604504, 49.464840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870754, 41.672653, 49.243824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482023, -0.327361, -0.812705,
		-0.319345, 0.929412, -0.184964,
		0.815888, 0.170376, -0.552539,
		37.115520, 41.723766, 49.078064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286068, 41.706261, 48.816891>,  <36.544399, 41.604504, 49.464840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286068, 41.706261, 48.816891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678207, 41.664570, 48.749905>,  <36.913490, 41.639557, 48.709713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678207, 41.664570, 48.749905>,  <36.286068, 41.706261, 48.816891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678207, 41.664570, 48.749905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186341, -0.210877, -0.959587,
		0.064699, 0.971940, -0.226156,
		0.980353, -0.104226, -0.167469,
		36.972313, 41.633301, 48.699665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455757, 42.098522, 48.167580>,  <36.286068, 41.706261, 48.816891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455757, 42.098522, 48.167580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764858, 41.851398, 48.225777>,  <36.950317, 41.703125, 48.260696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764858, 41.851398, 48.225777>,  <36.455757, 42.098522, 48.167580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764858, 41.851398, 48.225777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000416, -0.228741, -0.973487,
		0.634709, 0.752324, -0.176503,
		0.772751, -0.617808, 0.145497,
		36.996685, 41.666058, 48.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878708, 42.246273, 47.618324>,  <36.455757, 42.098522, 48.167580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878708, 42.246273, 47.618324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983448, 41.876965, 47.730759>,  <37.046291, 41.655380, 47.798218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983448, 41.876965, 47.730759>,  <36.878708, 42.246273, 47.618324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983448, 41.876965, 47.730759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111830, -0.260261, -0.959040,
		0.958608, 0.282556, 0.035100,
		0.261848, -0.923269, 0.281086,
		37.062004, 41.599983, 47.815086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491566, 42.107121, 47.185658>,  <36.878708, 42.246273, 47.618324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491566, 42.107121, 47.185658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295544, 41.782486, 47.312885>,  <37.177929, 41.587704, 47.389221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295544, 41.782486, 47.312885>,  <37.491566, 42.107121, 47.185658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295544, 41.782486, 47.312885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078899, -0.404690, -0.911044,
		0.868112, -0.421368, 0.262355,
		-0.490057, -0.811588, 0.318071,
		37.148525, 41.539009, 47.408306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851913, 41.564041, 46.855896>,  <37.491566, 42.107121, 47.185658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851913, 41.564041, 46.855896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.518131, 41.387466, 46.987843>,  <37.317860, 41.281521, 47.067009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.518131, 41.387466, 46.987843>,  <37.851913, 41.564041, 46.855896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518131, 41.387466, 46.987843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157897, -0.381958, -0.910591,
		0.527965, -0.811935, 0.249026,
		-0.834459, -0.441440, 0.329863,
		37.267792, 41.255035, 47.086800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870220, 40.839592, 46.704632>,  <37.851913, 41.564041, 46.855896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870220, 40.839592, 46.704632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481346, 40.926926, 46.738544>,  <37.248020, 40.979328, 46.758892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481346, 40.926926, 46.738544>,  <37.870220, 40.839592, 46.704632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481346, 40.926926, 46.738544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168869, -0.402570, -0.899678,
		-0.162303, -0.888969, 0.428243,
		-0.972184, 0.218337, 0.084781,
		37.189690, 40.992428, 46.763977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471729, 40.205185, 46.376034>,  <37.870220, 40.839592, 46.704632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471729, 40.205185, 46.376034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236736, 40.528774, 46.384296>,  <37.095741, 40.722927, 46.389256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236736, 40.528774, 46.384296>,  <37.471729, 40.205185, 46.376034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236736, 40.528774, 46.384296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344783, -0.227123, -0.910791,
		-0.732115, -0.542194, 0.412351,
		-0.587480, 0.808975, 0.020659,
		37.060493, 40.771465, 46.390495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657585, 40.014805, 46.091457>,  <37.471729, 40.205185, 46.376034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657585, 40.014805, 46.091457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706886, 40.409801, 46.052135>,  <36.736465, 40.646801, 46.028542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706886, 40.409801, 46.052135>,  <36.657585, 40.014805, 46.091457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706886, 40.409801, 46.052135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520567, -0.020003, -0.853587,
		-0.844878, 0.156382, 0.511591,
		0.123252, 0.987494, -0.098307,
		36.743862, 40.706051, 46.022644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108845, 40.182003, 45.779121>,  <36.657585, 40.014805, 46.091457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108845, 40.182003, 45.779121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322662, 40.513821, 45.714478>,  <36.450954, 40.712910, 45.675690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322662, 40.513821, 45.714478>,  <36.108845, 40.182003, 45.779121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322662, 40.513821, 45.714478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472231, 0.134586, -0.871140,
		-0.700900, 0.541979, 0.463679,
		0.534544, 0.829545, -0.161608,
		36.483025, 40.762684, 45.665997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625492, 40.722523, 45.578457>,  <36.108845, 40.182003, 45.779121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625492, 40.722523, 45.578457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987072, 40.816551, 45.435562>,  <36.204018, 40.872971, 45.349827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987072, 40.816551, 45.435562>,  <35.625492, 40.722523, 45.578457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987072, 40.816551, 45.435562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384157, 0.079351, -0.919852,
		-0.187887, 0.968733, 0.162035,
		0.903948, 0.235075, -0.357236,
		36.258255, 40.887074, 45.328392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570290, 41.254116, 45.116688>,  <35.625492, 40.722523, 45.578457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570290, 41.254116, 45.116688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920414, 41.099724, 45.000179>,  <36.130489, 41.007088, 44.930275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920414, 41.099724, 45.000179>,  <35.570290, 41.254116, 45.116688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920414, 41.099724, 45.000179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264708, 0.121609, -0.956630,
		0.404663, 0.914456, 0.004274,
		0.875316, -0.385982, -0.291275,
		36.183010, 40.983929, 44.912796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750916, 41.745495, 44.674667>,  <35.570290, 41.254116, 45.116688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750916, 41.745495, 44.674667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.956039, 41.417061, 44.574390>,  <36.079113, 41.220001, 44.514225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.956039, 41.417061, 44.574390>,  <35.750916, 41.745495, 44.674667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956039, 41.417061, 44.574390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307478, 0.096982, -0.946600,
		0.801549, 0.562512, -0.202731,
		0.512813, -0.821082, -0.250696,
		36.109882, 41.170738, 44.499180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035324, 41.878006, 44.000206>,  <35.750916, 41.745495, 44.674667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035324, 41.878006, 44.000206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047974, 41.480991, 44.047329>,  <36.055565, 41.242783, 44.075603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047974, 41.480991, 44.047329>,  <36.035324, 41.878006, 44.000206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047974, 41.480991, 44.047329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296569, -0.121875, -0.947203,
		0.954488, -0.004980, -0.298209,
		0.031628, -0.992533, 0.117805,
		36.057461, 41.183231, 44.082672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508484, 41.693848, 43.399185>,  <36.035324, 41.878006, 44.000206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508484, 41.693848, 43.399185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318920, 41.354763, 43.494518>,  <36.205181, 41.151314, 43.551720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318920, 41.354763, 43.494518>,  <36.508484, 41.693848, 43.399185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318920, 41.354763, 43.494518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424218, -0.017396, -0.905393,
		0.771654, -0.530179, -0.351368,
		-0.473908, -0.847707, 0.238335,
		36.176746, 41.100452, 43.566017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.311836, 27.936102, 33.924355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.922085, 27.852234, 33.956902>,  <42.688232, 27.801912, 33.976429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.922085, 27.852234, 33.956902>,  <43.311836, 27.936102, 33.924355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922085, 27.852234, 33.956902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224903, 0.909395, -0.349885,
		-0.000633, -0.359221, -0.933253,
		-0.974381, -0.209670, 0.081366,
		42.629772, 27.789333, 33.981312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957809, 28.228054, 33.340542>,  <43.311836, 27.936102, 33.924355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957809, 28.228054, 33.340542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688400, 28.181252, 33.632481>,  <42.526752, 28.153170, 33.807644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688400, 28.181252, 33.632481>,  <42.957809, 28.228054, 33.340542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688400, 28.181252, 33.632481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386416, 0.897459, -0.212721,
		-0.630114, -0.425296, -0.649676,
		-0.673527, -0.117007, 0.729843,
		42.486343, 28.146149, 33.851433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298420, 28.457159, 33.035244>,  <42.957809, 28.228054, 33.340542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298420, 28.457159, 33.035244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259407, 28.468616, 33.433170>,  <42.236000, 28.475491, 33.671928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259407, 28.468616, 33.433170>,  <42.298420, 28.457159, 33.035244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259407, 28.468616, 33.433170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284158, 0.957174, -0.055416,
		-0.953804, -0.288091, -0.085212,
		-0.097528, 0.028642, 0.994820,
		42.230148, 28.477209, 33.731617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593567, 28.851067, 33.209610>,  <42.298420, 28.457159, 33.035244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593567, 28.851067, 33.209610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844505, 28.882488, 33.519516>,  <41.995068, 28.901340, 33.705460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844505, 28.882488, 33.519516>,  <41.593567, 28.851067, 33.209610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844505, 28.882488, 33.519516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155137, 0.987564, 0.025488,
		-0.763131, -0.136186, 0.631731,
		0.627347, 0.078554, 0.774768,
		42.032711, 28.906054, 33.751945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089458, 29.168398, 33.615341>,  <41.593567, 28.851067, 33.209610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089458, 29.168398, 33.615341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455795, 29.239811, 33.759209>,  <41.675598, 29.282660, 33.845528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455795, 29.239811, 33.759209>,  <41.089458, 29.168398, 33.615341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455795, 29.239811, 33.759209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202782, 0.978748, 0.030518,
		-0.346574, -0.100884, 0.932582,
		0.915842, 0.178534, 0.359666,
		41.730549, 29.293371, 33.867107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926262, 29.842167, 33.974388>,  <41.089458, 29.168398, 33.615341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926262, 29.842167, 33.974388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322697, 29.790533, 33.961250>,  <41.560558, 29.759552, 33.953369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322697, 29.790533, 33.961250>,  <40.926262, 29.842167, 33.974388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322697, 29.790533, 33.961250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130449, 0.990503, 0.043430,
		0.026926, -0.047328, 0.998516,
		0.991089, -0.129086, -0.032844,
		41.620022, 29.751806, 33.951397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184624, 30.341480, 34.485336>,  <40.926262, 29.842167, 33.974388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184624, 30.341480, 34.485336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498821, 30.252783, 34.254227>,  <41.687340, 30.199564, 34.115559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498821, 30.252783, 34.254227>,  <41.184624, 30.341480, 34.485336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498821, 30.252783, 34.254227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197605, 0.974600, -0.105389,
		0.586470, -0.031389, 0.809363,
		0.785497, -0.221742, -0.577776,
		41.734470, 30.186260, 34.080894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736168, 30.576756, 34.726151>,  <41.184624, 30.341480, 34.485336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736168, 30.576756, 34.726151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884319, 30.566833, 34.354729>,  <41.973209, 30.560881, 34.131878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884319, 30.566833, 34.354729>,  <41.736168, 30.576756, 34.726151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884319, 30.566833, 34.354729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247491, 0.966143, 0.072911,
		0.895304, -0.256812, 0.363976,
		0.370377, -0.024803, -0.928550,
		41.995434, 30.559393, 34.076164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534714, 30.862263, 34.765045>,  <41.736168, 30.576756, 34.726151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534714, 30.862263, 34.765045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.411629, 30.883160, 34.385029>,  <42.337780, 30.895697, 34.157017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.411629, 30.883160, 34.385029>,  <42.534714, 30.862263, 34.765045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411629, 30.883160, 34.385029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448308, 0.888673, -0.096336,
		0.839246, -0.455557, -0.296873,
		-0.307709, 0.052241, -0.950045,
		42.319317, 30.898832, 34.100014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066048, 31.129284, 34.352245>,  <42.534714, 30.862263, 34.765045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066048, 31.129284, 34.352245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.739861, 31.206858, 34.134106>,  <42.544147, 31.253401, 34.003223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.739861, 31.206858, 34.134106>,  <43.066048, 31.129284, 34.352245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739861, 31.206858, 34.134106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312487, 0.940596, -0.132781,
		0.487199, -0.278692, -0.827628,
		-0.815469, 0.193932, -0.545345,
		42.495220, 31.265038, 33.970501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292744, 31.585403, 33.856548>,  <43.066048, 31.129284, 34.352245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292744, 31.585403, 33.856548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894829, 31.622431, 33.873684>,  <42.656082, 31.644648, 33.883965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894829, 31.622431, 33.873684>,  <43.292744, 31.585403, 33.856548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894829, 31.622431, 33.873684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096005, 0.991597, 0.086712,
		-0.034451, 0.090373, -0.995312,
		-0.994785, 0.092568, 0.042837,
		42.596394, 31.650202, 33.886536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184856, 31.997005, 33.294369>,  <43.292744, 31.585403, 33.856548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184856, 31.997005, 33.294369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877884, 32.006752, 33.550636>,  <42.693703, 32.012600, 33.704399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877884, 32.006752, 33.550636>,  <43.184856, 31.997005, 33.294369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877884, 32.006752, 33.550636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063839, 0.991407, -0.114177,
		-0.637950, -0.128523, -0.759277,
		-0.767427, 0.024367, 0.640673,
		42.647655, 32.014061, 33.742840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884487, 32.517330, 33.018700>,  <43.184856, 31.997005, 33.294369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884487, 32.517330, 33.018700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729683, 32.517643, 33.387531>,  <42.636799, 32.517830, 33.608829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729683, 32.517643, 33.387531>,  <42.884487, 32.517330, 33.018700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729683, 32.517643, 33.387531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029215, 0.999508, 0.011411,
		-0.921612, 0.031355, -0.386844,
		-0.387011, 0.000785, 0.922075,
		42.613579, 32.517879, 33.664154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326141, 33.036633, 33.041454>,  <42.884487, 32.517330, 33.018700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326141, 33.036633, 33.041454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440044, 32.971615, 33.419342>,  <42.508385, 32.932602, 33.646076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440044, 32.971615, 33.419342>,  <42.326141, 33.036633, 33.041454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440044, 32.971615, 33.419342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194746, 0.974776, 0.109020,
		-0.938609, 0.152936, 0.309230,
		0.284757, -0.162549, 0.944718,
		42.525471, 32.922852, 33.702759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124935, 33.690517, 33.427525>,  <42.326141, 33.036633, 33.041454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124935, 33.690517, 33.427525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400360, 33.521610, 33.663345>,  <42.565617, 33.420265, 33.804836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400360, 33.521610, 33.663345>,  <42.124935, 33.690517, 33.427525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400360, 33.521610, 33.663345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299731, 0.906006, 0.298854,
		-0.660333, -0.029073, 0.750410,
		0.688565, -0.422265, 0.589552,
		42.606930, 33.394932, 33.840210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276569, 34.158245, 33.902168>,  <42.124935, 33.690517, 33.427525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276569, 34.158245, 33.902168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591499, 33.920662, 33.968307>,  <42.780457, 33.778111, 34.007992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591499, 33.920662, 33.968307>,  <42.276569, 34.158245, 33.902168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591499, 33.920662, 33.968307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538878, 0.793239, 0.283517,
		-0.299560, -0.134114, 0.944604,
		0.787321, -0.593957, 0.165351,
		42.827694, 33.742474, 34.017914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433807, 34.319210, 34.519482>,  <42.276569, 34.158245, 33.902168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433807, 34.319210, 34.519482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.756283, 34.158062, 34.346157>,  <42.949768, 34.061375, 34.242165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.756283, 34.158062, 34.346157>,  <42.433807, 34.319210, 34.519482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756283, 34.158062, 34.346157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519742, 0.832170, 0.193292,
		0.282715, -0.381038, 0.880274,
		0.806189, -0.402869, -0.433309,
		42.998138, 34.037201, 34.216164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850784, 34.584801, 34.912735>,  <42.433807, 34.319210, 34.519482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850784, 34.584801, 34.912735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068855, 34.457195, 34.602634>,  <43.199696, 34.380630, 34.416573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068855, 34.457195, 34.602634>,  <42.850784, 34.584801, 34.912735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068855, 34.457195, 34.602634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667049, 0.725203, 0.170664,
		0.507771, -0.610173, 0.608159,
		0.545173, -0.319014, -0.775253,
		43.232407, 34.361492, 34.370060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548203, 34.390259, 35.193710>,  <42.850784, 34.584801, 34.912735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548203, 34.390259, 35.193710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580338, 34.487167, 34.806961>,  <43.599621, 34.545311, 34.574909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580338, 34.487167, 34.806961>,  <43.548203, 34.390259, 35.193710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580338, 34.487167, 34.806961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640356, 0.730816, 0.236330,
		0.763865, -0.638132, -0.096426,
		0.080341, 0.242271, -0.966877,
		43.604439, 34.559849, 34.516899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309978, 34.500942, 35.108086>,  <43.548203, 34.390259, 35.193710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309978, 34.500942, 35.108086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125408, 34.650829, 34.786423>,  <44.014668, 34.740761, 34.593426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125408, 34.650829, 34.786423>,  <44.309978, 34.500942, 35.108086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125408, 34.650829, 34.786423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614562, 0.788728, 0.014887,
		0.639843, -0.487338, -0.594224,
		-0.461426, 0.374713, -0.804162,
		43.986980, 34.763245, 34.545174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828484, 34.783794, 34.730881>,  <44.309978, 34.500942, 35.108086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828484, 34.783794, 34.730881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519642, 34.974457, 34.562759>,  <44.334335, 35.088856, 34.461887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519642, 34.974457, 34.562759>,  <44.828484, 34.783794, 34.730881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519642, 34.974457, 34.562759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562124, 0.820762, -0.101816,
		0.296435, -0.314873, -0.901654,
		-0.772103, 0.476660, -0.420301,
		44.288010, 35.117455, 34.436668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829926, 34.245262, 34.219368>,  <44.828484, 34.783794, 34.730881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829926, 34.245262, 34.219368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.218731, 34.152187, 34.206451>,  <45.452015, 34.096344, 34.198700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.218731, 34.152187, 34.206451>,  <44.829926, 34.245262, 34.219368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218731, 34.152187, 34.206451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197515, -0.735084, -0.648566,
		0.127174, 0.636795, -0.760472,
		0.972016, -0.232685, -0.032293,
		45.510334, 34.082382, 34.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985367, 34.153702, 33.483212>,  <44.829926, 34.245262, 34.219368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985367, 34.153702, 33.483212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.258465, 33.958817, 33.701015>,  <45.422325, 33.841885, 33.831696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.258465, 33.958817, 33.701015>,  <44.985367, 34.153702, 33.483212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258465, 33.958817, 33.701015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057781, -0.778896, -0.624486,
		0.728368, 0.394903, -0.559939,
		0.682746, -0.487209, 0.544505,
		45.463287, 33.812653, 33.864368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461838, 33.915936, 32.967529>,  <44.985367, 34.153702, 33.483212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461838, 33.915936, 32.967529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495205, 33.693314, 33.298172>,  <45.515224, 33.559738, 33.496559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495205, 33.693314, 33.298172>,  <45.461838, 33.915936, 32.967529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495205, 33.693314, 33.298172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020867, -0.830296, -0.556933,
		0.996296, 0.029212, -0.080879,
		0.083422, -0.556557, 0.826610,
		45.520233, 33.526348, 33.546154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775383, 33.366337, 32.716591>,  <45.461838, 33.915936, 32.967529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775383, 33.366337, 32.716591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678089, 33.228210, 33.079159>,  <45.619713, 33.145336, 33.296700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678089, 33.228210, 33.079159>,  <45.775383, 33.366337, 32.716591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678089, 33.228210, 33.079159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183594, -0.901202, -0.392592,
		0.952434, -0.261904, 0.155804,
		-0.243232, -0.345313, 0.906420,
		45.605118, 33.124615, 33.351086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150387, 32.832718, 32.843193>,  <45.775383, 33.366337, 32.716591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150387, 32.832718, 32.843193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.845837, 32.773205, 33.095596>,  <45.663105, 32.737495, 33.247040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.845837, 32.773205, 33.095596>,  <46.150387, 32.832718, 32.843193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845837, 32.773205, 33.095596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124335, -0.921732, -0.367356,
		0.636279, -0.358152, 0.683284,
		-0.761374, -0.148785, 0.631009,
		45.617424, 32.728569, 33.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263321, 32.198414, 33.149494>,  <46.150387, 32.832718, 32.843193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263321, 32.198414, 33.149494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.873051, 32.265629, 33.205807>,  <45.638889, 32.305958, 33.239594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.873051, 32.265629, 33.205807>,  <46.263321, 32.198414, 33.149494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873051, 32.265629, 33.205807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210320, -0.898643, -0.384975,
		0.061823, -0.405221, 0.912126,
		-0.975676, 0.168037, 0.140783,
		45.580349, 32.316040, 33.248043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945751, 31.607338, 33.454754>,  <46.263321, 32.198414, 33.149494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945751, 31.607338, 33.454754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653328, 31.804482, 33.266014>,  <45.477875, 31.922768, 33.152771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653328, 31.804482, 33.266014>,  <45.945751, 31.607338, 33.454754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653328, 31.804482, 33.266014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213337, -0.821980, -0.528049,
		-0.648103, -0.285374, 0.706063,
		-0.731061, 0.492859, -0.471847,
		45.434010, 31.952339, 33.124458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417965, 31.148611, 33.575924>,  <45.945751, 31.607338, 33.454754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417965, 31.148611, 33.575924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.255661, 31.358807, 33.276798>,  <45.158279, 31.484924, 33.097324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.255661, 31.358807, 33.276798>,  <45.417965, 31.148611, 33.575924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255661, 31.358807, 33.276798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333068, -0.846942, -0.414433,
		-0.851142, 0.080925, 0.518660,
		-0.405737, 0.525490, -0.747822,
		45.133934, 31.516453, 33.052456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767933, 30.909645, 33.533806>,  <45.417965, 31.148611, 33.575924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767933, 30.909645, 33.533806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829739, 31.083729, 33.179016>,  <44.866821, 31.188179, 32.966145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829739, 31.083729, 33.179016>,  <44.767933, 30.909645, 33.533806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829739, 31.083729, 33.179016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378015, -0.803400, -0.460058,
		-0.912814, 0.406374, 0.040379,
		0.154515, 0.435211, -0.886970,
		44.876095, 31.214293, 32.912926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144787, 30.847984, 33.142200>,  <44.767933, 30.909645, 33.533806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144787, 30.847984, 33.142200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428150, 30.893398, 32.863556>,  <44.598167, 30.920647, 32.696369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428150, 30.893398, 32.863556>,  <44.144787, 30.847984, 33.142200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428150, 30.893398, 32.863556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475011, -0.653313, -0.589531,
		-0.522037, 0.748527, -0.408882,
		0.708408, 0.113534, -0.696612,
		44.640671, 30.927458, 32.654572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803577, 30.915358, 32.517342>,  <44.144787, 30.847984, 33.142200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803577, 30.915358, 32.517342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168236, 30.811808, 32.389668>,  <44.387032, 30.749678, 32.313065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168236, 30.811808, 32.389668>,  <43.803577, 30.915358, 32.517342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168236, 30.811808, 32.389668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407639, -0.668261, -0.622301,
		-0.052201, 0.697432, -0.714747,
		0.911650, -0.258874, -0.319184,
		44.441730, 30.734146, 32.293911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746933, 30.856281, 31.789804>,  <43.803577, 30.915358, 32.517342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746933, 30.856281, 31.789804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081528, 30.655840, 31.878519>,  <44.282284, 30.535574, 31.931747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081528, 30.655840, 31.878519>,  <43.746933, 30.856281, 31.789804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081528, 30.655840, 31.878519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254961, -0.714139, -0.651921,
		0.485067, 0.488774, -0.725127,
		0.836483, -0.501105, 0.221787,
		44.332474, 30.505508, 31.945055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884277, 30.532345, 31.186678>,  <43.746933, 30.856281, 31.789804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884277, 30.532345, 31.186678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.115002, 30.336622, 31.448322>,  <44.253437, 30.219189, 31.605309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.115002, 30.336622, 31.448322>,  <43.884277, 30.532345, 31.186678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115002, 30.336622, 31.448322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141349, -0.848458, -0.510039,
		0.804553, 0.201740, -0.558566,
		0.576815, -0.489307, 0.654113,
		44.288048, 30.189831, 31.644556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250259, 30.162708, 30.834232>,  <43.884277, 30.532345, 31.186678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250259, 30.162708, 30.834232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289307, 29.969765, 31.182440>,  <44.312733, 29.853998, 31.391363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289307, 29.969765, 31.182440>,  <44.250259, 30.162708, 30.834232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289307, 29.969765, 31.182440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175699, -0.869308, -0.461989,
		0.979592, -0.107852, -0.169609,
		0.097616, -0.482361, 0.870516,
		44.318592, 29.825056, 31.443594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704170, 29.582867, 30.698582>,  <44.250259, 30.162708, 30.834232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704170, 29.582867, 30.698582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498634, 29.507170, 31.033283>,  <44.375313, 29.461752, 31.234104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498634, 29.507170, 31.033283>,  <44.704170, 29.582867, 30.698582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498634, 29.507170, 31.033283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221432, -0.913059, -0.342478,
		0.828818, -0.361263, 0.427259,
		-0.513837, -0.189243, 0.836755,
		44.344482, 29.450397, 31.284309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952557, 28.939011, 31.041817>,  <44.704170, 29.582867, 30.698582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952557, 28.939011, 31.041817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583401, 29.004217, 31.181360>,  <44.361908, 29.043341, 31.265087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583401, 29.004217, 31.181360>,  <44.952557, 28.939011, 31.041817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583401, 29.004217, 31.181360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319531, -0.829785, -0.457556,
		0.214890, -0.533744, 0.817887,
		-0.922888, 0.163016, 0.348860,
		44.306534, 29.053122, 31.286018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735271, 28.225039, 31.265495>,  <44.952557, 28.939011, 31.041817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735271, 28.225039, 31.265495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390041, 28.423132, 31.225809>,  <44.182903, 28.541988, 31.201998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390041, 28.423132, 31.225809>,  <44.735271, 28.225039, 31.265495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390041, 28.423132, 31.225809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390586, -0.778977, -0.490548,
		-0.320223, -0.384628, 0.865747,
		-0.863076, 0.495234, -0.099216,
		44.131119, 28.571703, 31.196045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189659, 27.823910, 31.350273>,  <44.735271, 28.225039, 31.265495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189659, 27.823910, 31.350273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987228, 28.084587, 31.124290>,  <43.865768, 28.240993, 30.988701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987228, 28.084587, 31.124290>,  <44.189659, 27.823910, 31.350273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987228, 28.084587, 31.124290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607305, -0.734376, -0.303104,
		-0.612423, 0.189706, 0.767431,
		-0.506082, 0.651693, -0.564958,
		43.835403, 28.280094, 30.954803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508862, 27.556307, 31.441631>,  <44.189659, 27.823910, 31.350273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508862, 27.556307, 31.441631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485168, 27.821274, 31.142916>,  <43.470955, 27.980253, 30.963686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485168, 27.821274, 31.142916>,  <43.508862, 27.556307, 31.441631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485168, 27.821274, 31.142916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612693, -0.614740, -0.496691,
		-0.788099, 0.428135, 0.442268,
		-0.059230, 0.662416, -0.746791,
		43.467400, 28.019999, 30.918879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903950, 27.544445, 31.303045>,  <43.508862, 27.556307, 31.441631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903950, 27.544445, 31.303045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.054798, 27.683746, 30.959766>,  <43.145306, 27.767326, 30.753799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.054798, 27.683746, 30.959766>,  <42.903950, 27.544445, 31.303045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054798, 27.683746, 30.959766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640392, -0.571363, -0.513266,
		-0.669088, 0.743145, 0.007547,
		0.377118, 0.348253, -0.858197,
		43.167934, 27.788223, 30.702307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320274, 27.678246, 30.984379>,  <42.903950, 27.544445, 31.303045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320274, 27.678246, 30.984379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589890, 27.679121, 30.688902>,  <42.751659, 27.679647, 30.511616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589890, 27.679121, 30.688902>,  <42.320274, 27.678246, 30.984379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589890, 27.679121, 30.688902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530356, -0.694642, -0.486000,
		-0.514190, 0.719353, -0.467055,
		0.674041, 0.002191, -0.738690,
		42.792103, 27.679779, 30.467295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.492428, 38.626480, 38.675663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244511, 38.396259, 38.889053>,  <38.095760, 38.258129, 39.017086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244511, 38.396259, 38.889053>,  <38.492428, 38.626480, 38.675663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244511, 38.396259, 38.889053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218618, -0.526251, -0.821746,
		0.753698, -0.625941, 0.200342,
		-0.619795, -0.575550, 0.533476,
		38.058571, 38.223595, 39.049095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699123, 37.929405, 38.467499>,  <38.492428, 38.626480, 38.675663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699123, 37.929405, 38.467499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328968, 37.912258, 38.618134>,  <38.106876, 37.901970, 38.708515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328968, 37.912258, 38.618134>,  <38.699123, 37.929405, 38.467499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328968, 37.912258, 38.618134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313329, -0.472519, -0.823742,
		0.213259, -0.880277, 0.423831,
		-0.925389, -0.042872, 0.376585,
		38.051350, 37.899395, 38.731110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471699, 37.204556, 38.445496>,  <38.699123, 37.929405, 38.467499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471699, 37.204556, 38.445496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135021, 37.419819, 38.463139>,  <37.933014, 37.548977, 38.473724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135021, 37.419819, 38.463139>,  <38.471699, 37.204556, 38.445496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135021, 37.419819, 38.463139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318825, -0.429397, -0.844967,
		-0.435809, -0.725247, 0.532998,
		-0.841678, 0.538178, 0.044092,
		37.882515, 37.581264, 38.476368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855610, 36.788059, 38.291565>,  <38.471699, 37.204556, 38.445496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855610, 36.788059, 38.291565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709957, 37.154873, 38.226505>,  <37.622566, 37.374962, 38.187469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709957, 37.154873, 38.226505>,  <37.855610, 36.788059, 38.291565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709957, 37.154873, 38.226505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504433, -0.340996, -0.793265,
		-0.782915, -0.206807, 0.586750,
		-0.364132, 0.917035, -0.162650,
		37.600716, 37.429985, 38.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247738, 36.639053, 38.071266>,  <37.855610, 36.788059, 38.291565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247738, 36.639053, 38.071266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284431, 37.023041, 37.965397>,  <37.306450, 37.253433, 37.901875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284431, 37.023041, 37.965397>,  <37.247738, 36.639053, 38.071266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284431, 37.023041, 37.965397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459413, -0.195017, -0.866550,
		-0.883473, 0.201091, 0.423129,
		0.091738, 0.959964, -0.264676,
		37.311954, 37.311031, 37.885994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514660, 36.884235, 37.838490>,  <37.247738, 36.639053, 38.071266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514660, 36.884235, 37.838490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816368, 37.099747, 37.688404>,  <36.997395, 37.229053, 37.598354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816368, 37.099747, 37.688404>,  <36.514660, 36.884235, 37.838490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816368, 37.099747, 37.688404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360574, -0.137664, -0.922516,
		-0.548687, 0.831122, 0.090434,
		0.754274, 0.538781, -0.375215,
		37.042652, 37.261379, 37.575840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189442, 37.320660, 37.298290>,  <36.514660, 36.884235, 37.838490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189442, 37.320660, 37.298290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582939, 37.354527, 37.234943>,  <36.819038, 37.374847, 37.196938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582939, 37.354527, 37.234943>,  <36.189442, 37.320660, 37.298290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582939, 37.354527, 37.234943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153733, -0.058713, -0.986366,
		-0.092810, 0.994678, -0.044742,
		0.983744, 0.084666, -0.158364,
		36.878063, 37.379925, 37.187435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172821, 37.747986, 36.703743>,  <36.189442, 37.320660, 37.298290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172821, 37.747986, 36.703743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533905, 37.576305, 36.715744>,  <36.750557, 37.473297, 36.722946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533905, 37.576305, 36.715744>,  <36.172821, 37.747986, 36.703743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533905, 37.576305, 36.715744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057859, -0.190208, -0.980037,
		0.426336, 0.882956, -0.196536,
		0.902713, -0.429196, 0.030005,
		36.804718, 37.447548, 36.724747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624401, 38.016605, 36.194809>,  <36.172821, 37.747986, 36.703743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624401, 38.016605, 36.194809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780392, 37.658401, 36.280575>,  <36.873985, 37.443478, 36.332035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780392, 37.658401, 36.280575>,  <36.624401, 38.016605, 36.194809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780392, 37.658401, 36.280575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011323, -0.237498, -0.971322,
		0.920756, 0.376363, -0.102758,
		0.389974, -0.895514, 0.214416,
		36.897385, 37.389748, 36.344898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106571, 37.958763, 35.705933>,  <36.624401, 38.016605, 36.194809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106571, 37.958763, 35.705933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061699, 37.575905, 35.812733>,  <37.034775, 37.346191, 35.876812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061699, 37.575905, 35.812733>,  <37.106571, 37.958763, 35.705933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061699, 37.575905, 35.812733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034866, -0.272321, -0.961575,
		0.993076, -0.098558, 0.063920,
		-0.112178, -0.957145, 0.266999,
		37.028046, 37.288761, 35.892834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645454, 37.513378, 35.329872>,  <37.106571, 37.958763, 35.705933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645454, 37.513378, 35.329872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311932, 37.322163, 35.440323>,  <37.111816, 37.207432, 35.506592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311932, 37.322163, 35.440323>,  <37.645454, 37.513378, 35.329872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311932, 37.322163, 35.440323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171094, -0.251778, -0.952541,
		0.524874, -0.841479, 0.128145,
		-0.833807, -0.478039, 0.276124,
		37.061790, 37.178753, 35.523159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673946, 36.824390, 34.997124>,  <37.645454, 37.513378, 35.329872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673946, 36.824390, 34.997124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294121, 36.874802, 35.111977>,  <37.066223, 36.905048, 35.180889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294121, 36.874802, 35.111977>,  <37.673946, 36.824390, 34.997124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294121, 36.874802, 35.111977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313012, -0.435471, -0.844031,
		0.018668, -0.891337, 0.452956,
		-0.949566, 0.126024, 0.287128,
		37.009251, 36.912609, 35.198116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243980, 36.167610, 35.029095>,  <37.673946, 36.824390, 34.997124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243980, 36.167610, 35.029095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056152, 36.511436, 34.948444>,  <36.943455, 36.717731, 34.900055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056152, 36.511436, 34.948444>,  <37.243980, 36.167610, 35.029095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056152, 36.511436, 34.948444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127513, -0.291998, -0.947881,
		-0.873640, -0.419384, 0.246718,
		-0.469567, 0.859566, -0.201624,
		36.915283, 36.769306, 34.887959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978065, 36.021507, 34.997375>,  <37.243980, 36.167610, 35.029095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978065, 36.021507, 34.997375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694366, 35.832970, 34.787689>,  <37.524147, 35.719849, 34.661877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694366, 35.832970, 34.787689>,  <37.978065, 36.021507, 34.997375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694366, 35.832970, 34.787689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483919, 0.215216, -0.848236,
		0.512631, -0.855287, 0.075451,
		-0.709248, -0.471344, -0.524216,
		37.481594, 35.691566, 34.630424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238380, 36.500942, 35.672997>,  <37.978065, 36.021507, 34.997375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238380, 36.500942, 35.672997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452251, 36.178890, 35.570320>,  <38.580574, 35.985661, 35.508717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452251, 36.178890, 35.570320>,  <38.238380, 36.500942, 35.672997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452251, 36.178890, 35.570320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133959, -0.380661, 0.914960,
		-0.834374, -0.454820, -0.311384,
		0.534674, -0.805131, -0.256687,
		38.612652, 35.937351, 35.493313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869320, 35.869728, 35.924572>,  <38.238380, 36.500942, 35.672997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869320, 35.869728, 35.924572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252377, 35.768620, 35.869396>,  <38.482212, 35.707954, 35.836292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252377, 35.768620, 35.869396>,  <37.869320, 35.869728, 35.924572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252377, 35.768620, 35.869396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052475, -0.317807, 0.946702,
		-0.283130, -0.913843, -0.291082,
		0.957645, -0.252765, -0.137934,
		38.539669, 35.692791, 35.828014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940956, 35.239758, 36.315319>,  <37.869320, 35.869728, 35.924572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940956, 35.239758, 36.315319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313618, 35.367092, 36.245247>,  <38.537216, 35.443493, 36.203205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313618, 35.367092, 36.245247>,  <37.940956, 35.239758, 36.315319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313618, 35.367092, 36.245247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297764, -0.392602, 0.870173,
		0.208229, -0.862861, -0.460556,
		0.931653, 0.318332, -0.175178,
		38.593113, 35.462593, 36.192692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283783, 34.651409, 36.275955>,  <37.940956, 35.239758, 36.315319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283783, 34.651409, 36.275955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511158, 34.961346, 36.386589>,  <38.647583, 35.147308, 36.452969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511158, 34.961346, 36.386589>,  <38.283783, 34.651409, 36.275955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511158, 34.961346, 36.386589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138561, -0.421539, 0.896162,
		0.810977, -0.471085, -0.346981,
		0.568435, 0.774844, 0.276584,
		38.681690, 35.193798, 36.469563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844982, 34.399239, 36.763393>,  <38.283783, 34.651409, 36.275955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844982, 34.399239, 36.763393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834175, 34.796249, 36.810989>,  <38.827690, 35.034454, 36.839546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834175, 34.796249, 36.810989>,  <38.844982, 34.399239, 36.763393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834175, 34.796249, 36.810989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143316, -0.121653, 0.982172,
		0.989308, 0.009487, 0.145532,
		-0.027022, 0.992528, 0.118992,
		38.826069, 35.094009, 36.846687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348793, 34.465614, 37.266087>,  <38.844982, 34.399239, 36.763393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348793, 34.465614, 37.266087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129536, 34.799820, 37.281364>,  <38.997982, 35.000343, 37.290531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129536, 34.799820, 37.281364>,  <39.348793, 34.465614, 37.266087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129536, 34.799820, 37.281364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224366, 0.102900, 0.969057,
		0.805726, 0.539755, -0.243864,
		-0.548146, 0.835510, 0.038194,
		38.965092, 35.050472, 37.292824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737144, 35.054325, 37.547997>,  <39.348793, 34.465614, 37.266087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737144, 35.054325, 37.547997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356041, 35.162281, 37.603722>,  <39.127377, 35.227055, 37.637157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356041, 35.162281, 37.603722>,  <39.737144, 35.054325, 37.547997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356041, 35.162281, 37.603722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210289, 0.255238, 0.943733,
		0.219145, 0.928447, -0.299936,
		-0.952761, 0.269888, 0.139308,
		39.070213, 35.243248, 37.645515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754669, 35.709190, 37.913467>,  <39.737144, 35.054325, 37.547997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754669, 35.709190, 37.913467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389984, 35.556828, 37.975025>,  <39.171173, 35.465408, 38.011959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389984, 35.556828, 37.975025>,  <39.754669, 35.709190, 37.913467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389984, 35.556828, 37.975025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028207, 0.315675, 0.948448,
		-0.409850, 0.869057, -0.277062,
		-0.911717, -0.380906, 0.153893,
		39.116470, 35.442554, 38.021194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457157, 36.154488, 38.399204>,  <39.754669, 35.709190, 37.913467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457157, 36.154488, 38.399204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194359, 35.855003, 38.434483>,  <39.036678, 35.675312, 38.455650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194359, 35.855003, 38.434483>,  <39.457157, 36.154488, 38.399204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194359, 35.855003, 38.434483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015185, 0.130108, 0.991383,
		-0.753737, 0.650000, -0.096850,
		-0.657000, -0.748713, 0.088197,
		38.997257, 35.630390, 38.460941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954498, 36.464523, 38.808548>,  <39.457157, 36.154488, 38.399204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954498, 36.464523, 38.808548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925598, 36.066185, 38.830715>,  <38.908257, 35.827183, 38.844013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925598, 36.066185, 38.830715>,  <38.954498, 36.464523, 38.808548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925598, 36.066185, 38.830715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050866, 0.059166, 0.996951,
		-0.996089, 0.069213, -0.054930,
		-0.072252, -0.995846, 0.055414,
		38.903923, 35.767433, 38.847340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375195, 36.310410, 39.139725>,  <38.954498, 36.464523, 38.808548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375195, 36.310410, 39.139725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595005, 35.980721, 39.194389>,  <38.726891, 35.782906, 39.227188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595005, 35.980721, 39.194389>,  <38.375195, 36.310410, 39.139725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595005, 35.980721, 39.194389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173997, 0.047079, 0.983620,
		-0.817155, -0.564306, -0.117541,
		0.549529, -0.824222, 0.136658,
		38.759865, 35.733456, 39.235386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884789, 35.858273, 39.411411>,  <38.375195, 36.310410, 39.139725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884789, 35.858273, 39.411411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252666, 35.748489, 39.523724>,  <38.473392, 35.682617, 39.591110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252666, 35.748489, 39.523724>,  <37.884789, 35.858273, 39.411411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252666, 35.748489, 39.523724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250769, 0.139660, 0.957920,
		-0.302125, -0.951402, 0.059617,
		0.919693, -0.274462, 0.280777,
		38.528576, 35.666153, 39.607956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712025, 35.687981, 39.972019>,  <37.884789, 35.858273, 39.411411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712025, 35.687981, 39.972019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109024, 35.694305, 40.020527>,  <38.347221, 35.698101, 40.049633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109024, 35.694305, 40.020527>,  <37.712025, 35.687981, 39.972019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109024, 35.694305, 40.020527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120607, 0.290758, 0.949165,
		-0.020253, -0.956666, 0.290483,
		0.992494, 0.015811, 0.121270,
		38.406773, 35.699047, 40.056908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840034, 35.371239, 40.718327>,  <37.712025, 35.687981, 39.972019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840034, 35.371239, 40.718327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177841, 35.561897, 40.620674>,  <38.380524, 35.676292, 40.562080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177841, 35.561897, 40.620674>,  <37.840034, 35.371239, 40.718327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177841, 35.561897, 40.620674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078514, 0.340747, 0.936871,
		0.529748, -0.810368, 0.250342,
		0.844514, 0.476650, -0.244135,
		38.431194, 35.704891, 40.547432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829857, 34.769474, 41.142784>,  <37.840034, 35.371239, 40.718327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829857, 34.769474, 41.142784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477303, 34.768192, 41.331738>,  <37.265770, 34.767426, 41.445110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477303, 34.768192, 41.331738>,  <37.829857, 34.769474, 41.142784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477303, 34.768192, 41.331738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466787, 0.159565, -0.869856,
		-0.072591, -0.987182, -0.142133,
		-0.881385, -0.003202, 0.472387,
		37.212887, 34.767231, 41.473454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380524, 34.244511, 40.817146>,  <37.829857, 34.769474, 41.142784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380524, 34.244511, 40.817146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133789, 34.505486, 40.993252>,  <36.985748, 34.662071, 41.098915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133789, 34.505486, 40.993252>,  <37.380524, 34.244511, 40.817146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133789, 34.505486, 40.993252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562562, 0.025760, -0.826354,
		-0.550488, -0.757401, 0.351149,
		-0.616835, 0.652441, 0.440266,
		36.948738, 34.701218, 41.125332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653019, 33.950043, 40.551678>,  <37.380524, 34.244511, 40.817146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653019, 33.950043, 40.551678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599300, 34.315777, 40.704491>,  <36.567070, 34.535217, 40.796181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599300, 34.315777, 40.704491>,  <36.653019, 33.950043, 40.551678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599300, 34.315777, 40.704491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729415, 0.169748, -0.662676,
		-0.670760, -0.367656, 0.644135,
		-0.134296, 0.914338, 0.382034,
		36.559013, 34.590076, 40.819099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873821, 34.055294, 40.712845>,  <36.653019, 33.950043, 40.551678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873821, 34.055294, 40.712845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046078, 34.410957, 40.650936>,  <36.149429, 34.624355, 40.613792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046078, 34.410957, 40.650936>,  <35.873821, 34.055294, 40.712845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046078, 34.410957, 40.650936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549705, 0.122400, -0.826343,
		-0.715805, 0.440930, 0.541484,
		0.430637, 0.889157, -0.154767,
		36.175270, 34.677704, 40.604507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361153, 34.451786, 40.570908>,  <35.873821, 34.055294, 40.712845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361153, 34.451786, 40.570908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684841, 34.642651, 40.433811>,  <35.879055, 34.757168, 40.351551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684841, 34.642651, 40.433811>,  <35.361153, 34.451786, 40.570908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684841, 34.642651, 40.433811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448287, 0.124425, -0.885188,
		-0.379731, 0.869963, 0.314593,
		0.809224, 0.477161, -0.342745,
		35.927608, 34.785797, 40.330986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157658, 35.082195, 40.264576>,  <35.361153, 34.451786, 40.570908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157658, 35.082195, 40.264576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507385, 34.989655, 40.093910>,  <35.717220, 34.934132, 39.991512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507385, 34.989655, 40.093910>,  <35.157658, 35.082195, 40.264576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507385, 34.989655, 40.093910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401694, 0.148474, -0.903658,
		0.272410, 0.961474, 0.036882,
		0.874319, -0.231350, -0.426664,
		35.769680, 34.920250, 39.965912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126202, 35.524281, 39.728584>,  <35.157658, 35.082195, 40.264576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126202, 35.524281, 39.728584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436096, 35.292103, 39.628288>,  <35.622032, 35.152798, 39.568111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436096, 35.292103, 39.628288>,  <35.126202, 35.524281, 39.728584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436096, 35.292103, 39.628288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220356, 0.123833, -0.967527,
		0.592643, 0.804830, -0.031966,
		0.774737, -0.580442, -0.250738,
		35.668518, 35.117970, 39.553066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483742, 35.831451, 39.269276>,  <35.126202, 35.524281, 39.728584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483742, 35.831451, 39.269276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621071, 35.465851, 39.182808>,  <35.703468, 35.246490, 39.130928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621071, 35.465851, 39.182808>,  <35.483742, 35.831451, 39.269276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621071, 35.465851, 39.182808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313375, 0.105495, -0.943751,
		0.885395, 0.391756, -0.250207,
		0.343324, -0.914001, -0.216172,
		35.724068, 35.191650, 39.117958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888443, 35.938679, 38.688900>,  <35.483742, 35.831451, 39.269276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888443, 35.938679, 38.688900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801216, 35.548561, 38.674751>,  <35.748882, 35.314491, 38.666264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801216, 35.548561, 38.674751>,  <35.888443, 35.938679, 38.688900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801216, 35.548561, 38.674751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224099, 0.085313, -0.970825,
		0.949857, -0.203776, -0.237166,
		-0.218064, -0.975294, -0.035369,
		35.735798, 35.255974, 38.664139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178036, 35.637180, 38.052120>,  <35.888443, 35.938679, 38.688900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178036, 35.637180, 38.052120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875629, 35.402100, 38.167393>,  <35.694187, 35.261051, 38.236557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875629, 35.402100, 38.167393>,  <36.178036, 35.637180, 38.052120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875629, 35.402100, 38.167393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333857, -0.032473, -0.942064,
		0.563011, -0.808426, -0.171658,
		-0.756015, -0.587702, 0.288181,
		35.648827, 35.225788, 38.253845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131775, 35.156513, 37.574154>,  <36.178036, 35.637180, 38.052120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131775, 35.156513, 37.574154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768097, 35.161682, 37.740623>,  <35.549892, 35.164783, 37.840508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768097, 35.161682, 37.740623>,  <36.131775, 35.156513, 37.574154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768097, 35.161682, 37.740623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415506, 0.036560, -0.908856,
		-0.026962, -0.999248, -0.027869,
		-0.909191, 0.012925, 0.416179,
		35.495338, 35.165558, 37.865479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745140, 34.693165, 37.207973>,  <36.131775, 35.156513, 37.574154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745140, 34.693165, 37.207973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474953, 34.930611, 37.382950>,  <35.312840, 35.073078, 37.487938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474953, 34.930611, 37.382950>,  <35.745140, 34.693165, 37.207973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474953, 34.930611, 37.382950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489620, 0.082524, -0.868022,
		-0.551373, -0.800504, 0.234905,
		-0.675469, 0.593618, 0.437444,
		35.272312, 35.108696, 37.514183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.955608, 34.552719, 45.044918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687511, 34.849140, 45.028820>,  <38.526653, 35.026993, 45.019161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.687511, 34.849140, 45.028820>,  <38.955608, 34.552719, 45.044918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687511, 34.849140, 45.028820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293884, -0.314820, -0.902508,
		-0.681474, -0.593071, 0.428788,
		-0.670243, 0.741050, -0.040248,
		38.486439, 35.071457, 45.016747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241512, 34.200119, 44.890778>,  <38.955608, 34.552719, 45.044918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241512, 34.200119, 44.890778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180820, 34.578892, 44.777435>,  <38.144405, 34.806156, 44.709431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180820, 34.578892, 44.777435>,  <38.241512, 34.200119, 44.890778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180820, 34.578892, 44.777435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583947, -0.317178, -0.747265,
		-0.797486, 0.052084, 0.601085,
		-0.151730, 0.946935, -0.283359,
		38.135300, 34.862972, 44.692429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680695, 34.168159, 44.426308>,  <38.241512, 34.200119, 44.890778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680695, 34.168159, 44.426308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789154, 34.545589, 44.350262>,  <37.854229, 34.772049, 44.304634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789154, 34.545589, 44.350262>,  <37.680695, 34.168159, 44.426308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789154, 34.545589, 44.350262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524369, -0.020831, -0.851236,
		-0.807166, 0.330501, 0.489133,
		0.271146, 0.943575, -0.190119,
		37.870499, 34.828663, 44.293224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110466, 34.468708, 44.076191>,  <37.680695, 34.168159, 44.426308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110466, 34.468708, 44.076191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408409, 34.713608, 43.970112>,  <37.587177, 34.860550, 43.906464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408409, 34.713608, 43.970112>,  <37.110466, 34.468708, 44.076191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408409, 34.713608, 43.970112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303442, -0.043141, -0.951873,
		-0.594227, 0.789485, 0.153649,
		0.744860, 0.612252, -0.265199,
		37.631866, 34.897282, 43.890553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798611, 35.005611, 43.655277>,  <37.110466, 34.468708, 44.076191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798611, 35.005611, 43.655277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190063, 34.998283, 43.573349>,  <37.424934, 34.993885, 43.524193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190063, 34.998283, 43.573349>,  <36.798611, 35.005611, 43.655277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190063, 34.998283, 43.573349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204972, -0.006760, -0.978744,
		0.016545, 0.999809, -0.010370,
		0.978628, -0.018319, -0.204821,
		37.483650, 34.992786, 43.511902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976631, 35.641033, 43.353577>,  <36.798611, 35.005611, 43.655277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976631, 35.641033, 43.353577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255867, 35.371246, 43.257435>,  <37.423409, 35.209373, 43.199749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255867, 35.371246, 43.257435>,  <36.976631, 35.641033, 43.353577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255867, 35.371246, 43.257435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325164, 0.000445, -0.945657,
		0.637920, 0.738306, -0.219001,
		0.698087, -0.674465, -0.240355,
		37.465294, 35.168907, 43.185329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325069, 35.873550, 42.732342>,  <36.976631, 35.641033, 43.353577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325069, 35.873550, 42.732342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397732, 35.480312, 42.723202>,  <37.441330, 35.244370, 42.717720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397732, 35.480312, 42.723202>,  <37.325069, 35.873550, 42.732342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397732, 35.480312, 42.723202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310653, -0.035329, -0.949867,
		0.933004, 0.179646, -0.311820,
		0.181656, -0.983097, -0.022845,
		37.452229, 35.185383, 42.716347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502991, 35.820438, 42.079819>,  <37.325069, 35.873550, 42.732342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502991, 35.820438, 42.079819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443928, 35.436939, 42.176983>,  <37.408489, 35.206841, 42.235279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443928, 35.436939, 42.176983>,  <37.502991, 35.820438, 42.079819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443928, 35.436939, 42.176983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142783, -0.222361, -0.964452,
		0.978677, -0.177095, -0.104058,
		-0.147662, -0.958746, 0.242906,
		37.399628, 35.149315, 42.249855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921768, 35.318085, 41.645485>,  <37.502991, 35.820438, 42.079819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921768, 35.318085, 41.645485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621750, 35.094570, 41.787014>,  <37.441738, 34.960461, 41.871933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621750, 35.094570, 41.787014>,  <37.921768, 35.318085, 41.645485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621750, 35.094570, 41.787014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294231, -0.197210, -0.935167,
		0.592339, -0.805520, -0.016498,
		-0.750042, -0.558790, 0.353824,
		37.396736, 34.926933, 41.893162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484070, 35.098698, 41.172256>,  <37.921768, 35.318085, 41.645485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484070, 35.098698, 41.172256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571877, 35.471176, 41.055855>,  <38.624561, 35.694664, 40.986015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571877, 35.471176, 41.055855>,  <38.484070, 35.098698, 41.172256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571877, 35.471176, 41.055855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317456, 0.213870, 0.923840,
		0.922516, -0.295177, -0.248667,
		0.219514, 0.931198, -0.291004,
		38.637730, 35.750534, 40.968552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968807, 35.260620, 41.673889>,  <38.484070, 35.098698, 41.172256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968807, 35.260620, 41.673889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.876160, 35.610462, 41.503513>,  <38.820572, 35.820366, 41.401287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.876160, 35.610462, 41.503513>,  <38.968807, 35.260620, 41.673889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876160, 35.610462, 41.503513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300834, 0.480782, 0.823619,
		0.925123, 0.062625, -0.374466,
		-0.231616, 0.874601, -0.425943,
		38.806675, 35.872841, 41.375729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422478, 35.753174, 41.971939>,  <38.968807, 35.260620, 41.673889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422478, 35.753174, 41.971939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149853, 36.004818, 41.822437>,  <38.986279, 36.155804, 41.732735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149853, 36.004818, 41.822437>,  <39.422478, 35.753174, 41.971939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149853, 36.004818, 41.822437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241479, 0.675515, 0.696683,
		0.690767, 0.384579, -0.612322,
		-0.681563, 0.629109, -0.373756,
		38.945385, 36.193550, 41.710312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747768, 36.374557, 41.838894>,  <39.422478, 35.753174, 41.971939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747768, 36.374557, 41.838894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365639, 36.456612, 41.924007>,  <39.136360, 36.505844, 41.975075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365639, 36.456612, 41.924007>,  <39.747768, 36.374557, 41.838894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365639, 36.456612, 41.924007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285518, 0.826603, 0.484981,
		-0.076403, 0.524067, -0.848243,
		-0.955323, 0.205134, 0.212785,
		39.079041, 36.518150, 41.987843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742146, 37.032089, 41.844269>,  <39.747768, 36.374557, 41.838894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742146, 37.032089, 41.844269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.389896, 36.952362, 42.016216>,  <39.178547, 36.904526, 42.119385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.389896, 36.952362, 42.016216>,  <39.742146, 37.032089, 41.844269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389896, 36.952362, 42.016216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102324, 0.805819, 0.583255,
		-0.462644, 0.557610, -0.689225,
		-0.880619, -0.199315, 0.429864,
		39.125710, 36.892567, 42.145176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469051, 37.679611, 42.091385>,  <39.742146, 37.032089, 41.844269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469051, 37.679611, 42.091385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.256264, 37.411831, 42.298786>,  <39.128593, 37.251163, 42.423229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.256264, 37.411831, 42.298786>,  <39.469051, 37.679611, 42.091385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256264, 37.411831, 42.298786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183471, 0.506666, 0.842394,
		-0.826650, 0.543256, -0.146705,
		-0.531966, -0.669449, 0.518507,
		39.096672, 37.210995, 42.454338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051262, 38.086498, 42.594994>,  <39.469051, 37.679611, 42.091385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051262, 38.086498, 42.594994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049286, 37.725239, 42.766708>,  <39.048100, 37.508484, 42.869740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049286, 37.725239, 42.766708>,  <39.051262, 38.086498, 42.594994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049286, 37.725239, 42.766708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290144, 0.409534, 0.864927,
		-0.956970, 0.128830, 0.260021,
		-0.004941, -0.903153, 0.429291,
		39.047802, 37.454292, 42.895496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638809, 38.146557, 43.086636>,  <39.051262, 38.086498, 42.594994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638809, 38.146557, 43.086636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859585, 37.832371, 43.198639>,  <38.992050, 37.643860, 43.265842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859585, 37.832371, 43.198639>,  <38.638809, 38.146557, 43.086636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859585, 37.832371, 43.198639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268990, 0.485545, 0.831800,
		-0.789306, -0.383786, 0.479275,
		0.551942, -0.785465, 0.280009,
		39.025169, 37.596733, 43.282642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578468, 38.220573, 43.776337>,  <38.638809, 38.146557, 43.086636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578468, 38.220573, 43.776337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881569, 37.960026, 43.760632>,  <39.063427, 37.803699, 43.751209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881569, 37.960026, 43.760632>,  <38.578468, 38.220573, 43.776337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881569, 37.960026, 43.760632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368337, 0.377282, 0.849698,
		-0.538653, -0.658317, 0.525806,
		0.757748, -0.651366, -0.039258,
		39.108894, 37.764618, 43.748856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680332, 37.901371, 44.488525>,  <38.578468, 38.220573, 43.776337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680332, 37.901371, 44.488525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015404, 37.874992, 44.271656>,  <39.216446, 37.859165, 44.141537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015404, 37.874992, 44.271656>,  <38.680332, 37.901371, 44.488525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015404, 37.874992, 44.271656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529720, 0.339883, 0.777095,
		0.133024, -0.938152, 0.319647,
		0.837676, -0.065952, -0.542171,
		39.266708, 37.855206, 44.109005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152603, 37.792629, 44.959221>,  <38.680332, 37.901371, 44.488525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152603, 37.792629, 44.959221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376232, 37.939060, 44.661652>,  <39.510410, 38.026920, 44.483109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376232, 37.939060, 44.661652>,  <39.152603, 37.792629, 44.959221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376232, 37.939060, 44.661652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644135, 0.373161, 0.667713,
		0.522039, -0.852488, -0.027180,
		0.559075, 0.366080, -0.743923,
		39.543953, 38.048885, 44.438477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735474, 37.529110, 45.118427>,  <39.152603, 37.792629, 44.959221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735474, 37.529110, 45.118427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810799, 37.830803, 44.866817>,  <39.855995, 38.011818, 44.715851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810799, 37.830803, 44.866817>,  <39.735474, 37.529110, 45.118427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810799, 37.830803, 44.866817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759823, 0.293919, 0.579896,
		0.622258, -0.587153, -0.517732,
		0.188317, 0.754230, -0.629026,
		39.867294, 38.057072, 44.678108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492405, 37.577129, 44.950050>,  <39.735474, 37.529110, 45.118427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492405, 37.577129, 44.950050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.341385, 37.939186, 44.871891>,  <40.250774, 38.156418, 44.824993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.341385, 37.939186, 44.871891>,  <40.492405, 37.577129, 44.950050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341385, 37.939186, 44.871891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701326, 0.417300, 0.577929,
		0.604647, 0.081156, -0.792348,
		-0.377549, 0.905138, -0.195403,
		40.228119, 38.210728, 44.813271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069881, 38.020714, 44.755890>,  <40.492405, 37.577129, 44.950050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069881, 38.020714, 44.755890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795433, 38.290997, 44.863705>,  <40.630764, 38.453167, 44.928394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795433, 38.290997, 44.863705>,  <41.069881, 38.020714, 44.755890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795433, 38.290997, 44.863705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697501, 0.505758, 0.507642,
		0.206698, 0.536308, -0.818322,
		-0.686125, 0.675709, 0.269536,
		40.589596, 38.493710, 44.944565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.100113, 39.674900, 46.165367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.377090, 39.391983, 46.222294>,  <34.543278, 39.222233, 46.256451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.377090, 39.391983, 46.222294>,  <34.100113, 39.674900, 46.165367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377090, 39.391983, 46.222294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104683, -0.293670, -0.950158,
		0.713837, 0.643033, -0.277392,
		0.692444, -0.707296, 0.142317,
		34.584824, 39.179794, 46.264988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537891, 39.683731, 45.612892>,  <34.100113, 39.674900, 46.165367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537891, 39.683731, 45.612892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592617, 39.316433, 45.761543>,  <34.625454, 39.096054, 45.850735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592617, 39.316433, 45.761543>,  <34.537891, 39.683731, 45.612892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592617, 39.316433, 45.761543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004162, -0.374618, -0.927170,
		0.990588, 0.128398, -0.047432,
		0.136815, -0.918246, 0.371626,
		34.633663, 39.040958, 45.873032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137409, 39.397179, 45.233788>,  <34.537891, 39.683731, 45.612892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137409, 39.397179, 45.233788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931347, 39.083157, 45.371368>,  <34.807709, 38.894745, 45.453915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931347, 39.083157, 45.371368>,  <35.137409, 39.397179, 45.233788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931347, 39.083157, 45.371368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119802, -0.331400, -0.935853,
		0.848682, -0.523317, 0.076672,
		-0.515157, -0.785056, 0.343948,
		34.776798, 38.847641, 45.474552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526405, 38.750824, 44.888832>,  <35.137409, 39.397179, 45.233788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526405, 38.750824, 44.888832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148056, 38.680264, 44.997795>,  <34.921047, 38.637928, 45.063171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148056, 38.680264, 44.997795>,  <35.526405, 38.750824, 44.888832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148056, 38.680264, 44.997795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177884, -0.420250, -0.889802,
		0.271443, -0.890097, 0.366124,
		-0.945873, -0.176402, 0.272408,
		34.864296, 38.627342, 45.079517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406307, 38.102684, 44.632053>,  <35.526405, 38.750824, 44.888832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406307, 38.102684, 44.632053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037170, 38.245914, 44.688824>,  <34.815689, 38.331852, 44.722885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037170, 38.245914, 44.688824>,  <35.406307, 38.102684, 44.632053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037170, 38.245914, 44.688824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256888, -0.297616, -0.919474,
		-0.286982, -0.884997, 0.366635,
		-0.922849, 0.358057, 0.141934,
		34.760319, 38.353336, 44.731403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987507, 37.628819, 44.434471>,  <35.406307, 38.102684, 44.632053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987507, 37.628819, 44.434471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763428, 37.958565, 44.401974>,  <34.628983, 38.156414, 44.382473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763428, 37.958565, 44.401974>,  <34.987507, 37.628819, 44.434471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763428, 37.958565, 44.401974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207466, -0.234581, -0.949700,
		-0.801960, -0.515161, 0.302439,
		-0.560195, 0.824367, -0.081246,
		34.595367, 38.205875, 44.377602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414162, 37.422176, 44.139187>,  <34.987507, 37.628819, 44.434471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414162, 37.422176, 44.139187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417366, 37.809933, 44.041027>,  <34.419289, 38.042587, 43.982132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417366, 37.809933, 44.041027>,  <34.414162, 37.422176, 44.139187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417366, 37.809933, 44.041027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327269, -0.229348, -0.916676,
		-0.944897, 0.087651, 0.315414,
		0.008008, 0.969390, -0.245396,
		34.419769, 38.100750, 43.967407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984856, 37.431004, 43.685596>,  <34.414162, 37.422176, 44.139187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984856, 37.431004, 43.685596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144257, 37.794037, 43.632694>,  <34.239899, 38.011856, 43.600952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144257, 37.794037, 43.632694>,  <33.984856, 37.431004, 43.685596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144257, 37.794037, 43.632694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336459, 0.010514, -0.941640,
		-0.853222, 0.419749, 0.309553,
		0.398507, 0.907579, -0.132257,
		34.263809, 38.066311, 43.593018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450119, 37.853443, 43.431301>,  <33.984856, 37.431004, 43.685596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450119, 37.853443, 43.431301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772583, 38.064053, 43.323315>,  <33.966061, 38.190418, 43.258522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772583, 38.064053, 43.323315>,  <33.450119, 37.853443, 43.431301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772583, 38.064053, 43.323315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358408, 0.071497, -0.930823,
		-0.470797, 0.847150, 0.246348,
		0.806160, 0.526522, -0.269965,
		34.014431, 38.222008, 43.242325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306255, 38.632015, 43.277706>,  <33.450119, 37.853443, 43.431301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306255, 38.632015, 43.277706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617126, 38.518993, 43.052795>,  <33.803650, 38.451180, 42.917850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617126, 38.518993, 43.052795>,  <33.306255, 38.632015, 43.277706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617126, 38.518993, 43.052795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414319, 0.442765, -0.795173,
		0.473632, 0.850955, 0.227043,
		0.777182, -0.282551, -0.562274,
		33.850281, 38.434227, 42.884113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408623, 39.179836, 42.826767>,  <33.306255, 38.632015, 43.277706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408623, 39.179836, 42.826767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624046, 38.898647, 42.640957>,  <33.753300, 38.729935, 42.529469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624046, 38.898647, 42.640957>,  <33.408623, 39.179836, 42.826767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624046, 38.898647, 42.640957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369617, 0.298332, -0.879989,
		0.757189, 0.645626, -0.099159,
		0.538562, -0.702969, -0.464528,
		33.785614, 38.687756, 42.501598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506935, 39.521175, 42.242012>,  <33.408623, 39.179836, 42.826767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506935, 39.521175, 42.242012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603634, 39.140491, 42.166321>,  <33.661652, 38.912083, 42.120907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603634, 39.140491, 42.166321>,  <33.506935, 39.521175, 42.242012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603634, 39.140491, 42.166321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326020, 0.104017, -0.939623,
		0.913931, 0.288843, -0.285131,
		0.241745, -0.951709, -0.189233,
		33.676159, 38.854980, 42.109550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885815, 39.571568, 41.618195>,  <33.506935, 39.521175, 42.242012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885815, 39.571568, 41.618195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775360, 39.187218, 41.626881>,  <33.709087, 38.956608, 41.632092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775360, 39.187218, 41.626881>,  <33.885815, 39.571568, 41.618195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775360, 39.187218, 41.626881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342388, 0.077233, -0.936379,
		0.898064, -0.266002, -0.350319,
		-0.276135, -0.960873, 0.021716,
		33.692520, 38.898956, 41.633396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032913, 39.421391, 40.932899>,  <33.885815, 39.571568, 41.618195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032913, 39.421391, 40.932899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767437, 39.158222, 41.075253>,  <33.608150, 39.000320, 41.160664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767437, 39.158222, 41.075253>,  <34.032913, 39.421391, 40.932899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767437, 39.158222, 41.075253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443395, -0.037142, -0.895557,
		0.602422, -0.752172, -0.267067,
		-0.663694, -0.657919, 0.355884,
		33.568329, 38.960846, 41.182018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447842, 39.401535, 40.331085>,  <34.032913, 39.421391, 40.932899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447842, 39.401535, 40.331085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481365, 39.773808, 40.188648>,  <34.501480, 39.997173, 40.103188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481365, 39.773808, 40.188648>,  <34.447842, 39.401535, 40.331085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481365, 39.773808, 40.188648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059849, 0.352003, 0.934083,
		0.994683, -0.099599, -0.026199,
		0.083812, 0.930685, -0.356092,
		34.506508, 40.053013, 40.081821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947899, 39.669357, 40.754974>,  <34.447842, 39.401535, 40.331085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947899, 39.669357, 40.754974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837440, 40.017624, 40.592159>,  <34.771164, 40.226585, 40.494469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837440, 40.017624, 40.592159>,  <34.947899, 39.669357, 40.754974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837440, 40.017624, 40.592159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134054, 0.454257, 0.880727,
		0.951721, 0.188644, -0.242158,
		-0.276146, 0.870669, -0.407038,
		34.754597, 40.278824, 40.470047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554119, 40.008465, 40.543587>,  <34.947899, 39.669357, 40.754974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554119, 40.008465, 40.543587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252884, 40.252876, 40.641167>,  <35.072144, 40.399521, 40.699715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252884, 40.252876, 40.641167>,  <35.554119, 40.008465, 40.543587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252884, 40.252876, 40.641167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401125, 0.132509, 0.906389,
		0.521502, 0.780441, -0.344888,
		-0.753084, 0.611027, 0.243950,
		35.026958, 40.436184, 40.714352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858135, 40.651752, 40.652630>,  <35.554119, 40.008465, 40.543587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858135, 40.651752, 40.652630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509300, 40.661232, 40.848141>,  <35.299999, 40.666920, 40.965446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509300, 40.661232, 40.848141>,  <35.858135, 40.651752, 40.652630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509300, 40.661232, 40.848141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457216, 0.395425, 0.796613,
		-0.174396, 0.918193, -0.355680,
		-0.872089, 0.023697, 0.488773,
		35.247673, 40.668343, 40.994774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041504, 41.167767, 41.060265>,  <35.858135, 40.651752, 40.652630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041504, 41.167767, 41.060265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689404, 41.046719, 41.206463>,  <35.478146, 40.974091, 41.294182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689404, 41.046719, 41.206463>,  <36.041504, 41.167767, 41.060265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689404, 41.046719, 41.206463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304098, 0.231531, 0.924077,
		-0.364265, 0.924563, -0.111780,
		-0.880248, -0.302617, 0.365496,
		35.425331, 40.955933, 41.316113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796497, 41.689449, 41.532986>,  <36.041504, 41.167767, 41.060265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796497, 41.689449, 41.532986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568821, 41.382256, 41.650440>,  <35.432217, 41.197941, 41.720913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568821, 41.382256, 41.650440>,  <35.796497, 41.689449, 41.532986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568821, 41.382256, 41.650440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289082, 0.147410, 0.945887,
		-0.769713, 0.623272, 0.138107,
		-0.569187, -0.767986, 0.293640,
		35.398064, 41.151859, 41.738533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567802, 41.850452, 42.156326>,  <35.796497, 41.689449, 41.532986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567802, 41.850452, 42.156326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513283, 41.454235, 42.162704>,  <35.480572, 41.216507, 42.166531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513283, 41.454235, 42.162704>,  <35.567802, 41.850452, 42.156326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513283, 41.454235, 42.162704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218982, -0.014429, 0.975622,
		-0.966162, 0.136470, 0.218877,
		-0.136301, -0.990539, 0.015944,
		35.472393, 41.157074, 42.167488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210079, 41.675556, 42.772476>,  <35.567802, 41.850452, 42.156326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210079, 41.675556, 42.772476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.388012, 41.328201, 42.684814>,  <35.494774, 41.119789, 42.632217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.388012, 41.328201, 42.684814>,  <35.210079, 41.675556, 42.772476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388012, 41.328201, 42.684814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366714, -0.046641, 0.929164,
		-0.817094, -0.493692, 0.297701,
		0.444836, -0.868385, -0.219154,
		35.521461, 41.067684, 42.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105762, 41.299458, 43.352932>,  <35.210079, 41.675556, 42.772476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105762, 41.299458, 43.352932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405613, 41.100067, 43.178764>,  <35.585522, 40.980434, 43.074265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405613, 41.100067, 43.178764>,  <35.105762, 41.299458, 43.352932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405613, 41.100067, 43.178764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330594, -0.287925, 0.898781,
		-0.573385, -0.817695, -0.051044,
		0.749625, -0.498472, -0.435417,
		35.630501, 40.950527, 43.048138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058941, 40.618965, 43.656097>,  <35.105762, 41.299458, 43.352932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058941, 40.618965, 43.656097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416584, 40.706429, 43.499756>,  <35.631168, 40.758907, 43.405952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416584, 40.706429, 43.499756>,  <35.058941, 40.618965, 43.656097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416584, 40.706429, 43.499756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413829, -0.069675, 0.907685,
		0.171237, -0.973312, -0.152783,
		0.894105, 0.218655, -0.390853,
		35.684814, 40.772026, 43.382500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448383, 40.059090, 43.925240>,  <35.058941, 40.618965, 43.656097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448383, 40.059090, 43.925240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675812, 40.371975, 43.823368>,  <35.812271, 40.559708, 43.762245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675812, 40.371975, 43.823368>,  <35.448383, 40.059090, 43.925240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675812, 40.371975, 43.823368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450776, -0.037284, 0.891858,
		0.688131, -0.621890, -0.373803,
		0.568575, 0.782217, -0.254676,
		35.846386, 40.606640, 43.746964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130463, 39.872356, 44.113438>,  <35.448383, 40.059090, 43.925240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130463, 39.872356, 44.113438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127171, 40.271191, 44.083103>,  <36.125195, 40.510490, 44.064903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127171, 40.271191, 44.083103>,  <36.130463, 39.872356, 44.113438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127171, 40.271191, 44.083103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678108, 0.061306, 0.732400,
		0.734916, -0.045399, -0.676637,
		-0.008232, 0.997086, -0.075840,
		36.124702, 40.570316, 44.060352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814648, 40.131104, 44.136677>,  <36.130463, 39.872356, 44.113438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814648, 40.131104, 44.136677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605873, 40.452579, 44.250984>,  <36.480606, 40.645466, 44.319569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605873, 40.452579, 44.250984>,  <36.814648, 40.131104, 44.136677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605873, 40.452579, 44.250984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552022, 0.062860, 0.831457,
		0.650270, 0.591720, -0.476463,
		-0.521940, 0.803689, 0.285767,
		36.449291, 40.693687, 44.336716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268787, 40.458252, 44.552475>,  <36.814648, 40.131104, 44.136677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268787, 40.458252, 44.552475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928276, 40.633755, 44.667591>,  <36.723969, 40.739056, 44.736660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928276, 40.633755, 44.667591>,  <37.268787, 40.458252, 44.552475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928276, 40.633755, 44.667591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428980, 0.266109, 0.863228,
		0.302161, 0.858302, -0.414749,
		-0.851278, 0.438753, 0.287786,
		36.672894, 40.765381, 44.753925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649673, 40.985126, 44.129093>,  <37.268787, 40.458252, 44.552475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649673, 40.985126, 44.129093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047298, 40.943752, 44.142582>,  <38.285873, 40.918930, 44.150677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047298, 40.943752, 44.142582>,  <37.649673, 40.985126, 44.129093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047298, 40.943752, 44.142582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014988, -0.176832, -0.984127,
		0.107754, 0.978791, -0.174232,
		0.994065, -0.103432, 0.033725,
		38.345516, 40.912724, 44.152699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015835, 41.506844, 43.708302>,  <37.649673, 40.985126, 44.129093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015835, 41.506844, 43.708302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255795, 41.187614, 43.730961>,  <38.399769, 40.996078, 43.744556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255795, 41.187614, 43.730961>,  <38.015835, 41.506844, 43.708302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255795, 41.187614, 43.730961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228382, -0.238671, -0.943863,
		0.766791, 0.553280, -0.325443,
		0.599895, -0.798071, 0.056651,
		38.435764, 40.948193, 43.747955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524456, 41.521851, 43.047531>,  <38.015835, 41.506844, 43.708302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524456, 41.521851, 43.047531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466217, 41.161957, 43.212109>,  <38.431274, 40.946022, 43.310856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466217, 41.161957, 43.212109>,  <38.524456, 41.521851, 43.047531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466217, 41.161957, 43.212109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170562, -0.386820, -0.906244,
		0.974531, -0.202123, -0.097139,
		-0.145597, -0.899731, 0.411443,
		38.422539, 40.892036, 43.335541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142426, 41.110733, 42.791328>,  <38.524456, 41.521851, 43.047531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142426, 41.110733, 42.791328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893269, 40.822308, 42.912704>,  <38.743774, 40.649254, 42.985531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893269, 40.822308, 42.912704>,  <39.142426, 41.110733, 42.791328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893269, 40.822308, 42.912704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121472, -0.472325, -0.873014,
		0.772819, -0.506935, 0.381796,
		-0.622893, -0.721059, 0.303443,
		38.706402, 40.605991, 43.003738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378963, 40.621323, 42.386360>,  <39.142426, 41.110733, 42.791328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378963, 40.621323, 42.386360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025974, 40.476238, 42.506153>,  <38.814182, 40.389187, 42.578030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025974, 40.476238, 42.506153>,  <39.378963, 40.621323, 42.386360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025974, 40.476238, 42.506153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033350, -0.586846, -0.809011,
		0.469183, -0.723917, 0.505778,
		-0.882471, -0.362707, 0.299481,
		38.761234, 40.367428, 42.595997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475002, 39.900253, 42.465427>,  <39.378963, 40.621323, 42.386360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475002, 39.900253, 42.465427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.090969, 39.990761, 42.399639>,  <38.860550, 40.045063, 42.360165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.090969, 39.990761, 42.399639>,  <39.475002, 39.900253, 42.465427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090969, 39.990761, 42.399639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064356, -0.750867, -0.657311,
		-0.272220, -0.620487, 0.735454,
		-0.960080, 0.226264, -0.164469,
		38.802944, 40.058640, 42.350300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234783, 39.278572, 42.489441>,  <39.475002, 39.900253, 42.465427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234783, 39.278572, 42.489441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934490, 39.494503, 42.337128>,  <38.754314, 39.624062, 42.245739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934490, 39.494503, 42.337128>,  <39.234783, 39.278572, 42.489441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934490, 39.494503, 42.337128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197499, -0.733450, -0.650420,
		-0.630394, -0.413088, 0.657239,
		-0.750732, 0.539825, -0.380778,
		38.709270, 39.656452, 42.222893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770271, 38.789639, 42.238270>,  <39.234783, 39.278572, 42.489441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770271, 38.789639, 42.238270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629009, 39.109756, 42.044437>,  <38.544254, 39.301826, 41.928139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629009, 39.109756, 42.044437>,  <38.770271, 38.789639, 42.238270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629009, 39.109756, 42.044437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185373, -0.567539, -0.802207,
		-0.917017, -0.193473, 0.348779,
		-0.353151, 0.800292, -0.484578,
		38.523064, 39.349846, 41.899063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059978, 38.580875, 42.048439>,  <38.770271, 38.789639, 42.238270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059978, 38.580875, 42.048439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212059, 38.858826, 41.804279>,  <38.303307, 39.025597, 41.657784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212059, 38.858826, 41.804279>,  <38.059978, 38.580875, 42.048439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212059, 38.858826, 41.804279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178694, -0.592341, -0.785621,
		-0.907477, 0.407769, -0.101039,
		0.380201, 0.694878, -0.610402,
		38.326118, 39.067287, 41.621159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625591, 38.416519, 41.431297>,  <38.059978, 38.580875, 42.048439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625591, 38.416519, 41.431297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911884, 38.653481, 41.283356>,  <38.083660, 38.795658, 41.194592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911884, 38.653481, 41.283356>,  <37.625591, 38.416519, 41.431297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911884, 38.653481, 41.283356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207388, -0.325406, -0.922552,
		-0.666875, 0.736999, -0.110045,
		0.715729, 0.592405, -0.369849,
		38.126602, 38.831203, 41.172401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294956, 38.689270, 40.964195>,  <37.625591, 38.416519, 41.431297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294956, 38.689270, 40.964195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667664, 38.759754, 40.837227>,  <37.891289, 38.802044, 40.761047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667664, 38.759754, 40.837227>,  <37.294956, 38.689270, 40.964195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667664, 38.759754, 40.837227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203575, -0.470345, -0.858681,
		-0.300602, 0.864712, -0.402382,
		0.931770, 0.176207, -0.317420,
		37.947193, 38.812614, 40.742001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287510, 39.080769, 40.279594>,  <37.294956, 38.689270, 40.964195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287510, 39.080769, 40.279594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642113, 38.895962, 40.289749>,  <37.854874, 38.785076, 40.295841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642113, 38.895962, 40.289749>,  <37.287510, 39.080769, 40.279594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642113, 38.895962, 40.289749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160388, -0.358280, -0.919734,
		0.434029, 0.811279, -0.391720,
		0.886507, -0.462019, 0.025384,
		37.908066, 38.757355, 40.297363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571796, 39.224117, 39.587116>,  <37.287510, 39.080769, 40.279594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571796, 39.224117, 39.587116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779617, 38.913948, 39.730663>,  <37.904308, 38.727848, 39.816792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779617, 38.913948, 39.730663>,  <37.571796, 39.224117, 39.587116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779617, 38.913948, 39.730663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086208, -0.465429, -0.880877,
		0.850078, 0.426725, -0.308663,
		0.519553, -0.775423, 0.358863,
		37.935482, 38.681320, 39.838322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871620, 39.056320, 38.962193>,  <37.571796, 39.224117, 39.587116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871620, 39.056320, 38.962193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918110, 38.738857, 39.201057>,  <37.946003, 38.548382, 39.344376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918110, 38.738857, 39.201057>,  <37.871620, 39.056320, 38.962193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918110, 38.738857, 39.201057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061931, -0.605860, -0.793157,
		0.991291, 0.055198, -0.119565,
		0.116220, -0.793654, 0.597165,
		37.952976, 38.500759, 39.380207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.826347, 32.507988, 39.064152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.630539, 32.727955, 39.334843>,  <32.513054, 32.859936, 39.497257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.630539, 32.727955, 39.334843>,  <32.826347, 32.507988, 39.064152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630539, 32.727955, 39.334843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777928, 0.075200, -0.623838,
		-0.393950, -0.831826, 0.390985,
		-0.489522, 0.549919, 0.676726,
		32.483681, 32.892929, 39.537861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170170, 32.399750, 38.849880>,  <32.826347, 32.507988, 39.064152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170170, 32.399750, 38.849880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.090137, 32.669765, 39.133934>,  <32.042118, 32.831776, 39.304367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.090137, 32.669765, 39.133934>,  <32.170170, 32.399750, 38.849880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090137, 32.669765, 39.133934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976023, -0.073925, -0.204730,
		-0.085705, -0.734068, 0.673646,
		-0.200085, 0.675040, 0.710132,
		32.030113, 32.872276, 39.346973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679892, 32.167465, 39.325142>,  <32.170170, 32.399750, 38.849880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679892, 32.167465, 39.325142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660748, 32.562920, 39.382137>,  <31.649261, 32.800194, 39.416336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660748, 32.562920, 39.382137>,  <31.679892, 32.167465, 39.325142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660748, 32.562920, 39.382137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998536, -0.050956, 0.018146,
		0.025201, -0.141414, 0.989630,
		-0.047862, 0.988638, 0.142491,
		31.646389, 32.859512, 39.424885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998554, 32.246258, 39.639118>,  <31.679892, 32.167465, 39.325142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998554, 32.246258, 39.639118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096029, 32.624100, 39.551178>,  <31.154514, 32.850807, 39.498413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096029, 32.624100, 39.551178>,  <30.998554, 32.246258, 39.639118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096029, 32.624100, 39.551178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968002, 0.222894, -0.115277,
		-0.059888, 0.240906, 0.968699,
		0.243689, 0.944607, -0.219849,
		31.169136, 32.907482, 39.485222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671110, 32.807114, 40.101215>,  <30.998554, 32.246258, 39.639118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671110, 32.807114, 40.101215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.743599, 33.013695, 39.766449>,  <30.787092, 33.137646, 39.565590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.743599, 33.013695, 39.766449>,  <30.671110, 32.807114, 40.101215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743599, 33.013695, 39.766449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956190, 0.291480, -0.027179,
		0.229908, 0.805179, 0.546652,
		0.181222, 0.516455, -0.836919,
		30.797966, 33.168633, 39.515373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199070, 33.483070, 40.117943>,  <30.671110, 32.807114, 40.101215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199070, 33.483070, 40.117943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296890, 33.430557, 39.733662>,  <30.355583, 33.399048, 39.503094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296890, 33.430557, 39.733662>,  <30.199070, 33.483070, 40.117943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296890, 33.430557, 39.733662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923784, 0.269530, -0.271985,
		0.294648, 0.954001, -0.055365,
		0.244551, -0.131285, -0.960707,
		30.370256, 33.391171, 39.445450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908546, 34.084213, 39.757263>,  <30.199070, 33.483070, 40.117943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908546, 34.084213, 39.757263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993486, 33.838295, 39.453438>,  <30.044451, 33.690742, 39.271145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993486, 33.838295, 39.453438>,  <29.908546, 34.084213, 39.757263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993486, 33.838295, 39.453438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844242, 0.276009, -0.459429,
		0.492100, 0.738814, -0.460425,
		0.212351, -0.614795, -0.759562,
		30.057192, 33.653858, 39.225571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922163, 34.385372, 39.052437>,  <29.908546, 34.084213, 39.757263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922163, 34.385372, 39.052437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838497, 34.001465, 38.977505>,  <29.788298, 33.771122, 38.932545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838497, 34.001465, 38.977505>,  <29.922163, 34.385372, 39.052437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838497, 34.001465, 38.977505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910267, 0.261095, -0.321316,
		0.357300, 0.103316, -0.928258,
		-0.209166, -0.959769, -0.187334,
		29.775747, 33.713535, 38.921303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570786, 34.466885, 38.434437>,  <29.922163, 34.385372, 39.052437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570786, 34.466885, 38.434437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479361, 34.102264, 38.571163>,  <29.424505, 33.883492, 38.653198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479361, 34.102264, 38.571163>,  <29.570786, 34.466885, 38.434437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479361, 34.102264, 38.571163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779832, -0.038750, -0.624788,
		0.582771, -0.409361, -0.701999,
		-0.228561, -0.911549, 0.341815,
		29.410791, 33.828800, 38.673706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443258, 34.006187, 37.796177>,  <29.570786, 34.466885, 38.434437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443258, 34.006187, 37.796177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244158, 33.839512, 38.100445>,  <29.124697, 33.739506, 38.283005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244158, 33.839512, 38.100445>,  <29.443258, 34.006187, 37.796177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244158, 33.839512, 38.100445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841536, 0.019771, -0.539840,
		0.209908, -0.908833, -0.360502,
		-0.497752, -0.416691, 0.760665,
		29.094831, 33.714504, 38.328644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025570, 33.384296, 37.551025>,  <29.443258, 34.006187, 37.796177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025570, 33.384296, 37.551025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839294, 33.464272, 37.895851>,  <28.727530, 33.512257, 38.102745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839294, 33.464272, 37.895851>,  <29.025570, 33.384296, 37.551025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839294, 33.464272, 37.895851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882987, -0.040163, -0.467677,
		-0.058883, -0.978985, 0.195245,
		-0.465691, 0.199937, 0.862066,
		28.699587, 33.524254, 38.154472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439480, 33.032406, 37.504856>,  <29.025570, 33.384296, 37.551025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439480, 33.032406, 37.504856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.363436, 33.284084, 37.806309>,  <28.317808, 33.435093, 37.987183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.363436, 33.284084, 37.806309>,  <28.439480, 33.032406, 37.504856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363436, 33.284084, 37.806309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927723, 0.136033, -0.347598,
		-0.321228, -0.765248, 0.557861,
		-0.190111, 0.629199, 0.753635,
		28.306402, 33.472843, 38.032398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965048, 32.735340, 38.003071>,  <28.439480, 33.032406, 37.504856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965048, 32.735340, 38.003071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943945, 33.134750, 37.997944>,  <27.931284, 33.374397, 37.994869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943945, 33.134750, 37.997944>,  <27.965048, 32.735340, 38.003071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943945, 33.134750, 37.997944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945443, -0.054076, -0.321269,
		-0.321489, -0.004830, 0.946901,
		-0.052757, 0.998525, -0.012818,
		27.928118, 33.434307, 37.994099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322073, 32.846848, 38.101067>,  <27.965048, 32.735340, 38.003071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322073, 32.846848, 38.101067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421928, 33.220730, 37.999870>,  <27.481842, 33.445061, 37.939152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421928, 33.220730, 37.999870>,  <27.322073, 32.846848, 38.101067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421928, 33.220730, 37.999870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959125, 0.202717, -0.197445,
		-0.133267, 0.291943, 0.947106,
		0.249637, 0.934706, -0.252995,
		27.496819, 33.501141, 37.923973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830763, 33.411694, 38.339848>,  <27.322073, 32.846848, 38.101067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830763, 33.411694, 38.339848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020739, 33.612434, 38.050690>,  <27.134724, 33.732880, 37.877193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020739, 33.612434, 38.050690>,  <26.830763, 33.411694, 38.339848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020739, 33.612434, 38.050690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848430, 0.479237, -0.224718,
		0.233666, 0.720056, 0.653391,
		0.474939, 0.501848, -0.722899,
		27.163219, 33.762989, 37.833820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517483, 34.052364, 38.380184>,  <26.830763, 33.411694, 38.339848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517483, 34.052364, 38.380184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.711575, 34.073383, 38.031059>,  <26.828030, 34.085995, 37.821587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.711575, 34.073383, 38.031059>,  <26.517483, 34.052364, 38.380184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711575, 34.073383, 38.031059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730412, 0.573096, -0.371562,
		0.480679, 0.817802, 0.316462,
		0.485228, 0.052546, -0.872808,
		26.857143, 34.089146, 37.769218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631067, 34.821480, 38.141468>,  <26.517483, 34.052364, 38.380184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631067, 34.821480, 38.141468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636724, 34.576660, 37.825191>,  <26.640118, 34.429768, 37.635426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636724, 34.576660, 37.825191>,  <26.631067, 34.821480, 38.141468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636724, 34.576660, 37.825191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521439, 0.670217, -0.528121,
		0.853172, 0.419765, -0.309669,
		0.014141, -0.612051, -0.790692,
		26.640966, 34.393044, 37.587982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766853, 35.225750, 37.579086>,  <26.631067, 34.821480, 38.141468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766853, 35.225750, 37.579086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.635122, 34.896992, 37.393173>,  <26.556084, 34.699738, 37.281624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.635122, 34.896992, 37.393173>,  <26.766853, 35.225750, 37.579086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635122, 34.896992, 37.393173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420718, 0.568410, -0.707041,
		0.845306, -0.037303, -0.532979,
		-0.329325, -0.821899, -0.464786,
		26.536325, 34.650421, 37.253738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894350, 35.323097, 36.942371>,  <26.766853, 35.225750, 37.579086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894350, 35.323097, 36.942371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594137, 35.059464, 36.923115>,  <26.414009, 34.901283, 36.911560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594137, 35.059464, 36.923115>,  <26.894350, 35.323097, 36.942371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594137, 35.059464, 36.923115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428513, 0.540835, -0.723791,
		0.503069, -0.522601, -0.688338,
		-0.750532, -0.659079, -0.048136,
		26.368979, 34.861740, 36.908672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593128, 35.764057, 36.309978>,  <26.894350, 35.323097, 36.942371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593128, 35.764057, 36.309978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.708797, 36.121788, 36.173420>,  <26.778198, 36.336426, 36.091484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.708797, 36.121788, 36.173420>,  <26.593128, 35.764057, 36.309978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708797, 36.121788, 36.173420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952252, -0.305233, 0.006985,
		-0.097959, -0.327115, -0.939894,
		0.289172, 0.894331, -0.341396,
		26.795549, 36.390087, 36.071003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067934, 35.569458, 35.880913>,  <26.593128, 35.764057, 36.309978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067934, 35.569458, 35.880913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127075, 35.952759, 35.978802>,  <27.162560, 36.182739, 36.037537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127075, 35.952759, 35.978802>,  <27.067934, 35.569458, 35.880913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127075, 35.952759, 35.978802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987957, -0.131696, -0.081221,
		-0.045601, 0.253786, -0.966185,
		0.147855, 0.958253, 0.244725,
		27.171432, 36.240234, 36.052219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550339, 35.801270, 35.448151>,  <27.067934, 35.569458, 35.880913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550339, 35.801270, 35.448151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556828, 36.053570, 35.758476>,  <27.560720, 36.204952, 35.944672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556828, 36.053570, 35.758476>,  <27.550339, 35.801270, 35.448151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556828, 36.053570, 35.758476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999715, 0.003371, -0.023643,
		-0.017529, 0.775976, -0.630519,
		0.016221, 0.630754, 0.775814,
		27.561693, 36.242794, 35.991219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050344, 36.252068, 35.234612>,  <27.550339, 35.801270, 35.448151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050344, 36.252068, 35.234612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024334, 36.275303, 35.633087>,  <28.008728, 36.289246, 35.872173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024334, 36.275303, 35.633087>,  <28.050344, 36.252068, 35.234612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024334, 36.275303, 35.633087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991752, -0.106732, 0.070962,
		0.110448, 0.992589, -0.050671,
		-0.065028, 0.058090, 0.996191,
		28.004826, 36.292728, 35.931946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631073, 36.702522, 35.484581>,  <28.050344, 36.252068, 35.234612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631073, 36.702522, 35.484581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507042, 36.484585, 35.796219>,  <28.432623, 36.353821, 35.983204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507042, 36.484585, 35.796219>,  <28.631073, 36.702522, 35.484581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507042, 36.484585, 35.796219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950697, -0.173307, 0.257175,
		-0.005097, 0.820432, 0.571721,
		-0.310078, -0.544845, 0.779099,
		28.414019, 36.321133, 36.029949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149649, 36.739288, 36.012028>,  <28.631073, 36.702522, 35.484581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149649, 36.739288, 36.012028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941776, 36.404907, 36.082588>,  <28.817053, 36.204277, 36.124924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941776, 36.404907, 36.082588>,  <29.149649, 36.739288, 36.012028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941776, 36.404907, 36.082588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843663, -0.469542, 0.260313,
		-0.134781, 0.284103, 0.949273,
		-0.519680, -0.835952, 0.176402,
		28.785872, 36.154121, 36.135509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360523, 36.431999, 36.613174>,  <29.149649, 36.739288, 36.012028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360523, 36.431999, 36.613174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152060, 36.112053, 36.494106>,  <29.026981, 35.920086, 36.422665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152060, 36.112053, 36.494106>,  <29.360523, 36.431999, 36.613174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152060, 36.112053, 36.494106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724579, -0.598972, 0.340906,
		-0.450975, -0.038019, 0.891726,
		-0.521159, -0.799866, -0.297670,
		28.995712, 35.872093, 36.404804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396725, 35.896160, 37.174011>,  <29.360523, 36.431999, 36.613174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396725, 35.896160, 37.174011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304226, 35.702290, 36.836582>,  <29.248726, 35.585968, 36.634125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304226, 35.702290, 36.836582>,  <29.396725, 35.896160, 37.174011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304226, 35.702290, 36.836582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702439, -0.683091, 0.199915,
		-0.673129, -0.546326, 0.498422,
		-0.231248, -0.484680, -0.843569,
		29.234852, 35.556885, 36.583511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239624, 35.156029, 37.351578>,  <29.396725, 35.896160, 37.174011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239624, 35.156029, 37.351578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354477, 35.158257, 36.968430>,  <29.423388, 35.159595, 36.738541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354477, 35.158257, 36.968430>,  <29.239624, 35.156029, 37.351578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354477, 35.158257, 36.968430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711475, -0.670797, 0.209368,
		-0.641373, -0.741620, -0.196572,
		0.287132, 0.005573, -0.957875,
		29.440617, 35.159927, 36.681068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583895, 34.629471, 37.346882>,  <29.239624, 35.156029, 37.351578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583895, 34.629471, 37.346882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661268, 34.753819, 36.974659>,  <29.707693, 34.828426, 36.751324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661268, 34.753819, 36.974659>,  <29.583895, 34.629471, 37.346882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661268, 34.753819, 36.974659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663090, -0.740483, -0.109535,
		-0.723115, -0.595857, -0.349370,
		0.193435, 0.310870, -0.930560,
		29.719299, 34.847080, 36.695492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524057, 34.013355, 36.864647>,  <29.583895, 34.629471, 37.346882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524057, 34.013355, 36.864647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769485, 34.299362, 36.730610>,  <29.916742, 34.470966, 36.650188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769485, 34.299362, 36.730610>,  <29.524057, 34.013355, 36.864647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769485, 34.299362, 36.730610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673626, -0.695380, -0.250349,
		-0.412017, -0.072118, -0.908318,
		0.613571, 0.715015, -0.335089,
		29.953556, 34.513866, 36.630085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492334, 33.896580, 36.179115>,  <29.524057, 34.013355, 36.864647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492334, 33.896580, 36.179115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.839451, 34.068237, 36.279335>,  <30.047720, 34.171230, 36.339466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.839451, 34.068237, 36.279335>,  <29.492334, 33.896580, 36.179115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839451, 34.068237, 36.279335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492704, -0.677437, -0.546188,
		-0.064657, 0.597426, -0.799313,
		0.867792, 0.429140, 0.250553,
		30.099789, 34.196980, 36.354500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917015, 33.430466, 35.900013>,  <29.492334, 33.896580, 36.179115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917015, 33.430466, 35.900013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182865, 33.669594, 36.079292>,  <30.342375, 33.813072, 36.186859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182865, 33.669594, 36.079292>,  <29.917015, 33.430466, 35.900013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182865, 33.669594, 36.079292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746329, -0.559735, -0.360124,
		0.035583, 0.573852, -0.818186,
		0.664625, 0.597822, 0.448199,
		30.382252, 33.848942, 36.213753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531488, 33.616848, 35.405430>,  <29.917015, 33.430466, 35.900013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531488, 33.616848, 35.405430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646969, 33.639549, 35.787724>,  <30.716257, 33.653172, 36.017101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646969, 33.639549, 35.787724>,  <30.531488, 33.616848, 35.405430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646969, 33.639549, 35.787724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818801, -0.531994, -0.215746,
		0.496201, 0.844844, -0.200061,
		0.288702, 0.056757, 0.955735,
		30.733580, 33.656578, 36.074444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239771, 33.699669, 35.371311>,  <30.531488, 33.616848, 35.405430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239771, 33.699669, 35.371311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.197330, 33.574100, 35.748711>,  <31.171865, 33.498760, 35.975151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.197330, 33.574100, 35.748711>,  <31.239771, 33.699669, 35.371311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197330, 33.574100, 35.748711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836421, -0.541293, -0.086037,
		0.537720, 0.780037, 0.320000,
		-0.106102, -0.313918, 0.943503,
		31.165501, 33.479923, 36.031761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931335, 33.606686, 35.649624>,  <31.239771, 33.699669, 35.371311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931335, 33.606686, 35.649624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749210, 33.389587, 35.931931>,  <31.639935, 33.259327, 36.101315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749210, 33.389587, 35.931931>,  <31.931335, 33.606686, 35.649624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749210, 33.389587, 35.931931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768199, -0.640203, 0.003262,
		0.450066, 0.543657, 0.708434,
		-0.455315, -0.542750, 0.705770,
		31.612616, 33.226761, 36.143661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410873, 33.475498, 36.114380>,  <31.931335, 33.606686, 35.649624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410873, 33.475498, 36.114380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.144791, 33.182072, 36.170071>,  <31.985142, 33.006016, 36.203484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.144791, 33.182072, 36.170071>,  <32.410873, 33.475498, 36.114380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144791, 33.182072, 36.170071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744117, -0.635933, 0.204644,
		-0.061583, 0.239729, 0.968885,
		-0.665204, -0.733567, 0.139224,
		31.945229, 32.962002, 36.211838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536137, 33.181820, 36.863495>,  <32.410873, 33.475498, 36.114380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536137, 33.181820, 36.863495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.329075, 32.908512, 36.657509>,  <32.204838, 32.744530, 36.533916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.329075, 32.908512, 36.657509>,  <32.536137, 33.181820, 36.863495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329075, 32.908512, 36.657509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621938, -0.713826, 0.321939,
		-0.587564, -0.153623, 0.794461,
		-0.517650, -0.683265, -0.514963,
		32.173779, 32.703533, 36.503021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375984, 32.589214, 37.321053>,  <32.536137, 33.181820, 36.863495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375984, 32.589214, 37.321053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.358055, 32.461369, 36.942459>,  <32.347298, 32.384659, 36.715302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.358055, 32.461369, 36.942459>,  <32.375984, 32.589214, 37.321053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358055, 32.461369, 36.942459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614414, -0.755877, 0.226154,
		-0.787710, -0.571397, 0.230257,
		-0.044823, -0.319617, -0.946486,
		32.344608, 32.365482, 36.658512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231983, 31.805304, 37.375008>,  <32.375984, 32.589214, 37.321053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231983, 31.805304, 37.375008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.383854, 31.825441, 37.005508>,  <32.474976, 31.837524, 36.783810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.383854, 31.825441, 37.005508>,  <32.231983, 31.805304, 37.375008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383854, 31.825441, 37.005508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615473, -0.759224, 0.211595,
		-0.690679, -0.648880, -0.319246,
		0.379679, 0.050344, -0.923748,
		32.497757, 31.840544, 36.728386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411308, 31.054733, 37.208473>,  <32.231983, 31.805304, 37.375008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411308, 31.054733, 37.208473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.593967, 31.235825, 36.902138>,  <32.703564, 31.344479, 36.718338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.593967, 31.235825, 36.902138>,  <32.411308, 31.054733, 37.208473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593967, 31.235825, 36.902138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539137, -0.825582, -0.166572,
		-0.707672, -0.336825, -0.621087,
		0.456653, 0.452729, -0.765836,
		32.730965, 31.371643, 36.672386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326485, 30.681604, 36.602108>,  <32.411308, 31.054733, 37.208473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326485, 30.681604, 36.602108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.655285, 30.902510, 36.546497>,  <32.852566, 31.035053, 36.513130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.655285, 30.902510, 36.546497>,  <32.326485, 30.681604, 36.602108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655285, 30.902510, 36.546497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499674, -0.816520, -0.289174,
		-0.273218, 0.168231, -0.947127,
		0.821996, 0.552262, -0.139027,
		32.901882, 31.068188, 36.504787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622032, 30.329304, 36.182251>,  <32.326485, 30.681604, 36.602108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622032, 30.329304, 36.182251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931400, 30.560127, 36.287193>,  <33.117020, 30.698622, 36.350159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931400, 30.560127, 36.287193>,  <32.622032, 30.329304, 36.182251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931400, 30.560127, 36.287193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623558, -0.767033, -0.151116,
		0.114030, 0.280467, -0.953066,
		0.773416, 0.577061, 0.262352,
		33.163425, 30.733246, 36.365898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.521717, 38.839527, 44.634495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.192963, 38.855206, 44.861813>,  <40.995708, 38.864613, 44.998203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.192963, 38.855206, 44.861813>,  <41.521717, 38.839527, 44.634495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192963, 38.855206, 44.861813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487544, 0.564368, 0.666175,
		-0.294615, 0.824592, -0.482959,
		-0.821890, 0.039198, 0.568297,
		40.946396, 38.866966, 45.032303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754223, 39.443619, 45.059620>,  <41.521717, 38.839527, 44.634495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754223, 39.443619, 45.059620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.425941, 39.305702, 45.241859>,  <41.228973, 39.222954, 45.351204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.425941, 39.305702, 45.241859>,  <41.754223, 39.443619, 45.059620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425941, 39.305702, 45.241859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289494, 0.436532, 0.851841,
		-0.492590, 0.831000, -0.258447,
		-0.820700, -0.344789, 0.455601,
		41.179733, 39.202267, 45.378540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324764, 40.006405, 45.233498>,  <41.754223, 39.443619, 45.059620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324764, 40.006405, 45.233498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.241428, 39.699398, 45.475986>,  <41.191425, 39.515194, 45.621479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.241428, 39.699398, 45.475986>,  <41.324764, 40.006405, 45.233498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241428, 39.699398, 45.475986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415716, 0.491558, 0.765213,
		-0.885311, 0.411441, 0.216659,
		-0.208339, -0.767520, 0.606225,
		41.178928, 39.469143, 45.657852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191116, 40.328278, 45.876579>,  <41.324764, 40.006405, 45.233498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191116, 40.328278, 45.876579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.230099, 39.947998, 45.994343>,  <41.253487, 39.719830, 46.064999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.230099, 39.947998, 45.994343>,  <41.191116, 40.328278, 45.876579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230099, 39.947998, 45.994343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142415, 0.306089, 0.941290,
		-0.984998, -0.049803, 0.165223,
		0.097452, -0.950699, 0.294404,
		41.259335, 39.662788, 46.082664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695862, 40.258610, 46.433006>,  <41.191116, 40.328278, 45.876579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695862, 40.258610, 46.433006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.974960, 39.972931, 46.455166>,  <41.142422, 39.801525, 46.468460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.974960, 39.972931, 46.455166>,  <40.695862, 40.258610, 46.433006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974960, 39.972931, 46.455166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175060, 0.244991, 0.953590,
		-0.694623, -0.655668, 0.295969,
		0.697748, -0.714198, 0.055396,
		41.184284, 39.758671, 46.471783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606026, 39.918159, 47.067104>,  <40.695862, 40.258610, 46.433006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606026, 39.918159, 47.067104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.974854, 39.804031, 46.962505>,  <41.196152, 39.735554, 46.899746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.974854, 39.804031, 46.962505>,  <40.606026, 39.918159, 47.067104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974854, 39.804031, 46.962505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246624, -0.087534, 0.965150,
		-0.298270, -0.954426, -0.010345,
		0.922069, -0.285324, -0.261493,
		41.251472, 39.718433, 46.884056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777611, 39.263073, 47.389896>,  <40.606026, 39.918159, 47.067104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777611, 39.263073, 47.389896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.133850, 39.431763, 47.321785>,  <41.347591, 39.532974, 47.280918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.133850, 39.431763, 47.321785>,  <40.777611, 39.263073, 47.389896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133850, 39.431763, 47.321785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235352, -0.106984, 0.966004,
		0.389167, -0.900393, -0.194532,
		0.890594, 0.421720, -0.170274,
		41.401028, 39.558277, 47.270702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131893, 39.013054, 47.884171>,  <40.777611, 39.263073, 47.389896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131893, 39.013054, 47.884171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358662, 39.312469, 47.746597>,  <41.494724, 39.492119, 47.664051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358662, 39.312469, 47.746597>,  <41.131893, 39.013054, 47.884171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358662, 39.312469, 47.746597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318743, 0.185668, 0.929478,
		0.759605, -0.636571, -0.133331,
		0.566923, 0.748535, -0.343937,
		41.528740, 39.537029, 47.643417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776329, 38.968704, 48.276794>,  <41.131893, 39.013054, 47.884171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776329, 38.968704, 48.276794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.812237, 39.336239, 48.123081>,  <41.833782, 39.556759, 48.030853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.812237, 39.336239, 48.123081>,  <41.776329, 38.968704, 48.276794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812237, 39.336239, 48.123081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199962, 0.361354, 0.910735,
		0.975682, -0.158602, -0.151293,
		0.089774, 0.918841, -0.384281,
		41.839169, 39.611893, 48.007797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293850, 39.267540, 48.663242>,  <41.776329, 38.968704, 48.276794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293850, 39.267540, 48.663242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.085548, 39.564682, 48.494965>,  <41.960567, 39.742966, 48.393997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.085548, 39.564682, 48.494965>,  <42.293850, 39.267540, 48.663242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085548, 39.564682, 48.494965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152110, 0.404164, 0.901950,
		0.840048, 0.533684, -0.097473,
		-0.520752, 0.742855, -0.420695,
		41.929321, 39.787537, 48.368755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509773, 39.948891, 48.868896>,  <42.293850, 39.267540, 48.663242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509773, 39.948891, 48.868896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.130753, 40.026752, 48.767498>,  <41.903339, 40.073471, 48.706661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.130753, 40.026752, 48.767498>,  <42.509773, 39.948891, 48.868896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130753, 40.026752, 48.767498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136486, 0.470731, 0.871656,
		0.289000, 0.860535, -0.419473,
		-0.947550, 0.194656, -0.253492,
		41.846489, 40.085148, 48.691452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329880, 40.685310, 48.953102>,  <42.509773, 39.948891, 48.868896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329880, 40.685310, 48.953102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.962429, 40.527302, 48.949326>,  <41.741959, 40.432499, 48.947060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.962429, 40.527302, 48.949326>,  <42.329880, 40.685310, 48.953102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962429, 40.527302, 48.949326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154055, 0.336050, 0.929160,
		-0.363861, 0.855004, -0.369558,
		-0.918625, -0.395017, -0.009442,
		41.686840, 40.408798, 48.946491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791195, 41.196236, 49.020721>,  <42.329880, 40.685310, 48.953102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791195, 41.196236, 49.020721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.630615, 40.864349, 49.175854>,  <41.534267, 40.665218, 49.268932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.630615, 40.864349, 49.175854>,  <41.791195, 41.196236, 49.020721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630615, 40.864349, 49.175854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231742, 0.501697, 0.833424,
		-0.886077, 0.244701, -0.393686,
		-0.401451, -0.829712, 0.387835,
		41.510181, 40.615437, 49.292206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127441, 41.455292, 49.314808>,  <41.791195, 41.196236, 49.020721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127441, 41.455292, 49.314808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.249561, 41.106251, 49.467312>,  <41.322834, 40.896828, 49.558815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.249561, 41.106251, 49.467312>,  <41.127441, 41.455292, 49.314808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249561, 41.106251, 49.467312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086498, 0.373311, 0.923665,
		-0.948320, -0.314971, 0.038493,
		0.305298, -0.872601, 0.381263,
		41.341152, 40.844471, 49.581692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982903, 42.219700, 49.138889>,  <41.127441, 41.455292, 49.314808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982903, 42.219700, 49.138889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.730103, 42.517757, 49.053726>,  <40.578423, 42.696594, 49.002628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.730103, 42.517757, 49.053726>,  <40.982903, 42.219700, 49.138889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730103, 42.517757, 49.053726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431673, -0.566660, -0.701823,
		-0.643609, -0.351644, 0.679789,
		-0.632001, 0.745146, -0.212912,
		40.540501, 42.741302, 48.989853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271580, 41.953915, 49.299526>,  <40.982903, 42.219700, 49.138889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271580, 41.953915, 49.299526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.264065, 42.235958, 49.015984>,  <40.259556, 42.405182, 48.845860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.264065, 42.235958, 49.015984>,  <40.271580, 41.953915, 49.299526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264065, 42.235958, 49.015984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402888, -0.654210, -0.640070,
		-0.915056, 0.273562, 0.296372,
		-0.018791, 0.705105, -0.708854,
		40.258427, 42.447491, 48.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608604, 42.049976, 49.011635>,  <40.271580, 41.953915, 49.299526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608604, 42.049976, 49.011635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.842834, 42.203423, 48.725994>,  <39.983372, 42.295490, 48.554611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.842834, 42.203423, 48.725994>,  <39.608604, 42.049976, 49.011635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842834, 42.203423, 48.725994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564873, -0.438716, -0.698889,
		-0.581391, 0.812630, -0.040209,
		0.585579, 0.383615, -0.714099,
		40.018509, 42.318508, 48.511765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128708, 42.252808, 48.629593>,  <39.608604, 42.049976, 49.011635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128708, 42.252808, 48.629593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473866, 42.225964, 48.429230>,  <39.680962, 42.209858, 48.309013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473866, 42.225964, 48.429230>,  <39.128708, 42.252808, 48.629593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473866, 42.225964, 48.429230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489440, -0.357924, -0.795197,
		-0.125921, 0.931336, -0.341697,
		0.862898, -0.067108, -0.500904,
		39.732735, 42.205830, 48.278957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070858, 42.563702, 47.958549>,  <39.128708, 42.252808, 48.629593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070858, 42.563702, 47.958549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.414558, 42.376579, 47.875751>,  <39.620777, 42.264305, 47.826073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.414558, 42.376579, 47.875751>,  <39.070858, 42.563702, 47.958549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414558, 42.376579, 47.875751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399398, -0.360647, -0.842861,
		0.319646, 0.806900, -0.496727,
		0.859248, -0.467809, -0.206995,
		39.672333, 42.236237, 47.813652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246609, 42.691460, 47.249588>,  <39.070858, 42.563702, 47.958549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246609, 42.691460, 47.249588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455223, 42.358196, 47.323174>,  <39.580391, 42.158237, 47.367325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455223, 42.358196, 47.323174>,  <39.246609, 42.691460, 47.249588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455223, 42.358196, 47.323174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315984, -0.388877, -0.865407,
		0.792562, 0.393213, -0.466079,
		0.521536, -0.833162, 0.183960,
		39.611683, 42.108250, 47.378361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749420, 42.722107, 46.661720>,  <39.246609, 42.691460, 47.249588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749420, 42.722107, 46.661720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.682022, 42.352119, 46.797977>,  <39.641582, 42.130127, 46.879730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.682022, 42.352119, 46.797977>,  <39.749420, 42.722107, 46.661720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682022, 42.352119, 46.797977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298226, -0.281546, -0.912027,
		0.939505, -0.255262, -0.228411,
		-0.168498, -0.924972, 0.340640,
		39.631474, 42.074627, 46.900169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227913, 42.338448, 46.293999>,  <39.749420, 42.722107, 46.661720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227913, 42.338448, 46.293999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937553, 42.096119, 46.424263>,  <39.763340, 41.950722, 46.502422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937553, 42.096119, 46.424263>,  <40.227913, 42.338448, 46.293999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937553, 42.096119, 46.424263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150286, -0.322335, -0.934620,
		0.671184, -0.727380, 0.142936,
		-0.725897, -0.605821, 0.325661,
		39.719784, 41.914371, 46.521961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342762, 41.767685, 45.951321>,  <40.227913, 42.338448, 46.293999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342762, 41.767685, 45.951321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.970135, 41.679070, 46.066628>,  <39.746559, 41.625900, 46.135811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.970135, 41.679070, 46.066628>,  <40.342762, 41.767685, 45.951321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970135, 41.679070, 46.066628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189754, -0.380063, -0.905287,
		0.310115, -0.898039, 0.312018,
		-0.931570, -0.221536, 0.288270,
		39.690662, 41.612610, 46.153107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159946, 41.011909, 45.801952>,  <40.342762, 41.767685, 45.951321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159946, 41.011909, 45.801952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.806499, 41.190968, 45.856846>,  <39.594433, 41.298401, 45.889782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.806499, 41.190968, 45.856846>,  <40.159946, 41.011909, 45.801952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806499, 41.190968, 45.856846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357138, -0.454854, -0.815819,
		-0.302773, -0.769885, 0.561788,
		-0.883618, 0.447644, 0.137237,
		39.541412, 41.325260, 45.898018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631275, 40.507488, 45.591686>,  <40.159946, 41.011909, 45.801952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631275, 40.507488, 45.591686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424366, 40.849728, 45.599407>,  <39.300220, 41.055073, 45.604042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424366, 40.849728, 45.599407>,  <39.631275, 40.507488, 45.591686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424366, 40.849728, 45.599407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544906, -0.311877, -0.778338,
		-0.659926, -0.413136, 0.627548,
		-0.517277, 0.855600, 0.019304,
		39.269184, 41.106407, 45.605198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998772, 40.281403, 45.450535>,  <39.631275, 40.507488, 45.591686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998772, 40.281403, 45.450535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985653, 40.669930, 45.356327>,  <38.977783, 40.903046, 45.299801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985653, 40.669930, 45.356327>,  <38.998772, 40.281403, 45.450535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985653, 40.669930, 45.356327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503718, -0.219594, -0.835492,
		-0.863245, 0.091236, 0.496471,
		-0.032795, 0.971316, -0.235521,
		38.975815, 40.961323, 45.285671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331806, 40.491768, 45.432655>,  <38.998772, 40.281403, 45.450535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331806, 40.491768, 45.432655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540741, 40.733860, 45.192368>,  <38.666100, 40.879116, 45.048195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540741, 40.733860, 45.192368>,  <38.331806, 40.491768, 45.432655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540741, 40.733860, 45.192368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577141, -0.267690, -0.771525,
		-0.627755, 0.749695, 0.209477,
		0.522334, 0.605226, -0.600723,
		38.697441, 40.915428, 45.012150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868149, 40.744385, 44.852066>,  <38.331806, 40.491768, 45.432655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868149, 40.744385, 44.852066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238129, 40.816151, 44.718037>,  <38.460117, 40.859211, 44.637619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238129, 40.816151, 44.718037>,  <37.868149, 40.744385, 44.852066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238129, 40.816151, 44.718037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300371, -0.195150, -0.933645,
		-0.232897, 0.964224, -0.126614,
		0.924952, 0.179412, -0.335075,
		38.515614, 40.869976, 44.617516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456734, 41.303177, 45.022350>,  <37.868149, 40.744385, 44.852066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456734, 41.303177, 45.022350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107124, 41.131428, 45.113312>,  <36.897358, 41.028378, 45.167889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107124, 41.131428, 45.113312>,  <37.456734, 41.303177, 45.022350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107124, 41.131428, 45.113312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150558, 0.205662, 0.966972,
		-0.461964, 0.879397, -0.115108,
		-0.874026, -0.429376, 0.227408,
		36.844917, 41.002613, 45.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215500, 41.763401, 45.375580>,  <37.456734, 41.303177, 45.022350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215500, 41.763401, 45.375580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.011501, 41.432289, 45.469128>,  <36.889103, 41.233624, 45.525257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.011501, 41.432289, 45.469128>,  <37.215500, 41.763401, 45.375580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011501, 41.432289, 45.469128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329924, 0.062846, 0.941913,
		-0.794391, 0.557528, 0.241052,
		-0.509994, -0.827776, 0.233866,
		36.858501, 41.183956, 45.539288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908215, 41.983017, 45.953827>,  <37.215500, 41.763401, 45.375580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908215, 41.983017, 45.953827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841042, 41.589409, 45.977501>,  <36.800739, 41.353245, 45.991703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841042, 41.589409, 45.977501>,  <36.908215, 41.983017, 45.953827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841042, 41.589409, 45.977501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154655, 0.085588, 0.984254,
		-0.973592, 0.156131, -0.166556,
		-0.167928, -0.984021, 0.059182,
		36.790665, 41.294201, 45.995255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201382, 41.807724, 46.283566>,  <36.908215, 41.983017, 45.953827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201382, 41.807724, 46.283566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473869, 41.517803, 46.324749>,  <36.637363, 41.343849, 46.349461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473869, 41.517803, 46.324749>,  <36.201382, 41.807724, 46.283566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473869, 41.517803, 46.324749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076815, 0.069096, 0.994648,
		-0.728040, -0.685481, -0.008606,
		0.681217, -0.724805, 0.102960,
		36.678234, 41.300362, 46.355637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924107, 41.387402, 46.896351>,  <36.201382, 41.807724, 46.283566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924107, 41.387402, 46.896351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305767, 41.272327, 46.863281>,  <36.534763, 41.203285, 46.843441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305767, 41.272327, 46.863281>,  <35.924107, 41.387402, 46.896351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305767, 41.272327, 46.863281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074392, -0.039618, 0.996442,
		-0.289934, -0.956906, -0.016400,
		0.954151, -0.287682, -0.082673,
		36.592010, 41.186024, 46.838478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089264, 40.791702, 47.333881>,  <35.924107, 41.387402, 46.896351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089264, 40.791702, 47.333881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459270, 40.930637, 47.272293>,  <36.681274, 41.013996, 47.235340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459270, 40.930637, 47.272293>,  <36.089264, 40.791702, 47.333881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459270, 40.930637, 47.272293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146829, 0.046949, 0.988047,
		0.350411, -0.936565, -0.007570,
		0.925015, 0.347334, -0.153966,
		36.736774, 41.034836, 47.226105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625557, 40.352474, 47.732426>,  <36.089264, 40.791702, 47.333881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625557, 40.352474, 47.732426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770039, 40.716045, 47.649117>,  <36.856728, 40.934189, 47.599129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770039, 40.716045, 47.649117>,  <36.625557, 40.352474, 47.732426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770039, 40.716045, 47.649117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224906, 0.131845, 0.965419,
		0.904959, -0.395553, -0.156801,
		0.361201, 0.908931, -0.208277,
		36.878399, 40.988724, 47.586632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798363, 39.655396, 48.035526>,  <36.625557, 40.352474, 47.732426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798363, 39.655396, 48.035526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483021, 39.647861, 48.281498>,  <36.293816, 39.643341, 48.429081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483021, 39.647861, 48.281498>,  <36.798363, 39.655396, 48.035526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483021, 39.647861, 48.281498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568929, -0.358063, -0.740345,
		0.234128, -0.933508, 0.271565,
		-0.788355, -0.018834, 0.614932,
		36.246513, 39.642212, 48.465977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508957, 39.081348, 47.959286>,  <36.798363, 39.655396, 48.035526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508957, 39.081348, 47.959286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221317, 39.295933, 48.135967>,  <36.048733, 39.424683, 48.241974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221317, 39.295933, 48.135967>,  <36.508957, 39.081348, 47.959286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221317, 39.295933, 48.135967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687272, -0.455093, -0.566170,
		-0.102713, -0.710703, 0.695953,
		-0.719102, 0.536462, 0.441702,
		36.005589, 39.456871, 48.268478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066559, 38.511223, 48.119774>,  <36.508957, 39.081348, 47.959286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066559, 38.511223, 48.119774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877647, 38.861134, 48.076477>,  <35.764301, 39.071079, 48.050499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877647, 38.861134, 48.076477>,  <36.066559, 38.511223, 48.119774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877647, 38.861134, 48.076477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727420, -0.456155, -0.512623,
		-0.497806, -0.163364, 0.851763,
		-0.472280, 0.874777, -0.108243,
		35.735962, 39.123566, 48.044006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323158, 38.375793, 48.022949>,  <36.066559, 38.511223, 48.119774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323158, 38.375793, 48.022949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345963, 38.759335, 47.911705>,  <35.359646, 38.989460, 47.844959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345963, 38.759335, 47.911705>,  <35.323158, 38.375793, 48.022949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345963, 38.759335, 47.911705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636376, -0.179737, -0.750147,
		-0.769269, 0.219745, 0.599947,
		0.057008, 0.958857, -0.278107,
		35.363064, 39.046993, 47.828274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650814, 38.558968, 48.030922>,  <35.323158, 38.375793, 48.022949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650814, 38.558968, 48.030922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864845, 38.811310, 47.806171>,  <34.993263, 38.962715, 47.671322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864845, 38.811310, 47.806171>,  <34.650814, 38.558968, 48.030922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864845, 38.811310, 47.806171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641196, -0.129777, -0.756324,
		-0.550050, 0.764970, 0.335061,
		0.535082, 0.630856, -0.561880,
		35.025372, 39.000568, 47.637608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211258, 38.955711, 47.649738>,  <34.650814, 38.558968, 48.030922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211258, 38.955711, 47.649738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531063, 38.994644, 47.412655>,  <34.722946, 39.018005, 47.270405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531063, 38.994644, 47.412655>,  <34.211258, 38.955711, 47.649738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531063, 38.994644, 47.412655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582859, -0.112630, -0.804729,
		-0.145085, 0.988858, -0.033317,
		0.799516, 0.097336, -0.592706,
		34.770916, 39.023846, 47.234844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913589, 39.348503, 46.973728>,  <34.211258, 38.955711, 47.649738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913589, 39.348503, 46.973728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259041, 39.180038, 46.862904>,  <34.466312, 39.078960, 46.796410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259041, 39.180038, 46.862904>,  <33.913589, 39.348503, 46.973728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259041, 39.180038, 46.862904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335644, -0.070312, -0.939361,
		0.376145, 0.904255, -0.202085,
		0.863631, -0.421164, -0.277060,
		34.518131, 39.053688, 46.779785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.501301, 39.487057, 50.090111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.837463, 39.428459, 49.881401>,  <40.039162, 39.393299, 49.756176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.837463, 39.428459, 49.881401>,  <39.501301, 39.487057, 50.090111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837463, 39.428459, 49.881401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358751, -0.872017, -0.332994,
		-0.406217, 0.467039, -0.785406,
		0.840408, -0.146497, -0.521778,
		40.089584, 39.384510, 49.724869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354168, 38.939308, 49.857815>,  <39.501301, 39.487057, 50.090111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354168, 38.939308, 49.857815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.717117, 38.996536, 49.699722>,  <39.934887, 39.030872, 49.604866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.717117, 38.996536, 49.699722>,  <39.354168, 38.939308, 49.857815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717117, 38.996536, 49.699722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106767, -0.831001, -0.545929,
		-0.406540, 0.537559, -0.738753,
		0.907373, 0.143068, -0.395229,
		39.989330, 39.039455, 49.581154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333122, 38.957005, 49.130241>,  <39.354168, 38.939308, 49.857815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333122, 38.957005, 49.130241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.699745, 38.831558, 49.229492>,  <39.919720, 38.756290, 49.289043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.699745, 38.831558, 49.229492>,  <39.333122, 38.957005, 49.130241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699745, 38.831558, 49.229492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033825, -0.679044, -0.733318,
		0.398474, 0.663734, -0.632990,
		0.916556, -0.313619, 0.248131,
		39.974712, 38.737473, 49.303932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673344, 38.895222, 48.508316>,  <39.333122, 38.957005, 49.130241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673344, 38.895222, 48.508316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.888062, 38.662884, 48.753090>,  <40.016891, 38.523479, 48.899956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.888062, 38.662884, 48.753090>,  <39.673344, 38.895222, 48.508316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888062, 38.662884, 48.753090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081609, -0.686143, -0.722874,
		0.839756, 0.437975, -0.320916,
		0.536795, -0.580849, 0.611936,
		40.049099, 38.488628, 48.936672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232910, 38.637955, 48.151016>,  <39.673344, 38.895222, 48.508316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232910, 38.637955, 48.151016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.178493, 38.368336, 48.441437>,  <40.145844, 38.206562, 48.615688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.178493, 38.368336, 48.441437>,  <40.232910, 38.637955, 48.151016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178493, 38.368336, 48.441437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098703, -0.738438, -0.667059,
		0.985773, -0.019088, 0.166992,
		-0.136046, -0.674051, 0.726048,
		40.137680, 38.166119, 48.659252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624813, 38.086391, 47.929840>,  <40.232910, 38.637955, 48.151016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624813, 38.086391, 47.929840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.402668, 37.922741, 48.219444>,  <40.269382, 37.824551, 48.393208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.402668, 37.922741, 48.219444>,  <40.624813, 38.086391, 47.929840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402668, 37.922741, 48.219444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081320, -0.839720, -0.536896,
		0.827624, -0.357048, 0.433076,
		-0.555360, -0.409130, 0.724008,
		40.236061, 37.800003, 48.436646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759521, 37.376785, 47.944851>,  <40.624813, 38.086391, 47.929840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759521, 37.376785, 47.944851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.429462, 37.408440, 48.168591>,  <40.231426, 37.427433, 48.302834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.429462, 37.408440, 48.168591>,  <40.759521, 37.376785, 47.944851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429462, 37.408440, 48.168591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354595, -0.843337, -0.403788,
		0.439767, -0.531526, 0.723937,
		-0.825147, 0.079132, 0.559348,
		40.181919, 37.432178, 48.336395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647129, 36.758289, 48.144592>,  <40.759521, 37.376785, 47.944851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647129, 36.758289, 48.144592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.285145, 36.928459, 48.147556>,  <40.067955, 37.030560, 48.149334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.285145, 36.928459, 48.147556>,  <40.647129, 36.758289, 48.144592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285145, 36.928459, 48.147556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388544, -0.819161, -0.421911,
		-0.173421, -0.384693, 0.906607,
		-0.904963, 0.425425, 0.007410,
		40.013657, 37.056087, 48.149780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072369, 36.203632, 48.356339>,  <40.647129, 36.758289, 48.144592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072369, 36.203632, 48.356339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849442, 36.496220, 48.199188>,  <39.715683, 36.671772, 48.104897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849442, 36.496220, 48.199188>,  <40.072369, 36.203632, 48.356339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849442, 36.496220, 48.199188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563339, -0.680724, -0.468257,
		-0.609953, -0.039648, 0.791445,
		-0.557321, 0.731466, -0.392874,
		39.682247, 36.715660, 48.081326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278873, 36.076389, 48.465408>,  <40.072369, 36.203632, 48.356339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278873, 36.076389, 48.465408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.354328, 36.271870, 48.124683>,  <39.399601, 36.389156, 47.920250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.354328, 36.271870, 48.124683>,  <39.278873, 36.076389, 48.465408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354328, 36.271870, 48.124683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546188, -0.668646, -0.504570,
		-0.816146, 0.560431, 0.140792,
		0.188637, 0.488702, -0.851814,
		39.410919, 36.418480, 47.869141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623390, 36.077953, 48.106915>,  <39.278873, 36.076389, 48.465408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623390, 36.077953, 48.106915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.881348, 36.235035, 47.844646>,  <39.036121, 36.329285, 47.687286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.881348, 36.235035, 47.844646>,  <38.623390, 36.077953, 48.106915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881348, 36.235035, 47.844646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472599, -0.469318, -0.745917,
		-0.600639, 0.790903, -0.117069,
		0.644890, 0.392700, -0.655670,
		39.074814, 36.352844, 47.647945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236790, 36.415783, 47.576077>,  <38.623390, 36.077953, 48.106915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236790, 36.415783, 47.576077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.580948, 36.321526, 47.395329>,  <38.787445, 36.264973, 47.286880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.580948, 36.321526, 47.395329>,  <38.236790, 36.415783, 47.576077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580948, 36.321526, 47.395329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509556, -0.412072, -0.755347,
		-0.008210, 0.880153, -0.474620,
		0.860398, -0.235644, -0.451871,
		38.839066, 36.250832, 47.259766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745739, 36.963833, 47.413925>,  <38.236790, 36.415783, 47.576077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745739, 36.963833, 47.413925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.385517, 36.827084, 47.521355>,  <37.169384, 36.745033, 47.585812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.385517, 36.827084, 47.521355>,  <37.745739, 36.963833, 47.413925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385517, 36.827084, 47.521355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172517, 0.286028, 0.942564,
		-0.399057, 0.895159, -0.198603,
		-0.900551, -0.341874, 0.268571,
		37.115353, 36.724522, 47.601925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323032, 37.624187, 47.785271>,  <37.745739, 36.963833, 47.413925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323032, 37.624187, 47.785271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.216919, 37.251232, 47.883476>,  <37.153252, 37.027458, 47.942398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.216919, 37.251232, 47.883476>,  <37.323032, 37.624187, 47.785271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216919, 37.251232, 47.883476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221315, 0.188952, 0.956722,
		-0.938428, 0.308134, 0.156227,
		-0.265279, -0.932390, 0.245512,
		37.137337, 36.971516, 47.957130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808636, 37.701149, 48.327728>,  <37.323032, 37.624187, 47.785271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808636, 37.701149, 48.327728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944759, 37.326126, 48.356514>,  <37.026432, 37.101112, 48.373787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944759, 37.326126, 48.356514>,  <36.808636, 37.701149, 48.327728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944759, 37.326126, 48.356514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165365, 0.135015, 0.976947,
		-0.925658, -0.320564, 0.200986,
		0.340310, -0.937555, 0.071967,
		37.046852, 37.044861, 48.378105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602280, 37.474606, 48.880459>,  <36.808636, 37.701149, 48.327728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602280, 37.474606, 48.880459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.891468, 37.205040, 48.819592>,  <37.064980, 37.043301, 48.783070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.891468, 37.205040, 48.819592>,  <36.602280, 37.474606, 48.880459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891468, 37.205040, 48.819592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368041, 0.189272, 0.910342,
		-0.584690, -0.714154, 0.384866,
		0.722969, -0.673914, -0.152173,
		37.108360, 37.002865, 48.773941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452133, 37.026669, 49.453594>,  <36.602280, 37.474606, 48.880459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452133, 37.026669, 49.453594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833492, 36.998154, 49.336330>,  <37.062309, 36.981045, 49.265972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833492, 36.998154, 49.336330>,  <36.452133, 37.026669, 49.453594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833492, 36.998154, 49.336330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301634, 0.246801, 0.920927,
		0.006698, -0.966440, 0.256804,
		0.953400, -0.071293, -0.293164,
		37.119511, 36.976765, 49.248383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786133, 36.674747, 49.999428>,  <36.452133, 37.026669, 49.453594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786133, 36.674747, 49.999428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081356, 36.855301, 49.798820>,  <37.258492, 36.963634, 49.678455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081356, 36.855301, 49.798820>,  <36.786133, 36.674747, 49.999428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081356, 36.855301, 49.798820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318205, 0.422584, 0.848627,
		0.594991, -0.785922, 0.168259,
		0.738059, 0.451384, -0.501519,
		37.302773, 36.990715, 49.648365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453922, 36.578018, 50.372814>,  <36.786133, 36.674747, 49.999428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453922, 36.578018, 50.372814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516453, 36.896519, 50.139050>,  <37.553970, 37.087620, 49.998791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516453, 36.896519, 50.139050>,  <37.453922, 36.578018, 50.372814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516453, 36.896519, 50.139050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362859, 0.504017, 0.783773,
		0.918638, -0.334584, -0.210138,
		0.156325, 0.796254, -0.584416,
		37.563351, 37.135395, 49.963726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207676, 36.854286, 50.527538>,  <37.453922, 36.578018, 50.372814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207676, 36.854286, 50.527538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.000816, 37.146942, 50.349884>,  <37.876701, 37.322536, 50.243294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.000816, 37.146942, 50.349884>,  <38.207676, 36.854286, 50.527538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000816, 37.146942, 50.349884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331202, 0.649552, 0.684389,
		0.789215, 0.206834, -0.578238,
		-0.517150, 0.731644, -0.444132,
		37.845673, 37.366436, 50.216644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718155, 37.382221, 50.604530>,  <38.207676, 36.854286, 50.527538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718155, 37.382221, 50.604530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377041, 37.572403, 50.518093>,  <38.172371, 37.686512, 50.466232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377041, 37.572403, 50.518093>,  <38.718155, 37.382221, 50.604530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377041, 37.572403, 50.518093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187685, 0.665127, 0.722759,
		0.487367, 0.575804, -0.656448,
		-0.852788, 0.475454, -0.216091,
		38.121204, 37.715038, 50.453266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865765, 38.026806, 50.318344>,  <38.718155, 37.382221, 50.604530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865765, 38.026806, 50.318344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.514431, 38.023342, 50.509529>,  <38.303631, 38.021263, 50.624241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.514431, 38.023342, 50.509529>,  <38.865765, 38.026806, 50.318344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514431, 38.023342, 50.509529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267485, 0.819766, 0.506394,
		-0.396205, 0.572633, -0.717714,
		-0.878335, -0.008658, 0.477966,
		38.250931, 38.020744, 50.652920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594421, 38.696075, 50.262917>,  <38.865765, 38.026806, 50.318344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594421, 38.696075, 50.262917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.395889, 38.543724, 50.574963>,  <38.276772, 38.452312, 50.762192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.395889, 38.543724, 50.574963>,  <38.594421, 38.696075, 50.262917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395889, 38.543724, 50.574963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255785, 0.794566, 0.550672,
		-0.829596, 0.472859, -0.296945,
		-0.496332, -0.380881, 0.780118,
		38.246990, 38.429459, 50.808998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175720, 39.332100, 50.517601>,  <38.594421, 38.696075, 50.262917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175720, 39.332100, 50.517601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.122639, 39.075375, 50.819717>,  <38.090790, 38.921341, 51.000988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.122639, 39.075375, 50.819717>,  <38.175720, 39.332100, 50.517601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122639, 39.075375, 50.819717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102192, 0.749109, 0.654517,
		-0.985873, 0.164045, -0.033825,
		-0.132709, -0.641814, 0.755291,
		38.082825, 38.882832, 51.046303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844704, 39.728012, 50.958164>,  <38.175720, 39.332100, 50.517601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844704, 39.728012, 50.958164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.985802, 39.432713, 51.188141>,  <38.070461, 39.255531, 51.326126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.985802, 39.432713, 51.188141>,  <37.844704, 39.728012, 50.958164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985802, 39.432713, 51.188141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168491, 0.654507, 0.737043,
		-0.920425, -0.163116, 0.355263,
		0.352745, -0.738251, 0.574940,
		38.091625, 39.211239, 51.360622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497658, 39.696198, 51.594009>,  <37.844704, 39.728012, 50.958164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497658, 39.696198, 51.594009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.852280, 39.524696, 51.663521>,  <38.065052, 39.421795, 51.705227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.852280, 39.524696, 51.663521>,  <37.497658, 39.696198, 51.594009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852280, 39.524696, 51.663521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077526, 0.507998, 0.857862,
		-0.456089, -0.747067, 0.483605,
		0.886551, -0.428754, 0.173775,
		38.118244, 39.396069, 51.715652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968174, 39.269650, 51.294666>,  <37.497658, 39.696198, 51.594009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968174, 39.269650, 51.294666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.921520, 39.657902, 51.210510>,  <36.893528, 39.890854, 51.160015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.921520, 39.657902, 51.210510>,  <36.968174, 39.269650, 51.294666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921520, 39.657902, 51.210510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361204, -0.238791, -0.901394,
		-0.925163, -0.029141, 0.378449,
		-0.116638, 0.970634, -0.210394,
		36.886528, 39.949093, 51.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243862, 39.482208, 51.060017>,  <36.968174, 39.269650, 51.294666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243862, 39.482208, 51.060017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.517754, 39.735794, 50.916218>,  <36.682087, 39.887947, 50.829941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.517754, 39.735794, 50.916218>,  <36.243862, 39.482208, 51.060017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517754, 39.735794, 50.916218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375105, -0.116356, -0.919651,
		-0.624859, 0.764556, 0.158133,
		0.684725, 0.633968, -0.359494,
		36.723171, 39.925983, 50.808369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859783, 39.898441, 50.660053>,  <36.243862, 39.482208, 51.060017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859783, 39.898441, 50.660053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236931, 39.945099, 50.535225>,  <36.463219, 39.973095, 50.460327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236931, 39.945099, 50.535225>,  <35.859783, 39.898441, 50.660053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236931, 39.945099, 50.535225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308706, -0.046365, -0.950027,
		-0.125288, 0.992091, -0.007706,
		0.942870, 0.116648, -0.312073,
		36.519791, 39.980095, 50.441605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749203, 40.398232, 50.192001>,  <35.859783, 39.898441, 50.660053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749203, 40.398232, 50.192001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.105476, 40.239632, 50.103031>,  <36.319241, 40.144470, 50.049648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.105476, 40.239632, 50.103031>,  <35.749203, 40.398232, 50.192001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105476, 40.239632, 50.103031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250156, -0.018919, -0.968021,
		0.379610, 0.917841, -0.116037,
		0.890684, -0.396498, -0.222421,
		36.372681, 40.120682, 50.036304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117741, 40.802963, 49.653225>,  <35.749203, 40.398232, 50.192001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117741, 40.802963, 49.653225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.303288, 40.449039, 49.635578>,  <36.414616, 40.236687, 49.624992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.303288, 40.449039, 49.635578>,  <36.117741, 40.802963, 49.653225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303288, 40.449039, 49.635578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203792, -0.058113, -0.977288,
		0.862146, 0.462322, -0.207273,
		0.463867, -0.884806, -0.044115,
		36.442448, 40.183598, 49.622345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407764, 40.892159, 49.067822>,  <36.117741, 40.802963, 49.653225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407764, 40.892159, 49.067822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412861, 40.499409, 49.143467>,  <36.415916, 40.263760, 49.188854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412861, 40.499409, 49.143467>,  <36.407764, 40.892159, 49.067822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412861, 40.499409, 49.143467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227333, -0.187023, -0.955690,
		0.973734, -0.030818, -0.225594,
		0.012739, -0.981872, 0.189116,
		36.416683, 40.204845, 49.200203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832455, 40.409592, 48.601585>,  <36.407764, 40.892159, 49.067822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832455, 40.409592, 48.601585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.547585, 40.163509, 48.736839>,  <36.376663, 40.015862, 48.817993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.547585, 40.163509, 48.736839>,  <36.832455, 40.409592, 48.601585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547585, 40.163509, 48.736839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225225, -0.255971, -0.940081,
		0.664895, -0.745655, 0.043736,
		-0.712172, -0.615205, 0.338134,
		36.333931, 39.978947, 48.838280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263145, 40.396744, 48.158329>,  <36.832455, 40.409592, 48.601585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263145, 40.396744, 48.158329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.204708, 40.774189, 48.039497>,  <37.169643, 41.000656, 47.968197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.204708, 40.774189, 48.039497>,  <37.263145, 40.396744, 48.158329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204708, 40.774189, 48.039497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221674, 0.323894, 0.919757,
		0.964114, 0.068517, -0.256493,
		-0.146096, 0.943609, -0.297083,
		37.160881, 41.057270, 47.950371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924950, 40.706165, 48.312664>,  <37.263145, 40.396744, 48.158329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924950, 40.706165, 48.312664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633411, 40.979443, 48.294613>,  <37.458488, 41.143410, 48.283783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633411, 40.979443, 48.294613>,  <37.924950, 40.706165, 48.312664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633411, 40.979443, 48.294613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322141, 0.400337, 0.857879,
		0.604164, 0.610720, -0.511867,
		-0.728842, 0.683192, -0.045131,
		37.414757, 41.184399, 48.281075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281826, 41.272041, 48.448208>,  <37.924950, 40.706165, 48.312664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281826, 41.272041, 48.448208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.901291, 41.366695, 48.527153>,  <37.672970, 41.423489, 48.574520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.901291, 41.366695, 48.527153>,  <38.281826, 41.272041, 48.448208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901291, 41.366695, 48.527153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300395, 0.569550, 0.765099,
		0.068635, 0.787159, -0.612919,
		-0.951342, 0.236630, 0.197367,
		37.615887, 41.437683, 48.586365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219955, 41.954105, 48.373013>,  <38.281826, 41.272041, 48.448208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219955, 41.954105, 48.373013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.881313, 41.896706, 48.578014>,  <37.678127, 41.862267, 48.701015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.881313, 41.896706, 48.578014>,  <38.219955, 41.954105, 48.373013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881313, 41.896706, 48.578014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247792, 0.745954, 0.618185,
		-0.471017, 0.650355, -0.595972,
		-0.846606, -0.143499, 0.512509,
		37.627331, 41.853657, 48.731766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002785, 42.591267, 48.550312>,  <38.219955, 41.954105, 48.373013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002785, 42.591267, 48.550312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819775, 42.359905, 48.820457>,  <37.709969, 42.221088, 48.982544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819775, 42.359905, 48.820457>,  <38.002785, 42.591267, 48.550312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819775, 42.359905, 48.820457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266101, 0.635653, 0.724662,
		-0.848448, 0.511264, -0.136911,
		-0.457522, -0.578406, 0.675367,
		37.682518, 42.186382, 49.023067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829964, 43.172478, 48.998760>,  <38.002785, 42.591267, 48.550312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829964, 43.172478, 48.998760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.747643, 42.845985, 49.214691>,  <37.698250, 42.650089, 49.344250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.747643, 42.845985, 49.214691>,  <37.829964, 43.172478, 48.998760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747643, 42.845985, 49.214691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277277, 0.480389, 0.832072,
		-0.938490, 0.320921, 0.127459,
		-0.205799, -0.816233, 0.539824,
		37.685902, 42.601116, 49.376640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358418, 43.348038, 49.471905>,  <37.829964, 43.172478, 48.998760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358418, 43.348038, 49.471905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550690, 43.028400, 49.616348>,  <37.666054, 42.836620, 49.703014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550690, 43.028400, 49.616348>,  <37.358418, 43.348038, 49.471905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550690, 43.028400, 49.616348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337431, 0.548650, 0.764933,
		-0.809374, -0.245839, 0.533363,
		0.480680, -0.799091, 0.361110,
		37.694893, 42.788673, 49.724682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247387, 43.205742, 50.188507>,  <37.358418, 43.348038, 49.471905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247387, 43.205742, 50.188507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.608429, 43.045544, 50.125378>,  <37.825054, 42.949425, 50.087502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.608429, 43.045544, 50.125378>,  <37.247387, 43.205742, 50.188507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608429, 43.045544, 50.125378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389084, 0.602150, 0.697158,
		-0.184177, -0.690664, 0.699330,
		0.902603, -0.400498, -0.157824,
		37.879211, 42.925396, 50.078030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680206, 43.356426, 50.784893>,  <37.247387, 43.205742, 50.188507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680206, 43.356426, 50.784893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.965652, 43.244015, 50.528214>,  <38.136921, 43.176567, 50.374207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.965652, 43.244015, 50.528214>,  <37.680206, 43.356426, 50.784893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965652, 43.244015, 50.528214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685959, 0.466231, 0.558649,
		0.142182, -0.838838, 0.525484,
		0.713614, -0.281031, -0.641698,
		38.179737, 43.159706, 50.335705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.553867, 36.377460, 36.745186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520901, 36.095375, 37.026863>,  <33.501122, 35.926125, 37.195869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520901, 36.095375, 37.026863>,  <33.553867, 36.377460, 36.745186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520901, 36.095375, 37.026863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453530, 0.655728, 0.603599,
		-0.887422, -0.269624, -0.373878,
		-0.082418, -0.705212, 0.704190,
		33.496174, 35.883812, 37.238121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075191, 36.795628, 37.240341>,  <33.553867, 36.377460, 36.745186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075191, 36.795628, 37.240341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324638, 36.983723, 36.990547>,  <34.474304, 37.096581, 36.840672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324638, 36.983723, 36.990547>,  <34.075191, 36.795628, 37.240341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324638, 36.983723, 36.990547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336293, 0.559782, 0.757332,
		0.705700, -0.682294, 0.190953,
		0.623615, 0.470233, -0.624488,
		34.511723, 37.124794, 36.803200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699532, 36.920078, 37.572498>,  <34.075191, 36.795628, 37.240341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699532, 36.920078, 37.572498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711845, 37.201168, 37.288177>,  <34.719234, 37.369820, 37.117584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711845, 37.201168, 37.288177>,  <34.699532, 36.920078, 37.572498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711845, 37.201168, 37.288177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375791, 0.650824, 0.659704,
		0.926193, -0.287422, -0.244039,
		0.030788, 0.702721, -0.710799,
		34.721081, 37.411983, 37.074936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434849, 37.279091, 37.491722>,  <34.699532, 36.920078, 37.572498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434849, 37.279091, 37.491722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122440, 37.503067, 37.381115>,  <34.934994, 37.637455, 37.314751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122440, 37.503067, 37.381115>,  <35.434849, 37.279091, 37.491722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122440, 37.503067, 37.381115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234352, 0.673217, 0.701325,
		0.578860, 0.482950, -0.657024,
		-0.781025, 0.559944, -0.276518,
		34.888134, 37.671051, 37.298161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703281, 37.905842, 37.675026>,  <35.434849, 37.279091, 37.491722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703281, 37.905842, 37.675026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332527, 38.030071, 37.590717>,  <35.110073, 38.104607, 37.540131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332527, 38.030071, 37.590717>,  <35.703281, 37.905842, 37.675026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332527, 38.030071, 37.590717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151057, 0.822728, 0.547997,
		0.343600, 0.476093, -0.809490,
		-0.926888, 0.310571, -0.210772,
		35.054462, 38.123241, 37.527485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747147, 38.666828, 37.615612>,  <35.703281, 37.905842, 37.675026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747147, 38.666828, 37.615612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363991, 38.578915, 37.689529>,  <35.134098, 38.526165, 37.733879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363991, 38.578915, 37.689529>,  <35.747147, 38.666828, 37.615612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363991, 38.578915, 37.689529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018328, 0.689026, 0.724505,
		-0.286562, 0.690606, -0.664037,
		-0.957887, -0.219786, 0.184791,
		35.076626, 38.512978, 37.744968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483280, 39.316761, 37.676189>,  <35.747147, 38.666828, 37.615612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483280, 39.316761, 37.676189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229797, 39.071278, 37.864563>,  <35.077705, 38.923988, 37.977585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229797, 39.071278, 37.864563>,  <35.483280, 39.316761, 37.676189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229797, 39.071278, 37.864563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187435, 0.712450, 0.676228,
		-0.750520, 0.340263, -0.566516,
		-0.633710, -0.613707, 0.470931,
		35.039684, 38.887165, 38.005840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000679, 39.807301, 37.720551>,  <35.483280, 39.316761, 37.676189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000679, 39.807301, 37.720551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923496, 39.524258, 37.992451>,  <34.877186, 39.354431, 38.155590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923496, 39.524258, 37.992451>,  <35.000679, 39.807301, 37.720551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923496, 39.524258, 37.992451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271841, 0.704201, 0.655899,
		-0.942799, -0.058225, -0.328236,
		-0.192955, -0.707609, 0.679748,
		34.865608, 39.311974, 38.196377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399406, 40.046452, 38.009727>,  <35.000679, 39.807301, 37.720551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399406, 40.046452, 38.009727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560184, 39.796215, 38.277180>,  <34.656651, 39.646072, 38.437653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560184, 39.796215, 38.277180>,  <34.399406, 40.046452, 38.009727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560184, 39.796215, 38.277180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362265, 0.561990, 0.743593,
		-0.840953, -0.541108, -0.000740,
		0.401948, -0.625595, 0.668632,
		34.680771, 39.608536, 38.477768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826351, 39.926552, 38.536179>,  <34.399406, 40.046452, 38.009727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826351, 39.926552, 38.536179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181877, 39.825359, 38.689022>,  <34.395195, 39.764645, 38.780727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181877, 39.825359, 38.689022>,  <33.826351, 39.926552, 38.536179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181877, 39.825359, 38.689022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260882, 0.406187, 0.875758,
		-0.376755, -0.878074, 0.295028,
		0.888817, -0.252978, 0.382106,
		34.448521, 39.749466, 38.803654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622089, 39.887611, 39.326740>,  <33.826351, 39.926552, 38.536179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622089, 39.887611, 39.326740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021542, 39.892559, 39.306381>,  <34.261211, 39.895527, 39.294167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021542, 39.892559, 39.306381>,  <33.622089, 39.887611, 39.326740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021542, 39.892559, 39.306381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039448, 0.461683, 0.886168,
		0.034455, -0.886959, 0.460561,
		0.998627, 0.012365, -0.050896,
		34.321129, 39.896267, 39.291111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862843, 39.472179, 39.866924>,  <33.622089, 39.887611, 39.326740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862843, 39.472179, 39.866924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159985, 39.720211, 39.765991>,  <34.338268, 39.869030, 39.705433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159985, 39.720211, 39.765991>,  <33.862843, 39.472179, 39.866924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159985, 39.720211, 39.765991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066426, 0.443329, 0.893894,
		0.666151, -0.647271, 0.370518,
		0.742853, 0.620080, -0.252328,
		34.382839, 39.906235, 39.690292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949802, 38.803829, 40.296509>,  <33.862843, 39.472179, 39.866924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949802, 38.803829, 40.296509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657818, 38.779606, 40.568829>,  <33.482628, 38.765072, 40.732220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657818, 38.779606, 40.568829>,  <33.949802, 38.803829, 40.296509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657818, 38.779606, 40.568829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645000, -0.268502, -0.715459,
		0.226125, -0.961374, 0.156935,
		-0.729961, -0.060560, 0.680801,
		33.438831, 38.761436, 40.773067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681881, 38.089184, 40.243053>,  <33.949802, 38.803829, 40.296509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681881, 38.089184, 40.243053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416580, 38.338737, 40.408394>,  <33.257401, 38.488468, 40.507599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416580, 38.338737, 40.408394>,  <33.681881, 38.089184, 40.243053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416580, 38.338737, 40.408394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702466, -0.328474, -0.631385,
		-0.258131, -0.709140, 0.656116,
		-0.663257, 0.623879, 0.413357,
		33.217602, 38.525902, 40.532402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118252, 37.702850, 40.117817>,  <33.681881, 38.089184, 40.243053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118252, 37.702850, 40.117817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995258, 38.077946, 40.182430>,  <32.921463, 38.303005, 40.221199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995258, 38.077946, 40.182430>,  <33.118252, 37.702850, 40.117817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995258, 38.077946, 40.182430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774230, -0.147864, -0.615390,
		-0.553192, -0.314288, 0.771494,
		-0.307486, 0.937742, 0.161533,
		32.903011, 38.359268, 40.230892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363697, 37.663818, 40.202511>,  <33.118252, 37.702850, 40.117817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363697, 37.663818, 40.202511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408230, 38.053112, 40.122097>,  <32.434948, 38.286690, 40.073849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408230, 38.053112, 40.122097>,  <32.363697, 37.663818, 40.202511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408230, 38.053112, 40.122097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731017, -0.056841, -0.679988,
		-0.673216, 0.222665, 0.705124,
		0.111329, 0.973237, -0.201038,
		32.441628, 38.345081, 40.061787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662325, 38.026222, 40.208557>,  <32.363697, 37.663818, 40.202511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662325, 38.026222, 40.208557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877131, 38.284840, 39.991817>,  <32.006012, 38.440010, 39.861774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877131, 38.284840, 39.991817>,  <31.662325, 38.026222, 40.208557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877131, 38.284840, 39.991817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629729, -0.120147, -0.767467,
		-0.561301, 0.753358, 0.342625,
		0.537013, 0.646541, -0.541850,
		32.038235, 38.478802, 39.829262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169626, 38.403809, 39.894371>,  <31.662325, 38.026222, 40.208557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169626, 38.403809, 39.894371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492865, 38.501453, 39.679939>,  <31.686808, 38.560040, 39.551281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492865, 38.501453, 39.679939>,  <31.169626, 38.403809, 39.894371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492865, 38.501453, 39.679939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535242, -0.075699, -0.841300,
		-0.245954, 0.966787, 0.069488,
		0.808098, 0.244114, -0.536084,
		31.735294, 38.574688, 39.519115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951151, 38.992481, 39.501850>,  <31.169626, 38.403809, 39.894371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951151, 38.992481, 39.501850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261709, 38.829155, 39.309814>,  <31.448044, 38.731159, 39.194592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261709, 38.829155, 39.309814>,  <30.951151, 38.992481, 39.501850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261709, 38.829155, 39.309814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556793, -0.087482, -0.826032,
		0.295285, 0.908638, -0.295269,
		0.776395, -0.408318, -0.480091,
		31.494627, 38.706661, 39.165787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760109, 39.107941, 38.815067>,  <30.951151, 38.992481, 39.501850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760109, 39.107941, 38.815067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048515, 38.832344, 38.785587>,  <31.221560, 38.666988, 38.767899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048515, 38.832344, 38.785587>,  <30.760109, 39.107941, 38.815067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048515, 38.832344, 38.785587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419138, -0.348964, -0.838181,
		0.551777, 0.635233, -0.540390,
		0.721017, -0.688987, -0.073700,
		31.264820, 38.625648, 38.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095453, 39.131748, 38.065636>,  <30.760109, 39.107941, 38.815067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095453, 39.131748, 38.065636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119127, 38.777039, 38.248997>,  <31.133331, 38.564213, 38.359013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119127, 38.777039, 38.248997>,  <31.095453, 39.131748, 38.065636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119127, 38.777039, 38.248997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506252, -0.422435, -0.751836,
		0.860353, -0.187569, -0.473932,
		0.059184, -0.886773, 0.458400,
		31.136883, 38.511005, 38.386517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016928, 38.665844, 37.554806>,  <31.095453, 39.131748, 38.065636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016928, 38.665844, 37.554806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954584, 38.418728, 37.863102>,  <30.917179, 38.270458, 38.048080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954584, 38.418728, 37.863102>,  <31.016928, 38.665844, 37.554806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954584, 38.418728, 37.863102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592876, -0.565590, -0.573241,
		0.790068, -0.546297, -0.278123,
		-0.155857, -0.617792, 0.770741,
		30.907827, 38.233391, 38.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996387, 37.939899, 37.312973>,  <31.016928, 38.665844, 37.554806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996387, 37.939899, 37.312973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810280, 37.923180, 37.666645>,  <30.698616, 37.913147, 37.878849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810280, 37.923180, 37.666645>,  <30.996387, 37.939899, 37.312973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810280, 37.923180, 37.666645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711408, -0.576716, -0.401619,
		0.526711, -0.815874, 0.238588,
		-0.465268, -0.041804, 0.884182,
		30.670700, 37.910637, 37.931900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016840, 37.219517, 37.412979>,  <30.996387, 37.939899, 37.312973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016840, 37.219517, 37.412979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726494, 37.379490, 37.636826>,  <30.552286, 37.475475, 37.771133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726494, 37.379490, 37.636826>,  <31.016840, 37.219517, 37.412979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726494, 37.379490, 37.636826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654070, -0.653106, -0.381634,
		0.212862, -0.643045, 0.735651,
		-0.725866, 0.399932, 0.559618,
		30.508734, 37.499470, 37.804710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843409, 36.650425, 37.751091>,  <31.016840, 37.219517, 37.412979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843409, 36.650425, 37.751091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548145, 36.920235, 37.755814>,  <30.370987, 37.082119, 37.758648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548145, 36.920235, 37.755814>,  <30.843409, 36.650425, 37.751091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548145, 36.920235, 37.755814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589811, -0.636761, -0.496647,
		-0.327482, -0.373567, 0.867873,
		-0.738159, 0.674524, 0.011806,
		30.326698, 37.122593, 37.759354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055794, 36.043697, 37.938545>,  <30.843409, 36.650425, 37.751091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055794, 36.043697, 37.938545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070538, 35.644535, 37.917301>,  <31.079384, 35.405037, 37.904556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070538, 35.644535, 37.917301>,  <31.055794, 36.043697, 37.938545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070538, 35.644535, 37.917301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735624, 0.063065, -0.674448,
		0.676386, -0.014208, 0.736410,
		0.036859, -0.997908, -0.053108,
		31.081594, 35.345161, 37.901367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751213, 35.990047, 38.051880>,  <31.055794, 36.043697, 37.938545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751213, 35.990047, 38.051880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603594, 35.688366, 37.834633>,  <31.515022, 35.507355, 37.704285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603594, 35.688366, 37.834633>,  <31.751213, 35.990047, 38.051880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603594, 35.688366, 37.834633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797483, 0.043136, -0.601797,
		0.477308, -0.655218, 0.585548,
		-0.369050, -0.754208, -0.543114,
		31.492878, 35.462105, 37.671700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322517, 35.417141, 37.986404>,  <31.751213, 35.990047, 38.051880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322517, 35.417141, 37.986404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038513, 35.381348, 37.707012>,  <31.868111, 35.359871, 37.539375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038513, 35.381348, 37.707012>,  <32.322517, 35.417141, 37.986404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038513, 35.381348, 37.707012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673379, 0.203925, -0.710616,
		0.206024, -0.974889, -0.084535,
		-0.710011, -0.089480, -0.698483,
		31.825510, 35.354504, 37.497467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934217, 35.009727, 38.406204>,  <32.322517, 35.417141, 37.986404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934217, 35.009727, 38.406204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321404, 35.110142, 38.404068>,  <32.553715, 35.170391, 38.402786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321404, 35.110142, 38.404068>,  <31.934217, 35.009727, 38.406204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321404, 35.110142, 38.404068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000921, 0.024804, 0.999692,
		0.251091, -0.967660, 0.024240,
		0.967963, 0.251036, -0.005337,
		32.611794, 35.185452, 38.402466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277916, 34.495899, 38.698856>,  <31.934217, 35.009727, 38.406204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277916, 34.495899, 38.698856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455688, 34.848915, 38.760311>,  <32.562351, 35.060726, 38.797184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455688, 34.848915, 38.760311>,  <32.277916, 34.495899, 38.698856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455688, 34.848915, 38.760311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073408, -0.135051, 0.988116,
		0.892802, -0.450425, 0.004765,
		0.444428, 0.882541, 0.153638,
		32.589016, 35.113678, 38.806404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619209, 34.272202, 39.246456>,  <32.277916, 34.495899, 38.698856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619209, 34.272202, 39.246456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733814, 34.655434, 39.246735>,  <32.802578, 34.885372, 39.246902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733814, 34.655434, 39.246735>,  <32.619209, 34.272202, 39.246456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733814, 34.655434, 39.246735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218797, -0.066134, 0.973527,
		0.932759, -0.278774, -0.228573,
		0.286511, 0.958077, 0.000692,
		32.819767, 34.942856, 39.246941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315880, 34.263966, 39.628288>,  <32.619209, 34.272202, 39.246456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315880, 34.263966, 39.628288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150974, 34.627319, 39.656246>,  <33.052032, 34.845329, 39.673019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150974, 34.627319, 39.656246>,  <33.315880, 34.263966, 39.628288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150974, 34.627319, 39.656246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240341, 0.034437, 0.970077,
		0.878793, 0.416722, -0.232519,
		-0.412260, 0.908381, 0.069893,
		33.027298, 34.899834, 39.677216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776466, 34.653233, 40.002289>,  <33.315880, 34.263966, 39.628288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776466, 34.653233, 40.002289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429382, 34.845791, 40.051830>,  <33.221130, 34.961327, 40.081554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429382, 34.845791, 40.051830>,  <33.776466, 34.653233, 40.002289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429382, 34.845791, 40.051830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252160, 0.211564, 0.944275,
		0.428365, 0.850588, -0.304964,
		-0.867709, 0.481394, 0.123858,
		33.169071, 34.990208, 40.088989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949036, 35.341782, 40.390476>,  <33.776466, 34.653233, 40.002289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949036, 35.341782, 40.390476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557320, 35.278595, 40.441120>,  <33.322289, 35.240685, 40.471508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557320, 35.278595, 40.441120>,  <33.949036, 35.341782, 40.390476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557320, 35.278595, 40.441120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083101, 0.256619, 0.962934,
		-0.184603, 0.953516, -0.238178,
		-0.979294, -0.157967, 0.126611,
		33.263531, 35.231205, 40.479103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694897, 35.932968, 40.729813>,  <33.949036, 35.341782, 40.390476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694897, 35.932968, 40.729813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394463, 35.682079, 40.812229>,  <33.214203, 35.531544, 40.861679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394463, 35.682079, 40.812229>,  <33.694897, 35.932968, 40.729813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394463, 35.682079, 40.812229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008527, 0.321273, 0.946948,
		-0.660145, 0.709487, -0.246653,
		-0.751090, -0.627226, 0.206037,
		33.169136, 35.493912, 40.874039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288570, 36.269169, 41.183762>,  <33.694897, 35.932968, 40.729813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288570, 36.269169, 41.183762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202354, 35.880566, 41.223179>,  <33.150623, 35.647404, 41.246830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202354, 35.880566, 41.223179>,  <33.288570, 36.269169, 41.183762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202354, 35.880566, 41.223179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030639, 0.094142, 0.995087,
		-0.976014, 0.217502, 0.009475,
		-0.215542, -0.971509, 0.098548,
		33.137691, 35.589111, 41.252743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947418, 36.192425, 41.786057>,  <33.288570, 36.269169, 41.183762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947418, 36.192425, 41.786057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029163, 35.804062, 41.736137>,  <33.078209, 35.571045, 41.706184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029163, 35.804062, 41.736137>,  <32.947418, 36.192425, 41.786057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029163, 35.804062, 41.736137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208422, -0.081412, 0.974645,
		-0.956450, -0.225190, 0.185721,
		0.204360, -0.970908, -0.124801,
		33.090473, 35.512791, 41.698696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591820, 35.728962, 42.279644>,  <32.947418, 36.192425, 41.786057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591820, 35.728962, 42.279644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903454, 35.498646, 42.180458>,  <33.090435, 35.360455, 42.120949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903454, 35.498646, 42.180458>,  <32.591820, 35.728962, 42.279644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903454, 35.498646, 42.180458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247841, -0.080421, 0.965457,
		-0.575847, -0.813629, 0.080051,
		0.779086, -0.575795, -0.247960,
		33.137180, 35.325909, 42.106071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650185, 35.283009, 42.860096>,  <32.591820, 35.728962, 42.279644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650185, 35.283009, 42.860096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005798, 35.315300, 42.679825>,  <33.219166, 35.334675, 42.571663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005798, 35.315300, 42.679825>,  <32.650185, 35.283009, 42.860096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005798, 35.315300, 42.679825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450012, 0.027274, 0.892606,
		0.084353, -0.996363, -0.012082,
		0.889030, 0.080731, -0.450676,
		33.272507, 35.339520, 42.544621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128040, 34.852070, 43.302479>,  <32.650185, 35.283009, 42.860096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128040, 34.852070, 43.302479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383236, 35.095406, 43.113632>,  <33.536354, 35.241409, 43.000324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383236, 35.095406, 43.113632>,  <33.128040, 34.852070, 43.302479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383236, 35.095406, 43.113632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559452, 0.055123, 0.827028,
		0.529140, -0.791759, -0.305170,
		0.637985, 0.608341, -0.472119,
		33.574631, 35.277908, 42.971996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832500, 34.712727, 43.553562>,  <33.128040, 34.852070, 43.302479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832500, 34.712727, 43.553562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875179, 35.080181, 43.401394>,  <33.900787, 35.300655, 43.310093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875179, 35.080181, 43.401394>,  <33.832500, 34.712727, 43.553562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875179, 35.080181, 43.401394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689749, 0.207188, 0.693772,
		0.716143, -0.336420, -0.611523,
		0.106699, 0.918637, -0.380422,
		33.907188, 35.355774, 43.287266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662289, 34.848717, 43.608612>,  <33.832500, 34.712727, 43.553562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662289, 34.848717, 43.608612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498886, 35.203304, 43.521622>,  <34.400845, 35.416058, 43.469429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498886, 35.203304, 43.521622>,  <34.662289, 34.848717, 43.608612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498886, 35.203304, 43.521622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619348, 0.444224, 0.647359,
		0.670472, 0.129756, -0.730500,
		-0.408504, 0.886470, -0.217476,
		34.376335, 35.469246, 43.456379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201366, 35.276577, 43.369053>,  <34.662289, 34.848717, 43.608612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201366, 35.276577, 43.369053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906372, 35.514206, 43.497547>,  <34.729378, 35.656784, 43.574646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906372, 35.514206, 43.497547>,  <35.201366, 35.276577, 43.369053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906372, 35.514206, 43.497547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643799, 0.474669, 0.600177,
		0.204067, 0.649434, -0.732525,
		-0.737482, 0.594075, 0.321240,
		34.685127, 35.692429, 43.593918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457035, 35.999950, 43.318600>,  <35.201366, 35.276577, 43.369053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457035, 35.999950, 43.318600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175373, 35.957371, 43.599407>,  <35.006374, 35.931824, 43.767891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175373, 35.957371, 43.599407>,  <35.457035, 35.999950, 43.318600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175373, 35.957371, 43.599407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653288, 0.290215, 0.699279,
		-0.278172, 0.951023, -0.134817,
		-0.704156, -0.106445, 0.702021,
		34.964127, 35.925438, 43.810013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595634, 36.487534, 43.803581>,  <35.457035, 35.999950, 43.318600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595634, 36.487534, 43.803581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350025, 36.261410, 44.023907>,  <35.202660, 36.125736, 44.156101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350025, 36.261410, 44.023907>,  <35.595634, 36.487534, 43.803581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350025, 36.261410, 44.023907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611784, 0.100044, 0.784673,
		-0.498690, 0.818789, 0.284419,
		-0.614027, -0.565311, 0.550813,
		35.165817, 36.091816, 44.189152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617992, 36.857079, 44.417557>,  <35.595634, 36.487534, 43.803581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617992, 36.857079, 44.417557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458710, 36.502316, 44.511215>,  <35.363140, 36.289455, 44.567410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458710, 36.502316, 44.511215>,  <35.617992, 36.857079, 44.417557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458710, 36.502316, 44.511215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330545, 0.099370, 0.938544,
		-0.855671, 0.451128, 0.253594,
		-0.398204, -0.886910, 0.234146,
		35.339249, 36.236244, 44.581459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266884, 36.923794, 45.033573>,  <35.617992, 36.857079, 44.417557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266884, 36.923794, 45.033573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308777, 36.526070, 45.025871>,  <35.333912, 36.287434, 45.021248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308777, 36.526070, 45.025871>,  <35.266884, 36.923794, 45.033573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308777, 36.526070, 45.025871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213455, 0.003563, 0.976946,
		-0.971323, -0.106431, 0.212614,
		0.104735, -0.994314, -0.019258,
		35.340199, 36.227776, 45.020096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921959, 36.636120, 45.718311>,  <35.266884, 36.923794, 45.033573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921959, 36.636120, 45.718311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192062, 36.368851, 45.593372>,  <35.354126, 36.208488, 45.518410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192062, 36.368851, 45.593372>,  <34.921959, 36.636120, 45.718311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192062, 36.368851, 45.593372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298610, -0.139560, 0.944116,
		-0.674427, -0.730796, 0.105284,
		0.675263, -0.668176, -0.312346,
		35.394642, 36.168396, 45.499668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881767, 36.221138, 46.240055>,  <34.921959, 36.636120, 45.718311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881767, 36.221138, 46.240055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224670, 36.115948, 46.062988>,  <35.430412, 36.052834, 45.956749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224670, 36.115948, 46.062988>,  <34.881767, 36.221138, 46.240055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224670, 36.115948, 46.062988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465079, 0.026583, 0.884870,
		-0.220931, -0.964437, 0.145092,
		0.857258, -0.262974, -0.442666,
		35.481850, 36.037056, 45.930187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159382, 35.675858, 46.694687>,  <34.881767, 36.221138, 46.240055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159382, 35.675858, 46.694687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446430, 35.825817, 46.459919>,  <35.618660, 35.915794, 46.319057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446430, 35.825817, 46.459919>,  <35.159382, 35.675858, 46.694687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446430, 35.825817, 46.459919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576289, 0.153537, 0.802694,
		0.391043, -0.914263, -0.105869,
		0.717618, 0.374899, -0.586920,
		35.661716, 35.938286, 46.283844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736412, 35.416920, 47.004215>,  <35.159382, 35.675858, 46.694687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736412, 35.416920, 47.004215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888039, 35.727085, 46.802204>,  <35.979015, 35.913185, 46.681000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888039, 35.727085, 46.802204>,  <35.736412, 35.416920, 47.004215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888039, 35.727085, 46.802204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671569, 0.144952, 0.726625,
		0.636636, -0.614596, -0.465796,
		0.379063, 0.775410, -0.505026,
		36.001759, 35.959709, 46.650696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498707, 35.350513, 47.006012>,  <35.736412, 35.416920, 47.004215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498707, 35.350513, 47.006012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379581, 35.731190, 46.976086>,  <36.308105, 35.959595, 46.958130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379581, 35.731190, 46.976086>,  <36.498707, 35.350513, 47.006012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379581, 35.731190, 46.976086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774095, 0.286611, 0.564474,
		0.558646, 0.110193, -0.822054,
		-0.297811, 0.951689, -0.074815,
		36.290237, 36.016697, 46.953640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081276, 35.681412, 46.852169>,  <36.498707, 35.350513, 47.006012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081276, 35.681412, 46.852169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847183, 35.984261, 46.968285>,  <36.706726, 36.165970, 47.037952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847183, 35.984261, 46.968285>,  <37.081276, 35.681412, 46.852169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847183, 35.984261, 46.968285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755425, 0.378983, 0.534514,
		0.294678, 0.532106, -0.793743,
		-0.585233, 0.757123, 0.290289,
		36.671612, 36.211399, 47.055370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539902, 36.319820, 46.880135>,  <37.081276, 35.681412, 46.852169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539902, 36.319820, 46.880135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217163, 36.425793, 47.091347>,  <37.023521, 36.489376, 47.218075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217163, 36.425793, 47.091347>,  <37.539902, 36.319820, 46.880135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217163, 36.425793, 47.091347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590763, 0.360305, 0.721927,
		0.001012, 0.894422, -0.447223,
		-0.806844, 0.264933, 0.528027,
		36.975109, 36.505272, 47.249756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212097, 36.760765, 46.828411>,  <37.539902, 36.319820, 46.880135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212097, 36.760765, 46.828411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515228, 36.501705, 46.860027>,  <38.697105, 36.346268, 46.878998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515228, 36.501705, 46.860027>,  <38.212097, 36.760765, 46.828411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515228, 36.501705, 46.860027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127884, -0.266238, -0.955386,
		0.639799, 0.713910, -0.284587,
		0.757828, -0.647650, 0.079041,
		38.742577, 36.307411, 46.883739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721027, 36.748463, 46.282497>,  <38.212097, 36.760765, 46.828411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721027, 36.748463, 46.282497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752956, 36.367298, 46.399525>,  <38.772114, 36.138599, 46.469742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752956, 36.367298, 46.399525>,  <38.721027, 36.748463, 46.282497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752956, 36.367298, 46.399525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123089, -0.300677, -0.945750,
		0.989180, 0.039479, -0.141293,
		0.079820, -0.952909, 0.292565,
		38.776901, 36.081425, 46.487293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101448, 36.402035, 45.746441>,  <38.721027, 36.748463, 46.282497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101448, 36.402035, 45.746441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906727, 36.118835, 45.951092>,  <38.789894, 35.948917, 46.073883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906727, 36.118835, 45.951092>,  <39.101448, 36.402035, 45.746441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906727, 36.118835, 45.951092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186032, -0.488250, -0.852645,
		0.853473, -0.510249, 0.105972,
		-0.486802, -0.707995, 0.511631,
		38.760685, 35.906437, 46.104580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329288, 35.806305, 45.427948>,  <39.101448, 36.402035, 45.746441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329288, 35.806305, 45.427948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996071, 35.668694, 45.601234>,  <38.796139, 35.586128, 45.705208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996071, 35.668694, 45.601234>,  <39.329288, 35.806305, 45.427948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996071, 35.668694, 45.601234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190666, -0.556578, -0.808621,
		0.519306, -0.756219, 0.398062,
		-0.833047, -0.344025, 0.433219,
		38.746155, 35.565487, 45.731201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347958, 35.065380, 45.363613>,  <39.329288, 35.806305, 45.427948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347958, 35.065380, 45.363613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971092, 35.196167, 45.393063>,  <38.744972, 35.274639, 45.410732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971092, 35.196167, 45.393063>,  <39.347958, 35.065380, 45.363613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971092, 35.196167, 45.393063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206181, -0.392252, -0.896453,
		-0.264228, -0.859786, 0.436980,
		-0.942164, 0.326965, 0.073628,
		38.688442, 35.294258, 45.415150>
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
