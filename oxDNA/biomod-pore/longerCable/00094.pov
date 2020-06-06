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
	<23.976580, 35.360344, 34.878254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119993, 35.012997, 35.015305>,  <24.206041, 34.804588, 35.097534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119993, 35.012997, 35.015305>,  <23.976580, 35.360344, 34.878254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.119993, 35.012997, 35.015305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057442, 0.345812, 0.936544,
		-0.931749, -0.355462, 0.074104,
		0.358532, -0.868367, 0.342628,
		24.227552, 34.752487, 35.118092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.205175, 35.699657, 35.582977>,  <23.976580, 35.360344, 34.878254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.205175, 35.699657, 35.582977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534340, 35.745781, 35.805515>,  <24.731838, 35.773457, 35.939037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534340, 35.745781, 35.805515>,  <24.205175, 35.699657, 35.582977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534340, 35.745781, 35.805515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481421, -0.661544, -0.574972,
		0.301749, 0.740988, -0.599903,
		0.822910, 0.115309, 0.556348,
		24.781214, 35.780373, 35.972420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813799, 35.741226, 35.282246>,  <24.205175, 35.699657, 35.582977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813799, 35.741226, 35.282246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976683, 35.606949, 35.622009>,  <25.074413, 35.526382, 35.825867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976683, 35.606949, 35.622009>,  <24.813799, 35.741226, 35.282246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976683, 35.606949, 35.622009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517663, -0.681371, -0.517453,
		0.752466, 0.650418, -0.103685,
		0.407209, -0.335692, 0.849407,
		25.098845, 35.506241, 35.876831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564997, 35.505726, 35.135677>,  <24.813799, 35.741226, 35.282246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564997, 35.505726, 35.135677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340290, 35.307320, 35.400520>,  <25.205467, 35.188274, 35.559425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340290, 35.307320, 35.400520>,  <25.564997, 35.505726, 35.135677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340290, 35.307320, 35.400520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376671, -0.865912, -0.329111,
		0.736572, 0.064514, 0.673275,
		-0.561765, -0.496018, 0.662107,
		25.171761, 35.158516, 35.599152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903736, 34.874519, 35.410389>,  <25.564997, 35.505726, 35.135677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903736, 34.874519, 35.410389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511265, 34.822220, 35.467228>,  <25.275782, 34.790840, 35.501331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511265, 34.822220, 35.467228>,  <25.903736, 34.874519, 35.410389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511265, 34.822220, 35.467228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117507, -0.988234, -0.097912,
		0.153223, -0.079372, 0.984999,
		-0.981180, -0.130747, 0.142093,
		25.216911, 34.782997, 35.509857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077402, 34.379333, 34.923130>,  <25.903736, 34.874519, 35.410389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077402, 34.379333, 34.923130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290606, 34.093956, 34.741184>,  <26.418528, 33.922729, 34.632015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290606, 34.093956, 34.741184>,  <26.077402, 34.379333, 34.923130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290606, 34.093956, 34.741184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344589, -0.674029, 0.653409,
		-0.772761, -0.191531, -0.605108,
		0.533009, -0.713442, -0.454864,
		26.450508, 33.879925, 34.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606440, 33.880650, 34.561245>,  <26.077402, 34.379333, 34.923130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606440, 33.880650, 34.561245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925625, 33.679661, 34.694378>,  <26.117136, 33.559067, 34.774258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925625, 33.679661, 34.694378>,  <25.606440, 33.880650, 34.561245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925625, 33.679661, 34.694378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599507, -0.604862, 0.524150,
		-0.062051, -0.617789, -0.783892,
		0.797961, -0.502472, 0.332836,
		26.165012, 33.528919, 34.794228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508217, 33.254234, 34.348812>,  <25.606440, 33.880650, 34.561245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508217, 33.254234, 34.348812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744507, 33.212654, 34.668873>,  <25.886282, 33.187706, 34.860909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744507, 33.212654, 34.668873>,  <25.508217, 33.254234, 34.348812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744507, 33.212654, 34.668873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615559, -0.699194, 0.363614,
		0.521660, -0.707335, -0.477021,
		0.590727, -0.103951, 0.800147,
		25.921724, 33.181469, 34.908916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563517, 32.538113, 34.462975>,  <25.508217, 33.254234, 34.348812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563517, 32.538113, 34.462975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688005, 32.688622, 34.812042>,  <25.762699, 32.778927, 35.021484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688005, 32.688622, 34.812042>,  <25.563517, 32.538113, 34.462975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688005, 32.688622, 34.812042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476933, -0.732423, 0.485893,
		0.821994, -0.567428, -0.048490,
		0.311224, 0.376275, 0.872672,
		25.781372, 32.801502, 35.073845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768999, 31.938091, 34.945427>,  <25.563517, 32.538113, 34.462975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768999, 31.938091, 34.945427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673475, 32.248287, 35.179207>,  <25.616161, 32.434406, 35.319477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673475, 32.248287, 35.179207>,  <25.768999, 31.938091, 34.945427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673475, 32.248287, 35.179207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540030, -0.606273, 0.583781,
		0.807055, -0.176210, 0.563571,
		-0.238810, 0.775489, 0.584454,
		25.601831, 32.480934, 35.354542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856190, 31.742981, 35.630436>,  <25.768999, 31.938091, 34.945427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856190, 31.742981, 35.630436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585457, 32.036945, 35.647411>,  <25.423018, 32.213326, 35.657597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585457, 32.036945, 35.647411>,  <25.856190, 31.742981, 35.630436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585457, 32.036945, 35.647411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625354, -0.604433, 0.493551,
		0.388367, 0.307514, 0.868681,
		-0.676833, 0.734912, 0.042437,
		25.382406, 32.257420, 35.660141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648985, 31.766073, 36.354927>,  <25.856190, 31.742981, 35.630436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648985, 31.766073, 36.354927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381104, 31.952246, 36.123455>,  <25.220375, 32.063950, 35.984573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381104, 31.952246, 36.123455>,  <25.648985, 31.766073, 36.354927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381104, 31.952246, 36.123455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742281, -0.443389, 0.502419,
		-0.022739, 0.766015, 0.642420,
		-0.669703, 0.465432, -0.578681,
		25.180193, 32.091877, 35.949852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297270, 32.276531, 36.820988>,  <25.648985, 31.766073, 36.354927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297270, 32.276531, 36.820988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094038, 32.095844, 36.527645>,  <24.972099, 31.987432, 36.351639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094038, 32.095844, 36.527645>,  <25.297270, 32.276531, 36.820988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094038, 32.095844, 36.527645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628889, -0.387214, 0.674214,
		-0.588518, 0.803752, -0.087343,
		-0.508080, -0.451716, -0.733353,
		24.941614, 31.960329, 36.307640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607807, 32.437462, 36.797592>,  <25.297270, 32.276531, 36.820988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607807, 32.437462, 36.797592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652273, 32.067486, 36.652191>,  <24.678953, 31.845501, 36.564953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652273, 32.067486, 36.652191>,  <24.607807, 32.437462, 36.797592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652273, 32.067486, 36.652191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644191, -0.345581, 0.682342,
		-0.756743, 0.158310, -0.634254,
		0.111165, -0.924938, -0.363498,
		24.685623, 31.790005, 36.543140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406988, 32.095875, 36.192284>,  <24.607807, 32.437462, 36.797592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406988, 32.095875, 36.192284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194370, 31.772705, 36.294037>,  <24.066799, 31.578802, 36.355091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194370, 31.772705, 36.294037>,  <24.406988, 32.095875, 36.192284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.194370, 31.772705, 36.294037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270512, 0.122678, 0.954868,
		-0.802671, 0.576372, 0.153345,
		-0.531547, -0.807927, 0.254385,
		24.034906, 31.530327, 36.370354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.236481, 32.721020, 35.910110>,  <24.406988, 32.095875, 36.192284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.236481, 32.721020, 35.910110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605850, 32.606781, 36.012661>,  <24.827471, 32.538239, 36.074192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605850, 32.606781, 36.012661>,  <24.236481, 32.721020, 35.910110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605850, 32.606781, 36.012661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382921, 0.640753, -0.665437,
		0.025772, 0.712650, 0.701046,
		0.923422, -0.285595, 0.256375,
		24.882877, 32.521103, 36.089573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676828, 33.333179, 35.976517>,  <24.236481, 32.721020, 35.910110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676828, 33.333179, 35.976517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912710, 33.016663, 35.911888>,  <25.054239, 32.826752, 35.873112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912710, 33.016663, 35.911888>,  <24.676828, 33.333179, 35.976517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912710, 33.016663, 35.911888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644568, 0.581670, -0.496178,
		0.486600, 0.188458, 0.853056,
		0.589706, -0.791292, -0.161567,
		25.089622, 32.779274, 35.863419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331583, 33.487568, 36.126442>,  <24.676828, 33.333179, 35.976517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331583, 33.487568, 36.126442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418825, 33.181625, 35.883980>,  <25.471170, 32.998058, 35.738503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418825, 33.181625, 35.883980>,  <25.331583, 33.487568, 36.126442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418825, 33.181625, 35.883980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679111, 0.565010, -0.468585,
		0.700884, -0.309447, 0.642654,
		0.218103, -0.764857, -0.606155,
		25.484257, 32.952168, 35.702133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067667, 33.491940, 36.116711>,  <25.331583, 33.487568, 36.126442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067667, 33.491940, 36.116711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979439, 33.263325, 35.800560>,  <25.926502, 33.126156, 35.610870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979439, 33.263325, 35.800560>,  <26.067667, 33.491940, 36.116711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979439, 33.263325, 35.800560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643034, 0.524084, -0.558429,
		0.733387, -0.631409, 0.251923,
		-0.220569, -0.571540, -0.790374,
		25.913269, 33.091862, 35.563446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648403, 33.133369, 35.937771>,  <26.067667, 33.491940, 36.116711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648403, 33.133369, 35.937771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444284, 33.138794, 35.593815>,  <26.321814, 33.142048, 35.387440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444284, 33.138794, 35.593815>,  <26.648403, 33.133369, 35.937771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444284, 33.138794, 35.593815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778384, 0.432434, -0.455103,
		0.365673, -0.901564, -0.231228,
		-0.510295, 0.013565, -0.859892,
		26.291195, 33.142864, 35.335846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111614, 32.824383, 35.399651>,  <26.648403, 33.133369, 35.937771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111614, 32.824383, 35.399651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827816, 33.069748, 35.260891>,  <26.657537, 33.216969, 35.177635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827816, 33.069748, 35.260891>,  <27.111614, 32.824383, 35.399651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827816, 33.069748, 35.260891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658751, 0.402447, -0.635675,
		-0.250321, -0.679531, -0.689621,
		-0.709497, 0.613412, -0.346901,
		26.614967, 33.253773, 35.156822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228285, 32.764408, 34.694359>,  <27.111614, 32.824383, 35.399651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228285, 32.764408, 34.694359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008837, 33.093544, 34.753628>,  <26.877169, 33.291027, 34.789188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008837, 33.093544, 34.753628>,  <27.228285, 32.764408, 34.694359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008837, 33.093544, 34.753628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570738, 0.498087, -0.652815,
		-0.610963, -0.273581, -0.742885,
		-0.548619, 0.822838, 0.148169,
		26.844252, 33.340397, 34.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156591, 32.162518, 34.917210>,  <27.228285, 32.764408, 34.694359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156591, 32.162518, 34.917210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514900, 32.044430, 34.784283>,  <27.729885, 31.973576, 34.704529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514900, 32.044430, 34.784283>,  <27.156591, 32.162518, 34.917210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514900, 32.044430, 34.784283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316643, -0.100898, 0.943163,
		-0.311973, -0.950086, 0.003099,
		0.895773, -0.295223, -0.332315,
		27.783632, 31.955864, 34.684589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444080, 31.464460, 35.152874>,  <27.156591, 32.162518, 34.917210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444080, 31.464460, 35.152874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741293, 31.729809, 35.117443>,  <27.919621, 31.889017, 35.096184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741293, 31.729809, 35.117443>,  <27.444080, 31.464460, 35.152874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741293, 31.729809, 35.117443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280640, -0.188678, 0.941085,
		0.607574, -0.724114, -0.326361,
		0.743030, 0.663369, -0.088580,
		27.964203, 31.928820, 35.090870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248056, 31.327082, 35.206783>,  <27.444080, 31.464460, 35.152874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248056, 31.327082, 35.206783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093279, 31.668415, 35.346554>,  <28.000412, 31.873215, 35.430416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093279, 31.668415, 35.346554>,  <28.248056, 31.327082, 35.206783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093279, 31.668415, 35.346554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232212, -0.276556, 0.932520,
		0.892385, 0.441975, -0.091142,
		-0.386945, 0.853332, 0.349426,
		27.977196, 31.924414, 35.451382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684008, 31.680023, 35.731476>,  <28.248056, 31.327082, 35.206783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684008, 31.680023, 35.731476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323660, 31.826756, 35.824310>,  <28.107450, 31.914795, 35.880013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323660, 31.826756, 35.824310>,  <28.684008, 31.680023, 35.731476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323660, 31.826756, 35.824310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176940, -0.177909, 0.968009,
		0.396388, 0.913117, 0.095365,
		-0.900871, 0.366833, 0.232088,
		28.053398, 31.936806, 35.893936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742447, 32.220108, 36.239952>,  <28.684008, 31.680023, 35.731476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742447, 32.220108, 36.239952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373489, 32.076744, 36.297543>,  <28.152115, 31.990725, 36.332096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373489, 32.076744, 36.297543>,  <28.742447, 32.220108, 36.239952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373489, 32.076744, 36.297543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160080, -0.015493, 0.986983,
		-0.351515, 0.933435, 0.071665,
		-0.922395, -0.358411, 0.143978,
		28.096771, 31.969221, 36.340736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513680, 32.537682, 36.784821>,  <28.742447, 32.220108, 36.239952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513680, 32.537682, 36.784821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254164, 32.234501, 36.757771>,  <28.098454, 32.052593, 36.741539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254164, 32.234501, 36.757771>,  <28.513680, 32.537682, 36.784821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254164, 32.234501, 36.757771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032529, -0.116415, 0.992668,
		-0.760271, 0.641834, 0.100184,
		-0.648791, -0.757955, -0.067629,
		28.059526, 32.007114, 36.737480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102745, 32.749023, 37.278740>,  <28.513680, 32.537682, 36.784821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102745, 32.749023, 37.278740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110643, 32.357059, 37.199356>,  <28.115383, 32.121880, 37.151726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110643, 32.357059, 37.199356>,  <28.102745, 32.749023, 37.278740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110643, 32.357059, 37.199356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218558, -0.197932, 0.955539,
		-0.975624, 0.024508, -0.218076,
		0.019746, -0.979909, -0.198464,
		28.116568, 32.063087, 37.139816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474140, 32.652615, 37.668694>,  <28.102745, 32.749023, 37.278740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474140, 32.652615, 37.668694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701820, 32.333195, 37.590382>,  <27.838428, 32.141541, 37.543396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701820, 32.333195, 37.590382>,  <27.474140, 32.652615, 37.668694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701820, 32.333195, 37.590382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330423, -0.440208, 0.834888,
		-0.752884, -0.410527, -0.514425,
		0.569198, -0.798551, -0.195778,
		27.872580, 32.093628, 37.531647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038975, 31.987171, 37.583328>,  <27.474140, 32.652615, 37.668694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038975, 31.987171, 37.583328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403837, 31.924810, 37.734943>,  <27.622755, 31.887394, 37.825912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403837, 31.924810, 37.734943>,  <27.038975, 31.987171, 37.583328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403837, 31.924810, 37.734943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404943, -0.485460, 0.774822,
		0.063213, -0.860246, -0.505945,
		0.912154, -0.155900, 0.379038,
		27.677483, 31.878040, 37.848656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252333, 31.255878, 37.640144>,  <27.038975, 31.987171, 37.583328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252333, 31.255878, 37.640144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426611, 31.466557, 37.932106>,  <27.531178, 31.592964, 38.107285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426611, 31.466557, 37.932106>,  <27.252333, 31.255878, 37.640144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426611, 31.466557, 37.932106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380372, -0.627215, 0.679646,
		0.815774, -0.573754, -0.072934,
		0.435695, 0.526695, 0.729906,
		27.557320, 31.624565, 38.151077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765770, 30.863258, 38.041519>,  <27.252333, 31.255878, 37.640144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765770, 30.863258, 38.041519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663750, 31.159620, 38.290039>,  <27.602537, 31.337437, 38.439152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663750, 31.159620, 38.290039>,  <27.765770, 30.863258, 38.041519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663750, 31.159620, 38.290039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062449, -0.653827, 0.754062,
		0.964909, 0.153526, 0.213029,
		-0.255052, 0.740905, 0.621296,
		27.587234, 31.381891, 38.476429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327955, 30.925686, 38.493336>,  <27.765770, 30.863258, 38.041519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327955, 30.925686, 38.493336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008801, 31.099947, 38.659988>,  <27.817307, 31.204504, 38.759979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008801, 31.099947, 38.659988>,  <28.327955, 30.925686, 38.493336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008801, 31.099947, 38.659988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129186, -0.551514, 0.824101,
		0.588799, 0.711364, 0.383767,
		-0.797889, 0.435653, 0.416630,
		27.769434, 31.230642, 38.784977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539505, 31.117338, 39.173943>,  <28.327955, 30.925686, 38.493336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539505, 31.117338, 39.173943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140333, 31.098457, 39.156471>,  <27.900829, 31.087130, 39.145988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140333, 31.098457, 39.156471>,  <28.539505, 31.117338, 39.173943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140333, 31.098457, 39.156471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020900, -0.404344, 0.914368,
		-0.060823, 0.913388, 0.402521,
		-0.997930, -0.047202, -0.043683,
		27.840954, 31.084297, 39.143368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154751, 31.319670, 39.848949>,  <28.539505, 31.117338, 39.173943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154751, 31.319670, 39.848949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903851, 31.076981, 39.653625>,  <27.753311, 30.931368, 39.536430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903851, 31.076981, 39.653625>,  <28.154751, 31.319670, 39.848949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903851, 31.076981, 39.653625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142217, -0.527216, 0.837746,
		-0.765722, 0.594923, 0.244411,
		-0.627251, -0.606721, -0.488309,
		27.715675, 30.894964, 39.507133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434799, 31.309198, 40.115730>,  <28.154751, 31.319670, 39.848949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434799, 31.309198, 40.115730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555693, 30.970226, 39.941135>,  <27.628229, 30.766844, 39.836380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555693, 30.970226, 39.941135>,  <27.434799, 31.309198, 40.115730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555693, 30.970226, 39.941135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078868, -0.478557, 0.874507,
		-0.949966, -0.229880, -0.211471,
		0.302232, -0.847431, -0.436483,
		27.646362, 30.715998, 39.810192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866011, 30.799318, 40.142757>,  <27.434799, 31.309198, 40.115730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866011, 30.799318, 40.142757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231764, 30.638731, 40.121853>,  <27.451216, 30.542379, 40.109310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231764, 30.638731, 40.121853>,  <26.866011, 30.799318, 40.142757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231764, 30.638731, 40.121853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197807, -0.555638, 0.807551,
		-0.353241, -0.728073, -0.587478,
		0.914381, -0.401467, -0.052256,
		27.506079, 30.518291, 40.106174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642059, 31.271448, 39.578735>,  <26.866011, 30.799318, 40.142757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642059, 31.271448, 39.578735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021477, 31.240570, 39.455898>,  <27.249126, 31.222042, 39.382195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021477, 31.240570, 39.455898>,  <26.642059, 31.271448, 39.578735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021477, 31.240570, 39.455898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167393, 0.700979, -0.693259,
		0.268782, 0.708991, 0.651987,
		0.948544, -0.077197, -0.307091,
		27.306040, 31.217411, 39.363770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857613, 31.902214, 39.296635>,  <26.642059, 31.271448, 39.578735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857613, 31.902214, 39.296635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180643, 31.690340, 39.192898>,  <27.374460, 31.563215, 39.130657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180643, 31.690340, 39.192898>,  <26.857613, 31.902214, 39.296635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180643, 31.690340, 39.192898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313835, 0.758269, -0.571433,
		0.499330, 0.380085, 0.778592,
		0.807575, -0.529683, -0.259343,
		27.422916, 31.531435, 39.115093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381508, 32.366337, 39.267696>,  <26.857613, 31.902214, 39.296635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381508, 32.366337, 39.267696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449135, 32.059658, 39.019958>,  <27.489712, 31.875650, 38.871315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449135, 32.059658, 39.019958>,  <27.381508, 32.366337, 39.267696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449135, 32.059658, 39.019958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280543, 0.639831, -0.715481,
		0.944834, -0.052788, 0.323267,
		0.169067, -0.766701, -0.619343,
		27.499855, 31.829647, 38.834156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956160, 32.429871, 39.049496>,  <27.381508, 32.366337, 39.267696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956160, 32.429871, 39.049496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827168, 32.178066, 38.766731>,  <27.749773, 32.026981, 38.597073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827168, 32.178066, 38.766731>,  <27.956160, 32.429871, 39.049496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827168, 32.178066, 38.766731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304892, 0.637926, -0.707171,
		0.896129, -0.443579, -0.013784,
		-0.322480, -0.629514, -0.706908,
		27.730423, 31.989212, 38.554657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417664, 32.583496, 38.533985>,  <27.956160, 32.429871, 39.049496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417664, 32.583496, 38.533985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113569, 32.378899, 38.373779>,  <27.931112, 32.256138, 38.277657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113569, 32.378899, 38.373779>,  <28.417664, 32.583496, 38.533985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113569, 32.378899, 38.373779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170808, 0.437442, -0.882875,
		0.626792, -0.739604, -0.245191,
		-0.760235, -0.511499, -0.400515,
		27.885498, 32.225449, 38.253624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633411, 32.186867, 37.908012>,  <28.417664, 32.583496, 38.533985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633411, 32.186867, 37.908012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251865, 32.300026, 37.948223>,  <28.022938, 32.367920, 37.972351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251865, 32.300026, 37.948223>,  <28.633411, 32.186867, 37.908012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251865, 32.300026, 37.948223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068640, 0.531468, -0.844293,
		-0.292277, -0.798442, -0.526368,
		-0.953867, 0.282897, 0.100531,
		27.965706, 32.384895, 37.978382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062332, 32.702793, 37.544933>,  <28.633411, 32.186867, 37.908012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062332, 32.702793, 37.544933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028334, 32.857620, 37.912186>,  <29.007935, 32.950516, 38.132538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028334, 32.857620, 37.912186>,  <29.062332, 32.702793, 37.544933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028334, 32.857620, 37.912186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169112, 0.913696, -0.369542,
		-0.981925, 0.123856, -0.143119,
		-0.084997, 0.387065, 0.918126,
		29.002834, 32.973740, 38.187622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697145, 33.406952, 37.503357>,  <29.062332, 32.702793, 37.544933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697145, 33.406952, 37.503357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904671, 33.380100, 37.844257>,  <29.029186, 33.363987, 38.048798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904671, 33.380100, 37.844257>,  <28.697145, 33.406952, 37.503357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904671, 33.380100, 37.844257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329364, 0.935650, -0.126801,
		-0.788892, 0.346486, 0.507541,
		0.518815, -0.067133, 0.852246,
		29.060316, 33.359959, 38.099930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584925, 34.077751, 37.918774>,  <28.697145, 33.406952, 37.503357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584925, 34.077751, 37.918774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930349, 33.896385, 38.007019>,  <29.137604, 33.787567, 38.059967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930349, 33.896385, 38.007019>,  <28.584925, 34.077751, 37.918774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930349, 33.896385, 38.007019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503299, 0.801781, -0.322239,
		-0.030779, 0.389311, 0.920592,
		0.863564, -0.453415, 0.220618,
		29.189419, 33.760361, 38.073204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123951, 34.527634, 38.373611>,  <28.584925, 34.077751, 37.918774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123951, 34.527634, 38.373611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317467, 34.264805, 38.142368>,  <29.433577, 34.107109, 38.003624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317467, 34.264805, 38.142368>,  <29.123951, 34.527634, 38.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317467, 34.264805, 38.142368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394478, 0.753366, -0.526143,
		0.781238, 0.026491, 0.623670,
		0.483790, -0.657068, -0.578108,
		29.462605, 34.067684, 37.968937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920643, 34.625072, 38.299488>,  <29.123951, 34.527634, 38.373611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920643, 34.625072, 38.299488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771667, 34.476803, 37.959160>,  <29.682281, 34.387840, 37.754963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771667, 34.476803, 37.959160>,  <29.920643, 34.625072, 38.299488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771667, 34.476803, 37.959160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328162, 0.804946, -0.494340,
		0.868102, -0.463317, -0.178150,
		-0.372437, -0.370675, -0.850818,
		29.659937, 34.365601, 37.703915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820761, 33.959862, 38.521744>,  <29.920643, 34.625072, 38.299488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820761, 33.959862, 38.521744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215830, 33.919258, 38.569401>,  <30.452871, 33.894894, 38.597996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215830, 33.919258, 38.569401>,  <29.820761, 33.959862, 38.521744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215830, 33.919258, 38.569401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156503, -0.651993, 0.741898,
		0.002365, -0.751399, -0.659844,
		0.987675, -0.101513, 0.119139,
		30.512133, 33.888805, 38.605141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968895, 33.199135, 38.563122>,  <29.820761, 33.959862, 38.521744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968895, 33.199135, 38.563122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276911, 33.395493, 38.726124>,  <30.461720, 33.513309, 38.823925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276911, 33.395493, 38.726124>,  <29.968895, 33.199135, 38.563122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276911, 33.395493, 38.726124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061522, -0.692882, 0.718421,
		0.635023, -0.528143, -0.563748,
		0.770040, 0.490897, 0.407503,
		30.507923, 33.542763, 38.848373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176481, 32.557831, 39.021393>,  <29.968895, 33.199135, 38.563122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176481, 32.557831, 39.021393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414415, 32.866688, 39.110802>,  <30.557177, 33.052002, 39.164448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414415, 32.866688, 39.110802>,  <30.176481, 32.557831, 39.021393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414415, 32.866688, 39.110802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183121, -0.400913, 0.897628,
		0.782711, -0.493012, -0.379874,
		0.594837, 0.772146, 0.223518,
		30.592867, 33.098331, 39.177856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904203, 32.438931, 39.183468>,  <30.176481, 32.557831, 39.021393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904203, 32.438931, 39.183468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773842, 32.755058, 39.390999>,  <30.695625, 32.944736, 39.515518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773842, 32.755058, 39.390999>,  <30.904203, 32.438931, 39.183468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773842, 32.755058, 39.390999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169942, -0.490878, 0.854493,
		0.930003, 0.366653, 0.025671,
		-0.325904, 0.790319, 0.518828,
		30.676071, 32.992153, 39.546646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413054, 32.657829, 39.766506>,  <30.904203, 32.438931, 39.183468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413054, 32.657829, 39.766506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031641, 32.742561, 39.852211>,  <30.802794, 32.793400, 39.903633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031641, 32.742561, 39.852211>,  <31.413054, 32.657829, 39.766506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031641, 32.742561, 39.852211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053407, -0.581050, 0.812114,
		0.296530, 0.785818, 0.542735,
		-0.953529, 0.211830, 0.214267,
		30.745583, 32.806110, 39.916492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431728, 32.904789, 40.390430>,  <31.413054, 32.657829, 39.766506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431728, 32.904789, 40.390430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094759, 32.713593, 40.290951>,  <30.892578, 32.598877, 40.231262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094759, 32.713593, 40.290951>,  <31.431728, 32.904789, 40.390430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094759, 32.713593, 40.290951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184134, -0.689165, 0.700819,
		-0.506377, 0.544592, 0.668582,
		-0.842423, -0.477987, -0.248699,
		30.842031, 32.570198, 40.216343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878702, 32.609348, 40.820705>,  <31.431728, 32.904789, 40.390430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878702, 32.609348, 40.820705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033031, 32.637848, 41.188633>,  <31.125629, 32.654949, 41.409389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033031, 32.637848, 41.188633>,  <30.878702, 32.609348, 40.820705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033031, 32.637848, 41.188633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876693, -0.282179, 0.389595,
		0.287312, -0.956712, -0.046405,
		0.385825, 0.071252, 0.919816,
		31.148779, 32.659222, 41.464577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616409, 32.111443, 41.133133>,  <30.878702, 32.609348, 40.820705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616409, 32.111443, 41.133133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727406, 32.376698, 41.411198>,  <30.794003, 32.535851, 41.578037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727406, 32.376698, 41.411198>,  <30.616409, 32.111443, 41.133133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727406, 32.376698, 41.411198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863066, -0.145794, 0.483592,
		0.422039, -0.734160, 0.531877,
		0.277489, 0.663139, 0.695159,
		30.810652, 32.575638, 41.619747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249544, 31.824062, 40.538208>,  <30.616409, 32.111443, 41.133133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249544, 31.824062, 40.538208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093653, 32.084885, 40.798344>,  <30.000118, 32.241379, 40.954426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093653, 32.084885, 40.798344>,  <30.249544, 31.824062, 40.538208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093653, 32.084885, 40.798344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015481, 0.710710, -0.703315,
		-0.920801, -0.264032, -0.287077,
		-0.389726, 0.652057, 0.650335,
		29.976734, 32.280502, 40.993443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006630, 32.267555, 40.055103>,  <30.249544, 31.824062, 40.538208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006630, 32.267555, 40.055103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043144, 32.452312, 40.407993>,  <30.065052, 32.563168, 40.619728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043144, 32.452312, 40.407993>,  <30.006630, 32.267555, 40.055103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043144, 32.452312, 40.407993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196411, 0.860169, -0.470672,
		-0.976263, 0.216244, -0.012200,
		0.091285, 0.461896, 0.882224,
		30.070530, 32.590881, 40.672661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552986, 32.802578, 40.085056>,  <30.006630, 32.267555, 40.055103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552986, 32.802578, 40.085056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904116, 32.859715, 40.267933>,  <30.114794, 32.893997, 40.377659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904116, 32.859715, 40.267933>,  <29.552986, 32.802578, 40.085056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904116, 32.859715, 40.267933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158825, 0.813693, -0.559176,
		-0.451889, 0.563470, 0.691591,
		0.877822, 0.142843, 0.457192,
		30.167461, 32.902569, 40.405090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759619, 33.553509, 40.307339>,  <29.552986, 32.802578, 40.085056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759619, 33.553509, 40.307339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057261, 33.320641, 40.176254>,  <30.235846, 33.180920, 40.097603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057261, 33.320641, 40.176254>,  <29.759619, 33.553509, 40.307339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057261, 33.320641, 40.176254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253402, 0.699831, -0.667850,
		0.618141, 0.413906, 0.668269,
		0.744103, -0.582166, -0.327710,
		30.280491, 33.145992, 40.077942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278004, 34.047028, 40.177002>,  <29.759619, 33.553509, 40.307339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278004, 34.047028, 40.177002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390812, 33.710667, 39.992245>,  <30.458498, 33.508850, 39.881390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390812, 33.710667, 39.992245>,  <30.278004, 34.047028, 40.177002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390812, 33.710667, 39.992245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257317, 0.530098, -0.807951,
		0.924257, 0.109006, 0.365878,
		0.282023, -0.840901, -0.461897,
		30.475418, 33.458397, 39.853676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941748, 34.118362, 39.962990>,  <30.278004, 34.047028, 40.177002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941748, 34.118362, 39.962990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777351, 33.845272, 39.721336>,  <30.678715, 33.681419, 39.576344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777351, 33.845272, 39.721336>,  <30.941748, 34.118362, 39.962990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777351, 33.845272, 39.721336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248238, 0.553836, -0.794760,
		0.877192, -0.476606, -0.058143,
		-0.410989, -0.682724, -0.604132,
		30.654055, 33.640453, 39.540096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472019, 34.007221, 39.533524>,  <30.941748, 34.118362, 39.962990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472019, 34.007221, 39.533524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153534, 33.879036, 39.328255>,  <30.962442, 33.802124, 39.205093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153534, 33.879036, 39.328255>,  <31.472019, 34.007221, 39.533524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153534, 33.879036, 39.328255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246503, 0.602774, -0.758881,
		0.552523, -0.730729, -0.400940,
		-0.796213, -0.320466, -0.513173,
		30.914669, 33.782898, 39.174301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789862, 33.750454, 38.837555>,  <31.472019, 34.007221, 39.533524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789862, 33.750454, 38.837555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399174, 33.814907, 38.780907>,  <31.164761, 33.853577, 38.746918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399174, 33.814907, 38.780907>,  <31.789862, 33.750454, 38.837555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399174, 33.814907, 38.780907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208104, 0.551418, -0.807856,
		-0.052077, -0.818520, -0.572112,
		-0.976719, 0.161130, -0.141621,
		31.106157, 33.863247, 38.738419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525015, 33.578606, 38.184357>,  <31.789862, 33.750454, 38.837555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525015, 33.578606, 38.184357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290749, 33.890064, 38.274433>,  <31.150188, 34.076939, 38.328480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290749, 33.890064, 38.274433>,  <31.525015, 33.578606, 38.184357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290749, 33.890064, 38.274433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375638, 0.506916, -0.775843,
		-0.718257, -0.369795, -0.589371,
		-0.585665, 0.778645, 0.225187,
		31.115049, 34.123657, 38.341988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063002, 33.869556, 37.594074>,  <31.525015, 33.578606, 38.184357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063002, 33.869556, 37.594074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198259, 34.153606, 37.841099>,  <31.279413, 34.324036, 37.989311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198259, 34.153606, 37.841099>,  <31.063002, 33.869556, 37.594074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198259, 34.153606, 37.841099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447662, 0.455844, -0.769288,
		-0.827802, 0.536589, -0.163755,
		0.338145, 0.710126, 0.617560,
		31.299704, 34.366646, 38.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736557, 34.413246, 37.330845>,  <31.063002, 33.869556, 37.594074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736557, 34.413246, 37.330845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063459, 34.508327, 37.540833>,  <31.259602, 34.565376, 37.666824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063459, 34.508327, 37.540833>,  <30.736557, 34.413246, 37.330845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063459, 34.508327, 37.540833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364084, 0.493149, -0.790093,
		-0.446694, 0.836840, 0.316486,
		0.817256, 0.237702, 0.524967,
		31.308636, 34.579639, 37.698322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868397, 35.128731, 37.397202>,  <30.736557, 34.413246, 37.330845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868397, 35.128731, 37.397202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226980, 34.955040, 37.432545>,  <31.442131, 34.850826, 37.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226980, 34.955040, 37.432545>,  <30.868397, 35.128731, 37.397202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226980, 34.955040, 37.432545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349789, 0.571017, -0.742689,
		0.272044, 0.696696, 0.663782,
		0.896459, -0.434228, 0.088355,
		31.495918, 34.824772, 37.459053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374582, 35.682159, 37.430870>,  <30.868397, 35.128731, 37.397202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374582, 35.682159, 37.430870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564964, 35.358471, 37.293095>,  <31.679193, 35.164257, 37.210430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564964, 35.358471, 37.293095>,  <31.374582, 35.682159, 37.430870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564964, 35.358471, 37.293095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532821, 0.576900, -0.619103,
		0.699693, 0.111142, 0.705746,
		0.475953, -0.809218, -0.344434,
		31.707750, 35.115704, 37.189766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985199, 35.913452, 37.319351>,  <31.374582, 35.682159, 37.430870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985199, 35.913452, 37.319351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999781, 35.574173, 37.107983>,  <32.008530, 35.370605, 36.981163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999781, 35.574173, 37.107983>,  <31.985199, 35.913452, 37.319351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999781, 35.574173, 37.107983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551594, 0.458003, -0.697121,
		0.833316, -0.266060, 0.484559,
		0.036453, -0.848201, -0.528418,
		32.010715, 35.319714, 36.949459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764736, 35.840900, 37.112411>,  <31.985199, 35.913452, 37.319351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764736, 35.840900, 37.112411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556881, 35.601898, 36.868126>,  <32.432167, 35.458496, 36.721554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556881, 35.601898, 36.868126>,  <32.764736, 35.840900, 37.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556881, 35.601898, 36.868126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606834, 0.245070, -0.756103,
		0.601442, -0.763499, 0.235239,
		-0.519634, -0.597503, -0.610713,
		32.400990, 35.422646, 36.684914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248917, 35.392258, 36.827686>,  <32.764736, 35.840900, 37.112411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248917, 35.392258, 36.827686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923737, 35.377419, 36.595226>,  <32.728626, 35.368515, 36.455750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923737, 35.377419, 36.595226>,  <33.248917, 35.392258, 36.827686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923737, 35.377419, 36.595226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576344, 0.091463, -0.812072,
		0.083281, -0.995117, -0.052973,
		-0.812952, -0.037100, -0.581147,
		32.679852, 35.366287, 36.420883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511379, 35.119637, 36.339527>,  <33.248917, 35.392258, 36.827686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511379, 35.119637, 36.339527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170712, 35.262482, 36.186096>,  <32.966312, 35.348186, 36.094036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170712, 35.262482, 36.186096>,  <33.511379, 35.119637, 36.339527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170712, 35.262482, 36.186096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496056, 0.313154, -0.809854,
		-0.169086, -0.880005, -0.443849,
		-0.851668, 0.357109, -0.383581,
		32.915211, 35.369614, 36.071022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491688, 34.933891, 35.677872>,  <33.511379, 35.119637, 36.339527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491688, 34.933891, 35.677872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258446, 35.257347, 35.709110>,  <33.118500, 35.451420, 35.727852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258446, 35.257347, 35.709110>,  <33.491688, 34.933891, 35.677872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258446, 35.257347, 35.709110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532378, 0.452956, -0.715125,
		-0.613650, -0.375415, -0.694620,
		-0.583101, 0.808637, 0.078094,
		33.083515, 35.499939, 35.732540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447830, 35.138428, 34.923561>,  <33.491688, 34.933891, 35.677872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447830, 35.138428, 34.923561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350910, 35.466499, 35.130867>,  <33.292759, 35.663342, 35.255249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350910, 35.466499, 35.130867>,  <33.447830, 35.138428, 34.923561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350910, 35.466499, 35.130867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510839, 0.561987, -0.650549,
		-0.824825, 0.107125, -0.555147,
		-0.242295, 0.820180, 0.518265,
		33.278221, 35.712555, 35.286346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311504, 35.657082, 34.406422>,  <33.447830, 35.138428, 34.923561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311504, 35.657082, 34.406422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374069, 35.862377, 34.743969>,  <33.411610, 35.985554, 34.946499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374069, 35.862377, 34.743969>,  <33.311504, 35.657082, 34.406422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374069, 35.862377, 34.743969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571289, 0.649952, -0.501189,
		-0.805707, 0.560487, -0.191548,
		0.156414, 0.513241, 0.843871,
		33.420994, 36.016350, 34.997131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039455, 36.306847, 34.275768>,  <33.311504, 35.657082, 34.406422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039455, 36.306847, 34.275768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304974, 36.339348, 34.573162>,  <33.464283, 36.358849, 34.751598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304974, 36.339348, 34.573162>,  <33.039455, 36.306847, 34.275768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304974, 36.339348, 34.573162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426595, 0.775386, -0.465610,
		-0.614325, 0.626238, 0.480033,
		0.663793, 0.081256, 0.743489,
		33.504112, 36.363724, 34.796207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143902, 37.002369, 34.343357>,  <33.039455, 36.306847, 34.275768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143902, 37.002369, 34.343357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457256, 36.855545, 34.543987>,  <33.645267, 36.767452, 34.664368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457256, 36.855545, 34.543987>,  <33.143902, 37.002369, 34.343357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457256, 36.855545, 34.543987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573906, 0.737013, -0.356993,
		-0.238632, 0.567520, 0.788020,
		0.783382, -0.367060, 0.501578,
		33.692272, 36.745426, 34.694462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435474, 37.502010, 34.963326>,  <33.143902, 37.002369, 34.343357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435474, 37.502010, 34.963326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718552, 37.254295, 34.827290>,  <33.888397, 37.105667, 34.745670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718552, 37.254295, 34.827290>,  <33.435474, 37.502010, 34.963326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718552, 37.254295, 34.827290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516545, 0.781923, -0.348967,
		0.482030, 0.071291, 0.873249,
		0.707692, -0.619285, -0.340085,
		33.930859, 37.068508, 34.725266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907173, 37.922585, 34.943874>,  <33.435474, 37.502010, 34.963326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907173, 37.922585, 34.943874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082039, 37.627716, 34.737778>,  <34.186958, 37.450794, 34.614120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082039, 37.627716, 34.737778>,  <33.907173, 37.922585, 34.943874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082039, 37.627716, 34.737778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610732, 0.663857, -0.431624,
		0.660225, -0.125984, 0.740426,
		0.437160, -0.737171, -0.515238,
		34.213188, 37.406567, 34.583206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537315, 38.013897, 35.020870>,  <33.907173, 37.922585, 34.943874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537315, 38.013897, 35.020870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542133, 37.787853, 34.690899>,  <34.545025, 37.652229, 34.492916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542133, 37.787853, 34.690899>,  <34.537315, 38.013897, 35.020870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542133, 37.787853, 34.690899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636061, 0.640892, -0.429748,
		0.771545, -0.519530, 0.367161,
		0.012043, -0.565107, -0.824930,
		34.545746, 37.618320, 34.443420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237320, 37.879692, 34.866615>,  <34.537315, 38.013897, 35.020870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237320, 37.879692, 34.866615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040531, 37.839935, 34.520645>,  <34.922459, 37.816082, 34.313065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040531, 37.839935, 34.520645>,  <35.237320, 37.879692, 34.866615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040531, 37.839935, 34.520645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598906, 0.682413, -0.419076,
		0.631885, -0.724178, -0.276200,
		-0.491968, -0.099390, -0.864922,
		34.892941, 37.810120, 34.261169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756950, 38.050529, 34.267902>,  <35.237320, 37.879692, 34.866615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756950, 38.050529, 34.267902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389122, 38.085346, 34.114639>,  <35.168427, 38.106236, 34.022682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389122, 38.085346, 34.114639>,  <35.756950, 38.050529, 34.267902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389122, 38.085346, 34.114639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318653, 0.735744, -0.597613,
		0.229891, -0.671643, -0.704305,
		-0.919571, 0.087044, -0.383162,
		35.113251, 38.111458, 33.999691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858608, 38.058262, 33.528454>,  <35.756950, 38.050529, 34.267902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858608, 38.058262, 33.528454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511028, 38.243099, 33.599323>,  <35.302479, 38.354004, 33.641846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511028, 38.243099, 33.599323>,  <35.858608, 38.058262, 33.528454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511028, 38.243099, 33.599323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207097, 0.664670, -0.717861,
		-0.449484, -0.587094, -0.673264,
		-0.868951, 0.462098, 0.177173,
		35.250343, 38.381729, 33.652473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634941, 38.163620, 32.810093>,  <35.858608, 38.058262, 33.528454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634941, 38.163620, 32.810093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453316, 38.401852, 33.075157>,  <35.344341, 38.544788, 33.234196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453316, 38.401852, 33.075157>,  <35.634941, 38.163620, 32.810093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453316, 38.401852, 33.075157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038036, 0.756029, -0.653432,
		-0.890156, -0.271497, -0.365940,
		-0.454066, 0.595575, 0.662656,
		35.317097, 38.580524, 33.273952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120316, 38.580048, 32.492523>,  <35.634941, 38.163620, 32.810093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120316, 38.580048, 32.492523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202610, 38.768566, 32.835579>,  <35.251987, 38.881680, 33.041412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202610, 38.768566, 32.835579>,  <35.120316, 38.580048, 32.492523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202610, 38.768566, 32.835579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129899, 0.855483, -0.501273,
		-0.969948, 0.214535, 0.114780,
		0.205733, 0.471299, 0.857643,
		35.264332, 38.909954, 33.092873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820900, 39.128246, 32.301876>,  <35.120316, 38.580048, 32.492523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820900, 39.128246, 32.301876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035881, 39.237648, 32.620960>,  <35.164871, 39.303291, 32.812408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035881, 39.237648, 32.620960>,  <34.820900, 39.128246, 32.301876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035881, 39.237648, 32.620960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155887, 0.897418, -0.412722,
		-0.828761, 0.346171, 0.439683,
		0.537452, 0.273507, 0.797709,
		35.197117, 39.319698, 32.860271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496639, 39.707233, 32.444489>,  <34.820900, 39.128246, 32.301876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496639, 39.707233, 32.444489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856750, 39.713856, 32.618488>,  <35.072819, 39.717831, 32.722889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856750, 39.713856, 32.618488>,  <34.496639, 39.707233, 32.444489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856750, 39.713856, 32.618488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165722, 0.910992, -0.377663,
		-0.402532, 0.412091, 0.817404,
		0.900280, 0.016560, 0.434996,
		35.126835, 39.718822, 32.748985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460392, 40.375862, 32.554539>,  <34.496639, 39.707233, 32.444489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460392, 40.375862, 32.554539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839062, 40.252079, 32.590405>,  <35.066265, 40.177811, 32.611923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839062, 40.252079, 32.590405>,  <34.460392, 40.375862, 32.554539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839062, 40.252079, 32.590405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314370, 0.826295, -0.467341,
		0.070534, 0.470608, 0.879519,
		0.946676, -0.309458, 0.089663,
		35.123066, 40.159241, 32.617302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841000, 40.951591, 32.929657>,  <34.460392, 40.375862, 32.554539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841000, 40.951591, 32.929657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129025, 40.749413, 32.739487>,  <35.301842, 40.628105, 32.625385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129025, 40.749413, 32.739487>,  <34.841000, 40.951591, 32.929657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129025, 40.749413, 32.739487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408128, 0.862599, -0.298922,
		0.561191, 0.021208, 0.827414,
		0.720066, -0.505444, -0.475427,
		35.345043, 40.597778, 32.596859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416992, 41.362240, 33.097145>,  <34.841000, 40.951591, 32.929657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416992, 41.362240, 33.097145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533825, 41.125637, 32.796532>,  <35.603924, 40.983677, 32.616161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533825, 41.125637, 32.796532>,  <35.416992, 41.362240, 33.097145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533825, 41.125637, 32.796532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524464, 0.756176, -0.391324,
		0.799765, -0.279854, 0.531092,
		0.292085, -0.591506, -0.751537,
		35.621452, 40.948185, 32.571072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112164, 41.526493, 32.986359>,  <35.416992, 41.362240, 33.097145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112164, 41.526493, 32.986359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974667, 41.379532, 32.640675>,  <35.892170, 41.291355, 32.433266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974667, 41.379532, 32.640675>,  <36.112164, 41.526493, 32.986359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974667, 41.379532, 32.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498273, 0.708696, -0.499473,
		0.795970, -0.602301, -0.060541,
		-0.343738, -0.367400, -0.864211,
		35.871544, 41.269310, 32.381413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662231, 41.609749, 32.491714>,  <36.112164, 41.526493, 32.986359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662231, 41.609749, 32.491714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377995, 41.502075, 32.231686>,  <36.207451, 41.437469, 32.075668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377995, 41.502075, 32.231686>,  <36.662231, 41.609749, 32.491714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377995, 41.502075, 32.231686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404982, 0.599052, -0.690743,
		0.575365, -0.754107, -0.316669,
		-0.710595, -0.269184, -0.650073,
		36.164818, 41.421318, 32.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955360, 41.317936, 31.812431>,  <36.662231, 41.609749, 32.491714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955360, 41.317936, 31.812431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609711, 41.511856, 31.758387>,  <36.402321, 41.628208, 31.725960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609711, 41.511856, 31.758387>,  <36.955360, 41.317936, 31.812431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609711, 41.511856, 31.758387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465780, 0.668693, -0.579568,
		-0.190626, -0.563752, -0.803645,
		-0.864124, 0.484803, -0.135114,
		36.350475, 41.657295, 31.717852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986916, 41.455009, 31.128180>,  <36.955360, 41.317936, 31.812431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986916, 41.455009, 31.128180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726627, 41.711224, 31.291290>,  <36.570454, 41.864952, 31.389156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726627, 41.711224, 31.291290>,  <36.986916, 41.455009, 31.128180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726627, 41.711224, 31.291290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341453, 0.726511, -0.596316,
		-0.678216, -0.248796, -0.691465,
		-0.650718, 0.640533, 0.407779,
		36.531410, 41.903385, 31.413624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748287, 41.814053, 30.486343>,  <36.986916, 41.455009, 31.128180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748287, 41.814053, 30.486343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598312, 42.046799, 30.775026>,  <36.508327, 42.186447, 30.948236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598312, 42.046799, 30.775026>,  <36.748287, 41.814053, 30.486343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598312, 42.046799, 30.775026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397987, 0.804135, -0.441558,
		-0.837275, 0.121673, -0.533073,
		-0.374937, 0.581862, 0.721706,
		36.485832, 42.221355, 30.991537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395840, 42.295258, 30.078709>,  <36.748287, 41.814053, 30.486343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395840, 42.295258, 30.078709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440414, 42.459713, 30.440603>,  <36.467159, 42.558388, 30.657740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440414, 42.459713, 30.440603>,  <36.395840, 42.295258, 30.078709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440414, 42.459713, 30.440603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303897, 0.852693, -0.424924,
		-0.946165, 0.322300, -0.029919,
		0.111441, 0.411140, 0.904734,
		36.473846, 42.583054, 30.712023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098316, 43.009647, 30.087151>,  <36.395840, 42.295258, 30.078709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098316, 43.009647, 30.087151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369244, 43.015858, 30.381363>,  <36.531799, 43.019585, 30.557890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369244, 43.015858, 30.381363>,  <36.098316, 43.009647, 30.087151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369244, 43.015858, 30.381363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356421, 0.867689, -0.346524,
		-0.643591, 0.496864, 0.582165,
		0.677314, 0.015524, 0.735530,
		36.572437, 43.020515, 30.602022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026081, 43.686882, 30.264130>,  <36.098316, 43.009647, 30.087151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026081, 43.686882, 30.264130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369755, 43.549980, 30.416269>,  <36.575958, 43.467838, 30.507553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369755, 43.549980, 30.416269>,  <36.026081, 43.686882, 30.264130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369755, 43.549980, 30.416269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451104, 0.857497, -0.247396,
		-0.241473, 0.384135, 0.891141,
		0.859183, -0.342258, 0.380347,
		36.627510, 43.447304, 30.530373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320156, 44.187031, 30.595366>,  <36.026081, 43.686882, 30.264130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320156, 44.187031, 30.595366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633297, 43.948765, 30.523458>,  <36.821182, 43.805805, 30.480314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633297, 43.948765, 30.523458>,  <36.320156, 44.187031, 30.595366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633297, 43.948765, 30.523458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478008, 0.760732, -0.439085,
		0.398302, 0.257810, 0.880278,
		0.782856, -0.595669, -0.179766,
		36.868153, 43.770065, 30.469528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855968, 44.587971, 30.778490>,  <36.320156, 44.187031, 30.595366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855968, 44.587971, 30.778490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032211, 44.297295, 30.567669>,  <37.137955, 44.122890, 30.441175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032211, 44.297295, 30.567669>,  <36.855968, 44.587971, 30.778490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032211, 44.297295, 30.567669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595465, 0.675947, -0.434187,
		0.671780, -0.122537, 0.730545,
		0.440605, -0.726692, -0.527054,
		37.164394, 44.079288, 30.409554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615944, 44.632359, 30.886763>,  <36.855968, 44.587971, 30.778490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615944, 44.632359, 30.886763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577690, 44.432941, 30.542133>,  <37.554737, 44.313293, 30.335356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577690, 44.432941, 30.542133>,  <37.615944, 44.632359, 30.886763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577690, 44.432941, 30.542133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636791, 0.634619, -0.437899,
		0.765082, -0.590522, 0.256774,
		-0.095635, -0.498540, -0.861575,
		37.549000, 44.283379, 30.283661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305790, 44.508934, 30.651493>,  <37.615944, 44.632359, 30.886763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305790, 44.508934, 30.651493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078178, 44.494862, 30.322866>,  <37.941612, 44.486420, 30.125690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078178, 44.494862, 30.322866>,  <38.305790, 44.508934, 30.651493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078178, 44.494862, 30.322866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666647, 0.565207, -0.485925,
		0.481449, -0.824199, -0.298166,
		-0.569024, -0.035177, -0.821568,
		37.907471, 44.484310, 30.076397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727139, 44.398972, 30.111422>,  <38.305790, 44.508934, 30.651493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727139, 44.398972, 30.111422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395084, 44.559025, 29.956104>,  <38.195850, 44.655056, 29.862915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395084, 44.559025, 29.956104>,  <38.727139, 44.398972, 30.111422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395084, 44.559025, 29.956104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552516, 0.683839, -0.476540,
		0.074850, -0.610130, -0.788758,
		-0.830135, 0.400132, -0.388292,
		38.146046, 44.679066, 29.839617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924210, 44.487968, 29.480154>,  <38.727139, 44.398972, 30.111422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924210, 44.487968, 29.480154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611095, 44.731609, 29.531128>,  <38.423225, 44.877792, 29.561712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611095, 44.731609, 29.531128>,  <38.924210, 44.487968, 29.480154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611095, 44.731609, 29.531128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483711, 0.724409, -0.491178,
		-0.391491, -0.322847, -0.861687,
		-0.782789, 0.609099, 0.127435,
		38.376259, 44.914337, 29.569359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836819, 44.922474, 28.916180>,  <38.924210, 44.487968, 29.480154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836819, 44.922474, 28.916180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636913, 45.144581, 29.182083>,  <38.516968, 45.277847, 29.341625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636913, 45.144581, 29.182083>,  <38.836819, 44.922474, 28.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636913, 45.144581, 29.182083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367694, 0.830902, -0.417616,
		-0.784241, 0.035718, -0.619428,
		-0.499767, 0.555271, 0.664760,
		38.486984, 45.311161, 29.381512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029213, 45.541462, 28.637854>,  <38.836819, 44.922474, 28.916180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029213, 45.541462, 28.637854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810558, 45.650005, 28.954727>,  <38.679367, 45.715134, 29.144852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810558, 45.650005, 28.954727>,  <39.029213, 45.541462, 28.637854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810558, 45.650005, 28.954727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345604, 0.934814, -0.081740,
		-0.762723, 0.229099, -0.604786,
		-0.546636, 0.271362, 0.792182,
		38.646568, 45.731415, 29.192381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606380, 46.077667, 28.448849>,  <39.029213, 45.541462, 28.637854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606380, 46.077667, 28.448849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678276, 46.096100, 28.841902>,  <38.721413, 46.107159, 29.077734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678276, 46.096100, 28.841902>,  <38.606380, 46.077667, 28.448849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678276, 46.096100, 28.841902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442632, 0.888279, -0.122623,
		-0.878505, 0.456986, 0.139258,
		0.179737, 0.046085, 0.982635,
		38.732197, 46.109924, 29.136692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350536, 46.704655, 28.668228>,  <38.606380, 46.077667, 28.448849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350536, 46.704655, 28.668228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637817, 46.585960, 28.919985>,  <38.810184, 46.514744, 29.071039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637817, 46.585960, 28.919985>,  <38.350536, 46.704655, 28.668228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637817, 46.585960, 28.919985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510551, 0.839290, -0.186896,
		-0.472781, 0.455565, 0.754280,
		0.718203, -0.296738, 0.629390,
		38.853279, 46.496941, 29.108801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351757, 47.144787, 29.252174>,  <38.350536, 46.704655, 28.668228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351757, 47.144787, 29.252174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721790, 47.000599, 29.204378>,  <38.943810, 46.914085, 29.175701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721790, 47.000599, 29.204378>,  <38.351757, 47.144787, 29.252174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721790, 47.000599, 29.204378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347120, 0.930250, -0.118926,
		0.154024, 0.068540, 0.985687,
		0.925086, -0.360469, -0.119489,
		38.999317, 46.892460, 29.168531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873882, 47.517136, 29.670380>,  <38.351757, 47.144787, 29.252174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873882, 47.517136, 29.670380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075607, 47.367214, 29.359205>,  <39.196644, 47.277260, 29.172501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075607, 47.367214, 29.359205>,  <38.873882, 47.517136, 29.670380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075607, 47.367214, 29.359205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372703, 0.907137, -0.195435,
		0.778946, -0.191379, 0.597174,
		0.504317, -0.374802, -0.777938,
		39.226902, 47.254772, 29.125824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569363, 47.697968, 29.706955>,  <38.873882, 47.517136, 29.670380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569363, 47.697968, 29.706955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448078, 47.665218, 29.327196>,  <39.375305, 47.645569, 29.099340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448078, 47.665218, 29.327196>,  <39.569363, 47.697968, 29.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448078, 47.665218, 29.327196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338684, 0.921993, -0.187679,
		0.890704, -0.378453, -0.251833,
		-0.303216, -0.081875, -0.949398,
		39.357113, 47.640656, 29.042377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189587, 47.632812, 29.172579>,  <39.569363, 47.697968, 29.706955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189587, 47.632812, 29.172579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877110, 47.838993, 29.031696>,  <39.689625, 47.962704, 28.947166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877110, 47.838993, 29.031696>,  <40.189587, 47.632812, 29.172579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877110, 47.838993, 29.031696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624213, 0.653988, -0.427385,
		0.010041, -0.553721, -0.832642,
		-0.781190, 0.515455, -0.352206,
		39.642754, 47.993629, 28.926035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959076, 47.337086, 29.434872>,  <40.189587, 47.632812, 29.172579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959076, 47.337086, 29.434872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902767, 47.527973, 29.781847>,  <40.868984, 47.642506, 29.990032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902767, 47.527973, 29.781847>,  <40.959076, 47.337086, 29.434872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902767, 47.527973, 29.781847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385537, -0.780577, 0.491997,
		0.911891, 0.403687, -0.074104,
		-0.140769, 0.477218, 0.867437,
		40.860535, 47.671139, 30.042078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542976, 47.448792, 29.802692>,  <40.959076, 47.337086, 29.434872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542976, 47.448792, 29.802692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238014, 47.416973, 30.059566>,  <41.055035, 47.397881, 30.213692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238014, 47.416973, 30.059566>,  <41.542976, 47.448792, 29.802692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238014, 47.416973, 30.059566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504152, -0.695163, 0.512425,
		0.405662, 0.714437, 0.570103,
		-0.762410, -0.079547, 0.642186,
		41.009293, 47.393108, 30.252222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733067, 47.642151, 30.373392>,  <41.542976, 47.448792, 29.802692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733067, 47.642151, 30.373392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444244, 47.377636, 30.454718>,  <41.270950, 47.218929, 30.503513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444244, 47.377636, 30.454718>,  <41.733067, 47.642151, 30.373392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444244, 47.377636, 30.454718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643670, -0.534398, 0.547821,
		-0.253615, 0.526426, 0.811514,
		-0.722059, -0.661283, 0.203313,
		41.227627, 47.179253, 30.515711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441730, 47.549957, 31.178904>,  <41.733067, 47.642151, 30.373392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441730, 47.549957, 31.178904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482475, 47.256172, 30.910519>,  <41.506924, 47.079903, 30.749487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482475, 47.256172, 30.910519>,  <41.441730, 47.549957, 31.178904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482475, 47.256172, 30.910519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764412, -0.373846, 0.525275,
		-0.636631, -0.566396, 0.523352,
		0.101861, -0.734462, -0.670961,
		41.513035, 47.035835, 30.709230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585484, 46.854885, 31.252634>,  <41.441730, 47.549957, 31.178904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585484, 46.854885, 31.252634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211533, 46.975666, 31.177979>,  <40.987164, 47.048134, 31.133186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211533, 46.975666, 31.177979>,  <41.585484, 46.854885, 31.252634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211533, 46.975666, 31.177979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352339, -0.725340, 0.591387,
		0.043195, 0.618633, 0.784491,
		-0.934875, 0.301952, -0.186637,
		40.931068, 47.066250, 31.121986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272278, 46.741005, 31.869785>,  <41.585484, 46.854885, 31.252634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272278, 46.741005, 31.869785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938789, 46.822353, 31.664436>,  <40.738697, 46.871162, 31.541227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938789, 46.822353, 31.664436>,  <41.272278, 46.741005, 31.869785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938789, 46.822353, 31.664436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512781, -0.630077, 0.583146,
		-0.204868, 0.749428, 0.629593,
		-0.833718, 0.203375, -0.513375,
		40.688675, 46.883366, 31.510424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776974, 46.898735, 32.373871>,  <41.272278, 46.741005, 31.869785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776974, 46.898735, 32.373871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638805, 46.731777, 32.037666>,  <40.555904, 46.631603, 31.835943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638805, 46.731777, 32.037666>,  <40.776974, 46.898735, 32.373871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638805, 46.731777, 32.037666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589387, -0.600478, 0.540416,
		-0.730278, 0.682060, -0.038590,
		-0.345423, -0.417398, -0.840513,
		40.535179, 46.606556, 31.785513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152855, 46.725193, 32.450497>,  <40.776974, 46.898735, 32.373871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152855, 46.725193, 32.450497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222298, 46.489548, 32.134827>,  <40.263962, 46.348160, 31.945423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222298, 46.489548, 32.134827>,  <40.152855, 46.725193, 32.450497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222298, 46.489548, 32.134827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551465, -0.722082, 0.417713,
		-0.815933, 0.362687, -0.450235,
		0.173607, -0.589114, -0.789180,
		40.274380, 46.312813, 31.898073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549057, 46.491760, 32.274921>,  <40.152855, 46.725193, 32.450497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549057, 46.491760, 32.274921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801151, 46.223015, 32.119282>,  <39.952408, 46.061768, 32.025898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801151, 46.223015, 32.119282>,  <39.549057, 46.491760, 32.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801151, 46.223015, 32.119282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578733, -0.740606, 0.341425,
		-0.517560, 0.010005, -0.855588,
		0.630238, -0.671865, -0.389099,
		39.990223, 46.021454, 32.002552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124813, 45.895668, 31.954977>,  <39.549057, 46.491760, 32.274921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124813, 45.895668, 31.954977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491852, 45.744854, 32.005356>,  <39.712074, 45.654366, 32.035583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491852, 45.744854, 32.005356>,  <39.124813, 45.895668, 31.954977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491852, 45.744854, 32.005356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395572, -0.834739, 0.383057,
		-0.039293, -0.401313, -0.915098,
		0.917594, -0.377039, 0.125949,
		39.767132, 45.631741, 32.043140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074558, 45.143551, 31.665590>,  <39.124813, 45.895668, 31.954977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074558, 45.143551, 31.665590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392990, 45.167114, 31.906517>,  <39.584049, 45.181252, 32.051075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392990, 45.167114, 31.906517>,  <39.074558, 45.143551, 31.665590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392990, 45.167114, 31.906517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282572, -0.843922, 0.456014,
		0.535173, -0.533222, -0.655183,
		0.796080, 0.058910, 0.602318,
		39.631813, 45.184788, 32.087212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436951, 44.454205, 31.654119>,  <39.074558, 45.143551, 31.665590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436951, 44.454205, 31.654119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575150, 44.613583, 31.993971>,  <39.658070, 44.709209, 32.197884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575150, 44.613583, 31.993971>,  <39.436951, 44.454205, 31.654119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575150, 44.613583, 31.993971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161827, -0.866522, 0.472177,
		0.924360, -0.300630, -0.234904,
		0.345500, 0.398448, 0.849629,
		39.678799, 44.733116, 32.248859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853096, 43.912926, 31.918793>,  <39.436951, 44.454205, 31.654119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853096, 43.912926, 31.918793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767250, 44.148727, 32.230286>,  <39.715740, 44.290207, 32.417183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767250, 44.148727, 32.230286>,  <39.853096, 43.912926, 31.918793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767250, 44.148727, 32.230286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028669, -0.800772, 0.598283,
		0.976277, 0.106077, 0.188761,
		-0.214619, 0.589501, 0.778735,
		39.702866, 44.325577, 32.463905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207268, 43.697681, 32.597622>,  <39.853096, 43.912926, 31.918793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207268, 43.697681, 32.597622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899349, 43.914852, 32.731873>,  <39.714600, 44.045155, 32.812424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899349, 43.914852, 32.731873>,  <40.207268, 43.697681, 32.597622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899349, 43.914852, 32.731873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228468, -0.725351, 0.649360,
		0.596003, 0.423194, 0.682413,
		-0.769794, 0.542929, 0.335625,
		39.668411, 44.077732, 32.832561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241238, 43.563797, 33.264282>,  <40.207268, 43.697681, 32.597622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241238, 43.563797, 33.264282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864929, 43.689400, 33.213135>,  <39.639145, 43.764763, 33.182446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864929, 43.689400, 33.213135>,  <40.241238, 43.563797, 33.264282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864929, 43.689400, 33.213135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293930, -0.567379, 0.769211,
		0.168988, 0.761236, 0.626070,
		-0.940770, 0.314008, -0.127870,
		39.582699, 43.783604, 33.174774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949238, 43.512981, 33.888218>,  <40.241238, 43.563797, 33.264282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949238, 43.512981, 33.888218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609768, 43.531258, 33.677441>,  <39.406086, 43.542225, 33.550976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609768, 43.531258, 33.677441>,  <39.949238, 43.512981, 33.888218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609768, 43.531258, 33.677441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463872, -0.542951, 0.700019,
		-0.254118, 0.838520, 0.481983,
		-0.848674, 0.045691, -0.526939,
		39.355167, 43.544964, 33.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478592, 43.704357, 34.387890>,  <39.949238, 43.512981, 33.888218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478592, 43.704357, 34.387890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264626, 43.536880, 34.094341>,  <39.136246, 43.436394, 33.918213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264626, 43.536880, 34.094341>,  <39.478592, 43.704357, 34.387890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264626, 43.536880, 34.094341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481663, -0.562500, 0.672007,
		-0.694164, 0.712945, 0.099223,
		-0.534917, -0.418691, -0.733867,
		39.104149, 43.411274, 33.874180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652905, 43.844673, 34.358265>,  <39.478592, 43.704357, 34.387890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652905, 43.844673, 34.358265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724689, 43.509754, 34.151684>,  <38.767761, 43.308804, 34.027737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724689, 43.509754, 34.151684>,  <38.652905, 43.844673, 34.358265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724689, 43.509754, 34.151684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604494, -0.508032, 0.613588,
		-0.776131, 0.202077, -0.597315,
		0.179463, -0.837299, -0.516454,
		38.778530, 43.258564, 33.996746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041317, 43.363293, 34.597519>,  <38.652905, 43.844673, 34.358265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041317, 43.363293, 34.597519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270725, 43.103832, 34.397392>,  <38.408371, 42.948154, 34.277317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270725, 43.103832, 34.397392>,  <38.041317, 43.363293, 34.597519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270725, 43.103832, 34.397392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433317, -0.758527, 0.486697,
		-0.695202, -0.062336, -0.716106,
		0.573524, -0.648653, -0.500318,
		38.442783, 42.909237, 34.247295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576687, 42.849926, 34.306004>,  <38.041317, 43.363293, 34.597519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576687, 42.849926, 34.306004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943901, 42.694508, 34.337593>,  <38.164230, 42.601257, 34.356548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943901, 42.694508, 34.337593>,  <37.576687, 42.849926, 34.306004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943901, 42.694508, 34.337593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365385, -0.751713, 0.549019,
		-0.153955, -0.532876, -0.832071,
		0.918037, -0.388550, 0.078975,
		38.219311, 42.577942, 34.361286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552734, 42.296692, 34.058941>,  <37.576687, 42.849926, 34.306004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552734, 42.296692, 34.058941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850296, 42.277004, 34.325531>,  <38.028831, 42.265190, 34.485485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850296, 42.277004, 34.325531>,  <37.552734, 42.296692, 34.058941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850296, 42.277004, 34.325531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395993, -0.835813, 0.380271,
		0.538329, -0.546803, -0.641255,
		0.743903, -0.049222, 0.666473,
		38.073467, 42.262238, 34.525475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778694, 41.580856, 34.098263>,  <37.552734, 42.296692, 34.058941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778694, 41.580856, 34.098263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908245, 41.729820, 34.446152>,  <37.985973, 41.819199, 34.654884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908245, 41.729820, 34.446152>,  <37.778694, 41.580856, 34.098263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908245, 41.729820, 34.446152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282560, -0.839242, 0.464579,
		0.902920, -0.396214, -0.166581,
		0.323874, 0.372409, 0.869723,
		38.005409, 41.841541, 34.707069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946327, 41.021065, 34.408901>,  <37.778694, 41.580856, 34.098263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946327, 41.021065, 34.408901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914089, 41.282078, 34.710289>,  <37.894745, 41.438686, 34.891121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914089, 41.282078, 34.710289>,  <37.946327, 41.021065, 34.408901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914089, 41.282078, 34.710289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364154, -0.722946, 0.587146,
		0.927845, -0.227057, 0.295885,
		-0.080594, 0.652529, 0.753466,
		37.889912, 41.477837, 34.936329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073204, 40.595428, 34.940456>,  <37.946327, 41.021065, 34.408901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073204, 40.595428, 34.940456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913300, 40.911812, 35.125744>,  <37.817356, 41.101643, 35.236916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913300, 40.911812, 35.125744>,  <38.073204, 40.595428, 34.940456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913300, 40.911812, 35.125744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449034, -0.609553, 0.653309,
		0.799099, 0.053166, 0.598844,
		-0.399761, 0.790960, 0.463220,
		37.793373, 41.149101, 35.264709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223030, 40.491215, 35.536823>,  <38.073204, 40.595428, 34.940456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223030, 40.491215, 35.536823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934776, 40.761387, 35.599403>,  <37.761826, 40.923492, 35.636951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934776, 40.761387, 35.599403>,  <38.223030, 40.491215, 35.536823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934776, 40.761387, 35.599403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393284, -0.584072, 0.710062,
		0.570978, 0.450165, 0.686539,
		-0.720633, 0.675434, 0.156450,
		37.718586, 40.964016, 35.646339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136887, 40.487003, 36.285564>,  <38.223030, 40.491215, 35.536823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136887, 40.487003, 36.285564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804981, 40.635925, 36.119251>,  <37.605839, 40.725281, 36.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804981, 40.635925, 36.119251>,  <38.136887, 40.487003, 36.285564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804981, 40.635925, 36.119251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554871, -0.630470, 0.542795,
		-0.060052, 0.681098, 0.729725,
		-0.829766, 0.372308, -0.415782,
		37.556053, 40.747616, 35.994518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662586, 40.552574, 36.815865>,  <38.136887, 40.487003, 36.285564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662586, 40.552574, 36.815865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442413, 40.500481, 36.486000>,  <37.310310, 40.469223, 36.288082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442413, 40.500481, 36.486000>,  <37.662586, 40.552574, 36.815865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442413, 40.500481, 36.486000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551812, -0.684493, 0.476416,
		-0.626518, 0.717292, 0.304905,
		-0.550435, -0.130233, -0.824658,
		37.277283, 40.461411, 36.238602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949913, 40.563831, 37.113060>,  <37.662586, 40.552574, 36.815865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949913, 40.563831, 37.113060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 40.390968, 36.752953>,  <36.916313, 40.287251, 36.536888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 40.390968, 36.752953>,  <36.949913, 40.563831, 37.113060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928913, 40.390968, 36.752953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684353, -0.640965, 0.347598,
		-0.727258, 0.634351, -0.262097,
		-0.052504, -0.432160, -0.900267,
		36.913162, 40.261322, 36.482872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287251, 40.666370, 36.980537>,  <36.949913, 40.563831, 37.113060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287251, 40.666370, 36.980537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427628, 40.377632, 36.741951>,  <36.511856, 40.204388, 36.598797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427628, 40.377632, 36.741951>,  <36.287251, 40.666370, 36.980537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427628, 40.377632, 36.741951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738073, -0.605246, 0.298205,
		-0.576268, 0.335583, -0.745184,
		0.350947, -0.721846, -0.596469,
		36.532913, 40.161079, 36.563011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723251, 40.285591, 36.829018>,  <36.287251, 40.666370, 36.980537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723251, 40.285591, 36.829018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005104, 40.024025, 36.718819>,  <36.174213, 39.867085, 36.652699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005104, 40.024025, 36.718819>,  <35.723251, 40.285591, 36.829018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005104, 40.024025, 36.718819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540929, -0.746293, 0.387870,
		-0.459233, -0.124281, -0.879579,
		0.704628, -0.653912, -0.275495,
		36.216492, 39.827850, 36.636169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382084, 39.636868, 36.360546>,  <35.723251, 40.285591, 36.829018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382084, 39.636868, 36.360546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728088, 39.519844, 36.523598>,  <35.935692, 39.449631, 36.621429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728088, 39.519844, 36.523598>,  <35.382084, 39.636868, 36.360546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728088, 39.519844, 36.523598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450850, -0.809746, 0.375561,
		0.220205, -0.508646, -0.832340,
		0.865011, -0.292560, 0.407633,
		35.987591, 39.432076, 36.645889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372040, 38.906414, 36.299324>,  <35.382084, 39.636868, 36.360546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372040, 38.906414, 36.299324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654053, 39.004021, 36.565674>,  <35.823261, 39.062584, 36.725483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654053, 39.004021, 36.565674>,  <35.372040, 38.906414, 36.299324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654053, 39.004021, 36.565674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151897, -0.865190, 0.477885,
		0.692715, -0.438069, -0.572924,
		0.705034, 0.244012, 0.665871,
		35.865562, 39.077225, 36.765434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831383, 38.268333, 36.410969>,  <35.372040, 38.906414, 36.299324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831383, 38.268333, 36.410969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828514, 38.522808, 36.719570>,  <35.826794, 38.675491, 36.904732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828514, 38.522808, 36.719570>,  <35.831383, 38.268333, 36.410969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828514, 38.522808, 36.719570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195228, -0.757566, 0.622880,
		0.980731, -0.146151, 0.129636,
		-0.007173, 0.636187, 0.771501,
		35.826363, 38.713665, 36.951019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941486, 37.831768, 36.956387>,  <35.831383, 38.268333, 36.410969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941486, 37.831768, 36.956387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832485, 38.154736, 37.165695>,  <35.767082, 38.348515, 37.291283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832485, 38.154736, 37.165695>,  <35.941486, 37.831768, 36.956387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832485, 38.154736, 37.165695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281057, -0.586936, 0.759285,
		0.920189, 0.059841, 0.386874,
		-0.272506, 0.807419, 0.523273,
		35.750732, 38.396961, 37.322678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230072, 37.780296, 37.663486>,  <35.941486, 37.831768, 36.956387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230072, 37.780296, 37.663486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917309, 38.029644, 37.665779>,  <35.729652, 38.179253, 37.667156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917309, 38.029644, 37.665779>,  <36.230072, 37.780296, 37.663486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917309, 38.029644, 37.665779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489348, -0.619444, 0.613863,
		0.386219, 0.477175, 0.789392,
		-0.781904, 0.623372, 0.005736,
		35.682739, 38.216656, 37.667500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039909, 37.828922, 38.351486>,  <36.230072, 37.780296, 37.663486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039909, 37.828922, 38.351486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707649, 37.964855, 38.175060>,  <35.508293, 38.046413, 38.069202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707649, 37.964855, 38.175060>,  <36.039909, 37.828922, 38.351486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707649, 37.964855, 38.175060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556152, -0.544572, 0.627803,
		-0.026848, 0.766784, 0.641344,
		-0.830647, 0.339830, -0.441069,
		35.458454, 38.066803, 38.042740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668373, 37.900772, 38.888447>,  <36.039909, 37.828922, 38.351486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668373, 37.900772, 38.888447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414196, 37.894051, 38.579659>,  <35.261692, 37.890018, 38.394386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414196, 37.894051, 38.579659>,  <35.668373, 37.900772, 38.888447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414196, 37.894051, 38.579659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573934, -0.658533, 0.486759,
		-0.516545, 0.752364, 0.408815,
		-0.635439, -0.016800, -0.771969,
		35.223564, 37.889011, 38.348068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992229, 37.987656, 39.184010>,  <35.668373, 37.900772, 38.888447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992229, 37.987656, 39.184010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889751, 37.843422, 38.825268>,  <34.828266, 37.756882, 38.610023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889751, 37.843422, 38.825268>,  <34.992229, 37.987656, 39.184010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889751, 37.843422, 38.825268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598391, -0.669501, 0.440110,
		-0.759140, 0.649422, -0.044247,
		-0.256194, -0.360582, -0.896853,
		34.812893, 37.735249, 38.556213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270226, 37.810966, 39.314587>,  <34.992229, 37.987656, 39.184010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270226, 37.810966, 39.314587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385773, 37.616379, 38.984760>,  <34.455101, 37.499626, 38.786865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385773, 37.616379, 38.984760>,  <34.270226, 37.810966, 39.314587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385773, 37.616379, 38.984760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707895, -0.688390, 0.158129,
		-0.644545, 0.538024, -0.543224,
		0.288872, -0.486467, -0.824562,
		34.472435, 37.470440, 38.737392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623840, 37.613529, 38.898338>,  <34.270226, 37.810966, 39.314587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623840, 37.613529, 38.898338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915619, 37.357658, 38.801418>,  <34.090687, 37.204136, 38.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915619, 37.357658, 38.801418>,  <33.623840, 37.613529, 38.898338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915619, 37.357658, 38.801418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646928, -0.760231, 0.059436,
		-0.222227, 0.113398, -0.968378,
		0.729451, -0.639679, -0.242304,
		34.134453, 37.165756, 38.728725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297939, 37.251705, 38.385426>,  <33.623840, 37.613529, 38.898338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297939, 37.251705, 38.385426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614658, 37.025921, 38.478748>,  <33.804691, 36.890450, 38.534744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614658, 37.025921, 38.478748>,  <33.297939, 37.251705, 38.385426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614658, 37.025921, 38.478748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581208, -0.813747, 0.003728,
		0.187750, -0.138553, -0.972396,
		0.791800, -0.564464, 0.233309,
		33.852200, 36.856583, 38.548740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299885, 36.602497, 37.914230>,  <33.297939, 37.251705, 38.385426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299885, 36.602497, 37.914230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514671, 36.493435, 38.233562>,  <33.643543, 36.427998, 38.425163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514671, 36.493435, 38.233562>,  <33.299885, 36.602497, 37.914230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514671, 36.493435, 38.233562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444408, -0.895797, -0.007032,
		0.717059, -0.351008, -0.602179,
		0.536962, -0.272656, 0.798330,
		33.675758, 36.411636, 38.473061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596661, 35.870319, 37.790623>,  <33.299885, 36.602497, 37.914230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596661, 35.870319, 37.790623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579758, 35.952484, 38.181728>,  <33.569618, 36.001785, 38.416389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579758, 35.952484, 38.181728>,  <33.596661, 35.870319, 37.790623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579758, 35.952484, 38.181728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427712, -0.888146, 0.168105,
		0.902927, -0.411098, 0.125386,
		-0.042253, 0.205415, 0.977762,
		33.567081, 36.014111, 38.475056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870609, 35.294006, 38.071732>,  <33.596661, 35.870319, 37.790623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870609, 35.294006, 38.071732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682522, 35.449192, 38.388813>,  <33.569668, 35.542305, 38.579063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682522, 35.449192, 38.388813>,  <33.870609, 35.294006, 38.071732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682522, 35.449192, 38.388813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288214, -0.916454, 0.277569,
		0.834163, -0.097950, 0.542750,
		-0.470218, 0.387966, 0.792703,
		33.541458, 35.565582, 38.626625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959984, 34.855583, 38.713608>,  <33.870609, 35.294006, 38.071732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959984, 34.855583, 38.713608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628437, 35.070618, 38.775547>,  <33.429508, 35.199638, 38.812710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628437, 35.070618, 38.775547>,  <33.959984, 34.855583, 38.713608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628437, 35.070618, 38.775547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488216, -0.830226, 0.269016,
		0.273180, 0.147379, 0.950606,
		-0.828866, 0.537591, 0.154848,
		33.379776, 35.231895, 38.822002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717640, 34.812870, 38.384983>,  <33.959984, 34.855583, 38.713608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717640, 34.812870, 38.384983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004551, 34.542816, 38.316044>,  <35.176697, 34.380783, 38.274681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004551, 34.542816, 38.316044>,  <34.717640, 34.812870, 38.384983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004551, 34.542816, 38.316044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656236, 0.737693, -0.158626,
		0.234233, 0.000679, 0.972180,
		0.717279, -0.675135, -0.172346,
		35.219734, 34.340275, 38.264339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289379, 35.018524, 38.728184>,  <34.717640, 34.812870, 38.384983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289379, 35.018524, 38.728184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461884, 34.764801, 38.471539>,  <35.565388, 34.612568, 38.317551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461884, 34.764801, 38.471539>,  <35.289379, 35.018524, 38.728184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461884, 34.764801, 38.471539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844527, 0.534040, 0.039692,
		0.317469, -0.558976, 0.766002,
		0.431263, -0.634308, -0.641611,
		35.591263, 34.574509, 38.279057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996632, 34.857983, 38.977459>,  <35.289379, 35.018524, 38.728184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996632, 34.857983, 38.977459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992725, 34.778965, 38.585361>,  <35.990383, 34.731552, 38.350101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992725, 34.778965, 38.585361>,  <35.996632, 34.857983, 38.977459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992725, 34.778965, 38.585361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802702, 0.583028, -0.125494,
		0.596301, -0.788069, 0.152880,
		-0.009765, -0.197549, -0.980245,
		35.989796, 34.719700, 38.291286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719456, 34.852367, 38.786598>,  <35.996632, 34.857983, 38.977459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719456, 34.852367, 38.786598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540947, 34.891350, 38.430767>,  <36.433842, 34.914738, 38.217270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540947, 34.891350, 38.430767>,  <36.719456, 34.852367, 38.786598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540947, 34.891350, 38.430767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735598, 0.606060, -0.302634,
		0.509643, -0.789426, -0.342155,
		-0.446273, 0.097453, -0.889575,
		36.407066, 34.920586, 38.163895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260075, 34.678959, 38.314869>,  <36.719456, 34.852367, 38.786598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260075, 34.678959, 38.314869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989487, 34.916576, 38.140743>,  <36.827133, 35.059147, 38.036266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989487, 34.916576, 38.140743>,  <37.260075, 34.678959, 38.314869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989487, 34.916576, 38.140743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731570, 0.610071, -0.304332,
		0.084789, -0.524338, -0.847278,
		-0.676473, 0.594040, -0.435317,
		36.786545, 35.094788, 38.010147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611225, 34.879955, 37.718662>,  <37.260075, 34.678959, 38.314869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611225, 34.879955, 37.718662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326294, 35.156406, 37.767540>,  <37.155334, 35.322277, 37.796867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326294, 35.156406, 37.767540>,  <37.611225, 34.879955, 37.718662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326294, 35.156406, 37.767540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606851, 0.693973, -0.387471,
		-0.352588, -0.201856, -0.913748,
		-0.712330, 0.691127, 0.122190,
		37.112595, 35.363743, 37.804195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549664, 35.203484, 37.104763>,  <37.611225, 34.879955, 37.718662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549664, 35.203484, 37.104763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423576, 35.450321, 37.393162>,  <37.347923, 35.598423, 37.566200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423576, 35.450321, 37.393162>,  <37.549664, 35.203484, 37.104763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423576, 35.450321, 37.393162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500202, 0.753666, -0.426364,
		-0.806496, 0.226246, -0.546239,
		-0.315218, 0.617091, 0.720997,
		37.329010, 35.635448, 37.609463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349930, 35.808956, 36.704548>,  <37.549664, 35.203484, 37.104763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349930, 35.808956, 36.704548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387341, 35.954247, 37.075348>,  <37.409786, 36.041420, 37.297829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387341, 35.954247, 37.075348>,  <37.349930, 35.808956, 36.704548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387341, 35.954247, 37.075348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449681, 0.815287, -0.364821,
		-0.888279, 0.450973, -0.087083,
		0.093526, 0.363223, 0.926996,
		37.415398, 36.063213, 37.353447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352879, 36.511414, 36.533154>,  <37.349930, 35.808956, 36.704548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352879, 36.511414, 36.533154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493435, 36.497929, 36.907402>,  <37.577770, 36.489838, 37.131950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493435, 36.497929, 36.907402>,  <37.352879, 36.511414, 36.533154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493435, 36.497929, 36.907402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578078, 0.793911, -0.188500,
		-0.736445, 0.607099, 0.298462,
		0.351390, -0.033715, 0.935622,
		37.598850, 36.487816, 37.188087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231922, 37.206467, 36.841152>,  <37.352879, 36.511414, 36.533154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231922, 37.206467, 36.841152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536919, 37.023468, 37.024151>,  <37.719917, 36.913670, 37.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536919, 37.023468, 37.024151>,  <37.231922, 37.206467, 36.841152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536919, 37.023468, 37.024151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568924, 0.810836, -0.137369,
		-0.308112, 0.365026, 0.878535,
		0.762491, -0.457495, 0.457500,
		37.765667, 36.886219, 37.161400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450352, 37.799633, 37.283062>,  <37.231922, 37.206467, 36.841152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450352, 37.799633, 37.283062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749241, 37.534168, 37.269131>,  <37.928574, 37.374889, 37.260773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749241, 37.534168, 37.269131>,  <37.450352, 37.799633, 37.283062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749241, 37.534168, 37.269131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662315, 0.747974, -0.043290,
		0.054778, 0.009282, 0.998455,
		0.747221, -0.663663, -0.034825,
		37.973408, 37.335068, 37.258682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034176, 38.075497, 37.667198>,  <37.450352, 37.799633, 37.283062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034176, 38.075497, 37.667198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197441, 37.806671, 37.420059>,  <38.295403, 37.645378, 37.271774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197441, 37.806671, 37.420059>,  <38.034176, 38.075497, 37.667198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197441, 37.806671, 37.420059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627892, 0.697957, -0.344395,
		0.662685, -0.247370, 0.706864,
		0.408168, -0.672060, -0.617847,
		38.319893, 37.605053, 37.234707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804371, 37.987095, 37.842888>,  <38.034176, 38.075497, 37.667198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804371, 37.987095, 37.842888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768875, 37.862423, 37.464474>,  <38.747578, 37.787621, 37.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768875, 37.862423, 37.464474>,  <38.804371, 37.987095, 37.842888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768875, 37.862423, 37.464474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817738, 0.519493, -0.247852,
		0.568709, -0.795603, 0.208772,
		-0.088736, -0.311677, -0.946036,
		38.742256, 37.768921, 37.180664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557945, 37.907272, 37.652142>,  <38.804371, 37.987095, 37.842888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557945, 37.907272, 37.652142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337109, 37.920338, 37.318886>,  <39.204605, 37.928177, 37.118931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337109, 37.920338, 37.318886>,  <39.557945, 37.907272, 37.652142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337109, 37.920338, 37.318886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633356, 0.666299, -0.393580,
		0.542265, -0.744969, -0.388548,
		-0.552094, 0.032665, -0.833142,
		39.171482, 37.930138, 37.068943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112843, 37.972122, 37.194260>,  <39.557945, 37.907272, 37.652142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112843, 37.972122, 37.194260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779427, 38.058765, 36.990967>,  <39.579376, 38.110752, 36.868992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779427, 38.058765, 36.990967>,  <40.112843, 37.972122, 37.194260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779427, 38.058765, 36.990967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519504, 0.620310, -0.587649,
		0.187973, -0.753855, -0.629578,
		-0.833536, 0.216606, -0.508232,
		39.529366, 38.123749, 36.838497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217010, 37.808678, 36.416946>,  <40.112843, 37.972122, 37.194260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217010, 37.808678, 36.416946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930027, 38.083237, 36.464485>,  <39.757839, 38.247971, 36.493008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930027, 38.083237, 36.464485>,  <40.217010, 37.808678, 36.416946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930027, 38.083237, 36.464485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465346, 0.599200, -0.651469,
		-0.518375, -0.412096, -0.749309,
		-0.717454, 0.686393, 0.118843,
		39.714790, 38.289154, 36.500137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065666, 37.998810, 35.780724>,  <40.217010, 37.808678, 36.416946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065666, 37.998810, 35.780724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940041, 38.296406, 36.016636>,  <39.864666, 38.474964, 36.158184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940041, 38.296406, 36.016636>,  <40.065666, 37.998810, 35.780724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940041, 38.296406, 36.016636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420066, 0.665992, -0.616441,
		-0.851415, 0.054144, -0.521690,
		-0.314065, 0.743991, 0.589780,
		39.845821, 38.519604, 36.193569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759594, 38.399544, 35.333900>,  <40.065666, 37.998810, 35.780724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759594, 38.399544, 35.333900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848957, 38.618549, 35.656467>,  <39.902576, 38.749954, 35.850010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848957, 38.618549, 35.656467>,  <39.759594, 38.399544, 35.333900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848957, 38.618549, 35.656467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413520, 0.695951, -0.587073,
		-0.882661, 0.464627, -0.070929,
		0.223407, 0.547516, 0.806421,
		39.915977, 38.782803, 35.898396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458897, 39.026054, 35.174744>,  <39.759594, 38.399544, 35.333900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458897, 39.026054, 35.174744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741058, 39.066029, 35.455433>,  <39.910355, 39.090012, 35.623844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741058, 39.066029, 35.455433>,  <39.458897, 39.026054, 35.174744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741058, 39.066029, 35.455433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356838, 0.805329, -0.473404,
		-0.612427, 0.584344, 0.532424,
		0.705408, 0.099937, 0.701721,
		39.952682, 39.096008, 35.665951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302559, 39.771027, 35.357792>,  <39.458897, 39.026054, 35.174744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302559, 39.771027, 35.357792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661034, 39.667473, 35.501923>,  <39.876118, 39.605339, 35.588402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661034, 39.667473, 35.501923>,  <39.302559, 39.771027, 35.357792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661034, 39.667473, 35.501923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421839, 0.748859, -0.511138,
		-0.137503, 0.610071, 0.780324,
		0.896183, -0.258888, 0.360322,
		39.929890, 39.589806, 35.610020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506962, 40.477657, 35.456947>,  <39.302559, 39.771027, 35.357792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506962, 40.477657, 35.456947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806019, 40.214134, 35.423462>,  <39.985455, 40.056023, 35.403370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806019, 40.214134, 35.423462>,  <39.506962, 40.477657, 35.456947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806019, 40.214134, 35.423462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569867, 0.701162, -0.428513,
		0.341005, 0.272667, 0.899649,
		0.747641, -0.658805, -0.083716,
		40.030312, 40.016491, 35.398346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004166, 40.819729, 35.589211>,  <39.506962, 40.477657, 35.456947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004166, 40.819729, 35.589211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176144, 40.528339, 35.375870>,  <40.279331, 40.353504, 35.247864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176144, 40.528339, 35.375870>,  <40.004166, 40.819729, 35.589211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176144, 40.528339, 35.375870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525862, 0.682253, -0.507937,
		0.733903, -0.062084, 0.676411,
		0.429948, -0.728476, -0.533355,
		40.305130, 40.309795, 35.215862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688889, 41.068424, 35.402279>,  <40.004166, 40.819729, 35.589211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688889, 41.068424, 35.402279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619781, 40.781284, 35.132511>,  <40.578320, 40.609001, 34.970650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619781, 40.781284, 35.132511>,  <40.688889, 41.068424, 35.402279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619781, 40.781284, 35.132511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413444, 0.568621, -0.711150,
		0.893989, -0.401696, 0.198554,
		-0.172764, -0.717851, -0.674420,
		40.567951, 40.565929, 34.930183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282303, 40.831047, 34.973896>,  <40.688889, 41.068424, 35.402279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282303, 40.831047, 34.973896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955315, 40.751534, 34.757664>,  <40.759121, 40.703823, 34.627926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955315, 40.751534, 34.757664>,  <41.282303, 40.831047, 34.973896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955315, 40.751534, 34.757664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338889, 0.592893, -0.730501,
		0.465719, -0.780360, -0.417307,
		-0.817472, -0.198787, -0.540577,
		40.710072, 40.691898, 34.595490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397560, 41.175217, 34.314117>,  <41.282303, 40.831047, 34.973896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397560, 41.175217, 34.314117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041000, 41.012733, 34.233719>,  <40.827065, 40.915241, 34.185478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041000, 41.012733, 34.233719>,  <41.397560, 41.175217, 34.314117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041000, 41.012733, 34.233719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093520, 0.598808, -0.795414,
		0.443465, -0.690234, -0.571766,
		-0.891399, -0.406210, -0.201000,
		40.773582, 40.890869, 34.173420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526665, 40.880135, 33.624413>,  <41.397560, 41.175217, 34.314117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526665, 40.880135, 33.624413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140133, 40.949833, 33.700142>,  <40.908215, 40.991653, 33.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140133, 40.949833, 33.700142>,  <41.526665, 40.880135, 33.624413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140133, 40.949833, 33.700142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071811, 0.523925, -0.848732,
		-0.247080, -0.833751, -0.493772,
		-0.966331, 0.174246, 0.189324,
		40.850235, 41.002106, 33.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158997, 40.656231, 33.041172>,  <41.526665, 40.880135, 33.624413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158997, 40.656231, 33.041172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932167, 40.930748, 33.223351>,  <40.796070, 41.095459, 33.332657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932167, 40.930748, 33.223351>,  <41.158997, 40.656231, 33.041172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932167, 40.930748, 33.223351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001523, 0.553816, -0.832638,
		-0.823667, -0.471472, -0.315098,
		-0.567072, 0.686296, 0.455442,
		40.762047, 41.136639, 33.359982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586185, 40.729645, 32.603207>,  <41.158997, 40.656231, 33.041172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586185, 40.729645, 32.603207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620556, 41.070538, 32.809628>,  <40.641178, 41.275074, 32.933479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620556, 41.070538, 32.809628>,  <40.586185, 40.729645, 32.603207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620556, 41.070538, 32.809628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041646, 0.520590, -0.852791,
		-0.995430, 0.051790, 0.080227,
		0.085931, 0.852235, 0.516054,
		40.646336, 41.326206, 32.964443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177670, 41.179413, 32.291496>,  <40.586185, 40.729645, 32.603207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177670, 41.179413, 32.291496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398369, 41.429440, 32.512356>,  <40.530788, 41.579456, 32.644871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398369, 41.429440, 32.512356>,  <40.177670, 41.179413, 32.291496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398369, 41.429440, 32.512356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051010, 0.686091, -0.725725,
		-0.832450, 0.372252, 0.410434,
		0.551747, 0.625066, 0.552148,
		40.563892, 41.616959, 32.678001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818081, 41.709133, 32.094482>,  <40.177670, 41.179413, 32.291496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818081, 41.709133, 32.094482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161728, 41.856205, 32.236881>,  <40.367916, 41.944447, 32.322319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161728, 41.856205, 32.236881>,  <39.818081, 41.709133, 32.094482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161728, 41.856205, 32.236881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065009, 0.611565, -0.788519,
		-0.507633, 0.700574, 0.501504,
		0.859118, 0.367676, 0.355994,
		40.419464, 41.966507, 32.343681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718304, 42.325279, 32.033257>,  <39.818081, 41.709133, 32.094482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718304, 42.325279, 32.033257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117237, 42.297970, 32.043621>,  <40.356598, 42.281582, 32.049839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117237, 42.297970, 32.043621>,  <39.718304, 42.325279, 32.033257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117237, 42.297970, 32.043621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066541, 0.703365, -0.707708,
		0.030092, 0.707542, 0.706030,
		0.997330, -0.068276, 0.025915,
		40.416435, 42.277489, 32.051395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925301, 43.083481, 32.081390>,  <39.718304, 42.325279, 32.033257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925301, 43.083481, 32.081390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239555, 42.871712, 31.953337>,  <40.428108, 42.744652, 31.876505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239555, 42.871712, 31.953337>,  <39.925301, 43.083481, 32.081390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239555, 42.871712, 31.953337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009205, 0.507385, -0.861670,
		0.618617, 0.679908, 0.393748,
		0.785639, -0.529420, -0.320136,
		40.475246, 42.712887, 31.857296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571598, 43.568298, 31.963524>,  <39.925301, 43.083481, 32.081390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571598, 43.568298, 31.963524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639259, 43.228664, 31.763346>,  <40.679855, 43.024883, 31.643240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639259, 43.228664, 31.763346>,  <40.571598, 43.568298, 31.963524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639259, 43.228664, 31.763346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275051, 0.528254, -0.803302,
		0.946433, -0.001769, 0.322896,
		0.169150, -0.849085, -0.500444,
		40.690006, 42.973938, 31.613213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216286, 43.584766, 31.712339>,  <40.571598, 43.568298, 31.963524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216286, 43.584766, 31.712339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025520, 43.344025, 31.456116>,  <40.911060, 43.199577, 31.302382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025520, 43.344025, 31.456116>,  <41.216286, 43.584766, 31.712339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025520, 43.344025, 31.456116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364633, 0.527633, -0.767233,
		0.799747, -0.599475, -0.032179,
		-0.476916, -0.601858, -0.640561,
		40.882446, 43.163467, 31.263947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563957, 43.728554, 31.183136>,  <41.216286, 43.584766, 31.712339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563957, 43.728554, 31.183136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280842, 43.526138, 30.985968>,  <41.110973, 43.404690, 30.867666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280842, 43.526138, 30.985968>,  <41.563957, 43.728554, 31.183136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280842, 43.526138, 30.985968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183214, 0.542395, -0.819903,
		0.682257, -0.670624, -0.291186,
		-0.707784, -0.506035, -0.492920,
		41.068508, 43.374329, 30.838091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743885, 43.537605, 30.485506>,  <41.563957, 43.728554, 31.183136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743885, 43.537605, 30.485506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344624, 43.527473, 30.463417>,  <41.105068, 43.521393, 30.450163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344624, 43.527473, 30.463417>,  <41.743885, 43.537605, 30.485506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344624, 43.527473, 30.463417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027285, 0.625219, -0.779973,
		0.054283, -0.780039, -0.623373,
		-0.998153, -0.025330, -0.055222,
		41.045177, 43.519875, 30.446850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681747, 43.581535, 29.727194>,  <41.743885, 43.537605, 30.485506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681747, 43.581535, 29.727194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328232, 43.674831, 29.889437>,  <41.116123, 43.730808, 29.986782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328232, 43.674831, 29.889437>,  <41.681747, 43.581535, 29.727194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328232, 43.674831, 29.889437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151776, 0.677099, -0.720070,
		-0.442588, -0.697950, -0.563011,
		-0.883787, 0.233243, 0.405608,
		41.063095, 43.744804, 30.011120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826809, 43.441761, 28.985779>,  <41.681747, 43.581535, 29.727194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826809, 43.441761, 28.985779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924183, 43.289234, 28.629053>,  <41.982609, 43.197720, 28.415018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924183, 43.289234, 28.629053>,  <41.826809, 43.441761, 28.985779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924183, 43.289234, 28.629053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381377, -0.883046, 0.273464,
		-0.891791, 0.273547, -0.360391,
		0.243436, -0.381317, -0.891816,
		41.997215, 43.174839, 28.361509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270058, 43.018242, 28.812357>,  <41.826809, 43.441761, 28.985779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270058, 43.018242, 28.812357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578468, 42.871098, 28.604435>,  <41.763515, 42.782810, 28.479681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578468, 42.871098, 28.604435>,  <41.270058, 43.018242, 28.812357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578468, 42.871098, 28.604435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200225, -0.914915, 0.350486,
		-0.604508, -0.166155, -0.779078,
		0.771025, -0.367862, -0.519805,
		41.809776, 42.760738, 28.448494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015339, 42.357800, 28.656578>,  <41.270058, 43.018242, 28.812357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015339, 42.357800, 28.656578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410686, 42.356075, 28.595768>,  <41.647896, 42.355042, 28.559282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410686, 42.356075, 28.595768>,  <41.015339, 42.357800, 28.656578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410686, 42.356075, 28.595768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049321, -0.936495, 0.347195,
		-0.143866, -0.350654, -0.925389,
		0.988367, -0.004309, -0.152025,
		41.707195, 42.354782, 28.550161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125263, 41.637356, 28.312988>,  <41.015339, 42.357800, 28.656578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125263, 41.637356, 28.312988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485867, 41.750183, 28.444273>,  <41.702229, 41.817879, 28.523045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485867, 41.750183, 28.444273>,  <41.125263, 41.637356, 28.312988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485867, 41.750183, 28.444273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112434, -0.885020, 0.451772,
		0.417907, -0.370373, -0.829565,
		0.901506, 0.282070, 0.328214,
		41.756317, 41.834805, 28.542738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654720, 41.087242, 28.248985>,  <41.125263, 41.637356, 28.312988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654720, 41.087242, 28.248985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805134, 41.332989, 28.526445>,  <41.895382, 41.480438, 28.692923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805134, 41.332989, 28.526445>,  <41.654720, 41.087242, 28.248985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805134, 41.332989, 28.526445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069039, -0.765089, 0.640213,
		0.924031, -0.192852, -0.330114,
		0.376033, 0.614367, 0.693651,
		41.917942, 41.517300, 28.734541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221443, 40.695774, 28.519371>,  <41.654720, 41.087242, 28.248985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221443, 40.695774, 28.519371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136169, 40.962090, 28.805386>,  <42.085003, 41.121880, 28.976994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136169, 40.962090, 28.805386>,  <42.221443, 40.695774, 28.519371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136169, 40.962090, 28.805386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128800, -0.706322, 0.696074,
		0.968484, 0.240492, 0.064827,
		-0.213189, 0.665787, 0.715037,
		42.072212, 41.161827, 29.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790550, 40.664684, 29.132475>,  <42.221443, 40.695774, 28.519371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790550, 40.664684, 29.132475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448708, 40.828751, 29.259855>,  <42.243603, 40.927189, 29.336283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448708, 40.828751, 29.259855>,  <42.790550, 40.664684, 29.132475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448708, 40.828751, 29.259855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033098, -0.568987, 0.821680,
		0.518218, 0.712754, 0.472685,
		-0.854608, 0.410164, 0.318450,
		42.192326, 40.951801, 29.355391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743851, 40.490879, 29.778915>,  <42.790550, 40.664684, 29.132475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743851, 40.490879, 29.778915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360638, 40.597736, 29.737343>,  <42.130711, 40.661850, 29.712400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360638, 40.597736, 29.737343>,  <42.743851, 40.490879, 29.778915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360638, 40.597736, 29.737343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197555, -0.352629, 0.914672,
		0.207702, 0.896820, 0.390607,
		-0.958035, 0.267146, -0.103930,
		42.073227, 40.677879, 29.706163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616215, 40.774635, 30.356340>,  <42.743851, 40.490879, 29.778915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616215, 40.774635, 30.356340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260685, 40.680767, 30.198900>,  <42.047367, 40.624447, 30.104437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260685, 40.680767, 30.198900>,  <42.616215, 40.774635, 30.356340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260685, 40.680767, 30.198900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328556, -0.272396, 0.904351,
		-0.319437, 0.933130, 0.165011,
		-0.888826, -0.234667, -0.393599,
		41.994038, 40.610367, 30.080820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120941, 41.095150, 30.799997>,  <42.616215, 40.774635, 30.356340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120941, 41.095150, 30.799997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944592, 40.782906, 30.622784>,  <41.838783, 40.595558, 30.516457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944592, 40.782906, 30.622784>,  <42.120941, 41.095150, 30.799997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944592, 40.782906, 30.622784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355260, -0.301523, 0.884802,
		-0.824270, 0.547478, -0.144387,
		-0.440873, -0.780610, -0.443033,
		41.812328, 40.548721, 30.489874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399605, 40.990482, 31.126245>,  <42.120941, 41.095150, 30.799997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399605, 40.990482, 31.126245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461716, 40.638123, 30.947403>,  <41.498981, 40.426708, 30.840097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461716, 40.638123, 30.947403>,  <41.399605, 40.990482, 31.126245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461716, 40.638123, 30.947403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391315, -0.470422, 0.790933,
		-0.907062, 0.052144, -0.417756,
		0.155279, -0.880899, -0.447106,
		41.508301, 40.373852, 30.813271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739857, 40.599079, 31.071783>,  <41.399605, 40.990482, 31.126245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739857, 40.599079, 31.071783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034607, 40.329491, 31.050684>,  <41.211456, 40.167740, 31.038025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034607, 40.329491, 31.050684>,  <40.739857, 40.599079, 31.071783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034607, 40.329491, 31.050684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456320, -0.553442, 0.696760,
		-0.498785, -0.489356, -0.715363,
		0.736876, -0.673967, -0.052745,
		41.255669, 40.127300, 31.034861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344051, 40.004284, 31.242889>,  <40.739857, 40.599079, 31.071783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344051, 40.004284, 31.242889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727161, 39.892395, 31.269512>,  <40.957027, 39.825260, 31.285486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727161, 39.892395, 31.269512>,  <40.344051, 40.004284, 31.242889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727161, 39.892395, 31.269512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252838, -0.709106, 0.658211,
		-0.136919, -0.647244, -0.749886,
		0.957772, -0.279721, 0.066559,
		41.014492, 39.808479, 31.289480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309097, 39.234329, 31.174246>,  <40.344051, 40.004284, 31.242889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309097, 39.234329, 31.174246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662891, 39.336807, 31.330223>,  <40.875168, 39.398293, 31.423809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662891, 39.336807, 31.330223>,  <40.309097, 39.234329, 31.174246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662891, 39.336807, 31.330223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061761, -0.764117, 0.642114,
		0.462470, -0.592021, -0.660025,
		0.884481, 0.256195, 0.389945,
		40.928234, 39.413666, 31.447206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651489, 38.623402, 31.261309>,  <40.309097, 39.234329, 31.174246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651489, 38.623402, 31.261309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825005, 38.881069, 31.513302>,  <40.929115, 39.035667, 31.664497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825005, 38.881069, 31.513302>,  <40.651489, 38.623402, 31.261309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825005, 38.881069, 31.513302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087719, -0.726065, 0.682008,
		0.896735, -0.240585, -0.371463,
		0.433788, 0.644165, 0.629984,
		40.955139, 39.074318, 31.702297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310955, 38.340622, 31.471298>,  <40.651489, 38.623402, 31.261309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310955, 38.340622, 31.471298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146297, 38.575813, 31.749819>,  <41.047504, 38.716927, 31.916931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146297, 38.575813, 31.749819>,  <41.310955, 38.340622, 31.471298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146297, 38.575813, 31.749819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053001, -0.747298, 0.662372,
		0.909803, 0.309566, 0.276456,
		-0.411643, 0.587975, 0.696301,
		41.022804, 38.752205, 31.958710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645039, 38.127560, 32.104996>,  <41.310955, 38.340622, 31.471298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645039, 38.127560, 32.104996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335243, 38.351299, 32.223183>,  <41.149364, 38.485542, 32.294094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335243, 38.351299, 32.223183>,  <41.645039, 38.127560, 32.104996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335243, 38.351299, 32.223183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194482, -0.654994, 0.730178,
		0.601949, 0.508052, 0.616068,
		-0.774489, 0.559344, 0.295466,
		41.102898, 38.519104, 32.311821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708565, 38.206680, 32.743271>,  <41.645039, 38.127560, 32.104996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708565, 38.206680, 32.743271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318474, 38.292908, 32.723404>,  <41.084419, 38.344643, 32.711483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318474, 38.292908, 32.723404>,  <41.708565, 38.206680, 32.743271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318474, 38.292908, 32.723404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175162, -0.615357, 0.768540,
		0.135111, 0.758198, 0.637871,
		-0.975225, 0.215570, -0.049666,
		41.025906, 38.357578, 32.708504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462708, 38.413437, 33.456600>,  <41.708565, 38.206680, 32.743271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462708, 38.413437, 33.456600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119511, 38.321220, 33.272991>,  <40.913593, 38.265892, 33.162827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119511, 38.321220, 33.272991>,  <41.462708, 38.413437, 33.456600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119511, 38.321220, 33.272991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252664, -0.588625, 0.767907,
		-0.447225, 0.774837, 0.446786,
		-0.857992, -0.230540, -0.459021,
		40.862114, 38.252060, 33.135284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905781, 38.493649, 33.948837>,  <41.462708, 38.413437, 33.456600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905781, 38.493649, 33.948837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768009, 38.251328, 33.661957>,  <40.685345, 38.105934, 33.489830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768009, 38.251328, 33.661957>,  <40.905781, 38.493649, 33.948837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768009, 38.251328, 33.661957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434884, -0.574083, 0.693761,
		-0.832012, 0.550850, -0.065722,
		-0.344428, -0.605800, -0.717200,
		40.664680, 38.069588, 33.446796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273781, 38.343224, 34.139420>,  <40.905781, 38.493649, 33.948837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273781, 38.343224, 34.139420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363659, 38.066422, 33.865005>,  <40.417587, 37.900341, 33.700359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363659, 38.066422, 33.865005>,  <40.273781, 38.343224, 34.139420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363659, 38.066422, 33.865005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426231, -0.702911, 0.569423,
		-0.876263, 0.164460, -0.452897,
		0.224699, -0.692003, -0.686033,
		40.431068, 37.858822, 33.659195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674717, 37.900501, 34.050045>,  <40.273781, 38.343224, 34.139420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674717, 37.900501, 34.050045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990376, 37.687634, 33.927380>,  <40.179771, 37.559914, 33.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990376, 37.687634, 33.927380>,  <39.674717, 37.900501, 34.050045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990376, 37.687634, 33.927380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409086, -0.827825, 0.383867,
		-0.458152, -0.177473, -0.870977,
		0.789142, -0.532174, -0.306668,
		40.227119, 37.527981, 33.835381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452381, 37.291115, 33.799171>,  <39.674717, 37.900501, 34.050045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452381, 37.291115, 33.799171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828697, 37.206142, 33.904842>,  <40.054485, 37.155159, 33.968246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828697, 37.206142, 33.904842>,  <39.452381, 37.291115, 33.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828697, 37.206142, 33.904842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331572, -0.738851, 0.586651,
		0.070565, -0.639509, -0.765538,
		0.940787, -0.212434, 0.264180,
		40.110935, 37.142414, 33.984097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450562, 36.648457, 33.930847>,  <39.452381, 37.291115, 33.799171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450562, 36.648457, 33.930847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799454, 36.749542, 34.098351>,  <40.008789, 36.810192, 34.198853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799454, 36.749542, 34.098351>,  <39.450562, 36.648457, 33.930847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799454, 36.749542, 34.098351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180009, -0.630214, 0.755266,
		0.454773, -0.734143, -0.504198,
		0.872226, 0.252714, 0.418756,
		40.061123, 36.825356, 34.223976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898102, 36.044510, 34.099571>,  <39.450562, 36.648457, 33.930847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898102, 36.044510, 34.099571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043922, 36.316853, 34.353668>,  <40.131416, 36.480259, 34.506126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043922, 36.316853, 34.353668>,  <39.898102, 36.044510, 34.099571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043922, 36.316853, 34.353668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102046, -0.648874, 0.754022,
		0.925574, -0.339706, -0.167071,
		0.364554, 0.680854, 0.635246,
		40.153290, 36.521111, 34.544243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210415, 35.586281, 34.564503>,  <39.898102, 36.044510, 34.099571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210415, 35.586281, 34.564503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172485, 35.931507, 34.762947>,  <40.149727, 36.138641, 34.882015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172485, 35.931507, 34.762947>,  <40.210415, 35.586281, 34.564503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172485, 35.931507, 34.762947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111149, -0.504421, 0.856274,
		0.989270, 0.026050, 0.143758,
		-0.094821, 0.863065, 0.496113,
		40.144039, 36.190426, 34.911781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710991, 35.613804, 35.075375>,  <40.210415, 35.586281, 34.564503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710991, 35.613804, 35.075375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415501, 35.857159, 35.191410>,  <40.238209, 36.003174, 35.261032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415501, 35.857159, 35.191410>,  <40.710991, 35.613804, 35.075375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415501, 35.857159, 35.191410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050659, -0.379057, 0.923985,
		0.672102, 0.697265, 0.249198,
		-0.738723, 0.608389, 0.290088,
		40.193882, 36.039677, 35.278435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907837, 35.737411, 35.741455>,  <40.710991, 35.613804, 35.075375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907837, 35.737411, 35.741455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529480, 35.866085, 35.758469>,  <40.302467, 35.943291, 35.768677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529480, 35.866085, 35.758469>,  <40.907837, 35.737411, 35.741455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529480, 35.866085, 35.758469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086356, -0.375902, 0.922627,
		0.312784, 0.869031, 0.383341,
		-0.945890, 0.321687, 0.042530,
		40.245712, 35.962589, 35.771229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742043, 35.924152, 36.527321>,  <40.907837, 35.737411, 35.741455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742043, 35.924152, 36.527321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402786, 35.870155, 36.322411>,  <40.199230, 35.837757, 36.199463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402786, 35.870155, 36.322411>,  <40.742043, 35.924152, 36.527321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402786, 35.870155, 36.322411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347338, -0.588444, 0.730130,
		-0.400012, 0.797189, 0.452195,
		-0.848143, -0.134996, -0.512279,
		40.148342, 35.829655, 36.168728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146576, 36.018673, 37.005554>,  <40.742043, 35.924152, 36.527321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146576, 36.018673, 37.005554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025921, 35.779106, 36.708820>,  <39.953529, 35.635365, 36.530781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025921, 35.779106, 36.708820>,  <40.146576, 36.018673, 37.005554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025921, 35.779106, 36.708820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395152, -0.629568, 0.668954,
		-0.867681, 0.494918, -0.046762,
		-0.301637, -0.598916, -0.741832,
		39.935429, 35.599430, 36.486271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541473, 35.782204, 37.169773>,  <40.146576, 36.018673, 37.005554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541473, 35.782204, 37.169773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606720, 35.516773, 36.877731>,  <39.645870, 35.357513, 36.702507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606720, 35.516773, 36.877731>,  <39.541473, 35.782204, 37.169773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606720, 35.516773, 36.877731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295850, -0.738863, 0.605438,
		-0.941204, 0.117244, -0.316842,
		0.163118, -0.663578, -0.730107,
		39.655655, 35.317699, 36.658699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913155, 35.237679, 37.200642>,  <39.541473, 35.782204, 37.169773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913155, 35.237679, 37.200642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206177, 35.074265, 36.982849>,  <39.381992, 34.976215, 36.852173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206177, 35.074265, 36.982849>,  <38.913155, 35.237679, 37.200642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206177, 35.074265, 36.982849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237382, -0.902984, 0.358148,
		-0.637971, -0.133115, -0.758468,
		0.732559, -0.408535, -0.544478,
		39.425945, 34.951706, 36.819508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587952, 34.642868, 36.848583>,  <38.913155, 35.237679, 37.200642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587952, 34.642868, 36.848583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983936, 34.589493, 36.867229>,  <39.221527, 34.557468, 36.878418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983936, 34.589493, 36.867229>,  <38.587952, 34.642868, 36.848583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983936, 34.589493, 36.867229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140996, -0.955532, 0.258995,
		0.009984, -0.262968, -0.964753,
		0.989960, -0.133440, 0.046617,
		39.280926, 34.549461, 36.881214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687801, 34.035938, 36.552601>,  <38.587952, 34.642868, 36.848583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687801, 34.035938, 36.552601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020237, 34.092026, 36.767868>,  <39.219700, 34.125679, 36.897030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020237, 34.092026, 36.767868>,  <38.687801, 34.035938, 36.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020237, 34.092026, 36.767868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010950, -0.963381, 0.267911,
		0.556026, -0.228551, -0.799124,
		0.831092, 0.140215, 0.538168,
		39.269566, 34.134090, 36.929317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114899, 33.542408, 36.286808>,  <38.687801, 34.035938, 36.552601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114899, 33.542408, 36.286808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272038, 33.646706, 36.639553>,  <39.366322, 33.709282, 36.851200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272038, 33.646706, 36.639553>,  <39.114899, 33.542408, 36.286808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272038, 33.646706, 36.639553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031671, -0.962229, 0.270393,
		0.919060, -0.078293, -0.386264,
		0.392844, 0.260741, 0.881866,
		39.389893, 33.724930, 36.904114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677402, 33.085007, 36.393394>,  <39.114899, 33.542408, 36.286808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677402, 33.085007, 36.393394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588234, 33.234028, 36.753731>,  <39.534733, 33.323441, 36.969933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588234, 33.234028, 36.753731>,  <39.677402, 33.085007, 36.393394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588234, 33.234028, 36.753731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046985, -0.918913, 0.391652,
		0.973704, 0.129633, 0.187339,
		-0.222920, 0.372551, 0.900840,
		39.521358, 33.345795, 37.023983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259022, 33.032990, 36.902115>,  <39.677402, 33.085007, 36.393394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259022, 33.032990, 36.902115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927578, 33.067287, 37.123402>,  <39.728710, 33.087868, 37.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927578, 33.067287, 37.123402>,  <40.259022, 33.032990, 36.902115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927578, 33.067287, 37.123402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127607, -0.933257, 0.335780,
		0.545089, 0.348826, 0.762364,
		-0.828610, 0.085748, 0.553221,
		39.678993, 33.093010, 37.289368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407360, 32.671906, 37.440117>,  <40.259022, 33.032990, 36.902115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407360, 32.671906, 37.440117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008633, 32.675426, 37.471813>,  <39.769398, 32.677540, 37.490829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008633, 32.675426, 37.471813>,  <40.407360, 32.671906, 37.440117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008633, 32.675426, 37.471813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015814, -0.952322, 0.304685,
		0.078144, 0.304968, 0.949151,
		-0.996817, 0.008800, 0.079241,
		39.709587, 32.678066, 37.495586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211536, 32.182686, 37.958942>,  <40.407360, 32.671906, 37.440117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211536, 32.182686, 37.958942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865322, 32.223434, 37.762791>,  <39.657593, 32.247883, 37.645100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865322, 32.223434, 37.762791>,  <40.211536, 32.182686, 37.958942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865322, 32.223434, 37.762791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116324, -0.993211, -0.001014,
		-0.487150, 0.056165, 0.871510,
		-0.865536, 0.101872, -0.490376,
		39.605659, 32.253998, 37.615677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847324, 31.789246, 38.368809>,  <40.211536, 32.182686, 37.958942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847324, 31.789246, 38.368809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677101, 31.794699, 38.006878>,  <39.574966, 31.797972, 37.789719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677101, 31.794699, 38.006878>,  <39.847324, 31.789246, 38.368809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677101, 31.794699, 38.006878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167952, -0.983705, 0.064168,
		-0.889207, 0.179274, 0.420917,
		-0.425561, 0.013635, -0.904827,
		39.549435, 31.798790, 37.735428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242104, 31.497808, 38.428246>,  <39.847324, 31.789246, 38.368809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242104, 31.497808, 38.428246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328251, 31.474276, 38.038342>,  <39.379940, 31.460155, 37.804398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328251, 31.474276, 38.038342>,  <39.242104, 31.497808, 38.428246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328251, 31.474276, 38.038342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311572, -0.950153, -0.011491,
		-0.925495, 0.306182, -0.222961,
		0.215365, -0.058834, -0.974759,
		39.392860, 31.456625, 37.745914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673965, 31.421452, 37.992622>,  <39.242104, 31.497808, 38.428246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673965, 31.421452, 37.992622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986298, 31.217052, 37.848850>,  <39.173695, 31.094414, 37.762585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986298, 31.217052, 37.848850>,  <38.673965, 31.421452, 37.992622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986298, 31.217052, 37.848850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560572, -0.827040, -0.041997,
		-0.275805, 0.234281, -0.932225,
		0.780827, -0.510996, -0.359433,
		39.220547, 31.063753, 37.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461903, 31.102396, 37.392910>,  <38.673965, 31.421452, 37.992622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461903, 31.102396, 37.392910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770935, 30.873764, 37.503487>,  <38.956352, 30.736584, 37.569832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770935, 30.873764, 37.503487>,  <38.461903, 31.102396, 37.392910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770935, 30.873764, 37.503487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510179, -0.818033, -0.265592,
		0.377944, 0.064157, -0.923603,
		0.772578, -0.571581, 0.276439,
		39.002708, 30.702290, 37.586418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618408, 30.628551, 36.815250>,  <38.461903, 31.102396, 37.392910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618408, 30.628551, 36.815250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773518, 30.465456, 37.145916>,  <38.866585, 30.367598, 37.344315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773518, 30.465456, 37.145916>,  <38.618408, 30.628551, 36.815250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773518, 30.465456, 37.145916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344475, -0.895964, -0.280331,
		0.854965, -0.176060, -0.487891,
		0.387778, -0.407739, 0.826666,
		38.889851, 30.343134, 37.393917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875004, 30.082409, 36.525631>,  <38.618408, 30.628551, 36.815250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875004, 30.082409, 36.525631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871853, 30.001450, 36.917339>,  <38.869965, 29.952873, 37.152363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871853, 30.001450, 36.917339>,  <38.875004, 30.082409, 36.525631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871853, 30.001450, 36.917339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202256, -0.958738, -0.199783,
		0.979301, -0.199637, -0.033387,
		-0.007875, -0.202400, 0.979271,
		38.869492, 29.940729, 37.211121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144951, 29.406561, 36.670860>,  <38.875004, 30.082409, 36.525631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144951, 29.406561, 36.670860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914062, 29.474184, 36.990417>,  <38.775528, 29.514757, 37.182152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914062, 29.474184, 36.990417>,  <39.144951, 29.406561, 36.670860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914062, 29.474184, 36.990417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414204, -0.903750, -0.108029,
		0.703738, -0.393262, 0.591691,
		-0.577224, 0.169057, 0.798894,
		38.740894, 29.524900, 37.230087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114471, 28.876732, 37.199970>,  <39.144951, 29.406561, 36.670860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114471, 28.876732, 37.199970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742599, 29.022343, 37.222511>,  <38.519474, 29.109709, 37.236034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742599, 29.022343, 37.222511>,  <39.114471, 28.876732, 37.199970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742599, 29.022343, 37.222511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368362, -0.918810, -0.141769,
		0.000167, -0.152557, 0.988295,
		-0.929682, 0.364027, 0.056350,
		38.463696, 29.131550, 37.239418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797039, 28.352949, 37.387421>,  <39.114471, 28.876732, 37.199970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797039, 28.352949, 37.387421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486019, 28.595543, 37.320976>,  <38.299408, 28.741100, 37.281109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486019, 28.595543, 37.320976>,  <38.797039, 28.352949, 37.387421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486019, 28.595543, 37.320976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578989, -0.793560, -0.187172,
		-0.245337, -0.049358, 0.968180,
		-0.777548, 0.606486, -0.166112,
		38.252754, 28.777489, 37.271141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258823, 28.108252, 37.694569>,  <38.797039, 28.352949, 37.387421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258823, 28.108252, 37.694569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096924, 28.336731, 37.408936>,  <37.999786, 28.473820, 37.237556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096924, 28.336731, 37.408936>,  <38.258823, 28.108252, 37.694569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096924, 28.336731, 37.408936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598458, -0.755902, -0.265443,
		-0.691396, 0.319909, 0.647789,
		-0.404747, 0.571200, -0.714080,
		37.975498, 28.508091, 37.194710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475361, 28.027977, 37.732365>,  <38.258823, 28.108252, 37.694569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475361, 28.027977, 37.732365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607124, 28.145384, 37.373402>,  <37.686180, 28.215828, 37.158024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607124, 28.145384, 37.373402>,  <37.475361, 28.027977, 37.732365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607124, 28.145384, 37.373402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541799, -0.719639, -0.434250,
		-0.773269, 0.629259, -0.078026,
		0.329406, 0.293518, -0.897407,
		37.705948, 28.233438, 37.104179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226418, 28.589615, 37.342583>,  <37.475361, 28.027977, 37.732365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226418, 28.589615, 37.342583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374874, 28.656841, 36.977287>,  <37.463947, 28.697178, 36.758110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374874, 28.656841, 36.977287>,  <37.226418, 28.589615, 37.342583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374874, 28.656841, 36.977287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762442, -0.506222, -0.403016,
		-0.530037, 0.845868, -0.059736,
		0.371138, 0.168068, -0.913241,
		37.486214, 28.707262, 36.703316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694473, 28.925827, 36.838871>,  <37.226418, 28.589615, 37.342583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694473, 28.925827, 36.838871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976425, 28.689291, 36.682171>,  <37.145596, 28.547369, 36.588150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976425, 28.689291, 36.682171>,  <36.694473, 28.925827, 36.838871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976425, 28.689291, 36.682171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709005, -0.604094, -0.363844,
		-0.021497, 0.534216, -0.845075,
		0.704876, -0.591341, -0.391748,
		37.187889, 28.511889, 36.564648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504711, 28.846149, 36.235241>,  <36.694473, 28.925827, 36.838871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504711, 28.846149, 36.235241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759861, 28.538260, 36.245327>,  <36.912952, 28.353525, 36.251381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759861, 28.538260, 36.245327>,  <36.504711, 28.846149, 36.235241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759861, 28.538260, 36.245327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706076, -0.597576, -0.379947,
		0.307525, 0.224552, -0.924665,
		0.637875, -0.769727, 0.025219,
		36.951225, 28.307341, 36.252892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476505, 28.435614, 35.605324>,  <36.504711, 28.846149, 36.235241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476505, 28.435614, 35.605324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633255, 28.176777, 35.866920>,  <36.727303, 28.021475, 36.023880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633255, 28.176777, 35.866920>,  <36.476505, 28.435614, 35.605324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633255, 28.176777, 35.866920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658821, -0.693545, -0.291463,
		0.642178, -0.316650, -0.698098,
		0.391870, -0.647093, 0.653995,
		36.750816, 27.982649, 36.063118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665119, 27.891991, 35.266949>,  <36.476505, 28.435614, 35.605324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665119, 27.891991, 35.266949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583187, 27.754324, 35.633465>,  <36.534027, 27.671724, 35.853374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583187, 27.754324, 35.633465>,  <36.665119, 27.891991, 35.266949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583187, 27.754324, 35.633465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613744, -0.684081, -0.394146,
		0.762471, -0.643103, -0.071110,
		-0.204831, -0.344168, 0.916293,
		36.521736, 27.651073, 35.908352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631107, 27.138351, 35.353943>,  <36.665119, 27.891991, 35.266949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631107, 27.138351, 35.353943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400375, 27.284254, 35.646305>,  <36.261936, 27.371796, 35.821720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400375, 27.284254, 35.646305>,  <36.631107, 27.138351, 35.353943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400375, 27.284254, 35.646305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714227, -0.659434, -0.234578,
		0.396418, -0.657342, 0.640901,
		-0.576830, 0.364758, 0.730903,
		36.227325, 27.393682, 35.865578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507557, 26.606730, 35.865082>,  <36.631107, 27.138351, 35.353943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507557, 26.606730, 35.865082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177105, 26.830524, 35.891872>,  <35.978832, 26.964802, 35.907948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177105, 26.830524, 35.891872>,  <36.507557, 26.606730, 35.865082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177105, 26.830524, 35.891872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562274, -0.810735, -0.162964,
		-0.036873, -0.172290, 0.984356,
		-0.826129, 0.559487, 0.066980,
		35.929268, 26.998371, 35.911964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895901, 26.112108, 36.048065>,  <36.507557, 26.606730, 35.865082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895901, 26.112108, 36.048065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807369, 26.460058, 35.871735>,  <35.754250, 26.668829, 35.765934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807369, 26.460058, 35.871735>,  <35.895901, 26.112108, 36.048065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807369, 26.460058, 35.871735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605051, -0.477006, -0.637478,
		-0.764804, 0.125629, 0.631896,
		-0.221333, 0.869875, -0.440828,
		35.740971, 26.721020, 35.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165894, 25.997293, 35.941887>,  <35.895901, 26.112108, 36.048065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165894, 25.997293, 35.941887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291134, 26.318216, 35.738605>,  <35.366280, 26.510769, 35.616634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291134, 26.318216, 35.738605>,  <35.165894, 25.997293, 35.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291134, 26.318216, 35.738605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661915, -0.199391, -0.722573,
		-0.681056, 0.562627, 0.468629,
		0.313100, 0.802305, -0.508208,
		35.385063, 26.558908, 35.586143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643650, 26.371134, 35.788391>,  <35.165894, 25.997293, 35.941887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643650, 26.371134, 35.788391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900620, 26.492666, 35.506969>,  <35.054802, 26.565586, 35.338116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900620, 26.492666, 35.506969>,  <34.643650, 26.371134, 35.788391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900620, 26.492666, 35.506969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727276, -0.047707, -0.684685,
		-0.241594, 0.951530, 0.190323,
		0.642419, 0.303833, -0.703550,
		35.093346, 26.583817, 35.295906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434830, 26.990484, 35.440094>,  <34.643650, 26.371134, 35.788391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434830, 26.990484, 35.440094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660011, 26.767935, 35.195625>,  <34.795120, 26.634405, 35.048943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660011, 26.767935, 35.195625>,  <34.434830, 26.990484, 35.440094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660011, 26.767935, 35.195625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689645, 0.091317, -0.718367,
		0.455491, 0.825899, -0.332293,
		0.562954, -0.556374, -0.611171,
		34.828899, 26.601023, 35.012276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634964, 27.387615, 34.871113>,  <34.434830, 26.990484, 35.440094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634964, 27.387615, 34.871113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634838, 27.000877, 34.768967>,  <34.634762, 26.768835, 34.707680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634838, 27.000877, 34.768967>,  <34.634964, 27.387615, 34.871113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634838, 27.000877, 34.768967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514846, 0.219078, -0.828817,
		0.857282, 0.131209, -0.497846,
		-0.000319, -0.966845, -0.255365,
		34.634743, 26.710823, 34.692356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916195, 27.338993, 34.099506>,  <34.634964, 27.387615, 34.871113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916195, 27.338993, 34.099506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686699, 27.036949, 34.226398>,  <34.549004, 26.855722, 34.302532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686699, 27.036949, 34.226398>,  <34.916195, 27.338993, 34.099506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686699, 27.036949, 34.226398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489579, 0.005674, -0.871940,
		0.656611, -0.655573, -0.372941,
		-0.573737, -0.755110, 0.317229,
		34.514576, 26.810415, 34.321568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827816, 26.634762, 33.673122>,  <34.916195, 27.338993, 34.099506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827816, 26.634762, 33.673122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510319, 26.721352, 33.900497>,  <34.319820, 26.773306, 34.036922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510319, 26.721352, 33.900497>,  <34.827816, 26.634762, 33.673122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510319, 26.721352, 33.900497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585452, -0.018390, -0.810499,
		-0.164999, -0.976115, 0.141332,
		-0.793739, 0.216475, 0.568434,
		34.272198, 26.786293, 34.071026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765156, 25.933187, 34.131237>,  <34.827816, 26.634762, 33.673122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765156, 25.933187, 34.131237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905460, 26.038181, 34.490807>,  <34.989643, 26.101177, 34.706551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905460, 26.038181, 34.490807>,  <34.765156, 25.933187, 34.131237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905460, 26.038181, 34.490807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795279, 0.423355, -0.433938,
		-0.494467, 0.867106, -0.060252,
		0.350762, 0.262485, 0.898926,
		35.010689, 26.116926, 34.760483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309093, 25.665421, 34.376347>,  <34.765156, 25.933187, 34.131237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309093, 25.665421, 34.376347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130337, 26.023251, 34.374413>,  <35.023083, 26.237949, 34.373253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130337, 26.023251, 34.374413>,  <35.309093, 25.665421, 34.376347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130337, 26.023251, 34.374413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566586, 0.287215, 0.772326,
		0.692292, 0.342408, -0.635208,
		-0.446892, 0.894575, -0.004833,
		34.996269, 26.291622, 34.372963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829067, 26.211996, 34.380283>,  <35.309093, 25.665421, 34.376347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829067, 26.211996, 34.380283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492531, 26.357634, 34.540073>,  <35.290607, 26.445017, 34.635948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492531, 26.357634, 34.540073>,  <35.829067, 26.211996, 34.380283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492531, 26.357634, 34.540073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513311, 0.306774, 0.801500,
		0.169273, 0.879390, -0.444995,
		-0.841343, 0.364093, 0.399472,
		35.240128, 26.466862, 34.659916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014374, 26.913784, 34.469551>,  <35.829067, 26.211996, 34.380283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014374, 26.913784, 34.469551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715969, 26.821325, 34.719364>,  <35.536926, 26.765850, 34.869251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715969, 26.821325, 34.719364>,  <36.014374, 26.913784, 34.469551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715969, 26.821325, 34.719364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474265, 0.473936, 0.741928,
		-0.467483, 0.849679, -0.243935,
		-0.746011, -0.231149, 0.624530,
		35.492165, 26.751980, 34.906723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768467, 27.561157, 34.770714>,  <36.014374, 26.913784, 34.469551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768467, 27.561157, 34.770714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658619, 27.278467, 35.031521>,  <35.592712, 27.108854, 35.188004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658619, 27.278467, 35.031521>,  <35.768467, 27.561157, 34.770714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658619, 27.278467, 35.031521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289172, 0.585999, 0.756957,
		-0.917042, 0.396418, 0.043440,
		-0.274615, -0.706723, 0.652019,
		35.576233, 27.066450, 35.227127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346226, 27.870842, 35.362862>,  <35.768467, 27.561157, 34.770714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346226, 27.870842, 35.362862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494473, 27.517557, 35.477806>,  <35.583420, 27.305586, 35.546772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494473, 27.517557, 35.477806>,  <35.346226, 27.870842, 35.362862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494473, 27.517557, 35.477806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369655, 0.424103, 0.826736,
		-0.852056, -0.200176, 0.483664,
		0.370616, -0.883213, 0.287363,
		35.605656, 27.252594, 35.564014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056301, 27.792007, 36.105579>,  <35.346226, 27.870842, 35.362862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056301, 27.792007, 36.105579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387367, 27.576298, 36.043423>,  <35.586006, 27.446873, 36.006130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387367, 27.576298, 36.043423>,  <35.056301, 27.792007, 36.105579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387367, 27.576298, 36.043423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490842, 0.561340, 0.666311,
		-0.272098, -0.627758, 0.729303,
		0.827669, -0.539275, -0.155391,
		35.635670, 27.414515, 35.996807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387722, 27.848606, 36.797607>,  <35.056301, 27.792007, 36.105579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387722, 27.848606, 36.797607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649948, 27.726028, 36.521542>,  <35.807285, 27.652483, 36.355904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649948, 27.726028, 36.521542>,  <35.387722, 27.848606, 36.797607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649948, 27.726028, 36.521542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741683, 0.433058, 0.512217,
		0.141917, -0.847676, 0.511180,
		0.655565, -0.306442, -0.690165,
		35.846619, 27.634096, 36.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047409, 27.682457, 37.132584>,  <35.387722, 27.848606, 36.797607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047409, 27.682457, 37.132584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177235, 27.698130, 36.754562>,  <36.255131, 27.707533, 36.527748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177235, 27.698130, 36.754562>,  <36.047409, 27.682457, 37.132584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177235, 27.698130, 36.754562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844594, 0.437797, 0.308212,
		0.425817, -0.898219, 0.109002,
		0.324563, 0.039179, -0.945052,
		36.274605, 27.709883, 36.471046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507500, 27.169277, 37.108536>,  <36.047409, 27.682457, 37.132584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507500, 27.169277, 37.108536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544090, 27.290411, 36.729076>,  <36.566044, 27.363091, 36.501400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544090, 27.290411, 36.729076>,  <36.507500, 27.169277, 37.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544090, 27.290411, 36.729076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907060, 0.367791, 0.204871,
		0.410944, -0.879217, -0.241045,
		0.091472, 0.302833, -0.948644,
		36.571533, 27.381260, 36.444485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122948, 27.099867, 36.892159>,  <36.507500, 27.169277, 37.108536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122948, 27.099867, 36.892159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997154, 27.380230, 36.636086>,  <36.921680, 27.548447, 36.482441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997154, 27.380230, 36.636086>,  <37.122948, 27.099867, 36.892159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997154, 27.380230, 36.636086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894586, 0.444406, 0.047107,
		0.317518, -0.557884, -0.766778,
		-0.314480, 0.700906, -0.640182,
		36.902809, 27.590502, 36.444031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690533, 27.285847, 36.453938>,  <37.122948, 27.099867, 36.892159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690533, 27.285847, 36.453938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458935, 27.610657, 36.424599>,  <37.319977, 27.805542, 36.406994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458935, 27.610657, 36.424599>,  <37.690533, 27.285847, 36.453938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458935, 27.610657, 36.424599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791174, 0.581302, 0.190082,
		0.196987, 0.052028, -0.979025,
		-0.578999, 0.812023, -0.073345,
		37.285236, 27.854263, 36.402596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020668, 27.823774, 35.892117>,  <37.690533, 27.285847, 36.453938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020668, 27.823774, 35.892117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781971, 28.010071, 36.153492>,  <37.638752, 28.121849, 36.310318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781971, 28.010071, 36.153492>,  <38.020668, 27.823774, 35.892117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781971, 28.010071, 36.153492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772359, 0.554224, 0.310318,
		-0.217625, 0.689870, -0.690448,
		-0.596742, 0.465741, 0.653440,
		37.602947, 28.149794, 36.349525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136227, 28.658812, 35.913513>,  <38.020668, 27.823774, 35.892117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136227, 28.658812, 35.913513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989906, 28.533001, 36.263885>,  <37.902115, 28.457514, 36.474110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989906, 28.533001, 36.263885>,  <38.136227, 28.658812, 35.913513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989906, 28.533001, 36.263885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775518, 0.417326, 0.473721,
		-0.514547, 0.852591, 0.091262,
		-0.365804, -0.314527, 0.875934,
		37.880165, 28.438643, 36.526665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326237, 29.167805, 36.319313>,  <38.136227, 28.658812, 35.913513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326237, 29.167805, 36.319313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256245, 28.866915, 36.573414>,  <38.214249, 28.686380, 36.725872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256245, 28.866915, 36.573414>,  <38.326237, 29.167805, 36.319313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256245, 28.866915, 36.573414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834852, 0.228669, 0.500733,
		-0.521926, 0.617954, 0.587985,
		-0.174976, -0.752226, 0.635248,
		38.203751, 28.641247, 36.763988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562206, 29.288122, 36.238384>,  <38.326237, 29.167805, 36.319313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562206, 29.288122, 36.238384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645473, 29.068411, 36.562103>,  <37.695435, 28.936584, 36.756336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645473, 29.068411, 36.562103>,  <37.562206, 29.288122, 36.238384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645473, 29.068411, 36.562103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319816, 0.820164, 0.474392,
		-0.924330, 0.160075, 0.346397,
		0.208164, -0.549278, 0.809297,
		37.707924, 28.903627, 36.804893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303352, 29.576864, 36.982841>,  <37.562206, 29.288122, 36.238384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303352, 29.576864, 36.982841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613735, 29.331158, 37.040211>,  <37.799965, 29.183733, 37.074635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613735, 29.331158, 37.040211>,  <37.303352, 29.576864, 36.982841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613735, 29.331158, 37.040211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523861, 0.754197, 0.395925,
		-0.351376, -0.232084, 0.907013,
		0.775954, -0.614267, 0.143427,
		37.846523, 29.146877, 37.083241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494938, 29.599131, 37.759525>,  <37.303352, 29.576864, 36.982841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494938, 29.599131, 37.759525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821274, 29.498783, 37.551113>,  <38.017075, 29.438574, 37.426067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821274, 29.498783, 37.551113>,  <37.494938, 29.599131, 37.759525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821274, 29.498783, 37.551113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519121, 0.714708, 0.468728,
		0.254792, -0.652883, 0.713320,
		0.815840, -0.250871, -0.521027,
		38.066025, 29.423521, 37.394806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992706, 29.736290, 38.312828>,  <37.494938, 29.599131, 37.759525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992706, 29.736290, 38.312828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201935, 29.672747, 37.977886>,  <38.327473, 29.634621, 37.776920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201935, 29.672747, 37.977886>,  <37.992706, 29.736290, 38.312828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201935, 29.672747, 37.977886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652021, 0.707305, 0.273109,
		0.548879, -0.688828, 0.473547,
		0.523067, -0.158859, -0.837356,
		38.358856, 29.625090, 37.726681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715282, 29.613441, 38.548027>,  <37.992706, 29.736290, 38.312828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715282, 29.613441, 38.548027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699871, 29.773794, 38.181900>,  <38.690624, 29.870007, 37.962223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699871, 29.773794, 38.181900>,  <38.715282, 29.613441, 38.548027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699871, 29.773794, 38.181900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660154, 0.697852, 0.277848,
		0.750142, -0.593544, -0.291534,
		-0.038532, 0.400883, -0.915319,
		38.688313, 29.894058, 37.907303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404552, 29.771931, 38.446918>,  <38.715282, 29.613441, 38.548027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404552, 29.771931, 38.446918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247345, 29.959900, 38.130764>,  <39.153019, 30.072681, 37.941071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247345, 29.959900, 38.130764>,  <39.404552, 29.771931, 38.446918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247345, 29.959900, 38.130764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652932, 0.747855, 0.119966,
		0.647466, -0.468917, -0.600753,
		-0.393023, 0.469925, -0.790382,
		39.129436, 30.100878, 37.893650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008713, 29.991346, 37.997562>,  <39.404552, 29.771931, 38.446918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008713, 29.991346, 37.997562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695007, 30.215639, 37.891354>,  <39.506783, 30.350216, 37.827629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695007, 30.215639, 37.891354>,  <40.008713, 29.991346, 37.997562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695007, 30.215639, 37.891354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571061, 0.819709, 0.044344,
		0.242519, -0.116854, -0.963083,
		-0.784267, 0.560733, -0.265526,
		39.459728, 30.383860, 37.811695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316223, 30.358208, 37.560356>,  <40.008713, 29.991346, 37.997562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316223, 30.358208, 37.560356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975994, 30.554771, 37.635231>,  <39.771854, 30.672710, 37.680157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975994, 30.554771, 37.635231>,  <40.316223, 30.358208, 37.560356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975994, 30.554771, 37.635231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525841, 0.797411, 0.296018,
		-0.003802, 0.350218, -0.936661,
		-0.850574, 0.491409, 0.187190,
		39.720821, 30.702194, 37.691387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217491, 31.042221, 37.199589>,  <40.316223, 30.358208, 37.560356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217491, 31.042221, 37.199589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019054, 31.032984, 37.546776>,  <39.899994, 31.027441, 37.755089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019054, 31.032984, 37.546776>,  <40.217491, 31.042221, 37.199589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019054, 31.032984, 37.546776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448198, 0.849356, 0.278770,
		-0.743648, 0.527315, -0.411008,
		-0.496091, -0.023094, 0.867963,
		39.870228, 31.026056, 37.807163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805527, 31.318180, 37.272575>,  <40.217491, 31.042221, 37.199589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805527, 31.318180, 37.272575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925930, 31.085787, 37.575058>,  <40.998173, 30.946352, 37.756550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925930, 31.085787, 37.575058>,  <40.805527, 31.318180, 37.272575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925930, 31.085787, 37.575058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934851, 0.023221, -0.354279,
		0.188270, 0.813586, 0.550121,
		0.301010, -0.580981, 0.756210,
		41.016232, 30.911493, 37.801922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391521, 31.693151, 37.607166>,  <40.805527, 31.318180, 37.272575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391521, 31.693151, 37.607166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390007, 31.293711, 37.628246>,  <41.389099, 31.054047, 37.640892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390007, 31.293711, 37.628246>,  <41.391521, 31.693151, 37.607166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390007, 31.293711, 37.628246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928086, -0.023128, -0.371647,
		0.372347, 0.047500, 0.926877,
		-0.003784, -0.998603, 0.052696,
		41.388870, 30.994129, 37.644054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822060, 31.953470, 38.150650>,  <41.391521, 31.693151, 37.607166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822060, 31.953470, 38.150650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079865, 31.746305, 37.925663>,  <42.234547, 31.622007, 37.790672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079865, 31.746305, 37.925663>,  <41.822060, 31.953470, 38.150650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079865, 31.746305, 37.925663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764185, 0.460327, 0.451797,
		0.024928, -0.721018, 0.692468,
		0.644515, -0.517912, -0.562466,
		42.273220, 31.590933, 37.756924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493805, 31.536863, 38.463696>,  <41.822060, 31.953470, 38.150650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493805, 31.536863, 38.463696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568306, 31.667789, 38.093143>,  <42.613007, 31.746346, 37.870811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568306, 31.667789, 38.093143>,  <42.493805, 31.536863, 38.463696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568306, 31.667789, 38.093143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762590, 0.546344, 0.346360,
		0.619489, -0.770957, -0.147848,
		0.186252, 0.327314, -0.926378,
		42.624180, 31.765984, 37.815231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214405, 31.462795, 38.341579>,  <42.493805, 31.536863, 38.463696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214405, 31.462795, 38.341579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067429, 31.759481, 38.117134>,  <42.979244, 31.937492, 37.982468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067429, 31.759481, 38.117134>,  <43.214405, 31.462795, 38.341579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067429, 31.759481, 38.117134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614955, 0.646366, 0.451710,
		0.697723, -0.179082, -0.693622,
		-0.367440, 0.741715, -0.561112,
		42.957195, 31.981997, 37.948799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659615, 32.206085, 38.176891>,  <43.214405, 31.462795, 38.341579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659615, 32.206085, 38.176891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684414, 32.600166, 38.112968>,  <43.699295, 32.836613, 38.074615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684414, 32.600166, 38.112968>,  <43.659615, 32.206085, 38.176891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684414, 32.600166, 38.112968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080180, -0.154679, -0.984706,
		-0.994850, 0.073867, 0.069403,
		0.062002, 0.985200, -0.159805,
		43.703014, 32.895725, 38.065025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794033, 31.762243, 37.607136>,  <43.659615, 32.206085, 38.176891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794033, 31.762243, 37.607136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862885, 31.610498, 37.243500>,  <43.904198, 31.519451, 37.025318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862885, 31.610498, 37.243500>,  <43.794033, 31.762243, 37.607136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862885, 31.610498, 37.243500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481076, 0.837706, -0.258485,
		0.859614, -0.392850, 0.326699,
		0.172132, -0.379364, -0.909095,
		43.914524, 31.496689, 36.970772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558399, 31.646084, 37.522526>,  <43.794033, 31.762243, 37.607136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558399, 31.646084, 37.522526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397038, 31.681286, 37.158215>,  <44.300220, 31.702406, 36.939629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397038, 31.681286, 37.158215>,  <44.558399, 31.646084, 37.522526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397038, 31.681286, 37.158215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631098, 0.747490, -0.207301,
		0.662556, -0.658418, -0.357079,
		-0.403403, 0.088003, -0.910780,
		44.276016, 31.707687, 36.884979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060249, 31.885357, 37.110600>,  <44.558399, 31.646084, 37.522526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060249, 31.885357, 37.110600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759033, 31.992895, 36.870384>,  <44.578304, 32.057419, 36.726254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759033, 31.992895, 36.870384>,  <45.060249, 31.885357, 37.110600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759033, 31.992895, 36.870384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564225, 0.733397, -0.379182,
		0.338495, -0.624381, -0.703967,
		-0.753041, 0.268844, -0.600543,
		44.533119, 32.073547, 36.690220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328651, 31.968243, 36.353168>,  <45.060249, 31.885357, 37.110600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328651, 31.968243, 36.353168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025467, 32.205364, 36.462032>,  <44.843555, 32.347637, 36.527351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025467, 32.205364, 36.462032>,  <45.328651, 31.968243, 36.353168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025467, 32.205364, 36.462032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579507, 0.803503, -0.136217,
		-0.299431, 0.054471, -0.952562,
		-0.757966, 0.592804, 0.272160,
		44.798077, 32.383205, 36.543682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199974, 32.496475, 35.835087>,  <45.328651, 31.968243, 36.353168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199974, 32.496475, 35.835087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106869, 32.624516, 36.202423>,  <45.051006, 32.701340, 36.422825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106869, 32.624516, 36.202423>,  <45.199974, 32.496475, 35.835087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106869, 32.624516, 36.202423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731112, 0.680287, -0.051822,
		-0.641326, 0.659350, -0.392375,
		-0.232759, 0.320105, 0.918344,
		45.037041, 32.720547, 36.477928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238914, 33.274223, 35.867249>,  <45.199974, 32.496475, 35.835087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238914, 33.274223, 35.867249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297108, 33.126831, 36.234520>,  <45.332024, 33.038395, 36.454884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297108, 33.126831, 36.234520>,  <45.238914, 33.274223, 35.867249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297108, 33.126831, 36.234520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828424, 0.552731, 0.090563,
		-0.540878, 0.747467, 0.385675,
		0.145482, -0.368485, 0.918179,
		45.340752, 33.016285, 36.509975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555470, 33.829815, 36.154404>,  <45.238914, 33.274223, 35.867249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555470, 33.829815, 36.154404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659031, 33.578617, 36.447960>,  <45.721169, 33.427898, 36.624092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659031, 33.578617, 36.447960>,  <45.555470, 33.829815, 36.154404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659031, 33.578617, 36.447960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949367, 0.305439, -0.073550,
		-0.177969, 0.715773, 0.675274,
		0.258900, -0.627994, 0.733890,
		45.736702, 33.390221, 36.668125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101723, 34.027802, 36.792076>,  <45.555470, 33.829815, 36.154404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101723, 34.027802, 36.792076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107803, 33.643169, 36.682430>,  <46.111450, 33.412392, 36.616642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107803, 33.643169, 36.682430>,  <46.101723, 34.027802, 36.792076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107803, 33.643169, 36.682430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997606, 0.033081, -0.060728,
		0.067463, -0.272537, 0.959777,
		0.015200, -0.961577, -0.274116,
		46.112362, 33.354698, 36.600197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970478, 34.795876, 36.784222>,  <46.101723, 34.027802, 36.792076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970478, 34.795876, 36.784222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.126610, 35.133038, 36.932362>,  <46.220287, 35.335335, 37.021248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.126610, 35.133038, 36.932362>,  <45.970478, 34.795876, 36.784222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.126610, 35.133038, 36.932362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428612, 0.189648, -0.883361,
		-0.814823, 0.503538, -0.287253,
		0.390328, 0.842902, 0.370352,
		46.243710, 35.385906, 37.043468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891029, 35.399582, 36.270016>,  <45.970478, 34.795876, 36.784222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891029, 35.399582, 36.270016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198940, 35.452057, 36.519894>,  <46.383686, 35.483543, 36.669819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198940, 35.452057, 36.519894>,  <45.891029, 35.399582, 36.270016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198940, 35.452057, 36.519894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575598, 0.280388, -0.768160,
		-0.275928, 0.950880, 0.140324,
		0.769773, 0.131186, 0.624692,
		46.429871, 35.491413, 36.707302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369286, 35.936588, 36.086784>,  <45.891029, 35.399582, 36.270016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369286, 35.936588, 36.086784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503113, 35.561840, 36.127472>,  <46.583408, 35.336990, 36.151882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503113, 35.561840, 36.127472>,  <46.369286, 35.936588, 36.086784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503113, 35.561840, 36.127472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500688, 0.085277, -0.861417,
		0.798359, 0.339128, 0.497609,
		0.334565, -0.936867, 0.101716,
		46.603481, 35.280781, 36.157986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068962, 35.948151, 35.963543>,  <46.369286, 35.936588, 36.086784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068962, 35.948151, 35.963543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914886, 35.587284, 35.885860>,  <46.822441, 35.370762, 35.839252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914886, 35.587284, 35.885860>,  <47.068962, 35.948151, 35.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914886, 35.587284, 35.885860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418052, 0.017022, -0.908264,
		0.822715, -0.431043, 0.370597,
		-0.385193, -0.902171, -0.194202,
		46.799328, 35.316631, 35.827599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517418, 35.784592, 35.418816>,  <47.068962, 35.948151, 35.963543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517418, 35.784592, 35.418816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211258, 35.527206, 35.414429>,  <47.027561, 35.372776, 35.411797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211258, 35.527206, 35.414429>,  <47.517418, 35.784592, 35.418816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211258, 35.527206, 35.414429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240781, -0.270516, -0.932119,
		0.596817, -0.716083, 0.361987,
		-0.765398, -0.643464, -0.010971,
		46.981640, 35.334167, 35.411137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.852303, 35.117874, 35.257751>,  <47.517418, 35.784592, 35.418816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.852303, 35.117874, 35.257751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485435, 35.183308, 35.112404>,  <47.265316, 35.222569, 35.025196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485435, 35.183308, 35.112404>,  <47.852303, 35.117874, 35.257751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.485435, 35.183308, 35.112404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319114, -0.244644, -0.915596,
		-0.238639, -0.955720, 0.172192,
		-0.917179, 0.163548, -0.363365,
		47.210285, 35.232384, 35.003391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.603790, 38.080067, 30.071606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286758, 38.259861, 30.236423>,  <37.096539, 38.367737, 30.335314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286758, 38.259861, 30.236423>,  <37.603790, 38.080067, 30.071606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286758, 38.259861, 30.236423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181588, -0.819065, 0.544204,
		0.582105, 0.356502, 0.730794,
		-0.792578, 0.449488, 0.412045,
		37.048985, 38.394707, 30.360037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597794, 38.006187, 30.864956>,  <37.603790, 38.080067, 30.071606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597794, 38.006187, 30.864956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215458, 38.064720, 30.763004>,  <36.986057, 38.099838, 30.701834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215458, 38.064720, 30.763004>,  <37.597794, 38.006187, 30.864956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215458, 38.064720, 30.763004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289120, -0.623940, 0.726022,
		-0.052789, 0.767649, 0.638692,
		-0.955836, 0.146332, -0.254880,
		36.928707, 38.108620, 30.686541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285736, 37.913086, 31.412539>,  <37.597794, 38.006187, 30.864956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285736, 37.913086, 31.412539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970856, 37.860836, 31.171457>,  <36.781925, 37.829487, 31.026810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970856, 37.860836, 31.171457>,  <37.285736, 37.913086, 31.412539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970856, 37.860836, 31.171457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382560, -0.663103, 0.643384,
		-0.483693, 0.737043, 0.472027,
		-0.787204, -0.130621, -0.602701,
		36.734695, 37.821651, 30.990646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810696, 37.863415, 31.883997>,  <37.285736, 37.913086, 31.412539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810696, 37.863415, 31.883997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611465, 37.738274, 31.560503>,  <36.491928, 37.663189, 31.366407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611465, 37.738274, 31.560503>,  <36.810696, 37.863415, 31.883997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611465, 37.738274, 31.560503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609657, -0.536887, 0.583156,
		-0.616639, 0.783503, 0.076677,
		-0.498072, -0.312849, -0.808734,
		36.462044, 37.644421, 31.317883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999146, 37.833687, 32.004082>,  <36.810696, 37.863415, 31.883997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999146, 37.833687, 32.004082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041641, 37.589912, 31.689808>,  <36.067139, 37.443649, 31.501244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041641, 37.589912, 31.689808>,  <35.999146, 37.833687, 32.004082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041641, 37.589912, 31.689808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640499, -0.646336, 0.414742,
		-0.760575, 0.459169, -0.459009,
		0.106238, -0.609437, -0.785684,
		36.073513, 37.407082, 31.454102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345596, 37.553795, 31.915462>,  <35.999146, 37.833687, 32.004082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345596, 37.553795, 31.915462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587372, 37.294025, 31.730898>,  <35.732437, 37.138165, 31.620159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587372, 37.294025, 31.730898>,  <35.345596, 37.553795, 31.915462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587372, 37.294025, 31.730898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548579, -0.759290, 0.350057,
		-0.577679, 0.041531, -0.815207,
		0.604440, -0.649426, -0.461409,
		35.768703, 37.099197, 31.592476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960079, 37.033817, 31.442688>,  <35.345596, 37.553795, 31.915462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960079, 37.033817, 31.442688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307648, 36.871872, 31.556572>,  <35.516190, 36.774704, 31.624903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307648, 36.871872, 31.556572>,  <34.960079, 37.033817, 31.442688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307648, 36.871872, 31.556572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489258, -0.789577, 0.370399,
		0.074837, -0.461144, -0.884164,
		0.868922, -0.404865, 0.284708,
		35.568325, 36.750412, 31.641985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803345, 36.383648, 31.413416>,  <34.960079, 37.033817, 31.442688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803345, 36.383648, 31.413416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133827, 36.386982, 31.638741>,  <35.332115, 36.388981, 31.773935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133827, 36.386982, 31.638741>,  <34.803345, 36.383648, 31.413416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133827, 36.386982, 31.638741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285533, -0.855760, 0.431446,
		0.485653, -0.517305, -0.704653,
		0.826203, 0.008331, 0.563310,
		35.381687, 36.389481, 31.807734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879524, 35.717701, 31.546719>,  <34.803345, 36.383648, 31.413416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879524, 35.717701, 31.546719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119373, 35.895401, 31.812979>,  <35.263283, 36.002022, 31.972734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119373, 35.895401, 31.812979>,  <34.879524, 35.717701, 31.546719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119373, 35.895401, 31.812979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243722, -0.690885, 0.680646,
		0.762266, -0.570365, -0.305997,
		0.599625, 0.444255, 0.665648,
		35.299259, 36.028679, 32.012672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287605, 35.179092, 31.753176>,  <34.879524, 35.717701, 31.546719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287605, 35.179092, 31.753176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352985, 35.455948, 32.034382>,  <35.392212, 35.622063, 32.203106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352985, 35.455948, 32.034382>,  <35.287605, 35.179092, 31.753176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352985, 35.455948, 32.034382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139135, -0.721647, 0.678135,
		0.976692, -0.013025, -0.214252,
		0.163447, 0.692139, 0.703014,
		35.402020, 35.663589, 32.245285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596771, 34.786476, 32.235855>,  <35.287605, 35.179092, 31.753176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596771, 34.786476, 32.235855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465191, 35.096668, 32.451416>,  <35.386242, 35.282784, 32.580753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465191, 35.096668, 32.451416>,  <35.596771, 34.786476, 32.235855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465191, 35.096668, 32.451416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299927, -0.455322, 0.838288,
		0.895452, 0.437389, -0.082808,
		-0.328954, 0.775482, 0.538903,
		35.366505, 35.329311, 32.613087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138496, 34.943329, 32.638840>,  <35.596771, 34.786476, 32.235855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138496, 34.943329, 32.638840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808613, 35.088024, 32.812737>,  <35.610683, 35.174839, 32.917076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808613, 35.088024, 32.812737>,  <36.138496, 34.943329, 32.638840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808613, 35.088024, 32.812737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331380, -0.313843, 0.889769,
		0.458302, 0.877867, 0.138958,
		-0.824710, 0.361735, 0.434743,
		35.561199, 35.196545, 32.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427380, 35.301998, 33.159691>,  <36.138496, 34.943329, 32.638840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427380, 35.301998, 33.159691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045952, 35.206608, 33.233261>,  <35.817093, 35.149376, 33.277405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045952, 35.206608, 33.233261>,  <36.427380, 35.301998, 33.159691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045952, 35.206608, 33.233261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247145, -0.270652, 0.930412,
		-0.172099, 0.932672, 0.317024,
		-0.953573, -0.238474, 0.183927,
		35.759880, 35.135067, 33.288441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404655, 35.377922, 33.941074>,  <36.427380, 35.301998, 33.159691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404655, 35.377922, 33.941074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073513, 35.176300, 33.842621>,  <35.874828, 35.055328, 33.783550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073513, 35.176300, 33.842621>,  <36.404655, 35.377922, 33.941074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073513, 35.176300, 33.842621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090892, -0.553526, 0.827857,
		-0.553526, 0.662977, 0.504055,
		-0.827857, -0.504055, -0.246132,
		35.825157, 35.025085, 33.768780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065151, 35.276539, 34.508614>,  <36.404655, 35.377922, 33.941074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065151, 35.276539, 34.508614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922890, 34.979820, 34.281193>,  <35.837532, 34.801788, 34.144741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922890, 34.979820, 34.281193>,  <36.065151, 35.276539, 34.508614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922890, 34.979820, 34.281193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012119, -0.604612, 0.796427,
		-0.934537, 0.290146, 0.206046,
		-0.355658, -0.741794, -0.568549,
		35.816193, 34.757282, 34.110626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502769, 34.869095, 34.920845>,  <36.065151, 35.276539, 34.508614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502769, 34.869095, 34.920845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649014, 34.634712, 34.631577>,  <35.736759, 34.494083, 34.458015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649014, 34.634712, 34.631577>,  <35.502769, 34.869095, 34.920845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649014, 34.634712, 34.631577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170588, -0.721622, 0.670941,
		-0.915003, -0.368667, -0.163874,
		0.365609, -0.585958, -0.723176,
		35.758698, 34.458923, 34.414623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142162, 34.250004, 35.078224>,  <35.502769, 34.869095, 34.920845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142162, 34.250004, 35.078224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416107, 34.133965, 34.810852>,  <35.580475, 34.064342, 34.650429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416107, 34.133965, 34.810852>,  <35.142162, 34.250004, 35.078224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416107, 34.133965, 34.810852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056408, -0.893475, 0.445557,
		-0.726482, -0.342853, -0.595547,
		0.684867, -0.290096, -0.668433,
		35.621567, 34.046936, 34.610321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930206, 33.658386, 34.796936>,  <35.142162, 34.250004, 35.078224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930206, 33.658386, 34.796936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323532, 33.630890, 34.729565>,  <35.559528, 33.614391, 34.689140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323532, 33.630890, 34.729565>,  <34.930206, 33.658386, 34.796936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323532, 33.630890, 34.729565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005021, -0.915256, 0.402842,
		-0.181844, -0.396966, -0.899639,
		0.983315, -0.068738, -0.168427,
		35.618526, 33.610268, 34.679035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021503, 33.091007, 34.458797>,  <34.930206, 33.658386, 34.796936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021503, 33.091007, 34.458797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378788, 33.162529, 34.623817>,  <35.593159, 33.205441, 34.722828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378788, 33.162529, 34.623817>,  <35.021503, 33.091007, 34.458797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378788, 33.162529, 34.623817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062545, -0.859202, 0.507800,
		0.445260, -0.479377, -0.756268,
		0.893214, 0.178802, 0.412551,
		35.646751, 33.216171, 34.747581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425282, 32.461761, 34.309074>,  <35.021503, 33.091007, 34.458797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425282, 32.461761, 34.309074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594784, 32.651951, 34.617455>,  <35.696484, 32.766064, 34.802483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594784, 32.651951, 34.617455>,  <35.425282, 32.461761, 34.309074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594784, 32.651951, 34.617455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045875, -0.838787, 0.542524,
		0.904613, -0.265266, -0.333630,
		0.423757, 0.475469, 0.770947,
		35.721912, 32.794590, 34.848740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971848, 32.048664, 34.469902>,  <35.425282, 32.461761, 34.309074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971848, 32.048664, 34.469902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910412, 32.273682, 34.794853>,  <35.873550, 32.408691, 34.989822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910412, 32.273682, 34.794853>,  <35.971848, 32.048664, 34.469902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910412, 32.273682, 34.794853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315762, -0.751084, 0.579799,
		0.936326, 0.345566, -0.062275,
		-0.153586, 0.562545, 0.812376,
		35.864338, 32.442444, 35.038567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615288, 31.996851, 34.894310>,  <35.971848, 32.048664, 34.469902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615288, 31.996851, 34.894310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330894, 32.092781, 35.158730>,  <36.160259, 32.150337, 35.317383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330894, 32.092781, 35.158730>,  <36.615288, 31.996851, 34.894310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330894, 32.092781, 35.158730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145961, -0.869246, 0.472343,
		0.687894, 0.432315, 0.583014,
		-0.710983, 0.239825, 0.661050,
		36.117599, 32.164730, 35.357044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132481, 31.495598, 35.139729>,  <36.615288, 31.996851, 34.894310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132481, 31.495598, 35.139729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476673, 31.293106, 35.162704>,  <37.683189, 31.171610, 35.176491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476673, 31.293106, 35.162704>,  <37.132481, 31.495598, 35.139729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476673, 31.293106, 35.162704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507542, 0.861569, -0.010056,
		-0.044398, 0.037807, 0.998298,
		0.860483, -0.506232, 0.057440,
		37.734818, 31.141237, 35.179935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641716, 31.838045, 35.707340>,  <37.132481, 31.495598, 35.139729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641716, 31.838045, 35.707340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874355, 31.609356, 35.475868>,  <38.013939, 31.472141, 35.336987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874355, 31.609356, 35.475868>,  <37.641716, 31.838045, 35.707340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874355, 31.609356, 35.475868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627505, 0.768003, -0.128098,
		0.517664, -0.288622, 0.805432,
		0.581602, -0.571725, -0.578679,
		38.048836, 31.437838, 35.302265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205261, 32.192150, 35.737705>,  <37.641716, 31.838045, 35.707340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205261, 32.192150, 35.737705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286148, 31.990437, 35.401894>,  <38.334679, 31.869410, 35.200405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286148, 31.990437, 35.401894>,  <38.205261, 32.192150, 35.737705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286148, 31.990437, 35.401894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417044, 0.819969, -0.392078,
		0.886105, -0.270837, 0.376119,
		0.202217, -0.504280, -0.839530,
		38.346813, 31.839153, 35.150036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962627, 32.185280, 35.556438>,  <38.205261, 32.192150, 35.737705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962627, 32.185280, 35.556438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733791, 32.141804, 35.231255>,  <38.596489, 32.115719, 35.036144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733791, 32.141804, 35.231255>,  <38.962627, 32.185280, 35.556438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733791, 32.141804, 35.231255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389941, 0.835956, -0.386167,
		0.721570, -0.537927, -0.435857,
		-0.572086, -0.108688, -0.812960,
		38.562164, 32.109196, 34.987366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407959, 32.462284, 34.976578>,  <38.962627, 32.185280, 35.556438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407959, 32.462284, 34.976578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035168, 32.465069, 34.831600>,  <38.811493, 32.466740, 34.744614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035168, 32.465069, 34.831600>,  <39.407959, 32.462284, 34.976578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035168, 32.465069, 34.831600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229125, 0.786101, -0.574062,
		0.280921, -0.618059, -0.734225,
		-0.931979, 0.006963, -0.362445,
		38.755573, 32.467159, 34.722866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361660, 32.358772, 34.198158>,  <39.407959, 32.462284, 34.976578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361660, 32.358772, 34.198158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025635, 32.556450, 34.287651>,  <38.824020, 32.675056, 34.341347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025635, 32.556450, 34.287651>,  <39.361660, 32.358772, 34.198158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025635, 32.556450, 34.287651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245993, 0.714613, -0.654840,
		-0.483503, -0.495072, -0.721892,
		-0.840067, 0.494197, 0.223733,
		38.773613, 32.704708, 34.354771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058136, 32.527729, 33.527321>,  <39.361660, 32.358772, 34.198158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058136, 32.527729, 33.527321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832420, 32.765762, 33.756214>,  <38.696991, 32.908581, 33.893551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832420, 32.765762, 33.756214>,  <39.058136, 32.527729, 33.527321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832420, 32.765762, 33.756214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049226, 0.716156, -0.696203,
		-0.824105, -0.364694, -0.433415,
		-0.564294, 0.595079, 0.572235,
		38.663132, 32.944286, 33.927883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601646, 32.724422, 33.119648>,  <39.058136, 32.527729, 33.527321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601646, 32.724422, 33.119648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622902, 33.004185, 33.404747>,  <38.635654, 33.172043, 33.575806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622902, 33.004185, 33.404747>,  <38.601646, 32.724422, 33.119648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622902, 33.004185, 33.404747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101742, 0.706253, -0.700611,
		-0.993391, 0.109746, -0.033630,
		0.053138, 0.699402, 0.712751,
		38.638844, 33.214005, 33.618572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079735, 33.283474, 32.846264>,  <38.601646, 32.724422, 33.119648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079735, 33.283474, 32.846264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335949, 33.434341, 33.113834>,  <38.489677, 33.524860, 33.274376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335949, 33.434341, 33.113834>,  <38.079735, 33.283474, 32.846264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335949, 33.434341, 33.113834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061807, 0.842930, -0.534461,
		-0.765441, 0.383684, 0.516612,
		0.640531, 0.377168, 0.668927,
		38.528107, 33.547493, 33.314514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888515, 33.971054, 32.869911>,  <38.079735, 33.283474, 32.846264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888515, 33.971054, 32.869911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247875, 33.983685, 33.045128>,  <38.463493, 33.991264, 33.150257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247875, 33.983685, 33.045128>,  <37.888515, 33.971054, 32.869911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247875, 33.983685, 33.045128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176598, 0.887246, -0.426154,
		-0.402103, 0.460214, 0.791527,
		0.898402, 0.031575, 0.438038,
		38.517395, 33.993156, 33.176540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992577, 34.595478, 33.306973>,  <37.888515, 33.971054, 32.869911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992577, 34.595478, 33.306973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359604, 34.480469, 33.197140>,  <38.579823, 34.411465, 33.131241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359604, 34.480469, 33.197140>,  <37.992577, 34.595478, 33.306973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359604, 34.480469, 33.197140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205317, 0.934113, -0.292023,
		0.340450, 0.211577, 0.916149,
		0.917572, -0.287520, -0.274578,
		38.634876, 34.394211, 33.114765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514751, 35.127243, 33.586857>,  <37.992577, 34.595478, 33.306973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514751, 35.127243, 33.586857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705730, 34.912582, 33.308563>,  <38.820316, 34.783787, 33.141586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705730, 34.912582, 33.308563>,  <38.514751, 35.127243, 33.586857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705730, 34.912582, 33.308563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284685, 0.843581, -0.455329,
		0.831262, 0.019332, 0.555544,
		0.477449, -0.536653, -0.695734,
		38.848965, 34.751587, 33.099842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065651, 35.548550, 33.494518>,  <38.514751, 35.127243, 33.586857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065651, 35.548550, 33.494518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069359, 35.303841, 33.178127>,  <39.071583, 35.157013, 32.988293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069359, 35.303841, 33.178127>,  <39.065651, 35.548550, 33.494518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069359, 35.303841, 33.178127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289919, 0.758681, -0.583396,
		0.957006, -0.223910, 0.184399,
		0.009272, -0.611774, -0.790978,
		39.072140, 35.120308, 32.940834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719715, 35.636700, 33.147926>,  <39.065651, 35.548550, 33.494518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719715, 35.636700, 33.147926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496067, 35.487804, 32.851597>,  <39.361877, 35.398468, 32.673798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496067, 35.487804, 32.851597>,  <39.719715, 35.636700, 33.147926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496067, 35.487804, 32.851597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370558, 0.687134, -0.624927,
		0.741671, -0.623927, -0.246251,
		-0.559116, -0.372240, -0.740828,
		39.328331, 35.376133, 32.629349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169304, 35.529606, 32.465790>,  <39.719715, 35.636700, 33.147926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169304, 35.529606, 32.465790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787743, 35.561825, 32.350151>,  <39.558804, 35.581154, 32.280769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787743, 35.561825, 32.350151>,  <40.169304, 35.529606, 32.465790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787743, 35.561825, 32.350151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278070, 0.599539, -0.750486,
		0.112879, -0.796283, -0.594300,
		-0.953905, 0.080543, -0.289098,
		39.501572, 35.585987, 32.263420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144321, 35.515694, 31.661854>,  <40.169304, 35.529606, 32.465790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144321, 35.515694, 31.661854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799511, 35.668167, 31.795485>,  <39.592625, 35.759651, 31.875664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799511, 35.668167, 31.795485>,  <40.144321, 35.515694, 31.661854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799511, 35.668167, 31.795485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054013, 0.724438, -0.687220,
		-0.503977, -0.574358, -0.645074,
		-0.862026, 0.381186, 0.334078,
		39.540901, 35.782524, 31.895708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729713, 35.573330, 31.102989>,  <40.144321, 35.515694, 31.661854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729713, 35.573330, 31.102989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573582, 35.834389, 31.362740>,  <39.479900, 35.991024, 31.518589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573582, 35.834389, 31.362740>,  <39.729713, 35.573330, 31.102989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573582, 35.834389, 31.362740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014340, 0.709551, -0.704508,
		-0.920562, -0.265680, -0.286320,
		-0.390332, 0.652650, 0.649376,
		39.456482, 36.030182, 31.557552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029552, 35.776779, 30.849218>,  <39.729713, 35.573330, 31.102989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029552, 35.776779, 30.849218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171555, 36.066963, 31.085075>,  <39.256756, 36.241074, 31.226589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171555, 36.066963, 31.085075>,  <39.029552, 35.776779, 30.849218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171555, 36.066963, 31.085075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038209, 0.618941, -0.784508,
		-0.934082, 0.301036, 0.192010,
		0.355008, 0.725458, 0.589644,
		39.278057, 36.284599, 31.261969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.544930, 36.469631, 30.584766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834736, 36.599224, 30.828112>,  <39.008621, 36.676979, 30.974119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834736, 36.599224, 30.828112>,  <38.544930, 36.469631, 30.584766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834736, 36.599224, 30.828112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125294, 0.806028, -0.578464,
		-0.677770, 0.495333, 0.543390,
		0.724520, 0.323982, 0.608364,
		39.052094, 36.696419, 31.010620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320435, 37.164783, 30.828968>,  <38.544930, 36.469631, 30.584766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320435, 37.164783, 30.828968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.718571, 37.159992, 30.867250>,  <38.957451, 37.157116, 30.890221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.718571, 37.159992, 30.867250>,  <38.320435, 37.164783, 30.828968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718571, 37.159992, 30.867250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063439, 0.828739, -0.556028,
		-0.072654, 0.559507, 0.825635,
		0.995337, -0.011980, 0.095706,
		39.017174, 37.156399, 30.895962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498219, 37.829060, 31.090054>,  <38.320435, 37.164783, 30.828968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498219, 37.829060, 31.090054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824570, 37.676224, 30.916454>,  <39.020378, 37.584522, 30.812294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824570, 37.676224, 30.916454>,  <38.498219, 37.829060, 31.090054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824570, 37.676224, 30.916454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053303, 0.797071, -0.601528,
		0.575765, 0.467639, 0.670678,
		0.815876, -0.382088, -0.433999,
		39.069332, 37.561596, 30.786255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008366, 38.375973, 30.991493>,  <38.498219, 37.829060, 31.090054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008366, 38.375973, 30.991493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077702, 38.117027, 30.694611>,  <39.119305, 37.961658, 30.516481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077702, 38.117027, 30.694611>,  <39.008366, 38.375973, 30.991493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077702, 38.117027, 30.694611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066467, 0.759586, -0.647002,
		0.982617, 0.062818, 0.174694,
		0.173338, -0.647366, -0.742207,
		39.129704, 37.922817, 30.471949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410973, 38.668842, 30.520721>,  <39.008366, 38.375973, 30.991493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410973, 38.668842, 30.520721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276768, 38.368675, 30.292929>,  <39.196243, 38.188576, 30.156254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276768, 38.368675, 30.292929>,  <39.410973, 38.668842, 30.520721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276768, 38.368675, 30.292929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057590, 0.619729, -0.782700,
		0.940273, -0.229811, -0.251144,
		-0.335515, -0.750415, -0.569479,
		39.176113, 38.143551, 30.122086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791771, 38.755436, 29.894396>,  <39.410973, 38.668842, 30.520721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791771, 38.755436, 29.894396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482059, 38.519024, 29.803907>,  <39.296234, 38.377178, 29.749615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482059, 38.519024, 29.803907>,  <39.791771, 38.755436, 29.894396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482059, 38.519024, 29.803907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094330, 0.461256, -0.882238,
		0.625775, -0.661758, -0.412893,
		-0.774278, -0.591031, -0.226219,
		39.249775, 38.341713, 29.736042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866261, 38.621979, 29.226965>,  <39.791771, 38.755436, 29.894396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866261, 38.621979, 29.226965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477852, 38.538628, 29.273779>,  <39.244808, 38.488617, 29.301867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477852, 38.538628, 29.273779>,  <39.866261, 38.621979, 29.226965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477852, 38.538628, 29.273779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207435, 0.491612, -0.845748,
		0.118701, -0.845515, -0.520590,
		-0.971021, -0.208379, 0.117034,
		39.186546, 38.476112, 29.308889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690182, 38.231670, 28.655159>,  <39.866261, 38.621979, 29.226965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690182, 38.231670, 28.655159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351536, 38.397545, 28.788595>,  <39.148350, 38.497070, 28.868658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351536, 38.397545, 28.788595>,  <39.690182, 38.231670, 28.655159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351536, 38.397545, 28.788595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005256, 0.620259, -0.784380,
		-0.532185, -0.665819, -0.522939,
		-0.846612, 0.414686, 0.333592,
		39.097553, 38.521950, 28.888672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396744, 38.396420, 28.041571>,  <39.690182, 38.231670, 28.655159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396744, 38.396420, 28.041571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192596, 38.623524, 28.299925>,  <39.070107, 38.759789, 28.454937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192596, 38.623524, 28.299925>,  <39.396744, 38.396420, 28.041571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192596, 38.623524, 28.299925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010179, 0.755005, -0.655640,
		-0.859897, -0.328042, -0.391109,
		-0.510367, 0.567764, 0.645887,
		39.039486, 38.793854, 28.493690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785072, 38.693371, 27.697151>,  <39.396744, 38.396420, 28.041571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785072, 38.693371, 27.697151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876469, 38.926346, 28.009192>,  <38.931305, 39.066132, 28.196417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876469, 38.926346, 28.009192>,  <38.785072, 38.693371, 27.697151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876469, 38.926346, 28.009192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105325, 0.781808, -0.614559,
		-0.967832, 0.222584, 0.117290,
		0.228489, 0.582436, 0.780103,
		38.945015, 39.101078, 28.243223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371506, 39.245110, 27.546309>,  <38.785072, 38.693371, 27.697151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371506, 39.245110, 27.546309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656616, 39.365250, 27.799841>,  <38.827682, 39.437332, 27.951960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656616, 39.365250, 27.799841>,  <38.371506, 39.245110, 27.546309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656616, 39.365250, 27.799841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139006, 0.825261, -0.547377,
		-0.687478, 0.478264, 0.546477,
		0.712777, 0.300346, 0.633830,
		38.870449, 39.455353, 27.989990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294247, 39.903107, 27.546614>,  <38.371506, 39.245110, 27.546309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294247, 39.903107, 27.546614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653538, 39.887360, 27.721718>,  <38.869114, 39.877911, 27.826780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653538, 39.887360, 27.721718>,  <38.294247, 39.903107, 27.546614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653538, 39.887360, 27.721718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204232, 0.919310, -0.336390,
		-0.389197, 0.391560, 0.833791,
		0.898229, -0.039365, 0.437762,
		38.923008, 39.875549, 27.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360931, 40.556957, 27.816080>,  <38.294247, 39.903107, 27.546614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360931, 40.556957, 27.816080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723557, 40.401360, 27.750563>,  <38.941132, 40.307999, 27.711252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723557, 40.401360, 27.750563>,  <38.360931, 40.556957, 27.816080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723557, 40.401360, 27.750563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279881, 0.844513, -0.456579,
		0.315935, 0.368074, 0.874475,
		0.906561, -0.388998, -0.163794,
		38.995525, 40.284660, 27.701424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835369, 41.134171, 27.897768>,  <38.360931, 40.556957, 27.816080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835369, 41.134171, 27.897768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081917, 40.874718, 27.719168>,  <39.229847, 40.719048, 27.612007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081917, 40.874718, 27.719168>,  <38.835369, 41.134171, 27.897768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081917, 40.874718, 27.719168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512994, 0.760938, -0.397254,
		0.597432, 0.015803, 0.801764,
		0.616370, -0.648632, -0.446502,
		39.266827, 40.680126, 27.585217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579639, 41.445965, 27.984402>,  <38.835369, 41.134171, 27.897768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579639, 41.445965, 27.984402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610310, 41.209023, 27.663593>,  <39.628712, 41.066856, 27.471107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610310, 41.209023, 27.663593>,  <39.579639, 41.445965, 27.984402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610310, 41.209023, 27.663593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568796, 0.686646, -0.452756,
		0.818896, -0.421471, 0.389578,
		0.076678, -0.592351, -0.802023,
		39.633312, 41.031319, 27.422987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329620, 41.526161, 27.774820>,  <39.579639, 41.445965, 27.984402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329620, 41.526161, 27.774820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165207, 41.354633, 27.453033>,  <40.066559, 41.251717, 27.259960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165207, 41.354633, 27.453033>,  <40.329620, 41.526161, 27.774820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165207, 41.354633, 27.453033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536181, 0.599965, -0.593761,
		0.737268, -0.675394, -0.016680,
		-0.411030, -0.428818, -0.804469,
		40.041897, 41.225986, 27.211693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853706, 41.447769, 27.356102>,  <40.329620, 41.526161, 27.774820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853706, 41.447769, 27.356102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533051, 41.442966, 27.117025>,  <40.340656, 41.440083, 26.973579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533051, 41.442966, 27.117025>,  <40.853706, 41.447769, 27.356102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533051, 41.442966, 27.117025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452138, 0.641887, -0.619316,
		0.391087, -0.766705, -0.509131,
		-0.801637, -0.012009, -0.597690,
		40.292561, 41.439365, 26.937717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033855, 41.315086, 26.655130>,  <40.853706, 41.447769, 27.356102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033855, 41.315086, 26.655130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.690792, 41.520718, 26.650415>,  <40.484955, 41.644096, 26.647587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.690792, 41.520718, 26.650415>,  <41.033855, 41.315086, 26.655130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690792, 41.520718, 26.650415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414300, 0.677252, -0.608017,
		-0.304589, -0.526355, -0.793836,
		-0.857660, 0.514082, -0.011785,
		40.433495, 41.674942, 26.646879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886974, 41.516895, 25.908535>,  <41.033855, 41.315086, 26.655130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886974, 41.516895, 25.908535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669189, 41.786243, 26.108585>,  <40.538517, 41.947853, 26.228617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669189, 41.786243, 26.108585>,  <40.886974, 41.516895, 25.908535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669189, 41.786243, 26.108585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293015, 0.711378, -0.638813,
		-0.785941, -0.201265, -0.584628,
		-0.544462, 0.673374, 0.500127,
		40.505852, 41.988255, 26.258623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541630, 41.855442, 25.446356>,  <40.886974, 41.516895, 25.908535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541630, 41.855442, 25.446356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495625, 42.107853, 25.753231>,  <40.468021, 42.259300, 25.937355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495625, 42.107853, 25.753231>,  <40.541630, 41.855442, 25.446356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495625, 42.107853, 25.753231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331881, 0.752342, -0.569066,
		-0.936284, 0.189166, -0.295954,
		-0.115011, 0.631028, 0.767187,
		40.461121, 42.297161, 25.983387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238705, 42.422867, 25.124815>,  <40.541630, 41.855442, 25.446356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238705, 42.422867, 25.124815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324833, 42.577587, 25.483484>,  <40.376511, 42.670418, 25.698687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324833, 42.577587, 25.483484>,  <40.238705, 42.422867, 25.124815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324833, 42.577587, 25.483484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324279, 0.837789, -0.439265,
		-0.921131, 0.385354, 0.054960,
		0.215318, 0.386798, 0.896675,
		40.389427, 42.693626, 25.752487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997475, 43.087158, 25.103800>,  <40.238705, 42.422867, 25.124815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997475, 43.087158, 25.103800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.288410, 43.032978, 25.372911>,  <40.462971, 43.000469, 25.534378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.288410, 43.032978, 25.372911>,  <39.997475, 43.087158, 25.103800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288410, 43.032978, 25.372911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406704, 0.874709, -0.263581,
		-0.552784, 0.465335, 0.691298,
		0.727339, -0.135450, 0.672779,
		40.506611, 42.992344, 25.574745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084103, 43.559891, 25.678305>,  <39.997475, 43.087158, 25.103800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084103, 43.559891, 25.678305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431370, 43.404449, 25.554844>,  <40.639732, 43.311184, 25.480766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431370, 43.404449, 25.554844>,  <40.084103, 43.559891, 25.678305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431370, 43.404449, 25.554844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356504, 0.921036, -0.156832,
		0.345226, 0.026121, 0.938156,
		0.868172, -0.388599, -0.308654,
		40.691822, 43.287868, 25.462248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167496, 44.315968, 25.906158>,  <40.084103, 43.559891, 25.678305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167496, 44.315968, 25.906158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825096, 44.522461, 25.917198>,  <39.619656, 44.646358, 25.923822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825096, 44.522461, 25.917198>,  <40.167496, 44.315968, 25.906158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825096, 44.522461, 25.917198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392187, -0.683244, 0.615928,
		0.336820, 0.516412, 0.787319,
		-0.856004, 0.516233, 0.027599,
		39.568295, 44.677330, 25.925478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866009, 44.111397, 26.510389>,  <40.167496, 44.315968, 25.906158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866009, 44.111397, 26.510389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.562145, 44.333946, 26.375715>,  <39.379826, 44.467476, 26.294910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.562145, 44.333946, 26.375715>,  <39.866009, 44.111397, 26.510389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562145, 44.333946, 26.375715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583597, -0.354823, 0.730421,
		0.286925, 0.751363, 0.594246,
		-0.759663, 0.556376, -0.336686,
		39.334248, 44.500858, 26.274710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584492, 44.513634, 26.999466>,  <39.866009, 44.111397, 26.510389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584492, 44.513634, 26.999466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264709, 44.480389, 26.761488>,  <39.072838, 44.460442, 26.618702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264709, 44.480389, 26.761488>,  <39.584492, 44.513634, 26.999466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264709, 44.480389, 26.761488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509981, -0.429500, 0.745285,
		-0.317469, 0.899234, 0.300983,
		-0.799458, -0.083109, -0.594945,
		39.024872, 44.455456, 26.583004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988159, 44.766544, 27.348228>,  <39.584492, 44.513634, 26.999466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988159, 44.766544, 27.348228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818237, 44.549587, 27.058304>,  <38.716282, 44.419415, 26.884350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818237, 44.549587, 27.058304>,  <38.988159, 44.766544, 27.348228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818237, 44.549587, 27.058304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641436, -0.384649, 0.663781,
		-0.638826, 0.746899, -0.184506,
		-0.424807, -0.542390, -0.724812,
		38.690796, 44.386871, 26.840860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294483, 44.815506, 27.499882>,  <38.988159, 44.766544, 27.348228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294483, 44.815506, 27.499882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345695, 44.498749, 27.261045>,  <38.376423, 44.308697, 27.117744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345695, 44.498749, 27.261045>,  <38.294483, 44.815506, 27.499882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345695, 44.498749, 27.261045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623149, -0.532596, 0.572736,
		-0.771553, 0.298750, -0.561654,
		0.128030, -0.791891, -0.597091,
		38.384106, 44.261181, 27.081919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630501, 44.550652, 27.383255>,  <38.294483, 44.815506, 27.499882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630501, 44.550652, 27.383255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861305, 44.237793, 27.289188>,  <37.999786, 44.050076, 27.232748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861305, 44.237793, 27.289188>,  <37.630501, 44.550652, 27.383255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861305, 44.237793, 27.289188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468716, -0.552913, 0.688907,
		-0.668855, -0.287278, -0.685641,
		0.577008, -0.782150, -0.235167,
		38.034409, 44.003147, 27.218639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299149, 43.950188, 27.367575>,  <37.630501, 44.550652, 27.383255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299149, 43.950188, 27.367575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669163, 43.801952, 27.400978>,  <37.891171, 43.713013, 27.421021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669163, 43.801952, 27.400978>,  <37.299149, 43.950188, 27.367575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669163, 43.801952, 27.400978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334647, -0.690935, 0.640797,
		-0.179771, -0.620706, -0.763155,
		0.925038, -0.370584, 0.083508,
		37.946674, 43.690777, 27.426031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208786, 43.283852, 27.279898>,  <37.299149, 43.950188, 27.367575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208786, 43.283852, 27.279898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577785, 43.289616, 27.434193>,  <37.799183, 43.293076, 27.526770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577785, 43.289616, 27.434193>,  <37.208786, 43.283852, 27.279898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577785, 43.289616, 27.434193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239692, -0.761907, 0.601702,
		0.302568, -0.647526, -0.699402,
		0.922497, 0.014414, 0.385735,
		37.854534, 43.293941, 27.549913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504406, 42.611347, 27.133760>,  <37.208786, 43.283852, 27.279898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504406, 42.611347, 27.133760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697918, 42.756165, 27.452478>,  <37.814026, 42.843056, 27.643709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697918, 42.756165, 27.452478>,  <37.504406, 42.611347, 27.133760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697918, 42.756165, 27.452478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213004, -0.834345, 0.508427,
		0.848873, -0.415688, -0.326524,
		0.483781, 0.362039, 0.796796,
		37.843052, 42.864777, 27.691517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810688, 42.063187, 27.379318>,  <37.504406, 42.611347, 27.133760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810688, 42.063187, 27.379318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833969, 42.305149, 27.696985>,  <37.847939, 42.450325, 27.887585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833969, 42.305149, 27.696985>,  <37.810688, 42.063187, 27.379318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833969, 42.305149, 27.696985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176166, -0.776808, 0.604595,
		0.982638, -0.175095, 0.061351,
		0.058204, 0.604906, 0.794166,
		37.851429, 42.486622, 27.935236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253170, 41.716377, 27.804741>,  <37.810688, 42.063187, 27.379318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253170, 41.716377, 27.804741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.060631, 41.976185, 28.040176>,  <37.945107, 42.132069, 28.181438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.060631, 41.976185, 28.040176>,  <38.253170, 41.716377, 27.804741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060631, 41.976185, 28.040176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346436, -0.757798, 0.552924,
		0.805164, 0.062238, 0.589777,
		-0.481344, 0.649514, 0.588591,
		37.916229, 42.171040, 28.216753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554844, 41.606316, 28.397776>,  <38.253170, 41.716377, 27.804741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554844, 41.606316, 28.397776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190472, 41.749279, 28.480200>,  <37.971848, 41.835056, 28.529654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190472, 41.749279, 28.480200>,  <38.554844, 41.606316, 28.397776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190472, 41.749279, 28.480200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227738, -0.852105, 0.471224,
		0.344006, 0.382325, 0.857606,
		-0.910931, 0.357413, 0.206059,
		37.917191, 41.856503, 28.542017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388855, 41.546268, 29.145689>,  <38.554844, 41.606316, 28.397776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388855, 41.546268, 29.145689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030304, 41.579582, 28.971529>,  <37.815174, 41.599571, 28.867033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030304, 41.579582, 28.971529>,  <38.388855, 41.546268, 29.145689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030304, 41.579582, 28.971529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305698, -0.827426, 0.471079,
		-0.321028, 0.555365, 0.767144,
		-0.896376, 0.083285, -0.435401,
		37.761391, 41.604568, 28.840908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937954, 41.473572, 29.712284>,  <38.388855, 41.546268, 29.145689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937954, 41.473572, 29.712284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721783, 41.391830, 29.385805>,  <37.592079, 41.342785, 29.189919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721783, 41.391830, 29.385805>,  <37.937954, 41.473572, 29.712284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721783, 41.391830, 29.385805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290821, -0.864900, 0.409110,
		-0.789533, 0.458462, 0.407984,
		-0.540427, -0.204356, -0.816197,
		37.559654, 41.330524, 29.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190304, 41.327126, 29.871828>,  <37.937954, 41.473572, 29.712284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190304, 41.327126, 29.871828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228413, 41.154865, 29.512838>,  <37.251278, 41.051510, 29.297445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228413, 41.154865, 29.512838>,  <37.190304, 41.327126, 29.871828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228413, 41.154865, 29.512838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323400, -0.866060, 0.381250,
		-0.941454, 0.253923, -0.221782,
		0.095269, -0.430654, -0.897475,
		37.256992, 41.025669, 29.243595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537605, 40.967155, 29.751785>,  <37.190304, 41.327126, 29.871828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537605, 40.967155, 29.751785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808819, 40.777878, 29.526804>,  <36.971546, 40.664310, 29.391815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808819, 40.777878, 29.526804>,  <36.537605, 40.967155, 29.751785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808819, 40.777878, 29.526804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366069, -0.880954, 0.299855,
		-0.637384, 0.002584, -0.770541,
		0.678037, -0.473194, -0.562452,
		37.012230, 40.635918, 29.358068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132492, 40.343899, 29.603872>,  <36.537605, 40.967155, 29.751785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132492, 40.343899, 29.603872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512253, 40.279442, 29.496042>,  <36.740108, 40.240768, 29.431345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512253, 40.279442, 29.496042>,  <36.132492, 40.343899, 29.603872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512253, 40.279442, 29.496042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092985, -0.964076, 0.248818,
		-0.299984, -0.211162, -0.930279,
		0.949401, -0.161143, -0.269573,
		36.797073, 40.231098, 29.415171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119900, 39.907616, 29.121494>,  <36.132492, 40.343899, 29.603872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119900, 39.907616, 29.121494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464874, 39.899040, 29.323780>,  <36.671860, 39.893894, 29.445152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464874, 39.899040, 29.323780>,  <36.119900, 39.907616, 29.121494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464874, 39.899040, 29.323780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187378, -0.941647, 0.279627,
		0.470211, -0.335920, -0.816125,
		0.862433, -0.021440, 0.505716,
		36.723606, 39.892609, 29.475494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277702, 39.232994, 29.061169>,  <36.119900, 39.907616, 29.121494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277702, 39.232994, 29.061169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542892, 39.358288, 29.333153>,  <36.702007, 39.433464, 29.496344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542892, 39.358288, 29.333153>,  <36.277702, 39.232994, 29.061169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542892, 39.358288, 29.333153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023597, -0.916553, 0.399215,
		0.748265, -0.248627, -0.615048,
		0.662980, 0.313232, 0.679958,
		36.741787, 39.452259, 29.537140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745068, 38.717430, 29.177074>,  <36.277702, 39.232994, 29.061169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745068, 38.717430, 29.177074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775951, 38.922649, 29.519028>,  <36.794483, 39.045780, 29.724199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775951, 38.922649, 29.519028>,  <36.745068, 38.717430, 29.177074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775951, 38.922649, 29.519028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002633, -0.857334, 0.514754,
		0.997011, -0.041996, -0.064845,
		0.077212, 0.513045, 0.854882,
		36.799114, 39.076561, 29.775492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146313, 38.265408, 29.505938>,  <36.745068, 38.717430, 29.177074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146313, 38.265408, 29.505938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011822, 38.503620, 29.797771>,  <36.931126, 38.646549, 29.972872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011822, 38.503620, 29.797771>,  <37.146313, 38.265408, 29.505938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011822, 38.503620, 29.797771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138939, -0.797576, 0.586999,
		0.931475, 0.095998, 0.350910,
		-0.336228, 0.595531, 0.729585,
		36.910954, 38.682278, 30.016647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.614658, 34.143032, 32.181564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369846, 34.303833, 32.453979>,  <39.222958, 34.400314, 32.617428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369846, 34.303833, 32.453979>,  <39.614658, 34.143032, 32.181564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369846, 34.303833, 32.453979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182936, -0.765845, 0.616455,
		0.769386, 0.501875, 0.395180,
		-0.612030, 0.401999, 0.681041,
		39.186237, 34.424431, 32.658291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867218, 34.070816, 32.921604>,  <39.614658, 34.143032, 32.181564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867218, 34.070816, 32.921604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475586, 34.144672, 32.955784>,  <39.240604, 34.188988, 32.976292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475586, 34.144672, 32.955784>,  <39.867218, 34.070816, 32.921604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475586, 34.144672, 32.955784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083947, -0.749178, 0.657027,
		0.185329, 0.636112, 0.749009,
		-0.979084, 0.184644, 0.085445,
		39.181862, 34.200066, 32.981419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725185, 34.180489, 33.610878>,  <39.867218, 34.070816, 32.921604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725185, 34.180489, 33.610878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354488, 34.122322, 33.472305>,  <39.132072, 34.087421, 33.389164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354488, 34.122322, 33.472305>,  <39.725185, 34.180489, 33.610878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354488, 34.122322, 33.472305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229206, -0.511779, 0.827977,
		-0.297693, 0.846721, 0.440956,
		-0.926738, -0.145413, -0.346427,
		39.076466, 34.078697, 33.368378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322834, 34.221470, 34.212585>,  <39.725185, 34.180489, 33.610878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322834, 34.221470, 34.212585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087959, 34.010681, 33.966820>,  <38.947033, 33.884209, 33.819359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087959, 34.010681, 33.966820>,  <39.322834, 34.221470, 34.212585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087959, 34.010681, 33.966820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066236, -0.725229, 0.685314,
		-0.806735, 0.443106, 0.390942,
		-0.587189, -0.526972, -0.614417,
		38.911804, 33.852589, 33.782494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749096, 34.058060, 34.603085>,  <39.322834, 34.221470, 34.212585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749096, 34.058060, 34.603085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712891, 33.815159, 34.287350>,  <38.691170, 33.669418, 34.097908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712891, 33.815159, 34.287350>,  <38.749096, 34.058060, 34.603085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712891, 33.815159, 34.287350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326333, -0.730749, 0.599594,
		-0.940911, 0.311857, -0.132024,
		-0.090511, -0.607249, -0.789339,
		38.685738, 33.632984, 34.050549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987209, 33.741261, 34.657021>,  <38.749096, 34.058060, 34.603085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987209, 33.741261, 34.657021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.208569, 33.492641, 34.435234>,  <38.341385, 33.343472, 34.302162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.208569, 33.492641, 34.435234>,  <37.987209, 33.741261, 34.657021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208569, 33.492641, 34.435234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292139, -0.768243, 0.569612,
		-0.780007, -0.153237, -0.606718,
		0.553393, -0.621547, -0.554469,
		38.374588, 33.306179, 34.268894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599178, 33.201626, 34.518650>,  <37.987209, 33.741261, 34.657021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599178, 33.201626, 34.518650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964302, 33.047699, 34.463955>,  <38.183376, 32.955341, 34.431137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964302, 33.047699, 34.463955>,  <37.599178, 33.201626, 34.518650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964302, 33.047699, 34.463955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269639, -0.819359, 0.505910,
		-0.306719, -0.424930, -0.851680,
		0.912808, -0.384818, -0.136735,
		38.238144, 32.932255, 34.422935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549755, 32.524288, 34.316551>,  <37.599178, 33.201626, 34.518650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549755, 32.524288, 34.316551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929459, 32.521641, 34.442326>,  <38.157280, 32.520054, 34.517788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929459, 32.521641, 34.442326>,  <37.549755, 32.524288, 34.316551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929459, 32.521641, 34.442326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181103, -0.828886, 0.529292,
		0.257127, -0.559379, -0.788024,
		0.949256, -0.006618, 0.314434,
		38.214237, 32.519657, 34.536655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838772, 31.852102, 33.953632>,  <37.549755, 32.524288, 34.316551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838772, 31.852102, 33.953632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086086, 31.922985, 34.259918>,  <38.234474, 31.965515, 34.443691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086086, 31.922985, 34.259918>,  <37.838772, 31.852102, 33.953632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086086, 31.922985, 34.259918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075236, -0.956432, 0.282096,
		0.782345, -0.232025, -0.578015,
		0.618285, 0.177209, 0.765716,
		38.271572, 31.976149, 34.489632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213501, 31.196705, 34.046684>,  <37.838772, 31.852102, 33.953632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213501, 31.196705, 34.046684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292088, 31.388319, 34.388893>,  <38.339241, 31.503288, 34.594219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292088, 31.388319, 34.388893>,  <38.213501, 31.196705, 34.046684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292088, 31.388319, 34.388893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067935, -0.863783, 0.499263,
		0.978154, -0.156210, -0.137164,
		0.196469, 0.479038, 0.855525,
		38.351028, 31.532030, 34.645550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834568, 30.829540, 34.457508>,  <38.213501, 31.196705, 34.046684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834568, 30.829540, 34.457508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588394, 31.013805, 34.713329>,  <38.440689, 31.124365, 34.866821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588394, 31.013805, 34.713329>,  <38.834568, 30.829540, 34.457508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588394, 31.013805, 34.713329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200430, -0.876216, 0.438261,
		0.762275, 0.141539, 0.631588,
		-0.615439, 0.460665, 0.639549,
		38.403763, 31.152004, 34.905193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379490, 31.208941, 34.690479>,  <38.834568, 30.829540, 34.457508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379490, 31.208941, 34.690479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029102, 31.321852, 34.846935>,  <38.818871, 31.389599, 34.940807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029102, 31.321852, 34.846935>,  <39.379490, 31.208941, 34.690479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029102, 31.321852, 34.846935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041306, 0.764011, -0.643879,
		-0.480589, -0.580177, -0.657593,
		-0.875972, 0.282279, 0.391141,
		38.766312, 31.406536, 34.964279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924267, 31.246883, 35.229820>,  <39.379490, 31.208941, 34.690479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924267, 31.246883, 35.229820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989883, 31.622757, 35.349880>,  <40.029251, 31.848280, 35.421917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989883, 31.622757, 35.349880>,  <39.924267, 31.246883, 35.229820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989883, 31.622757, 35.349880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880281, 0.002121, 0.474448,
		0.445193, -0.342044, 0.827532,
		0.164037, 0.939682, 0.300150,
		40.039093, 31.904661, 35.439926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929798, 31.270475, 35.989803>,  <39.924267, 31.246883, 35.229820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929798, 31.270475, 35.989803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.821686, 31.605957, 35.800690>,  <39.756821, 31.807245, 35.687222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.821686, 31.605957, 35.800690>,  <39.929798, 31.270475, 35.989803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821686, 31.605957, 35.800690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832420, 0.043177, 0.552460,
		0.483763, 0.542876, 0.686483,
		-0.270277, 0.838702, -0.472789,
		39.740604, 31.857567, 35.658852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754631, 31.754082, 36.502884>,  <39.929798, 31.270475, 35.989803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754631, 31.754082, 36.502884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560112, 31.816261, 36.158939>,  <39.443401, 31.853569, 35.952572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560112, 31.816261, 36.158939>,  <39.754631, 31.754082, 36.502884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560112, 31.816261, 36.158939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867823, 0.028945, 0.496031,
		0.101996, 0.987420, 0.120827,
		-0.486293, 0.155450, -0.859857,
		39.414223, 31.862896, 35.900982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915539, 31.909847, 36.567139>,  <39.754631, 31.754082, 36.502884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915539, 31.909847, 36.567139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039524, 31.884846, 36.946613>,  <39.113914, 31.869844, 37.174297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039524, 31.884846, 36.946613>,  <38.915539, 31.909847, 36.567139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039524, 31.884846, 36.946613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035296, 0.997905, 0.054212,
		-0.950092, 0.016681, 0.311523,
		0.309966, -0.062502, 0.948691,
		39.132515, 31.866095, 37.231220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586422, 32.479294, 36.877937>,  <38.915539, 31.909847, 36.567139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586422, 32.479294, 36.877937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.895798, 32.411331, 37.122208>,  <39.081421, 32.370556, 37.268772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.895798, 32.411331, 37.122208>,  <38.586422, 32.479294, 36.877937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895798, 32.411331, 37.122208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068466, 0.980164, 0.185987,
		-0.630166, -0.102039, 0.769727,
		0.773436, -0.169903, 0.610679,
		39.127831, 32.360359, 37.305412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397789, 32.862144, 37.503193>,  <38.586422, 32.479294, 36.877937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397789, 32.862144, 37.503193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793743, 32.805420, 37.501900>,  <39.031315, 32.771385, 37.501125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793743, 32.805420, 37.501900>,  <38.397789, 32.862144, 37.503193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793743, 32.805420, 37.501900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139611, 0.970004, 0.199002,
		-0.025087, -0.197440, 0.979994,
		0.989889, -0.141810, -0.003230,
		39.090710, 32.762878, 37.500931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744778, 33.223591, 38.154934>,  <38.397789, 32.862144, 37.503193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744778, 33.223591, 38.154934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011383, 33.186069, 37.859108>,  <39.171349, 33.163559, 37.681614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011383, 33.186069, 37.859108>,  <38.744778, 33.223591, 38.154934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011383, 33.186069, 37.859108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210631, 0.975327, 0.066126,
		0.715116, -0.199849, 0.669828,
		0.666517, -0.093799, -0.739566,
		39.211338, 33.157928, 37.637238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168278, 33.833870, 38.176991>,  <38.744778, 33.223591, 38.154934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168278, 33.833870, 38.176991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.304482, 33.660328, 37.843327>,  <39.386204, 33.556202, 37.643127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.304482, 33.660328, 37.843327>,  <39.168278, 33.833870, 38.176991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304482, 33.660328, 37.843327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300845, 0.890810, -0.340514,
		0.890810, -0.135003, 0.433857,
		0.340514, -0.433857, -0.834158,
		39.406635, 33.530170, 37.593079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859459, 34.077923, 38.094769>,  <39.168278, 33.833870, 38.176991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859459, 34.077923, 38.094769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698296, 33.968204, 37.745502>,  <39.601597, 33.902374, 37.535942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698296, 33.968204, 37.745502>,  <39.859459, 34.077923, 38.094769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698296, 33.968204, 37.745502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292587, 0.865369, -0.406854,
		0.867203, -0.419410, -0.268430,
		-0.402929, -0.274286, -0.873164,
		39.577423, 33.885918, 37.483551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355335, 34.330605, 37.641769>,  <39.859459, 34.077923, 38.094769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355335, 34.330605, 37.641769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033794, 34.257458, 37.415363>,  <39.840870, 34.213570, 37.279518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033794, 34.257458, 37.415363>,  <40.355335, 34.330605, 37.641769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033794, 34.257458, 37.415363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193201, 0.819711, -0.539209,
		0.562573, -0.542802, -0.623601,
		-0.803856, -0.182864, -0.566017,
		39.792637, 34.202599, 37.245560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628368, 34.360790, 37.005661>,  <40.355335, 34.330605, 37.641769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628368, 34.360790, 37.005661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236298, 34.423473, 36.957172>,  <40.001057, 34.461082, 36.928078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236298, 34.423473, 36.957172>,  <40.628368, 34.360790, 37.005661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236298, 34.423473, 36.957172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197968, 0.750610, -0.630392,
		-0.007795, -0.641894, -0.766754,
		-0.980178, 0.156706, -0.121224,
		39.942245, 34.470486, 36.920807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433174, 34.413506, 36.206619>,  <40.628368, 34.360790, 37.005661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433174, 34.413506, 36.206619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.120014, 34.591087, 36.380962>,  <39.932117, 34.697636, 36.485569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.120014, 34.591087, 36.380962>,  <40.433174, 34.413506, 36.206619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120014, 34.591087, 36.380962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057709, 0.645726, -0.761385,
		-0.619467, -0.621240, -0.479918,
		-0.782899, 0.443957, 0.435857,
		39.885143, 34.724274, 36.511719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893791, 34.513241, 35.656876>,  <40.433174, 34.413506, 36.206619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893791, 34.513241, 35.656876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815887, 34.752972, 35.967457>,  <39.769146, 34.896809, 36.153805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815887, 34.752972, 35.967457>,  <39.893791, 34.513241, 35.656876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815887, 34.752972, 35.967457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076489, 0.798478, -0.597145,
		-0.977865, -0.056908, -0.201351,
		-0.194757, 0.599328, 0.776450,
		39.757462, 34.932770, 36.200394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441311, 35.050602, 35.369839>,  <39.893791, 34.513241, 35.656876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441311, 35.050602, 35.369839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596386, 35.198627, 35.707539>,  <39.689430, 35.287441, 35.910156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596386, 35.198627, 35.707539>,  <39.441311, 35.050602, 35.369839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596386, 35.198627, 35.707539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044841, 0.922364, -0.383710,
		-0.920699, 0.110904, 0.374185,
		0.387690, 0.370060, 0.844246,
		39.712692, 35.309647, 35.960812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053642, 35.694847, 35.513779>,  <39.441311, 35.050602, 35.369839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053642, 35.694847, 35.513779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403564, 35.717716, 35.706219>,  <39.613518, 35.731438, 35.821682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403564, 35.717716, 35.706219>,  <39.053642, 35.694847, 35.513779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403564, 35.717716, 35.706219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131686, 0.927571, -0.349674,
		-0.466242, 0.369249, 0.803912,
		0.874801, 0.057169, 0.481097,
		39.666004, 35.734867, 35.850548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007175, 36.407021, 35.767303>,  <39.053642, 35.694847, 35.513779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007175, 36.407021, 35.767303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383263, 36.272099, 35.748436>,  <39.608913, 36.191147, 35.737118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383263, 36.272099, 35.748436>,  <39.007175, 36.407021, 35.767303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383263, 36.272099, 35.748436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221702, 0.711259, -0.667053,
		0.258545, 0.616715, 0.743516,
		0.940214, -0.337302, -0.047166,
		39.665325, 36.170906, 35.734287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731846, 36.615173, 36.460472>,  <39.007175, 36.407021, 35.767303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731846, 36.615173, 36.460472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.633465, 36.912384, 36.709442>,  <38.574436, 37.090710, 36.858826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.633465, 36.912384, 36.709442>,  <38.731846, 36.615173, 36.460472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633465, 36.912384, 36.709442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736128, -0.560948, 0.378752,
		0.630574, -0.365032, 0.684930,
		-0.245954, 0.743027, 0.622429,
		38.559677, 37.135292, 36.896172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792030, 36.348736, 37.154156>,  <38.731846, 36.615173, 36.460472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792030, 36.348736, 37.154156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565048, 36.674335, 37.203793>,  <38.428860, 36.869694, 37.233574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565048, 36.674335, 37.203793>,  <38.792030, 36.348736, 37.154156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565048, 36.674335, 37.203793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630406, -0.526437, 0.570485,
		0.529701, 0.245497, 0.811879,
		-0.567455, 0.814000, 0.124092,
		38.394814, 36.918537, 37.241020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727318, 36.518959, 37.910919>,  <38.792030, 36.348736, 37.154156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727318, 36.518959, 37.910919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422848, 36.621033, 37.672424>,  <38.240166, 36.682278, 37.529327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422848, 36.621033, 37.672424>,  <38.727318, 36.518959, 37.910919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422848, 36.621033, 37.672424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574290, -0.692369, 0.436825,
		-0.301345, 0.674911, 0.673562,
		-0.761171, 0.255185, -0.596237,
		38.194496, 36.697590, 37.493553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150852, 36.304371, 38.377220>,  <38.727318, 36.518959, 37.910919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150852, 36.304371, 38.377220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.975662, 36.368332, 38.023361>,  <37.870548, 36.406708, 37.811047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.975662, 36.368332, 38.023361>,  <38.150852, 36.304371, 38.377220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975662, 36.368332, 38.023361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742343, -0.619363, 0.255570,
		-0.507052, 0.768647, 0.389973,
		-0.437978, 0.159907, -0.884650,
		37.844269, 36.416306, 37.757965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479832, 36.461319, 38.550938>,  <38.150852, 36.304371, 38.377220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479832, 36.461319, 38.550938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484058, 36.341431, 38.169350>,  <37.486595, 36.269497, 37.940395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484058, 36.341431, 38.169350>,  <37.479832, 36.461319, 38.550938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484058, 36.341431, 38.169350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808715, -0.563658, 0.168133,
		-0.588105, 0.769714, -0.248340,
		0.010564, -0.299716, -0.953970,
		37.487228, 36.251514, 37.883160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791847, 36.482670, 38.369911>,  <37.479832, 36.461319, 38.550938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791847, 36.482670, 38.369911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984184, 36.214542, 38.143829>,  <37.099586, 36.053665, 38.008179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984184, 36.214542, 38.143829>,  <36.791847, 36.482670, 38.369911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984184, 36.214542, 38.143829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754416, -0.644789, 0.122900,
		-0.446823, 0.367307, -0.815742,
		0.480839, -0.670323, -0.565209,
		37.128437, 36.013447, 37.974266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220768, 36.253235, 37.994747>,  <36.791847, 36.482670, 38.369911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220768, 36.253235, 37.994747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.481480, 35.961269, 37.912369>,  <36.637909, 35.786091, 37.862942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.481480, 35.961269, 37.912369>,  <36.220768, 36.253235, 37.994747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481480, 35.961269, 37.912369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755448, -0.648806, -0.091369,
		-0.066926, 0.215133, -0.974289,
		0.651781, -0.729910, -0.205944,
		36.677013, 35.742298, 37.850586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903797, 35.773121, 37.393166>,  <36.220768, 36.253235, 37.994747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903797, 35.773121, 37.393166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.192631, 35.566570, 37.577316>,  <36.365932, 35.442642, 37.687809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.192631, 35.566570, 37.577316>,  <35.903797, 35.773121, 37.393166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192631, 35.566570, 37.577316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598908, -0.799695, 0.042401,
		0.346269, -0.306342, -0.886709,
		0.722085, -0.516375, 0.460380,
		36.409256, 35.411659, 37.715431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977386, 35.020741, 36.979382>,  <35.903797, 35.773121, 37.393166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977386, 35.020741, 36.979382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106701, 34.989067, 37.356575>,  <36.184292, 34.970062, 37.582890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106701, 34.989067, 37.356575>,  <35.977386, 35.020741, 36.979382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106701, 34.989067, 37.356575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571193, -0.810815, 0.127740,
		0.754468, -0.579922, -0.307359,
		0.323290, -0.079185, 0.942981,
		36.203690, 34.965313, 37.639469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159874, 34.317467, 37.078045>,  <35.977386, 35.020741, 36.979382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159874, 34.317467, 37.078045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.119774, 34.458836, 37.450077>,  <36.095715, 34.543655, 37.673294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.119774, 34.458836, 37.450077>,  <36.159874, 34.317467, 37.078045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119774, 34.458836, 37.450077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568632, -0.787432, 0.237927,
		0.816460, -0.505018, 0.279908,
		-0.100251, 0.353423, 0.930077,
		36.089699, 34.564861, 37.729099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231266, 33.793999, 37.480755>,  <36.159874, 34.317467, 37.078045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231266, 33.793999, 37.480755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.048359, 34.046398, 37.731430>,  <35.938614, 34.197838, 37.881836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.048359, 34.046398, 37.731430>,  <36.231266, 33.793999, 37.480755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048359, 34.046398, 37.731430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672407, -0.706501, 0.220737,
		0.582043, -0.320455, 0.747352,
		-0.457269, 0.631003, 0.626690,
		35.911179, 34.235699, 37.919437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160027, 33.528965, 38.173244>,  <36.231266, 33.793999, 37.480755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160027, 33.528965, 38.173244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.857513, 33.789059, 38.144333>,  <35.676006, 33.945114, 38.126987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.857513, 33.789059, 38.144333>,  <36.160027, 33.528965, 38.173244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857513, 33.789059, 38.144333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645630, -0.723897, 0.243176,
		0.105802, 0.230573, 0.967286,
		-0.756285, 0.650237, -0.072275,
		35.630627, 33.984131, 38.122650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.112354, 39.276768, 35.294231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778854, 39.494720, 35.329922>,  <40.578754, 39.625492, 35.351337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778854, 39.494720, 35.329922>,  <41.112354, 39.276768, 35.294231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778854, 39.494720, 35.329922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398020, -0.705125, 0.586838,
		0.382674, 0.453763, 0.804773,
		-0.833751, 0.544883, 0.089226,
		40.528728, 39.658184, 35.356689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102085, 39.188568, 36.026508>,  <41.112354, 39.276768, 35.294231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102085, 39.188568, 36.026508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740326, 39.328682, 35.929047>,  <40.523270, 39.412750, 35.870571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740326, 39.328682, 35.929047>,  <41.102085, 39.188568, 36.026508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740326, 39.328682, 35.929047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426688, -0.739464, 0.520702,
		0.002221, 0.574885, 0.818231,
		-0.904396, 0.350286, -0.243655,
		40.469006, 39.433769, 35.855949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758659, 39.387230, 36.628330>,  <41.102085, 39.188568, 36.026508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758659, 39.387230, 36.628330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532387, 39.273270, 36.318790>,  <40.396626, 39.204895, 36.133068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532387, 39.273270, 36.318790>,  <40.758659, 39.387230, 36.628330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532387, 39.273270, 36.318790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450755, -0.678989, 0.579477,
		-0.690528, 0.676613, 0.255669,
		-0.565678, -0.284901, -0.773847,
		40.362682, 39.187798, 36.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122776, 39.546806, 36.925186>,  <40.758659, 39.387230, 36.628330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122776, 39.546806, 36.925186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080303, 39.311855, 36.604259>,  <40.054821, 39.170887, 36.411701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080303, 39.311855, 36.604259>,  <40.122776, 39.546806, 36.925186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080303, 39.311855, 36.604259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678221, -0.547276, 0.490414,
		-0.727147, 0.596221, -0.340261,
		-0.106178, -0.587375, -0.802319,
		40.048450, 39.135643, 36.363564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422493, 39.525513, 36.859684>,  <40.122776, 39.546806, 36.925186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422493, 39.525513, 36.859684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561741, 39.198143, 36.676823>,  <39.645290, 39.001720, 36.567104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561741, 39.198143, 36.676823>,  <39.422493, 39.525513, 36.859684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561741, 39.198143, 36.676823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744545, -0.537695, 0.395648,
		-0.569621, 0.202645, -0.796535,
		0.348116, -0.818425, -0.457160,
		39.666176, 38.952614, 36.539677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871674, 39.221645, 36.619579>,  <39.422493, 39.525513, 36.859684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871674, 39.221645, 36.619579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134724, 38.924591, 36.568939>,  <39.292553, 38.746361, 36.538555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134724, 38.924591, 36.568939>,  <38.871674, 39.221645, 36.619579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134724, 38.924591, 36.568939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654413, -0.646388, 0.392335,
		-0.373192, -0.175161, -0.911069,
		0.657626, -0.742631, -0.126599,
		39.332012, 38.701801, 36.530960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438702, 38.667816, 36.221340>,  <38.871674, 39.221645, 36.619579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438702, 38.667816, 36.221340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768265, 38.521919, 36.394840>,  <38.966003, 38.434380, 36.498940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768265, 38.521919, 36.394840>,  <38.438702, 38.667816, 36.221340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768265, 38.521919, 36.394840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502285, -0.824428, 0.260822,
		0.262465, -0.432760, -0.862456,
		0.823907, -0.364742, 0.433752,
		39.015438, 38.412498, 36.524967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558262, 38.042118, 35.928951>,  <38.438702, 38.667816, 36.221340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558262, 38.042118, 35.928951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743549, 38.031086, 36.283276>,  <38.854721, 38.024467, 36.495872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743549, 38.031086, 36.283276>,  <38.558262, 38.042118, 35.928951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743549, 38.031086, 36.283276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498606, -0.834434, 0.234758,
		0.732679, -0.550417, -0.400278,
		0.463221, -0.027578, 0.885813,
		38.882515, 38.022812, 36.549019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737877, 37.248867, 35.999092>,  <38.558262, 38.042118, 35.928951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737877, 37.248867, 35.999092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735851, 37.425144, 36.358150>,  <38.734634, 37.530910, 36.573586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735851, 37.425144, 36.358150>,  <38.737877, 37.248867, 35.999092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735851, 37.425144, 36.358150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552849, -0.749229, 0.364712,
		0.833266, -0.494413, 0.247433,
		-0.005066, 0.440695, 0.897642,
		38.734333, 37.557354, 36.627441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453751, 36.985210, 35.722809>,  <38.737877, 37.248867, 35.999092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453751, 36.985210, 35.722809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697880, 36.697479, 35.590107>,  <39.844360, 36.524841, 35.510487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697880, 36.697479, 35.590107>,  <39.453751, 36.985210, 35.722809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697880, 36.697479, 35.590107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187693, 0.538197, -0.821654,
		0.769592, 0.439210, 0.463491,
		0.610328, -0.719332, -0.331755,
		39.880978, 36.481678, 35.490582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868084, 37.364979, 35.370186>,  <39.453751, 36.985210, 35.722809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868084, 37.364979, 35.370186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983978, 37.003361, 35.244476>,  <40.053513, 36.786392, 35.169052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983978, 37.003361, 35.244476>,  <39.868084, 37.364979, 35.370186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983978, 37.003361, 35.244476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531406, 0.425040, -0.732767,
		0.796029, 0.045300, 0.603560,
		0.289731, -0.904040, -0.314271,
		40.070896, 36.732147, 35.150196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643196, 37.416912, 35.285843>,  <39.868084, 37.364979, 35.370186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643196, 37.416912, 35.285843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455601, 37.149990, 35.054413>,  <40.343044, 36.989838, 34.915554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455601, 37.149990, 35.054413>,  <40.643196, 37.416912, 35.285843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455601, 37.149990, 35.054413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375397, 0.442359, -0.814491,
		0.799454, -0.599183, 0.043043,
		-0.468989, -0.667306, -0.578577,
		40.314903, 36.949799, 34.880840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145603, 37.353790, 34.793121>,  <40.643196, 37.416912, 35.285843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145603, 37.353790, 34.793121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813339, 37.206924, 34.625698>,  <40.613979, 37.118805, 34.525242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813339, 37.206924, 34.625698>,  <41.145603, 37.353790, 34.793121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813339, 37.206924, 34.625698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236701, 0.447567, -0.862355,
		0.503957, -0.815399, -0.284870,
		-0.830662, -0.367161, -0.418560,
		40.564140, 37.096775, 34.500130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321606, 36.825874, 34.183151>,  <41.145603, 37.353790, 34.793121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321606, 36.825874, 34.183151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940685, 36.932163, 34.123123>,  <40.712135, 36.995937, 34.087105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940685, 36.932163, 34.123123>,  <41.321606, 36.825874, 34.183151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940685, 36.932163, 34.123123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261822, 0.458766, -0.849107,
		-0.156782, -0.847894, -0.506454,
		-0.952296, 0.265726, -0.150071,
		40.654995, 37.011879, 34.078102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093723, 36.668320, 33.396275>,  <41.321606, 36.825874, 34.183151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093723, 36.668320, 33.396275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846748, 36.944786, 33.546509>,  <40.698563, 37.110664, 33.636650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846748, 36.944786, 33.546509>,  <41.093723, 36.668320, 33.396275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846748, 36.944786, 33.546509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057836, 0.516060, -0.854598,
		-0.784491, -0.505938, -0.358609,
		-0.617438, 0.691165, 0.375583,
		40.661518, 37.152134, 33.659184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585632, 36.794353, 32.884331>,  <41.093723, 36.668320, 33.396275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585632, 36.794353, 32.884331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561954, 37.122971, 33.111153>,  <40.547749, 37.320141, 33.247246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561954, 37.122971, 33.111153>,  <40.585632, 36.794353, 32.884331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561954, 37.122971, 33.111153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068926, 0.570063, -0.818705,
		-0.995864, -0.009381, -0.090372,
		-0.059198, 0.821547, 0.567059,
		40.544193, 37.369434, 33.281269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204739, 37.287979, 32.455688>,  <40.585632, 36.794353, 32.884331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204739, 37.287979, 32.455688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329155, 37.515553, 32.760204>,  <40.403805, 37.652096, 32.942913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329155, 37.515553, 32.760204>,  <40.204739, 37.287979, 32.455688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329155, 37.515553, 32.760204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118064, 0.771692, -0.624942,
		-0.943033, 0.284267, 0.172861,
		0.311045, 0.568933, 0.761292,
		40.422470, 37.686234, 32.988590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793140, 37.987255, 32.499161>,  <40.204739, 37.287979, 32.455688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793140, 37.987255, 32.499161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151142, 38.041626, 32.669094>,  <40.365944, 38.074249, 32.771053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151142, 38.041626, 32.669094>,  <39.793140, 37.987255, 32.499161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151142, 38.041626, 32.669094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139532, 0.819323, -0.556094,
		-0.423666, 0.556986, 0.714334,
		0.895007, 0.135925, 0.424837,
		40.419643, 38.082405, 32.796547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782764, 38.636993, 32.860058>,  <39.793140, 37.987255, 32.499161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782764, 38.636993, 32.860058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170357, 38.555119, 32.804672>,  <40.402912, 38.505993, 32.771439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170357, 38.555119, 32.804672>,  <39.782764, 38.636993, 32.860058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170357, 38.555119, 32.804672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103823, 0.845665, -0.523518,
		0.224253, 0.492905, 0.840687,
		0.968985, -0.204683, -0.138468,
		40.461052, 38.493713, 32.763130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108452, 39.279293, 32.760990>,  <39.782764, 38.636993, 32.860058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108452, 39.279293, 32.760990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389999, 39.038441, 32.610256>,  <40.558929, 38.893929, 32.519817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389999, 39.038441, 32.610256>,  <40.108452, 39.279293, 32.760990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389999, 39.038441, 32.610256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270079, 0.717528, -0.642036,
		0.656978, 0.350136, 0.667671,
		0.703873, -0.602128, -0.376836,
		40.601162, 38.857803, 32.497204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682255, 39.698616, 32.839840>,  <40.108452, 39.279293, 32.760990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682255, 39.698616, 32.839840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779160, 39.402504, 32.588985>,  <40.837303, 39.224838, 32.438473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779160, 39.402504, 32.588985>,  <40.682255, 39.698616, 32.839840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779160, 39.402504, 32.588985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416316, 0.663177, -0.621995,
		0.876350, -0.110402, 0.468851,
		0.242262, -0.740276, -0.627137,
		40.851837, 39.180420, 32.400845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414600, 39.834564, 32.622093>,  <40.682255, 39.698616, 32.839840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414600, 39.834564, 32.622093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259003, 39.604668, 32.334106>,  <41.165646, 39.466728, 32.161316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259003, 39.604668, 32.334106>,  <41.414600, 39.834564, 32.622093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259003, 39.604668, 32.334106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531478, 0.498338, -0.684975,
		0.752472, -0.649098, 0.111614,
		-0.388994, -0.574745, -0.719967,
		41.142303, 39.432243, 32.118118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005100, 39.634739, 32.106064>,  <41.414600, 39.834564, 32.622093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005100, 39.634739, 32.106064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657665, 39.576897, 31.916477>,  <41.449203, 39.542191, 31.802727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657665, 39.576897, 31.916477>,  <42.005100, 39.634739, 32.106064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657665, 39.576897, 31.916477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402769, 0.351155, -0.845262,
		0.288663, -0.925084, -0.246767,
		-0.868591, -0.144606, -0.473961,
		41.397087, 39.533512, 31.774288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.183552, 41.997261, 31.312342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548550, 41.912201, 31.452133>,  <35.767548, 41.861164, 31.536007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548550, 41.912201, 31.452133>,  <35.183552, 41.997261, 31.312342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548550, 41.912201, 31.452133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374666, -0.777412, 0.505229,
		0.164252, -0.591956, -0.789056,
		0.912495, -0.212647, 0.349477,
		35.822300, 41.848408, 31.556976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108643, 41.230095, 31.321381>,  <35.183552, 41.997261, 31.312342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108643, 41.230095, 31.321381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443989, 41.302250, 31.527140>,  <35.645195, 41.345543, 31.650595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443989, 41.302250, 31.527140>,  <35.108643, 41.230095, 31.321381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443989, 41.302250, 31.527140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260480, -0.696379, 0.668734,
		0.478848, -0.694634, -0.536832,
		0.838364, 0.180388, 0.514398,
		35.695499, 41.356365, 31.681459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347458, 40.639874, 31.385839>,  <35.108643, 41.230095, 31.321381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347458, 40.639874, 31.385839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534077, 40.837826, 31.679077>,  <35.646049, 40.956596, 31.855021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534077, 40.837826, 31.679077>,  <35.347458, 40.639874, 31.385839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534077, 40.837826, 31.679077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059661, -0.809334, 0.584311,
		0.882482, -0.316346, -0.348067,
		0.466547, 0.494879, 0.733096,
		35.674042, 40.986290, 31.899006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883835, 40.209011, 31.504883>,  <35.347458, 40.639874, 31.385839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883835, 40.209011, 31.504883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.814087, 40.433395, 31.828590>,  <35.772240, 40.568027, 32.022816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.814087, 40.433395, 31.828590>,  <35.883835, 40.209011, 31.504883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814087, 40.433395, 31.828590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116951, -0.827841, 0.548636,
		0.977711, 0.001019, 0.209952,
		-0.174366, 0.560962, 0.809270,
		35.761776, 40.601685, 32.071373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218784, 39.790943, 32.017353>,  <35.883835, 40.209011, 31.504883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218784, 39.790943, 32.017353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970352, 40.052166, 32.190685>,  <35.821293, 40.208900, 32.294685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970352, 40.052166, 32.190685>,  <36.218784, 39.790943, 32.017353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970352, 40.052166, 32.190685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306067, -0.711093, 0.632985,
		0.721517, 0.260503, 0.641523,
		-0.621076, 0.653059, 0.433334,
		35.784031, 40.248085, 32.320686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412003, 39.833206, 32.739361>,  <36.218784, 39.790943, 32.017353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412003, 39.833206, 32.739361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023674, 39.924629, 32.710350>,  <35.790676, 39.979485, 32.692944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023674, 39.924629, 32.710350>,  <36.412003, 39.833206, 32.739361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023674, 39.924629, 32.710350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232526, -0.823434, 0.517580,
		0.058582, 0.519343, 0.852556,
		-0.970824, 0.228562, -0.072523,
		35.732426, 39.993198, 32.688595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198105, 39.988407, 33.497372>,  <36.412003, 39.833206, 32.739361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198105, 39.988407, 33.497372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895466, 39.888592, 33.255615>,  <35.713882, 39.828701, 33.110561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895466, 39.888592, 33.255615>,  <36.198105, 39.988407, 33.497372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895466, 39.888592, 33.255615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205443, -0.786792, 0.582023,
		-0.620770, 0.564525, 0.544018,
		-0.756596, -0.249537, -0.604395,
		35.668488, 39.813732, 33.074295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871544, 39.737175, 33.989582>,  <36.198105, 39.988407, 33.497372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871544, 39.737175, 33.989582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663780, 39.638123, 33.662437>,  <35.539124, 39.578690, 33.466152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663780, 39.638123, 33.662437>,  <35.871544, 39.737175, 33.989582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663780, 39.638123, 33.662437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533333, -0.653853, 0.536686,
		-0.667662, 0.714949, 0.207544,
		-0.519406, -0.247635, -0.817859,
		35.507957, 39.563831, 33.417080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124668, 39.734314, 34.139591>,  <35.871544, 39.737175, 33.989582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124668, 39.734314, 34.139591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158184, 39.511810, 33.808880>,  <35.178295, 39.378307, 33.610455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158184, 39.511810, 33.808880>,  <35.124668, 39.734314, 34.139591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158184, 39.511810, 33.808880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605693, -0.687261, 0.401009,
		-0.791274, 0.467171, -0.394507,
		0.083789, -0.556259, -0.826774,
		35.183319, 39.344933, 33.560848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551907, 39.413898, 34.129135>,  <35.124668, 39.734314, 34.139591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551907, 39.413898, 34.129135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753693, 39.181320, 33.873814>,  <34.874763, 39.041775, 33.720619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753693, 39.181320, 33.873814>,  <34.551907, 39.413898, 34.129135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753693, 39.181320, 33.873814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359976, -0.813586, 0.456614,
		-0.784810, -0.000574, -0.619736,
		0.504471, -0.581445, -0.638303,
		34.905033, 39.006886, 33.682323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109272, 38.915764, 33.846451>,  <34.551907, 39.413898, 34.129135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109272, 38.915764, 33.846451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.458591, 38.743999, 33.754402>,  <34.668182, 38.640942, 33.699173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.458591, 38.743999, 33.754402>,  <34.109272, 38.915764, 33.846451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458591, 38.743999, 33.754402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306291, -0.851249, 0.426101,
		-0.378863, -0.301629, -0.874919,
		0.873298, -0.429413, -0.230121,
		34.720581, 38.615177, 33.685368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942352, 38.297798, 33.424152>,  <34.109272, 38.915764, 33.846451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942352, 38.297798, 33.424152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304585, 38.231468, 33.580318>,  <34.521923, 38.191669, 33.674019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304585, 38.231468, 33.580318>,  <33.942352, 38.297798, 33.424152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304585, 38.231468, 33.580318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317156, -0.875889, 0.363636,
		0.281661, -0.453125, -0.845781,
		0.905582, -0.165822, 0.390416,
		34.576260, 38.181721, 33.697445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133549, 37.596943, 33.230343>,  <33.942352, 38.297798, 33.424152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133549, 37.596943, 33.230343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357613, 37.678883, 33.551407>,  <34.492050, 37.728046, 33.744045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357613, 37.678883, 33.551407>,  <34.133549, 37.596943, 33.230343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357613, 37.678883, 33.551407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318341, -0.841307, 0.436876,
		0.764778, -0.500238, -0.406051,
		0.560155, 0.204851, 0.802659,
		34.525658, 37.740337, 33.792206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663296, 36.964153, 33.336933>,  <34.133549, 37.596943, 33.230343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663296, 36.964153, 33.336933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.621052, 37.172253, 33.675919>,  <34.595707, 37.297112, 33.879311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.621052, 37.172253, 33.675919>,  <34.663296, 36.964153, 33.336933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621052, 37.172253, 33.675919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374948, -0.810158, 0.450620,
		0.921011, -0.270165, 0.280624,
		-0.105608, 0.520246, 0.847462,
		34.589371, 37.328327, 33.930157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331097, 36.554443, 33.158146>,  <34.663296, 36.964153, 33.336933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331097, 36.554443, 33.158146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.367264, 36.266109, 32.883274>,  <35.388966, 36.093109, 32.718349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.367264, 36.266109, 32.883274>,  <35.331097, 36.554443, 33.158146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367264, 36.266109, 32.883274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505270, 0.627810, -0.592079,
		0.858212, -0.293677, 0.420983,
		0.090418, -0.720839, -0.687180,
		35.394390, 36.049858, 32.677120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972408, 36.614716, 32.952816>,  <35.331097, 36.554443, 33.158146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972408, 36.614716, 32.952816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778580, 36.436787, 32.651531>,  <35.662285, 36.330029, 32.470760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778580, 36.436787, 32.651531>,  <35.972408, 36.614716, 32.952816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778580, 36.436787, 32.651531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452298, 0.609615, -0.650996,
		0.748746, -0.656128, -0.094207,
		-0.484567, -0.444821, -0.753213,
		35.633209, 36.303341, 32.425568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467148, 36.405407, 32.458237>,  <35.972408, 36.614716, 32.952816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467148, 36.405407, 32.458237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.122791, 36.402039, 32.254749>,  <35.916176, 36.400017, 32.132656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.122791, 36.402039, 32.254749>,  <36.467148, 36.405407, 32.458237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122791, 36.402039, 32.254749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445810, 0.469365, -0.762200,
		0.245195, -0.882964, -0.400318,
		-0.860891, -0.008422, -0.508720,
		35.864525, 36.399513, 32.102135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659500, 36.198601, 31.829464>,  <36.467148, 36.405407, 32.458237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659500, 36.198601, 31.829464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298958, 36.345215, 31.737196>,  <36.082634, 36.433186, 31.681835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298958, 36.345215, 31.737196>,  <36.659500, 36.198601, 31.829464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298958, 36.345215, 31.737196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430160, 0.695949, -0.574993,
		-0.050224, -0.617498, -0.784968,
		-0.901355, 0.366540, -0.230669,
		36.028553, 36.455177, 31.667995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655132, 36.244385, 31.061604>,  <36.659500, 36.198601, 31.829464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655132, 36.244385, 31.061604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395454, 36.509125, 31.211533>,  <36.239647, 36.667969, 31.301491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395454, 36.509125, 31.211533>,  <36.655132, 36.244385, 31.061604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395454, 36.509125, 31.211533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326591, 0.687602, -0.648492,
		-0.686936, -0.298585, -0.662545,
		-0.649197, 0.661854, 0.374823,
		36.200695, 36.707680, 31.323980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422642, 36.560593, 30.504799>,  <36.655132, 36.244385, 31.061604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422642, 36.560593, 30.504799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340958, 36.803955, 30.811560>,  <36.291946, 36.949974, 30.995615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340958, 36.803955, 30.811560>,  <36.422642, 36.560593, 30.504799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340958, 36.803955, 30.811560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133931, 0.793407, -0.593774,
		-0.969721, -0.018545, -0.243509,
		-0.204213, 0.608409, 0.766900,
		36.279694, 36.986477, 31.041630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965744, 36.987095, 30.271547>,  <36.422642, 36.560593, 30.504799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965744, 36.987095, 30.271547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104561, 37.191803, 30.585911>,  <36.187851, 37.314629, 30.774529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104561, 37.191803, 30.585911>,  <35.965744, 36.987095, 30.271547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104561, 37.191803, 30.585911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164509, 0.791779, -0.588238,
		-0.923308, 0.333434, 0.190592,
		0.347045, 0.511770, 0.785908,
		36.208675, 37.345333, 30.821684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732208, 37.691425, 30.162207>,  <35.965744, 36.987095, 30.271547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732208, 37.691425, 30.162207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027386, 37.729271, 30.429485>,  <36.204491, 37.751980, 30.589853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027386, 37.729271, 30.429485>,  <35.732208, 37.691425, 30.162207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027386, 37.729271, 30.429485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316407, 0.826050, -0.466400,
		-0.596092, 0.555599, 0.579642,
		0.737944, 0.094614, 0.668197,
		36.248768, 37.757656, 30.629944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704597, 38.338078, 30.482582>,  <35.732208, 37.691425, 30.162207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704597, 38.338078, 30.482582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095726, 38.263180, 30.520132>,  <36.330402, 38.218239, 30.542662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095726, 38.263180, 30.520132>,  <35.704597, 38.338078, 30.482582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095726, 38.263180, 30.520132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199780, 0.968390, -0.149358,
		-0.062941, 0.164799, 0.984317,
		0.977817, -0.187246, 0.093875,
		36.389072, 38.207005, 30.548294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925056, 38.840862, 30.837301>,  <35.704597, 38.338078, 30.482582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925056, 38.840862, 30.837301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249279, 38.707600, 30.644634>,  <36.443813, 38.627640, 30.529034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249279, 38.707600, 30.644634>,  <35.925056, 38.840862, 30.837301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249279, 38.707600, 30.644634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178259, 0.923757, -0.338965,
		0.557873, 0.188889, 0.808145,
		0.810556, -0.333158, -0.481668,
		36.492447, 38.607651, 30.500134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350456, 39.394890, 30.959352>,  <35.925056, 38.840862, 30.837301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350456, 39.394890, 30.959352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519497, 39.176193, 30.670219>,  <36.620922, 39.044975, 30.496740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519497, 39.176193, 30.670219>,  <36.350456, 39.394890, 30.959352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519497, 39.176193, 30.670219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143351, 0.827833, -0.542349,
		0.894906, 0.125581, 0.428221,
		0.422604, -0.546737, -0.722830,
		36.646278, 39.012173, 30.453371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881744, 39.872208, 30.759277>,  <36.350456, 39.394890, 30.959352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881744, 39.872208, 30.759277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889225, 39.595699, 30.470333>,  <36.893711, 39.429794, 30.296967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889225, 39.595699, 30.470333>,  <36.881744, 39.872208, 30.759277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889225, 39.595699, 30.470333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313755, 0.690045, -0.652223,
		0.949320, -0.214449, 0.229790,
		0.018697, -0.691266, -0.722358,
		36.894833, 39.388321, 30.253626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534157, 39.918537, 30.561007>,  <36.881744, 39.872208, 30.759277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534157, 39.918537, 30.561007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307652, 39.781433, 30.261177>,  <37.171749, 39.699169, 30.081280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307652, 39.781433, 30.261177>,  <37.534157, 39.918537, 30.561007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307652, 39.781433, 30.261177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352541, 0.721320, -0.596164,
		0.745028, -0.601839, -0.287615,
		-0.566258, -0.342763, -0.749577,
		37.137772, 39.678604, 30.036304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950779, 39.740929, 29.955706>,  <37.534157, 39.918537, 30.561007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950779, 39.740929, 29.955706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579277, 39.812843, 29.826031>,  <37.356377, 39.855991, 29.748226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579277, 39.812843, 29.826031>,  <37.950779, 39.740929, 29.955706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579277, 39.812843, 29.826031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362506, 0.623344, -0.692843,
		0.077520, -0.761000, -0.644104,
		-0.928752, 0.179782, -0.324189,
		37.300652, 39.866779, 29.728773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100544, 39.027233, 29.497492>,  <37.950779, 39.740929, 29.955706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100544, 39.027233, 29.497492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.417046, 38.878757, 29.303116>,  <38.606945, 38.789673, 29.186489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.417046, 38.878757, 29.303116>,  <38.100544, 39.027233, 29.497492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417046, 38.878757, 29.303116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090286, -0.856892, 0.507527,
		-0.604787, -0.357709, -0.711531,
		0.791253, -0.371187, -0.485942,
		38.654423, 38.767403, 29.157333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931267, 38.332577, 29.361750>,  <38.100544, 39.027233, 29.497492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931267, 38.332577, 29.361750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329479, 38.365120, 29.342594>,  <38.568409, 38.384647, 29.331100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329479, 38.365120, 29.342594>,  <37.931267, 38.332577, 29.361750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329479, 38.365120, 29.342594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094405, -0.855488, 0.509145,
		0.000456, -0.511392, -0.859348,
		0.995534, 0.081359, -0.047888,
		38.628139, 38.389526, 29.328228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206474, 37.656631, 29.446323>,  <37.931267, 38.332577, 29.361750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206474, 37.656631, 29.446323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.551128, 37.847351, 29.515902>,  <38.757919, 37.961781, 29.557648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.551128, 37.847351, 29.515902>,  <38.206474, 37.656631, 29.446323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551128, 37.847351, 29.515902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275900, -0.727684, 0.627976,
		0.425995, -0.493092, -0.758544,
		0.861630, 0.476797, 0.173946,
		38.809616, 37.990391, 29.568085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676693, 37.149162, 29.477505>,  <38.206474, 37.656631, 29.446323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676693, 37.149162, 29.477505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853191, 37.454620, 29.666035>,  <38.959091, 37.637897, 29.779152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853191, 37.454620, 29.666035>,  <38.676693, 37.149162, 29.477505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853191, 37.454620, 29.666035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303328, -0.621223, 0.722548,
		0.844568, -0.175854, -0.505746,
		0.441244, 0.763648, 0.471324,
		38.985565, 37.683716, 29.807432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452110, 37.040092, 29.554770>,  <38.676693, 37.149162, 29.477505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452110, 37.040092, 29.554770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354626, 37.304806, 29.838360>,  <39.296135, 37.463634, 30.008514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354626, 37.304806, 29.838360>,  <39.452110, 37.040092, 29.554770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354626, 37.304806, 29.838360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231957, -0.670029, 0.705165,
		0.941701, 0.336310, 0.009789,
		-0.243713, 0.661784, 0.708976,
		39.281513, 37.503342, 30.051052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993790, 36.941620, 30.081266>,  <39.452110, 37.040092, 29.554770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993790, 36.941620, 30.081266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729362, 37.145447, 30.301565>,  <39.570705, 37.267742, 30.433744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729362, 37.145447, 30.301565>,  <39.993790, 36.941620, 30.081266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729362, 37.145447, 30.301565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313599, -0.479188, 0.819777,
		0.681647, 0.714644, 0.156975,
		-0.661070, 0.509571, 0.550749,
		39.531040, 37.298317, 30.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304665, 37.018867, 30.816870>,  <39.993790, 36.941620, 30.081266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304665, 37.018867, 30.816870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906857, 37.049309, 30.845566>,  <39.668171, 37.067574, 30.862783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906857, 37.049309, 30.845566>,  <40.304665, 37.018867, 30.816870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906857, 37.049309, 30.845566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022012, -0.518250, 0.854946,
		0.102242, 0.851836, 0.513733,
		-0.994516, 0.076103, 0.071738,
		39.608501, 37.072140, 30.867086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066784, 37.266624, 31.635263>,  <40.304665, 37.018867, 30.816870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066784, 37.266624, 31.635263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757019, 37.092079, 31.452013>,  <39.571159, 36.987354, 31.342062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757019, 37.092079, 31.452013>,  <40.066784, 37.266624, 31.635263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757019, 37.092079, 31.452013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063855, -0.666496, 0.742769,
		-0.629453, 0.604462, 0.488277,
		-0.774410, -0.436359, -0.458126,
		39.524696, 36.961170, 31.314575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559185, 37.134300, 32.203987>,  <40.066784, 37.266624, 31.635263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559185, 37.134300, 32.203987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452908, 36.901558, 31.896521>,  <39.389141, 36.761913, 31.712040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452908, 36.901558, 31.896521>,  <39.559185, 37.134300, 32.203987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452908, 36.901558, 31.896521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285302, -0.714153, 0.639209,
		-0.920875, 0.389136, 0.023740,
		-0.265693, -0.581859, -0.768666,
		39.373199, 36.727001, 31.665920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828568, 36.871746, 32.280376>,  <39.559185, 37.134300, 32.203987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828568, 36.871746, 32.280376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049370, 36.611984, 32.071163>,  <39.181850, 36.456127, 31.945637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049370, 36.611984, 32.071163>,  <38.828568, 36.871746, 32.280376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049370, 36.611984, 32.071163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300231, -0.739980, 0.601906,
		-0.777912, -0.175228, -0.603447,
		0.552010, -0.649404, -0.523030,
		39.214973, 36.417164, 31.914255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408596, 36.353218, 32.195244>,  <38.828568, 36.871746, 32.280376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408596, 36.353218, 32.195244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750786, 36.170048, 32.098530>,  <38.956100, 36.060146, 32.040501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750786, 36.170048, 32.098530>,  <38.408596, 36.353218, 32.195244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750786, 36.170048, 32.098530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336766, -0.846667, 0.412000,
		-0.393378, -0.271032, -0.878519,
		0.855478, -0.457927, -0.241785,
		39.007431, 36.032669, 32.025993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182232, 35.652275, 31.993332>,  <38.408596, 36.353218, 32.195244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182232, 35.652275, 31.993332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573467, 35.623165, 32.071346>,  <38.808208, 35.605698, 32.118156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573467, 35.623165, 32.071346>,  <38.182232, 35.652275, 31.993332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573467, 35.623165, 32.071346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139123, -0.925470, 0.352349,
		0.154855, -0.371764, -0.915321,
		0.978092, -0.072779, 0.195035,
		38.866894, 35.601330, 32.129856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401585, 34.961079, 31.783260>,  <38.182232, 35.652275, 31.993332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401585, 34.961079, 31.783260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703445, 35.070019, 32.022034>,  <38.884560, 35.135384, 32.165298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703445, 35.070019, 32.022034>,  <38.401585, 34.961079, 31.783260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703445, 35.070019, 32.022034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055276, -0.932936, 0.355775,
		0.653796, -0.235490, -0.719094,
		0.754649, 0.272353, 0.596933,
		38.929840, 35.151726, 32.201115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861271, 34.400921, 31.874374>,  <38.401585, 34.961079, 31.783260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861271, 34.400921, 31.874374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938744, 34.622631, 32.198170>,  <38.985229, 34.755657, 32.392445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938744, 34.622631, 32.198170>,  <38.861271, 34.400921, 31.874374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938744, 34.622631, 32.198170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037651, -0.820303, 0.570688,
		0.980341, -0.141012, -0.138013,
		0.193686, 0.554272, 0.809486,
		38.996849, 34.788914, 32.441017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.372059, 39.443180, 31.381227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.984295, 39.533714, 31.343224>,  <41.751637, 39.588036, 31.320421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.984295, 39.533714, 31.343224>,  <42.372059, 39.443180, 31.381227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984295, 39.533714, 31.343224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191382, 0.454537, -0.869925,
		-0.153707, -0.861493, -0.483947,
		-0.969406, 0.226332, -0.095009,
		41.693474, 39.601616, 31.314720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195515, 39.262676, 30.757664>,  <42.372059, 39.443180, 31.381227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195515, 39.262676, 30.757664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.895885, 39.509876, 30.853132>,  <41.716106, 39.658195, 30.910414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.895885, 39.509876, 30.853132>,  <42.195515, 39.262676, 30.757664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895885, 39.509876, 30.853132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075773, 0.437822, -0.895863,
		-0.658139, -0.652983, -0.374788,
		-0.749074, 0.618002, 0.238669,
		41.671162, 39.695278, 30.924732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768017, 39.281181, 30.236357>,  <42.195515, 39.262676, 30.757664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768017, 39.281181, 30.236357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.683994, 39.624863, 30.422966>,  <41.633579, 39.831074, 30.534931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.683994, 39.624863, 30.422966>,  <41.768017, 39.281181, 30.236357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683994, 39.624863, 30.422966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051621, 0.486248, -0.872294,
		-0.976325, -0.159149, -0.146493,
		-0.210057, 0.859206, 0.466521,
		41.620975, 39.882626, 30.562922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155399, 39.609997, 29.851957>,  <41.768017, 39.281181, 30.236357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155399, 39.609997, 29.851957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366009, 39.883026, 30.054684>,  <41.492374, 40.046844, 30.176319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366009, 39.883026, 30.054684>,  <41.155399, 39.609997, 29.851957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366009, 39.883026, 30.054684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239384, 0.452989, -0.858776,
		-0.815760, 0.573492, 0.075114,
		0.526527, 0.682574, 0.506815,
		41.523968, 40.087799, 30.206728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895489, 40.184414, 29.631819>,  <41.155399, 39.609997, 29.851957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895489, 40.184414, 29.631819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.249523, 40.304211, 29.774332>,  <41.461945, 40.376087, 29.859840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.249523, 40.304211, 29.774332>,  <40.895489, 40.184414, 29.631819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249523, 40.304211, 29.774332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142385, 0.554558, -0.819873,
		-0.443121, 0.776384, 0.448187,
		0.885082, 0.299487, 0.356282,
		41.515049, 40.394058, 29.881216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823372, 40.928314, 29.552061>,  <40.895489, 40.184414, 29.631819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823372, 40.928314, 29.552061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216045, 40.871830, 29.603230>,  <41.451649, 40.837940, 29.633930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216045, 40.871830, 29.603230>,  <40.823372, 40.928314, 29.552061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216045, 40.871830, 29.603230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186677, 0.578432, -0.794083,
		0.038138, 0.803416, 0.594196,
		0.981681, -0.141207, 0.127919,
		41.510551, 40.829468, 29.641605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092751, 41.515255, 29.694309>,  <40.823372, 40.928314, 29.552061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092751, 41.515255, 29.694309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427795, 41.331459, 29.576138>,  <41.628822, 41.221180, 29.505236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427795, 41.331459, 29.576138>,  <41.092751, 41.515255, 29.694309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427795, 41.331459, 29.576138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139409, 0.702706, -0.697688,
		0.528179, 0.543206, 0.652652,
		0.837611, -0.459490, -0.295427,
		41.679077, 41.193611, 29.487509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612942, 41.962727, 29.966431>,  <41.092751, 41.515255, 29.694309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612942, 41.962727, 29.966431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.751240, 41.729645, 29.672241>,  <41.834217, 41.589798, 29.495728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.751240, 41.729645, 29.672241>,  <41.612942, 41.962727, 29.966431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751240, 41.729645, 29.672241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029206, 0.790114, -0.612264,
		0.937875, 0.190206, 0.290195,
		0.345743, -0.582703, -0.735472,
		41.854961, 41.554832, 29.451599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333141, 42.219746, 29.707352>,  <41.612942, 41.962727, 29.966431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333141, 42.219746, 29.707352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.167011, 42.004807, 29.413750>,  <42.067333, 41.875843, 29.237589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.167011, 42.004807, 29.413750>,  <42.333141, 42.219746, 29.707352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167011, 42.004807, 29.413750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101286, 0.774556, -0.624343,
		0.904019, -0.333648, -0.267263,
		-0.415321, -0.537348, -0.734007,
		42.042416, 41.843601, 29.193548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818092, 42.338284, 29.150888>,  <42.333141, 42.219746, 29.707352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818092, 42.338284, 29.150888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487610, 42.194885, 28.977055>,  <42.289318, 42.108849, 28.872755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487610, 42.194885, 28.977055>,  <42.818092, 42.338284, 29.150888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487610, 42.194885, 28.977055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128768, 0.630817, -0.765172,
		0.548450, -0.688152, -0.475025,
		-0.826209, -0.358491, -0.434584,
		42.239746, 42.087337, 28.846680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954079, 42.186333, 28.375429>,  <42.818092, 42.338284, 29.150888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954079, 42.186333, 28.375429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.561684, 42.249664, 28.420336>,  <42.326248, 42.287663, 28.447281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.561684, 42.249664, 28.420336>,  <42.954079, 42.186333, 28.375429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561684, 42.249664, 28.420336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057537, 0.789641, -0.610866,
		-0.185369, -0.592789, -0.783734,
		-0.980983, 0.158329, 0.112267,
		42.267387, 42.297165, 28.454016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708885, 42.219124, 27.703590>,  <42.954079, 42.186333, 28.375429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708885, 42.219124, 27.703590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.430927, 42.393208, 27.932575>,  <42.264153, 42.497658, 28.069965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.430927, 42.393208, 27.932575>,  <42.708885, 42.219124, 27.703590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430927, 42.393208, 27.932575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077690, 0.836844, -0.541901,
		-0.714902, -0.332090, -0.615331,
		-0.694895, 0.435211, 0.572461,
		42.222458, 42.523769, 28.104313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184410, 42.525295, 27.232256>,  <42.708885, 42.219124, 27.703590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184410, 42.525295, 27.232256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.123974, 42.733677, 27.568298>,  <42.087711, 42.858707, 27.769924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.123974, 42.733677, 27.568298>,  <42.184410, 42.525295, 27.232256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123974, 42.733677, 27.568298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097273, 0.837901, -0.537084,
		-0.983722, -0.162870, -0.075928,
		-0.151095, 0.520955, 0.840105,
		42.078644, 42.889965, 27.820330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689167, 42.984093, 27.153502>,  <42.184410, 42.525295, 27.232256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689167, 42.984093, 27.153502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928452, 43.130428, 27.438684>,  <42.072021, 43.218231, 27.609795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928452, 43.130428, 27.438684>,  <41.689167, 42.984093, 27.153502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928452, 43.130428, 27.438684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092826, 0.852080, -0.515115,
		-0.795945, 0.374328, 0.475763,
		0.598210, 0.365840, 0.712956,
		42.107914, 43.240181, 27.652571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449135, 42.982811, 26.478012>,  <41.689167, 42.984093, 27.153502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449135, 42.982811, 26.478012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.164570, 42.964886, 26.197474>,  <40.993832, 42.954132, 26.029150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.164570, 42.964886, 26.197474>,  <41.449135, 42.982811, 26.478012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164570, 42.964886, 26.197474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525845, -0.628138, 0.573524,
		-0.466242, 0.776810, 0.423301,
		-0.711411, -0.044810, -0.701346,
		40.951145, 42.951443, 25.987070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924561, 43.217850, 26.808491>,  <41.449135, 42.982811, 26.478012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924561, 43.217850, 26.808491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.763596, 43.036575, 26.490326>,  <40.667015, 42.927811, 26.299427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.763596, 43.036575, 26.490326>,  <40.924561, 43.217850, 26.808491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763596, 43.036575, 26.490326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545170, -0.579367, 0.605907,
		-0.735427, 0.677461, -0.013920,
		-0.402413, -0.453189, -0.795414,
		40.642872, 42.900620, 26.251701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206310, 43.198402, 26.977503>,  <40.924561, 43.217850, 26.808491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206310, 43.198402, 26.977503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274494, 42.927528, 26.691183>,  <40.315407, 42.765003, 26.519392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274494, 42.927528, 26.691183>,  <40.206310, 43.198402, 26.977503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274494, 42.927528, 26.691183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631832, -0.632551, 0.447960,
		-0.756129, 0.375903, -0.535691,
		0.170463, -0.677182, -0.715798,
		40.325634, 42.724373, 26.476444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668827, 42.732231, 26.982178>,  <40.206310, 43.198402, 26.977503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668827, 42.732231, 26.982178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.913048, 42.503510, 26.762993>,  <40.059582, 42.366276, 26.631481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.913048, 42.503510, 26.762993>,  <39.668827, 42.732231, 26.982178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913048, 42.503510, 26.762993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392310, -0.819405, 0.417934,
		-0.687979, -0.040200, -0.724616,
		0.610555, -0.571804, -0.547962,
		40.096214, 42.331966, 26.598604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289185, 42.245373, 26.714859>,  <39.668827, 42.732231, 26.982178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289185, 42.245373, 26.714859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.644737, 42.068798, 26.665842>,  <39.858070, 41.962852, 26.636433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.644737, 42.068798, 26.665842>,  <39.289185, 42.245373, 26.714859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644737, 42.068798, 26.665842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383649, -0.863445, 0.327531,
		-0.250392, -0.244124, -0.936861,
		0.888885, -0.441436, -0.122541,
		39.911404, 41.936367, 26.629080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183567, 41.651688, 26.358370>,  <39.289185, 42.245373, 26.714859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183567, 41.651688, 26.358370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.536488, 41.599232, 26.539192>,  <39.748238, 41.567760, 26.647686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.536488, 41.599232, 26.539192>,  <39.183567, 41.651688, 26.358370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536488, 41.599232, 26.539192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349152, -0.826426, 0.441716,
		0.315665, -0.547561, -0.774940,
		0.882297, -0.131137, 0.452056,
		39.801178, 41.559891, 26.674809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254345, 40.984982, 26.218864>,  <39.183567, 41.651688, 26.358370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254345, 40.984982, 26.218864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517349, 41.059860, 26.510792>,  <39.675152, 41.104786, 26.685947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517349, 41.059860, 26.510792>,  <39.254345, 40.984982, 26.218864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517349, 41.059860, 26.510792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324028, -0.804234, 0.498210,
		0.680206, -0.564061, -0.468140,
		0.657515, 0.187195, 0.729816,
		39.714603, 41.116020, 26.729736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586617, 40.284882, 26.354904>,  <39.254345, 40.984982, 26.218864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586617, 40.284882, 26.354904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609470, 40.505219, 26.687965>,  <39.623180, 40.637421, 26.887802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609470, 40.505219, 26.687965>,  <39.586617, 40.284882, 26.354904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609470, 40.505219, 26.687965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303642, -0.784920, 0.540094,
		0.951072, -0.283684, 0.122415,
		0.057130, 0.550838, 0.832654,
		39.626610, 40.670471, 26.937761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033508, 39.879864, 26.919376>,  <39.586617, 40.284882, 26.354904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033508, 39.879864, 26.919376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806286, 40.122894, 27.141428>,  <39.669952, 40.268715, 27.274658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806286, 40.122894, 27.141428>,  <40.033508, 39.879864, 26.919376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806286, 40.122894, 27.141428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201920, -0.756797, 0.621681,
		0.797838, 0.241055, 0.552582,
		-0.568051, 0.607578, 0.555127,
		39.635872, 40.305168, 27.307966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173565, 39.757748, 27.594671>,  <40.033508, 39.879864, 26.919376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173565, 39.757748, 27.594671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.816666, 39.932976, 27.638449>,  <39.602524, 40.038113, 27.664715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.816666, 39.932976, 27.638449>,  <40.173565, 39.757748, 27.594671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816666, 39.932976, 27.638449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245968, -0.674808, 0.695797,
		0.378666, 0.593906, 0.709851,
		-0.892251, 0.438075, 0.109445,
		39.548992, 40.064400, 27.671282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133198, 39.724422, 28.245686>,  <40.173565, 39.757748, 27.594671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133198, 39.724422, 28.245686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751316, 39.792126, 28.147800>,  <39.522186, 39.832748, 28.089069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751316, 39.792126, 28.147800>,  <40.133198, 39.724422, 28.245686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751316, 39.792126, 28.147800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294659, -0.652042, 0.698582,
		-0.041325, 0.739049, 0.672382,
		-0.954708, 0.169255, -0.244713,
		39.464905, 39.842903, 28.074387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755077, 39.862469, 28.825096>,  <40.133198, 39.724422, 28.245686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755077, 39.862469, 28.825096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.472008, 39.743294, 28.568836>,  <39.302166, 39.671787, 28.415079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.472008, 39.743294, 28.568836>,  <39.755077, 39.862469, 28.825096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472008, 39.743294, 28.568836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389632, -0.591840, 0.705629,
		-0.589396, 0.748972, 0.302743,
		-0.707672, -0.297937, -0.640651,
		39.259705, 39.653912, 28.376640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132095, 39.908691, 29.245195>,  <39.755077, 39.862469, 28.825096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132095, 39.908691, 29.245195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081200, 39.653233, 28.941633>,  <39.050663, 39.499958, 28.759497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081200, 39.653233, 28.941633>,  <39.132095, 39.908691, 29.245195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081200, 39.653233, 28.941633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159436, -0.742005, 0.651159,
		-0.978975, 0.203847, -0.007415,
		-0.127235, -0.638651, -0.758905,
		39.043030, 39.461636, 28.713963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571144, 39.584164, 29.449965>,  <39.132095, 39.908691, 29.245195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571144, 39.584164, 29.449965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.715477, 39.339172, 29.168633>,  <38.802078, 39.192177, 28.999834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.715477, 39.339172, 29.168633>,  <38.571144, 39.584164, 29.449965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715477, 39.339172, 29.168633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048563, -0.765452, 0.641658,
		-0.931365, -0.197376, -0.305946,
		0.360835, -0.612475, -0.703330,
		38.823727, 39.155430, 28.957634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100590, 40.101814, 29.269115>,  <38.571144, 39.584164, 29.449965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100590, 40.101814, 29.269115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701027, 40.105515, 29.287468>,  <37.461288, 40.107735, 29.298479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701027, 40.105515, 29.287468>,  <38.100590, 40.101814, 29.269115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701027, 40.105515, 29.287468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021531, 0.779624, -0.625878,
		-0.041559, -0.626180, -0.778570,
		-0.998904, 0.009248, 0.045883,
		37.401356, 40.108288, 29.301233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795765, 40.076180, 28.534233>,  <38.100590, 40.101814, 29.269115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795765, 40.076180, 28.534233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548714, 40.240459, 28.802521>,  <37.400482, 40.339027, 28.963493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548714, 40.240459, 28.802521>,  <37.795765, 40.076180, 28.534233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548714, 40.240459, 28.802521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076027, 0.817648, -0.570677,
		-0.782788, -0.403458, -0.473777,
		-0.617626, 0.410699, 0.670718,
		37.363426, 40.363670, 29.003736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403576, 40.528183, 28.097956>,  <37.795765, 40.076180, 28.534233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403576, 40.528183, 28.097956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365005, 40.694588, 28.459650>,  <37.341862, 40.794430, 28.676666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365005, 40.694588, 28.459650>,  <37.403576, 40.528183, 28.097956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365005, 40.694588, 28.459650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123392, 0.896463, -0.425592,
		-0.987662, -0.152615, -0.035113,
		-0.096429, 0.416008, 0.904234,
		37.336075, 40.819389, 28.730921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899765, 41.090137, 27.936098>,  <37.403576, 40.528183, 28.097956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899765, 41.090137, 27.936098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095264, 41.140957, 28.281349>,  <37.212563, 41.171448, 28.488499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095264, 41.140957, 28.281349>,  <36.899765, 41.090137, 27.936098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095264, 41.140957, 28.281349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233903, 0.934036, -0.269937,
		-0.840487, 0.333818, 0.426787,
		0.488744, 0.127051, 0.863126,
		37.241886, 41.179073, 28.540287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696159, 41.777794, 28.104418>,  <36.899765, 41.090137, 27.936098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696159, 41.777794, 28.104418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997543, 41.730820, 28.363186>,  <37.178375, 41.702633, 28.518446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997543, 41.730820, 28.363186>,  <36.696159, 41.777794, 28.104418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997543, 41.730820, 28.363186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290461, 0.942155, -0.167262,
		-0.589856, 0.313930, 0.743988,
		0.753461, -0.117439, 0.646920,
		37.223583, 41.695587, 28.557262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757149, 42.340279, 28.719469>,  <36.696159, 41.777794, 28.104418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757149, 42.340279, 28.719469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124828, 42.199211, 28.649391>,  <37.345436, 42.114571, 28.607344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124828, 42.199211, 28.649391>,  <36.757149, 42.340279, 28.719469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124828, 42.199211, 28.649391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323993, 0.930191, -0.172550,
		0.223816, 0.101847, 0.969296,
		0.919203, -0.352664, -0.175194,
		37.400589, 42.093410, 28.596832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192780, 42.831692, 28.991642>,  <36.757149, 42.340279, 28.719469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192780, 42.831692, 28.991642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.403690, 42.620052, 28.725700>,  <37.530235, 42.493069, 28.566135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.403690, 42.620052, 28.725700>,  <37.192780, 42.831692, 28.991642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403690, 42.620052, 28.725700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394703, 0.845437, -0.359786,
		0.752455, -0.072712, 0.654618,
		0.527278, -0.529102, -0.664853,
		37.561874, 42.461323, 28.526245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568817, 43.119888, 29.610201>,  <37.192780, 42.831692, 28.991642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568817, 43.119888, 29.610201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433586, 43.409313, 29.850918>,  <37.352448, 43.582970, 29.995348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433586, 43.409313, 29.850918>,  <37.568817, 43.119888, 29.610201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433586, 43.409313, 29.850918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459796, -0.684927, 0.565211,
		0.821151, -0.085616, 0.564252,
		-0.338080, 0.723564, 0.601794,
		37.332161, 43.626381, 30.031456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734196, 42.851425, 30.207491>,  <37.568817, 43.119888, 29.610201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734196, 42.851425, 30.207491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487858, 43.151592, 30.303493>,  <37.340054, 43.331692, 30.361095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487858, 43.151592, 30.303493>,  <37.734196, 42.851425, 30.207491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487858, 43.151592, 30.303493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315579, -0.514076, 0.797581,
		0.721902, 0.415446, 0.553409,
		-0.615846, 0.750420, 0.240007,
		37.303104, 43.376717, 30.375496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873287, 43.002865, 30.866720>,  <37.734196, 42.851425, 30.207491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873287, 43.002865, 30.866720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498169, 43.119175, 30.790834>,  <37.273098, 43.188961, 30.745304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498169, 43.119175, 30.790834>,  <37.873287, 43.002865, 30.866720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498169, 43.119175, 30.790834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319913, -0.511409, 0.797569,
		0.134891, 0.808648, 0.572619,
		-0.937795, 0.290773, -0.189712,
		37.216831, 43.206406, 30.733921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447582, 43.067772, 31.527483>,  <37.873287, 43.002865, 30.866720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447582, 43.067772, 31.527483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145550, 43.046791, 31.266071>,  <36.964329, 43.034203, 31.109224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145550, 43.046791, 31.266071>,  <37.447582, 43.067772, 31.527483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145550, 43.046791, 31.266071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441542, -0.696168, 0.566031,
		-0.484657, 0.715960, 0.502502,
		-0.755081, -0.052455, -0.653529,
		36.919025, 43.031055, 31.070013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764595, 43.132103, 31.885372>,  <37.447582, 43.067772, 31.527483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764595, 43.132103, 31.885372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688904, 42.942085, 31.541622>,  <36.643490, 42.828075, 31.335373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688904, 42.942085, 31.541622>,  <36.764595, 43.132103, 31.885372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688904, 42.942085, 31.541622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613469, -0.626167, 0.481218,
		-0.766711, 0.618261, -0.172935,
		-0.189232, -0.475045, -0.859374,
		36.632133, 42.799572, 31.283810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132988, 42.979458, 31.940851>,  <36.764595, 43.132103, 31.885372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132988, 42.979458, 31.940851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.255051, 42.742966, 31.642235>,  <36.328289, 42.601070, 31.463064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.255051, 42.742966, 31.642235>,  <36.132988, 42.979458, 31.940851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255051, 42.742966, 31.642235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632607, -0.711822, 0.305153,
		-0.711822, 0.379150, -0.591232,
		-0.305153, 0.591232, 0.746543,
		36.346596, 42.565598, 31.418272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469826, 42.691444, 31.467428>,  <36.132988, 42.979458, 31.940851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469826, 42.691444, 31.467428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786144, 42.450607, 31.511467>,  <35.975937, 42.306103, 31.537889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786144, 42.450607, 31.511467>,  <35.469826, 42.691444, 31.467428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786144, 42.450607, 31.511467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607488, -0.750072, 0.261439,
		-0.074832, -0.273627, -0.958920,
		0.790797, -0.602096, 0.110096,
		36.023384, 42.269978, 31.544497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.313412, 44.421074, 30.241180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290363, 44.034260, 30.340399>,  <40.276535, 43.802174, 30.399931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290363, 44.034260, 30.340399>,  <40.313412, 44.421074, 30.241180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290363, 44.034260, 30.340399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656872, -0.223824, -0.720016,
		0.751798, 0.121451, 0.648112,
		-0.057617, -0.967033, 0.248048,
		40.273079, 43.744148, 30.414814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836376, 44.008781, 30.323870>,  <40.313412, 44.421074, 30.241180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836376, 44.008781, 30.323870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213028, 43.901764, 30.242138>,  <40.439018, 43.837551, 30.193098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213028, 43.901764, 30.242138>,  <39.836376, 44.008781, 30.323870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213028, 43.901764, 30.242138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090344, -0.785519, 0.612208,
		-0.324300, -0.558014, -0.763839,
		0.941630, -0.267547, -0.204331,
		40.495518, 43.821499, 30.180840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783024, 43.310173, 30.279366>,  <39.836376, 44.008781, 30.323870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783024, 43.310173, 30.279366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.172737, 43.384338, 30.330582>,  <40.406567, 43.428837, 30.361311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.172737, 43.384338, 30.330582>,  <39.783024, 43.310173, 30.279366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172737, 43.384338, 30.330582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078583, -0.812145, 0.578140,
		0.211184, -0.553209, -0.805829,
		0.974282, 0.185418, 0.128039,
		40.465023, 43.439964, 30.368994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941032, 42.712502, 30.296041>,  <39.783024, 43.310173, 30.279366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941032, 42.712502, 30.296041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247177, 42.923019, 30.444223>,  <40.430862, 43.049332, 30.533133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247177, 42.923019, 30.444223>,  <39.941032, 42.712502, 30.296041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247177, 42.923019, 30.444223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205338, -0.745194, 0.634447,
		0.609965, -0.409514, -0.678411,
		0.765362, 0.526294, 0.370453,
		40.476788, 43.080906, 30.555359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474678, 42.202400, 30.511070>,  <39.941032, 42.712502, 30.296041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474678, 42.202400, 30.511070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.578690, 42.512547, 30.741266>,  <40.641098, 42.698635, 30.879383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.578690, 42.512547, 30.741266>,  <40.474678, 42.202400, 30.511070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578690, 42.512547, 30.741266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145761, -0.620681, 0.770395,
		0.954535, -0.116442, -0.274415,
		0.260031, 0.775368, 0.575489,
		40.656700, 42.745155, 30.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976288, 41.905956, 30.884315>,  <40.474678, 42.202400, 30.511070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976288, 41.905956, 30.884315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874535, 42.227882, 31.098814>,  <40.813480, 42.421036, 31.227514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874535, 42.227882, 31.098814>,  <40.976288, 41.905956, 30.884315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874535, 42.227882, 31.098814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070875, -0.537484, 0.840290,
		0.964502, 0.251765, 0.079688,
		-0.254387, 0.804814, 0.536249,
		40.798218, 42.469326, 31.259689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549999, 42.024036, 31.398396>,  <40.976288, 41.905956, 30.884315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549999, 42.024036, 31.398396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.222931, 42.216461, 31.524889>,  <41.026691, 42.331917, 31.600784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.222931, 42.216461, 31.524889>,  <41.549999, 42.024036, 31.398396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222931, 42.216461, 31.524889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033602, -0.508492, 0.860411,
		0.574711, 0.714155, 0.399612,
		-0.817667, 0.481060, 0.316233,
		40.977631, 42.360779, 31.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701412, 42.145954, 32.081669>,  <41.549999, 42.024036, 31.398396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701412, 42.145954, 32.081669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309734, 42.225887, 32.067528>,  <41.074730, 42.273846, 32.059044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309734, 42.225887, 32.067528>,  <41.701412, 42.145954, 32.081669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309734, 42.225887, 32.067528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117781, -0.417765, 0.900889,
		0.165259, 0.886307, 0.432609,
		-0.979192, 0.199833, -0.035350,
		41.015976, 42.285835, 32.056923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617485, 42.303951, 32.761719>,  <41.701412, 42.145954, 32.081669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617485, 42.303951, 32.761719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.244022, 42.227718, 32.640415>,  <41.019943, 42.181980, 32.567635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.244022, 42.227718, 32.640415>,  <41.617485, 42.303951, 32.761719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244022, 42.227718, 32.640415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195403, -0.438547, 0.877208,
		-0.300170, 0.878269, 0.372212,
		-0.933657, -0.190581, -0.303255,
		40.963924, 42.170544, 32.549438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187359, 42.528008, 33.312973>,  <41.617485, 42.303951, 32.761719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187359, 42.528008, 33.312973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.986362, 42.241920, 33.118668>,  <40.865765, 42.070271, 33.002083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.986362, 42.241920, 33.118668>,  <41.187359, 42.528008, 33.312973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986362, 42.241920, 33.118668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038910, -0.542573, 0.839107,
		-0.863706, 0.440546, 0.244810,
		-0.502493, -0.715216, -0.485765,
		40.835613, 42.027355, 32.972939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574352, 42.392296, 33.665737>,  <41.187359, 42.528008, 33.312973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574352, 42.392296, 33.665737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.574551, 42.062103, 33.439968>,  <40.574669, 41.863987, 33.304508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.574551, 42.062103, 33.439968>,  <40.574352, 42.392296, 33.665737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574551, 42.062103, 33.439968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214879, -0.551326, 0.806143,
		-0.976641, 0.120883, -0.177653,
		0.000496, -0.825486, -0.564422,
		40.574699, 41.814457, 33.270641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963066, 42.047501, 33.746822>,  <40.574352, 42.392296, 33.665737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963066, 42.047501, 33.746822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219711, 41.758522, 33.643745>,  <40.373699, 41.585136, 33.581902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219711, 41.758522, 33.643745>,  <39.963066, 42.047501, 33.746822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219711, 41.758522, 33.643745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244470, -0.511047, 0.824054,
		-0.727026, -0.465726, -0.504511,
		0.641613, -0.722447, -0.257688,
		40.412197, 41.541786, 33.566441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227562, 41.973972, 33.737419>,  <39.963066, 42.047501, 33.746822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227562, 41.973972, 33.737419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.989159, 42.259243, 33.885017>,  <38.846119, 42.430405, 33.973576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.989159, 42.259243, 33.885017>,  <39.227562, 41.973972, 33.737419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989159, 42.259243, 33.885017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385313, 0.657176, -0.647807,
		-0.704494, -0.243919, -0.666477,
		-0.596006, 0.713178, 0.368991,
		38.810356, 42.473198, 33.995716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946972, 42.322617, 33.121452>,  <39.227562, 41.973972, 33.737419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946972, 42.322617, 33.121452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918297, 42.588249, 33.419136>,  <38.901093, 42.747631, 33.597748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918297, 42.588249, 33.419136>,  <38.946972, 42.322617, 33.121452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918297, 42.588249, 33.419136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131643, 0.745905, -0.652913,
		-0.988702, 0.051164, -0.140895,
		-0.071689, 0.664084, 0.744213,
		38.896790, 42.787476, 33.642399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397812, 42.916195, 32.893478>,  <38.946972, 42.322617, 33.121452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397812, 42.916195, 32.893478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626400, 43.057632, 33.189693>,  <38.763554, 43.142494, 33.367424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626400, 43.057632, 33.189693>,  <38.397812, 42.916195, 32.893478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626400, 43.057632, 33.189693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249400, 0.784886, -0.567233,
		-0.781807, 0.508846, 0.360351,
		0.571469, 0.353595, 0.740536,
		38.797840, 43.163712, 33.411854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305782, 43.589806, 32.801071>,  <38.397812, 42.916195, 32.893478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305782, 43.589806, 32.801071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.620861, 43.595680, 33.047424>,  <38.809910, 43.599205, 33.195236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.620861, 43.595680, 33.047424>,  <38.305782, 43.589806, 32.801071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620861, 43.595680, 33.047424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270312, 0.890100, -0.366951,
		-0.553586, 0.455528, 0.697163,
		0.787701, 0.014687, 0.615882,
		38.857170, 43.600086, 33.232189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379848, 44.252266, 32.982765>,  <38.305782, 43.589806, 32.801071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379848, 44.252266, 32.982765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.746677, 44.100887, 33.032970>,  <38.966774, 44.010059, 33.063091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.746677, 44.100887, 33.032970>,  <38.379848, 44.252266, 32.982765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746677, 44.100887, 33.032970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393869, 0.810916, -0.432762,
		0.062002, 0.446308, 0.892729,
		0.917073, -0.378450, 0.125509,
		39.021801, 43.987350, 33.070621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695835, 44.874836, 33.074352>,  <38.379848, 44.252266, 32.982765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695835, 44.874836, 33.074352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998512, 44.617847, 33.025940>,  <39.180119, 44.463654, 32.996891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998512, 44.617847, 33.025940>,  <38.695835, 44.874836, 33.074352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998512, 44.617847, 33.025940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555377, 0.729372, -0.399467,
		0.344925, 0.235053, 0.908723,
		0.756693, -0.642469, -0.121035,
		39.225521, 44.425106, 32.989628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251072, 45.158207, 33.391479>,  <38.695835, 44.874836, 33.074352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251072, 45.158207, 33.391479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380394, 44.918114, 33.098850>,  <39.457989, 44.774059, 32.923275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380394, 44.918114, 33.098850>,  <39.251072, 45.158207, 33.391479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380394, 44.918114, 33.098850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614803, 0.720932, -0.319803,
		0.719368, -0.346376, 0.602108,
		0.323307, -0.600234, -0.731568,
		39.477386, 44.738045, 32.879379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042313, 45.374352, 33.294819>,  <39.251072, 45.158207, 33.391479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042313, 45.374352, 33.294819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.927006, 45.157215, 32.979294>,  <39.857822, 45.026932, 32.789978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.927006, 45.157215, 32.979294>,  <40.042313, 45.374352, 33.294819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927006, 45.157215, 32.979294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606061, 0.534346, -0.589207,
		0.741345, -0.647917, 0.174962,
		-0.288267, -0.542843, -0.788812,
		39.840527, 44.994362, 32.742649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648262, 45.228405, 32.939339>,  <40.042313, 45.374352, 33.294819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648262, 45.228405, 32.939339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338097, 45.209236, 32.687485>,  <40.151997, 45.197735, 32.536373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338097, 45.209236, 32.687485>,  <40.648262, 45.228405, 32.939339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338097, 45.209236, 32.687485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500228, 0.561905, -0.658813,
		0.385364, -0.825812, -0.411738,
		-0.775414, -0.047920, -0.629632,
		40.105473, 45.194859, 32.498596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934711, 45.232639, 32.268932>,  <40.648262, 45.228405, 32.939339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934711, 45.232639, 32.268932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.557735, 45.325756, 32.172924>,  <40.331551, 45.381626, 32.115318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.557735, 45.325756, 32.172924>,  <40.934711, 45.232639, 32.268932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557735, 45.325756, 32.172924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334001, 0.688880, -0.643341,
		0.015583, -0.686480, -0.726982,
		-0.942444, 0.232788, -0.240019,
		40.275002, 45.395592, 32.100918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929760, 45.238060, 31.485134>,  <40.934711, 45.232639, 32.268932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929760, 45.238060, 31.485134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.633102, 45.450321, 31.649265>,  <40.455109, 45.577679, 31.747744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.633102, 45.450321, 31.649265>,  <40.929760, 45.238060, 31.485134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633102, 45.450321, 31.649265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197689, 0.757443, -0.622253,
		-0.641001, -0.380374, -0.666659,
		-0.741645, 0.530656, 0.410326,
		40.410610, 45.609516, 31.772364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486889, 45.503525, 30.928606>,  <40.929760, 45.238060, 31.485134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486889, 45.503525, 30.928606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458794, 45.755070, 31.238340>,  <40.441936, 45.905998, 31.424181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458794, 45.755070, 31.238340>,  <40.486889, 45.503525, 30.928606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458794, 45.755070, 31.238340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249491, 0.762657, -0.596748,
		-0.965826, 0.151272, -0.210467,
		-0.070243, 0.628865, 0.774335,
		40.437721, 45.943729, 31.470640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216221, 46.111603, 30.627283>,  <40.486889, 45.503525, 30.928606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216221, 46.111603, 30.627283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.358379, 46.251827, 30.973877>,  <40.443676, 46.335964, 31.181833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.358379, 46.251827, 30.973877>,  <40.216221, 46.111603, 30.627283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358379, 46.251827, 30.973877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237905, 0.862550, -0.446552,
		-0.903932, 0.364844, 0.223147,
		0.355398, 0.350565, 0.866485,
		40.465000, 46.356998, 31.233822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696548, 46.197823, 30.043083>,  <40.216221, 46.111603, 30.627283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696548, 46.197823, 30.043083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433968, 46.294422, 29.757217>,  <39.276421, 46.352383, 29.585697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433968, 46.294422, 29.757217>,  <39.696548, 46.197823, 30.043083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433968, 46.294422, 29.757217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509884, -0.840243, 0.184417,
		-0.555956, 0.485457, 0.674718,
		-0.656454, 0.241500, -0.714665,
		39.237030, 46.366871, 29.542818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099968, 46.053623, 30.374092>,  <39.696548, 46.197823, 30.043083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099968, 46.053623, 30.374092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958740, 46.081223, 30.000872>,  <38.874004, 46.097782, 29.776939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958740, 46.081223, 30.000872>,  <39.099968, 46.053623, 30.374092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958740, 46.081223, 30.000872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678097, -0.705981, 0.204392,
		-0.644612, 0.704862, 0.296047,
		-0.353071, 0.068995, -0.933049,
		38.852818, 46.101921, 29.720957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302013, 46.136127, 30.336874>,  <39.099968, 46.053623, 30.374092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302013, 46.136127, 30.336874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.391945, 45.988895, 29.975994>,  <38.445904, 45.900555, 29.759466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.391945, 45.988895, 29.975994>,  <38.302013, 46.136127, 30.336874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391945, 45.988895, 29.975994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682249, -0.720535, 0.123954,
		-0.695694, 0.587659, -0.413119,
		0.224824, -0.368084, -0.902202,
		38.459393, 45.878471, 29.705334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681980, 45.957176, 30.117119>,  <38.302013, 46.136127, 30.336874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681980, 45.957176, 30.117119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939232, 45.765587, 29.878134>,  <38.093582, 45.650631, 29.734743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939232, 45.765587, 29.878134>,  <37.681980, 45.957176, 30.117119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939232, 45.765587, 29.878134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579765, -0.814278, 0.028712,
		-0.500253, 0.327922, -0.801382,
		0.643132, -0.478977, -0.597463,
		38.132172, 45.621895, 29.698895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266018, 45.585953, 29.636017>,  <37.681980, 45.957176, 30.117119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266018, 45.585953, 29.636017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.620068, 45.399910, 29.642174>,  <37.832497, 45.288284, 29.645868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.620068, 45.399910, 29.642174>,  <37.266018, 45.585953, 29.636017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620068, 45.399910, 29.642174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465222, -0.883575, 0.053509,
		-0.011286, -0.054523, -0.998449,
		0.885122, -0.465104, 0.015393,
		37.885605, 45.260380, 29.646791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036247, 45.017185, 29.236120>,  <37.266018, 45.585953, 29.636017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036247, 45.017185, 29.236120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380245, 44.917294, 29.414129>,  <37.586643, 44.857361, 29.520935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380245, 44.917294, 29.414129>,  <37.036247, 45.017185, 29.236120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380245, 44.917294, 29.414129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337087, -0.932730, 0.128011,
		0.383119, -0.260101, -0.886322,
		0.859995, -0.249724, 0.445024,
		37.638245, 44.842377, 29.547636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133892, 44.297207, 29.034719>,  <37.036247, 45.017185, 29.236120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133892, 44.297207, 29.034719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363663, 44.362434, 29.355579>,  <37.501526, 44.401569, 29.548096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363663, 44.362434, 29.355579>,  <37.133892, 44.297207, 29.034719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363663, 44.362434, 29.355579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234482, -0.906109, 0.352113,
		0.784253, -0.390353, -0.482257,
		0.574426, 0.163065, 0.802150,
		37.535992, 44.411354, 29.596224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388218, 43.623177, 29.137686>,  <37.133892, 44.297207, 29.034719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388218, 43.623177, 29.137686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.437252, 43.820210, 29.482321>,  <37.466671, 43.938427, 29.689102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.437252, 43.820210, 29.482321>,  <37.388218, 43.623177, 29.137686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437252, 43.820210, 29.482321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508763, -0.714202, 0.480704,
		0.852134, -0.497273, 0.163056,
		0.122586, 0.492581, 0.861590,
		37.474030, 43.967983, 29.740797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996368, 43.226566, 29.026903>,  <37.388218, 43.623177, 29.137686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996368, 43.226566, 29.026903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.965286, 43.001144, 28.697937>,  <37.946636, 42.865891, 28.500557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.965286, 43.001144, 28.697937>,  <37.996368, 43.226566, 29.026903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965286, 43.001144, 28.697937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159383, 0.807276, -0.568244,
		0.984154, -0.175235, 0.027092,
		-0.077705, -0.563558, -0.822414,
		37.941975, 42.832077, 28.451214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623699, 43.188931, 28.650404>,  <37.996368, 43.226566, 29.026903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623699, 43.188931, 28.650404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351067, 43.111423, 28.368155>,  <38.187489, 43.064919, 28.198805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351067, 43.111423, 28.368155>,  <38.623699, 43.188931, 28.650404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351067, 43.111423, 28.368155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428010, 0.676573, -0.599213,
		0.593510, -0.710426, -0.378207,
		-0.681581, -0.193762, -0.705623,
		38.146591, 43.053295, 28.156467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043079, 43.116161, 28.100847>,  <38.623699, 43.188931, 28.650404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043079, 43.116161, 28.100847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686352, 43.213196, 27.948109>,  <38.472313, 43.271416, 27.856466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686352, 43.213196, 27.948109>,  <39.043079, 43.116161, 28.100847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686352, 43.213196, 27.948109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452183, 0.452568, -0.768578,
		-0.013635, -0.858099, -0.513303,
		-0.891821, 0.242586, -0.381847,
		38.418804, 43.285973, 27.833555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092422, 43.114574, 27.419739>,  <39.043079, 43.116161, 28.100847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092422, 43.114574, 27.419739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.734642, 43.293152, 27.409515>,  <38.519974, 43.400299, 27.403381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.734642, 43.293152, 27.409515>,  <39.092422, 43.114574, 27.419739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734642, 43.293152, 27.409515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211375, 0.371748, -0.903949,
		-0.394058, -0.813938, -0.426875,
		-0.894449, 0.446440, -0.025556,
		38.466309, 43.427082, 27.401848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742462, 43.010483, 26.810463>,  <39.092422, 43.114574, 27.419739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742462, 43.010483, 26.810463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521408, 43.318756, 26.937361>,  <38.388775, 43.503719, 27.013500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521408, 43.318756, 26.937361>,  <38.742462, 43.010483, 26.810463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521408, 43.318756, 26.937361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271642, 0.526432, -0.805655,
		-0.787910, -0.359058, -0.500275,
		-0.552638, 0.770679, 0.317246,
		38.355618, 43.549961, 27.032536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483921, 43.247078, 26.256180>,  <38.742462, 43.010483, 26.810463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483921, 43.247078, 26.256180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.438503, 43.552101, 26.510933>,  <38.411255, 43.735115, 26.663784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.438503, 43.552101, 26.510933>,  <38.483921, 43.247078, 26.256180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438503, 43.552101, 26.510933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389894, 0.623803, -0.677387,
		-0.913833, 0.171404, -0.368143,
		-0.113542, 0.762555, 0.636882,
		38.404442, 43.780869, 26.701998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198513, 43.719643, 25.880121>,  <38.483921, 43.247078, 26.256180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198513, 43.719643, 25.880121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352650, 43.928284, 26.184607>,  <38.445133, 44.053467, 26.367298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352650, 43.928284, 26.184607>,  <38.198513, 43.719643, 25.880121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352650, 43.928284, 26.184607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406890, 0.644350, -0.647498,
		-0.828222, 0.559239, 0.036061,
		0.385342, 0.521599, 0.761213,
		38.468254, 44.084763, 26.412971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111130, 44.433411, 25.667105>,  <38.198513, 43.719643, 25.880121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111130, 44.433411, 25.667105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380585, 44.461796, 25.961363>,  <38.542259, 44.478825, 26.137918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380585, 44.461796, 25.961363>,  <38.111130, 44.433411, 25.667105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380585, 44.461796, 25.961363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527021, 0.651706, -0.545462,
		-0.518130, 0.755145, 0.401618,
		0.673640, 0.070959, 0.735645,
		38.582676, 44.483082, 26.182056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321732, 45.171082, 25.777159>,  <38.111130, 44.433411, 25.667105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321732, 45.171082, 25.777159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625126, 44.939941, 25.897678>,  <38.807163, 44.801258, 25.969990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625126, 44.939941, 25.897678>,  <38.321732, 45.171082, 25.777159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625126, 44.939941, 25.897678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643802, 0.592724, -0.483939,
		0.101057, 0.561041, 0.821597,
		0.758489, -0.577851, 0.301301,
		38.852673, 44.766586, 25.988068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.326511, 32.596813, 36.285648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594719, 32.483486, 36.011383>,  <35.755646, 32.415489, 35.846825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594719, 32.483486, 36.011383>,  <35.326511, 32.596813, 36.285648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594719, 32.483486, 36.011383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088661, 0.886983, -0.453211,
		0.736571, 0.364680, 0.569624,
		0.670524, -0.283319, -0.685659,
		35.795876, 32.398491, 35.805687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876377, 33.123722, 36.118874>,  <35.326511, 32.596813, 36.285648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876377, 33.123722, 36.118874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869045, 32.907177, 35.782639>,  <35.864647, 32.777248, 35.580898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869045, 32.907177, 35.782639>,  <35.876377, 33.123722, 36.118874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869045, 32.907177, 35.782639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003668, 0.840761, -0.541394,
		0.999825, -0.006837, -0.017393,
		-0.018325, -0.541363, -0.840589,
		35.863548, 32.744766, 35.530460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349194, 33.418137, 35.793068>,  <35.876377, 33.123722, 36.118874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349194, 33.418137, 35.793068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176998, 33.204865, 35.501755>,  <36.073681, 33.076900, 35.326965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176998, 33.204865, 35.501755>,  <36.349194, 33.418137, 35.793068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176998, 33.204865, 35.501755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056990, 0.789211, -0.611473,
		0.900797, -0.304735, -0.309357,
		-0.430485, -0.533183, -0.728285,
		36.047852, 33.044910, 35.283268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863506, 33.457100, 35.198601>,  <36.349194, 33.418137, 35.793068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863506, 33.457100, 35.198601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.488853, 33.384220, 35.078918>,  <36.264061, 33.340492, 35.007111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.488853, 33.384220, 35.078918>,  <36.863506, 33.457100, 35.198601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488853, 33.384220, 35.078918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059490, 0.758970, -0.648402,
		0.345230, -0.625113, -0.700036,
		-0.936631, -0.182203, -0.299207,
		36.207863, 33.329559, 34.989155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912605, 33.678772, 34.478558>,  <36.863506, 33.457100, 35.198601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912605, 33.678772, 34.478558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521145, 33.663048, 34.559254>,  <36.286270, 33.653614, 34.607670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521145, 33.663048, 34.559254>,  <36.912605, 33.678772, 34.478558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521145, 33.663048, 34.559254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166177, 0.728942, -0.664100,
		-0.120948, -0.683446, -0.719912,
		-0.978651, -0.039311, 0.201737,
		36.227551, 33.651253, 34.619774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561619, 33.549011, 33.914402>,  <36.912605, 33.678772, 34.478558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561619, 33.549011, 33.914402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288414, 33.731693, 34.142406>,  <36.124489, 33.841305, 34.279209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288414, 33.731693, 34.142406>,  <36.561619, 33.549011, 33.914402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288414, 33.731693, 34.142406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238297, 0.598362, -0.764969,
		-0.690440, -0.658315, -0.299857,
		-0.683014, 0.456710, 0.570008,
		36.083511, 33.868706, 34.313408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093330, 33.648609, 33.478344>,  <36.561619, 33.549011, 33.914402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093330, 33.648609, 33.478344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006084, 33.908543, 33.769588>,  <35.953739, 34.064503, 33.944336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006084, 33.908543, 33.769588>,  <36.093330, 33.648609, 33.478344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006084, 33.908543, 33.769588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455589, 0.591986, -0.664824,
		-0.863056, -0.476724, 0.166939,
		-0.218111, 0.649836, 0.728107,
		35.940651, 34.103493, 33.988022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463497, 33.807369, 33.337921>,  <36.093330, 33.648609, 33.478344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463497, 33.807369, 33.337921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585918, 34.106659, 33.573376>,  <35.659370, 34.286232, 33.714649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585918, 34.106659, 33.573376>,  <35.463497, 33.807369, 33.337921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585918, 34.106659, 33.573376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479413, 0.655315, -0.583717,
		-0.822492, -0.103550, 0.559271,
		0.306054, 0.748225, 0.588635,
		35.677734, 34.331127, 33.749966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872173, 34.215752, 33.528931>,  <35.463497, 33.807369, 33.337921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872173, 34.215752, 33.528931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169144, 34.471172, 33.609982>,  <35.347328, 34.624424, 33.658611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169144, 34.471172, 33.609982>,  <34.872173, 34.215752, 33.528931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169144, 34.471172, 33.609982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385796, 0.654796, -0.649925,
		-0.547687, 0.404351, 0.732488,
		0.742429, 0.638547, 0.202626,
		35.391872, 34.662735, 33.670769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515301, 34.852501, 33.548347>,  <34.872173, 34.215752, 33.528931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515301, 34.852501, 33.548347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901646, 34.939182, 33.491554>,  <35.133453, 34.991192, 33.457478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901646, 34.939182, 33.491554>,  <34.515301, 34.852501, 33.548347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901646, 34.939182, 33.491554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254751, 0.694704, -0.672673,
		-0.047129, 0.685877, 0.726189,
		0.965858, 0.216700, -0.141987,
		35.191402, 35.004192, 33.448959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428680, 35.519066, 33.481079>,  <34.515301, 34.852501, 33.548347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428680, 35.519066, 33.481079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784725, 35.435841, 33.318886>,  <34.998352, 35.385906, 33.221569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784725, 35.435841, 33.318886>,  <34.428680, 35.519066, 33.481079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784725, 35.435841, 33.318886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144664, 0.714715, -0.684292,
		0.432181, 0.667753, 0.606075,
		0.890108, -0.208060, -0.405486,
		35.051758, 35.373421, 33.197239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722713, 36.154255, 33.333588>,  <34.428680, 35.519066, 33.481079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722713, 36.154255, 33.333588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926273, 35.889977, 33.112862>,  <35.048409, 35.731411, 32.980427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926273, 35.889977, 33.112862>,  <34.722713, 36.154255, 33.333588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926273, 35.889977, 33.112862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024773, 0.652008, -0.757808,
		0.860468, 0.371979, 0.348175,
		0.508901, -0.660695, -0.551817,
		35.078945, 35.691769, 32.947315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948048, 36.570232, 33.898331>,  <34.722713, 36.154255, 33.333588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948048, 36.570232, 33.898331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708805, 36.818451, 34.101189>,  <34.565258, 36.967381, 34.222904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708805, 36.818451, 34.101189>,  <34.948048, 36.570232, 33.898331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708805, 36.818451, 34.101189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383582, -0.777278, 0.498701,
		0.703658, 0.103745, 0.702924,
		-0.598106, 0.620544, 0.507143,
		34.529373, 37.004616, 34.253330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847469, 36.213936, 34.488750>,  <34.948048, 36.570232, 33.898331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847469, 36.213936, 34.488750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574333, 36.501019, 34.543354>,  <34.410454, 36.673267, 34.576118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574333, 36.501019, 34.543354>,  <34.847469, 36.213936, 34.488750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574333, 36.501019, 34.543354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501068, -0.596063, 0.627407,
		0.531662, 0.360015, 0.766632,
		-0.682837, 0.717703, 0.136512,
		34.369480, 36.716328, 34.584309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716576, 36.284286, 35.311714>,  <34.847469, 36.213936, 34.488750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716576, 36.284286, 35.311714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405132, 36.439987, 35.114838>,  <34.218266, 36.533405, 34.996712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405132, 36.439987, 35.114838>,  <34.716576, 36.284286, 35.311714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405132, 36.439987, 35.114838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626694, -0.442339, 0.641553,
		0.032006, 0.807974, 0.588348,
		-0.778607, 0.389248, -0.492195,
		34.171551, 36.556763, 34.967178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316868, 36.487881, 35.830093>,  <34.716576, 36.284286, 35.311714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316868, 36.487881, 35.830093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073235, 36.445850, 35.515648>,  <33.927055, 36.420631, 35.326981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073235, 36.445850, 35.515648>,  <34.316868, 36.487881, 35.830093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073235, 36.445850, 35.515648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592172, -0.599107, 0.538891,
		-0.527591, 0.793744, 0.302683,
		-0.609081, -0.105073, -0.786117,
		33.890511, 36.414330, 35.279812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690331, 36.682941, 36.065434>,  <34.316868, 36.487881, 35.830093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690331, 36.682941, 36.065434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602875, 36.483845, 35.729710>,  <33.550404, 36.364388, 35.528275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602875, 36.483845, 35.729710>,  <33.690331, 36.682941, 36.065434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602875, 36.483845, 35.729710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763678, -0.448156, 0.464707,
		-0.607449, 0.742568, -0.282134,
		-0.218636, -0.497745, -0.839314,
		33.537285, 36.334522, 35.477917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887802, 36.692211, 36.051632>,  <33.690331, 36.682941, 36.065434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887802, 36.692211, 36.051632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003967, 36.389988, 35.816757>,  <33.073666, 36.208652, 35.675831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003967, 36.389988, 35.816757>,  <32.887802, 36.692211, 36.051632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003967, 36.389988, 35.816757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769660, -0.549054, 0.325826,
		-0.568580, 0.357313, -0.740975,
		0.290414, -0.755558, -0.587191,
		33.091091, 36.163322, 35.640598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291489, 36.489971, 35.639954>,  <32.887802, 36.692211, 36.051632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291489, 36.489971, 35.639954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547634, 36.183792, 35.665333>,  <32.701321, 36.000084, 35.680561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547634, 36.183792, 35.665333>,  <32.291489, 36.489971, 35.639954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547634, 36.183792, 35.665333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731379, -0.582456, 0.354724,
		-0.234565, -0.273560, -0.932815,
		0.640362, -0.765447, 0.063452,
		32.739742, 35.954159, 35.684368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868162, 35.893219, 35.570240>,  <32.291489, 36.489971, 35.639954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868162, 35.893219, 35.570240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203102, 35.741821, 35.728020>,  <32.404068, 35.650982, 35.822685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203102, 35.741821, 35.728020>,  <31.868162, 35.893219, 35.570240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203102, 35.741821, 35.728020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545098, -0.523480, 0.654856,
		-0.041371, -0.763357, -0.644651,
		0.837351, -0.378490, 0.394448,
		32.454308, 35.628273, 35.846355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683773, 35.205391, 35.581856>,  <31.868162, 35.893219, 35.570240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683773, 35.205391, 35.581856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993214, 35.241436, 35.832748>,  <32.178879, 35.263062, 35.983284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993214, 35.241436, 35.832748>,  <31.683773, 35.205391, 35.581856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993214, 35.241436, 35.832748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449511, -0.619627, 0.643430,
		0.446630, -0.779707, -0.438838,
		0.773603, 0.090112, 0.627231,
		32.225296, 35.268471, 36.020916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737877, 34.591461, 35.896996>,  <31.683773, 35.205391, 35.581856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737877, 34.591461, 35.896996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940037, 34.830757, 36.145729>,  <32.061333, 34.974335, 36.294971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940037, 34.830757, 36.145729>,  <31.737877, 34.591461, 35.896996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940037, 34.830757, 36.145729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363901, -0.505658, 0.782231,
		0.782400, -0.621625, -0.037858,
		0.505397, 0.598241, 0.621837,
		32.091656, 35.010231, 36.332279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175884, 34.200848, 36.339317>,  <31.737877, 34.591461, 35.896996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175884, 34.200848, 36.339317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125504, 34.551277, 36.525490>,  <32.095276, 34.761536, 36.637192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125504, 34.551277, 36.525490>,  <32.175884, 34.200848, 36.339317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125504, 34.551277, 36.525490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300628, -0.480810, 0.823677,
		0.945388, -0.036180, 0.323931,
		-0.125948, 0.876078, 0.465429,
		32.087719, 34.814102, 36.665119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605259, 34.183430, 36.960915>,  <32.175884, 34.200848, 36.339317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605259, 34.183430, 36.960915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345860, 34.476662, 37.042934>,  <32.190220, 34.652599, 37.092148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345860, 34.476662, 37.042934>,  <32.605259, 34.183430, 36.960915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345860, 34.476662, 37.042934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174007, -0.404998, 0.897607,
		0.741062, 0.546416, 0.390201,
		-0.648497, 0.733080, 0.205049,
		32.151310, 34.696587, 37.104450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659622, 34.396622, 37.671989>,  <32.605259, 34.183430, 36.960915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659622, 34.396622, 37.671989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283169, 34.501442, 37.586586>,  <32.057297, 34.564335, 37.535343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283169, 34.501442, 37.586586>,  <32.659622, 34.396622, 37.671989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283169, 34.501442, 37.586586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282899, -0.264928, 0.921836,
		0.185004, 0.927977, 0.323468,
		-0.941138, 0.262053, -0.213512,
		32.000828, 34.580059, 37.522533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460361, 34.605640, 38.301128>,  <32.659622, 34.396622, 37.671989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460361, 34.605640, 38.301128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119869, 34.602856, 38.091232>,  <31.915573, 34.601185, 37.965294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119869, 34.602856, 38.091232>,  <32.460361, 34.605640, 38.301128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119869, 34.602856, 38.091232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516005, -0.171058, 0.839332,
		-0.095608, 0.985236, 0.142016,
		-0.851233, -0.006965, -0.524741,
		31.864500, 34.600765, 37.933811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019978, 35.055092, 38.636341>,  <32.460361, 34.605640, 38.301128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019978, 35.055092, 38.636341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822405, 34.757473, 38.456375>,  <31.703861, 34.578899, 38.348396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822405, 34.757473, 38.456375>,  <32.019978, 35.055092, 38.636341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822405, 34.757473, 38.456375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354384, -0.300243, 0.885588,
		-0.794004, 0.596863, -0.115379,
		-0.493933, -0.744049, -0.449913,
		31.674225, 34.534260, 38.321400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254921, 35.758514, 38.511639>,  <32.019978, 35.055092, 38.636341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254921, 35.758514, 38.511639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496010, 35.489433, 38.683311>,  <32.640663, 35.327984, 38.786316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496010, 35.489433, 38.683311>,  <32.254921, 35.758514, 38.511639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496010, 35.489433, 38.683311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657630, 0.723394, 0.210298,
		-0.451934, 0.155490, 0.878396,
		0.602727, -0.672700, 0.429181,
		32.676826, 35.287624, 38.812065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346687, 35.887280, 39.247284>,  <32.254921, 35.758514, 38.511639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346687, 35.887280, 39.247284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657139, 35.695179, 39.083828>,  <32.843410, 35.579918, 38.985756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657139, 35.695179, 39.083828>,  <32.346687, 35.887280, 39.247284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657139, 35.695179, 39.083828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565996, 0.816247, 0.115715,
		0.277975, -0.321096, 0.905332,
		0.776130, -0.480249, -0.408635,
		32.889977, 35.551105, 38.961239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936337, 36.191311, 39.571400>,  <32.346687, 35.887280, 39.247284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936337, 36.191311, 39.571400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094730, 35.994854, 39.261051>,  <33.189766, 35.876980, 39.074841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094730, 35.994854, 39.261051>,  <32.936337, 36.191311, 39.571400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094730, 35.994854, 39.261051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736261, 0.674746, -0.051365,
		0.548743, -0.550904, 0.628797,
		0.395981, -0.491145, -0.775871,
		33.213524, 35.847511, 39.028290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630402, 36.159397, 39.731262>,  <32.936337, 36.191311, 39.571400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630402, 36.159397, 39.731262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609512, 36.108578, 39.335052>,  <33.596977, 36.078087, 39.097328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609512, 36.108578, 39.335052>,  <33.630402, 36.159397, 39.731262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609512, 36.108578, 39.335052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647094, 0.751165, -0.130463,
		0.760619, -0.647774, 0.042982,
		-0.052224, -0.127046, -0.990521,
		33.593845, 36.070465, 39.037895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369530, 36.086536, 39.471077>,  <33.630402, 36.159397, 39.731262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369530, 36.086536, 39.471077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152775, 36.195717, 39.153122>,  <34.022720, 36.261227, 38.962349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152775, 36.195717, 39.153122>,  <34.369530, 36.086536, 39.471077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152775, 36.195717, 39.153122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701160, 0.668293, -0.248513,
		0.463388, -0.692012, -0.553525,
		-0.541891, 0.272952, -0.794891,
		33.990208, 36.277603, 38.914654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796856, 36.053944, 38.970825>,  <34.369530, 36.086536, 39.471077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796856, 36.053944, 38.970825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509953, 36.308006, 38.856205>,  <34.337811, 36.460445, 38.787434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509953, 36.308006, 38.856205>,  <34.796856, 36.053944, 38.970825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509953, 36.308006, 38.856205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695978, 0.633004, -0.338999,
		-0.033929, -0.442585, -0.896085,
		-0.717261, 0.635157, -0.286552,
		34.294773, 36.498554, 38.770241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026833, 36.356556, 38.437546>,  <34.796856, 36.053944, 38.970825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026833, 36.356556, 38.437546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720444, 36.609268, 38.485107>,  <34.536610, 36.760895, 38.513645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720444, 36.609268, 38.485107>,  <35.026833, 36.356556, 38.437546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720444, 36.609268, 38.485107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493962, 0.696768, -0.520111,
		-0.411446, -0.339656, -0.845781,
		-0.765973, 0.631781, 0.118905,
		34.490650, 36.798801, 38.520779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847889, 36.698963, 37.788673>,  <35.026833, 36.356556, 38.437546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847889, 36.698963, 37.788673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715305, 36.953953, 38.066883>,  <34.635754, 37.106949, 38.233810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715305, 36.953953, 38.066883>,  <34.847889, 36.698963, 37.788673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715305, 36.953953, 38.066883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484108, 0.747671, -0.454563,
		-0.809798, 0.186040, -0.556431,
		-0.331461, 0.637477, 0.695526,
		34.615868, 37.145195, 38.275539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569920, 37.209721, 37.368706>,  <34.847889, 36.698963, 37.788673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569920, 37.209721, 37.368706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640179, 37.367477, 37.729507>,  <34.682335, 37.462132, 37.945988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640179, 37.367477, 37.729507>,  <34.569920, 37.209721, 37.368706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640179, 37.367477, 37.729507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326518, 0.841042, -0.431317,
		-0.928728, 0.370277, 0.018949,
		0.175644, 0.394389, 0.902001,
		34.692871, 37.485794, 38.000107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256805, 37.904247, 37.412971>,  <34.569920, 37.209721, 37.368706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256805, 37.904247, 37.412971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543335, 37.898872, 37.692024>,  <34.715252, 37.895645, 37.859455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543335, 37.898872, 37.692024>,  <34.256805, 37.904247, 37.412971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543335, 37.898872, 37.692024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468195, 0.750584, -0.466280,
		-0.517367, 0.660638, 0.543956,
		0.716327, -0.013439, 0.697635,
		34.758232, 37.894840, 37.901314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435398, 38.505981, 37.418400>,  <34.256805, 37.904247, 37.412971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435398, 38.505981, 37.418400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757927, 38.356701, 37.601952>,  <34.951443, 38.267132, 37.712082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757927, 38.356701, 37.601952>,  <34.435398, 38.505981, 37.418400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757927, 38.356701, 37.601952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548684, 0.761682, -0.344653,
		-0.220894, 0.529680, 0.818929,
		0.806320, -0.373201, 0.458878,
		34.999825, 38.244740, 37.739616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743145, 39.108959, 37.786861>,  <34.435398, 38.505981, 37.418400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743145, 39.108959, 37.786861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031662, 38.833054, 37.761669>,  <35.204773, 38.667511, 37.746555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031662, 38.833054, 37.761669>,  <34.743145, 39.108959, 37.786861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031662, 38.833054, 37.761669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575697, 0.647595, -0.499193,
		0.385110, 0.323806, 0.864199,
		0.721293, -0.689761, -0.062981,
		35.248051, 38.626125, 37.742775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358734, 39.457466, 38.008816>,  <34.743145, 39.108959, 37.786861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358734, 39.457466, 38.008816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469429, 39.134331, 37.800659>,  <35.535847, 38.940449, 37.675766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469429, 39.134331, 37.800659>,  <35.358734, 39.457466, 38.008816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469429, 39.134331, 37.800659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673946, 0.549192, -0.494150,
		0.684989, -0.213963, 0.696426,
		0.276742, -0.807841, -0.520390,
		35.552452, 38.891979, 37.644543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160412, 39.307201, 38.023315>,  <35.358734, 39.457466, 38.008816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160412, 39.307201, 38.023315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025936, 39.123840, 37.694233>,  <35.945251, 39.013824, 37.496784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025936, 39.123840, 37.694233>,  <36.160412, 39.307201, 38.023315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025936, 39.123840, 37.694233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637221, 0.532520, -0.557111,
		0.693488, -0.711540, 0.113076,
		-0.336191, -0.458404, -0.822704,
		35.925079, 38.986320, 37.447422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823650, 39.188976, 37.713734>,  <36.160412, 39.307201, 38.023315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823650, 39.188976, 37.713734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531147, 39.187580, 37.440895>,  <36.355644, 39.186745, 37.277191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531147, 39.187580, 37.440895>,  <36.823650, 39.188976, 37.713734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531147, 39.187580, 37.440895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613094, 0.434930, -0.659509,
		0.298962, -0.900458, -0.315908,
		-0.731258, -0.003487, -0.682093,
		36.311771, 39.186535, 37.236267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237080, 39.062656, 37.087631>,  <36.823650, 39.188976, 37.713734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237080, 39.062656, 37.087631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870110, 39.167374, 36.967766>,  <36.649929, 39.230206, 36.895847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870110, 39.167374, 36.967766>,  <37.237080, 39.062656, 37.087631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870110, 39.167374, 36.967766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397796, 0.584785, -0.706955,
		-0.009838, -0.767782, -0.640636,
		-0.917421, 0.261797, -0.299667,
		36.594883, 39.245914, 36.877865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241295, 39.054672, 36.404522>,  <37.237080, 39.062656, 37.087631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241295, 39.054672, 36.404522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936775, 39.298313, 36.493450>,  <36.754063, 39.444496, 36.546806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936775, 39.298313, 36.493450>,  <37.241295, 39.054672, 36.404522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936775, 39.298313, 36.493450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390528, 0.704433, -0.592674,
		-0.517608, -0.364377, -0.774152,
		-0.761295, 0.609101, 0.222321,
		36.708385, 39.481045, 36.560146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897511, 39.222992, 35.764790>,  <37.241295, 39.054672, 36.404522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897511, 39.222992, 35.764790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790283, 39.506367, 36.025944>,  <36.725945, 39.676392, 36.182636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790283, 39.506367, 36.025944>,  <36.897511, 39.222992, 35.764790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790283, 39.506367, 36.025944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513976, 0.678355, -0.525036,
		-0.814841, 0.194821, -0.545966,
		-0.268071, 0.708434, 0.652885,
		36.709862, 39.718899, 36.221809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802799, 39.782078, 35.270760>,  <36.897511, 39.222992, 35.764790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802799, 39.782078, 35.270760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843960, 39.907185, 35.648457>,  <36.868656, 39.982250, 35.875072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843960, 39.907185, 35.648457>,  <36.802799, 39.782078, 35.270760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843960, 39.907185, 35.648457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397106, 0.857431, -0.327291,
		-0.911986, 0.408642, -0.035973,
		0.102900, 0.312769, 0.944239,
		36.874828, 40.001015, 35.931728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433437, 40.398026, 35.317806>,  <36.802799, 39.782078, 35.270760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433437, 40.398026, 35.317806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711906, 40.406342, 35.604836>,  <36.878986, 40.411331, 35.777054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711906, 40.406342, 35.604836>,  <36.433437, 40.398026, 35.317806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711906, 40.406342, 35.604836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235165, 0.937822, -0.255319,
		-0.678263, 0.346494, 0.647997,
		0.696173, 0.020788, 0.717573,
		36.920757, 40.412579, 35.820107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374546, 41.053146, 35.538605>,  <36.433437, 40.398026, 35.317806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374546, 41.053146, 35.538605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744614, 40.954582, 35.654079>,  <36.966656, 40.895443, 35.723366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744614, 40.954582, 35.654079>,  <36.374546, 41.053146, 35.538605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744614, 40.954582, 35.654079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327620, 0.902491, -0.279599,
		-0.191643, 0.353257, 0.915687,
		0.925169, -0.246415, 0.288690,
		37.022163, 40.880657, 35.740685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586899, 41.622883, 35.802036>,  <36.374546, 41.053146, 35.538605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586899, 41.622883, 35.802036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929737, 41.428501, 35.733639>,  <37.135441, 41.311871, 35.692600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929737, 41.428501, 35.733639>,  <36.586899, 41.622883, 35.802036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929737, 41.428501, 35.733639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359071, 0.801543, -0.478118,
		0.369405, 0.348391, 0.861489,
		0.857093, -0.485955, -0.170997,
		37.186867, 41.282715, 35.682339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206543, 42.136990, 35.869732>,  <36.586899, 41.622883, 35.802036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206543, 42.136990, 35.869732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.359161, 41.834976, 35.656433>,  <37.450733, 41.653770, 35.528454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.359161, 41.834976, 35.656433>,  <37.206543, 42.136990, 35.869732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359161, 41.834976, 35.656433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575797, 0.645427, -0.501878,
		0.723107, -0.115556, 0.681002,
		0.381542, -0.755031, -0.533249,
		37.473625, 41.608467, 35.496460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967396, 42.326332, 35.972828>,  <37.206543, 42.136990, 35.869732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967396, 42.326332, 35.972828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955479, 42.072872, 35.663609>,  <37.948326, 41.920795, 35.478077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955479, 42.072872, 35.663609>,  <37.967396, 42.326332, 35.972828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955479, 42.072872, 35.663609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614796, 0.598179, -0.514013,
		0.788123, -0.490581, 0.371742,
		-0.029797, -0.633651, -0.773045,
		37.946541, 41.882778, 35.431694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642361, 42.090240, 35.808861>,  <37.967396, 42.326332, 35.972828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642361, 42.090240, 35.808861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451283, 42.038921, 35.461216>,  <38.336636, 42.008129, 35.252628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451283, 42.038921, 35.461216>,  <38.642361, 42.090240, 35.808861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451283, 42.038921, 35.461216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722154, 0.506030, -0.471622,
		0.500302, -0.852921, -0.149078,
		-0.477694, -0.128296, -0.869108,
		38.307976, 42.000431, 35.200485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091839, 42.171402, 35.275143>,  <38.642361, 42.090240, 35.808861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091839, 42.171402, 35.275143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772758, 42.185173, 35.034313>,  <38.581310, 42.193436, 34.889816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772758, 42.185173, 35.034313>,  <39.091839, 42.171402, 35.275143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772758, 42.185173, 35.034313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534823, 0.501687, -0.679908,
		0.278642, -0.864364, -0.418609,
		-0.797699, 0.034431, -0.602072,
		38.533447, 42.195503, 34.853691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319790, 41.954494, 34.477451>,  <39.091839, 42.171402, 35.275143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319790, 41.954494, 34.477451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.977341, 42.159252, 34.449127>,  <38.771870, 42.282104, 34.432133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.977341, 42.159252, 34.449127>,  <39.319790, 41.954494, 34.477451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977341, 42.159252, 34.449127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396234, 0.562289, -0.725830,
		-0.331733, -0.649459, -0.684220,
		-0.856126, 0.511893, -0.070807,
		38.720501, 42.312820, 34.427883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588612, 41.337002, 34.153519>,  <39.319790, 41.954494, 34.477451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588612, 41.337002, 34.153519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.951847, 41.231476, 34.023418>,  <40.169788, 41.168159, 33.945358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.951847, 41.231476, 34.023418>,  <39.588612, 41.337002, 34.153519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951847, 41.231476, 34.023418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024550, -0.808838, 0.587519,
		-0.418068, -0.525532, -0.740969,
		0.908084, -0.263813, -0.325247,
		40.224274, 41.152332, 33.925846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564182, 40.610569, 33.863537>,  <39.588612, 41.337002, 34.153519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564182, 40.610569, 33.863537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.940380, 40.691017, 33.973099>,  <40.166100, 40.739285, 34.038837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.940380, 40.691017, 33.973099>,  <39.564182, 40.610569, 33.863537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940380, 40.691017, 33.973099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041101, -0.732799, 0.679202,
		0.337321, -0.650042, -0.680926,
		0.940492, 0.201122, 0.273906,
		40.222527, 40.751354, 34.055271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767723, 39.954250, 34.024082>,  <39.564182, 40.610569, 33.863537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767723, 39.954250, 34.024082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033237, 40.210346, 34.178734>,  <40.192547, 40.364002, 34.271526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033237, 40.210346, 34.178734>,  <39.767723, 39.954250, 34.024082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033237, 40.210346, 34.178734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101191, -0.589062, 0.801727,
		0.741048, -0.493049, -0.455796,
		0.663783, 0.640241, 0.386632,
		40.232372, 40.402420, 34.294724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431881, 39.647652, 34.028324>,  <39.767723, 39.954250, 34.024082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431881, 39.647652, 34.028324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420898, 39.922794, 34.318455>,  <40.414310, 40.087879, 34.492535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420898, 39.922794, 34.318455>,  <40.431881, 39.647652, 34.028324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420898, 39.922794, 34.318455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167149, -0.712227, 0.681758,
		0.985549, 0.139953, -0.095422,
		-0.027452, 0.687856, 0.725328,
		40.412663, 40.129150, 34.536053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898346, 39.404968, 34.516716>,  <40.431881, 39.647652, 34.028324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898346, 39.404968, 34.516716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.727234, 39.685680, 34.744579>,  <40.624565, 39.854107, 34.881298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.727234, 39.685680, 34.744579>,  <40.898346, 39.404968, 34.516716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727234, 39.685680, 34.744579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117575, -0.581681, 0.804875,
		0.896203, 0.411288, 0.166321,
		-0.427781, 0.701776, 0.569661,
		40.598900, 39.896214, 34.915478>
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
