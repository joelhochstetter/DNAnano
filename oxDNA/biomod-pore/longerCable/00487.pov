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
	<24.343943, 34.717941, 35.165348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401230, 35.105530, 35.084770>,  <24.435602, 35.338085, 35.036423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401230, 35.105530, 35.084770>,  <24.343943, 34.717941, 35.165348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.401230, 35.105530, 35.084770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979350, 0.168104, 0.112317,
		0.142696, 0.181196, 0.973040,
		0.143220, 0.968973, -0.201442,
		24.444197, 35.396221, 35.024338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536135, 35.115726, 35.706142>,  <24.343943, 34.717941, 35.165348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536135, 35.115726, 35.706142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890669, 35.150257, 35.888111>,  <25.103390, 35.170975, 35.997292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890669, 35.150257, 35.888111>,  <24.536135, 35.115726, 35.706142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890669, 35.150257, 35.888111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461903, -0.096000, -0.881720,
		-0.032442, 0.991631, -0.124962,
		0.886337, 0.086326, 0.454923,
		25.156570, 35.176155, 36.024590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964460, 35.584362, 35.379421>,  <24.536135, 35.115726, 35.706142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964460, 35.584362, 35.379421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214792, 35.340992, 35.574627>,  <25.364992, 35.194969, 35.691750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214792, 35.340992, 35.574627>,  <24.964460, 35.584362, 35.379421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214792, 35.340992, 35.574627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572474, -0.066626, -0.817211,
		0.529728, 0.790808, 0.306612,
		0.625829, -0.608427, 0.488011,
		25.402540, 35.158463, 35.721031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625486, 35.905777, 35.330479>,  <24.964460, 35.584362, 35.379421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625486, 35.905777, 35.330479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657804, 35.514587, 35.407455>,  <25.677195, 35.279873, 35.453644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657804, 35.514587, 35.407455>,  <25.625486, 35.905777, 35.330479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657804, 35.514587, 35.407455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629526, -0.099624, -0.770566,
		0.772768, 0.183406, 0.607612,
		0.080794, -0.977976, 0.192445,
		25.682043, 35.221195, 35.465187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288620, 35.770046, 35.340099>,  <25.625486, 35.905777, 35.330479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288620, 35.770046, 35.340099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126059, 35.423611, 35.223671>,  <26.028522, 35.215748, 35.153812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126059, 35.423611, 35.223671>,  <26.288620, 35.770046, 35.340099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126059, 35.423611, 35.223671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697927, -0.088657, -0.710660,
		0.589690, -0.491964, 0.640498,
		-0.406404, -0.866090, -0.291075,
		26.004137, 35.163784, 35.136349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783930, 35.104954, 35.498295>,  <26.288620, 35.770046, 35.340099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783930, 35.104954, 35.498295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539007, 35.056778, 35.185738>,  <26.392054, 35.027874, 34.998203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539007, 35.056778, 35.185738>,  <26.783930, 35.104954, 35.498295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539007, 35.056778, 35.185738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790527, -0.108618, -0.602718,
		-0.012283, -0.986760, 0.161718,
		-0.612304, -0.120439, -0.781395,
		26.355316, 35.020645, 34.951321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155760, 34.704845, 35.110916>,  <26.783930, 35.104954, 35.498295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155760, 34.704845, 35.110916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881401, 34.833714, 34.849918>,  <26.716785, 34.911034, 34.693317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881401, 34.833714, 34.849918>,  <27.155760, 34.704845, 35.110916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881401, 34.833714, 34.849918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700967, 0.051701, -0.711317,
		-0.195430, -0.945269, -0.261291,
		-0.685896, 0.322169, -0.652499,
		26.675632, 34.930363, 34.654167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012514, 34.144852, 34.598656>,  <27.155760, 34.704845, 35.110916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012514, 34.144852, 34.598656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007624, 34.523643, 34.470230>,  <27.004690, 34.750919, 34.393173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007624, 34.523643, 34.470230>,  <27.012514, 34.144852, 34.598656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007624, 34.523643, 34.470230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814393, -0.176874, -0.552701,
		-0.580184, -0.268229, -0.769051,
		-0.012225, 0.946979, -0.321064,
		27.003956, 34.807735, 34.373913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261560, 34.032089, 33.949909>,  <27.012514, 34.144852, 34.598656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261560, 34.032089, 33.949909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291685, 34.430412, 33.970657>,  <27.309759, 34.669407, 33.983105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291685, 34.430412, 33.970657>,  <27.261560, 34.032089, 33.949909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291685, 34.430412, 33.970657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842459, -0.035715, -0.537575,
		-0.533470, 0.084181, -0.841619,
		0.075312, 0.995810, 0.051866,
		27.314280, 34.729156, 33.986217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172581, 34.375725, 33.240501>,  <27.261560, 34.032089, 33.949909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172581, 34.375725, 33.240501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405792, 34.590031, 33.484806>,  <27.545719, 34.718616, 33.631390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405792, 34.590031, 33.484806>,  <27.172581, 34.375725, 33.240501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405792, 34.590031, 33.484806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793894, -0.215941, -0.568420,
		-0.172652, 0.816286, -0.551243,
		0.583029, 0.535767, 0.610762,
		27.580702, 34.750759, 33.668034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632290, 34.591339, 32.775429>,  <27.172581, 34.375725, 33.240501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632290, 34.591339, 32.775429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802637, 34.664177, 33.129936>,  <27.904846, 34.707878, 33.342640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802637, 34.664177, 33.129936>,  <27.632290, 34.591339, 32.775429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802637, 34.664177, 33.129936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891973, -0.248751, -0.377501,
		0.151722, 0.951297, -0.268354,
		0.425869, 0.182090, 0.886272,
		27.930397, 34.718803, 33.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098709, 35.082985, 32.629688>,  <27.632290, 34.591339, 32.775429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098709, 35.082985, 32.629688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209612, 34.861973, 32.944099>,  <28.276154, 34.729366, 33.132744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209612, 34.861973, 32.944099>,  <28.098709, 35.082985, 32.629688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209612, 34.861973, 32.944099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718326, -0.424098, -0.551496,
		0.638071, 0.717530, 0.279313,
		0.277259, -0.552532, 0.786025,
		28.292789, 34.696213, 33.179909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645451, 34.466064, 32.425900>,  <28.098709, 35.082985, 32.629688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645451, 34.466064, 32.425900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983149, 34.281292, 32.317184>,  <29.185768, 34.170429, 32.251957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983149, 34.281292, 32.317184>,  <28.645451, 34.466064, 32.425900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983149, 34.281292, 32.317184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457167, 0.356010, 0.815018,
		-0.279726, -0.812327, 0.511741,
		0.844246, -0.461933, -0.271784,
		29.236422, 34.142712, 32.235649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963854, 34.046627, 32.953880>,  <28.645451, 34.466064, 32.425900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963854, 34.046627, 32.953880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258017, 34.179893, 32.717854>,  <29.434513, 34.259853, 32.576237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258017, 34.179893, 32.717854>,  <28.963854, 34.046627, 32.953880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258017, 34.179893, 32.717854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409357, 0.475502, 0.778669,
		0.540006, -0.814184, 0.213301,
		0.735405, 0.333169, -0.590066,
		29.478638, 34.279842, 32.540833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261269, 34.203327, 33.671967>,  <28.963854, 34.046627, 32.953880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261269, 34.203327, 33.671967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177940, 34.578781, 33.781918>,  <29.127943, 34.804054, 33.847889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177940, 34.578781, 33.781918>,  <29.261269, 34.203327, 33.671967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177940, 34.578781, 33.781918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335978, -0.195268, 0.921406,
		0.918544, 0.284300, -0.274684,
		-0.208318, 0.938640, 0.274880,
		29.115444, 34.860374, 33.864380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711197, 34.361958, 34.207146>,  <29.261269, 34.203327, 33.671967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711197, 34.361958, 34.207146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646708, 34.678761, 33.971611>,  <28.608015, 34.868843, 33.830292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646708, 34.678761, 33.971611>,  <28.711197, 34.361958, 34.207146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646708, 34.678761, 33.971611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808790, 0.235884, 0.538719,
		0.565568, 0.563098, 0.602540,
		-0.161222, 0.792010, -0.588836,
		28.598341, 34.916363, 33.794960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473745, 35.076714, 34.480827>,  <28.711197, 34.361958, 34.207146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473745, 35.076714, 34.480827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311388, 34.982994, 34.127476>,  <28.213974, 34.926762, 33.915466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311388, 34.982994, 34.127476>,  <28.473745, 35.076714, 34.480827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311388, 34.982994, 34.127476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871506, 0.390273, 0.296924,
		0.275189, 0.890388, -0.362603,
		-0.405892, -0.234301, -0.883377,
		28.189621, 34.912704, 33.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194580, 35.692276, 34.243599>,  <28.473745, 35.076714, 34.480827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194580, 35.692276, 34.243599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007448, 35.399075, 34.046082>,  <27.895168, 35.223152, 33.927570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007448, 35.399075, 34.046082>,  <28.194580, 35.692276, 34.243599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007448, 35.399075, 34.046082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881112, 0.343131, 0.325427,
		-0.069105, 0.587333, -0.806390,
		-0.467831, -0.733008, -0.493795,
		27.867100, 35.179173, 33.897942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545696, 35.988663, 34.100719>,  <28.194580, 35.692276, 34.243599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545696, 35.988663, 34.100719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480709, 35.595718, 34.063702>,  <27.441717, 35.359951, 34.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480709, 35.595718, 34.063702>,  <27.545696, 35.988663, 34.100719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480709, 35.595718, 34.063702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930489, 0.121325, 0.345644,
		-0.328320, 0.142270, -0.933791,
		-0.162467, -0.982364, -0.092547,
		27.431969, 35.301010, 34.035938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940639, 35.998539, 33.815445>,  <27.545696, 35.988663, 34.100719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940639, 35.998539, 33.815445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976357, 35.646767, 34.002476>,  <26.997787, 35.435703, 34.114693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976357, 35.646767, 34.002476>,  <26.940639, 35.998539, 33.815445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976357, 35.646767, 34.002476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899989, 0.129861, 0.416119,
		-0.426668, -0.457972, -0.779882,
		0.089295, -0.879430, 0.467577,
		27.003145, 35.382938, 34.142750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284096, 35.995235, 34.174007>,  <26.940639, 35.998539, 33.815445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284096, 35.995235, 34.174007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438839, 35.627079, 34.151306>,  <26.531685, 35.406185, 34.137684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438839, 35.627079, 34.151306>,  <26.284096, 35.995235, 34.174007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438839, 35.627079, 34.151306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773241, -0.357309, 0.523860,
		-0.502434, -0.158777, -0.849912,
		0.386858, -0.920391, -0.056751,
		26.554895, 35.350960, 34.134281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879736, 35.455494, 33.756844>,  <26.284096, 35.995235, 34.174007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879736, 35.455494, 33.756844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105284, 35.254871, 34.019291>,  <26.240612, 35.134499, 34.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105284, 35.254871, 34.019291>,  <25.879736, 35.455494, 33.756844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105284, 35.254871, 34.019291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816205, -0.217287, 0.535346,
		-0.125940, -0.837393, -0.531895,
		0.563869, -0.501557, 0.656119,
		26.274445, 35.104404, 34.216125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523033, 34.826340, 33.937199>,  <25.879736, 35.455494, 33.756844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523033, 34.826340, 33.937199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788876, 34.865288, 34.233528>,  <25.948381, 34.888657, 34.411327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788876, 34.865288, 34.233528>,  <25.523033, 34.826340, 33.937199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788876, 34.865288, 34.233528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702639, -0.255809, 0.663972,
		0.254164, -0.961811, -0.101593,
		0.664604, 0.097374, 0.740824,
		25.988256, 34.894501, 34.455776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396214, 34.180477, 34.320061>,  <25.523033, 34.826340, 33.937199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396214, 34.180477, 34.320061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579947, 34.478943, 34.512833>,  <25.690186, 34.658024, 34.628494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579947, 34.478943, 34.512833>,  <25.396214, 34.180477, 34.320061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579947, 34.478943, 34.512833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593975, -0.145390, 0.791237,
		0.660460, -0.649692, 0.376421,
		0.459333, 0.746165, 0.481925,
		25.717747, 34.702793, 34.657410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559977, 33.981304, 35.057735>,  <25.396214, 34.180477, 34.320061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559977, 33.981304, 35.057735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674757, 34.364277, 35.070312>,  <25.743626, 34.594059, 35.077858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674757, 34.364277, 35.070312>,  <25.559977, 33.981304, 35.057735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674757, 34.364277, 35.070312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368034, 0.079877, 0.926375,
		0.884427, -0.277397, 0.375287,
		0.286950, 0.957429, 0.031446,
		25.760841, 34.651505, 35.079746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941563, 33.980476, 35.598602>,  <25.559977, 33.981304, 35.057735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941563, 33.980476, 35.598602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852299, 34.367157, 35.548508>,  <25.798740, 34.599167, 35.518452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852299, 34.367157, 35.548508>,  <25.941563, 33.980476, 35.598602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852299, 34.367157, 35.548508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304813, 0.052834, 0.950946,
		0.925899, 0.250388, 0.282873,
		-0.223160, 0.966703, -0.125240,
		25.785351, 34.657169, 35.510937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172188, 34.270248, 36.161125>,  <25.941563, 33.980476, 35.598602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172188, 34.270248, 36.161125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924797, 34.553989, 36.025890>,  <25.776363, 34.724236, 35.944748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924797, 34.553989, 36.025890>,  <26.172188, 34.270248, 36.161125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924797, 34.553989, 36.025890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290171, 0.193675, 0.937172,
		0.730265, 0.677723, 0.086051,
		-0.618477, 0.709353, -0.338089,
		25.739254, 34.766796, 35.924465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403179, 34.890736, 36.443768>,  <26.172188, 34.270248, 36.161125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403179, 34.890736, 36.443768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006498, 34.898373, 36.392914>,  <25.768490, 34.902954, 36.362400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006498, 34.898373, 36.392914>,  <26.403179, 34.890736, 36.443768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006498, 34.898373, 36.392914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114699, 0.315259, 0.942049,
		0.058066, 0.948814, -0.310453,
		-0.991702, 0.019092, -0.127134,
		25.708988, 34.904099, 36.354774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961117, 35.443237, 36.753178>,  <26.403179, 34.890736, 36.443768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961117, 35.443237, 36.753178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068632, 35.178669, 37.033257>,  <26.133142, 35.019928, 37.201305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068632, 35.178669, 37.033257>,  <25.961117, 35.443237, 36.753178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068632, 35.178669, 37.033257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473361, 0.542397, 0.694072,
		-0.838857, -0.518005, -0.167299,
		0.268791, -0.661420, 0.700197,
		26.149269, 34.980244, 37.243317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522856, 35.583111, 37.314022>,  <25.961117, 35.443237, 36.753178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522856, 35.583111, 37.314022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758270, 35.355515, 37.543758>,  <25.899519, 35.218956, 37.681602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758270, 35.355515, 37.543758>,  <25.522856, 35.583111, 37.314022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758270, 35.355515, 37.543758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446501, 0.363483, 0.817629,
		-0.673991, -0.737649, -0.040135,
		0.588535, -0.568995, 0.574345,
		25.934830, 35.184814, 37.716061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614534, 36.330799, 37.105587>,  <25.522856, 35.583111, 37.314022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614534, 36.330799, 37.105587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451479, 36.012192, 36.926975>,  <25.353645, 35.821026, 36.819809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451479, 36.012192, 36.926975>,  <25.614534, 36.330799, 37.105587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451479, 36.012192, 36.926975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912998, -0.346778, -0.214894,
		0.016321, -0.495279, 0.868581,
		-0.407637, -0.796520, -0.446529,
		25.329187, 35.773235, 36.793018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074421, 36.880497, 37.075924>,  <25.614534, 36.330799, 37.105587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074421, 36.880497, 37.075924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413935, 36.985134, 37.259720>,  <26.617643, 37.047916, 37.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413935, 36.985134, 37.259720>,  <26.074421, 36.880497, 37.075924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413935, 36.985134, 37.259720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370470, -0.325812, 0.869827,
		0.377248, -0.908524, -0.179632,
		0.848785, 0.261593, 0.459493,
		26.668570, 37.063610, 37.397568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108702, 36.360889, 37.608719>,  <26.074421, 36.880497, 37.075924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108702, 36.360889, 37.608719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317795, 36.678738, 37.732224>,  <26.443251, 36.869446, 37.806324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317795, 36.678738, 37.732224>,  <26.108702, 36.360889, 37.608719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317795, 36.678738, 37.732224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288182, -0.176150, 0.941235,
		0.802310, -0.580992, 0.136916,
		0.522733, 0.794619, 0.308758,
		26.474615, 36.917122, 37.824852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358017, 36.153126, 38.182858>,  <26.108702, 36.360889, 37.608719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358017, 36.153126, 38.182858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408936, 36.548302, 38.218113>,  <26.439487, 36.785408, 38.239265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408936, 36.548302, 38.218113>,  <26.358017, 36.153126, 38.182858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408936, 36.548302, 38.218113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253852, -0.053451, 0.965765,
		0.958830, -0.145314, 0.243987,
		0.127297, 0.987941, 0.088138,
		26.447124, 36.844685, 38.244553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913095, 36.318306, 38.714706>,  <26.358017, 36.153126, 38.182858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913095, 36.318306, 38.714706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680254, 36.641582, 38.678967>,  <26.540548, 36.835548, 38.657520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680254, 36.641582, 38.678967>,  <26.913095, 36.318306, 38.714706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680254, 36.641582, 38.678967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094717, 0.041743, 0.994629,
		0.807578, 0.587442, 0.052251,
		-0.582105, 0.808189, -0.089352,
		26.505623, 36.884041, 38.652161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004616, 36.787758, 39.361355>,  <26.913095, 36.318306, 38.714706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004616, 36.787758, 39.361355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831020, 37.106823, 39.193840>,  <26.726862, 37.298264, 39.093330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831020, 37.106823, 39.193840>,  <27.004616, 36.787758, 39.361355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831020, 37.106823, 39.193840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533089, 0.147365, 0.833127,
		0.726271, 0.584819, 0.361272,
		-0.433990, 0.797665, -0.418787,
		26.700823, 37.346123, 39.068203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069807, 37.377895, 39.873489>,  <27.004616, 36.787758, 39.361355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069807, 37.377895, 39.873489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752245, 37.390392, 39.630596>,  <26.561707, 37.397892, 39.484859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752245, 37.390392, 39.630596>,  <27.069807, 37.377895, 39.873489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752245, 37.390392, 39.630596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597759, 0.142776, 0.788860,
		0.111344, 0.989262, -0.094676,
		-0.793906, 0.031241, -0.607237,
		26.514072, 37.399765, 39.448425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744427, 37.805332, 40.183788>,  <27.069807, 37.377895, 39.873489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744427, 37.805332, 40.183788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483362, 37.612160, 39.950272>,  <26.326723, 37.496258, 39.810162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483362, 37.612160, 39.950272>,  <26.744427, 37.805332, 40.183788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483362, 37.612160, 39.950272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670932, 0.010438, 0.741446,
		-0.351971, 0.875598, -0.330824,
		-0.652661, -0.482928, -0.583792,
		26.287563, 37.467281, 39.775135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097837, 38.102665, 40.311176>,  <26.744427, 37.805332, 40.183788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097837, 38.102665, 40.311176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101210, 37.719021, 40.198013>,  <26.103233, 37.488834, 40.130116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101210, 37.719021, 40.198013>,  <26.097837, 38.102665, 40.311176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101210, 37.719021, 40.198013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624242, -0.226065, 0.747808,
		-0.781185, 0.170298, -0.600623,
		0.008429, -0.959111, -0.282906,
		26.103739, 37.431286, 40.113140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771214, 37.620552, 40.908615>,  <26.097837, 38.102665, 40.311176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771214, 37.620552, 40.908615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467224, 37.375259, 40.822468>,  <25.284830, 37.228085, 40.770779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467224, 37.375259, 40.822468>,  <25.771214, 37.620552, 40.908615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467224, 37.375259, 40.822468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147295, 0.160233, -0.976027,
		0.633042, -0.773478, -0.031446,
		-0.759975, -0.613235, -0.215364,
		25.239231, 37.191288, 40.757858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986076, 36.930084, 40.796925>,  <25.771214, 37.620552, 40.908615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986076, 36.930084, 40.796925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658213, 37.045933, 40.599224>,  <25.461494, 37.115440, 40.480606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658213, 37.045933, 40.599224>,  <25.986076, 36.930084, 40.796925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658213, 37.045933, 40.599224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509544, -0.025665, -0.860062,
		-0.261778, -0.956797, -0.126539,
		-0.819657, 0.289622, -0.494249,
		25.412315, 37.132820, 40.450951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708538, 36.438023, 40.311253>,  <25.986076, 36.930084, 40.796925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708538, 36.438023, 40.311253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648554, 36.822899, 40.220306>,  <25.612562, 37.053825, 40.165741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648554, 36.822899, 40.220306>,  <25.708538, 36.438023, 40.311253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648554, 36.822899, 40.220306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459088, -0.135902, -0.877934,
		-0.875642, -0.236037, -0.421352,
		-0.149962, 0.962194, -0.227363,
		25.603565, 37.111557, 40.152096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267748, 36.656979, 39.657764>,  <25.708538, 36.438023, 40.311253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267748, 36.656979, 39.657764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551725, 36.929977, 39.727245>,  <25.722113, 37.093777, 39.768932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551725, 36.929977, 39.727245>,  <25.267748, 36.656979, 39.657764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551725, 36.929977, 39.727245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346224, -0.123454, -0.929994,
		-0.613276, 0.720384, -0.323943,
		0.709944, 0.682500, 0.173703,
		25.764709, 37.134727, 39.779358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319664, 36.978554, 39.085888>,  <25.267748, 36.656979, 39.657764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319664, 36.978554, 39.085888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634535, 37.141953, 39.270706>,  <25.823458, 37.239990, 39.381596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634535, 37.141953, 39.270706>,  <25.319664, 36.978554, 39.085888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634535, 37.141953, 39.270706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492313, 0.035034, -0.869713,
		-0.371459, 0.912089, -0.173529,
		0.787176, 0.408493, 0.462047,
		25.870687, 37.264500, 39.409321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450386, 37.464294, 38.676186>,  <25.319664, 36.978554, 39.085888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450386, 37.464294, 38.676186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779364, 37.427868, 38.900791>,  <25.976749, 37.406013, 39.035553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779364, 37.427868, 38.900791>,  <25.450386, 37.464294, 38.676186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779364, 37.427868, 38.900791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566264, 0.225033, -0.792909,
		-0.054154, 0.970087, 0.236642,
		0.822443, -0.091063, 0.561511,
		26.026096, 37.400551, 39.069244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908619, 38.059322, 38.567524>,  <25.450386, 37.464294, 38.676186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908619, 38.059322, 38.567524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095034, 37.710625, 38.628029>,  <26.206882, 37.501408, 38.664330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095034, 37.710625, 38.628029>,  <25.908619, 38.059322, 38.567524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095034, 37.710625, 38.628029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437651, 0.078551, -0.895707,
		0.768942, 0.483631, 0.418126,
		0.466035, -0.871740, 0.151261,
		26.234844, 37.449104, 38.673409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561485, 38.157753, 38.340744>,  <25.908619, 38.059322, 38.567524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561485, 38.157753, 38.340744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546316, 37.758308, 38.326073>,  <26.537214, 37.518642, 38.317268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546316, 37.758308, 38.326073>,  <26.561485, 38.157753, 38.340744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546316, 37.758308, 38.326073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704910, -0.000717, -0.709296,
		0.708282, -0.052753, 0.703956,
		-0.037922, -0.998607, -0.036678,
		26.534939, 37.458725, 38.315071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295481, 37.917065, 38.161648>,  <26.561485, 38.157753, 38.340744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295481, 37.917065, 38.161648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054111, 37.609703, 38.076389>,  <26.909290, 37.425285, 38.025234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054111, 37.609703, 38.076389>,  <27.295481, 37.917065, 38.161648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054111, 37.609703, 38.076389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513790, -0.170236, -0.840857,
		0.609836, -0.616903, 0.497524,
		-0.603424, -0.768408, -0.213142,
		26.873085, 37.379181, 38.012447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744080, 37.377708, 38.023846>,  <27.295481, 37.917065, 38.161648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744080, 37.377708, 38.023846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402622, 37.298180, 37.831276>,  <27.197748, 37.250462, 37.715736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402622, 37.298180, 37.831276>,  <27.744080, 37.377708, 38.023846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402622, 37.298180, 37.831276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509126, -0.123429, -0.851795,
		0.109935, -0.972232, 0.206589,
		-0.853642, -0.198822, -0.481420,
		27.146530, 37.238533, 37.686852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892115, 36.743118, 37.606785>,  <27.744080, 37.377708, 38.023846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892115, 36.743118, 37.606785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604141, 36.971214, 37.448536>,  <27.431356, 37.108070, 37.353584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604141, 36.971214, 37.448536>,  <27.892115, 36.743118, 37.606785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604141, 36.971214, 37.448536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412399, -0.107008, -0.904697,
		-0.558231, -0.814478, -0.158128,
		-0.719935, 0.570241, -0.395625,
		27.388161, 37.142288, 37.329849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636837, 36.397850, 36.986927>,  <27.892115, 36.743118, 37.606785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636837, 36.397850, 36.986927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622129, 36.797550, 36.982059>,  <27.613306, 37.037369, 36.979141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622129, 36.797550, 36.982059>,  <27.636837, 36.397850, 36.986927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622129, 36.797550, 36.982059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543416, 0.009776, -0.839407,
		-0.838658, -0.037473, -0.543368,
		-0.036767, 0.999250, -0.012164,
		27.611099, 37.097324, 36.978409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629614, 36.577972, 36.290234>,  <27.636837, 36.397850, 36.986927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629614, 36.577972, 36.290234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727629, 36.920040, 36.472946>,  <27.786438, 37.125278, 36.582573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727629, 36.920040, 36.472946>,  <27.629614, 36.577972, 36.290234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727629, 36.920040, 36.472946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645781, 0.207447, -0.734801,
		-0.723134, 0.475035, -0.501417,
		0.245039, 0.855165, 0.456780,
		27.801140, 37.176590, 36.609982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663023, 37.301193, 35.810459>,  <27.629614, 36.577972, 36.290234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663023, 37.301193, 35.810459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893770, 37.308910, 36.137104>,  <28.032219, 37.313541, 36.333092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893770, 37.308910, 36.137104>,  <27.663023, 37.301193, 35.810459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893770, 37.308910, 36.137104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794800, 0.217400, -0.566595,
		-0.188462, 0.975892, 0.110078,
		0.576866, 0.019292, 0.816611,
		28.066830, 37.314697, 36.382088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123732, 37.879166, 35.716404>,  <27.663023, 37.301193, 35.810459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123732, 37.879166, 35.716404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320452, 37.616592, 35.945221>,  <28.438484, 37.459049, 36.082512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320452, 37.616592, 35.945221>,  <28.123732, 37.879166, 35.716404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320452, 37.616592, 35.945221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838460, 0.179892, -0.514416,
		0.234771, 0.732625, 0.638860,
		0.491800, -0.656429, 0.572044,
		28.467991, 37.419662, 36.116833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826241, 38.068886, 35.578804>,  <28.123732, 37.879166, 35.716404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826241, 38.068886, 35.578804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935114, 37.716156, 35.732841>,  <29.000437, 37.504517, 35.825264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935114, 37.716156, 35.732841>,  <28.826241, 38.068886, 35.578804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935114, 37.716156, 35.732841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746027, -0.059380, -0.663263,
		0.607751, 0.467818, 0.641705,
		0.272182, -0.881828, 0.385093,
		29.016768, 37.451607, 35.848370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659943, 38.019012, 35.886597>,  <28.826241, 38.068886, 35.578804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659943, 38.019012, 35.886597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496565, 37.692089, 35.724030>,  <29.398539, 37.495934, 35.626488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496565, 37.692089, 35.724030>,  <29.659943, 38.019012, 35.886597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496565, 37.692089, 35.724030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703727, 0.001606, -0.710469,
		0.581327, -0.576195, 0.574507,
		-0.408446, -0.817311, -0.406417,
		29.374031, 37.446896, 35.602104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081207, 37.433430, 35.989735>,  <29.659943, 38.019012, 35.886597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081207, 37.433430, 35.989735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854216, 37.399879, 35.662090>,  <29.718021, 37.379749, 35.465504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854216, 37.399879, 35.662090>,  <30.081207, 37.433430, 35.989735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854216, 37.399879, 35.662090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822158, -0.003350, -0.569249,
		0.045001, -0.996471, 0.070858,
		-0.567477, -0.083873, -0.819106,
		29.683973, 37.374718, 35.416359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313808, 36.897865, 35.431629>,  <30.081207, 37.433430, 35.989735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313808, 36.897865, 35.431629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121870, 37.221851, 35.296749>,  <30.006708, 37.416245, 35.215820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121870, 37.221851, 35.296749>,  <30.313808, 36.897865, 35.431629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121870, 37.221851, 35.296749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814399, 0.268239, -0.514590,
		-0.326349, -0.521539, -0.788348,
		-0.479845, 0.809966, -0.337201,
		29.977917, 37.464840, 35.195587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213348, 36.880947, 34.671295>,  <30.313808, 36.897865, 35.431629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213348, 36.880947, 34.671295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273371, 37.246754, 34.821575>,  <30.309383, 37.466236, 34.911743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273371, 37.246754, 34.821575>,  <30.213348, 36.880947, 34.671295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273371, 37.246754, 34.821575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858974, 0.067565, -0.507541,
		-0.489537, 0.398872, -0.775406,
		0.150054, 0.914514, 0.375697,
		30.318386, 37.521107, 34.934284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331366, 37.411259, 34.117306>,  <30.213348, 36.880947, 34.671295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331366, 37.411259, 34.117306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519247, 37.509762, 34.456417>,  <30.631975, 37.568863, 34.659885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519247, 37.509762, 34.456417>,  <30.331366, 37.411259, 34.117306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519247, 37.509762, 34.456417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870861, 0.028312, -0.490714,
		-0.144847, 0.968790, -0.201162,
		0.469704, 0.246262, 0.847782,
		30.660158, 37.583641, 34.710751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820253, 37.900734, 34.014545>,  <30.331366, 37.411259, 34.117306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820253, 37.900734, 34.014545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987011, 37.868782, 34.376720>,  <31.087067, 37.849609, 34.594025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987011, 37.868782, 34.376720>,  <30.820253, 37.900734, 34.014545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987011, 37.868782, 34.376720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907758, 0.087669, -0.410230,
		-0.046608, 0.992942, 0.109063,
		0.416896, -0.079883, 0.905437,
		31.112080, 37.844818, 34.648350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226910, 38.476448, 34.362843>,  <30.820253, 37.900734, 34.014545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226910, 38.476448, 34.362843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368143, 38.116722, 34.466042>,  <31.452883, 37.900887, 34.527962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368143, 38.116722, 34.466042>,  <31.226910, 38.476448, 34.362843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368143, 38.116722, 34.466042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884667, 0.231180, -0.404871,
		0.304462, 0.371198, 0.877220,
		0.353083, -0.899315, 0.258001,
		31.474068, 37.846928, 34.543442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034393, 38.569275, 34.423653>,  <31.226910, 38.476448, 34.362843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034393, 38.569275, 34.423653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919115, 38.187050, 34.398853>,  <31.849947, 37.957714, 34.383976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919115, 38.187050, 34.398853>,  <32.034393, 38.569275, 34.423653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919115, 38.187050, 34.398853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874221, -0.236144, -0.424234,
		0.390742, -0.176461, 0.903428,
		-0.288199, -0.955562, -0.061994,
		31.832655, 37.900383, 34.380257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334351, 38.898300, 33.847858>,  <32.034393, 38.569275, 34.423653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334351, 38.898300, 33.847858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554729, 38.578796, 33.944557>,  <32.686958, 38.387096, 34.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554729, 38.578796, 33.944557>,  <32.334351, 38.898300, 33.847858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554729, 38.578796, 33.944557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136126, -0.199784, -0.970338,
		0.823362, 0.567516, -0.001339,
		0.550950, -0.798757, 0.241748,
		32.720013, 38.339169, 34.017082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883160, 38.964451, 33.468136>,  <32.334351, 38.898300, 33.847858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883160, 38.964451, 33.468136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826332, 38.583706, 33.576782>,  <32.792236, 38.355259, 33.641968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826332, 38.583706, 33.576782>,  <32.883160, 38.964451, 33.468136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826332, 38.583706, 33.576782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007520, -0.275428, -0.961292,
		0.989828, -0.134528, 0.046288,
		-0.142069, -0.951862, 0.271614,
		32.783710, 38.298149, 33.658268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356991, 38.578022, 33.042946>,  <32.883160, 38.964451, 33.468136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356991, 38.578022, 33.042946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039356, 38.360123, 33.150787>,  <32.848778, 38.229385, 33.215492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039356, 38.360123, 33.150787>,  <33.356991, 38.578022, 33.042946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039356, 38.360123, 33.150787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104017, -0.315224, -0.943300,
		0.598842, -0.777101, 0.193652,
		-0.794083, -0.544745, 0.269601,
		32.801132, 38.196701, 33.231667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358135, 37.764935, 32.824852>,  <33.356991, 38.578022, 33.042946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358135, 37.764935, 32.824852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996956, 37.936386, 32.837292>,  <32.780251, 38.039257, 32.844757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996956, 37.936386, 32.837292>,  <33.358135, 37.764935, 32.824852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996956, 37.936386, 32.837292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074030, -0.083846, -0.993725,
		-0.423329, -0.899583, 0.107440,
		-0.902946, 0.428626, 0.031101,
		32.726070, 38.064976, 32.846622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870377, 37.345074, 32.453465>,  <33.358135, 37.764935, 32.824852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870377, 37.345074, 32.453465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780178, 37.734100, 32.430599>,  <32.726059, 37.967518, 32.416882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780178, 37.734100, 32.430599>,  <32.870377, 37.345074, 32.453465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780178, 37.734100, 32.430599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284336, 0.009582, -0.958677,
		-0.931828, -0.232433, -0.278696,
		-0.225499, 0.972565, -0.057160,
		32.712528, 38.025871, 32.413452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475407, 37.416080, 31.960079>,  <32.870377, 37.345074, 32.453465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475407, 37.416080, 31.960079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594551, 37.797798, 31.969837>,  <32.666039, 38.026829, 31.975691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594551, 37.797798, 31.969837>,  <32.475407, 37.416080, 31.960079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594551, 37.797798, 31.969837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055420, 0.008223, -0.998429,
		-0.953000, 0.298744, -0.050438,
		0.297860, 0.954298, 0.024393,
		32.683910, 38.084087, 31.977156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117168, 37.705135, 31.411585>,  <32.475407, 37.416080, 31.960079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117168, 37.705135, 31.411585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396198, 37.986748, 31.464838>,  <32.563618, 38.155716, 31.496790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396198, 37.986748, 31.464838>,  <32.117168, 37.705135, 31.411585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396198, 37.986748, 31.464838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054356, 0.133275, -0.989588,
		-0.714447, 0.697548, 0.054701,
		0.697575, 0.704034, 0.133133,
		32.605473, 38.197960, 31.504778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985167, 38.270538, 30.909222>,  <32.117168, 37.705135, 31.411585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985167, 38.270538, 30.909222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375774, 38.284039, 30.994326>,  <32.610138, 38.292137, 31.045389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375774, 38.284039, 30.994326>,  <31.985167, 38.270538, 30.909222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375774, 38.284039, 30.994326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211409, 0.039596, -0.976595,
		-0.041385, 0.998646, 0.031531,
		0.976521, 0.033750, 0.212761,
		32.668732, 38.294163, 31.058153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152199, 38.757473, 30.484007>,  <31.985167, 38.270538, 30.909222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152199, 38.757473, 30.484007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488426, 38.563328, 30.580236>,  <32.690163, 38.446842, 30.637974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488426, 38.563328, 30.580236>,  <32.152199, 38.757473, 30.484007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488426, 38.563328, 30.580236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348678, 0.144887, -0.925976,
		0.414577, 0.862225, 0.291022,
		0.840565, -0.485361, 0.240572,
		32.740597, 38.417721, 30.652409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740601, 39.218334, 30.232300>,  <32.152199, 38.757473, 30.484007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740601, 39.218334, 30.232300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923904, 38.864513, 30.267096>,  <33.033886, 38.652222, 30.287973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923904, 38.864513, 30.267096>,  <32.740601, 39.218334, 30.232300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923904, 38.864513, 30.267096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389611, 0.111944, -0.914151,
		0.798878, 0.452807, 0.395931,
		0.458255, -0.884554, 0.086989,
		33.061382, 38.599148, 30.293192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357456, 39.407314, 29.941643>,  <32.740601, 39.218334, 30.232300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357456, 39.407314, 29.941643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319668, 39.009106, 29.940540>,  <33.296997, 38.770180, 29.939878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319668, 39.009106, 29.940540>,  <33.357456, 39.407314, 29.941643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319668, 39.009106, 29.940540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175286, -0.013908, -0.984419,
		0.979975, -0.093479, 0.175815,
		-0.094468, -0.995524, -0.002756,
		33.291328, 38.710449, 29.939714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938171, 39.186440, 29.619034>,  <33.357456, 39.407314, 29.941643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938171, 39.186440, 29.619034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680080, 38.882847, 29.584112>,  <33.525227, 38.700691, 29.563160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680080, 38.882847, 29.584112>,  <33.938171, 39.186440, 29.619034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680080, 38.882847, 29.584112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209006, -0.065447, -0.975722,
		0.734842, -0.647814, 0.200861,
		-0.645232, -0.758983, -0.087304,
		33.486511, 38.655151, 29.557920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284458, 38.861053, 29.078995>,  <33.938171, 39.186440, 29.619034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284458, 38.861053, 29.078995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913540, 38.715073, 29.112307>,  <33.690990, 38.627483, 29.132294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913540, 38.715073, 29.112307>,  <34.284458, 38.861053, 29.078995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913540, 38.715073, 29.112307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029096, -0.151536, -0.988024,
		0.373203, -0.918611, 0.129899,
		-0.927293, -0.364954, 0.083282,
		33.635353, 38.605587, 29.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261036, 38.155384, 28.855927>,  <34.284458, 38.861053, 29.078995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261036, 38.155384, 28.855927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905361, 38.329426, 28.799305>,  <33.691956, 38.433849, 28.765331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905361, 38.329426, 28.799305>,  <34.261036, 38.155384, 28.855927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905361, 38.329426, 28.799305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071974, -0.172511, -0.982375,
		-0.451855, -0.883699, 0.122077,
		-0.889183, 0.435105, -0.141554,
		33.638607, 38.459957, 28.756840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910126, 37.819454, 28.249907>,  <34.261036, 38.155384, 28.855927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910126, 37.819454, 28.249907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679821, 38.143574, 28.293554>,  <33.541637, 38.338047, 28.319744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679821, 38.143574, 28.293554>,  <33.910126, 37.819454, 28.249907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679821, 38.143574, 28.293554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124226, 0.045216, -0.991223,
		-0.808124, -0.584266, 0.074627,
		-0.575764, 0.810302, 0.109121,
		33.507092, 38.386665, 28.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227245, 37.544064, 28.082642>,  <33.910126, 37.819454, 28.249907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227245, 37.544064, 28.082642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211735, 37.942402, 28.049675>,  <33.202427, 38.181404, 28.029896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211735, 37.942402, 28.049675>,  <33.227245, 37.544064, 28.082642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211735, 37.942402, 28.049675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359069, -0.090857, -0.928878,
		-0.932505, -0.006429, 0.361100,
		-0.038780, 0.995843, -0.082416,
		33.200100, 38.241154, 28.024950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589455, 37.754448, 27.847958>,  <33.227245, 37.544064, 28.082642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589455, 37.754448, 27.847958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796829, 38.087738, 27.771063>,  <32.921253, 38.287712, 27.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796829, 38.087738, 27.771063>,  <32.589455, 37.754448, 27.847958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796829, 38.087738, 27.771063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429028, 0.058986, -0.901363,
		-0.739701, 0.549775, 0.388058,
		0.518437, 0.833227, -0.192237,
		32.952362, 38.337708, 27.713392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172363, 38.319427, 27.557442>,  <32.589455, 37.754448, 27.847958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172363, 38.319427, 27.557442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539852, 38.392529, 27.417408>,  <32.760345, 38.436390, 27.333387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539852, 38.392529, 27.417408>,  <32.172363, 38.319427, 27.557442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539852, 38.392529, 27.417408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380690, 0.174064, -0.908172,
		-0.105034, 0.967627, 0.229488,
		0.918718, 0.182753, -0.350083,
		32.815468, 38.447353, 27.312384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127460, 38.912762, 27.088070>,  <32.172363, 38.319427, 27.557442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127460, 38.912762, 27.088070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462147, 38.720055, 26.983908>,  <32.662956, 38.604431, 26.921410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462147, 38.720055, 26.983908>,  <32.127460, 38.912762, 27.088070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462147, 38.720055, 26.983908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186869, 0.195801, -0.962674,
		0.514776, 0.854143, 0.073801,
		0.836711, -0.481770, -0.260407,
		32.713161, 38.575523, 26.905787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526482, 39.430126, 26.597397>,  <32.127460, 38.912762, 27.088070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526482, 39.430126, 26.597397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637821, 39.051929, 26.529785>,  <32.704624, 38.825012, 26.489218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637821, 39.051929, 26.529785>,  <32.526482, 39.430126, 26.597397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637821, 39.051929, 26.529785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120109, 0.140339, -0.982791,
		0.952941, 0.293861, -0.074498,
		0.278349, -0.945490, -0.169030,
		32.721325, 38.768284, 26.479076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884235, 39.494080, 25.995495>,  <32.526482, 39.430126, 26.597397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884235, 39.494080, 25.995495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835762, 39.099415, 26.038980>,  <32.806679, 38.862617, 26.065071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835762, 39.099415, 26.038980>,  <32.884235, 39.494080, 25.995495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835762, 39.099415, 26.038980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144057, -0.090879, -0.985387,
		0.982121, -0.135077, -0.131121,
		-0.121187, -0.986659, 0.108713,
		32.799404, 38.803417, 26.071594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276642, 39.227913, 25.448233>,  <32.884235, 39.494080, 25.995495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276642, 39.227913, 25.448233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009842, 38.950390, 25.556854>,  <32.849762, 38.783878, 25.622028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009842, 38.950390, 25.556854>,  <33.276642, 39.227913, 25.448233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009842, 38.950390, 25.556854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301168, -0.082303, -0.950013,
		0.681474, -0.715444, -0.154056,
		-0.667002, -0.693805, 0.271556,
		32.809742, 38.742249, 25.638321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455528, 38.597240, 25.074690>,  <33.276642, 39.227913, 25.448233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455528, 38.597240, 25.074690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074047, 38.527893, 25.172985>,  <32.845158, 38.486286, 25.231962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074047, 38.527893, 25.172985>,  <33.455528, 38.597240, 25.074690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074047, 38.527893, 25.172985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201908, -0.236477, -0.950427,
		0.222885, -0.956045, 0.190525,
		-0.953706, -0.173368, 0.245740,
		32.787933, 38.475883, 25.246708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250969, 38.163815, 24.568504>,  <33.455528, 38.597240, 25.074690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250969, 38.163815, 24.568504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901833, 38.283360, 24.722816>,  <32.692352, 38.355087, 24.815403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901833, 38.283360, 24.722816>,  <33.250969, 38.163815, 24.568504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901833, 38.283360, 24.722816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466490, -0.278857, -0.839420,
		-0.143297, -0.912644, 0.382816,
		-0.872842, 0.298866, 0.385780,
		32.639980, 38.373020, 24.838551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807278, 37.572891, 24.494730>,  <33.250969, 38.163815, 24.568504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807278, 37.572891, 24.494730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585632, 37.905659, 24.506538>,  <32.452644, 38.105320, 24.513622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585632, 37.905659, 24.506538>,  <32.807278, 37.572891, 24.494730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585632, 37.905659, 24.506538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485706, -0.294307, -0.823087,
		-0.676053, -0.470421, 0.567147,
		-0.554113, 0.831918, 0.029519,
		32.419399, 38.155235, 24.515394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216751, 37.385235, 23.967243>,  <32.807278, 37.572891, 24.494730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216751, 37.385235, 23.967243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205326, 37.779747, 24.032282>,  <32.198471, 38.016453, 24.071306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205326, 37.779747, 24.032282>,  <32.216751, 37.385235, 23.967243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205326, 37.779747, 24.032282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191019, 0.154282, -0.969386,
		-0.981171, -0.058743, 0.183993,
		-0.028558, 0.986279, 0.162598,
		32.196758, 38.075630, 24.081060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558027, 37.622822, 23.687239>,  <32.216751, 37.385235, 23.967243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558027, 37.622822, 23.687239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791739, 37.947273, 23.697773>,  <31.931965, 38.141945, 23.704094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791739, 37.947273, 23.697773>,  <31.558027, 37.622822, 23.687239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791739, 37.947273, 23.697773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160175, 0.147072, -0.976071,
		-0.795589, 0.566079, 0.215853,
		0.584279, 0.811125, 0.026337,
		31.967022, 38.190613, 23.705675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174227, 38.225773, 23.302225>,  <31.558027, 37.622822, 23.687239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174227, 38.225773, 23.302225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561344, 38.325306, 23.317492>,  <31.793615, 38.385025, 23.326651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561344, 38.325306, 23.317492>,  <31.174227, 38.225773, 23.302225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561344, 38.325306, 23.317492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016758, 0.087583, -0.996016,
		-0.251188, 0.964577, 0.080593,
		0.967793, 0.248836, 0.038164,
		31.851683, 38.399956, 23.328941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260151, 38.740925, 22.752045>,  <31.174227, 38.225773, 23.302225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260151, 38.740925, 22.752045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643147, 38.664948, 22.838892>,  <31.872944, 38.619362, 22.891001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643147, 38.664948, 22.838892>,  <31.260151, 38.740925, 22.752045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643147, 38.664948, 22.838892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246760, 0.149422, -0.957488,
		0.149422, 0.970359, 0.189939,
		0.957488, -0.189939, 0.217119,
		31.930393, 38.607967, 22.904028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627850, 39.264488, 22.505688>,  <31.260151, 38.740925, 22.752045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627850, 39.264488, 22.505688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883015, 38.957264, 22.528141>,  <32.036114, 38.772930, 22.541613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883015, 38.957264, 22.528141>,  <31.627850, 39.264488, 22.505688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883015, 38.957264, 22.528141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253443, 0.140552, -0.957085,
		0.727207, 0.624765, 0.284319,
		0.637915, -0.768058, 0.056132,
		32.074390, 38.726845, 22.544981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333138, 39.496174, 22.386234>,  <31.627850, 39.264488, 22.505688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333138, 39.496174, 22.386234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318424, 39.107208, 22.294098>,  <32.309597, 38.873829, 22.238815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318424, 39.107208, 22.294098>,  <32.333138, 39.496174, 22.386234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318424, 39.107208, 22.294098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253069, 0.213918, -0.943501,
		0.966749, -0.092998, 0.238219,
		-0.036784, -0.972415, -0.230340,
		32.307388, 38.815483, 22.224997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925991, 39.349869, 21.930374>,  <32.333138, 39.496174, 22.386234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925991, 39.349869, 21.930374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698399, 39.029144, 21.857323>,  <32.561844, 38.836708, 21.813492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698399, 39.029144, 21.857323>,  <32.925991, 39.349869, 21.930374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698399, 39.029144, 21.857323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219301, 0.066091, -0.973416,
		0.792569, -0.593908, 0.138234,
		-0.568983, -0.801814, -0.182627,
		32.527702, 38.788601, 21.802534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313572, 39.100128, 21.466518>,  <32.925991, 39.349869, 21.930374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313572, 39.100128, 21.466518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962532, 38.910000, 21.441570>,  <32.751907, 38.795921, 21.426601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962532, 38.910000, 21.441570>,  <33.313572, 39.100128, 21.466518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962532, 38.910000, 21.441570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094975, -0.044858, -0.994469,
		0.469895, -0.878668, 0.084511,
		-0.877598, -0.475322, -0.062372,
		32.699253, 38.767403, 21.422859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354252, 38.696011, 20.785049>,  <33.313572, 39.100128, 21.466518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354252, 38.696011, 20.785049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965847, 38.743061, 20.868282>,  <32.732803, 38.771294, 20.918222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965847, 38.743061, 20.868282>,  <33.354252, 38.696011, 20.785049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965847, 38.743061, 20.868282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202980, 0.053950, -0.977696,
		-0.126231, -0.991591, -0.028510,
		-0.971013, 0.117628, 0.208083,
		32.674541, 38.778351, 20.930708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966114, 38.175671, 20.317348>,  <33.354252, 38.696011, 20.785049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966114, 38.175671, 20.317348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746220, 38.482361, 20.449970>,  <32.614285, 38.666374, 20.529543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746220, 38.482361, 20.449970>,  <32.966114, 38.175671, 20.317348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746220, 38.482361, 20.449970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317155, 0.175616, -0.931972,
		-0.772792, -0.617489, 0.146629,
		-0.549733, 0.766724, 0.331554,
		32.581299, 38.712379, 20.549437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370697, 37.970119, 19.892967>,  <32.966114, 38.175671, 20.317348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370697, 37.970119, 19.892967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342468, 38.341885, 20.037863>,  <32.325531, 38.564941, 20.124800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342468, 38.341885, 20.037863>,  <32.370697, 37.970119, 19.892967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342468, 38.341885, 20.037863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325908, 0.321731, -0.888973,
		-0.942764, -0.180791, 0.280198,
		-0.070570, 0.929411, 0.362238,
		32.321297, 38.620708, 20.146534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643772, 38.279419, 19.622181>,  <32.370697, 37.970119, 19.892967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643772, 38.279419, 19.622181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894472, 38.580105, 19.704268>,  <32.044891, 38.760517, 19.753519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894472, 38.580105, 19.704268>,  <31.643772, 38.279419, 19.622181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894472, 38.580105, 19.704268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235545, 0.433806, -0.869673,
		-0.742767, 0.496730, 0.448950,
		0.626750, 0.751712, 0.205214,
		32.082497, 38.805618, 19.765831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311792, 38.958309, 19.331068>,  <31.643772, 38.279419, 19.622181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311792, 38.958309, 19.331068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693241, 39.043480, 19.416174>,  <31.922110, 39.094582, 19.467237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693241, 39.043480, 19.416174>,  <31.311792, 38.958309, 19.331068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693241, 39.043480, 19.416174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050958, 0.582442, -0.811274,
		-0.296663, 0.784490, 0.544579,
		0.953622, 0.212924, 0.212765,
		31.979328, 39.107357, 19.480003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259485, 39.642887, 19.274176>,  <31.311792, 38.958309, 19.331068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259485, 39.642887, 19.274176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626356, 39.491089, 19.225563>,  <31.846479, 39.400009, 19.196396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626356, 39.491089, 19.225563>,  <31.259485, 39.642887, 19.274176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626356, 39.491089, 19.225563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178272, 0.663539, -0.726591,
		0.356378, 0.644747, 0.676236,
		0.917177, -0.379495, -0.121530,
		31.901508, 39.377239, 19.189104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678555, 40.233505, 19.130779>,  <31.259485, 39.642887, 19.274176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678555, 40.233505, 19.130779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866913, 39.907562, 18.995571>,  <31.979929, 39.711994, 18.914446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866913, 39.907562, 18.995571>,  <31.678555, 40.233505, 19.130779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866913, 39.907562, 18.995571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283508, 0.502618, -0.816700,
		0.835392, 0.288750, 0.467701,
		0.470897, -0.814861, -0.338020,
		32.008183, 39.663105, 18.894165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188274, 40.523991, 18.747688>,  <31.678555, 40.233505, 19.130779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188274, 40.523991, 18.747688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189915, 40.145798, 18.617428>,  <32.190899, 39.918880, 18.539272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189915, 40.145798, 18.617428>,  <32.188274, 40.523991, 18.747688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189915, 40.145798, 18.617428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271629, 0.314463, -0.909577,
		0.962393, -0.084725, 0.258110,
		0.004102, -0.945481, -0.325651,
		32.191147, 39.862152, 18.519732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859009, 40.386452, 18.430553>,  <32.188274, 40.523991, 18.747688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859009, 40.386452, 18.430553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571468, 40.146416, 18.290186>,  <32.398945, 40.002396, 18.205965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571468, 40.146416, 18.290186>,  <32.859009, 40.386452, 18.430553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571468, 40.146416, 18.290186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057316, 0.451920, -0.890215,
		0.692796, -0.660047, -0.290469,
		-0.718853, -0.600089, -0.350919,
		32.355812, 39.966389, 18.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033352, 40.314156, 17.796415>,  <32.859009, 40.386452, 18.430553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033352, 40.314156, 17.796415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658566, 40.177898, 17.765285>,  <32.433693, 40.096146, 17.746607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658566, 40.177898, 17.765285>,  <33.033352, 40.314156, 17.796415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658566, 40.177898, 17.765285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059030, 0.373840, -0.925613,
		0.344389, -0.862677, -0.370384,
		-0.936969, -0.340635, -0.077823,
		32.377476, 40.075706, 17.741938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888329, 39.905388, 17.229063>,  <33.033352, 40.314156, 17.796415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888329, 39.905388, 17.229063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523758, 40.061974, 17.279753>,  <32.305016, 40.155926, 17.310165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523758, 40.061974, 17.279753>,  <32.888329, 39.905388, 17.229063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523758, 40.061974, 17.279753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081311, 0.130554, -0.988101,
		-0.403346, -0.910887, -0.087160,
		-0.911427, 0.391460, 0.126723,
		32.250328, 40.179413, 17.317770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598064, 39.804199, 16.552624>,  <32.888329, 39.905388, 17.229063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598064, 39.804199, 16.552624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318371, 40.040653, 16.713436>,  <32.150555, 40.182526, 16.809923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318371, 40.040653, 16.713436>,  <32.598064, 39.804199, 16.552624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318371, 40.040653, 16.713436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266828, 0.305918, -0.913902,
		-0.663227, -0.746307, -0.056178,
		-0.699238, 0.591134, 0.402029,
		32.108601, 40.217995, 16.834045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064083, 39.749729, 16.058437>,  <32.598064, 39.804199, 16.552624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064083, 39.749729, 16.058437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988596, 40.087166, 16.259531>,  <31.943302, 40.289627, 16.380188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988596, 40.087166, 16.259531>,  <32.064083, 39.749729, 16.058437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988596, 40.087166, 16.259531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164069, 0.477653, -0.863093,
		-0.968228, -0.245367, 0.048263,
		-0.188722, 0.843589, 0.502734,
		31.931980, 40.340244, 16.410351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436384, 39.980667, 15.756752>,  <32.064083, 39.749729, 16.058437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436384, 39.980667, 15.756752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583769, 40.296581, 15.952903>,  <31.672199, 40.486130, 16.070593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583769, 40.296581, 15.952903>,  <31.436384, 39.980667, 15.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583769, 40.296581, 15.952903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218117, 0.586209, -0.780246,
		-0.903694, 0.180530, 0.388261,
		0.368460, 0.789790, 0.490377,
		31.694307, 40.533520, 16.100016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028585, 40.611244, 15.589043>,  <31.436384, 39.980667, 15.756752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028585, 40.611244, 15.589043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384607, 40.739040, 15.719107>,  <31.598221, 40.815716, 15.797145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384607, 40.739040, 15.719107>,  <31.028585, 40.611244, 15.589043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384607, 40.739040, 15.719107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072303, 0.803216, -0.591284,
		-0.450081, 0.502766, 0.738006,
		0.890056, 0.319486, 0.325161,
		31.651625, 40.834885, 15.816655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942440, 41.270432, 15.919636>,  <31.028585, 40.611244, 15.589043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942440, 41.270432, 15.919636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287107, 41.227249, 15.721294>,  <31.493908, 41.201340, 15.602289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287107, 41.227249, 15.721294>,  <30.942440, 41.270432, 15.919636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287107, 41.227249, 15.721294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140923, 0.887773, -0.438177,
		0.487510, 0.447441, 0.749754,
		0.861670, -0.107958, -0.495853,
		31.545609, 41.194862, 15.572538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296497, 41.956398, 15.846590>,  <30.942440, 41.270432, 15.919636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296497, 41.956398, 15.846590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438719, 41.700970, 15.573589>,  <31.524052, 41.547714, 15.409789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438719, 41.700970, 15.573589>,  <31.296497, 41.956398, 15.846590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438719, 41.700970, 15.573589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091265, 0.703008, -0.705302,
		0.930190, 0.313060, 0.191676,
		0.355552, -0.638571, -0.682503,
		31.545383, 41.509399, 15.368838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952494, 42.143173, 15.472336>,  <31.296497, 41.956398, 15.846590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952494, 42.143173, 15.472336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761690, 41.911968, 15.207499>,  <31.647207, 41.773247, 15.048596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761690, 41.911968, 15.207499>,  <31.952494, 42.143173, 15.472336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761690, 41.911968, 15.207499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044703, 0.736391, -0.675077,
		0.877761, -0.351616, -0.325427,
		-0.477009, -0.578009, -0.662093,
		31.618587, 41.738567, 15.008870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996212, 41.990044, 14.752764>,  <31.952494, 42.143173, 15.472336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996212, 41.990044, 14.752764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353088, 42.144211, 14.658575>,  <32.567215, 42.236713, 14.602061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353088, 42.144211, 14.658575>,  <31.996212, 41.990044, 14.752764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353088, 42.144211, 14.658575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154654, 0.229140, 0.961029,
		0.424357, -0.893838, 0.144830,
		0.892190, 0.385421, -0.235473,
		32.620747, 42.259838, 14.587934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525017, 41.744957, 15.210750>,  <31.996212, 41.990044, 14.752764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525017, 41.744957, 15.210750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598988, 42.113125, 15.072977>,  <32.643372, 42.334026, 14.990314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598988, 42.113125, 15.072977>,  <32.525017, 41.744957, 15.210750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598988, 42.113125, 15.072977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150979, 0.319708, 0.935410,
		0.971085, -0.224986, -0.079841,
		0.184928, 0.920417, -0.344432,
		32.654465, 42.389252, 14.969647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104355, 41.956585, 15.537125>,  <32.525017, 41.744957, 15.210750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104355, 41.956585, 15.537125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829655, 42.228477, 15.434093>,  <32.664837, 42.391613, 15.372274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829655, 42.228477, 15.434093>,  <33.104355, 41.956585, 15.537125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829655, 42.228477, 15.434093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149767, 0.214436, 0.965187,
		0.711301, 0.701416, -0.045462,
		-0.686746, 0.679730, -0.257578,
		32.623631, 42.432396, 15.356820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144939, 42.676945, 15.807760>,  <33.104355, 41.956585, 15.537125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144939, 42.676945, 15.807760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755768, 42.594727, 15.765503>,  <32.522266, 42.545395, 15.740149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755768, 42.594727, 15.765503>,  <33.144939, 42.676945, 15.807760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755768, 42.594727, 15.765503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117075, 0.044242, 0.992137,
		-0.199257, 0.977647, -0.067109,
		-0.972929, -0.205547, -0.105643,
		32.463890, 42.533062, 15.733810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849361, 43.092968, 16.295710>,  <33.144939, 42.676945, 15.807760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849361, 43.092968, 16.295710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564018, 42.826221, 16.209543>,  <32.392811, 42.666172, 16.157843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564018, 42.826221, 16.209543>,  <32.849361, 43.092968, 16.295710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564018, 42.826221, 16.209543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221015, -0.077617, 0.972177,
		-0.665032, 0.741124, -0.092019,
		-0.713362, -0.666866, -0.215417,
		32.350010, 42.626160, 16.144918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159126, 43.348797, 16.532936>,  <32.849361, 43.092968, 16.295710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159126, 43.348797, 16.532936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175896, 42.949329, 16.520851>,  <32.185955, 42.709648, 16.513601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175896, 42.949329, 16.520851>,  <32.159126, 43.348797, 16.532936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175896, 42.949329, 16.520851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199080, -0.037979, 0.979247,
		-0.979086, -0.035035, -0.200406,
		0.041919, -0.998664, -0.030210,
		32.188473, 42.649731, 16.511787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451477, 42.940121, 16.756292>,  <32.159126, 43.348797, 16.532936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451477, 42.940121, 16.756292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784590, 42.726616, 16.815041>,  <31.984457, 42.598511, 16.850288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784590, 42.726616, 16.815041>,  <31.451477, 42.940121, 16.756292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784590, 42.726616, 16.815041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274771, -0.168213, 0.946681,
		-0.480601, -0.828733, -0.286748,
		0.832781, -0.533765, 0.146868,
		32.034424, 42.566486, 16.859100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205694, 42.595638, 17.188257>,  <31.451477, 42.940121, 16.756292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205694, 42.595638, 17.188257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595585, 42.517876, 17.232279>,  <31.829519, 42.471218, 17.258692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595585, 42.517876, 17.232279>,  <31.205694, 42.595638, 17.188257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595585, 42.517876, 17.232279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138002, -0.136578, 0.980970,
		-0.175686, -0.971364, -0.159956,
		0.974726, -0.194417, 0.110055,
		31.888002, 42.459553, 17.265295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317770, 41.979481, 17.625933>,  <31.205694, 42.595638, 17.188257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317770, 41.979481, 17.625933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678850, 42.148327, 17.659271>,  <31.895498, 42.249634, 17.679274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678850, 42.148327, 17.659271>,  <31.317770, 41.979481, 17.625933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678850, 42.148327, 17.659271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036582, -0.117711, 0.992374,
		0.428710, -0.898866, -0.090816,
		0.902702, 0.422118, 0.083346,
		31.949661, 42.274963, 17.684275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629036, 41.528538, 18.073376>,  <31.317770, 41.979481, 17.625933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629036, 41.528538, 18.073376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834417, 41.870220, 18.106106>,  <31.957645, 42.075230, 18.125744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834417, 41.870220, 18.106106>,  <31.629036, 41.528538, 18.073376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834417, 41.870220, 18.106106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083633, -0.144711, 0.985933,
		0.854034, -0.499386, -0.145742,
		0.513452, 0.854209, 0.081823,
		31.988453, 42.126484, 18.130653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138607, 41.331810, 18.496529>,  <31.629036, 41.528538, 18.073376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138607, 41.331810, 18.496529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096684, 41.728989, 18.518682>,  <32.071529, 41.967297, 18.531975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096684, 41.728989, 18.518682>,  <32.138607, 41.331810, 18.496529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096684, 41.728989, 18.518682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234812, -0.078827, 0.968839,
		0.966374, 0.088540, 0.241418,
		-0.104811, 0.992948, 0.055386,
		32.065239, 42.026875, 18.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539112, 41.613884, 19.137156>,  <32.138607, 41.331810, 18.496529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539112, 41.613884, 19.137156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284954, 41.901005, 19.023293>,  <32.132458, 42.073277, 18.954975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284954, 41.901005, 19.023293>,  <32.539112, 41.613884, 19.137156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284954, 41.901005, 19.023293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003055, 0.366298, 0.930493,
		0.772179, 0.592102, -0.230552,
		-0.635397, 0.717803, -0.284656,
		32.094334, 42.116344, 18.937895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696438, 42.111607, 19.602896>,  <32.539112, 41.613884, 19.137156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696438, 42.111607, 19.602896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340187, 42.227859, 19.462997>,  <32.126438, 42.297611, 19.379059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340187, 42.227859, 19.462997>,  <32.696438, 42.111607, 19.602896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340187, 42.227859, 19.462997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270178, 0.280456, 0.921058,
		0.365778, 0.914810, -0.171258,
		-0.890624, 0.290633, -0.349746,
		32.073002, 42.315048, 19.358074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630882, 42.796642, 19.870905>,  <32.696438, 42.111607, 19.602896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630882, 42.796642, 19.870905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262371, 42.660709, 19.795256>,  <32.041264, 42.579151, 19.749866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262371, 42.660709, 19.795256>,  <32.630882, 42.796642, 19.870905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262371, 42.660709, 19.795256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304842, 0.329016, 0.893767,
		-0.241506, 0.881058, -0.406709,
		-0.921274, -0.339832, -0.189124,
		31.985989, 42.558762, 19.738518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293240, 43.275581, 20.161221>,  <32.630882, 42.796642, 19.870905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293240, 43.275581, 20.161221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029446, 42.978882, 20.112421>,  <31.871168, 42.800861, 20.083141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029446, 42.978882, 20.112421>,  <32.293240, 43.275581, 20.161221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029446, 42.978882, 20.112421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380375, 0.189302, 0.905252,
		-0.648376, 0.643406, -0.406985,
		-0.659487, -0.741750, -0.121997,
		31.831600, 42.756355, 20.075823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602722, 43.505188, 20.411444>,  <32.293240, 43.275581, 20.161221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602722, 43.505188, 20.411444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595592, 43.107502, 20.453806>,  <31.591314, 42.868889, 20.479223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595592, 43.107502, 20.453806>,  <31.602722, 43.505188, 20.411444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595592, 43.107502, 20.453806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240846, 0.107073, 0.964639,
		-0.970400, -0.008312, -0.241362,
		-0.017826, -0.994216, 0.105905,
		31.590244, 42.809238, 20.485577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131588, 43.371891, 20.935114>,  <31.602722, 43.505188, 20.411444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131588, 43.371891, 20.935114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341356, 43.031425, 20.926056>,  <31.467216, 42.827148, 20.920620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341356, 43.031425, 20.926056>,  <31.131588, 43.371891, 20.935114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341356, 43.031425, 20.926056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082546, -0.077295, 0.993585,
		-0.847450, -0.519185, -0.110795,
		0.524418, -0.851160, -0.022647,
		31.498682, 42.776077, 20.919262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764711, 42.912426, 21.470188>,  <31.131588, 43.371891, 20.935114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764711, 42.912426, 21.470188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133512, 42.770321, 21.408604>,  <31.354794, 42.685059, 21.371653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133512, 42.770321, 21.408604>,  <30.764711, 42.912426, 21.470188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133512, 42.770321, 21.408604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091494, -0.186471, 0.978191,
		-0.376223, -0.915979, -0.139422,
		0.922001, -0.355261, -0.153961,
		31.410112, 42.663742, 21.362415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757723, 42.399448, 21.801788>,  <30.764711, 42.912426, 21.470188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757723, 42.399448, 21.801788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157215, 42.407616, 21.783354>,  <31.396910, 42.412518, 21.772293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157215, 42.407616, 21.783354>,  <30.757723, 42.399448, 21.801788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157215, 42.407616, 21.783354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050398, -0.384924, 0.921571,
		0.001079, -0.922722, -0.385464,
		0.998729, 0.020421, -0.046088,
		31.456833, 42.413742, 21.769527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110641, 41.671303, 21.896954>,  <30.757723, 42.399448, 21.801788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110641, 41.671303, 21.896954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366112, 41.953308, 22.020277>,  <31.519394, 42.122509, 22.094271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366112, 41.953308, 22.020277>,  <31.110641, 41.671303, 21.896954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366112, 41.953308, 22.020277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056341, -0.442443, 0.895025,
		0.767412, -0.554259, -0.322298,
		0.638674, 0.705011, 0.308309,
		31.557714, 42.164810, 22.112770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515501, 41.280819, 22.288471>,  <31.110641, 41.671303, 21.896954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515501, 41.280819, 22.288471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608126, 41.655712, 22.392756>,  <31.663700, 41.880650, 22.455326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608126, 41.655712, 22.392756>,  <31.515501, 41.280819, 22.288471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608126, 41.655712, 22.392756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213336, -0.310396, 0.926360,
		0.949140, -0.158890, -0.271821,
		0.231561, 0.937235, 0.260712,
		31.677593, 41.936882, 22.470970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206463, 41.202919, 22.605244>,  <31.515501, 41.280819, 22.288471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206463, 41.202919, 22.605244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012775, 41.524380, 22.743624>,  <31.896563, 41.717255, 22.826651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012775, 41.524380, 22.743624>,  <32.206463, 41.202919, 22.605244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012775, 41.524380, 22.743624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092847, -0.345965, 0.933642,
		0.870006, 0.484208, 0.092907,
		-0.484220, 0.803649, 0.345949,
		31.867510, 41.765472, 22.847408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376076, 41.290733, 23.360714>,  <32.206463, 41.202919, 22.605244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376076, 41.290733, 23.360714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071873, 41.543991, 23.303087>,  <31.889351, 41.695946, 23.268511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071873, 41.543991, 23.303087>,  <32.376076, 41.290733, 23.360714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071873, 41.543991, 23.303087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132101, 0.066369, 0.989012,
		0.635749, 0.771184, 0.033165,
		-0.760509, 0.633144, -0.144068,
		31.843719, 41.733932, 23.259867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523514, 42.019413, 23.680239>,  <32.376076, 41.290733, 23.360714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523514, 42.019413, 23.680239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124332, 42.016293, 23.654875>,  <31.884823, 42.014420, 23.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124332, 42.016293, 23.654875>,  <32.523514, 42.019413, 23.680239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124332, 42.016293, 23.654875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063273, -0.016874, 0.997853,
		-0.008855, 0.999827, 0.016346,
		-0.997957, -0.007802, -0.063411,
		31.824945, 42.013950, 23.635851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334801, 42.449242, 24.233919>,  <32.523514, 42.019413, 23.680239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334801, 42.449242, 24.233919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011318, 42.231113, 24.145720>,  <31.817228, 42.100239, 24.092800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011318, 42.231113, 24.145720>,  <32.334801, 42.449242, 24.233919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011318, 42.231113, 24.145720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148251, -0.173799, 0.973558,
		-0.569221, 0.820013, 0.059709,
		-0.808708, -0.545318, -0.220498,
		31.768705, 42.067516, 24.079571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755053, 42.674011, 24.739426>,  <32.334801, 42.449242, 24.233919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755053, 42.674011, 24.739426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596687, 42.330605, 24.609066>,  <31.501669, 42.124561, 24.530849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596687, 42.330605, 24.609066>,  <31.755053, 42.674011, 24.739426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596687, 42.330605, 24.609066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119632, -0.303653, 0.945242,
		-0.910462, 0.413221, 0.017515,
		-0.395913, -0.858512, -0.325899,
		31.477913, 42.073051, 24.511295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028372, 42.651302, 24.918386>,  <31.755053, 42.674011, 24.739426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028372, 42.651302, 24.918386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187683, 42.288227, 24.865503>,  <31.283270, 42.070381, 24.833773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187683, 42.288227, 24.865503>,  <31.028372, 42.651302, 24.918386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187683, 42.288227, 24.865503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006137, -0.146767, 0.989152,
		-0.917244, -0.393148, -0.064025,
		0.398280, -0.907686, -0.132209,
		31.307167, 42.015923, 24.825840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556267, 42.251095, 25.301044>,  <31.028372, 42.651302, 24.918386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556267, 42.251095, 25.301044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897507, 42.049583, 25.246748>,  <31.102251, 41.928677, 25.214170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897507, 42.049583, 25.246748>,  <30.556267, 42.251095, 25.301044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897507, 42.049583, 25.246748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095989, -0.407267, 0.908251,
		-0.512843, -0.761798, -0.395796,
		0.853099, -0.503783, -0.135740,
		31.153437, 41.898449, 25.206026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474907, 41.697636, 25.710140>,  <30.556267, 42.251095, 25.301044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474907, 41.697636, 25.710140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866787, 41.679626, 25.632000>,  <31.101915, 41.668819, 25.585115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866787, 41.679626, 25.632000>,  <30.474907, 41.697636, 25.710140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866787, 41.679626, 25.632000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176481, -0.268544, 0.946963,
		-0.095096, -0.962214, -0.255147,
		0.979699, -0.045024, -0.195350,
		31.160696, 41.666119, 25.573395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673740, 41.037125, 26.054127>,  <30.474907, 41.697636, 25.710140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673740, 41.037125, 26.054127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002106, 41.264210, 26.029459>,  <31.199125, 41.400459, 26.014658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002106, 41.264210, 26.029459>,  <30.673740, 41.037125, 26.054127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002106, 41.264210, 26.029459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206852, -0.194959, 0.958751,
		0.532269, -0.799810, -0.277477,
		0.820915, 0.567710, -0.061671,
		31.248381, 41.434525, 26.010958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295095, 40.612446, 26.306103>,  <30.673740, 41.037125, 26.054127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295095, 40.612446, 26.306103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379772, 41.002010, 26.338785>,  <31.430578, 41.235748, 26.358395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379772, 41.002010, 26.338785>,  <31.295095, 40.612446, 26.306103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379772, 41.002010, 26.338785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204871, -0.125964, 0.970650,
		0.955623, -0.188738, -0.226193,
		0.211690, 0.973915, 0.081707,
		31.443279, 41.294186, 26.363297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740242, 40.563854, 26.832388>,  <31.295095, 40.612446, 26.306103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740242, 40.563854, 26.832388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673470, 40.958233, 26.829895>,  <31.633406, 41.194862, 26.828400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673470, 40.958233, 26.829895>,  <31.740242, 40.563854, 26.832388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673470, 40.958233, 26.829895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285615, 0.054405, 0.956799,
		0.943694, 0.157940, -0.290683,
		-0.166931, 0.985949, -0.006231,
		31.623390, 41.254017, 26.828026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306393, 40.888386, 27.153654>,  <31.740242, 40.563854, 26.832388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306393, 40.888386, 27.153654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003307, 41.148369, 27.177040>,  <31.821455, 41.304359, 27.191072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003307, 41.148369, 27.177040>,  <32.306393, 40.888386, 27.153654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003307, 41.148369, 27.177040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214478, 0.163412, 0.962962,
		0.616334, 0.742190, -0.263222,
		-0.757715, 0.649962, 0.058467,
		31.775993, 41.343357, 27.194580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596554, 41.388054, 27.662220>,  <32.306393, 40.888386, 27.153654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596554, 41.388054, 27.662220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202499, 41.452324, 27.637938>,  <31.966066, 41.490887, 27.623367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202499, 41.452324, 27.637938>,  <32.596554, 41.388054, 27.662220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202499, 41.452324, 27.637938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018364, 0.252882, 0.967323,
		0.170775, 0.954062, -0.246173,
		-0.985139, 0.160674, -0.060706,
		31.906958, 41.500526, 27.619726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431911, 42.075268, 27.937359>,  <32.596554, 41.388054, 27.662220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431911, 42.075268, 27.937359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092663, 41.863499, 27.945414>,  <31.889114, 41.736439, 27.950247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092663, 41.863499, 27.945414>,  <32.431911, 42.075268, 27.937359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092663, 41.863499, 27.945414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073281, 0.154869, 0.985213,
		-0.524710, 0.834105, -0.170144,
		-0.848121, -0.529419, 0.020137,
		31.838226, 41.704674, 27.951454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964506, 42.473553, 28.297586>,  <32.431911, 42.075268, 27.937359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964506, 42.473553, 28.297586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804516, 42.107975, 28.325098>,  <31.708521, 41.888630, 28.341604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804516, 42.107975, 28.325098>,  <31.964506, 42.473553, 28.297586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804516, 42.107975, 28.325098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049413, 0.096437, 0.994112,
		-0.915192, 0.394224, -0.083733,
		-0.399977, -0.913941, 0.068779,
		31.684523, 41.833794, 28.345732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421976, 42.500771, 28.771839>,  <31.964506, 42.473553, 28.297586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421976, 42.500771, 28.771839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531298, 42.116070, 28.764490>,  <31.596891, 41.885250, 28.760080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531298, 42.116070, 28.764490>,  <31.421976, 42.500771, 28.771839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531298, 42.116070, 28.764490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049026, -0.033004, 0.998252,
		-0.960678, -0.271926, -0.056171,
		0.273304, -0.961752, -0.018374,
		31.613289, 41.827545, 28.758978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116552, 42.236511, 29.384409>,  <31.421976, 42.500771, 28.771839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116552, 42.236511, 29.384409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365952, 41.941360, 29.281034>,  <31.515591, 41.764271, 29.219009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365952, 41.941360, 29.281034>,  <31.116552, 42.236511, 29.384409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365952, 41.941360, 29.281034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049154, -0.366894, 0.928963,
		-0.780280, -0.566502, -0.265027,
		0.623496, -0.737878, -0.258434,
		31.552999, 41.719997, 29.203505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806313, 41.619492, 29.559986>,  <31.116552, 42.236511, 29.384409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806313, 41.619492, 29.559986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195642, 41.531757, 29.533045>,  <31.429239, 41.479118, 29.516880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195642, 41.531757, 29.533045>,  <30.806313, 41.619492, 29.559986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195642, 41.531757, 29.533045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014222, -0.350655, 0.936397,
		-0.228998, -0.910459, -0.344420,
		0.973323, -0.219331, -0.067351,
		31.487638, 41.465958, 29.512840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950626, 41.002129, 30.001722>,  <30.806313, 41.619492, 29.559986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950626, 41.002129, 30.001722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327602, 41.134949, 29.985947>,  <31.553787, 41.214642, 29.976480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327602, 41.134949, 29.985947>,  <30.950626, 41.002129, 30.001722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327602, 41.134949, 29.985947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168871, -0.370830, 0.913218,
		0.288606, -0.867312, -0.405558,
		0.942438, 0.332047, -0.039440,
		31.610334, 41.234562, 29.974115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464371, 40.430058, 30.150972>,  <30.950626, 41.002129, 30.001722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464371, 40.430058, 30.150972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661913, 40.770535, 30.222052>,  <31.780437, 40.974819, 30.264700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661913, 40.770535, 30.222052>,  <31.464371, 40.430058, 30.150972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661913, 40.770535, 30.222052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352389, -0.382740, 0.854009,
		0.794940, -0.359138, -0.488969,
		0.493855, 0.851193, 0.177699,
		31.810070, 41.025894, 30.275362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032791, 40.245064, 30.470768>,  <31.464371, 40.430058, 30.150972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032791, 40.245064, 30.470768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039040, 40.635593, 30.557064>,  <32.042789, 40.869911, 30.608841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039040, 40.635593, 30.557064>,  <32.032791, 40.245064, 30.470768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039040, 40.635593, 30.557064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466035, -0.198007, 0.862325,
		0.884628, 0.087071, -0.458096,
		0.015623, 0.976326, 0.215741,
		32.043728, 40.928490, 30.621786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709942, 40.398903, 30.744898>,  <32.032791, 40.245064, 30.470768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709942, 40.398903, 30.744898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465511, 40.691341, 30.866280>,  <32.318855, 40.866806, 30.939108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465511, 40.691341, 30.866280>,  <32.709942, 40.398903, 30.744898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465511, 40.691341, 30.866280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410935, -0.034657, 0.911006,
		0.676553, 0.681390, -0.279257,
		-0.611072, 0.731100, 0.303454,
		32.282188, 40.910671, 30.957315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049068, 40.700905, 31.213087>,  <32.709942, 40.398903, 30.744898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049068, 40.700905, 31.213087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678261, 40.822670, 31.300699>,  <32.455776, 40.895729, 31.353268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678261, 40.822670, 31.300699>,  <33.049068, 40.700905, 31.213087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678261, 40.822670, 31.300699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243202, 0.043389, 0.969005,
		0.285475, 0.951551, -0.114256,
		-0.927015, 0.304414, 0.219033,
		32.400158, 40.913994, 31.366409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105576, 41.280727, 31.743942>,  <33.049068, 40.700905, 31.213087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105576, 41.280727, 31.743942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751701, 41.096172, 31.770634>,  <32.539375, 40.985439, 31.786650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751701, 41.096172, 31.770634>,  <33.105576, 41.280727, 31.743942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751701, 41.096172, 31.770634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091480, -0.031457, 0.995310,
		-0.457120, 0.886643, 0.070037,
		-0.884688, -0.461383, 0.066731,
		32.486294, 40.957756, 31.790653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012535, 41.843742, 31.332994>,  <33.105576, 41.280727, 31.743942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012535, 41.843742, 31.332994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356506, 42.039776, 31.390045>,  <33.562889, 42.157394, 31.424276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356506, 42.039776, 31.390045>,  <33.012535, 41.843742, 31.332994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356506, 42.039776, 31.390045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156489, 0.012831, -0.987597,
		-0.485833, 0.871582, -0.065659,
		0.859929, 0.490082, 0.142626,
		33.614487, 42.186802, 31.432833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829540, 42.521381, 31.047928>,  <33.012535, 41.843742, 31.332994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829540, 42.521381, 31.047928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228462, 42.495834, 31.062323>,  <33.467815, 42.480507, 31.070959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228462, 42.495834, 31.062323>,  <32.829540, 42.521381, 31.047928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228462, 42.495834, 31.062323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025674, -0.155493, -0.987503,
		0.068666, 0.985770, -0.153435,
		0.997309, -0.063868, 0.035986,
		33.527657, 42.476673, 31.073118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077873, 43.110188, 30.660910>,  <32.829540, 42.521381, 31.047928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077873, 43.110188, 30.660910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374310, 42.841644, 30.657652>,  <33.552170, 42.680519, 30.655697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374310, 42.841644, 30.657652>,  <33.077873, 43.110188, 30.660910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374310, 42.841644, 30.657652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117281, 0.141389, -0.982982,
		0.661084, 0.727523, 0.183519,
		0.741089, -0.671357, -0.008146,
		33.596638, 42.640236, 30.655209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673702, 43.414909, 30.625080>,  <33.077873, 43.110188, 30.660910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673702, 43.414909, 30.625080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772243, 43.054295, 30.482788>,  <33.831367, 42.837925, 30.397413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772243, 43.054295, 30.482788>,  <33.673702, 43.414909, 30.625080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772243, 43.054295, 30.482788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280676, 0.417677, -0.864156,
		0.927649, 0.113039, 0.355935,
		0.246349, -0.901537, -0.355730,
		33.846149, 42.783833, 30.376068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274799, 43.508820, 30.274107>,  <33.673702, 43.414909, 30.625080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274799, 43.508820, 30.274107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135426, 43.161076, 30.133928>,  <34.051800, 42.952431, 30.049822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135426, 43.161076, 30.133928>,  <34.274799, 43.508820, 30.274107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135426, 43.161076, 30.133928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151360, 0.316783, -0.936343,
		0.925032, -0.379298, 0.021208,
		-0.348435, -0.869357, -0.350445,
		34.030895, 42.900269, 30.028795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779938, 43.204166, 29.847654>,  <34.274799, 43.508820, 30.274107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779938, 43.204166, 29.847654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425621, 43.060860, 29.729658>,  <34.213032, 42.974876, 29.658861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425621, 43.060860, 29.729658>,  <34.779938, 43.204166, 29.847654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425621, 43.060860, 29.729658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199321, 0.280330, -0.938981,
		0.419098, -0.890540, -0.176904,
		-0.885792, -0.358265, -0.294990,
		34.159882, 42.953381, 29.641161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899956, 42.928635, 29.145279>,  <34.779938, 43.204166, 29.847654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899956, 42.928635, 29.145279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504219, 42.961430, 29.193398>,  <34.266777, 42.981106, 29.222269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504219, 42.961430, 29.193398>,  <34.899956, 42.928635, 29.145279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504219, 42.961430, 29.193398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093775, 0.273151, -0.957389,
		-0.111357, -0.958470, -0.262552,
		-0.989346, 0.081991, 0.120297,
		34.207417, 42.986027, 29.229486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656216, 42.693485, 28.516706>,  <34.899956, 42.928635, 29.145279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656216, 42.693485, 28.516706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361317, 42.912800, 28.674622>,  <34.184380, 43.044388, 28.769371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361317, 42.912800, 28.674622>,  <34.656216, 42.693485, 28.516706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361317, 42.912800, 28.674622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176727, 0.407484, -0.895949,
		-0.652105, -0.730301, -0.203517,
		-0.737243, 0.548285, 0.394786,
		34.140144, 43.077286, 28.793056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092438, 42.655666, 28.058813>,  <34.656216, 42.693485, 28.516706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092438, 42.655666, 28.058813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966564, 42.965099, 28.278831>,  <33.891041, 43.150757, 28.410843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966564, 42.965099, 28.278831>,  <34.092438, 42.655666, 28.058813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966564, 42.965099, 28.278831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276549, 0.479627, -0.832754,
		-0.908018, -0.414166, 0.063003,
		-0.314680, 0.773579, 0.550047,
		33.872162, 43.197174, 28.443846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463081, 42.775967, 27.834480>,  <34.092438, 42.655666, 28.058813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463081, 42.775967, 27.834480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593204, 43.118645, 27.994606>,  <33.671280, 43.324249, 28.090681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593204, 43.118645, 27.994606>,  <33.463081, 42.775967, 27.834480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593204, 43.118645, 27.994606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063982, 0.442313, -0.894576,
		-0.943440, 0.265403, 0.198702,
		0.325312, 0.856691, 0.400315,
		33.690800, 43.375652, 28.114700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071938, 43.305145, 27.571594>,  <33.463081, 42.775967, 27.834480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071938, 43.305145, 27.571594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395840, 43.504677, 27.695181>,  <33.590183, 43.624397, 27.769333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395840, 43.504677, 27.695181>,  <33.071938, 43.305145, 27.571594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395840, 43.504677, 27.695181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012758, 0.511464, -0.859210,
		-0.586626, 0.699693, 0.407798,
		0.809757, 0.498832, 0.308965,
		33.638767, 43.654327, 27.787870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956497, 44.010715, 27.479982>,  <33.071938, 43.305145, 27.571594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956497, 44.010715, 27.479982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356331, 44.000595, 27.485628>,  <33.596230, 43.994522, 27.489016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356331, 44.000595, 27.485628>,  <32.956497, 44.010715, 27.479982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356331, 44.000595, 27.485628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024471, 0.476598, -0.878781,
		0.015506, 0.878758, 0.477017,
		0.999580, -0.025300, 0.014114,
		33.656204, 43.993004, 27.489862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160156, 44.696407, 27.361504>,  <32.956497, 44.010715, 27.479982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160156, 44.696407, 27.361504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469784, 44.458076, 27.275896>,  <33.655560, 44.315079, 27.224531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469784, 44.458076, 27.275896>,  <33.160156, 44.696407, 27.361504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469784, 44.458076, 27.275896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006266, 0.345246, -0.938491,
		0.633066, 0.725119, 0.270979,
		0.774072, -0.595825, -0.214020,
		33.702007, 44.279327, 27.211691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575436, 45.070351, 26.867970>,  <33.160156, 44.696407, 27.361504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575436, 45.070351, 26.867970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699730, 44.694996, 26.807470>,  <33.774307, 44.469784, 26.771170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699730, 44.694996, 26.807470>,  <33.575436, 45.070351, 26.867970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699730, 44.694996, 26.807470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112218, 0.194232, -0.974515,
		0.943848, 0.285845, 0.165659,
		0.310737, -0.938385, -0.151249,
		33.792950, 44.413479, 26.762096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131943, 45.125881, 26.289007>,  <33.575436, 45.070351, 26.867970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131943, 45.125881, 26.289007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028728, 44.739475, 26.295197>,  <33.966801, 44.507633, 26.298910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028728, 44.739475, 26.295197>,  <34.131943, 45.125881, 26.289007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028728, 44.739475, 26.295197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357398, -0.110324, -0.927413,
		0.897598, -0.233779, 0.373718,
		-0.258040, -0.966010, 0.015475,
		33.951317, 44.449673, 26.299839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349865, 44.973427, 25.688988>,  <34.131943, 45.125881, 26.289007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349865, 44.973427, 25.688988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144436, 44.646309, 25.792879>,  <34.021179, 44.450039, 25.855215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144436, 44.646309, 25.792879>,  <34.349865, 44.973427, 25.688988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144436, 44.646309, 25.792879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008517, -0.297825, -0.954583,
		0.858006, -0.492456, 0.145989,
		-0.513570, -0.817794, 0.259729,
		33.990364, 44.400970, 25.870798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675304, 44.518898, 25.327705>,  <34.349865, 44.973427, 25.688988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675304, 44.518898, 25.327705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319786, 44.354908, 25.409641>,  <34.106476, 44.256512, 25.458803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319786, 44.354908, 25.409641>,  <34.675304, 44.518898, 25.327705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319786, 44.354908, 25.409641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174913, -0.109673, -0.978457,
		0.423612, -0.905477, 0.025767,
		-0.888796, -0.409979, 0.204839,
		34.053146, 44.231915, 25.471092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698803, 43.826710, 24.970182>,  <34.675304, 44.518898, 25.327705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698803, 43.826710, 24.970182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324303, 43.952816, 25.032211>,  <34.099602, 44.028481, 25.069429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324303, 43.952816, 25.032211>,  <34.698803, 43.826710, 24.970182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324303, 43.952816, 25.032211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212999, -0.158300, -0.964144,
		-0.279414, -0.935708, 0.215359,
		-0.936247, 0.315266, 0.155074,
		34.043430, 44.047398, 25.078733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252258, 43.408726, 24.568930>,  <34.698803, 43.826710, 24.970182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252258, 43.408726, 24.568930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006912, 43.720203, 24.621733>,  <33.859703, 43.907089, 24.653416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006912, 43.720203, 24.621733>,  <34.252258, 43.408726, 24.568930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006912, 43.720203, 24.621733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104406, 0.085735, -0.990832,
		-0.782870, -0.621523, 0.028713,
		-0.613363, 0.778690, 0.132010,
		33.822903, 43.953812, 24.661335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748997, 43.272869, 24.116440>,  <34.252258, 43.408726, 24.568930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748997, 43.272869, 24.116440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676449, 43.655350, 24.208340>,  <33.632919, 43.884838, 24.263479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676449, 43.655350, 24.208340>,  <33.748997, 43.272869, 24.116440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676449, 43.655350, 24.208340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121661, 0.210014, -0.970099,
		-0.975860, -0.203901, 0.078241,
		-0.181373, 0.956200, 0.229751,
		33.622036, 43.942211, 24.277266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106812, 43.475590, 23.868565>,  <33.748997, 43.272869, 24.116440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106812, 43.475590, 23.868565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341763, 43.798267, 23.894567>,  <33.482735, 43.991875, 23.910170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341763, 43.798267, 23.894567>,  <33.106812, 43.475590, 23.868565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341763, 43.798267, 23.894567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187356, 0.213685, -0.958768,
		-0.787325, 0.550983, 0.276654,
		0.587382, 0.806695, 0.065010,
		33.517979, 44.040276, 23.914070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878918, 44.059898, 23.421856>,  <33.106812, 43.475590, 23.868565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878918, 44.059898, 23.421856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276680, 44.085133, 23.455738>,  <33.515339, 44.100273, 23.476067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276680, 44.085133, 23.455738>,  <32.878918, 44.059898, 23.421856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276680, 44.085133, 23.455738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082873, 0.031123, -0.996074,
		-0.065475, 0.997523, 0.025721,
		0.994407, 0.063087, 0.084706,
		33.575001, 44.104057, 23.481150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044243, 44.459396, 22.865417>,  <32.878918, 44.059898, 23.421856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044243, 44.459396, 22.865417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381081, 44.259270, 22.945967>,  <33.583183, 44.139194, 22.994295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381081, 44.259270, 22.945967>,  <33.044243, 44.459396, 22.865417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381081, 44.259270, 22.945967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246474, 0.024905, -0.968829,
		0.479709, 0.865483, 0.144288,
		0.842099, -0.500319, 0.201372,
		33.633709, 44.109173, 23.006378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521301, 44.799404, 22.414038>,  <33.044243, 44.459396, 22.865417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521301, 44.799404, 22.414038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684235, 44.444889, 22.502199>,  <33.781994, 44.232182, 22.555096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684235, 44.444889, 22.502199>,  <33.521301, 44.799404, 22.414038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684235, 44.444889, 22.502199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239019, -0.129465, -0.962345,
		0.881446, 0.444679, 0.159103,
		0.407336, -0.886284, 0.220403,
		33.806435, 44.179005, 22.568319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221745, 44.768482, 22.179604>,  <33.521301, 44.799404, 22.414038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221745, 44.768482, 22.179604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081913, 44.393749, 22.184353>,  <33.998013, 44.168911, 22.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081913, 44.393749, 22.184353>,  <34.221745, 44.768482, 22.179604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081913, 44.393749, 22.184353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183782, -0.080994, -0.979624,
		0.918705, -0.340273, 0.200487,
		-0.349578, -0.936832, 0.011873,
		33.977039, 44.112701, 22.187914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647167, 44.414349, 21.688833>,  <34.221745, 44.768482, 22.179604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647167, 44.414349, 21.688833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361156, 44.142143, 21.752886>,  <34.189548, 43.978821, 21.791317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361156, 44.142143, 21.752886>,  <34.647167, 44.414349, 21.688833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361156, 44.142143, 21.752886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072046, -0.299566, -0.951351,
		0.695375, -0.668704, 0.263226,
		-0.715026, -0.680510, 0.160133,
		34.146648, 43.937988, 21.800926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934658, 43.729969, 21.472452>,  <34.647167, 44.414349, 21.688833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934658, 43.729969, 21.472452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539833, 43.666477, 21.481564>,  <34.302940, 43.628384, 21.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539833, 43.666477, 21.481564>,  <34.934658, 43.729969, 21.472452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539833, 43.666477, 21.481564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060681, -0.501229, -0.863185,
		0.148427, -0.850633, 0.504375,
		-0.987060, -0.158726, 0.022779,
		34.243713, 43.618858, 21.488398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874866, 43.070084, 21.301239>,  <34.934658, 43.729969, 21.472452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874866, 43.070084, 21.301239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518867, 43.225624, 21.205999>,  <34.305267, 43.318951, 21.148855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518867, 43.225624, 21.205999>,  <34.874866, 43.070084, 21.301239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518867, 43.225624, 21.205999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088337, -0.365249, -0.926709,
		-0.447323, -0.845803, 0.290721,
		-0.889999, 0.388857, -0.238100,
		34.251869, 43.342281, 21.134569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466305, 42.561859, 20.880976>,  <34.874866, 43.070084, 21.301239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466305, 42.561859, 20.880976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295841, 42.909489, 20.780497>,  <34.193565, 43.118065, 20.720209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295841, 42.909489, 20.780497>,  <34.466305, 42.561859, 20.880976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295841, 42.909489, 20.780497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017044, -0.269909, -0.962735,
		-0.904489, -0.414557, 0.100211,
		-0.426157, 0.869075, -0.251196,
		34.167995, 43.170212, 20.705137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891731, 42.347576, 20.445709>,  <34.466305, 42.561859, 20.880976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891731, 42.347576, 20.445709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985409, 42.731049, 20.381111>,  <34.041615, 42.961132, 20.342352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985409, 42.731049, 20.381111>,  <33.891731, 42.347576, 20.445709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985409, 42.731049, 20.381111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069875, -0.149085, -0.986353,
		-0.969676, 0.242279, 0.032074,
		0.234190, 0.958684, -0.161494,
		34.055664, 43.018654, 20.332663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638447, 42.486507, 19.723629>,  <33.891731, 42.347576, 20.445709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638447, 42.486507, 19.723629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798901, 42.844837, 19.800137>,  <33.895172, 43.059837, 19.846041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798901, 42.844837, 19.800137>,  <33.638447, 42.486507, 19.723629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798901, 42.844837, 19.800137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087317, 0.170459, -0.981488,
		-0.911849, 0.410408, -0.009845,
		0.401133, 0.895829, 0.191268,
		33.919239, 43.113586, 19.857517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250484, 43.092411, 19.353237>,  <33.638447, 42.486507, 19.723629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250484, 43.092411, 19.353237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636444, 43.178844, 19.412935>,  <33.868019, 43.230705, 19.448755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636444, 43.178844, 19.412935>,  <33.250484, 43.092411, 19.353237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636444, 43.178844, 19.412935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068290, 0.342300, -0.937106,
		-0.253584, 0.914405, 0.315529,
		0.964900, 0.216088, 0.149247,
		33.925915, 43.243671, 19.457708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336754, 43.766636, 18.944622>,  <33.250484, 43.092411, 19.353237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336754, 43.766636, 18.944622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691475, 43.607597, 19.038862>,  <33.904308, 43.512177, 19.095407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691475, 43.607597, 19.038862>,  <33.336754, 43.766636, 18.944622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691475, 43.607597, 19.038862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354279, 0.257471, -0.898997,
		0.296774, 0.880698, 0.369184,
		0.886798, -0.397593, 0.235602,
		33.957516, 43.488319, 19.109543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794369, 44.277142, 18.885426>,  <33.336754, 43.766636, 18.944622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794369, 44.277142, 18.885426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018574, 43.946968, 18.858620>,  <34.153095, 43.748863, 18.842537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018574, 43.946968, 18.858620>,  <33.794369, 44.277142, 18.885426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018574, 43.946968, 18.858620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451781, 0.372596, -0.810596,
		0.694059, 0.424075, 0.581758,
		0.560514, -0.825429, -0.067014,
		34.186729, 43.699341, 18.838516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406330, 44.490967, 18.553053>,  <33.794369, 44.277142, 18.885426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406330, 44.490967, 18.553053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434582, 44.093204, 18.521616>,  <34.451534, 43.854549, 18.502754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434582, 44.093204, 18.521616>,  <34.406330, 44.490967, 18.553053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434582, 44.093204, 18.521616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526509, 0.104084, -0.843774,
		0.847231, 0.018219, 0.530913,
		0.070632, -0.994402, -0.078590,
		34.455772, 43.794884, 18.498039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136658, 44.291260, 18.476171>,  <34.406330, 44.490967, 18.553053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136658, 44.291260, 18.476171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885841, 44.021671, 18.319929>,  <34.735352, 43.859917, 18.226183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885841, 44.021671, 18.319929>,  <35.136658, 44.291260, 18.476171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885841, 44.021671, 18.319929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365089, 0.188687, -0.911651,
		0.688132, -0.714251, 0.127745,
		-0.627044, -0.673975, -0.390607,
		34.697727, 43.819477, 18.202747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525768, 43.834496, 18.032377>,  <35.136658, 44.291260, 18.476171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525768, 43.834496, 18.032377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145741, 43.809616, 17.910069>,  <34.917725, 43.794689, 17.836683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145741, 43.809616, 17.910069>,  <35.525768, 43.834496, 18.032377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145741, 43.809616, 17.910069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289126, 0.193053, -0.937623,
		0.117349, -0.979215, -0.165431,
		-0.950071, -0.062199, -0.305771,
		34.860718, 43.790955, 17.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542988, 43.369698, 17.573481>,  <35.525768, 43.834496, 18.032377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542988, 43.369698, 17.573481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209698, 43.563549, 17.466995>,  <35.009724, 43.679859, 17.403105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209698, 43.563549, 17.466995>,  <35.542988, 43.369698, 17.573481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209698, 43.563549, 17.466995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378698, 0.149359, -0.913389,
		-0.402896, -0.861873, -0.307978,
		-0.833225, 0.484631, -0.266214,
		34.959732, 43.708939, 17.387131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101406, 43.762299, 17.296688>,  <35.542988, 43.369698, 17.573481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101406, 43.762299, 17.296688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490974, 43.726631, 17.213238>,  <36.724716, 43.705231, 17.163168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490974, 43.726631, 17.213238>,  <36.101406, 43.762299, 17.296688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490974, 43.726631, 17.213238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213721, 0.051961, 0.975512,
		-0.076144, -0.994660, 0.069663,
		0.973923, -0.089168, -0.208624,
		36.783150, 43.699883, 17.150650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233940, 43.243702, 17.665550>,  <36.101406, 43.762299, 17.296688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233940, 43.243702, 17.665550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578087, 43.431747, 17.586807>,  <36.784576, 43.544575, 17.539560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578087, 43.431747, 17.586807>,  <36.233940, 43.243702, 17.665550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578087, 43.431747, 17.586807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222294, 0.001441, 0.974979,
		0.458638, -0.882603, -0.103264,
		0.860370, 0.470117, -0.196858,
		36.836197, 43.572781, 17.527750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835735, 42.887856, 17.893757>,  <36.233940, 43.243702, 17.665550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835735, 42.887856, 17.893757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995468, 43.254265, 17.878609>,  <37.091309, 43.474110, 17.869520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995468, 43.254265, 17.878609>,  <36.835735, 42.887856, 17.893757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995468, 43.254265, 17.878609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000609, 0.041042, 0.999157,
		0.916805, -0.399020, 0.015832,
		0.399334, 0.916023, -0.037871,
		37.115269, 43.529072, 17.867247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225502, 42.879368, 18.565992>,  <36.835735, 42.887856, 17.893757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225502, 42.879368, 18.565992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217403, 43.264233, 18.457304>,  <37.212543, 43.495152, 18.392090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217403, 43.264233, 18.457304>,  <37.225502, 42.879368, 18.565992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217403, 43.264233, 18.457304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310037, 0.264423, 0.913212,
		0.950509, -0.065754, -0.303660,
		-0.020247, 0.962162, -0.271723,
		37.211330, 43.552883, 18.375788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848816, 43.106995, 18.697609>,  <37.225502, 42.879368, 18.565992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848816, 43.106995, 18.697609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598446, 43.418736, 18.686090>,  <37.448223, 43.605782, 18.679180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598446, 43.418736, 18.686090>,  <37.848816, 43.106995, 18.697609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598446, 43.418736, 18.686090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195309, 0.192389, 0.961686,
		0.755034, 0.596316, -0.272636,
		-0.625921, 0.779355, -0.028794,
		37.410671, 43.652542, 18.677452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152073, 43.494308, 19.082808>,  <37.848816, 43.106995, 18.697609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152073, 43.494308, 19.082808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779362, 43.639507, 19.080652>,  <37.555737, 43.726627, 19.079359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779362, 43.639507, 19.080652>,  <38.152073, 43.494308, 19.082808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779362, 43.639507, 19.080652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060808, 0.170688, 0.983447,
		0.357907, 0.916024, -0.181116,
		-0.931775, 0.362996, -0.005389,
		37.499828, 43.748405, 19.079035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201500, 44.198601, 19.387980>,  <38.152073, 43.494308, 19.082808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201500, 44.198601, 19.387980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812347, 44.122307, 19.440317>,  <37.578857, 44.076530, 19.471720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812347, 44.122307, 19.440317>,  <38.201500, 44.198601, 19.387980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812347, 44.122307, 19.440317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072771, 0.284564, 0.955891,
		-0.219553, 0.939491, -0.262968,
		-0.972883, -0.190733, 0.130845,
		37.520481, 44.065086, 19.479570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879650, 44.831009, 19.666401>,  <38.201500, 44.198601, 19.387980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879650, 44.831009, 19.666401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662228, 44.512470, 19.772512>,  <37.531773, 44.321346, 19.836180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662228, 44.512470, 19.772512>,  <37.879650, 44.831009, 19.666401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662228, 44.512470, 19.772512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005685, 0.319528, 0.947560,
		-0.839353, 0.513544, -0.178209,
		-0.543556, -0.796351, 0.265277,
		37.499161, 44.273563, 19.852097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258202, 45.059654, 19.937002>,  <37.879650, 44.831009, 19.666401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258202, 45.059654, 19.937002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281540, 44.691792, 20.092350>,  <37.295544, 44.471073, 20.185558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281540, 44.691792, 20.092350>,  <37.258202, 45.059654, 19.937002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281540, 44.691792, 20.092350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259084, 0.361754, 0.895550,
		-0.964091, -0.152875, -0.217160,
		0.058348, -0.919654, 0.388371,
		37.299046, 44.415894, 20.208862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795731, 45.156879, 20.415661>,  <37.258202, 45.059654, 19.937002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795731, 45.156879, 20.415661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969662, 44.807064, 20.501549>,  <37.074020, 44.597176, 20.553082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969662, 44.807064, 20.501549>,  <36.795731, 45.156879, 20.415661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969662, 44.807064, 20.501549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261052, 0.105786, 0.959511,
		-0.861844, -0.473278, -0.182301,
		0.434830, -0.874539, 0.214721,
		37.100109, 44.544701, 20.565966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318432, 44.838375, 20.751633>,  <36.795731, 45.156879, 20.415661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318432, 44.838375, 20.751633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676384, 44.693607, 20.856091>,  <36.891155, 44.606747, 20.918766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676384, 44.693607, 20.856091>,  <36.318432, 44.838375, 20.751633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676384, 44.693607, 20.856091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255543, 0.064200, 0.964664,
		-0.365900, -0.929995, -0.035035,
		0.894883, -0.361923, 0.261144,
		36.944847, 44.585030, 20.934433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074314, 44.411423, 21.225739>,  <36.318432, 44.838375, 20.751633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074314, 44.411423, 21.225739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467758, 44.427608, 21.296015>,  <36.703827, 44.437321, 21.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467758, 44.427608, 21.296015>,  <36.074314, 44.411423, 21.225739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467758, 44.427608, 21.296015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175525, -0.007618, 0.984446,
		0.041174, -0.999152, -0.000390,
		0.983613, 0.040465, 0.175689,
		36.762844, 44.439747, 21.348722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290558, 43.789211, 21.673626>,  <36.074314, 44.411423, 21.225739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290558, 43.789211, 21.673626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565918, 44.074169, 21.728168>,  <36.731133, 44.245144, 21.760895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565918, 44.074169, 21.728168>,  <36.290558, 43.789211, 21.673626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565918, 44.074169, 21.728168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031258, -0.158680, 0.986835,
		0.724656, -0.683601, -0.086967,
		0.688401, 0.712398, 0.136356,
		36.772438, 44.287888, 21.769075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833321, 43.423553, 22.036480>,  <36.290558, 43.789211, 21.673626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833321, 43.423553, 22.036480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854332, 43.810925, 22.133965>,  <36.866940, 44.043346, 22.192455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854332, 43.810925, 22.133965>,  <36.833321, 43.423553, 22.036480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854332, 43.810925, 22.133965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067673, -0.246942, 0.966664,
		0.996324, -0.034286, -0.078508,
		0.052530, 0.968424, 0.243714,
		36.870090, 44.101452, 22.207079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255260, 43.427517, 22.603352>,  <36.833321, 43.423553, 22.036480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255260, 43.427517, 22.603352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097359, 43.793884, 22.632347>,  <37.002617, 44.013706, 22.649744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097359, 43.793884, 22.632347>,  <37.255260, 43.427517, 22.603352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097359, 43.793884, 22.632347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095705, -0.037475, 0.994704,
		0.913789, 0.399601, -0.072865,
		-0.394754, 0.915923, 0.072488,
		36.978931, 44.068661, 22.654093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595097, 43.802387, 23.188742>,  <37.255260, 43.427517, 22.603352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595097, 43.802387, 23.188742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257641, 44.011543, 23.139973>,  <37.055168, 44.137035, 23.110712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257641, 44.011543, 23.139973>,  <37.595097, 43.802387, 23.188742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257641, 44.011543, 23.139973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186511, -0.072463, 0.979777,
		0.503477, 0.849317, 0.158656,
		-0.843638, 0.522886, -0.121923,
		37.004551, 44.168407, 23.103395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702187, 44.391155, 23.606632>,  <37.595097, 43.802387, 23.188742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702187, 44.391155, 23.606632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308956, 44.388832, 23.533382>,  <37.073017, 44.387436, 23.489431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308956, 44.388832, 23.533382>,  <37.702187, 44.391155, 23.606632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308956, 44.388832, 23.533382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182731, -0.041804, 0.982274,
		-0.013364, 0.999109, 0.040034,
		-0.983072, -0.005812, -0.183127,
		37.014034, 44.387089, 23.478445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388378, 44.977196, 24.003338>,  <37.702187, 44.391155, 23.606632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388378, 44.977196, 24.003338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106571, 44.700459, 23.940088>,  <36.937485, 44.534416, 23.902140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106571, 44.700459, 23.940088>,  <37.388378, 44.977196, 24.003338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106571, 44.700459, 23.940088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152722, -0.069786, 0.985802,
		-0.693057, 0.718666, -0.056494,
		-0.704520, -0.691844, -0.158121,
		36.895214, 44.492905, 23.892653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937881, 45.019054, 24.482244>,  <37.388378, 44.977196, 24.003338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937881, 45.019054, 24.482244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830139, 44.650467, 24.370283>,  <36.765491, 44.429314, 24.303106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830139, 44.650467, 24.370283>,  <36.937881, 45.019054, 24.482244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830139, 44.650467, 24.370283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180657, -0.237138, 0.954531,
		-0.945943, 0.307678, -0.102594,
		-0.269359, -0.921466, -0.279903,
		36.749332, 44.374027, 24.286312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286491, 44.838036, 24.878817>,  <36.937881, 45.019054, 24.482244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286491, 44.838036, 24.878817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436340, 44.489941, 24.750854>,  <36.526249, 44.281082, 24.674076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436340, 44.489941, 24.750854>,  <36.286491, 44.838036, 24.878817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436340, 44.489941, 24.750854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229143, -0.421228, 0.877531,
		-0.898416, -0.255438, -0.357211,
		0.374622, -0.870240, -0.319906,
		36.548725, 44.228870, 24.654882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750294, 44.268841, 24.977797>,  <36.286491, 44.838036, 24.878817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750294, 44.268841, 24.977797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116951, 44.110428, 24.956165>,  <36.336945, 44.015381, 24.943188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116951, 44.110428, 24.956165>,  <35.750294, 44.268841, 24.977797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116951, 44.110428, 24.956165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195735, -0.562706, 0.803150,
		-0.348503, -0.725617, -0.593318,
		0.916642, -0.396034, -0.054076,
		36.391945, 43.991619, 24.939943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626389, 43.652843, 25.147633>,  <35.750294, 44.268841, 24.977797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626389, 43.652843, 25.147633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020267, 43.709393, 25.188379>,  <36.256596, 43.743320, 25.212828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020267, 43.709393, 25.188379>,  <35.626389, 43.652843, 25.147633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020267, 43.709393, 25.188379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026478, -0.456432, 0.889364,
		0.172225, -0.878456, -0.445706,
		0.984702, 0.141369, 0.101869,
		36.315678, 43.751804, 25.218941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852016, 43.021202, 25.347544>,  <35.626389, 43.652843, 25.147633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852016, 43.021202, 25.347544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152321, 43.265491, 25.448238>,  <36.332504, 43.412064, 25.508656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152321, 43.265491, 25.448238>,  <35.852016, 43.021202, 25.347544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152321, 43.265491, 25.448238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079371, -0.461731, 0.883462,
		0.655783, -0.643292, -0.395126,
		0.750765, 0.610721, 0.251737,
		36.377552, 43.448708, 25.523760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361217, 42.647873, 25.673372>,  <35.852016, 43.021202, 25.347544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361217, 42.647873, 25.673372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415798, 43.015797, 25.820522>,  <36.448547, 43.236549, 25.908812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415798, 43.015797, 25.820522>,  <36.361217, 42.647873, 25.673372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415798, 43.015797, 25.820522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080940, -0.380457, 0.921250,
		0.987335, -0.095929, -0.126363,
		0.136451, 0.919810, 0.367874,
		36.456734, 43.291740, 25.930885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775421, 42.530041, 26.217913>,  <36.361217, 42.647873, 25.673372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775421, 42.530041, 26.217913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683487, 42.909180, 26.306248>,  <36.628326, 43.136662, 26.359249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683487, 42.909180, 26.306248>,  <36.775421, 42.530041, 26.217913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683487, 42.909180, 26.306248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023877, -0.232333, 0.972343,
		0.972936, 0.218207, 0.076031,
		-0.229836, 0.947843, 0.220835,
		36.614536, 43.193531, 26.372498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286095, 42.770691, 26.775835>,  <36.775421, 42.530041, 26.217913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286095, 42.770691, 26.775835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951271, 42.983814, 26.825554>,  <36.750378, 43.111687, 26.855385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951271, 42.983814, 26.825554>,  <37.286095, 42.770691, 26.775835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951271, 42.983814, 26.825554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079928, -0.105658, 0.991185,
		0.541246, 0.839613, 0.045856,
		-0.837057, 0.532810, 0.124295,
		36.700153, 43.143658, 26.862843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454514, 43.398411, 27.114664>,  <37.286095, 42.770691, 26.775835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454514, 43.398411, 27.114664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063080, 43.368694, 27.191460>,  <36.828220, 43.350864, 27.237537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063080, 43.368694, 27.191460>,  <37.454514, 43.398411, 27.114664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063080, 43.368694, 27.191460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184149, 0.100997, 0.977696,
		-0.092021, 0.992109, -0.085153,
		-0.978581, -0.074288, 0.191990,
		36.769505, 43.346409, 27.249056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319832, 44.033653, 27.476362>,  <37.454514, 43.398411, 27.114664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319832, 44.033653, 27.476362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033401, 43.767349, 27.560266>,  <36.861542, 43.607567, 27.610609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033401, 43.767349, 27.560266>,  <37.319832, 44.033653, 27.476362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033401, 43.767349, 27.560266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353139, -0.086318, 0.931580,
		-0.602103, 0.741157, 0.296916,
		-0.716076, -0.665760, 0.209759,
		36.818577, 43.567623, 27.623194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202011, 44.197998, 28.131819>,  <37.319832, 44.033653, 27.476362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202011, 44.197998, 28.131819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026543, 43.839375, 28.107336>,  <36.921261, 43.624199, 28.092646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026543, 43.839375, 28.107336>,  <37.202011, 44.197998, 28.131819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026543, 43.839375, 28.107336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254749, -0.189385, 0.948281,
		-0.861782, 0.400394, 0.311476,
		-0.438674, -0.896559, -0.061209,
		36.894939, 43.570408, 28.088974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887024, 44.150417, 28.758799>,  <37.202011, 44.197998, 28.131819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887024, 44.150417, 28.758799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911812, 43.772835, 28.629120>,  <36.926685, 43.546284, 28.551313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911812, 43.772835, 28.629120>,  <36.887024, 44.150417, 28.758799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911812, 43.772835, 28.629120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104963, -0.316854, 0.942648,
		-0.992544, -0.092441, 0.079447,
		0.061966, -0.943959, -0.324195,
		36.930401, 43.489647, 28.531862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348236, 43.797447, 29.030331>,  <36.887024, 44.150417, 28.758799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348236, 43.797447, 29.030331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627338, 43.526993, 28.935696>,  <36.794800, 43.364719, 28.878914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627338, 43.526993, 28.935696>,  <36.348236, 43.797447, 29.030331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627338, 43.526993, 28.935696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069043, -0.265261, 0.961701,
		-0.712998, -0.687370, -0.138406,
		0.697758, -0.676135, -0.236589,
		36.836666, 43.324154, 28.864719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109863, 43.166527, 29.402763>,  <36.348236, 43.797447, 29.030331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109863, 43.166527, 29.402763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497726, 43.141296, 29.308287>,  <36.730446, 43.126160, 29.251600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497726, 43.141296, 29.308287>,  <36.109863, 43.166527, 29.402763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497726, 43.141296, 29.308287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191842, -0.402538, 0.895075,
		-0.151530, -0.913228, -0.378224,
		0.969657, -0.063072, -0.236192,
		36.788624, 43.122375, 29.237429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350624, 42.420033, 29.569794>,  <36.109863, 43.166527, 29.402763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350624, 42.420033, 29.569794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696854, 42.614086, 29.520105>,  <36.904591, 42.730518, 29.490294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696854, 42.614086, 29.520105>,  <36.350624, 42.420033, 29.569794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696854, 42.614086, 29.520105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352616, -0.414288, 0.839063,
		0.355596, -0.770071, -0.529662,
		0.865571, 0.485135, -0.124220,
		36.956524, 42.759628, 29.482840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856678, 41.975487, 29.781586>,  <36.350624, 42.420033, 29.569794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856678, 41.975487, 29.781586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057079, 42.321651, 29.784842>,  <37.177319, 42.529350, 29.786795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057079, 42.321651, 29.784842>,  <36.856678, 41.975487, 29.781586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057079, 42.321651, 29.784842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472005, -0.281112, 0.835576,
		0.725403, -0.414783, -0.549314,
		0.501001, 0.865408, 0.008140,
		37.207378, 42.581272, 29.787283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521309, 41.809231, 29.819407>,  <36.856678, 41.975487, 29.781586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521309, 41.809231, 29.819407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499832, 42.181568, 29.963989>,  <37.486946, 42.404972, 30.050739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499832, 42.181568, 29.963989>,  <37.521309, 41.809231, 29.819407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499832, 42.181568, 29.963989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473808, -0.294887, 0.829787,
		0.878990, 0.215813, -0.425208,
		-0.053690, 0.930842, 0.361457,
		37.483727, 42.460819, 30.072426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100330, 41.902428, 30.125942>,  <37.521309, 41.809231, 29.819407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100330, 41.902428, 30.125942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885941, 42.200199, 30.285223>,  <37.757305, 42.378860, 30.380791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885941, 42.200199, 30.285223>,  <38.100330, 41.902428, 30.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885941, 42.200199, 30.285223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351330, -0.232212, 0.906998,
		0.767658, 0.626028, -0.137079,
		-0.535975, 0.744424, 0.398201,
		37.725147, 42.423527, 30.404684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476402, 42.111107, 30.723015>,  <38.100330, 41.902428, 30.125942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476402, 42.111107, 30.723015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094795, 42.214916, 30.783018>,  <37.865829, 42.277203, 30.819019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094795, 42.214916, 30.783018>,  <38.476402, 42.111107, 30.723015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094795, 42.214916, 30.783018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041506, -0.381240, 0.923544,
		0.296867, 0.887302, 0.352937,
		-0.954016, 0.259520, 0.150006,
		37.808590, 42.292774, 30.828020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473576, 42.316246, 31.422529>,  <38.476402, 42.111107, 30.723015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473576, 42.316246, 31.422529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094540, 42.235870, 31.323172>,  <37.867119, 42.187645, 31.263557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094540, 42.235870, 31.323172>,  <38.473576, 42.316246, 31.422529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094540, 42.235870, 31.323172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104659, -0.539337, 0.835561,
		-0.301866, 0.817764, 0.490040,
		-0.947588, -0.200940, -0.248394,
		37.810265, 42.175587, 31.248653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052807, 42.594074, 32.024593>,  <38.473576, 42.316246, 31.422529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052807, 42.594074, 32.024593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874622, 42.307278, 31.810120>,  <37.767712, 42.135201, 31.681435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874622, 42.307278, 31.810120>,  <38.052807, 42.594074, 32.024593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874622, 42.307278, 31.810120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072672, -0.567954, 0.819846,
		-0.892346, 0.404177, 0.200898,
		-0.445463, -0.716987, -0.536183,
		37.740982, 42.092182, 31.649265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339012, 42.573624, 32.308784>,  <38.052807, 42.594074, 32.024593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339012, 42.573624, 32.308784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475586, 42.244938, 32.126263>,  <37.557529, 42.047726, 32.016750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475586, 42.244938, 32.126263>,  <37.339012, 42.573624, 32.308784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475586, 42.244938, 32.126263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187237, -0.416285, 0.889747,
		-0.921069, -0.389223, 0.011723,
		0.341430, -0.821713, -0.456304,
		37.578014, 41.998425, 31.989372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949959, 41.985657, 32.537212>,  <37.339012, 42.573624, 32.308784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949959, 41.985657, 32.537212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310993, 41.867012, 32.412399>,  <37.527615, 41.795826, 32.337513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310993, 41.867012, 32.412399>,  <36.949959, 41.985657, 32.537212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310993, 41.867012, 32.412399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149598, -0.463534, 0.873360,
		-0.403682, -0.834961, -0.374007,
		0.902586, -0.296609, -0.312029,
		37.581768, 41.778027, 32.318790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994850, 41.194073, 32.511456>,  <36.949959, 41.985657, 32.537212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994850, 41.194073, 32.511456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333324, 41.399948, 32.566689>,  <37.536407, 41.523472, 32.599827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333324, 41.399948, 32.566689>,  <36.994850, 41.194073, 32.511456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333324, 41.399948, 32.566689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172217, -0.509343, 0.843155,
		0.504292, -0.689686, -0.519637,
		0.846186, 0.514687, 0.138083,
		37.587181, 41.554356, 32.608112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347122, 40.748314, 32.778793>,  <36.994850, 41.194073, 32.511456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347122, 40.748314, 32.778793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559109, 41.074173, 32.873016>,  <37.686302, 41.269688, 32.929550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559109, 41.074173, 32.873016>,  <37.347122, 40.748314, 32.778793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559109, 41.074173, 32.873016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266370, -0.423628, 0.865787,
		0.805099, -0.396092, -0.441505,
		0.529965, 0.814648, 0.235556,
		37.718098, 41.318569, 32.943684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070026, 40.493034, 32.875866>,  <37.347122, 40.748314, 32.778793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070026, 40.493034, 32.875866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965324, 40.822575, 33.076965>,  <37.902504, 41.020298, 33.197624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965324, 40.822575, 33.076965>,  <38.070026, 40.493034, 32.875866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965324, 40.822575, 33.076965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307898, -0.422410, 0.852507,
		0.914703, 0.377947, -0.143092,
		-0.261759, 0.823848, 0.502749,
		37.886795, 41.069729, 33.227791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602734, 40.541710, 33.404041>,  <38.070026, 40.493034, 32.875866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602734, 40.541710, 33.404041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281658, 40.754364, 33.512150>,  <38.089012, 40.881958, 33.577015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281658, 40.754364, 33.512150>,  <38.602734, 40.541710, 33.404041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281658, 40.754364, 33.512150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136488, -0.277393, 0.951012,
		0.580566, 0.800258, 0.150099,
		-0.802692, 0.531639, 0.270271,
		38.040852, 40.913857, 33.593231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298477, 40.255886, 33.229259>,  <38.602734, 40.541710, 33.404041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298477, 40.255886, 33.229259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015469, 40.083141, 33.453014>,  <38.845665, 39.979492, 33.587265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015469, 40.083141, 33.453014>,  <39.298477, 40.255886, 33.229259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015469, 40.083141, 33.453014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583765, 0.088955, 0.807035,
		-0.398290, 0.897541, 0.189170,
		-0.707519, -0.431865, 0.559383,
		38.803211, 39.953583, 33.620831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249813, 40.691818, 33.841213>,  <39.298477, 40.255886, 33.229259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249813, 40.691818, 33.841213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138649, 40.323200, 33.949669>,  <39.071949, 40.102028, 34.014744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138649, 40.323200, 33.949669>,  <39.249813, 40.691818, 33.841213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138649, 40.323200, 33.949669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656354, 0.023930, 0.754074,
		-0.701402, 0.387530, 0.598211,
		-0.277911, -0.921547, 0.271141,
		39.055275, 40.046738, 34.031010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980389, 40.728539, 34.529331>,  <39.249813, 40.691818, 33.841213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980389, 40.728539, 34.529331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159447, 40.387718, 34.420799>,  <39.266880, 40.183224, 34.355679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159447, 40.387718, 34.420799>,  <38.980389, 40.728539, 34.529331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159447, 40.387718, 34.420799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770116, 0.213129, 0.601247,
		-0.454466, -0.478101, 0.751585,
		0.447641, -0.852054, -0.271333,
		39.293739, 40.132103, 34.339397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233555, 40.481548, 35.040184>,  <38.980389, 40.728539, 34.529331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233555, 40.481548, 35.040184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472851, 40.291451, 34.782116>,  <39.616428, 40.177391, 34.627274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472851, 40.291451, 34.782116>,  <39.233555, 40.481548, 35.040184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472851, 40.291451, 34.782116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774822, 0.137754, 0.616988,
		-0.204345, -0.869003, 0.450640,
		0.598242, -0.475245, -0.645174,
		39.652325, 40.148876, 34.588562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562855, 39.948826, 35.371746>,  <39.233555, 40.481548, 35.040184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562855, 39.948826, 35.371746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775913, 40.067905, 35.054844>,  <39.903748, 40.139355, 34.864704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775913, 40.067905, 35.054844>,  <39.562855, 39.948826, 35.371746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775913, 40.067905, 35.054844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806041, 0.106974, 0.582112,
		0.258047, -0.948646, -0.182982,
		0.532644, 0.297703, -0.792252,
		39.935707, 40.157215, 34.817169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111500, 39.463253, 35.343231>,  <39.562855, 39.948826, 35.371746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111500, 39.463253, 35.343231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224274, 39.773167, 35.116875>,  <40.291939, 39.959114, 34.981060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224274, 39.773167, 35.116875>,  <40.111500, 39.463253, 35.343231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224274, 39.773167, 35.116875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808740, 0.125414, 0.574639,
		0.516190, -0.619666, -0.591238,
		0.281935, 0.774781, -0.565887,
		40.308853, 40.005600, 34.947109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760220, 39.385883, 35.174671>,  <40.111500, 39.463253, 35.343231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760220, 39.385883, 35.174671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680225, 39.775921, 35.213020>,  <40.632229, 40.009945, 35.236031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680225, 39.775921, 35.213020>,  <40.760220, 39.385883, 35.174671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680225, 39.775921, 35.213020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740330, 0.086288, 0.666682,
		0.641808, 0.204303, -0.739150,
		-0.199985, 0.975097, 0.095872,
		40.620232, 40.068451, 35.241783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121815, 38.700100, 35.170773>,  <40.760220, 39.385883, 35.174671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121815, 38.700100, 35.170773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918663, 38.875374, 34.874111>,  <40.796772, 38.980537, 34.696114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918663, 38.875374, 34.874111>,  <41.121815, 38.700100, 35.170773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918663, 38.875374, 34.874111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861424, 0.255648, -0.438854,
		-0.002696, -0.861765, -0.507300,
		-0.507880, 0.438184, -0.741656,
		40.766300, 39.006828, 34.651615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509808, 38.392269, 34.630116>,  <41.121815, 38.700100, 35.170773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509808, 38.392269, 34.630116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361305, 38.754711, 34.548981>,  <41.272205, 38.972176, 34.500298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361305, 38.754711, 34.548981>,  <41.509808, 38.392269, 34.630116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361305, 38.754711, 34.548981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852588, 0.246129, -0.460992,
		-0.367782, -0.344085, -0.863911,
		-0.371254, 0.906105, -0.202841,
		41.249928, 39.026543, 34.488129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553379, 38.458820, 33.919571>,  <41.509808, 38.392269, 34.630116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553379, 38.458820, 33.919571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536385, 38.819443, 34.091797>,  <41.526188, 39.035816, 34.195133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536385, 38.819443, 34.091797>,  <41.553379, 38.458820, 33.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536385, 38.819443, 34.091797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922804, 0.200582, -0.328937,
		-0.382920, 0.383355, -0.840483,
		-0.042486, 0.901557, 0.430569,
		41.523640, 39.089909, 34.220966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001854, 38.684971, 33.472401>,  <41.553379, 38.458820, 33.919571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001854, 38.684971, 33.472401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991711, 38.922913, 33.793774>,  <41.985626, 39.065678, 33.986599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991711, 38.922913, 33.793774>,  <42.001854, 38.684971, 33.472401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991711, 38.922913, 33.793774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890453, 0.378730, -0.252303,
		-0.454368, 0.709020, -0.539296,
		-0.025360, 0.594856, 0.803432,
		41.984104, 39.101368, 34.034801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093166, 39.274517, 33.209106>,  <42.001854, 38.684971, 33.472401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093166, 39.274517, 33.209106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194588, 39.332241, 33.591705>,  <42.255440, 39.366875, 33.821262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194588, 39.332241, 33.591705>,  <42.093166, 39.274517, 33.209106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194588, 39.332241, 33.591705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777525, 0.557846, -0.290280,
		-0.575468, 0.817302, 0.029240,
		0.253558, 0.144312, 0.956495,
		42.270657, 39.375534, 33.878654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398468, 40.021389, 33.342228>,  <42.093166, 39.274517, 33.209106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398468, 40.021389, 33.342228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554932, 39.813705, 33.646183>,  <42.648808, 39.689095, 33.828556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554932, 39.813705, 33.646183>,  <42.398468, 40.021389, 33.342228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554932, 39.813705, 33.646183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894206, 0.409719, -0.180350,
		-0.217700, 0.750038, 0.624540,
		0.391155, -0.519205, 0.759884,
		42.672279, 39.657944, 33.874149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919518, 40.456181, 33.687820>,  <42.398468, 40.021389, 33.342228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919518, 40.456181, 33.687820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003960, 40.083828, 33.807076>,  <43.054626, 39.860416, 33.878628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003960, 40.083828, 33.807076>,  <42.919518, 40.456181, 33.687820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003960, 40.083828, 33.807076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957116, 0.134950, -0.256353,
		0.198401, 0.339474, 0.919453,
		0.211105, -0.930884, 0.298142,
		43.067291, 39.804562, 33.896519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513496, 40.470692, 34.205643>,  <42.919518, 40.456181, 33.687820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513496, 40.470692, 34.205643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486202, 40.128677, 34.000023>,  <43.469826, 39.923470, 33.876652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486202, 40.128677, 34.000023>,  <43.513496, 40.470692, 34.205643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486202, 40.128677, 34.000023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956441, 0.090528, -0.277535,
		0.283840, -0.510599, 0.811618,
		-0.068235, -0.855040, -0.514053,
		43.465733, 39.872166, 33.845806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070328, 40.001305, 34.459629>,  <43.513496, 40.470692, 34.205643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070328, 40.001305, 34.459629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999973, 39.925362, 34.073257>,  <43.957760, 39.879795, 33.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999973, 39.925362, 34.073257>,  <44.070328, 40.001305, 34.459629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999973, 39.925362, 34.073257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952266, 0.215887, -0.215828,
		0.249508, -0.957783, 0.142820,
		-0.175884, -0.189854, -0.965930,
		43.947208, 39.868404, 33.783478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531418, 39.408489, 34.138084>,  <44.070328, 40.001305, 34.459629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531418, 39.408489, 34.138084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428051, 39.726124, 33.918034>,  <44.366032, 39.916706, 33.786003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428051, 39.726124, 33.918034>,  <44.531418, 39.408489, 34.138084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428051, 39.726124, 33.918034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961308, 0.267634, -0.065253,
		0.095416, -0.545704, -0.832528,
		-0.258422, 0.794090, -0.550126,
		44.350525, 39.964352, 33.752995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943874, 39.809067, 33.581879>,  <44.531418, 39.408489, 34.138084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943874, 39.809067, 33.581879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806694, 39.435036, 33.546070>,  <44.724388, 39.210617, 33.524586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806694, 39.435036, 33.546070>,  <44.943874, 39.809067, 33.581879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806694, 39.435036, 33.546070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810721, 0.246502, 0.531007,
		-0.474466, 0.254685, -0.842625,
		-0.342949, -0.935078, -0.089521,
		44.703808, 39.154510, 33.519215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286530, 39.770672, 33.165237>,  <44.943874, 39.809067, 33.581879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286530, 39.770672, 33.165237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293449, 39.459965, 33.417057>,  <44.297604, 39.273540, 33.568150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293449, 39.459965, 33.417057>,  <44.286530, 39.770672, 33.165237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293449, 39.459965, 33.417057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873043, 0.295156, 0.388173,
		-0.487336, -0.556337, -0.673047,
		0.017301, -0.776770, 0.629547,
		44.298641, 39.226933, 33.605923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647800, 39.300148, 33.033634>,  <44.286530, 39.770672, 33.165237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647800, 39.300148, 33.033634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804283, 39.295338, 33.401726>,  <43.898174, 39.292450, 33.622581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804283, 39.295338, 33.401726>,  <43.647800, 39.300148, 33.033634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804283, 39.295338, 33.401726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919696, 0.031193, 0.391389,
		-0.033411, -0.999441, 0.001144,
		0.391206, -0.012024, 0.920224,
		43.921646, 39.291729, 33.677792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452957, 38.642258, 33.496029>,  <43.647800, 39.300148, 33.033634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452957, 38.642258, 33.496029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516846, 38.969498, 33.717010>,  <43.555180, 39.165840, 33.849598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516846, 38.969498, 33.717010>,  <43.452957, 38.642258, 33.496029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516846, 38.969498, 33.717010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941257, -0.042463, 0.335010,
		0.297531, -0.573506, 0.763261,
		0.159720, 0.818100, 0.552450,
		43.564762, 39.214928, 33.882744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373108, 38.598328, 34.264145>,  <43.452957, 38.642258, 33.496029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373108, 38.598328, 34.264145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278934, 38.978256, 34.181774>,  <43.222431, 39.206215, 34.132351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278934, 38.978256, 34.181774>,  <43.373108, 38.598328, 34.264145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278934, 38.978256, 34.181774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883010, -0.120525, 0.453615,
		0.406036, 0.288628, 0.867081,
		-0.235431, 0.949825, -0.205923,
		43.208305, 39.263203, 34.119999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060337, 38.887993, 34.853203>,  <43.373108, 38.598328, 34.264145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060337, 38.887993, 34.853203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938828, 39.126575, 34.556026>,  <42.865921, 39.269726, 34.377720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938828, 39.126575, 34.556026>,  <43.060337, 38.887993, 34.853203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938828, 39.126575, 34.556026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950366, -0.134635, 0.280496,
		0.067279, 0.791270, 0.607755,
		-0.303773, 0.596461, -0.742938,
		42.847694, 39.305515, 34.333145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752506, 39.527016, 35.056999>,  <43.060337, 38.887993, 34.853203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752506, 39.527016, 35.056999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596252, 39.452682, 34.696362>,  <42.502502, 39.408081, 34.479980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596252, 39.452682, 34.696362>,  <42.752506, 39.527016, 35.056999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596252, 39.452682, 34.696362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919466, 0.031312, 0.391922,
		-0.044603, 0.982082, -0.183101,
		-0.390633, -0.185836, -0.901594,
		42.479061, 39.396931, 34.425884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200638, 40.033680, 35.069294>,  <42.752506, 39.527016, 35.056999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200638, 40.033680, 35.069294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100380, 39.803596, 34.757828>,  <42.040226, 39.665546, 34.570950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100380, 39.803596, 34.757828>,  <42.200638, 40.033680, 35.069294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100380, 39.803596, 34.757828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967950, 0.135833, 0.211236,
		-0.015737, 0.806652, -0.590818,
		-0.250646, -0.575206, -0.778661,
		42.025185, 39.631035, 34.524231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588715, 40.321667, 34.751747>,  <42.200638, 40.033680, 35.069294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588715, 40.321667, 34.751747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574787, 39.961582, 34.578129>,  <41.566429, 39.745529, 34.473957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574787, 39.961582, 34.578129>,  <41.588715, 40.321667, 34.751747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574787, 39.961582, 34.578129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987408, -0.036072, 0.154026,
		-0.154314, 0.433947, -0.887624,
		-0.034820, -0.900216, -0.434050,
		41.564342, 39.691517, 34.447914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882446, 40.263130, 34.380268>,  <41.588715, 40.321667, 34.751747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882446, 40.263130, 34.380268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993889, 39.885765, 34.452206>,  <41.060753, 39.659344, 34.495369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993889, 39.885765, 34.452206>,  <40.882446, 40.263130, 34.380268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993889, 39.885765, 34.452206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949933, -0.243112, 0.196277,
		-0.141448, -0.225527, -0.963914,
		0.278605, -0.943416, 0.179848,
		41.077469, 39.602741, 34.506161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507767, 39.892395, 33.989250>,  <40.882446, 40.263130, 34.380268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507767, 39.892395, 33.989250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613728, 39.681786, 34.312386>,  <40.677303, 39.555420, 34.506268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613728, 39.681786, 34.312386>,  <40.507767, 39.892395, 33.989250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613728, 39.681786, 34.312386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903301, -0.428677, 0.016807,
		0.337452, -0.734172, -0.589167,
		0.264902, -0.526523, 0.807836,
		40.693199, 39.523827, 34.554737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602448, 39.151764, 33.704983>,  <40.507767, 39.892395, 33.989250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602448, 39.151764, 33.704983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440365, 39.290813, 34.043205>,  <40.343117, 39.374245, 34.246140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440365, 39.290813, 34.043205>,  <40.602448, 39.151764, 33.704983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440365, 39.290813, 34.043205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888553, -0.367392, -0.274767,
		0.215134, -0.862658, 0.457755,
		-0.405206, 0.347628, 0.845555,
		40.318802, 39.395103, 34.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196182, 38.652641, 33.983559>,  <40.602448, 39.151764, 33.704983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196182, 38.652641, 33.983559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047066, 38.988003, 34.142609>,  <39.957596, 39.189220, 34.238041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047066, 38.988003, 34.142609>,  <40.196182, 38.652641, 33.983559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047066, 38.988003, 34.142609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926998, -0.317453, -0.199748,
		-0.041240, -0.443066, 0.895540,
		-0.372793, 0.838401, 0.397629,
		39.935226, 39.239525, 34.261898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678146, 38.442177, 34.349590>,  <40.196182, 38.652641, 33.983559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678146, 38.442177, 34.349590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584408, 38.829491, 34.314941>,  <39.528164, 39.061878, 34.294151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584408, 38.829491, 34.314941>,  <39.678146, 38.442177, 34.349590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584408, 38.829491, 34.314941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966215, -0.241818, -0.089176,
		-0.107295, 0.062798, 0.992242,
		-0.234342, 0.968287, -0.086623,
		39.514107, 39.119976, 34.288956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254044, 38.634865, 34.977715>,  <39.678146, 38.442177, 34.349590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254044, 38.634865, 34.977715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208279, 38.808704, 34.620384>,  <39.180820, 38.913010, 34.405987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208279, 38.808704, 34.620384>,  <39.254044, 38.634865, 34.977715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208279, 38.808704, 34.620384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952700, -0.302857, -0.025324,
		-0.281557, 0.848175, 0.448692,
		-0.114410, 0.434598, -0.893328,
		39.173954, 38.939083, 34.352386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396748, 37.851826, 34.916462>,  <39.254044, 38.634865, 34.977715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396748, 37.851826, 34.916462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375874, 38.004025, 35.285786>,  <39.363350, 38.095345, 35.507381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375874, 38.004025, 35.285786>,  <39.396748, 37.851826, 34.916462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375874, 38.004025, 35.285786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970743, -0.197672, 0.136325,
		0.234384, 0.903409, -0.359048,
		-0.052184, 0.380496, 0.923309,
		39.360218, 38.118172, 35.562778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005253, 38.212482, 35.134483>,  <39.396748, 37.851826, 34.916462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005253, 38.212482, 35.134483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860985, 38.057552, 35.473869>,  <39.774426, 37.964596, 35.677502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860985, 38.057552, 35.473869>,  <40.005253, 38.212482, 35.134483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860985, 38.057552, 35.473869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930700, -0.208905, 0.300261,
		0.060952, 0.897965, 0.435825,
		-0.360670, -0.387321, 0.848469,
		39.752785, 37.941357, 35.728409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534527, 38.323666, 35.660622>,  <40.005253, 38.212482, 35.134483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534527, 38.323666, 35.660622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286163, 38.039875, 35.793957>,  <40.137146, 37.869602, 35.873959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286163, 38.039875, 35.793957>,  <40.534527, 38.323666, 35.660622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286163, 38.039875, 35.793957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764591, -0.454382, 0.457096,
		-0.172836, 0.538683, 0.824590,
		-0.620909, -0.709477, 0.333339,
		40.099892, 37.827030, 35.893959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699310, 38.221737, 36.342228>,  <40.534527, 38.323666, 35.660622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699310, 38.221737, 36.342228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532063, 37.894829, 36.183613>,  <40.431713, 37.698685, 36.088444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532063, 37.894829, 36.183613>,  <40.699310, 38.221737, 36.342228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532063, 37.894829, 36.183613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704494, -0.567320, 0.426423,
		-0.573465, -0.101059, 0.812973,
		-0.418122, -0.817273, -0.396533,
		40.406628, 37.649647, 36.064651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485458, 37.734684, 36.967793>,  <40.699310, 38.221737, 36.342228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485458, 37.734684, 36.967793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594677, 37.606331, 36.605030>,  <40.660210, 37.529320, 36.387371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594677, 37.606331, 36.605030>,  <40.485458, 37.734684, 36.967793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594677, 37.606331, 36.605030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761217, -0.504364, 0.407635,
		-0.588214, -0.801656, 0.106545,
		0.273045, -0.320881, -0.906908,
		40.676590, 37.510067, 36.332958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418392, 36.981464, 36.969715>,  <40.485458, 37.734684, 36.967793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418392, 36.981464, 36.969715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698151, 37.156441, 36.743622>,  <40.866005, 37.261425, 36.607964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698151, 37.156441, 36.743622>,  <40.418392, 36.981464, 36.969715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698151, 37.156441, 36.743622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714535, -0.446527, 0.538565,
		-0.016805, -0.780553, -0.624864,
		0.699397, 0.437437, -0.565237,
		40.907970, 37.287670, 36.574051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979263, 36.449333, 36.618340>,  <40.418392, 36.981464, 36.969715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979263, 36.449333, 36.618340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126053, 36.817089, 36.674988>,  <41.214127, 37.037743, 36.708977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126053, 36.817089, 36.674988>,  <40.979263, 36.449333, 36.618340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126053, 36.817089, 36.674988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773049, -0.386097, 0.503313,
		0.517419, -0.075224, -0.852420,
		0.366978, 0.919386, 0.141622,
		41.236145, 37.092903, 36.717476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560566, 36.578293, 36.266937>,  <40.979263, 36.449333, 36.618340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560566, 36.578293, 36.266937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591766, 36.837376, 36.570091>,  <41.610485, 36.992825, 36.751984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591766, 36.837376, 36.570091>,  <41.560566, 36.578293, 36.266937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591766, 36.837376, 36.570091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811686, -0.482654, 0.328956,
		0.578864, 0.589506, -0.563382,
		0.077997, 0.647710, 0.757884,
		41.615166, 37.031689, 36.797455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272526, 36.715679, 36.461220>,  <41.560566, 36.578293, 36.266937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272526, 36.715679, 36.461220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072449, 36.798210, 36.797607>,  <41.952404, 36.847729, 36.999439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072449, 36.798210, 36.797607>,  <42.272526, 36.715679, 36.461220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072449, 36.798210, 36.797607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667137, -0.527324, 0.526173,
		0.552030, 0.824232, 0.126114,
		-0.500192, 0.206328, 0.840974,
		41.922390, 36.860107, 37.049900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698635, 37.124672, 36.921894>,  <42.272526, 36.715679, 36.461220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698635, 37.124672, 36.921894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420052, 36.887123, 37.083019>,  <42.252903, 36.744595, 37.179695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420052, 36.887123, 37.083019>,  <42.698635, 37.124672, 36.921894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420052, 36.887123, 37.083019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717109, -0.596737, 0.360082,
		0.026531, 0.539645, 0.841475,
		-0.696456, -0.593876, 0.402816,
		42.211113, 36.708961, 37.203865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628445, 37.431313, 37.568657>,  <42.698635, 37.124672, 36.921894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628445, 37.431313, 37.568657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012650, 37.356075, 37.650665>,  <43.243172, 37.310932, 37.699871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012650, 37.356075, 37.650665>,  <42.628445, 37.431313, 37.568657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012650, 37.356075, 37.650665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214443, -0.030951, 0.976246,
		-0.177285, -0.981662, -0.070065,
		0.960512, -0.188098, 0.205024,
		43.300804, 37.299648, 37.712173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970337, 37.400375, 37.375095>,  <42.628445, 37.431313, 37.568657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970337, 37.400375, 37.375095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578987, 37.421360, 37.295074>,  <41.344177, 37.433952, 37.247063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578987, 37.421360, 37.295074>,  <41.970337, 37.400375, 37.375095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578987, 37.421360, 37.295074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206632, -0.289020, 0.934757,
		-0.008781, 0.955885, 0.293611,
		-0.978379, 0.052462, -0.200054,
		41.285473, 37.437099, 37.235058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045662, 37.426094, 38.091236>,  <41.970337, 37.400375, 37.375095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045662, 37.426094, 38.091236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320454, 37.355534, 38.373211>,  <42.485329, 37.313198, 38.542397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320454, 37.355534, 38.373211>,  <42.045662, 37.426094, 38.091236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320454, 37.355534, 38.373211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713322, 0.348804, -0.607871,
		-0.138652, 0.920444, 0.365457,
		0.686984, -0.176406, 0.704935,
		42.526550, 37.302612, 38.584690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619888, 37.938976, 38.114388>,  <42.045662, 37.426094, 38.091236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619888, 37.938976, 38.114388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770748, 37.600597, 38.265190>,  <42.861263, 37.397572, 38.355671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770748, 37.600597, 38.265190>,  <42.619888, 37.938976, 38.114388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770748, 37.600597, 38.265190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902266, 0.243755, -0.355666,
		0.208976, 0.474303, 0.855199,
		0.377153, -0.845943, 0.377009,
		42.883892, 37.346813, 38.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160950, 38.029099, 38.599312>,  <42.619888, 37.938976, 38.114388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160950, 38.029099, 38.599312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177296, 37.706139, 38.363876>,  <43.187103, 37.512363, 38.222614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177296, 37.706139, 38.363876>,  <43.160950, 38.029099, 38.599312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177296, 37.706139, 38.363876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928978, 0.247587, -0.275136,
		0.367872, -0.535543, 0.760174,
		0.040862, -0.807400, -0.588588,
		43.189556, 37.463917, 38.187302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766041, 37.992672, 38.179382>,  <43.160950, 38.029099, 38.599312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766041, 37.992672, 38.179382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512211, 37.827679, 37.917950>,  <43.359913, 37.728683, 37.761089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512211, 37.827679, 37.917950>,  <43.766041, 37.992672, 38.179382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512211, 37.827679, 37.917950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766563, -0.443655, -0.464275,
		-0.098462, -0.795632, 0.597725,
		-0.634575, -0.412480, -0.653586,
		43.321838, 37.703934, 37.721874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066612, 37.394325, 37.914764>,  <43.766041, 37.992672, 38.179382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066612, 37.394325, 37.914764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791428, 37.429886, 37.626652>,  <43.626316, 37.451221, 37.453785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791428, 37.429886, 37.626652>,  <44.066612, 37.394325, 37.914764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791428, 37.429886, 37.626652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549297, -0.584863, -0.596832,
		-0.474326, -0.806246, 0.353529,
		-0.687959, 0.088900, -0.720284,
		43.585041, 37.456554, 37.410568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648445, 36.777306, 37.876415>,  <44.066612, 37.394325, 37.914764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648445, 36.777306, 37.876415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711918, 36.982204, 37.538795>,  <43.750000, 37.105145, 37.336224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711918, 36.982204, 37.538795>,  <43.648445, 36.777306, 37.876415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711918, 36.982204, 37.538795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479160, -0.787416, -0.387792,
		-0.863265, -0.342900, -0.370396,
		0.158682, 0.512246, -0.844052,
		43.759521, 37.135880, 37.285580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423580, 36.355507, 37.242554>,  <43.648445, 36.777306, 37.876415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423580, 36.355507, 37.242554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712643, 36.616150, 37.150318>,  <43.886082, 36.772537, 37.094978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712643, 36.616150, 37.150318>,  <43.423580, 36.355507, 37.242554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712643, 36.616150, 37.150318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462230, -0.703615, -0.539693,
		-0.513911, 0.283432, -0.809668,
		0.722661, 0.651607, -0.230584,
		43.929440, 36.811630, 37.081142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972084, 36.083450, 36.905293>,  <43.423580, 36.355507, 37.242554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972084, 36.083450, 36.905293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199535, 36.412334, 36.895184>,  <44.336006, 36.609665, 36.889118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199535, 36.412334, 36.895184>,  <43.972084, 36.083450, 36.905293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199535, 36.412334, 36.895184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670615, -0.481143, -0.564604,
		-0.476384, 0.304097, -0.824975,
		0.568625, 0.822208, -0.025277,
		44.370125, 36.658997, 36.887600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183205, 36.061085, 36.273857>,  <43.972084, 36.083450, 36.905293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183205, 36.061085, 36.273857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475128, 36.270851, 36.449299>,  <44.650284, 36.396709, 36.554565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475128, 36.270851, 36.449299>,  <44.183205, 36.061085, 36.273857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475128, 36.270851, 36.449299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683513, -0.546735, -0.483622,
		-0.013818, 0.652742, -0.757454,
		0.729808, 0.524412, 0.438603,
		44.694069, 36.428173, 36.580879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551846, 36.252647, 35.651146>,  <44.183205, 36.061085, 36.273857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551846, 36.252647, 35.651146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762318, 36.206562, 35.988159>,  <44.888599, 36.178909, 36.190369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762318, 36.206562, 35.988159>,  <44.551846, 36.252647, 35.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762318, 36.206562, 35.988159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666304, -0.559751, -0.492664,
		0.528370, 0.820613, -0.217761,
		0.526178, -0.115214, 0.842533,
		44.920170, 36.171997, 36.240921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144939, 35.890522, 35.421669>,  <44.551846, 36.252647, 35.651146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144939, 35.890522, 35.421669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276928, 35.893566, 35.799252>,  <45.356121, 35.895393, 36.025803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276928, 35.893566, 35.799252>,  <45.144939, 35.890522, 35.421669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276928, 35.893566, 35.799252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717480, -0.651864, -0.245551,
		0.613464, 0.758297, -0.220561,
		0.329976, 0.007611, 0.943959,
		45.375919, 35.895851, 36.082439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789009, 36.115688, 35.330635>,  <45.144939, 35.890522, 35.421669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789009, 36.115688, 35.330635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750690, 35.908009, 35.670341>,  <45.727699, 35.783401, 35.874165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750690, 35.908009, 35.670341>,  <45.789009, 36.115688, 35.330635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750690, 35.908009, 35.670341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852998, -0.482569, -0.198801,
		0.513048, 0.705381, 0.489100,
		-0.095794, -0.519196, 0.849270,
		45.721951, 35.752251, 35.925121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223293, 36.262924, 35.983158>,  <45.789009, 36.115688, 35.330635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223293, 36.262924, 35.983158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150269, 35.872005, 35.940155>,  <46.106453, 35.637455, 35.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150269, 35.872005, 35.940155>,  <46.223293, 36.262924, 35.983158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150269, 35.872005, 35.940155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930325, -0.136338, -0.340450,
		0.318064, -0.162171, 0.934096,
		-0.182564, -0.977299, -0.107507,
		46.095501, 35.578815, 35.907902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817783, 35.745590, 36.408306>,  <46.223293, 36.262924, 35.983158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817783, 35.745590, 36.408306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627075, 35.546440, 36.118530>,  <46.512650, 35.426949, 35.944664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627075, 35.546440, 36.118530>,  <46.817783, 35.745590, 36.408306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627075, 35.546440, 36.118530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879014, -0.265279, -0.396185,
		0.005075, -0.825678, 0.564120,
		-0.476770, -0.497879, -0.724436,
		46.484043, 35.397076, 35.901199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.124084, 35.017868, 36.479404>,  <46.817783, 35.745590, 36.408306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.124084, 35.017868, 36.479404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971901, 35.167065, 36.140907>,  <46.880592, 35.256584, 35.937809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971901, 35.167065, 36.140907>,  <47.124084, 35.017868, 36.479404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971901, 35.167065, 36.140907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815686, -0.295851, -0.497119,
		-0.435785, -0.879402, -0.191687,
		-0.380457, 0.372993, -0.846244,
		46.857765, 35.278961, 35.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064068, 34.579567, 35.954517>,  <47.124084, 35.017868, 36.479404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064068, 34.579567, 35.954517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180592, 34.943977, 35.837776>,  <47.250504, 35.162624, 35.767731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180592, 34.943977, 35.837776>,  <47.064068, 34.579567, 35.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180592, 34.943977, 35.837776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848280, -0.387030, -0.361427,
		-0.442224, -0.142285, -0.885547,
		0.291307, 0.911023, -0.291851,
		47.267982, 35.217285, 35.750221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285633, 34.653893, 35.223026>,  <47.064068, 34.579567, 35.954517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285633, 34.653893, 35.223026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501122, 34.908443, 35.443863>,  <47.630417, 35.061172, 35.576366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501122, 34.908443, 35.443863>,  <47.285633, 34.653893, 35.223026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.501122, 34.908443, 35.443863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817694, -0.237159, -0.524531,
		-0.202865, 0.734018, -0.648123,
		0.538723, 0.636375, 0.552091,
		47.662739, 35.099358, 35.609489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615597, 35.181107, 34.770847>,  <47.285633, 34.653893, 35.223026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615597, 35.181107, 34.770847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825470, 35.103764, 35.102467>,  <47.951393, 35.057358, 35.301437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825470, 35.103764, 35.102467>,  <47.615597, 35.181107, 34.770847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.825470, 35.103764, 35.102467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772802, -0.300278, -0.559116,
		0.357055, 0.934048, -0.008124,
		0.524681, -0.193357, 0.829050,
		47.982876, 35.045757, 35.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.787361, 39.406879, 22.622440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540749, 39.093777, 22.588539>,  <35.392780, 38.905914, 22.568197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540749, 39.093777, 22.588539>,  <35.787361, 39.406879, 22.622440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540749, 39.093777, 22.588539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185313, 0.039645, 0.981880,
		-0.765210, 0.621068, -0.169496,
		-0.616534, -0.782753, -0.084755,
		35.355789, 38.858952, 22.563112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191227, 39.502438, 23.018139>,  <35.787361, 39.406879, 22.622440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191227, 39.502438, 23.018139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200294, 39.104572, 22.977892>,  <35.205734, 38.865852, 22.953743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200294, 39.104572, 22.977892>,  <35.191227, 39.502438, 23.018139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200294, 39.104572, 22.977892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106560, -0.102474, 0.989012,
		-0.994048, -0.011698, -0.108314,
		0.022669, -0.994667, -0.100617,
		35.207096, 38.806171, 22.947706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583870, 39.293594, 23.272621>,  <35.191227, 39.502438, 23.018139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583870, 39.293594, 23.272621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811966, 38.965977, 23.297924>,  <34.948822, 38.769405, 23.313105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811966, 38.965977, 23.297924>,  <34.583870, 39.293594, 23.272621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811966, 38.965977, 23.297924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210521, -0.071271, 0.974988,
		-0.794045, -0.569293, -0.213067,
		0.570239, -0.819039, 0.063256,
		34.983036, 38.720264, 23.316900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161453, 38.901409, 23.717680>,  <34.583870, 39.293594, 23.272621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161453, 38.901409, 23.717680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.530937, 38.748997, 23.733557>,  <34.752628, 38.657547, 23.743082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.530937, 38.748997, 23.733557>,  <34.161453, 38.901409, 23.717680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530937, 38.748997, 23.733557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117929, -0.184238, 0.975781,
		-0.364496, -0.906017, -0.215117,
		0.923707, -0.381037, 0.039691,
		34.808048, 38.634686, 23.745464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169098, 38.231201, 24.027195>,  <34.161453, 38.901409, 23.717680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169098, 38.231201, 24.027195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545734, 38.353844, 24.082907>,  <34.771717, 38.427429, 24.116335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545734, 38.353844, 24.082907>,  <34.169098, 38.231201, 24.027195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545734, 38.353844, 24.082907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133329, -0.040383, 0.990249,
		0.309238, -0.950980, 0.002855,
		0.941592, 0.306603, 0.139281,
		34.828213, 38.445824, 24.124691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391556, 37.891163, 24.616657>,  <34.169098, 38.231201, 24.027195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391556, 37.891163, 24.616657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681755, 38.165028, 24.588715>,  <34.855877, 38.329346, 24.571949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681755, 38.165028, 24.588715>,  <34.391556, 37.891163, 24.616657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681755, 38.165028, 24.588715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032373, 0.135343, 0.990270,
		0.687460, -0.716180, 0.120356,
		0.725501, 0.684667, -0.069858,
		34.899406, 38.370426, 24.567757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880207, 37.637463, 25.126822>,  <34.391556, 37.891163, 24.616657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880207, 37.637463, 25.126822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981464, 38.017292, 25.052818>,  <35.042217, 38.245190, 25.008417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981464, 38.017292, 25.052818>,  <34.880207, 37.637463, 25.126822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981464, 38.017292, 25.052818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309858, 0.101580, 0.945341,
		0.916465, -0.296629, -0.268519,
		0.253139, 0.949575, -0.185008,
		35.057407, 38.302166, 24.997316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589050, 37.777885, 25.365273>,  <34.880207, 37.637463, 25.126822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589050, 37.777885, 25.365273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388485, 38.123753, 25.353083>,  <35.268147, 38.331272, 25.345768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388485, 38.123753, 25.353083>,  <35.589050, 37.777885, 25.365273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388485, 38.123753, 25.353083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210665, 0.156175, 0.965002,
		0.839169, 0.477445, -0.260464,
		-0.501414, 0.864671, -0.030476,
		35.238060, 38.383152, 25.343941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976891, 38.380959, 25.528620>,  <35.589050, 37.777885, 25.365273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976891, 38.380959, 25.528620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617229, 38.538311, 25.605335>,  <35.401432, 38.632721, 25.651363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617229, 38.538311, 25.605335>,  <35.976891, 38.380959, 25.528620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617229, 38.538311, 25.605335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239468, 0.075435, 0.967969,
		0.366309, 0.916277, -0.162029,
		-0.899151, 0.393377, 0.191787,
		35.347485, 38.656322, 25.662872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150223, 38.990486, 25.977362>,  <35.976891, 38.380959, 25.528620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150223, 38.990486, 25.977362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761620, 38.910820, 26.028759>,  <35.528458, 38.863022, 26.059597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761620, 38.910820, 26.028759>,  <36.150223, 38.990486, 25.977362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761620, 38.910820, 26.028759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074098, 0.259737, 0.962832,
		-0.225133, 0.944919, -0.237579,
		-0.971506, -0.199161, 0.128492,
		35.470169, 38.851070, 26.067307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877178, 39.556950, 26.300961>,  <36.150223, 38.990486, 25.977362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877178, 39.556950, 26.300961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621956, 39.280159, 26.436049>,  <35.468822, 39.114086, 26.517101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621956, 39.280159, 26.436049>,  <35.877178, 39.556950, 26.300961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621956, 39.280159, 26.436049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190512, 0.283095, 0.939980,
		-0.746048, 0.664101, -0.048802,
		-0.638057, -0.691973, 0.337721,
		35.430538, 39.072567, 26.537365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465618, 39.844284, 26.973553>,  <35.877178, 39.556950, 26.300961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465618, 39.844284, 26.973553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384346, 39.452663, 26.978987>,  <35.335583, 39.217693, 26.982246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384346, 39.452663, 26.978987>,  <35.465618, 39.844284, 26.973553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384346, 39.452663, 26.978987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231951, -0.034648, 0.972110,
		-0.951272, 0.200661, 0.234131,
		-0.203177, -0.979048, 0.013584,
		35.323395, 39.158951, 26.983063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082497, 39.763420, 27.544758>,  <35.465618, 39.844284, 26.973553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082497, 39.763420, 27.544758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233261, 39.393520, 27.523680>,  <35.323719, 39.171581, 27.511032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233261, 39.393520, 27.523680>,  <35.082497, 39.763420, 27.544758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233261, 39.393520, 27.523680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241680, 0.043262, 0.969391,
		-0.894165, -0.378106, 0.239799,
		0.376907, -0.924751, -0.052698,
		35.346333, 39.116096, 27.507870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764091, 39.295166, 28.107197>,  <35.082497, 39.763420, 27.544758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764091, 39.295166, 28.107197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098122, 39.103123, 27.999756>,  <35.298538, 38.987896, 27.935291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098122, 39.103123, 27.999756>,  <34.764091, 39.295166, 28.107197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098122, 39.103123, 27.999756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256225, -0.092631, 0.962168,
		-0.486830, -0.872302, 0.045664,
		0.835072, -0.480113, -0.268601,
		35.348644, 38.959087, 27.919176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699818, 38.640610, 28.452148>,  <34.764091, 39.295166, 28.107197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699818, 38.640610, 28.452148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088272, 38.706364, 28.383024>,  <35.321346, 38.745815, 28.341551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088272, 38.706364, 28.383024>,  <34.699818, 38.640610, 28.452148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088272, 38.706364, 28.383024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204462, -0.200727, 0.958073,
		0.122810, -0.965756, -0.228545,
		0.971140, 0.164390, -0.172809,
		35.379616, 38.755680, 28.331181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082996, 38.156681, 28.828665>,  <34.699818, 38.640610, 28.452148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082996, 38.156681, 28.828665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353931, 38.444393, 28.766891>,  <35.516491, 38.617020, 28.729828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353931, 38.444393, 28.766891>,  <35.082996, 38.156681, 28.828665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353931, 38.444393, 28.766891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355826, -0.136574, 0.924519,
		0.643899, -0.681160, -0.348446,
		0.677334, 0.719283, -0.154435,
		35.557133, 38.660179, 28.720562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715881, 37.830769, 29.090199>,  <35.082996, 38.156681, 28.828665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715881, 37.830769, 29.090199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781277, 38.225151, 29.076519>,  <35.820515, 38.461781, 29.068312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781277, 38.225151, 29.076519>,  <35.715881, 37.830769, 29.090199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781277, 38.225151, 29.076519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168048, 0.006328, 0.985758,
		0.972127, -0.166909, -0.164653,
		0.163491, 0.985952, -0.034200,
		35.830322, 38.520935, 29.066259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419727, 37.840126, 29.281530>,  <35.715881, 37.830769, 29.090199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419727, 37.840126, 29.281530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251755, 38.195374, 29.356268>,  <36.150970, 38.408520, 29.401110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251755, 38.195374, 29.356268>,  <36.419727, 37.840126, 29.281530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251755, 38.195374, 29.356268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329991, -0.042365, 0.943033,
		0.845438, 0.457664, -0.275280,
		-0.419930, 0.888115, 0.186842,
		36.125774, 38.461807, 29.412321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794846, 38.061069, 29.773241>,  <36.419727, 37.840126, 29.281530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794846, 38.061069, 29.773241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499771, 38.330521, 29.791302>,  <36.322727, 38.492191, 29.802139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499771, 38.330521, 29.791302>,  <36.794846, 38.061069, 29.773241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499771, 38.330521, 29.791302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200009, 0.154171, 0.967588,
		0.644837, 0.722808, -0.248463,
		-0.737686, 0.673632, 0.045153,
		36.278465, 38.532612, 29.804848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125637, 38.486576, 30.215944>,  <36.794846, 38.061069, 29.773241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125637, 38.486576, 30.215944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739971, 38.591805, 30.229687>,  <36.508572, 38.654942, 30.237932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739971, 38.591805, 30.229687>,  <37.125637, 38.486576, 30.215944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739971, 38.591805, 30.229687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081681, 0.171139, 0.981855,
		0.252415, 0.949477, -0.186494,
		-0.964165, 0.263068, 0.034357,
		36.450722, 38.670727, 30.239994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087696, 39.149887, 30.539890>,  <37.125637, 38.486576, 30.215944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087696, 39.149887, 30.539890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721416, 38.999023, 30.595377>,  <36.501648, 38.908504, 30.628668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721416, 38.999023, 30.595377>,  <37.087696, 39.149887, 30.539890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721416, 38.999023, 30.595377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094609, 0.133149, 0.986570,
		-0.390562, 0.916528, -0.086242,
		-0.915702, -0.377157, 0.138715,
		36.446705, 38.885876, 30.636992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859200, 39.136871, 30.658989>,  <37.087696, 39.149887, 30.539890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859200, 39.136871, 30.658989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015556, 39.503864, 30.688475>,  <38.109371, 39.724060, 30.706167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015556, 39.503864, 30.688475>,  <37.859200, 39.136871, 30.658989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015556, 39.503864, 30.688475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331540, -0.065634, -0.941155,
		-0.858652, 0.392331, -0.329837,
		0.390893, 0.917479, 0.073717,
		38.132824, 39.779110, 30.710590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590748, 39.516392, 30.166557>,  <37.859200, 39.136871, 30.658989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590748, 39.516392, 30.166557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896336, 39.766926, 30.228603>,  <38.079689, 39.917244, 30.265831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896336, 39.766926, 30.228603>,  <37.590748, 39.516392, 30.166557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896336, 39.766926, 30.228603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188705, 0.013017, -0.981948,
		-0.617045, 0.779448, -0.108248,
		0.763968, 0.626332, 0.155117,
		38.125526, 39.954826, 30.275139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607979, 40.087208, 29.612122>,  <37.590748, 39.516392, 30.166557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607979, 40.087208, 29.612122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977234, 40.046776, 29.760504>,  <38.198788, 40.022514, 29.849533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977234, 40.046776, 29.760504>,  <37.607979, 40.087208, 29.612122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977234, 40.046776, 29.760504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377946, 0.061461, -0.923785,
		0.070578, 0.992978, 0.094940,
		0.923133, -0.101082, 0.370954,
		38.254173, 40.016453, 29.871790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988476, 40.703918, 29.336241>,  <37.607979, 40.087208, 29.612122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988476, 40.703918, 29.336241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264484, 40.434090, 29.441175>,  <38.430092, 40.272194, 29.504135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264484, 40.434090, 29.441175>,  <37.988476, 40.703918, 29.336241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264484, 40.434090, 29.441175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374812, 0.022966, -0.926816,
		0.619178, 0.737853, 0.268684,
		0.690025, -0.674571, 0.262336,
		38.471493, 40.231720, 29.519876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581669, 40.879204, 29.058207>,  <37.988476, 40.703918, 29.336241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581669, 40.879204, 29.058207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649292, 40.493385, 29.139261>,  <38.689865, 40.261894, 29.187895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649292, 40.493385, 29.139261>,  <38.581669, 40.879204, 29.058207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649292, 40.493385, 29.139261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383245, -0.125088, -0.915137,
		0.908044, 0.232368, 0.348513,
		0.169054, -0.964551, 0.202639,
		38.700008, 40.204021, 29.200052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167091, 40.715210, 28.670010>,  <38.581669, 40.879204, 29.058207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167091, 40.715210, 28.670010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021996, 40.349289, 28.741056>,  <38.934937, 40.129734, 28.783686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021996, 40.349289, 28.741056>,  <39.167091, 40.715210, 28.670010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021996, 40.349289, 28.741056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069992, -0.216808, -0.973702,
		0.929257, -0.340773, 0.142675,
		-0.362744, -0.914805, 0.177619,
		38.913174, 40.074848, 28.794342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569386, 40.184254, 28.395594>,  <39.167091, 40.715210, 28.670010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569386, 40.184254, 28.395594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202709, 40.027161, 28.425081>,  <38.982704, 39.932903, 28.442774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202709, 40.027161, 28.425081>,  <39.569386, 40.184254, 28.395594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202709, 40.027161, 28.425081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007223, -0.200741, -0.979618,
		0.399529, -0.897475, 0.186854,
		-0.916692, -0.392735, 0.073719,
		38.927700, 39.909340, 28.447197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607807, 39.628716, 27.892725>,  <39.569386, 40.184254, 28.395594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607807, 39.628716, 27.892725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220955, 39.669880, 27.985741>,  <38.988846, 39.694580, 28.041550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220955, 39.669880, 27.985741>,  <39.607807, 39.628716, 27.892725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220955, 39.669880, 27.985741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252437, -0.498784, -0.829150,
		0.030657, -0.860595, 0.508366,
		-0.967127, 0.102911, 0.232538,
		38.930817, 39.700752, 28.055502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261978, 38.844929, 27.858458>,  <39.607807, 39.628716, 27.892725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261978, 38.844929, 27.858458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015587, 39.155083, 27.802818>,  <38.867752, 39.341175, 27.769434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015587, 39.155083, 27.802818>,  <39.261978, 38.844929, 27.858458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015587, 39.155083, 27.802818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287717, -0.385819, -0.876563,
		-0.733341, -0.499923, 0.460748,
		-0.615979, 0.775385, -0.139100,
		38.830791, 39.387699, 27.761087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683479, 38.570808, 27.539190>,  <39.261978, 38.844929, 27.858458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683479, 38.570808, 27.539190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644524, 38.958912, 27.450544>,  <38.621151, 39.191772, 27.397356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644524, 38.958912, 27.450544>,  <38.683479, 38.570808, 27.539190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644524, 38.958912, 27.450544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363084, -0.241964, -0.899791,
		-0.926652, -0.007166, 0.375851,
		-0.097391, 0.970259, -0.221615,
		38.615307, 39.249989, 27.384060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007618, 38.655281, 27.380939>,  <38.683479, 38.570808, 27.539190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007618, 38.655281, 27.380939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233921, 38.937790, 27.210718>,  <38.369701, 39.107296, 27.108585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233921, 38.937790, 27.210718>,  <38.007618, 38.655281, 27.380939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233921, 38.937790, 27.210718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237584, -0.354576, -0.904339,
		-0.789602, 0.612742, -0.032804,
		0.565758, 0.706274, -0.425552,
		38.403648, 39.149673, 27.083052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534912, 38.867748, 26.777527>,  <38.007618, 38.655281, 27.380939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534912, 38.867748, 26.777527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887062, 39.034668, 26.687374>,  <38.098354, 39.134819, 26.633282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887062, 39.034668, 26.687374>,  <37.534912, 38.867748, 26.777527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887062, 39.034668, 26.687374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189319, -0.126507, -0.973732,
		-0.434847, 0.899922, -0.032372,
		0.880379, 0.417296, -0.225383,
		38.151176, 39.159855, 26.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439522, 39.414421, 26.312378>,  <37.534912, 38.867748, 26.777527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439522, 39.414421, 26.312378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822926, 39.322327, 26.245138>,  <38.052967, 39.267071, 26.204794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822926, 39.322327, 26.245138>,  <37.439522, 39.414421, 26.312378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822926, 39.322327, 26.245138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184744, -0.052587, -0.981379,
		0.217104, 0.971714, -0.092939,
		0.958507, -0.230232, -0.168101,
		38.110477, 39.253258, 26.194708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621788, 39.877781, 25.828436>,  <37.439522, 39.414421, 26.312378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621788, 39.877781, 25.828436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900993, 39.593529, 25.793173>,  <38.068516, 39.422977, 25.772015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900993, 39.593529, 25.793173>,  <37.621788, 39.877781, 25.828436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900993, 39.593529, 25.793173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030700, 0.152694, -0.987797,
		0.715423, 0.686792, 0.128400,
		0.698017, -0.710634, -0.088156,
		38.110397, 39.380337, 25.766726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179665, 40.157948, 25.474548>,  <37.621788, 39.877781, 25.828436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179665, 40.157948, 25.474548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204315, 39.766014, 25.398523>,  <38.219105, 39.530853, 25.352907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204315, 39.766014, 25.398523>,  <38.179665, 40.157948, 25.474548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204315, 39.766014, 25.398523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063051, 0.193867, -0.979000,
		0.996106, 0.048349, 0.073727,
		0.061627, -0.979836, -0.190063,
		38.222805, 39.472065, 25.341505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747284, 40.122883, 24.969858>,  <38.179665, 40.157948, 25.474548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747284, 40.122883, 24.969858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524853, 39.790741, 24.955507>,  <38.391392, 39.591457, 24.946898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524853, 39.790741, 24.955507>,  <38.747284, 40.122883, 24.969858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524853, 39.790741, 24.955507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057289, 0.081358, -0.995037,
		0.829150, -0.551267, -0.092812,
		-0.556082, -0.830352, -0.035876,
		38.358028, 39.541634, 24.944744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907787, 39.770954, 24.400513>,  <38.747284, 40.122883, 24.969858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907787, 39.770954, 24.400513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561161, 39.589439, 24.483589>,  <38.353184, 39.480530, 24.533436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561161, 39.589439, 24.483589>,  <38.907787, 39.770954, 24.400513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561161, 39.589439, 24.483589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215939, -0.034251, -0.975806,
		0.449925, -0.890450, -0.068310,
		-0.866567, -0.453790, 0.207693,
		38.301189, 39.453304, 24.545897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821365, 39.107662, 24.052248>,  <38.907787, 39.770954, 24.400513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821365, 39.107662, 24.052248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449638, 39.240929, 24.115948>,  <38.226601, 39.320889, 24.154167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449638, 39.240929, 24.115948>,  <38.821365, 39.107662, 24.052248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449638, 39.240929, 24.115948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165086, 0.010922, -0.986219,
		-0.330319, -0.942803, 0.044852,
		-0.929320, 0.333171, 0.159251,
		38.170841, 39.340881, 24.163723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413639, 38.730675, 23.592627>,  <38.821365, 39.107662, 24.052248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413639, 38.730675, 23.592627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187218, 39.035824, 23.717594>,  <38.051365, 39.218914, 23.792576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187218, 39.035824, 23.717594>,  <38.413639, 38.730675, 23.592627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187218, 39.035824, 23.717594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338694, 0.130303, -0.931830,
		-0.751579, -0.633280, 0.184623,
		-0.566052, 0.762875, 0.312421,
		38.017403, 39.264687, 23.811321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.791744, 38.517735, 23.234325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735249, 38.893581, 23.359020>,  <37.701351, 39.119087, 23.433838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735249, 38.893581, 23.359020>,  <37.791744, 38.517735, 23.234325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735249, 38.893581, 23.359020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435606, 0.223786, -0.871876,
		-0.888988, -0.258934, 0.377694,
		-0.141236, 0.939613, 0.311737,
		37.692879, 39.175465, 23.452541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060680, 38.662533, 23.246689>,  <37.791744, 38.517735, 23.234325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060680, 38.662533, 23.246689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259800, 39.004700, 23.189480>,  <37.379272, 39.209999, 23.155155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259800, 39.004700, 23.189480>,  <37.060680, 38.662533, 23.246689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259800, 39.004700, 23.189480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593753, 0.215931, -0.775133,
		-0.632180, 0.470782, 0.615397,
		0.497802, 0.855417, -0.143021,
		37.409142, 39.261326, 23.146574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614849, 39.067268, 23.007175>,  <37.060680, 38.662533, 23.246689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614849, 39.067268, 23.007175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940788, 39.274769, 22.903700>,  <37.136353, 39.399269, 22.841616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940788, 39.274769, 22.903700>,  <36.614849, 39.067268, 23.007175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940788, 39.274769, 22.903700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513273, 0.438291, -0.737869,
		-0.269388, 0.734030, 0.623401,
		0.814850, 0.518748, -0.258688,
		37.185242, 39.430393, 22.826094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409424, 39.800472, 22.837126>,  <36.614849, 39.067268, 23.007175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409424, 39.800472, 22.837126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766106, 39.744179, 22.665054>,  <36.980114, 39.710403, 22.561811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766106, 39.744179, 22.665054>,  <36.409424, 39.800472, 22.837126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766106, 39.744179, 22.665054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366835, 0.332016, -0.869021,
		0.265125, 0.932716, 0.244435,
		0.891707, -0.140732, -0.430178,
		37.033619, 39.701958, 22.536001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418457, 40.358597, 22.397724>,  <36.409424, 39.800472, 22.837126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418457, 40.358597, 22.397724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697384, 40.110325, 22.254335>,  <36.864738, 39.961361, 22.168303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697384, 40.110325, 22.254335>,  <36.418457, 40.358597, 22.397724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697384, 40.110325, 22.254335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094590, 0.416061, -0.904404,
		0.710494, 0.664564, 0.231416,
		0.697318, -0.620683, -0.358470,
		36.906578, 39.924118, 22.146795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904903, 40.785347, 22.036798>,  <36.418457, 40.358597, 22.397724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904903, 40.785347, 22.036798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947906, 40.419460, 21.880989>,  <36.973709, 40.199928, 21.787502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947906, 40.419460, 21.880989>,  <36.904903, 40.785347, 22.036798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947906, 40.419460, 21.880989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104875, 0.379176, -0.919362,
		0.988657, 0.139693, -0.055165,
		0.107512, -0.914719, -0.389525,
		36.980160, 40.145046, 21.764132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165913, 40.922272, 21.313578>,  <36.904903, 40.785347, 22.036798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165913, 40.922272, 21.313578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038795, 40.544304, 21.282248>,  <36.962524, 40.317524, 21.263449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038795, 40.544304, 21.282248>,  <37.165913, 40.922272, 21.313578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038795, 40.544304, 21.282248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169972, 0.138044, -0.975732,
		0.932800, -0.296771, -0.204479,
		-0.317796, -0.944918, -0.078325,
		36.943459, 40.260830, 21.258749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605328, 40.609280, 20.768620>,  <37.165913, 40.922272, 21.313578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605328, 40.609280, 20.768620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279877, 40.382698, 20.820993>,  <37.084606, 40.246750, 20.852417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279877, 40.382698, 20.820993>,  <37.605328, 40.609280, 20.768620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279877, 40.382698, 20.820993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085813, -0.105737, -0.990685,
		0.575021, -0.817283, 0.037422,
		-0.813626, -0.566453, 0.130935,
		37.035789, 40.212761, 20.860273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641724, 39.983269, 20.436604>,  <37.605328, 40.609280, 20.768620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641724, 39.983269, 20.436604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249817, 40.061474, 20.453762>,  <37.014675, 40.108395, 20.464056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249817, 40.061474, 20.453762>,  <37.641724, 39.983269, 20.436604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249817, 40.061474, 20.453762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026442, 0.086000, -0.995944,
		-0.198407, -0.976923, -0.079090,
		-0.979763, 0.195511, 0.042895,
		36.955887, 40.120129, 20.466631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360500, 39.584141, 19.984938>,  <37.641724, 39.983269, 20.436604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360500, 39.584141, 19.984938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052277, 39.834961, 20.030632>,  <36.867344, 39.985455, 20.058048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052277, 39.834961, 20.030632>,  <37.360500, 39.584141, 19.984938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052277, 39.834961, 20.030632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041817, 0.129110, -0.990748,
		-0.636000, -0.768203, -0.073265,
		-0.770555, 0.627052, 0.114238,
		36.821110, 40.023075, 20.064903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775852, 39.281670, 19.689510>,  <37.360500, 39.584141, 19.984938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775852, 39.281670, 19.689510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719986, 39.677647, 19.698523>,  <36.686466, 39.915234, 19.703930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719986, 39.677647, 19.698523>,  <36.775852, 39.281670, 19.689510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719986, 39.677647, 19.698523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170729, -0.001663, -0.985317,
		-0.975370, -0.141459, 0.169245,
		-0.139663, 0.989943, 0.022529,
		36.678085, 39.974628, 19.705282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180626, 39.425335, 19.206450>,  <36.775852, 39.281670, 19.689510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180626, 39.425335, 19.206450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346313, 39.785088, 19.262369>,  <36.445724, 40.000938, 19.295921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346313, 39.785088, 19.262369>,  <36.180626, 39.425335, 19.206450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346313, 39.785088, 19.262369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074691, 0.186663, -0.979580,
		-0.907109, 0.395316, 0.144494,
		0.414216, 0.899379, 0.139797,
		36.470577, 40.054901, 19.304308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709583, 39.935802, 18.808224>,  <36.180626, 39.425335, 19.206450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709583, 39.935802, 18.808224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069370, 40.100067, 18.867987>,  <36.285240, 40.198627, 18.903845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069370, 40.100067, 18.867987>,  <35.709583, 39.935802, 18.808224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069370, 40.100067, 18.867987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102211, 0.134712, -0.985599,
		-0.424876, 0.901781, 0.079194,
		0.899463, 0.410663, 0.149407,
		36.339211, 40.223267, 18.912809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671772, 40.583797, 18.400726>,  <35.709583, 39.935802, 18.808224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671772, 40.583797, 18.400726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060482, 40.500851, 18.445719>,  <36.293709, 40.451084, 18.472713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060482, 40.500851, 18.445719>,  <35.671772, 40.583797, 18.400726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060482, 40.500851, 18.445719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169282, 0.280879, -0.944696,
		0.164304, 0.937073, 0.308054,
		0.971776, -0.207365, 0.112480,
		36.352016, 40.438641, 18.479464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009449, 41.205708, 18.163834>,  <35.671772, 40.583797, 18.400726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009449, 41.205708, 18.163834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.286320, 40.917019, 18.164337>,  <36.452442, 40.743805, 18.164639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.286320, 40.917019, 18.164337>,  <36.009449, 41.205708, 18.163834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286320, 40.917019, 18.164337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297940, 0.284152, -0.911312,
		0.657360, 0.631165, 0.411715,
		0.692178, -0.721726, 0.001259,
		36.493973, 40.700500, 18.164715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618755, 41.515438, 17.920952>,  <36.009449, 41.205708, 18.163834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618755, 41.515438, 17.920952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654728, 41.120995, 17.865089>,  <36.676311, 40.884327, 17.831572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654728, 41.120995, 17.865089>,  <36.618755, 41.515438, 17.920952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654728, 41.120995, 17.865089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162182, 0.152855, -0.974850,
		0.982654, 0.065021, 0.173676,
		0.089933, -0.986107, -0.139658,
		36.681709, 40.825161, 17.823193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168633, 41.464127, 17.446905>,  <36.618755, 41.515438, 17.920952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168633, 41.464127, 17.446905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943230, 41.138321, 17.391733>,  <36.807987, 40.942837, 17.358629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943230, 41.138321, 17.391733>,  <37.168633, 41.464127, 17.446905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943230, 41.138321, 17.391733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088589, 0.106419, -0.990367,
		0.821348, -0.570298, 0.012190,
		-0.563507, -0.814515, -0.137929,
		36.774178, 40.893967, 17.350355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350830, 41.238377, 16.833868>,  <37.168633, 41.464127, 17.446905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350830, 41.238377, 16.833868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047096, 40.980793, 16.871222>,  <36.864857, 40.826244, 16.893635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047096, 40.980793, 16.871222>,  <37.350830, 41.238377, 16.833868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047096, 40.980793, 16.871222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081127, -0.048704, -0.995513,
		0.645618, -0.763508, -0.015259,
		-0.759339, -0.643960, 0.093385,
		36.819294, 40.787605, 16.899237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407944, 40.530224, 16.455288>,  <37.350830, 41.238377, 16.833868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407944, 40.530224, 16.455288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013641, 40.591244, 16.483633>,  <36.777061, 40.627857, 16.500639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013641, 40.591244, 16.483633>,  <37.407944, 40.530224, 16.455288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013641, 40.591244, 16.483633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061400, 0.065871, -0.995937,
		-0.156597, -0.986098, -0.055566,
		-0.985752, 0.152550, 0.070862,
		36.717915, 40.637009, 16.504892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065216, 40.026531, 15.961141>,  <37.407944, 40.530224, 16.455288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065216, 40.026531, 15.961141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808350, 40.326355, 16.025373>,  <36.654232, 40.506248, 16.063913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808350, 40.326355, 16.025373>,  <37.065216, 40.026531, 15.961141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808350, 40.326355, 16.025373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052432, 0.166044, -0.984724,
		-0.764774, -0.640772, -0.067326,
		-0.642162, 0.749561, 0.160583,
		36.615700, 40.551224, 16.073549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615383, 40.026783, 15.412787>,  <37.065216, 40.026531, 15.961141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615383, 40.026783, 15.412787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510365, 40.380154, 15.568029>,  <36.447353, 40.592175, 15.661175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510365, 40.380154, 15.568029>,  <36.615383, 40.026783, 15.412787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510365, 40.380154, 15.568029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107377, 0.372969, -0.921610,
		-0.958926, -0.283639, -0.003062,
		-0.262547, 0.883427, 0.388106,
		36.431599, 40.645184, 15.684461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950172, 40.226566, 15.181416>,  <36.615383, 40.026783, 15.412787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950172, 40.226566, 15.181416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231449, 40.499981, 15.259697>,  <36.400215, 40.664028, 15.306666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231449, 40.499981, 15.259697>,  <35.950172, 40.226566, 15.181416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231449, 40.499981, 15.259697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017777, 0.292068, -0.956232,
		-0.710779, 0.668935, 0.217531,
		0.703191, 0.683536, 0.195705,
		36.442406, 40.705040, 15.318408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751961, 39.496971, 14.904799>,  <35.950172, 40.226566, 15.181416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751961, 39.496971, 14.904799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138962, 39.532890, 14.810245>,  <36.371162, 39.554443, 14.753511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138962, 39.532890, 14.810245>,  <35.751961, 39.496971, 14.904799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138962, 39.532890, 14.810245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250969, 0.455428, -0.854166,
		0.030952, 0.885732, 0.463164,
		0.967500, 0.089802, -0.236388,
		36.429211, 39.559830, 14.739328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102165, 39.303127, 14.451321>,  <35.751961, 39.496971, 14.904799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102165, 39.303127, 14.451321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.719189, 39.377296, 14.362841>,  <34.489403, 39.421799, 14.309752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.719189, 39.377296, 14.362841>,  <35.102165, 39.303127, 14.451321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719189, 39.377296, 14.362841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221531, 0.019201, 0.974964,
		0.185031, 0.982471, 0.022695,
		-0.957438, 0.185427, -0.221201,
		34.431957, 39.432926, 14.296480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748379, 39.810642, 14.945328>,  <35.102165, 39.303127, 14.451321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748379, 39.810642, 14.945328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.434841, 39.603806, 14.807801>,  <34.246719, 39.479702, 14.725286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.434841, 39.603806, 14.807801>,  <34.748379, 39.810642, 14.945328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434841, 39.603806, 14.807801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388800, -0.023034, 0.921034,
		-0.484180, 0.855619, -0.182991,
		-0.783839, -0.517093, -0.343817,
		34.199688, 39.448677, 14.704656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248917, 40.110397, 15.299986>,  <34.748379, 39.810642, 14.945328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248917, 40.110397, 15.299986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171394, 39.721760, 15.245651>,  <34.124882, 39.488579, 15.213051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171394, 39.721760, 15.245651>,  <34.248917, 40.110397, 15.299986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171394, 39.721760, 15.245651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136550, -0.110397, 0.984463,
		-0.971490, 0.209346, -0.111274,
		-0.193809, -0.971590, -0.135835,
		34.113251, 39.430283, 15.204901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556423, 39.899654, 15.638788>,  <34.248917, 40.110397, 15.299986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556423, 39.899654, 15.638788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751534, 39.554665, 15.584798>,  <33.868599, 39.347672, 15.552403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751534, 39.554665, 15.584798>,  <33.556423, 39.899654, 15.638788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751534, 39.554665, 15.584798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131560, -0.225477, 0.965325,
		-0.862999, -0.453104, -0.223449,
		0.487775, -0.862472, -0.134976,
		33.897865, 39.295921, 15.544305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181694, 39.495991, 16.083792>,  <33.556423, 39.899654, 15.638788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181694, 39.495991, 16.083792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505440, 39.273796, 16.007511>,  <33.699688, 39.140480, 15.961742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505440, 39.273796, 16.007511>,  <33.181694, 39.495991, 16.083792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505440, 39.273796, 16.007511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043107, -0.380014, 0.923975,
		-0.585725, -0.739611, -0.331515,
		0.809363, -0.555486, -0.190701,
		33.748249, 39.107151, 15.950301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026390, 38.711174, 16.142029>,  <33.181694, 39.495991, 16.083792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026390, 38.711174, 16.142029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408524, 38.808578, 16.208998>,  <33.637806, 38.867023, 16.249180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408524, 38.808578, 16.208998>,  <33.026390, 38.711174, 16.142029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408524, 38.808578, 16.208998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059570, -0.396224, 0.916219,
		0.289450, -0.885272, -0.364022,
		0.955338, 0.243515, 0.167423,
		33.695126, 38.881634, 16.259224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253193, 38.194843, 16.632309>,  <33.026390, 38.711174, 16.142029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253193, 38.194843, 16.632309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533863, 38.477974, 16.664900>,  <33.702263, 38.647854, 16.684454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533863, 38.477974, 16.664900>,  <33.253193, 38.194843, 16.632309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533863, 38.477974, 16.664900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184808, -0.291249, 0.938627,
		0.688114, -0.643551, -0.335173,
		0.701673, 0.707825, 0.081479,
		33.744366, 38.690323, 16.689344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955490, 37.920975, 16.860670>,  <33.253193, 38.194843, 16.632309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955490, 37.920975, 16.860670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956017, 38.309307, 16.956572>,  <33.956333, 38.542305, 17.014112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956017, 38.309307, 16.956572>,  <33.955490, 37.920975, 16.860670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956017, 38.309307, 16.956572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207439, -0.234806, 0.949650,
		0.978247, 0.048483, -0.201698,
		0.001318, 0.970832, 0.239756,
		33.956413, 38.600555, 17.028498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513393, 38.032959, 17.278231>,  <33.955490, 37.920975, 16.860670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513393, 38.032959, 17.278231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264782, 38.334637, 17.362986>,  <34.115616, 38.515644, 17.413839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264782, 38.334637, 17.362986>,  <34.513393, 38.032959, 17.278231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264782, 38.334637, 17.362986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170875, -0.133449, 0.976214,
		0.764531, 0.642948, -0.045931,
		-0.621525, 0.754194, 0.211890,
		34.078323, 38.560894, 17.426552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016415, 38.455589, 17.694857>,  <34.513393, 38.032959, 17.278231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016415, 38.455589, 17.694857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642529, 38.576580, 17.769491>,  <34.418198, 38.649174, 17.814272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642529, 38.576580, 17.769491>,  <35.016415, 38.455589, 17.694857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642529, 38.576580, 17.769491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271657, 0.269573, 0.923869,
		0.229150, 0.914242, -0.334144,
		-0.934715, 0.302477, 0.186587,
		34.362114, 38.667324, 17.825468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036781, 39.137012, 17.914503>,  <35.016415, 38.455589, 17.694857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036781, 39.137012, 17.914503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693176, 38.983456, 18.049984>,  <34.487015, 38.891319, 18.131273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693176, 38.983456, 18.049984>,  <35.036781, 39.137012, 17.914503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693176, 38.983456, 18.049984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307710, 0.141583, 0.940887,
		-0.409157, 0.912457, -0.003493,
		-0.859014, -0.383896, 0.338702,
		34.435471, 38.868286, 18.151594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923416, 39.446308, 18.531115>,  <35.036781, 39.137012, 17.914503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923416, 39.446308, 18.531115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653118, 39.153492, 18.565702>,  <34.490940, 38.977802, 18.586454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653118, 39.153492, 18.565702>,  <34.923416, 39.446308, 18.531115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653118, 39.153492, 18.565702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066388, 0.056387, 0.996200,
		-0.734137, 0.678921, 0.010495,
		-0.675749, -0.732043, 0.086468,
		34.450394, 38.933880, 18.591642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337463, 39.662392, 19.002211>,  <34.923416, 39.446308, 18.531115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337463, 39.662392, 19.002211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383587, 39.265167, 18.992962>,  <34.411259, 39.026833, 18.987411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383587, 39.265167, 18.992962>,  <34.337463, 39.662392, 19.002211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383587, 39.265167, 18.992962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222132, 0.003088, 0.975012,
		-0.968175, -0.117562, 0.220947,
		0.115307, -0.993061, -0.023124,
		34.418179, 38.967251, 18.986025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056736, 39.383945, 19.636951>,  <34.337463, 39.662392, 19.002211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056736, 39.383945, 19.636951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284702, 39.086037, 19.498089>,  <34.421482, 38.907291, 19.414772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284702, 39.086037, 19.498089>,  <34.056736, 39.383945, 19.636951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284702, 39.086037, 19.498089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275254, -0.225041, 0.934661,
		-0.774232, -0.628231, 0.076748,
		0.569912, -0.744770, -0.347157,
		34.455677, 38.862606, 19.393942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792835, 38.813835, 19.932655>,  <34.056736, 39.383945, 19.636951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792835, 38.813835, 19.932655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174820, 38.739189, 19.840382>,  <34.404011, 38.694401, 19.785017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174820, 38.739189, 19.840382>,  <33.792835, 38.813835, 19.932655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174820, 38.739189, 19.840382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200835, -0.165755, 0.965500,
		-0.218419, -0.968348, -0.120811,
		0.954965, -0.186620, -0.230682,
		34.461311, 38.683205, 19.771177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085663, 38.309109, 20.383915>,  <33.792835, 38.813835, 19.932655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085663, 38.309109, 20.383915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423584, 38.480839, 20.256170>,  <34.626335, 38.583878, 20.179523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423584, 38.480839, 20.256170>,  <34.085663, 38.309109, 20.383915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423584, 38.480839, 20.256170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390965, -0.087779, 0.916210,
		0.365317, -0.898875, -0.242006,
		0.844802, 0.429322, -0.319362,
		34.677025, 38.609634, 20.160362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550377, 37.884304, 20.606911>,  <34.085663, 38.309109, 20.383915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550377, 37.884304, 20.606911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738247, 38.232597, 20.548628>,  <34.850967, 38.441574, 20.513659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738247, 38.232597, 20.548628>,  <34.550377, 37.884304, 20.606911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738247, 38.232597, 20.548628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405308, -0.066046, 0.911791,
		0.784302, -0.487303, -0.383935,
		0.469676, 0.870732, -0.145708,
		34.879150, 38.493816, 20.504915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214748, 37.697010, 20.741732>,  <34.550377, 37.884304, 20.606911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214748, 37.697010, 20.741732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206219, 38.093735, 20.792088>,  <35.201099, 38.331772, 20.822302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206219, 38.093735, 20.792088>,  <35.214748, 37.697010, 20.741732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206219, 38.093735, 20.792088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467664, -0.101396, 0.878071,
		0.883649, 0.077601, -0.461674,
		-0.021328, 0.991815, 0.125890,
		35.199821, 38.391281, 20.829855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717659, 37.844555, 21.292229>,  <35.214748, 37.697010, 20.741732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717659, 37.844555, 21.292229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502132, 38.181458, 21.298849>,  <35.372814, 38.383598, 21.302822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502132, 38.181458, 21.298849>,  <35.717659, 37.844555, 21.292229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502132, 38.181458, 21.298849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103918, 0.046957, 0.993477,
		0.835988, 0.537024, -0.112827,
		-0.538819, 0.842259, 0.016551,
		35.340488, 38.434135, 21.303814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104145, 38.379192, 21.655222>,  <35.717659, 37.844555, 21.292229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104145, 38.379192, 21.655222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720787, 38.490009, 21.682732>,  <35.490772, 38.556499, 21.699238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720787, 38.490009, 21.682732>,  <36.104145, 38.379192, 21.655222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720787, 38.490009, 21.682732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119382, 0.170160, 0.978158,
		0.259292, 0.945670, -0.196154,
		-0.958392, 0.277046, 0.068774,
		35.433270, 38.573124, 21.703363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093021, 38.969719, 22.095152>,  <36.104145, 38.379192, 21.655222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093021, 38.969719, 22.095152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.724205, 38.814880, 22.094589>,  <35.502914, 38.721977, 22.094252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.724205, 38.814880, 22.094589>,  <36.093021, 38.969719, 22.095152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724205, 38.814880, 22.094589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026693, -0.067200, 0.997382,
		-0.386181, 0.919586, 0.072294,
		-0.922037, -0.387100, -0.001404,
		35.447594, 38.698750, 22.094168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.373692, 38.932667, 26.139774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986282, 39.032036, 26.146135>,  <38.753838, 39.091656, 26.149952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986282, 39.032036, 26.146135>,  <39.373692, 38.932667, 26.139774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986282, 39.032036, 26.146135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094334, 0.307161, 0.946971,
		0.230365, 0.918661, -0.320927,
		-0.968521, 0.248423, 0.015902,
		38.695724, 39.106564, 26.150906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286949, 39.675335, 26.305313>,  <39.373692, 38.932667, 26.139774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286949, 39.675335, 26.305313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.941689, 39.510082, 26.421442>,  <38.734531, 39.410931, 26.491119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.941689, 39.510082, 26.421442>,  <39.286949, 39.675335, 26.305313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941689, 39.510082, 26.421442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091879, 0.436858, 0.894826,
		-0.496512, 0.799046, -0.339117,
		-0.863153, -0.413134, 0.290321,
		38.682743, 39.386143, 26.508539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993088, 40.206562, 26.484131>,  <39.286949, 39.675335, 26.305313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993088, 40.206562, 26.484131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.822388, 39.894260, 26.666697>,  <38.719967, 39.706879, 26.776236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.822388, 39.894260, 26.666697>,  <38.993088, 40.206562, 26.484131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822388, 39.894260, 26.666697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237261, 0.390347, 0.889571,
		-0.872692, 0.487914, 0.018661,
		-0.426749, -0.780749, 0.456416,
		38.694363, 39.660034, 26.803621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546776, 40.495972, 27.088131>,  <38.993088, 40.206562, 26.484131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546776, 40.495972, 27.088131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.559769, 40.110203, 27.193071>,  <38.567566, 39.878742, 27.256037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.559769, 40.110203, 27.193071>,  <38.546776, 40.495972, 27.088131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559769, 40.110203, 27.193071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107626, 0.257589, 0.960242,
		-0.993661, -0.059428, -0.095430,
		0.032484, -0.964425, 0.262352,
		38.569515, 39.820877, 27.271776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960125, 40.415897, 27.653475>,  <38.546776, 40.495972, 27.088131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960125, 40.415897, 27.653475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216194, 40.109722, 27.679640>,  <38.369835, 39.926018, 27.695339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216194, 40.109722, 27.679640>,  <37.960125, 40.415897, 27.653475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216194, 40.109722, 27.679640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066867, 0.029302, 0.997332,
		-0.765314, -0.642840, -0.032424,
		0.640174, -0.765440, 0.065410,
		38.408245, 39.880089, 27.699263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695969, 40.002621, 28.211393>,  <37.960125, 40.415897, 27.653475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695969, 40.002621, 28.211393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065125, 39.855396, 28.166119>,  <38.286617, 39.767059, 28.138954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065125, 39.855396, 28.166119>,  <37.695969, 40.002621, 28.211393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065125, 39.855396, 28.166119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059278, -0.154636, 0.986192,
		-0.380485, -0.916851, -0.120893,
		0.922886, -0.368065, -0.113186,
		38.341991, 39.744976, 28.132162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793365, 39.292526, 28.593353>,  <37.695969, 40.002621, 28.211393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793365, 39.292526, 28.593353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140659, 39.484138, 28.541658>,  <38.349037, 39.599106, 28.510641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140659, 39.484138, 28.541658>,  <37.793365, 39.292526, 28.593353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140659, 39.484138, 28.541658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175576, -0.053017, 0.983037,
		0.464050, -0.876198, -0.130137,
		0.868234, 0.479027, -0.129237,
		38.401131, 39.627846, 28.502888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319462, 38.914257, 28.966736>,  <37.793365, 39.292526, 28.593353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319462, 38.914257, 28.966736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500160, 39.269299, 28.930758>,  <38.608578, 39.482323, 28.909170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.500160, 39.269299, 28.930758>,  <38.319462, 38.914257, 28.966736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500160, 39.269299, 28.930758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201732, -0.003420, 0.979435,
		0.869042, -0.460596, -0.180603,
		0.451742, 0.887603, -0.089945,
		38.635681, 39.535580, 28.903774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890175, 38.971439, 29.344475>,  <38.319462, 38.914257, 28.966736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890175, 38.971439, 29.344475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814236, 39.362427, 29.307587>,  <38.768673, 39.597019, 29.285454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814236, 39.362427, 29.307587>,  <38.890175, 38.971439, 29.344475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814236, 39.362427, 29.307587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047808, 0.084613, 0.995266,
		0.980648, 0.193363, 0.030667,
		-0.189853, 0.977472, -0.092219,
		38.757278, 39.655670, 29.279921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415405, 39.351318, 29.827417>,  <38.890175, 38.971439, 29.344475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415405, 39.351318, 29.827417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.098110, 39.583904, 29.755121>,  <38.907734, 39.723457, 29.711744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.098110, 39.583904, 29.755121>,  <39.415405, 39.351318, 29.827417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098110, 39.583904, 29.755121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055905, 0.226027, 0.972516,
		0.606335, 0.781544, -0.146787,
		-0.793242, 0.581464, -0.180740,
		38.860138, 39.758343, 29.700899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448265, 39.801571, 30.368683>,  <39.415405, 39.351318, 29.827417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448265, 39.801571, 30.368683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085831, 39.873871, 30.215664>,  <38.868370, 39.917252, 30.123852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085831, 39.873871, 30.215664>,  <39.448265, 39.801571, 30.368683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085831, 39.873871, 30.215664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314684, 0.316492, 0.894878,
		0.282820, 0.931216, -0.229890,
		-0.906083, 0.180747, -0.382550,
		38.814007, 39.928093, 30.100899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281132, 40.521362, 30.536621>,  <39.448265, 39.801571, 30.368683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281132, 40.521362, 30.536621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945686, 40.310719, 30.480898>,  <38.744419, 40.184330, 30.447464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945686, 40.310719, 30.480898>,  <39.281132, 40.521362, 30.536621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945686, 40.310719, 30.480898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338419, 0.303282, 0.890782,
		-0.426847, 0.794167, -0.432552,
		-0.838614, -0.526611, -0.139306,
		38.694103, 40.152737, 30.439106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853954, 40.830673, 30.917738>,  <39.281132, 40.521362, 30.536621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853954, 40.830673, 30.917738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.639103, 40.498764, 30.857121>,  <38.510193, 40.299618, 30.820751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.639103, 40.498764, 30.857121>,  <38.853954, 40.830673, 30.917738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639103, 40.498764, 30.857121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583672, 0.235928, 0.776959,
		-0.608947, 0.505780, -0.611040,
		-0.537132, -0.829774, -0.151542,
		38.477962, 40.249832, 30.811657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302494, 41.096142, 31.509609>,  <38.853954, 40.830673, 30.917738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302494, 41.096142, 31.509609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.006832, 41.214771, 31.751501>,  <37.829437, 41.285950, 31.896637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.006832, 41.214771, 31.751501>,  <38.302494, 41.096142, 31.509609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006832, 41.214771, 31.751501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356710, 0.589223, -0.724965,
		-0.571328, -0.751572, -0.329733,
		-0.739150, 0.296574, 0.604732,
		37.785088, 41.303741, 31.932920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584988, 40.882786, 31.237492>,  <38.302494, 41.096142, 31.509609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584988, 40.882786, 31.237492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564629, 41.205036, 31.473587>,  <37.552414, 41.398384, 31.615244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564629, 41.205036, 31.473587>,  <37.584988, 40.882786, 31.237492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564629, 41.205036, 31.473587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199221, 0.570935, -0.796457,
		-0.978632, -0.158129, 0.131436,
		-0.050901, 0.805623, 0.590238,
		37.549358, 41.446724, 31.650658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912987, 41.149525, 31.087069>,  <37.584988, 40.882786, 31.237492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912987, 41.149525, 31.087069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.151184, 41.427048, 31.249063>,  <37.294102, 41.593563, 31.346260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.151184, 41.427048, 31.249063>,  <36.912987, 41.149525, 31.087069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151184, 41.427048, 31.249063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291376, 0.656324, -0.695944,
		-0.748655, 0.296428, 0.592997,
		0.595496, 0.693808, 0.404989,
		37.329834, 41.635189, 31.370560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610909, 41.815304, 30.922041>,  <36.912987, 41.149525, 31.087069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610909, 41.815304, 30.922041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.974899, 41.934658, 31.037210>,  <37.193295, 42.006271, 31.106312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.974899, 41.934658, 31.037210>,  <36.610909, 41.815304, 30.922041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974899, 41.934658, 31.037210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015605, 0.718533, -0.695318,
		-0.414357, 0.628233, 0.658507,
		0.909981, 0.298386, 0.287926,
		37.247894, 42.024174, 31.123589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559635, 42.556057, 30.847645>,  <36.610909, 41.815304, 30.922041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559635, 42.556057, 30.847645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946198, 42.453907, 30.836081>,  <37.178135, 42.392616, 30.829142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946198, 42.453907, 30.836081>,  <36.559635, 42.556057, 30.847645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946198, 42.453907, 30.836081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105519, 0.496822, -0.861414,
		0.234348, 0.829428, 0.507080,
		0.966409, -0.255378, -0.028909,
		37.236122, 42.377293, 30.827408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894840, 43.335629, 30.894735>,  <36.559635, 42.556057, 30.847645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894840, 43.335629, 30.894735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134109, 43.043415, 30.762970>,  <37.277672, 42.868088, 30.683910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134109, 43.043415, 30.762970>,  <36.894840, 43.335629, 30.894735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134109, 43.043415, 30.762970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072128, 0.458479, -0.885774,
		0.798113, 0.506087, 0.326942,
		0.598174, -0.730529, -0.329415,
		37.313560, 42.824257, 30.664145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408825, 43.649754, 30.536770>,  <36.894840, 43.335629, 30.894735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408825, 43.649754, 30.536770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410202, 43.286076, 30.370224>,  <37.411026, 43.067871, 30.270296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410202, 43.286076, 30.370224>,  <37.408825, 43.649754, 30.536770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410202, 43.286076, 30.370224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063165, 0.415338, -0.907472,
		0.997997, 0.029420, -0.056000,
		0.003439, -0.909191, -0.416364,
		37.411232, 43.013317, 30.245316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908268, 43.664070, 29.931639>,  <37.408825, 43.649754, 30.536770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908268, 43.664070, 29.931639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691322, 43.334290, 29.866991>,  <37.561153, 43.136421, 29.828201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691322, 43.334290, 29.866991>,  <37.908268, 43.664070, 29.931639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691322, 43.334290, 29.866991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187627, 0.306376, -0.933236,
		0.818925, -0.475829, -0.320856,
		-0.542363, -0.824452, -0.161621,
		37.528614, 43.086952, 29.818504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100971, 43.446583, 29.321796>,  <37.908268, 43.664070, 29.931639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100971, 43.446583, 29.321796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763462, 43.241852, 29.386393>,  <37.560955, 43.119015, 29.425150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763462, 43.241852, 29.386393>,  <38.100971, 43.446583, 29.321796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763462, 43.241852, 29.386393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236800, 0.085011, -0.967832,
		0.481632, -0.854874, -0.192930,
		-0.843775, -0.511824, 0.161490,
		37.510330, 43.088306, 29.434839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995251, 42.947273, 28.804266>,  <38.100971, 43.446583, 29.321796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995251, 42.947273, 28.804266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.623554, 43.017155, 28.934494>,  <37.400536, 43.059082, 29.012630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.623554, 43.017155, 28.934494>,  <37.995251, 42.947273, 28.804266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623554, 43.017155, 28.934494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330043, 0.003631, -0.943959,
		-0.166094, -0.984615, 0.054285,
		-0.929239, 0.174702, 0.325568,
		37.344784, 43.069565, 29.032164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628830, 42.399925, 28.429417>,  <37.995251, 42.947273, 28.804266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628830, 42.399925, 28.429417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.399960, 42.695877, 28.570950>,  <37.262638, 42.873447, 28.655870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.399960, 42.695877, 28.570950>,  <37.628830, 42.399925, 28.429417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399960, 42.695877, 28.570950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486807, 0.040818, -0.872556,
		-0.660026, -0.671503, 0.336821,
		-0.572176, 0.739876, 0.353833,
		37.228306, 42.917839, 28.677099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964855, 42.244766, 28.204685>,  <37.628830, 42.399925, 28.429417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964855, 42.244766, 28.204685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.961727, 42.636372, 28.286139>,  <36.959850, 42.871334, 28.335011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.961727, 42.636372, 28.286139>,  <36.964855, 42.244766, 28.204685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961727, 42.636372, 28.286139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418355, 0.181759, -0.889912,
		-0.908250, -0.092147, 0.408155,
		-0.007817, 0.979016, 0.203633,
		36.959381, 42.930077, 28.347229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396744, 42.379333, 27.999924>,  <36.964855, 42.244766, 28.204685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396744, 42.379333, 27.999924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547615, 42.748352, 28.032511>,  <36.638138, 42.969765, 28.052063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547615, 42.748352, 28.032511>,  <36.396744, 42.379333, 27.999924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547615, 42.748352, 28.032511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590123, 0.307196, -0.746583,
		-0.713786, 0.233521, 0.660286,
		0.377180, 0.922550, 0.081466,
		36.660770, 43.025116, 28.056950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807148, 42.814220, 27.878185>,  <36.396744, 42.379333, 27.999924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807148, 42.814220, 27.878185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135227, 43.024055, 27.786894>,  <36.332073, 43.149956, 27.732119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135227, 43.024055, 27.786894>,  <35.807148, 42.814220, 27.878185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135227, 43.024055, 27.786894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498747, 0.460273, -0.734439,
		-0.280229, 0.716212, 0.639150,
		0.820197, 0.524585, -0.228226,
		36.381287, 43.181431, 27.718426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522198, 43.286789, 27.449696>,  <35.807148, 42.814220, 27.878185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522198, 43.286789, 27.449696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.917355, 43.306332, 27.390804>,  <36.154449, 43.318058, 27.355469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.917355, 43.306332, 27.390804>,  <35.522198, 43.286789, 27.449696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917355, 43.306332, 27.390804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154820, 0.251147, -0.955487,
		-0.009703, 0.966715, 0.255671,
		0.987895, 0.048854, -0.147230,
		36.213722, 43.320988, 27.346636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945179, 43.851509, 27.578482>,  <35.522198, 43.286789, 27.449696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945179, 43.851509, 27.578482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.550316, 43.890507, 27.527864>,  <34.313396, 43.913906, 27.497494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.550316, 43.890507, 27.527864>,  <34.945179, 43.851509, 27.578482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550316, 43.890507, 27.527864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152724, -0.343791, 0.926544,
		0.046826, 0.933972, 0.354265,
		-0.987159, 0.097491, -0.126541,
		34.254169, 43.919754, 27.489902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713142, 44.202312, 28.226463>,  <34.945179, 43.851509, 27.578482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713142, 44.202312, 28.226463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.388275, 44.036221, 28.062531>,  <34.193356, 43.936565, 27.964170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.388275, 44.036221, 28.062531>,  <34.713142, 44.202312, 28.226463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388275, 44.036221, 28.062531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312241, -0.284039, 0.906547,
		-0.492831, 0.864239, 0.101037,
		-0.812172, -0.415226, -0.409834,
		34.144623, 43.911652, 27.939581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254421, 44.339096, 28.762053>,  <34.713142, 44.202312, 28.226463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254421, 44.339096, 28.762053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.071232, 44.053661, 28.549995>,  <33.961319, 43.882401, 28.422760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.071232, 44.053661, 28.549995>,  <34.254421, 44.339096, 28.762053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071232, 44.053661, 28.549995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308519, -0.431708, 0.847611,
		-0.833714, 0.551740, -0.022447,
		-0.457970, -0.713590, -0.530144,
		33.933842, 43.839584, 28.390953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586765, 44.334366, 29.034498>,  <34.254421, 44.339096, 28.762053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586765, 44.334366, 29.034498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.684006, 43.979507, 28.877592>,  <33.742352, 43.766594, 28.783447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.684006, 43.979507, 28.877592>,  <33.586765, 44.334366, 29.034498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684006, 43.979507, 28.877592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359047, -0.457972, 0.813232,
		-0.901103, -0.056856, -0.429861,
		0.243101, -0.887146, -0.392266,
		33.756935, 43.713364, 28.759912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118649, 43.747463, 29.305149>,  <33.586765, 44.334366, 29.034498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118649, 43.747463, 29.305149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.407516, 43.529228, 29.135061>,  <33.580837, 43.398289, 29.033009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.407516, 43.529228, 29.135061>,  <33.118649, 43.747463, 29.305149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407516, 43.529228, 29.135061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165805, -0.733337, 0.659337,
		-0.671553, -0.405649, -0.620053,
		0.722167, -0.545588, -0.425216,
		33.624165, 43.365551, 29.007496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900276, 43.055321, 29.276224>,  <33.118649, 43.747463, 29.305149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900276, 43.055321, 29.276224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.297695, 43.016216, 29.253237>,  <33.536148, 42.992756, 29.239445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.297695, 43.016216, 29.253237>,  <32.900276, 43.055321, 29.276224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297695, 43.016216, 29.253237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025641, -0.687323, 0.725899,
		-0.110460, -0.719743, -0.685397,
		0.993550, -0.097757, -0.057467,
		33.595760, 42.986889, 29.235996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024872, 42.299843, 29.254295>,  <32.900276, 43.055321, 29.276224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024872, 42.299843, 29.254295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.358082, 42.489300, 29.368647>,  <33.558010, 42.602974, 29.437258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.358082, 42.489300, 29.368647>,  <33.024872, 42.299843, 29.254295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358082, 42.489300, 29.368647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040004, -0.566964, 0.822771,
		0.551782, -0.673955, -0.491244,
		0.833028, 0.473642, 0.285880,
		33.607990, 42.631393, 29.454411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535637, 41.814804, 29.554455>,  <33.024872, 42.299843, 29.254295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535637, 41.814804, 29.554455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.696510, 42.150318, 29.701252>,  <33.793034, 42.351627, 29.789331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.696510, 42.150318, 29.701252>,  <33.535637, 41.814804, 29.554455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696510, 42.150318, 29.701252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188784, -0.468201, 0.863220,
		0.895885, -0.277889, -0.346652,
		0.402182, 0.838788, 0.366994,
		33.817165, 42.401955, 29.811350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135841, 41.587353, 29.982029>,  <33.535637, 41.814804, 29.554455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135841, 41.587353, 29.982029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057148, 41.959324, 30.106312>,  <34.009933, 42.182507, 30.180882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057148, 41.959324, 30.106312>,  <34.135841, 41.587353, 29.982029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057148, 41.959324, 30.106312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208399, -0.269998, 0.940038,
		0.958054, 0.249684, -0.140678,
		-0.196730, 0.929924, 0.310706,
		33.998131, 42.238300, 30.199524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451355, 41.642315, 30.576021>,  <34.135841, 41.587353, 29.982029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451355, 41.642315, 30.576021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.213924, 41.959934, 30.628426>,  <34.071468, 42.150505, 30.659868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.213924, 41.959934, 30.628426>,  <34.451355, 41.642315, 30.576021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213924, 41.959934, 30.628426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045093, -0.129722, 0.990524,
		0.803515, 0.593857, 0.041193,
		-0.593574, 0.794044, 0.131012,
		34.035851, 42.198147, 30.667728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800495, 42.280773, 30.902889>,  <34.451355, 41.642315, 30.576021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800495, 42.280773, 30.902889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409023, 42.310276, 30.979567>,  <34.174141, 42.327976, 31.025574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409023, 42.310276, 30.979567>,  <34.800495, 42.280773, 30.902889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409023, 42.310276, 30.979567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200912, 0.149905, 0.968072,
		0.042663, 0.985946, -0.161527,
		-0.978680, 0.073754, 0.191693,
		34.115417, 42.332401, 31.037075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663551, 42.898586, 31.374031>,  <34.800495, 42.280773, 30.902889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663551, 42.898586, 31.374031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.367367, 42.632908, 31.415136>,  <34.189655, 42.473499, 31.439800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.367367, 42.632908, 31.415136>,  <34.663551, 42.898586, 31.374031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367367, 42.632908, 31.415136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034988, 0.114600, 0.992795,
		-0.671189, 0.738721, -0.061618,
		-0.740460, -0.664198, 0.102765,
		34.145229, 42.433647, 31.445967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.218311, 45.132042, 24.098240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992104, 44.809872, 24.027269>,  <33.856380, 44.616570, 23.984686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992104, 44.809872, 24.027269>,  <34.218311, 45.132042, 24.098240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992104, 44.809872, 24.027269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178058, -0.090824, 0.979819,
		-0.805287, 0.585696, -0.092050,
		-0.565516, -0.805426, -0.177427,
		33.822449, 44.568245, 23.974041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603687, 45.228848, 24.489489>,  <34.218311, 45.132042, 24.098240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603687, 45.228848, 24.489489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593811, 44.833088, 24.432249>,  <33.587887, 44.595631, 24.397905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593811, 44.833088, 24.432249>,  <33.603687, 45.228848, 24.489489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593811, 44.833088, 24.432249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035389, -0.142189, 0.989207,
		-0.999069, 0.029488, -0.031504,
		-0.024690, -0.989401, -0.143100,
		33.586403, 44.536266, 24.389318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059383, 44.999332, 24.856703>,  <33.603687, 45.228848, 24.489489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059383, 44.999332, 24.856703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281475, 44.673248, 24.790798>,  <33.414730, 44.477596, 24.751255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281475, 44.673248, 24.790798>,  <33.059383, 44.999332, 24.856703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281475, 44.673248, 24.790798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138012, -0.105045, 0.984844,
		-0.820165, -0.569555, 0.054185,
		0.555231, -0.815213, -0.164760,
		33.448044, 44.428684, 24.741371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809704, 44.332336, 25.257517>,  <33.059383, 44.999332, 24.856703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809704, 44.332336, 25.257517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202896, 44.283699, 25.202444>,  <33.438812, 44.254517, 25.169401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202896, 44.283699, 25.202444>,  <32.809704, 44.332336, 25.257517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202896, 44.283699, 25.202444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124191, -0.112342, 0.985878,
		-0.135354, -0.986201, -0.095328,
		0.982984, -0.121604, -0.137683,
		33.497791, 44.247219, 25.161139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877697, 43.808525, 25.684027>,  <32.809704, 44.332336, 25.257517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877697, 43.808525, 25.684027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252796, 43.928005, 25.613146>,  <33.477856, 43.999691, 25.570618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252796, 43.928005, 25.613146>,  <32.877697, 43.808525, 25.684027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252796, 43.928005, 25.613146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230819, -0.154766, 0.960609,
		0.259505, -0.941716, -0.214077,
		0.937753, 0.298696, -0.177203,
		33.534122, 44.017612, 25.559984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208141, 43.359657, 26.169966>,  <32.877697, 43.808525, 25.684027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208141, 43.359657, 26.169966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442780, 43.667252, 26.068323>,  <33.583561, 43.851807, 26.007338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442780, 43.667252, 26.068323>,  <33.208141, 43.359657, 26.169966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442780, 43.667252, 26.068323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228535, 0.143839, 0.962851,
		0.776967, -0.622877, -0.091365,
		0.586596, 0.768983, -0.254107,
		33.618759, 43.897945, 25.992090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903706, 43.167782, 26.320324>,  <33.208141, 43.359657, 26.169966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903706, 43.167782, 26.320324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887417, 43.567032, 26.302008>,  <33.877644, 43.806580, 26.291019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887417, 43.567032, 26.302008>,  <33.903706, 43.167782, 26.320324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887417, 43.567032, 26.302008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282148, 0.055449, 0.957767,
		0.958506, 0.026085, -0.283876,
		-0.040724, 0.998121, -0.045788,
		33.875198, 43.866467, 26.288271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384796, 43.240906, 26.720997>,  <33.903706, 43.167782, 26.320324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384796, 43.240906, 26.720997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209309, 43.600174, 26.709602>,  <34.104015, 43.815735, 26.702766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209309, 43.600174, 26.709602>,  <34.384796, 43.240906, 26.720997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209309, 43.600174, 26.709602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244400, 0.149764, 0.958039,
		0.864750, 0.413350, -0.285218,
		-0.438721, 0.898172, -0.028486,
		34.077694, 43.869625, 26.701057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843361, 43.748352, 26.861326>,  <34.384796, 43.240906, 26.720997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843361, 43.748352, 26.861326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482574, 43.886330, 26.965225>,  <34.266102, 43.969116, 27.027565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482574, 43.886330, 26.965225>,  <34.843361, 43.748352, 26.861326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482574, 43.886330, 26.965225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269947, -0.019051, 0.962687,
		0.337022, 0.938430, -0.075933,
		-0.901967, 0.344944, 0.259747,
		34.211983, 43.989815, 27.043150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625240, 43.906948, 26.818878>,  <34.843361, 43.748352, 26.861326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625240, 43.906948, 26.818878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968800, 43.706059, 26.858999>,  <36.174934, 43.585526, 26.883072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968800, 43.706059, 26.858999>,  <35.625240, 43.906948, 26.818878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968800, 43.706059, 26.858999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258670, 0.256368, -0.931324,
		0.442022, 0.825859, 0.350106,
		0.858898, -0.502227, 0.100305,
		36.226471, 43.555389, 26.889091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067707, 44.349064, 26.521122>,  <35.625240, 43.906948, 26.818878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067707, 44.349064, 26.521122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256310, 43.997673, 26.490244>,  <36.369473, 43.786839, 26.471716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256310, 43.997673, 26.490244>,  <36.067707, 44.349064, 26.521122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256310, 43.997673, 26.490244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373087, 0.278032, -0.885158,
		0.799054, 0.388556, 0.458842,
		0.471506, -0.878477, -0.077197,
		36.397762, 43.734131, 26.467085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794613, 44.507824, 26.365219>,  <36.067707, 44.349064, 26.521122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794613, 44.507824, 26.365219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710014, 44.136990, 26.241426>,  <36.659256, 43.914490, 26.167150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710014, 44.136990, 26.241426>,  <36.794613, 44.507824, 26.365219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710014, 44.136990, 26.241426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305769, 0.237988, -0.921882,
		0.928317, -0.289607, 0.233140,
		-0.211499, -0.927086, -0.309482,
		36.646564, 43.858864, 26.148582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294392, 44.351982, 25.904371>,  <36.794613, 44.507824, 26.365219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294392, 44.351982, 25.904371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024815, 44.071144, 25.812403>,  <36.863068, 43.902641, 25.757221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024815, 44.071144, 25.812403>,  <37.294392, 44.351982, 25.904371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024815, 44.071144, 25.812403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157660, 0.167367, -0.973207,
		0.721765, -0.692135, -0.002103,
		-0.673943, -0.702095, -0.229921,
		36.822632, 43.860516, 25.743427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601593, 43.973423, 25.409792>,  <37.294392, 44.351982, 25.904371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601593, 43.973423, 25.409792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216286, 43.881897, 25.353571>,  <36.985100, 43.826981, 25.319838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216286, 43.881897, 25.353571>,  <37.601593, 43.973423, 25.409792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216286, 43.881897, 25.353571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108356, 0.147715, -0.983076,
		0.245704, -0.962197, -0.117496,
		-0.963270, -0.228814, -0.140555,
		36.927303, 43.813251, 25.311405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568932, 43.476768, 24.837622>,  <37.601593, 43.973423, 25.409792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568932, 43.476768, 24.837622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204132, 43.636475, 24.875250>,  <36.985252, 43.732300, 24.897827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204132, 43.636475, 24.875250>,  <37.568932, 43.476768, 24.837622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204132, 43.636475, 24.875250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088479, 0.032451, -0.995549,
		-0.400544, -0.916260, 0.005731,
		-0.911996, 0.399268, 0.094068,
		36.930534, 43.756256, 24.903471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164513, 43.102913, 24.428644>,  <37.568932, 43.476768, 24.837622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164513, 43.102913, 24.428644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973965, 43.450764, 24.480524>,  <36.859634, 43.659473, 24.511652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973965, 43.450764, 24.480524>,  <37.164513, 43.102913, 24.428644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973965, 43.450764, 24.480524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142380, 0.069266, -0.987385,
		-0.867638, -0.488831, 0.090821,
		-0.476374, 0.869624, 0.129698,
		36.831051, 43.711651, 24.519434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434383, 43.141914, 23.971560>,  <37.164513, 43.102913, 24.428644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434383, 43.141914, 23.971560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542599, 43.518299, 24.052954>,  <36.607529, 43.744129, 24.101789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542599, 43.518299, 24.052954>,  <36.434383, 43.141914, 23.971560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542599, 43.518299, 24.052954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152250, 0.250524, -0.956064,
		-0.950594, 0.227673, 0.211038,
		0.270539, 0.940958, 0.203483,
		36.623760, 43.800587, 24.113998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089878, 43.532452, 23.475584>,  <36.434383, 43.141914, 23.971560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089878, 43.532452, 23.475584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305740, 43.836803, 23.619715>,  <36.435257, 44.019413, 23.706194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305740, 43.836803, 23.619715>,  <36.089878, 43.532452, 23.475584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305740, 43.836803, 23.619715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006989, 0.423935, -0.905666,
		-0.841858, 0.491264, 0.223460,
		0.539654, 0.760880, 0.360326,
		36.467636, 44.065067, 23.727812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716583, 44.172081, 23.222399>,  <36.089878, 43.532452, 23.475584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716583, 44.172081, 23.222399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100048, 44.252014, 23.303425>,  <36.330128, 44.299973, 23.352041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100048, 44.252014, 23.303425>,  <35.716583, 44.172081, 23.222399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100048, 44.252014, 23.303425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084179, 0.480855, -0.872750,
		-0.271806, 0.853725, 0.444156,
		0.958663, 0.199829, 0.202565,
		36.387646, 44.311962, 23.364195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968964, 44.883301, 22.945127>,  <35.716583, 44.172081, 23.222399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968964, 44.883301, 22.945127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286995, 44.644321, 22.986885>,  <36.477814, 44.500935, 23.011940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286995, 44.644321, 22.986885>,  <35.968964, 44.883301, 22.945127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286995, 44.644321, 22.986885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351311, 0.313358, -0.882263,
		0.494396, 0.738145, 0.459036,
		0.795080, -0.597452, 0.104396,
		36.525520, 44.465084, 23.018204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567364, 45.292004, 22.812498>,  <35.968964, 44.883301, 22.945127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567364, 45.292004, 22.812498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666134, 44.908344, 22.757271>,  <36.725395, 44.678150, 22.724134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666134, 44.908344, 22.757271>,  <36.567364, 45.292004, 22.812498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666134, 44.908344, 22.757271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385290, 0.227911, -0.894208,
		0.889144, 0.167610, 0.425828,
		0.246929, -0.959147, -0.138067,
		36.740211, 44.620602, 22.715851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175320, 45.374371, 22.363720>,  <36.567364, 45.292004, 22.812498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175320, 45.374371, 22.363720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076641, 44.990101, 22.312733>,  <37.017433, 44.759541, 22.282141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076641, 44.990101, 22.312733>,  <37.175320, 45.374371, 22.363720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076641, 44.990101, 22.312733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439971, 0.006168, -0.897991,
		0.863460, -0.277618, 0.421146,
		-0.246701, -0.960672, -0.127470,
		37.002632, 44.701900, 22.274492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707325, 45.169567, 21.878605>,  <37.175320, 45.374371, 22.363720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707325, 45.169567, 21.878605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406601, 44.906536, 21.859083>,  <37.226166, 44.748718, 21.847370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406601, 44.906536, 21.859083>,  <37.707325, 45.169567, 21.878605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406601, 44.906536, 21.859083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152555, -0.101452, -0.983074,
		0.641493, -0.746527, 0.176589,
		-0.751807, -0.657575, -0.048806,
		37.181057, 44.709263, 21.844442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.882658, 37.686699, 21.522606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.084091, 38.018055, 21.620731>,  <32.204952, 38.216869, 21.679607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.084091, 38.018055, 21.620731>,  <31.882658, 37.686699, 21.522606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084091, 38.018055, 21.620731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151655, -0.364298, 0.918851,
		0.850532, -0.425515, -0.309083,
		0.503583, 0.828386, 0.245316,
		32.235165, 38.266571, 21.694326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449764, 37.545841, 22.001955>,  <31.882658, 37.686699, 21.522606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449764, 37.545841, 22.001955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.407200, 37.936859, 22.074711>,  <32.381660, 38.171471, 22.118364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.407200, 37.936859, 22.074711>,  <32.449764, 37.545841, 22.001955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407200, 37.936859, 22.074711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206898, -0.200689, 0.957558,
		0.972559, 0.064259, 0.223607,
		-0.106407, 0.977545, 0.181887,
		32.375278, 38.230122, 22.129276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919888, 37.677601, 22.592379>,  <32.449764, 37.545841, 22.001955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919888, 37.677601, 22.592379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.661846, 37.982605, 22.572725>,  <32.507019, 38.165607, 22.560934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.661846, 37.982605, 22.572725>,  <32.919888, 37.677601, 22.592379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661846, 37.982605, 22.572725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049054, 0.022839, 0.998535,
		0.762516, 0.646571, 0.022671,
		-0.645106, 0.762511, -0.049132,
		32.468315, 38.211357, 22.557985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086868, 38.110592, 23.142397>,  <32.919888, 37.677601, 22.592379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086868, 38.110592, 23.142397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.732662, 38.279739, 23.065409>,  <32.520138, 38.381229, 23.019217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.732662, 38.279739, 23.065409>,  <33.086868, 38.110592, 23.142397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732662, 38.279739, 23.065409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121922, 0.188245, 0.974525,
		0.448331, 0.886421, -0.115136,
		-0.885513, 0.422872, -0.192470,
		32.467007, 38.406601, 23.007668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105816, 38.709740, 23.429195>,  <33.086868, 38.110592, 23.142397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105816, 38.709740, 23.429195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716942, 38.626141, 23.386898>,  <32.483620, 38.575981, 23.361519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716942, 38.626141, 23.386898>,  <33.105816, 38.709740, 23.429195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716942, 38.626141, 23.386898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123334, 0.072964, 0.989679,
		-0.199125, 0.975190, -0.096711,
		-0.972182, -0.208998, -0.105746,
		32.425285, 38.563442, 23.355175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718216, 39.279728, 23.759426>,  <33.105816, 38.709740, 23.429195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718216, 39.279728, 23.759426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502724, 38.943207, 23.741604>,  <32.373428, 38.741295, 23.730911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502724, 38.943207, 23.741604>,  <32.718216, 39.279728, 23.759426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502724, 38.943207, 23.741604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091465, 0.005834, 0.995791,
		-0.837501, 0.540535, -0.080093,
		-0.538727, -0.841302, -0.044554,
		32.341106, 38.690815, 23.728237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053005, 39.422913, 24.258583>,  <32.718216, 39.279728, 23.759426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053005, 39.422913, 24.258583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.080017, 39.026588, 24.211716>,  <32.096222, 38.788792, 24.183596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.080017, 39.026588, 24.211716>,  <32.053005, 39.422913, 24.258583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080017, 39.026588, 24.211716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109256, -0.124076, 0.986239,
		-0.991717, -0.053796, -0.116631,
		0.067526, -0.990813, -0.117171,
		32.100273, 38.729343, 24.176565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506966, 39.042801, 24.626511>,  <32.053005, 39.422913, 24.258583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506966, 39.042801, 24.626511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813906, 38.793278, 24.567135>,  <31.998070, 38.643562, 24.531509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813906, 38.793278, 24.567135>,  <31.506966, 39.042801, 24.626511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813906, 38.793278, 24.567135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128897, -0.076708, 0.988687,
		-0.628140, -0.777802, 0.021546,
		0.767350, -0.623811, -0.148440,
		32.044109, 38.606136, 24.522602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625687, 38.922928, 25.318113>,  <31.506966, 39.042801, 24.626511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625687, 38.922928, 25.318113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932383, 38.721989, 25.158236>,  <32.116402, 38.601425, 25.062309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932383, 38.721989, 25.158236>,  <31.625687, 38.922928, 25.318113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932383, 38.721989, 25.158236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255468, -0.332422, 0.907872,
		-0.588937, -0.798210, -0.126547,
		0.766740, -0.502350, -0.399693,
		32.162403, 38.571285, 25.038328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549673, 38.220348, 25.593769>,  <31.625687, 38.922928, 25.318113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549673, 38.220348, 25.593769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926195, 38.289146, 25.477591>,  <32.152107, 38.330425, 25.407885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926195, 38.289146, 25.477591>,  <31.549673, 38.220348, 25.593769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926195, 38.289146, 25.477591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291274, 0.020967, 0.956410,
		0.170591, -0.984874, -0.030363,
		0.941307, 0.171998, -0.290445,
		32.208588, 38.340744, 25.390457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955879, 37.799980, 25.965965>,  <31.549673, 38.220348, 25.593769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955879, 37.799980, 25.965965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.225971, 38.069904, 25.846840>,  <32.388027, 38.231857, 25.775364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.225971, 38.069904, 25.846840>,  <31.955879, 37.799980, 25.965965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225971, 38.069904, 25.846840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494111, -0.114044, 0.861887,
		0.547647, -0.729125, -0.410438,
		0.675232, 0.674811, -0.297813,
		32.428539, 38.272346, 25.757496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656471, 37.485188, 26.028921>,  <31.955879, 37.799980, 25.965965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656471, 37.485188, 26.028921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689869, 37.882977, 26.054377>,  <32.709908, 38.121651, 26.069651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689869, 37.882977, 26.054377>,  <32.656471, 37.485188, 26.028921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689869, 37.882977, 26.054377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537555, -0.098722, 0.837430,
		0.839085, -0.035710, -0.542827,
		0.083493, 0.994474, 0.063640,
		32.714916, 38.181320, 26.073469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461075, 37.764263, 26.135025>,  <32.656471, 37.485188, 26.028921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461075, 37.764263, 26.135025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194736, 38.025696, 26.278957>,  <33.034935, 38.182556, 26.365316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194736, 38.025696, 26.278957>,  <33.461075, 37.764263, 26.135025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194736, 38.025696, 26.278957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455081, -0.026403, 0.890058,
		0.591227, 0.756395, -0.279853,
		-0.665847, 0.653582, 0.359831,
		32.994984, 38.221771, 26.386908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875443, 38.081364, 26.559744>,  <33.461075, 37.764263, 26.135025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875443, 38.081364, 26.559744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519192, 38.229118, 26.665831>,  <33.305443, 38.317772, 26.729483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.519192, 38.229118, 26.665831>,  <33.875443, 38.081364, 26.559744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519192, 38.229118, 26.665831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283701, -0.004459, 0.958902,
		0.355391, 0.929264, -0.100825,
		-0.890624, 0.369390, 0.265218,
		33.252003, 38.339935, 26.745396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203560, 38.637779, 26.299036>,  <33.875443, 38.081364, 26.559744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203560, 38.637779, 26.299036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.594372, 38.697926, 26.238625>,  <34.828857, 38.734013, 26.202377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.594372, 38.697926, 26.238625>,  <34.203560, 38.637779, 26.299036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594372, 38.697926, 26.238625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153389, 0.004162, -0.988157,
		-0.147959, 0.988621, 0.027132,
		0.977026, 0.150368, -0.151028,
		34.887478, 38.743034, 26.193316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148872, 39.133190, 25.774906>,  <34.203560, 38.637779, 26.299036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148872, 39.133190, 25.774906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522575, 38.990852, 25.765675>,  <34.746799, 38.905449, 25.760136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522575, 38.990852, 25.765675>,  <34.148872, 39.133190, 25.774906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522575, 38.990852, 25.765675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023839, 0.002247, -0.999713,
		0.355794, 0.934543, -0.006384,
		0.934260, -0.355844, -0.023078,
		34.802853, 38.884098, 25.758751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631107, 39.538010, 25.272493>,  <34.148872, 39.133190, 25.774906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631107, 39.538010, 25.272493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803165, 39.176910, 25.274067>,  <34.906399, 38.960251, 25.275011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803165, 39.176910, 25.274067>,  <34.631107, 39.538010, 25.272493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803165, 39.176910, 25.274067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144339, 0.064470, -0.987426,
		0.891146, 0.425304, 0.158034,
		0.430145, -0.902751, 0.003935,
		34.932209, 38.906086, 25.275248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207428, 39.585361, 24.822592>,  <34.631107, 39.538010, 25.272493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207428, 39.585361, 24.822592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145691, 39.194595, 24.881680>,  <35.108646, 38.960136, 24.917133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145691, 39.194595, 24.881680>,  <35.207428, 39.585361, 24.822592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145691, 39.194595, 24.881680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294400, -0.188194, -0.936969,
		0.943136, -0.101130, 0.316650,
		-0.154347, -0.976911, 0.147720,
		35.099388, 38.901524, 24.925995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770145, 39.310242, 24.510508>,  <35.207428, 39.585361, 24.822592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770145, 39.310242, 24.510508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496460, 39.018921, 24.525629>,  <35.332249, 38.844128, 24.534702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496460, 39.018921, 24.525629>,  <35.770145, 39.310242, 24.510508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496460, 39.018921, 24.525629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102631, -0.147480, -0.983726,
		0.722027, -0.669195, 0.175654,
		-0.684210, -0.728305, 0.037805,
		35.291199, 38.800430, 24.536970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027691, 38.794861, 24.167212>,  <35.770145, 39.310242, 24.510508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027691, 38.794861, 24.167212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632225, 38.737705, 24.148800>,  <35.394943, 38.703411, 24.137753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632225, 38.737705, 24.148800>,  <36.027691, 38.794861, 24.167212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632225, 38.737705, 24.148800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070681, -0.172574, -0.982457,
		0.132436, -0.974578, 0.180718,
		-0.988668, -0.142886, -0.046029,
		35.335625, 38.694839, 24.134991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009228, 38.162987, 23.758621>,  <36.027691, 38.794861, 24.167212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009228, 38.162987, 23.758621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652031, 38.342628, 23.746834>,  <35.437714, 38.450413, 23.739761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652031, 38.342628, 23.746834>,  <36.009228, 38.162987, 23.758621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652031, 38.342628, 23.746834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053585, -0.171100, -0.983796,
		-0.446874, -0.876941, 0.176856,
		-0.892991, 0.449109, -0.029469,
		35.384132, 38.477360, 23.737993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671841, 37.678391, 23.371670>,  <36.009228, 38.162987, 23.758621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671841, 37.678391, 23.371670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.469635, 38.023277, 23.358763>,  <35.348312, 38.230209, 23.351019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.469635, 38.023277, 23.358763>,  <35.671841, 37.678391, 23.371670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469635, 38.023277, 23.358763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118798, -0.106592, -0.987180,
		-0.854604, -0.495196, 0.156313,
		-0.505509, 0.862218, -0.032266,
		35.317982, 38.281944, 23.349083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146473, 37.513126, 22.890610>,  <35.671841, 37.678391, 23.371670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146473, 37.513126, 22.890610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215240, 37.907032, 22.901005>,  <35.256500, 38.143375, 22.907242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215240, 37.907032, 22.901005>,  <35.146473, 37.513126, 22.890610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215240, 37.907032, 22.901005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117130, 0.046630, -0.992021,
		-0.978123, 0.167502, 0.123363,
		0.171918, 0.984768, 0.025990,
		35.266815, 38.202461, 22.908802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615585, 37.781734, 22.498569>,  <35.146473, 37.513126, 22.890610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615585, 37.781734, 22.498569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.840878, 38.110954, 22.527845>,  <34.976055, 38.308487, 22.545412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.840878, 38.110954, 22.527845>,  <34.615585, 37.781734, 22.498569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840878, 38.110954, 22.527845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110012, 0.162483, -0.980559,
		-0.818943, 0.544231, 0.182061,
		0.563232, 0.823051, 0.073192,
		35.009846, 38.357868, 22.549803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216305, 38.330944, 22.243658>,  <34.615585, 37.781734, 22.498569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216305, 38.330944, 22.243658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603146, 38.422607, 22.199472>,  <34.835251, 38.477608, 22.172962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603146, 38.422607, 22.199472>,  <34.216305, 38.330944, 22.243658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603146, 38.422607, 22.199472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172631, 0.272234, -0.946619,
		-0.186858, 0.934544, 0.302838,
		0.967100, 0.229162, -0.110463,
		34.893276, 38.491356, 22.166334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173721, 38.902340, 21.744921>,  <34.216305, 38.330944, 22.243658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173721, 38.902340, 21.744921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556416, 38.786316, 21.735809>,  <34.786034, 38.716702, 21.730343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556416, 38.786316, 21.735809>,  <34.173721, 38.902340, 21.744921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556416, 38.786316, 21.735809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035162, 0.192986, -0.980571,
		0.288823, 0.937347, 0.194836,
		0.956737, -0.290063, -0.022779,
		34.843437, 38.699299, 21.728975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616634, 39.446510, 21.414356>,  <34.173721, 38.902340, 21.744921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616634, 39.446510, 21.414356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828728, 39.111061, 21.364462>,  <34.955982, 38.909790, 21.334524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828728, 39.111061, 21.364462>,  <34.616634, 39.446510, 21.414356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828728, 39.111061, 21.364462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138869, 0.231038, -0.962983,
		0.836401, 0.493285, 0.238963,
		0.530235, -0.838625, -0.124738,
		34.987797, 38.859474, 21.327040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208454, 39.663033, 20.995996>,  <34.616634, 39.446510, 21.414356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208454, 39.663033, 20.995996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.188774, 39.266876, 20.944298>,  <35.176968, 39.029182, 20.913279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.188774, 39.266876, 20.944298>,  <35.208454, 39.663033, 20.995996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188774, 39.266876, 20.944298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149953, 0.120614, -0.981309,
		0.987468, -0.067663, 0.142578,
		-0.049201, -0.990391, -0.129248,
		35.174015, 38.969757, 20.905523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964340, 39.507057, 20.940308>,  <35.208454, 39.663033, 20.995996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964340, 39.507057, 20.940308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291275, 39.737480, 20.936012>,  <36.487434, 39.875732, 20.933435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291275, 39.737480, 20.936012>,  <35.964340, 39.507057, 20.940308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291275, 39.737480, 20.936012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264262, -0.358257, 0.895443,
		0.511980, -0.734717, -0.445048,
		0.817339, 0.576058, -0.010738,
		36.536476, 39.910297, 20.932791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381729, 39.073467, 21.189842>,  <35.964340, 39.507057, 20.940308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381729, 39.073467, 21.189842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552097, 39.434189, 21.219059>,  <36.654320, 39.650623, 21.236589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552097, 39.434189, 21.219059>,  <36.381729, 39.073467, 21.189842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552097, 39.434189, 21.219059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408610, -0.263755, 0.873768,
		0.807236, -0.342310, -0.480826,
		0.425920, 0.901808, 0.073041,
		36.679874, 39.704731, 21.240971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124027, 38.974987, 21.250910>,  <36.381729, 39.073467, 21.189842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124027, 38.974987, 21.250910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044525, 39.329926, 21.417336>,  <36.996822, 39.542889, 21.517191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044525, 39.329926, 21.417336>,  <37.124027, 38.974987, 21.250910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044525, 39.329926, 21.417336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404601, -0.312374, 0.859488,
		0.892634, 0.339166, -0.296937,
		-0.198754, 0.887349, 0.416063,
		36.984898, 39.596130, 21.542154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678799, 39.026474, 21.638613>,  <37.124027, 38.974987, 21.250910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678799, 39.026474, 21.638613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442707, 39.311333, 21.790655>,  <37.301052, 39.482246, 21.881882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442707, 39.311333, 21.790655>,  <37.678799, 39.026474, 21.638613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442707, 39.311333, 21.790655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412868, -0.138310, 0.900228,
		0.693664, 0.688275, -0.212387,
		-0.590229, 0.712143, 0.380107,
		37.265636, 39.524975, 21.904688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174065, 39.470181, 22.003620>,  <37.678799, 39.026474, 21.638613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174065, 39.470181, 22.003620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815029, 39.533924, 22.168028>,  <37.599609, 39.572170, 22.266672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815029, 39.533924, 22.168028>,  <38.174065, 39.470181, 22.003620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815029, 39.533924, 22.168028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415252, -0.007352, 0.909677,
		0.147990, 0.987193, -0.059577,
		-0.897588, 0.159363, 0.411021,
		37.545753, 39.581734, 22.291334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253918, 40.052738, 22.423273>,  <38.174065, 39.470181, 22.003620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253918, 40.052738, 22.423273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932190, 39.845276, 22.539244>,  <37.739151, 39.720798, 22.608826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932190, 39.845276, 22.539244>,  <38.253918, 40.052738, 22.423273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932190, 39.845276, 22.539244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291332, 0.081034, 0.953184,
		-0.517872, 0.851132, 0.085925,
		-0.804322, -0.518660, 0.289928,
		37.690895, 39.689678, 22.626223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946602, 40.416836, 23.032475>,  <38.253918, 40.052738, 22.423273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946602, 40.416836, 23.032475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790691, 40.050762, 23.073469>,  <37.697144, 39.831116, 23.098066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790691, 40.050762, 23.073469>,  <37.946602, 40.416836, 23.032475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790691, 40.050762, 23.073469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242673, 0.005278, 0.970094,
		-0.888359, 0.402993, 0.220034,
		-0.389779, -0.915188, 0.102484,
		37.673756, 39.776207, 23.104214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672161, 40.468323, 23.661114>,  <37.946602, 40.416836, 23.032475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672161, 40.468323, 23.661114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681950, 40.075924, 23.584120>,  <37.687820, 39.840485, 23.537924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681950, 40.075924, 23.584120>,  <37.672161, 40.468323, 23.661114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681950, 40.075924, 23.584120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341465, -0.172760, 0.923881,
		-0.939576, -0.088331, 0.330749,
		0.024467, -0.980995, -0.192483,
		37.689289, 39.781624, 23.526375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227898, 40.164795, 24.203144>,  <37.672161, 40.468323, 23.661114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227898, 40.164795, 24.203144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480370, 39.886219, 24.066572>,  <37.631855, 39.719074, 23.984629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480370, 39.886219, 24.066572>,  <37.227898, 40.164795, 24.203144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480370, 39.886219, 24.066572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246829, -0.236955, 0.939642,
		-0.735311, -0.677361, 0.022340,
		0.631183, -0.696444, -0.341429,
		37.669724, 39.677284, 23.964144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968971, 39.567814, 24.518795>,  <37.227898, 40.164795, 24.203144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968971, 39.567814, 24.518795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340145, 39.480011, 24.398293>,  <37.562851, 39.427330, 24.325991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340145, 39.480011, 24.398293>,  <36.968971, 39.567814, 24.518795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340145, 39.480011, 24.398293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252293, -0.225072, 0.941112,
		-0.274386, -0.949294, -0.153471,
		0.927934, -0.219508, -0.301257,
		37.618526, 39.414158, 24.307915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167599, 38.937202, 24.701466>,  <36.968971, 39.567814, 24.518795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167599, 38.937202, 24.701466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.531487, 39.099903, 24.668076>,  <37.749817, 39.197525, 24.648041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.531487, 39.099903, 24.668076>,  <37.167599, 38.937202, 24.701466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531487, 39.099903, 24.668076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228591, -0.322759, 0.918462,
		0.346646, -0.854621, -0.386599,
		0.909716, 0.406755, -0.083476,
		37.804401, 39.221928, 24.643032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718426, 38.413212, 24.903854>,  <37.167599, 38.937202, 24.701466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718426, 38.413212, 24.903854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906952, 38.765934, 24.910515>,  <38.020069, 38.977570, 24.914511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906952, 38.765934, 24.910515>,  <37.718426, 38.413212, 24.903854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906952, 38.765934, 24.910515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456565, -0.260093, 0.850823,
		0.754593, -0.393403, -0.525188,
		0.471314, 0.881808, 0.016650,
		38.048347, 39.030476, 24.915510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448483, 38.196674, 25.111691>,  <37.718426, 38.413212, 24.903854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448483, 38.196674, 25.111691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360050, 38.580414, 25.181858>,  <38.306992, 38.810658, 25.223959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360050, 38.580414, 25.181858>,  <38.448483, 38.196674, 25.111691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360050, 38.580414, 25.181858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441027, -0.062083, 0.895344,
		0.869839, 0.275305, -0.409374,
		-0.221077, 0.959350, 0.175419,
		38.293728, 38.868217, 25.234484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050606, 38.444386, 25.535112>,  <38.448483, 38.196674, 25.111691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050606, 38.444386, 25.535112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766216, 38.713203, 25.617931>,  <38.595581, 38.874493, 25.667624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766216, 38.713203, 25.617931>,  <39.050606, 38.444386, 25.535112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766216, 38.713203, 25.617931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363640, 0.099349, 0.926227,
		0.601895, 0.733817, -0.315017,
		-0.710977, 0.672044, 0.207048,
		38.552921, 38.914818, 25.680046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.049168, 44.602577, 21.580280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659927, 44.542004, 21.510843>,  <37.426384, 44.505661, 21.469181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659927, 44.542004, 21.510843>,  <38.049168, 44.602577, 21.580280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659927, 44.542004, 21.510843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226764, -0.497027, -0.837581,
		0.040555, -0.854419, 0.517999,
		-0.973105, -0.151431, -0.173595,
		37.367996, 44.496574, 21.458765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135174, 43.991051, 21.285501>,  <38.049168, 44.602577, 21.580280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135174, 43.991051, 21.285501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777557, 44.141724, 21.188503>,  <37.562988, 44.232128, 21.130304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777557, 44.141724, 21.188503>,  <38.135174, 43.991051, 21.285501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777557, 44.141724, 21.188503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047876, -0.457856, -0.887736,
		-0.445420, -0.805282, 0.391308,
		-0.894041, 0.376681, -0.242492,
		37.509346, 44.254730, 21.115755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763870, 43.492283, 20.972956>,  <38.135174, 43.991051, 21.285501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763870, 43.492283, 20.972956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.559563, 43.813602, 20.850433>,  <37.436977, 44.006393, 20.776920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.559563, 43.813602, 20.850433>,  <37.763870, 43.492283, 20.972956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559563, 43.813602, 20.850433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005845, -0.353035, -0.935592,
		-0.859697, -0.479664, 0.175625,
		-0.510771, 0.803299, -0.306306,
		37.406330, 44.054592, 20.758541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363628, 43.176369, 20.514734>,  <37.763870, 43.492283, 20.972956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363628, 43.176369, 20.514734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360958, 43.565880, 20.423775>,  <37.359356, 43.799587, 20.369200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360958, 43.565880, 20.423775>,  <37.363628, 43.176369, 20.514734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360958, 43.565880, 20.423775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121450, -0.226509, -0.966408,
		-0.992575, 0.021166, 0.119777,
		-0.006676, 0.973779, -0.227398,
		37.358955, 43.858013, 20.355555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763546, 43.224991, 20.013956>,  <37.363628, 43.176369, 20.514734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763546, 43.224991, 20.013956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972885, 43.563820, 19.976912>,  <37.098488, 43.767117, 19.954685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972885, 43.563820, 19.976912>,  <36.763546, 43.224991, 20.013956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972885, 43.563820, 19.976912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124529, -0.183547, -0.975091,
		-0.842971, 0.498778, -0.201544,
		0.523347, 0.847072, -0.092613,
		37.129890, 43.817940, 19.949127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302292, 43.698021, 19.656273>,  <36.763546, 43.224991, 20.013956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302292, 43.698021, 19.656273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679085, 43.818417, 19.596848>,  <36.905159, 43.890656, 19.561192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679085, 43.818417, 19.596848>,  <36.302292, 43.698021, 19.656273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679085, 43.818417, 19.596848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109772, -0.142021, -0.983758,
		-0.317203, 0.942992, -0.100741,
		0.941983, 0.300992, -0.148563,
		36.961681, 43.908714, 19.552279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326416, 44.337029, 19.273075>,  <36.302292, 43.698021, 19.656273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326416, 44.337029, 19.273075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.673206, 44.156933, 19.187630>,  <36.881283, 44.048874, 19.136362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.673206, 44.156933, 19.187630>,  <36.326416, 44.337029, 19.273075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673206, 44.156933, 19.187630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174293, 0.127619, -0.976389,
		0.466873, 0.883739, 0.032168,
		0.866978, -0.450243, -0.213611,
		36.933300, 44.021858, 19.123547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546753, 44.639931, 18.605820>,  <36.326416, 44.337029, 19.273075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546753, 44.639931, 18.605820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843906, 44.377037, 18.656681>,  <37.022198, 44.219299, 18.687197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843906, 44.377037, 18.656681>,  <36.546753, 44.639931, 18.605820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843906, 44.377037, 18.656681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218613, 0.058657, -0.974047,
		0.632723, 0.751396, 0.187256,
		0.742879, -0.657239, 0.127151,
		37.066769, 44.179867, 18.694826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201191, 44.881538, 18.171553>,  <36.546753, 44.639931, 18.605820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201191, 44.881538, 18.171553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206299, 44.486599, 18.234774>,  <37.209362, 44.249634, 18.272705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206299, 44.486599, 18.234774>,  <37.201191, 44.881538, 18.171553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206299, 44.486599, 18.234774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029762, -0.158370, -0.986931,
		0.999475, 0.007900, -0.031408,
		0.012771, -0.987348, 0.158052,
		37.210129, 44.190395, 18.282188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729286, 44.677673, 17.827164>,  <37.201191, 44.881538, 18.171553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729286, 44.677673, 17.827164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518467, 44.338997, 17.856392>,  <37.391975, 44.135792, 17.873928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518467, 44.338997, 17.856392>,  <37.729286, 44.677673, 17.827164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518467, 44.338997, 17.856392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032800, -0.065652, -0.997303,
		0.849204, -0.528021, 0.006830,
		-0.527045, -0.846690, 0.073071,
		37.360352, 44.084991, 17.878313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976475, 44.259651, 17.278309>,  <37.729286, 44.677673, 17.827164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976475, 44.259651, 17.278309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.628361, 44.075768, 17.349039>,  <37.419491, 43.965439, 17.391478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.628361, 44.075768, 17.349039>,  <37.976475, 44.259651, 17.278309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628361, 44.075768, 17.349039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050114, -0.274494, -0.960282,
		0.489989, -0.844582, 0.215851,
		-0.870287, -0.459711, 0.176824,
		37.367275, 43.937855, 17.402086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047554, 43.599815, 16.982809>,  <37.976475, 44.259651, 17.278309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047554, 43.599815, 16.982809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656601, 43.671394, 17.027901>,  <37.422031, 43.714344, 17.054956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656601, 43.671394, 17.027901>,  <38.047554, 43.599815, 16.982809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656601, 43.671394, 17.027901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172560, -0.366533, -0.914263,
		-0.122289, -0.913034, 0.389121,
		-0.977379, 0.178951, 0.112730,
		37.363388, 43.725079, 17.061720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725567, 42.976852, 16.693798>,  <38.047554, 43.599815, 16.982809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725567, 42.976852, 16.693798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473053, 43.285183, 16.659616>,  <37.321545, 43.470181, 16.639107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473053, 43.285183, 16.659616>,  <37.725567, 42.976852, 16.693798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473053, 43.285183, 16.659616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136469, -0.218875, -0.966162,
		-0.763450, -0.598261, 0.243367,
		-0.631284, 0.770829, -0.085456,
		37.283669, 43.516430, 16.633980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141872, 42.786175, 16.346924>,  <37.725567, 42.976852, 16.693798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141872, 42.786175, 16.346924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181309, 43.177746, 16.275389>,  <37.204971, 43.412689, 16.232468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181309, 43.177746, 16.275389>,  <37.141872, 42.786175, 16.346924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181309, 43.177746, 16.275389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145968, -0.163542, -0.975678,
		-0.984364, 0.122297, 0.126769,
		0.098590, 0.978926, -0.178837,
		37.210884, 43.471424, 16.221737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327606, 42.568573, 16.417713>,  <37.141872, 42.786175, 16.346924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327606, 42.568573, 16.417713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959160, 42.706017, 16.490910>,  <35.738094, 42.788483, 16.534828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959160, 42.706017, 16.490910>,  <36.327606, 42.568573, 16.417713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959160, 42.706017, 16.490910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337036, -0.468615, -0.816582,
		-0.194829, -0.813840, 0.547455,
		-0.921112, 0.343606, 0.182993,
		35.682827, 42.809097, 16.545807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371479, 41.888996, 16.022488>,  <36.327606, 42.568573, 16.417713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371479, 41.888996, 16.022488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380203, 41.500977, 15.925718>,  <36.385437, 41.268166, 15.867658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380203, 41.500977, 15.925718>,  <36.371479, 41.888996, 16.022488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380203, 41.500977, 15.925718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070913, -0.242870, 0.967464,
		-0.997244, -0.003942, -0.074086,
		0.021806, -0.970051, -0.241921,
		36.386745, 41.209961, 15.853142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761364, 41.483940, 16.394506>,  <36.371479, 41.888996, 16.022488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761364, 41.483940, 16.394506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.049236, 41.221081, 16.304871>,  <36.221958, 41.063366, 16.251089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.049236, 41.221081, 16.304871>,  <35.761364, 41.483940, 16.394506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049236, 41.221081, 16.304871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000672, -0.323414, 0.946257,
		-0.694308, -0.680850, -0.233195,
		0.719678, -0.657150, -0.224091,
		36.265141, 41.023937, 16.237642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469543, 40.762188, 16.631552>,  <35.761364, 41.483940, 16.394506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469543, 40.762188, 16.631552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869194, 40.778904, 16.630600>,  <36.108982, 40.788933, 16.630028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869194, 40.778904, 16.630600>,  <35.469543, 40.762188, 16.631552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869194, 40.778904, 16.630600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016392, -0.338350, 0.940878,
		0.038511, -0.940092, -0.338739,
		0.999124, 0.041787, -0.002380,
		36.168930, 40.791439, 16.629887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671169, 40.179806, 17.065884>,  <35.469543, 40.762188, 16.631552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671169, 40.179806, 17.065884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.025169, 40.360847, 17.022196>,  <36.237568, 40.469471, 16.995983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.025169, 40.360847, 17.022196>,  <35.671169, 40.179806, 17.065884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025169, 40.360847, 17.022196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313438, -0.405688, 0.858588,
		0.344291, -0.794082, -0.500896,
		0.884997, 0.452604, -0.109220,
		36.290668, 40.496628, 16.989429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215332, 39.733776, 17.315504>,  <35.671169, 40.179806, 17.065884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215332, 39.733776, 17.315504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.365265, 40.104538, 17.323008>,  <36.455223, 40.326996, 17.327509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.365265, 40.104538, 17.323008>,  <36.215332, 39.733776, 17.315504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365265, 40.104538, 17.323008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331513, -0.152901, 0.930978,
		0.865794, -0.342742, -0.364593,
		0.374832, 0.926903, 0.018757,
		36.477715, 40.382610, 17.328634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820812, 39.571968, 17.717815>,  <36.215332, 39.733776, 17.315504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820812, 39.571968, 17.717815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760723, 39.966301, 17.747677>,  <36.724670, 40.202900, 17.765594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760723, 39.966301, 17.747677>,  <36.820812, 39.571968, 17.717815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760723, 39.966301, 17.747677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389671, -0.010358, 0.920896,
		0.908619, 0.167431, -0.382593,
		-0.150224, 0.985829, 0.074655,
		36.715656, 40.262051, 17.770073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478764, 39.877254, 18.044357>,  <36.820812, 39.571968, 17.717815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478764, 39.877254, 18.044357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165890, 40.120247, 18.099728>,  <36.978165, 40.266041, 18.132950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165890, 40.120247, 18.099728>,  <37.478764, 39.877254, 18.044357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165890, 40.120247, 18.099728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166780, -0.009925, 0.985944,
		0.600312, 0.794275, -0.093552,
		-0.782183, 0.607477, 0.138427,
		36.931236, 40.302490, 18.141256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584660, 40.113121, 18.705807>,  <37.478764, 39.877254, 18.044357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584660, 40.113121, 18.705807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222565, 40.262520, 18.624773>,  <37.005306, 40.352158, 18.576153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222565, 40.262520, 18.624773>,  <37.584660, 40.113121, 18.705807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222565, 40.262520, 18.624773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181473, 0.091260, 0.979152,
		0.384196, 0.923132, -0.014833,
		-0.905241, 0.373495, -0.202585,
		36.950993, 40.374569, 18.563997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535103, 40.756660, 19.096079>,  <37.584660, 40.113121, 18.705807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535103, 40.756660, 19.096079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166965, 40.611225, 19.038439>,  <36.946083, 40.523964, 19.003855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166965, 40.611225, 19.038439>,  <37.535103, 40.756660, 19.096079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166965, 40.611225, 19.038439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215680, 0.164477, 0.962512,
		-0.326257, 0.916925, -0.229795,
		-0.920347, -0.363588, -0.144100,
		36.890862, 40.502148, 18.995209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081829, 41.206123, 19.436026>,  <37.535103, 40.756660, 19.096079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081829, 41.206123, 19.436026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.889141, 40.858170, 19.393606>,  <36.773529, 40.649395, 19.368155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.889141, 40.858170, 19.393606>,  <37.081829, 41.206123, 19.436026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889141, 40.858170, 19.393606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350830, 0.080537, 0.932970,
		-0.803037, 0.486632, -0.343978,
		-0.481716, -0.869887, -0.106051,
		36.744625, 40.597202, 19.361792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513367, 41.243942, 19.841223>,  <37.081829, 41.206123, 19.436026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513367, 41.243942, 19.841223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576183, 40.853054, 19.784107>,  <36.613873, 40.618523, 19.749838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576183, 40.853054, 19.784107>,  <36.513367, 41.243942, 19.841223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576183, 40.853054, 19.784107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147222, -0.166131, 0.975052,
		-0.976558, -0.132097, -0.169957,
		0.157037, -0.977216, -0.142789,
		36.623295, 40.559891, 19.741270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938492, 40.983891, 20.205767>,  <36.513367, 41.243942, 19.841223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938492, 40.983891, 20.205767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210773, 40.692745, 20.172640>,  <36.374142, 40.518059, 20.152763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210773, 40.692745, 20.172640>,  <35.938492, 40.983891, 20.205767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210773, 40.692745, 20.172640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042891, -0.152459, 0.987379,
		-0.731301, -0.668561, -0.134998,
		0.680705, -0.727862, -0.082818,
		36.414986, 40.474388, 20.147795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691433, 40.324181, 20.505196>,  <35.938492, 40.983891, 20.205767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691433, 40.324181, 20.505196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089027, 40.281216, 20.496763>,  <36.327583, 40.255436, 20.491705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089027, 40.281216, 20.496763>,  <35.691433, 40.324181, 20.505196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089027, 40.281216, 20.496763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003454, -0.161686, 0.986836,
		-0.109411, -0.980979, -0.160343,
		0.993991, -0.107417, -0.021079,
		36.387226, 40.248989, 20.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631096, 39.527252, 20.310999>,  <35.691433, 40.324181, 20.505196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631096, 39.527252, 20.310999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402611, 39.206413, 20.380697>,  <35.265522, 39.013908, 20.422516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402611, 39.206413, 20.380697>,  <35.631096, 39.527252, 20.310999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402611, 39.206413, 20.380697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253762, -0.029316, -0.966822,
		0.780593, -0.596475, -0.186796,
		-0.571209, -0.802096, 0.174246,
		35.231247, 38.965786, 20.432972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869900, 38.893845, 19.821936>,  <35.631096, 39.527252, 20.310999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869900, 38.893845, 19.821936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487694, 38.841404, 19.927622>,  <35.258369, 38.809940, 19.991034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487694, 38.841404, 19.927622>,  <35.869900, 38.893845, 19.821936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487694, 38.841404, 19.927622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212005, -0.317522, -0.924248,
		0.205061, -0.939145, 0.275603,
		-0.955513, -0.131098, 0.264215,
		35.201038, 38.802074, 20.006886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688251, 38.336926, 19.301777>,  <35.869900, 38.893845, 19.821936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688251, 38.336926, 19.301777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.320724, 38.409019, 19.442228>,  <35.100208, 38.452278, 19.526499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.320724, 38.409019, 19.442228>,  <35.688251, 38.336926, 19.301777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320724, 38.409019, 19.442228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388990, -0.262921, -0.882926,
		-0.066817, -0.947833, 0.311687,
		-0.918815, 0.180237, 0.351130,
		35.045078, 38.463093, 19.547567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196495, 37.912586, 19.014517>,  <35.688251, 38.336926, 19.301777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196495, 37.912586, 19.014517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934101, 38.185997, 19.142565>,  <34.776665, 38.350044, 19.219393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934101, 38.185997, 19.142565>,  <35.196495, 37.912586, 19.014517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934101, 38.185997, 19.142565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470158, -0.038260, -0.881753,
		-0.590451, -0.728925, 0.346462,
		-0.655987, 0.683524, 0.320119,
		34.737305, 38.391052, 19.238600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461510, 37.640152, 18.940863>,  <35.196495, 37.912586, 19.014517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461510, 37.640152, 18.940863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476799, 38.039856, 18.942642>,  <34.485973, 38.279678, 18.943710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476799, 38.039856, 18.942642>,  <34.461510, 37.640152, 18.940863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476799, 38.039856, 18.942642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574529, 0.025619, -0.818083,
		-0.817592, 0.028711, 0.575082,
		0.038221, 0.999260, 0.004450,
		34.488266, 38.339634, 18.943977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865135, 37.824516, 18.628351>,  <34.461510, 37.640152, 18.940863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865135, 37.824516, 18.628351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.020298, 38.192974, 18.641102>,  <34.113396, 38.414047, 18.648752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.020298, 38.192974, 18.641102>,  <33.865135, 37.824516, 18.628351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020298, 38.192974, 18.641102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599680, 0.278499, -0.750215,
		-0.699935, 0.271899, 0.660425,
		0.387911, 0.921146, 0.031879,
		34.136673, 38.469318, 18.650665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316662, 38.380081, 18.614882>,  <33.865135, 37.824516, 18.628351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316662, 38.380081, 18.614882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656303, 38.536991, 18.473383>,  <33.860088, 38.631138, 18.388483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656303, 38.536991, 18.473383>,  <33.316662, 38.380081, 18.614882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656303, 38.536991, 18.473383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421586, 0.099788, -0.901281,
		-0.318251, 0.914419, 0.250109,
		0.849107, 0.392276, -0.353748,
		33.911034, 38.654675, 18.367258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211777, 39.066158, 18.985331>,  <33.316662, 38.380081, 18.614882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211777, 39.066158, 18.985331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834351, 39.174480, 19.061594>,  <32.607895, 39.239475, 19.107351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834351, 39.174480, 19.061594>,  <33.211777, 39.066158, 18.985331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834351, 39.174480, 19.061594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129558, -0.227987, 0.965006,
		0.304800, 0.935246, 0.180035,
		-0.943563, 0.270808, 0.190659,
		32.551281, 39.255722, 19.118792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217632, 39.438881, 19.550262>,  <33.211777, 39.066158, 18.985331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217632, 39.438881, 19.550262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836475, 39.318806, 19.532883>,  <32.607780, 39.246761, 19.522455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836475, 39.318806, 19.532883>,  <33.217632, 39.438881, 19.550262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836475, 39.318806, 19.532883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011906, -0.180162, 0.983565,
		-0.303078, 0.936713, 0.175248,
		-0.952891, -0.300184, -0.043451,
		32.550610, 39.228752, 19.519848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922588, 39.767735, 20.046169>,  <33.217632, 39.438881, 19.550262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922588, 39.767735, 20.046169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667515, 39.475124, 19.949652>,  <32.514469, 39.299557, 19.891741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667515, 39.475124, 19.949652>,  <32.922588, 39.767735, 20.046169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667515, 39.475124, 19.949652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108950, -0.224443, 0.968378,
		-0.762552, 0.643811, 0.063425,
		-0.637687, -0.731528, -0.241292,
		32.476208, 39.255665, 19.877264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384411, 39.915737, 20.462620>,  <32.922588, 39.767735, 20.046169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384411, 39.915737, 20.462620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377319, 39.529572, 20.358574>,  <32.373066, 39.297871, 20.296146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377319, 39.529572, 20.358574>,  <32.384411, 39.915737, 20.462620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377319, 39.529572, 20.358574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145618, -0.254890, 0.955943,
		-0.989182, 0.054823, -0.136063,
		-0.017727, -0.965415, -0.260116,
		32.372002, 39.239948, 20.280539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780615, 39.651367, 20.775743>,  <32.384411, 39.915737, 20.462620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780615, 39.651367, 20.775743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039806, 39.351543, 20.721655>,  <32.195320, 39.171650, 20.689201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039806, 39.351543, 20.721655>,  <31.780615, 39.651367, 20.775743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039806, 39.351543, 20.721655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135785, -0.288372, 0.947842,
		-0.749459, -0.595819, -0.288637,
		0.647977, -0.749561, -0.135220,
		32.234200, 39.126675, 20.681089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378532, 38.922539, 20.991209>,  <31.780615, 39.651367, 20.775743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378532, 38.922539, 20.991209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.776009, 38.877953, 20.986269>,  <32.014496, 38.851200, 20.983305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.776009, 38.877953, 20.986269>,  <31.378532, 38.922539, 20.991209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776009, 38.877953, 20.986269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017895, -0.266308, 0.963722,
		-0.110704, -0.957422, -0.266623,
		0.993693, -0.111459, -0.012348,
		32.074116, 38.844513, 20.982565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538885, 38.214630, 21.157959>,  <31.378532, 38.922539, 20.991209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538885, 38.214630, 21.157959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891018, 38.380993, 21.249207>,  <32.102299, 38.480812, 21.303955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891018, 38.380993, 21.249207>,  <31.538885, 38.214630, 21.157959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891018, 38.380993, 21.249207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107393, -0.293670, 0.949855,
		0.462043, -0.860685, -0.213862,
		0.880331, 0.415906, 0.228120,
		32.155117, 38.505764, 21.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.841946, 44.410118, 17.337103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.150730, 44.156570, 17.317953>,  <34.335999, 44.004440, 17.306463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.150730, 44.156570, 17.317953>,  <33.841946, 44.410118, 17.337103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150730, 44.156570, 17.317953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174829, -0.284116, 0.942716,
		-0.611160, -0.719367, -0.330144,
		0.771958, -0.633869, -0.047874,
		34.382317, 43.966412, 17.303591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605923, 43.634098, 17.397335>,  <33.841946, 44.410118, 17.337103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605923, 43.634098, 17.397335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.982399, 43.676651, 17.525608>,  <34.208286, 43.702183, 17.602571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.982399, 43.676651, 17.525608>,  <33.605923, 43.634098, 17.397335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982399, 43.676651, 17.525608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214640, -0.544743, 0.810669,
		0.260927, -0.831828, -0.489876,
		0.941195, 0.106379, 0.320682,
		34.264759, 43.708565, 17.621813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844761, 42.984951, 17.769751>,  <33.605923, 43.634098, 17.397335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844761, 42.984951, 17.769751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099472, 43.260624, 17.908047>,  <34.252300, 43.426029, 17.991024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099472, 43.260624, 17.908047>,  <33.844761, 42.984951, 17.769751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099472, 43.260624, 17.908047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033636, -0.423150, 0.905435,
		0.770311, -0.588193, -0.246272,
		0.636780, 0.689183, 0.345742,
		34.290504, 43.467381, 18.011770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362389, 42.571182, 18.210112>,  <33.844761, 42.984951, 17.769751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362389, 42.571182, 18.210112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.379425, 42.959225, 18.305672>,  <34.389648, 43.192051, 18.363008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.379425, 42.959225, 18.305672>,  <34.362389, 42.571182, 18.210112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379425, 42.959225, 18.305672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111129, -0.242234, 0.963832,
		0.992893, -0.014503, -0.118125,
		0.042592, 0.970110, 0.238901,
		34.392204, 43.250259, 18.377342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884159, 42.602982, 18.807985>,  <34.362389, 42.571182, 18.210112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884159, 42.602982, 18.807985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.675682, 42.944283, 18.815067>,  <34.550594, 43.149063, 18.819317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.675682, 42.944283, 18.815067>,  <34.884159, 42.602982, 18.807985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675682, 42.944283, 18.815067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034545, -0.041822, 0.998528,
		0.852738, 0.519816, 0.051273,
		-0.521195, 0.853254, 0.017706,
		34.519325, 43.200260, 18.820379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148109, 42.912476, 19.318039>,  <34.884159, 42.602982, 18.807985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148109, 42.912476, 19.318039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.799747, 43.098228, 19.253698>,  <34.590733, 43.209682, 19.215094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.799747, 43.098228, 19.253698>,  <35.148109, 42.912476, 19.318039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799747, 43.098228, 19.253698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102119, 0.149160, 0.983526,
		0.480729, 0.872981, -0.082481,
		-0.870902, 0.464387, -0.160854,
		34.538475, 43.237545, 19.205442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200649, 43.574898, 19.641356>,  <35.148109, 42.912476, 19.318039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200649, 43.574898, 19.641356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.810989, 43.499874, 19.590988>,  <34.577194, 43.454861, 19.560768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.810989, 43.499874, 19.590988>,  <35.200649, 43.574898, 19.641356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810989, 43.499874, 19.590988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156304, 0.157151, 0.975127,
		-0.163107, 0.969600, -0.182405,
		-0.974148, -0.187561, -0.125920,
		34.518745, 43.443607, 19.553211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801914, 44.114071, 19.925343>,  <35.200649, 43.574898, 19.641356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801914, 44.114071, 19.925343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.542934, 43.809296, 19.918848>,  <34.387547, 43.626431, 19.914951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.542934, 43.809296, 19.918848>,  <34.801914, 44.114071, 19.925343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542934, 43.809296, 19.918848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192801, 0.143144, 0.970741,
		-0.737319, 0.631634, -0.239580,
		-0.647448, -0.761937, -0.016237,
		34.348701, 43.580715, 19.913977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251545, 44.330235, 20.203444>,  <34.801914, 44.114071, 19.925343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251545, 44.330235, 20.203444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.198589, 43.934608, 20.229422>,  <34.166817, 43.697231, 20.245008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.198589, 43.934608, 20.229422>,  <34.251545, 44.330235, 20.203444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198589, 43.934608, 20.229422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141397, 0.083697, 0.986408,
		-0.981061, 0.121404, -0.150932,
		-0.132386, -0.989068, 0.064945,
		34.158875, 43.637890, 20.248905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489086, 44.269997, 20.416403>,  <34.251545, 44.330235, 20.203444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489086, 44.269997, 20.416403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.702774, 43.943424, 20.504082>,  <33.830986, 43.747482, 20.556690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.702774, 43.943424, 20.504082>,  <33.489086, 44.269997, 20.416403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702774, 43.943424, 20.504082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332251, 0.035648, 0.942517,
		-0.777314, -0.576342, -0.252216,
		0.534221, -0.816431, 0.219200,
		33.863041, 43.698494, 20.569841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118309, 43.851948, 20.860140>,  <33.489086, 44.269997, 20.416403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118309, 43.851948, 20.860140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.489338, 43.719315, 20.929033>,  <33.711956, 43.639736, 20.970369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.489338, 43.719315, 20.929033>,  <33.118309, 43.851948, 20.860140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489338, 43.719315, 20.929033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119145, 0.174413, 0.977438,
		-0.354137, -0.927165, 0.122274,
		0.927573, -0.331579, 0.172233,
		33.767609, 43.619843, 20.980703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979115, 43.385967, 21.413134>,  <33.118309, 43.851948, 20.860140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979115, 43.385967, 21.413134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.364258, 43.493282, 21.425337>,  <33.595345, 43.557671, 21.432659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.364258, 43.493282, 21.425337>,  <32.979115, 43.385967, 21.413134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364258, 43.493282, 21.425337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069235, 0.136106, 0.988272,
		0.260985, -0.953677, 0.149625,
		0.962857, 0.268283, 0.030506,
		33.653114, 43.573769, 21.434488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692993, 42.678825, 21.593092>,  <32.979115, 43.385967, 21.413134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692993, 42.678825, 21.593092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.320587, 42.545887, 21.653427>,  <32.097141, 42.466125, 21.689629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.320587, 42.545887, 21.653427>,  <32.692993, 42.678825, 21.593092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320587, 42.545887, 21.653427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186482, 0.077903, -0.979365,
		0.313738, -0.939934, -0.134505,
		-0.931017, -0.332347, 0.150839,
		32.041283, 42.446182, 21.698679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529320, 42.044109, 21.143841>,  <32.692993, 42.678825, 21.593092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529320, 42.044109, 21.143841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.179836, 42.229618, 21.202562>,  <31.970146, 42.340923, 21.237795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.179836, 42.229618, 21.202562>,  <32.529320, 42.044109, 21.143841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179836, 42.229618, 21.202562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241992, -0.152578, -0.958207,
		-0.421992, -0.872717, 0.245538,
		-0.873706, 0.463774, 0.146804,
		31.917725, 42.368752, 21.246603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108578, 41.607254, 20.898714>,  <32.529320, 42.044109, 21.143841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108578, 41.607254, 20.898714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.939774, 41.969883, 20.901016>,  <31.838491, 42.187462, 20.902397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.939774, 41.969883, 20.901016>,  <32.108578, 41.607254, 20.898714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939774, 41.969883, 20.901016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269631, -0.119447, -0.955527,
		-0.865568, -0.404793, 0.294848,
		-0.422009, 0.906573, 0.005756,
		31.813171, 42.241856, 20.902742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567331, 41.542568, 20.404488>,  <32.108578, 41.607254, 20.898714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567331, 41.542568, 20.404488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.558533, 41.939449, 20.453569>,  <31.553253, 42.177578, 20.483019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.558533, 41.939449, 20.453569>,  <31.567331, 41.542568, 20.404488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558533, 41.939449, 20.453569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203558, 0.115718, -0.972200,
		-0.978816, -0.046360, 0.199425,
		-0.021994, 0.992200, 0.122703,
		31.551935, 42.237110, 20.490381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938349, 41.795311, 20.124029>,  <31.567331, 41.542568, 20.404488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938349, 41.795311, 20.124029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.229206, 42.068718, 20.098516>,  <31.403721, 42.232761, 20.083210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.229206, 42.068718, 20.098516>,  <30.938349, 41.795311, 20.124029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229206, 42.068718, 20.098516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066659, -0.022168, -0.997530,
		-0.683244, 0.729597, 0.029443,
		0.727141, 0.683518, -0.063780,
		31.447348, 42.273773, 20.079382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727306, 42.175465, 19.512472>,  <30.938349, 41.795311, 20.124029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727306, 42.175465, 19.512472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.103674, 42.299141, 19.567715>,  <31.329494, 42.373344, 19.600861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.103674, 42.299141, 19.567715>,  <30.727306, 42.175465, 19.512472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103674, 42.299141, 19.567715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115035, 0.091735, -0.989116,
		-0.318493, 0.946566, 0.050748,
		0.940919, 0.309189, 0.138105,
		31.385950, 42.391899, 19.609146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909718, 42.617035, 18.975250>,  <30.727306, 42.175465, 19.512472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909718, 42.617035, 18.975250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.283619, 42.559029, 19.104992>,  <31.507959, 42.524223, 19.182837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.283619, 42.559029, 19.104992>,  <30.909718, 42.617035, 18.975250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283619, 42.559029, 19.104992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326712, -0.007936, -0.945091,
		0.139628, 0.989397, 0.039960,
		0.934753, -0.145017, 0.324356,
		31.564045, 42.515522, 19.202299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340071, 43.129753, 18.602160>,  <30.909718, 42.617035, 18.975250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340071, 43.129753, 18.602160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.547476, 42.809189, 18.721416>,  <31.671919, 42.616852, 18.792971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.547476, 42.809189, 18.721416>,  <31.340071, 43.129753, 18.602160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547476, 42.809189, 18.721416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315220, -0.144968, -0.937881,
		0.794847, 0.580283, 0.177452,
		0.518512, -0.801408, 0.298144,
		31.703030, 42.568768, 18.810860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943630, 43.320728, 18.370214>,  <31.340071, 43.129753, 18.602160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943630, 43.320728, 18.370214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.980659, 42.929295, 18.443750>,  <32.002876, 42.694435, 18.487873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.980659, 42.929295, 18.443750>,  <31.943630, 43.320728, 18.370214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980659, 42.929295, 18.443750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403115, -0.131991, -0.905581,
		0.910455, 0.157943, 0.382264,
		0.092575, -0.978587, 0.183841,
		32.008430, 42.635719, 18.498903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642097, 43.208969, 18.173452>,  <31.943630, 43.320728, 18.370214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642097, 43.208969, 18.173452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444557, 42.861664, 18.154572>,  <32.326035, 42.653278, 18.143244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444557, 42.861664, 18.154572>,  <32.642097, 43.208969, 18.173452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444557, 42.861664, 18.154572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394694, -0.175463, -0.901903,
		0.774809, -0.464034, 0.429352,
		-0.493849, -0.868266, -0.047201,
		32.296402, 42.601185, 18.140411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140675, 42.798286, 17.816317>,  <32.642097, 43.208969, 18.173452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140675, 42.798286, 17.816317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.773380, 42.643871, 17.780958>,  <32.553001, 42.551224, 17.759743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.773380, 42.643871, 17.780958>,  <33.140675, 42.798286, 17.816317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773380, 42.643871, 17.780958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190412, -0.234637, -0.953252,
		0.347251, -0.892143, 0.288959,
		-0.918237, -0.386039, -0.088397,
		32.497910, 42.528061, 17.754438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201855, 42.285576, 17.413408>,  <33.140675, 42.798286, 17.816317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201855, 42.285576, 17.413408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.804470, 42.314693, 17.378231>,  <32.566040, 42.332165, 17.357124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.804470, 42.314693, 17.378231>,  <33.201855, 42.285576, 17.413408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804470, 42.314693, 17.378231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065696, -0.265471, -0.961878,
		-0.093361, -0.961367, 0.258954,
		-0.993463, 0.072790, -0.087943,
		32.506432, 42.336533, 17.351849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990879, 41.759079, 16.951067>,  <33.201855, 42.285576, 17.413408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990879, 41.759079, 16.951067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689049, 42.020939, 16.932976>,  <32.507950, 42.178055, 16.922121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689049, 42.020939, 16.932976>,  <32.990879, 41.759079, 16.951067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689049, 42.020939, 16.932976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002755, -0.065760, -0.997832,
		-0.656208, -0.753064, 0.047817,
		-0.754575, 0.654653, -0.045227,
		32.462677, 42.217335, 16.919407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349960, 41.519642, 16.641348>,  <32.990879, 41.759079, 16.951067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349960, 41.519642, 16.641348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131241, 41.222958, 16.485973>,  <32.000008, 41.044949, 16.392748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131241, 41.222958, 16.485973>,  <32.349960, 41.519642, 16.641348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131241, 41.222958, 16.485973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139675, -0.376627, 0.915775,
		-0.825532, 0.554999, 0.102341,
		-0.546798, -0.741707, -0.388437,
		31.967201, 41.000446, 16.369442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794264, 41.397541, 17.163546>,  <32.349960, 41.519642, 16.641348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794264, 41.397541, 17.163546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802002, 41.072105, 16.931097>,  <31.806644, 40.876842, 16.791628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802002, 41.072105, 16.931097>,  <31.794264, 41.397541, 17.163546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802002, 41.072105, 16.931097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160789, -0.576195, 0.801340,
		-0.986799, 0.077936, -0.141963,
		0.019345, -0.813588, -0.581120,
		31.807806, 40.828030, 16.756762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170599, 40.963367, 17.280672>,  <31.794264, 41.397541, 17.163546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170599, 40.963367, 17.280672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475906, 40.737511, 17.155067>,  <31.659090, 40.601997, 17.079704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475906, 40.737511, 17.155067>,  <31.170599, 40.963367, 17.280672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475906, 40.737511, 17.155067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157553, -0.634015, 0.757101,
		-0.626568, -0.528404, -0.572889,
		0.763276, -0.564636, -0.314002,
		31.704887, 40.568119, 17.060865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997545, 40.216053, 17.390160>,  <31.170599, 40.963367, 17.280672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997545, 40.216053, 17.390160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.396254, 40.246056, 17.378683>,  <31.635479, 40.264057, 17.371798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.396254, 40.246056, 17.378683>,  <30.997545, 40.216053, 17.390160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396254, 40.246056, 17.378683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068883, -0.614856, 0.785626,
		0.041287, -0.785064, -0.618037,
		0.996770, 0.075008, -0.028692,
		31.695284, 40.268559, 17.370075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125227, 39.772755, 17.837296>,  <30.997545, 40.216053, 17.390160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125227, 39.772755, 17.837296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511450, 39.863918, 17.787094>,  <31.743183, 39.918617, 17.756973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511450, 39.863918, 17.787094>,  <31.125227, 39.772755, 17.837296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511450, 39.863918, 17.787094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256424, -0.751882, 0.607387,
		0.044065, -0.618651, -0.784429,
		0.965559, 0.227911, -0.125506,
		31.801117, 39.932293, 17.749443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498793, 39.088707, 17.717798>,  <31.125227, 39.772755, 17.837296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498793, 39.088707, 17.717798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.757551, 39.358074, 17.860922>,  <31.912806, 39.519695, 17.946796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.757551, 39.358074, 17.860922>,  <31.498793, 39.088707, 17.717798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757551, 39.358074, 17.860922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312087, -0.661909, 0.681526,
		0.695792, -0.329209, -0.638353,
		0.646896, 0.673423, 0.357809,
		31.951620, 39.560101, 17.968266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940638, 38.642124, 18.046951>,  <31.498793, 39.088707, 17.717798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940638, 38.642124, 18.046951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.033005, 38.999321, 18.201477>,  <32.088425, 39.213638, 18.294191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.033005, 38.999321, 18.201477>,  <31.940638, 38.642124, 18.046951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033005, 38.999321, 18.201477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292784, -0.442415, 0.847671,
		0.927876, -0.082636, -0.363616,
		0.230918, 0.892995, 0.386312,
		32.102280, 39.267220, 18.317371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642548, 38.634068, 18.364077>,  <31.940638, 38.642124, 18.046951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642548, 38.634068, 18.364077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.429508, 38.924706, 18.537695>,  <32.301685, 39.099087, 18.641867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.429508, 38.924706, 18.537695>,  <32.642548, 38.634068, 18.364077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429508, 38.924706, 18.537695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201129, -0.389490, 0.898802,
		0.822121, 0.566003, 0.061303,
		-0.532601, 0.726594, 0.434047,
		32.269730, 39.142685, 18.667910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149719, 39.080154, 18.050211>,  <32.642548, 38.634068, 18.364077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149719, 39.080154, 18.050211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.517181, 38.941658, 17.974125>,  <33.737659, 38.858559, 17.928474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.517181, 38.941658, 17.974125>,  <33.149719, 39.080154, 18.050211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517181, 38.941658, 17.974125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114373, 0.227766, -0.966976,
		0.378133, 0.910076, 0.169638,
		0.918659, -0.346244, -0.190214,
		33.792778, 38.837784, 17.917061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436863, 39.629753, 17.721205>,  <33.149719, 39.080154, 18.050211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436863, 39.629753, 17.721205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652840, 39.306068, 17.628569>,  <33.782425, 39.111858, 17.572987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652840, 39.306068, 17.628569>,  <33.436863, 39.629753, 17.721205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652840, 39.306068, 17.628569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110696, 0.341025, -0.933514,
		0.834393, 0.478405, 0.273710,
		0.539940, -0.809216, -0.231592,
		33.814823, 39.063305, 17.559092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036266, 39.840099, 17.357967>,  <33.436863, 39.629753, 17.721205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036266, 39.840099, 17.357967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.986679, 39.454247, 17.264912>,  <33.956928, 39.222736, 17.209078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.986679, 39.454247, 17.264912>,  <34.036266, 39.840099, 17.357967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986679, 39.454247, 17.264912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121633, 0.217907, -0.968361,
		0.984804, -0.148339, 0.090319,
		-0.123965, -0.964631, -0.232638,
		33.949490, 39.164856, 17.195120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559010, 39.646797, 16.910265>,  <34.036266, 39.840099, 17.357967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559010, 39.646797, 16.910265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.302467, 39.349293, 16.834915>,  <34.148540, 39.170792, 16.789705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.302467, 39.349293, 16.834915>,  <34.559010, 39.646797, 16.910265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302467, 39.349293, 16.834915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245462, 0.033712, -0.968820,
		0.726920, -0.667596, 0.160944,
		-0.641354, -0.743761, -0.188375,
		34.110062, 39.126163, 16.778402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925026, 39.088509, 16.482624>,  <34.559010, 39.646797, 16.910265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925026, 39.088509, 16.482624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.528244, 39.058701, 16.441679>,  <34.290176, 39.040813, 16.417112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.528244, 39.058701, 16.441679>,  <34.925026, 39.088509, 16.482624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528244, 39.058701, 16.441679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090855, 0.144117, -0.985381,
		0.088183, -0.986751, -0.136187,
		-0.991952, -0.074521, -0.102360,
		34.230659, 39.036343, 16.410971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925831, 38.544300, 15.956902>,  <34.925026, 39.088509, 16.482624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925831, 38.544300, 15.956902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.578049, 38.741596, 15.945928>,  <34.369377, 38.859974, 15.939343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.578049, 38.741596, 15.945928>,  <34.925831, 38.544300, 15.956902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578049, 38.741596, 15.945928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038534, 0.012348, -0.999181,
		-0.492499, -0.869805, -0.029743,
		-0.869459, 0.493242, -0.027436,
		34.317211, 38.889568, 15.937697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578762, 38.180988, 15.420110>,  <34.925831, 38.544300, 15.956902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578762, 38.180988, 15.420110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392807, 38.533310, 15.456019>,  <34.281235, 38.744705, 15.477566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392807, 38.533310, 15.456019>,  <34.578762, 38.180988, 15.420110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392807, 38.533310, 15.456019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179332, 0.005619, -0.983772,
		-0.867017, -0.473444, 0.155345,
		-0.464888, 0.880806, 0.089775,
		34.253342, 38.797550, 15.482952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924641, 38.144924, 15.098983>,  <34.578762, 38.180988, 15.420110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924641, 38.144924, 15.098983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.976460, 38.540455, 15.128473>,  <34.007549, 38.777775, 15.146168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.976460, 38.540455, 15.128473>,  <33.924641, 38.144924, 15.098983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976460, 38.540455, 15.128473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324571, 0.112543, -0.939142,
		-0.936948, 0.097731, 0.335525,
		0.129544, 0.988829, 0.073726,
		34.015324, 38.837105, 15.150591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366581, 38.710224, 15.114031>,  <33.924641, 38.144924, 15.098983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366581, 38.710224, 15.114031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.684055, 38.862221, 14.924013>,  <33.874538, 38.953419, 14.810002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.684055, 38.862221, 14.924013>,  <33.366581, 38.710224, 15.114031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684055, 38.862221, 14.924013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567362, 0.180678, -0.803402,
		-0.219458, 0.907171, 0.358997,
		0.793686, 0.379994, -0.475044,
		33.922161, 38.976219, 14.781500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.759354, 38.008701, 31.107895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874100, 38.391655, 31.094454>,  <35.942947, 38.621426, 31.086390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874100, 38.391655, 31.094454>,  <35.759354, 38.008701, 31.107895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874100, 38.391655, 31.094454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018397, -0.029565, -0.999393,
		-0.957794, 0.287310, 0.009132,
		0.286866, 0.957381, -0.033603,
		35.960159, 38.678871, 31.084373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283131, 38.337727, 30.765575>,  <35.759354, 38.008701, 31.107895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283131, 38.337727, 30.765575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632065, 38.531727, 30.740938>,  <35.841427, 38.648129, 30.726156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632065, 38.531727, 30.740938>,  <35.283131, 38.337727, 30.765575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632065, 38.531727, 30.740938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173904, 0.190083, -0.966243,
		-0.456925, 0.853603, 0.250161,
		0.872340, 0.485005, -0.061591,
		35.893768, 38.677227, 30.722462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191170, 38.999195, 30.408503>,  <35.283131, 38.337727, 30.765575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191170, 38.999195, 30.408503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580418, 38.921963, 30.358294>,  <35.813965, 38.875622, 30.328169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580418, 38.921963, 30.358294>,  <35.191170, 38.999195, 30.408503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580418, 38.921963, 30.358294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094707, 0.161299, -0.982351,
		0.209919, 0.967834, 0.138677,
		0.973121, -0.193080, -0.125521,
		35.872353, 38.864040, 30.320637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465458, 39.585896, 30.051945>,  <35.191170, 38.999195, 30.408503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465458, 39.585896, 30.051945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667686, 39.251610, 29.966171>,  <35.789024, 39.051037, 29.914707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667686, 39.251610, 29.966171>,  <35.465458, 39.585896, 30.051945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667686, 39.251610, 29.966171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010503, 0.242558, -0.970080,
		0.862723, 0.492694, 0.113852,
		0.505568, -0.835714, -0.214436,
		35.819355, 39.000896, 29.901840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752373, 39.733681, 29.545605>,  <35.465458, 39.585896, 30.051945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752373, 39.733681, 29.545605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840355, 39.346684, 29.495682>,  <35.893143, 39.114487, 29.465729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840355, 39.346684, 29.495682>,  <35.752373, 39.733681, 29.545605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840355, 39.346684, 29.495682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164106, 0.089419, -0.982381,
		0.961608, 0.236559, -0.139104,
		0.219953, -0.967494, -0.124807,
		35.906342, 39.056435, 29.458241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955944, 39.832047, 28.928137>,  <35.752373, 39.733681, 29.545605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955944, 39.832047, 28.928137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946743, 39.435364, 28.978712>,  <35.941223, 39.197353, 29.009058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946743, 39.435364, 28.978712>,  <35.955944, 39.832047, 28.928137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946743, 39.435364, 28.978712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105906, -0.123344, -0.986696,
		0.994110, -0.036083, -0.102191,
		-0.022998, -0.991708, 0.126439,
		35.939842, 39.137852, 29.016644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510731, 39.468426, 28.472185>,  <35.955944, 39.832047, 28.928137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510731, 39.468426, 28.472185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207478, 39.215683, 28.536676>,  <36.025528, 39.064037, 28.575371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207478, 39.215683, 28.536676>,  <36.510731, 39.468426, 28.472185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207478, 39.215683, 28.536676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091162, -0.142122, -0.985642,
		0.645700, -0.761943, 0.050145,
		-0.758130, -0.631858, 0.161229,
		35.980038, 39.026127, 28.585045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658165, 38.918812, 28.015703>,  <36.510731, 39.468426, 28.472185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658165, 38.918812, 28.015703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268566, 38.896805, 28.103613>,  <36.034805, 38.883602, 28.156359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268566, 38.896805, 28.103613>,  <36.658165, 38.918812, 28.015703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268566, 38.896805, 28.103613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208546, -0.161279, -0.964623,
		0.088518, -0.985374, 0.145612,
		-0.973999, -0.055019, 0.219772,
		35.976368, 38.880299, 28.169544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461945, 38.400627, 27.640497>,  <36.658165, 38.918812, 28.015703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461945, 38.400627, 27.640497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112526, 38.570580, 27.735483>,  <35.902874, 38.672550, 27.792475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112526, 38.570580, 27.735483>,  <36.461945, 38.400627, 27.640497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112526, 38.570580, 27.735483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335553, -0.172272, -0.926135,
		-0.352590, -0.888705, 0.293059,
		-0.873547, 0.424883, 0.237466,
		35.850460, 38.698044, 27.806723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903858, 38.020119, 27.341005>,  <36.461945, 38.400627, 27.640497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903858, 38.020119, 27.341005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711800, 38.366531, 27.396776>,  <35.596565, 38.574379, 27.430239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711800, 38.366531, 27.396776>,  <35.903858, 38.020119, 27.341005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711800, 38.366531, 27.396776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441019, -0.100938, -0.891804,
		-0.758260, -0.489688, 0.430404,
		-0.480150, 0.866035, 0.139425,
		35.567753, 38.626343, 27.438604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266830, 37.903625, 27.060667>,  <35.903858, 38.020119, 27.341005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266830, 37.903625, 27.060667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285446, 38.303158, 27.065966>,  <35.296616, 38.542877, 27.069145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285446, 38.303158, 27.065966>,  <35.266830, 37.903625, 27.060667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285446, 38.303158, 27.065966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362849, 0.029260, -0.931388,
		-0.930685, 0.038542, 0.363786,
		0.046542, 0.998828, 0.013246,
		35.299408, 38.602806, 27.069939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577820, 38.179592, 26.854046>,  <35.266830, 37.903625, 27.060667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577820, 38.179592, 26.854046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838161, 38.466915, 26.755726>,  <34.994366, 38.639309, 26.696733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838161, 38.466915, 26.755726>,  <34.577820, 38.179592, 26.854046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838161, 38.466915, 26.755726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354286, 0.001021, -0.935136,
		-0.671467, 0.695722, 0.255152,
		0.650855, 0.718311, -0.245799,
		35.033417, 38.682407, 26.681986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015934, 38.876228, 26.974133>,  <34.577820, 38.179592, 26.854046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015934, 38.876228, 26.974133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650082, 38.754330, 27.080395>,  <33.430569, 38.681190, 27.144152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650082, 38.754330, 27.080395>,  <34.015934, 38.876228, 26.974133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650082, 38.754330, 27.080395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232514, 0.141038, 0.962313,
		-0.330725, 0.941934, -0.058141,
		-0.914635, -0.304743, 0.265658,
		33.375690, 38.662907, 27.160091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769390, 39.296143, 27.424576>,  <34.015934, 38.876228, 26.974133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769390, 39.296143, 27.424576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517338, 38.995079, 27.500931>,  <33.366104, 38.814442, 27.546743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517338, 38.995079, 27.500931>,  <33.769390, 39.296143, 27.424576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517338, 38.995079, 27.500931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007944, 0.239574, 0.970846,
		-0.776445, 0.613280, -0.144985,
		-0.630134, -0.752657, 0.190888,
		33.328297, 38.769283, 27.558197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335815, 39.516998, 27.943064>,  <33.769390, 39.296143, 27.424576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335815, 39.516998, 27.943064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259426, 39.124943, 27.964428>,  <33.213593, 38.889709, 27.977245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259426, 39.124943, 27.964428>,  <33.335815, 39.516998, 27.943064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259426, 39.124943, 27.964428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169180, 0.086462, 0.981785,
		-0.966906, 0.178458, -0.182332,
		-0.190973, -0.980141, 0.053409,
		33.202133, 38.830902, 27.980452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688942, 39.351078, 28.337952>,  <33.335815, 39.516998, 27.943064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688942, 39.351078, 28.337952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925682, 39.028843, 28.348835>,  <33.067726, 38.835503, 28.355364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925682, 39.028843, 28.348835>,  <32.688942, 39.351078, 28.337952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925682, 39.028843, 28.348835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048691, -0.002040, 0.998812,
		-0.804576, -0.592472, -0.040433,
		0.591851, -0.805589, 0.027207,
		33.103237, 38.787167, 28.356997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358044, 38.803665, 28.683928>,  <32.688942, 39.351078, 28.337952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358044, 38.803665, 28.683928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739552, 38.684399, 28.698959>,  <32.968456, 38.612839, 28.707979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739552, 38.684399, 28.698959>,  <32.358044, 38.803665, 28.683928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739552, 38.684399, 28.698959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109462, -0.228214, 0.967438,
		-0.279891, -0.926828, -0.250303,
		0.953771, -0.298176, 0.037578,
		33.025684, 38.594948, 28.710234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358154, 38.176781, 29.045082>,  <32.358044, 38.803665, 28.683928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358154, 38.176781, 29.045082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743145, 38.282944, 29.067696>,  <32.974140, 38.346642, 29.081263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743145, 38.282944, 29.067696>,  <32.358154, 38.176781, 29.045082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743145, 38.282944, 29.067696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039854, -0.344326, 0.938004,
		0.268418, -0.900555, -0.341984,
		0.962478, 0.265407, 0.056533,
		33.031887, 38.362564, 29.084656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786137, 37.604206, 29.229902>,  <32.358154, 38.176781, 29.045082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786137, 37.604206, 29.229902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998329, 37.921047, 29.350670>,  <33.125645, 38.111153, 29.423130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998329, 37.921047, 29.350670>,  <32.786137, 37.604206, 29.229902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998329, 37.921047, 29.350670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095299, -0.298183, 0.949740,
		0.842320, -0.532596, -0.082695,
		0.530486, 0.792104, 0.301921,
		33.157475, 38.158680, 29.441246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293480, 37.371525, 29.657255>,  <32.786137, 37.604206, 29.229902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293480, 37.371525, 29.657255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277939, 37.756462, 29.764879>,  <33.268616, 37.987423, 29.829454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277939, 37.756462, 29.764879>,  <33.293480, 37.371525, 29.657255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277939, 37.756462, 29.764879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137729, -0.261538, 0.955316,
		0.989708, 0.074171, -0.122381,
		-0.038849, 0.962339, 0.269062,
		33.266285, 38.045162, 29.845598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644279, 37.481911, 30.344294>,  <33.293480, 37.371525, 29.657255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644279, 37.481911, 30.344294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460361, 37.837063, 30.337858>,  <33.350010, 38.050156, 30.333996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460361, 37.837063, 30.337858>,  <33.644279, 37.481911, 30.344294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460361, 37.837063, 30.337858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095932, -0.031650, 0.994884,
		0.882829, 0.458985, 0.099728,
		-0.459794, 0.887880, -0.016090,
		33.322422, 38.103428, 30.333031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916237, 37.869686, 30.878235>,  <33.644279, 37.481911, 30.344294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916237, 37.869686, 30.878235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562210, 38.044464, 30.814077>,  <33.349792, 38.149330, 30.775583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562210, 38.044464, 30.814077>,  <33.916237, 37.869686, 30.878235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562210, 38.044464, 30.814077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067374, 0.220701, 0.973012,
		0.460555, 0.871990, -0.165897,
		-0.885071, 0.436948, -0.160395,
		33.296688, 38.175549, 30.765959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963627, 38.483582, 31.244360>,  <33.916237, 37.869686, 30.878235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963627, 38.483582, 31.244360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571327, 38.423512, 31.194443>,  <33.335945, 38.387470, 31.164492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571327, 38.423512, 31.194443>,  <33.963627, 38.483582, 31.244360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571327, 38.423512, 31.194443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161165, 0.261769, 0.951579,
		-0.110241, 0.953375, -0.280934,
		-0.980751, -0.150179, -0.124793,
		33.277103, 38.378456, 31.157005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665257, 38.892586, 31.724148>,  <33.963627, 38.483582, 31.244360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665257, 38.892586, 31.724148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335365, 38.678123, 31.652184>,  <33.137432, 38.549446, 31.609005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335365, 38.678123, 31.652184>,  <33.665257, 38.892586, 31.724148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335365, 38.678123, 31.652184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309533, 0.161696, 0.937040,
		-0.473307, 0.828488, -0.299312,
		-0.824724, -0.536155, -0.179913,
		33.087948, 38.517277, 31.598209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037296, 39.279991, 31.821457>,  <33.665257, 38.892586, 31.724148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037296, 39.279991, 31.821457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938492, 38.899055, 31.893042>,  <32.879208, 38.670494, 31.935993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938492, 38.899055, 31.893042>,  <33.037296, 39.279991, 31.821457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938492, 38.899055, 31.893042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248680, 0.240801, 0.938175,
		-0.936559, 0.187238, -0.296310,
		-0.247014, -0.952343, 0.178962,
		32.864388, 38.613354, 31.946730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580872, 39.375443, 32.317978>,  <33.037296, 39.279991, 31.821457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580872, 39.375443, 32.317978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594250, 38.976341, 32.341206>,  <32.602276, 38.736881, 32.355145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594250, 38.976341, 32.341206>,  <32.580872, 39.375443, 32.317978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594250, 38.976341, 32.341206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227553, 0.048977, 0.972533,
		-0.973191, -0.045743, -0.225403,
		0.033447, -0.997752, 0.058073,
		32.604282, 38.677017, 32.358627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690220, 39.978088, 32.265415>,  <32.580872, 39.375443, 32.317978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690220, 39.978088, 32.265415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501701, 40.295364, 32.419674>,  <32.388588, 40.485729, 32.512230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501701, 40.295364, 32.419674>,  <32.690220, 39.978088, 32.265415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501701, 40.295364, 32.419674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380867, 0.211343, -0.900153,
		-0.795499, -0.571119, 0.202495,
		-0.471298, 0.793194, 0.385644,
		32.360313, 40.533321, 32.535366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938183, 40.075596, 32.107197>,  <32.690220, 39.978088, 32.265415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938183, 40.075596, 32.107197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088497, 40.443718, 32.150703>,  <32.178684, 40.664589, 32.176807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088497, 40.443718, 32.150703>,  <31.938183, 40.075596, 32.107197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088497, 40.443718, 32.150703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272402, 0.221880, -0.936251,
		-0.885767, 0.322202, 0.334071,
		0.375786, 0.920302, 0.108765,
		32.201233, 40.719807, 32.183334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288576, 40.505791, 31.789633>,  <31.938183, 40.075596, 32.107197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288576, 40.505791, 31.789633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.647278, 40.682640, 31.797224>,  <31.862499, 40.788750, 31.801779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.647278, 40.682640, 31.797224>,  <31.288576, 40.505791, 31.789633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647278, 40.682640, 31.797224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156478, 0.356916, -0.920937,
		-0.413941, 0.822884, 0.389248,
		0.896754, 0.442123, 0.018978,
		31.916304, 40.815277, 31.802917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188725, 41.288372, 31.710695>,  <31.288576, 40.505791, 31.789633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188725, 41.288372, 31.710695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.555246, 41.181057, 31.591763>,  <31.775160, 41.116669, 31.520403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.555246, 41.181057, 31.591763>,  <31.188725, 41.288372, 31.710695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555246, 41.181057, 31.591763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140640, 0.479573, -0.866158,
		0.374974, 0.835482, 0.401703,
		0.916305, -0.268291, -0.297330,
		31.830137, 41.100571, 31.502563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445932, 41.863739, 31.306639>,  <31.188725, 41.288372, 31.710695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445932, 41.863739, 31.306639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692669, 41.563927, 31.210548>,  <31.840710, 41.384037, 31.152895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692669, 41.563927, 31.210548>,  <31.445932, 41.863739, 31.306639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692669, 41.563927, 31.210548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030325, 0.327612, -0.944325,
		0.786505, 0.575212, 0.224814,
		0.616839, -0.749534, -0.240225,
		31.877720, 41.339066, 31.138481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987932, 42.132179, 30.983568>,  <31.445932, 41.863739, 31.306639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987932, 42.132179, 30.983568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024715, 41.752319, 30.863758>,  <32.046787, 41.524403, 30.791872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024715, 41.752319, 30.863758>,  <31.987932, 42.132179, 30.983568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024715, 41.752319, 30.863758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030526, 0.297968, -0.954088,
		0.995295, 0.096880, -0.001588,
		0.091959, -0.949647, -0.299523,
		32.052303, 41.467426, 30.773901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444511, 42.178677, 30.375675>,  <31.987932, 42.132179, 30.983568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444511, 42.178677, 30.375675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238647, 41.836254, 30.356541>,  <32.115128, 41.630802, 30.345060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238647, 41.836254, 30.356541>,  <32.444511, 42.178677, 30.375675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238647, 41.836254, 30.356541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069682, 0.097371, -0.992806,
		0.854556, -0.507627, -0.109765,
		-0.514663, -0.856057, -0.047836,
		32.084248, 41.579437, 30.342190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772221, 41.830532, 29.831825>,  <32.444511, 42.178677, 30.375675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772221, 41.830532, 29.831825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432590, 41.623871, 29.875891>,  <32.228813, 41.499874, 29.902330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432590, 41.623871, 29.875891>,  <32.772221, 41.830532, 29.831825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432590, 41.623871, 29.875891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063510, -0.107193, -0.992208,
		0.524435, -0.849459, 0.058203,
		-0.849079, -0.516652, 0.110165,
		32.177868, 41.468876, 29.908939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807610, 41.215363, 29.432457>,  <32.772221, 41.830532, 29.831825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807610, 41.215363, 29.432457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427357, 41.338051, 29.451271>,  <32.199203, 41.411663, 29.462561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427357, 41.338051, 29.451271>,  <32.807610, 41.215363, 29.432457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427357, 41.338051, 29.451271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075517, -0.081651, -0.993796,
		-0.300982, -0.948289, 0.100783,
		-0.950635, 0.306726, 0.047036,
		32.142166, 41.430069, 29.465382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439323, 40.793510, 29.014114>,  <32.807610, 41.215363, 29.432457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439323, 40.793510, 29.014114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159767, 41.077099, 29.051884>,  <31.992033, 41.247253, 29.074545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159767, 41.077099, 29.051884>,  <32.439323, 40.793510, 29.014114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159767, 41.077099, 29.051884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086913, 0.046853, -0.995113,
		-0.709929, -0.703681, 0.028874,
		-0.698890, 0.708970, 0.094422,
		31.950100, 41.289791, 29.080210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919655, 40.578342, 28.589493>,  <32.439323, 40.793510, 29.014114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919655, 40.578342, 28.589493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807568, 40.955719, 28.660360>,  <31.740314, 41.182144, 28.702881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807568, 40.955719, 28.660360>,  <31.919655, 40.578342, 28.589493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807568, 40.955719, 28.660360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332953, 0.077580, -0.939746,
		-0.900344, -0.322322, 0.292384,
		-0.280218, 0.943445, 0.177167,
		31.723503, 41.238754, 28.713511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247013, 40.612370, 28.390541>,  <31.919655, 40.578342, 28.589493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247013, 40.612370, 28.390541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.378891, 40.989372, 28.368711>,  <31.458017, 41.215572, 28.355614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.378891, 40.989372, 28.368711>,  <31.247013, 40.612370, 28.390541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378891, 40.989372, 28.368711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386597, 0.082048, -0.918592,
		-0.861303, 0.323954, 0.391422,
		0.329697, 0.942508, -0.054572,
		31.477800, 41.272125, 28.352341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721102, 41.017052, 27.927544>,  <31.247013, 40.612370, 28.390541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721102, 41.017052, 27.927544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072630, 41.207844, 27.932600>,  <31.283546, 41.322319, 27.935635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072630, 41.207844, 27.932600>,  <30.721102, 41.017052, 27.927544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072630, 41.207844, 27.932600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063631, 0.143410, -0.987616,
		-0.472889, 0.867134, 0.156382,
		0.878822, 0.476983, 0.012641,
		31.336277, 41.350937, 27.936392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592970, 41.748615, 27.715229>,  <30.721102, 41.017052, 27.927544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592970, 41.748615, 27.715229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972197, 41.635399, 27.657179>,  <31.199732, 41.567471, 27.622349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972197, 41.635399, 27.657179>,  <30.592970, 41.748615, 27.715229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972197, 41.635399, 27.657179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066429, 0.270008, -0.960564,
		0.311061, 0.920318, 0.237183,
		0.948066, -0.283038, -0.145125,
		31.256617, 41.550488, 27.613642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857067, 42.233124, 27.261576>,  <30.592970, 41.748615, 27.715229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857067, 42.233124, 27.261576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146692, 41.957355, 27.253227>,  <31.320467, 41.791897, 27.248219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146692, 41.957355, 27.253227>,  <30.857067, 42.233124, 27.261576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146692, 41.957355, 27.253227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052257, 0.085006, -0.995009,
		0.687752, 0.719358, 0.097577,
		0.724063, -0.689418, -0.020871,
		31.363911, 41.750530, 27.246965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258310, 42.531254, 26.893202>,  <30.857067, 42.233124, 27.261576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258310, 42.531254, 26.893202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374454, 42.148972, 26.873945>,  <31.444141, 41.919601, 26.862391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374454, 42.148972, 26.873945>,  <31.258310, 42.531254, 26.893202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374454, 42.148972, 26.873945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034013, 0.060585, -0.997583,
		0.956312, 0.288022, 0.050098,
		0.290361, -0.955705, -0.048142,
		31.461563, 41.862259, 26.859503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966486, 42.463062, 26.548698>,  <31.258310, 42.531254, 26.893202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966486, 42.463062, 26.548698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776365, 42.115440, 26.493795>,  <31.662292, 41.906868, 26.460854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776365, 42.115440, 26.493795>,  <31.966486, 42.463062, 26.548698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776365, 42.115440, 26.493795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169621, 0.062566, -0.983521,
		0.863319, -0.490749, 0.117672,
		-0.475299, -0.869052, -0.137255,
		31.633776, 41.854725, 26.452620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351223, 42.143501, 25.913332>,  <31.966486, 42.463062, 26.548698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351223, 42.143501, 25.913332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015514, 41.927280, 25.936724>,  <31.814089, 41.797546, 25.950758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015514, 41.927280, 25.936724>,  <32.351223, 42.143501, 25.913332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015514, 41.927280, 25.936724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083375, 0.021672, -0.996283,
		0.537279, -0.841029, -0.063258,
		-0.839274, -0.540556, 0.058477,
		31.763733, 41.765114, 25.954268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447254, 41.577652, 25.433029>,  <32.351223, 42.143501, 25.913332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447254, 41.577652, 25.433029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052208, 41.618900, 25.480314>,  <31.815180, 41.643650, 25.508686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052208, 41.618900, 25.480314>,  <32.447254, 41.577652, 25.433029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052208, 41.618900, 25.480314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136382, -0.192093, -0.971854,
		-0.077507, -0.975944, 0.203778,
		-0.987620, 0.103117, 0.118213,
		31.755922, 41.649837, 25.515778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194786, 41.204689, 24.948582>,  <32.447254, 41.577652, 25.433029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194786, 41.204689, 24.948582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861109, 41.399540, 25.051987>,  <31.660902, 41.516453, 25.114029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861109, 41.399540, 25.051987>,  <32.194786, 41.204689, 24.948582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861109, 41.399540, 25.051987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318391, -0.042676, -0.946998,
		-0.450279, -0.872286, 0.190697,
		-0.834192, 0.487130, 0.258512,
		31.610851, 41.545677, 25.129539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712614, 40.785332, 24.650408>,  <32.194786, 41.204689, 24.948582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712614, 40.785332, 24.650408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538034, 41.139351, 24.715147>,  <31.433287, 41.351765, 24.753990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538034, 41.139351, 24.715147>,  <31.712614, 40.785332, 24.650408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538034, 41.139351, 24.715147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106884, 0.127610, -0.986048,
		-0.893357, -0.447660, 0.038902,
		-0.436450, 0.885051, 0.161849,
		31.407099, 41.404865, 24.763702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124289, 40.865620, 24.267569>,  <31.712614, 40.785332, 24.650408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124289, 40.865620, 24.267569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258162, 41.238327, 24.323835>,  <31.338486, 41.461952, 24.357595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258162, 41.238327, 24.323835>,  <31.124289, 40.865620, 24.267569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258162, 41.238327, 24.323835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095305, 0.181978, -0.978673,
		-0.937499, 0.314140, 0.149708,
		0.334683, 0.931773, 0.140665,
		31.358566, 41.517860, 24.366035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750685, 41.211948, 23.714140>,  <31.124289, 40.865620, 24.267569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750685, 41.211948, 23.714140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024776, 41.482483, 23.822239>,  <31.189232, 41.644802, 23.887098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024776, 41.482483, 23.822239>,  <30.750685, 41.211948, 23.714140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024776, 41.482483, 23.822239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035440, 0.339651, -0.939884,
		-0.727465, 0.653613, 0.208769,
		0.685229, 0.676334, 0.270248,
		31.230345, 41.685383, 23.903313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574858, 41.871723, 23.362797>,  <30.750685, 41.211948, 23.714140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574858, 41.871723, 23.362797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957323, 41.913940, 23.472059>,  <31.186802, 41.939270, 23.537617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957323, 41.913940, 23.472059>,  <30.574858, 41.871723, 23.362797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957323, 41.913940, 23.472059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232784, 0.291983, -0.927662,
		-0.177669, 0.950582, 0.254613,
		0.956162, 0.105547, 0.273157,
		31.244171, 41.945606, 23.554007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814310, 42.615002, 23.334450>,  <30.574858, 41.871723, 23.362797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814310, 42.615002, 23.334450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121254, 42.361969, 23.292505>,  <31.305420, 42.210148, 23.267338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121254, 42.361969, 23.292505>,  <30.814310, 42.615002, 23.334450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121254, 42.361969, 23.292505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055185, 0.228079, -0.972077,
		0.638838, 0.740146, 0.209927,
		0.767359, -0.632585, -0.104860,
		31.351461, 42.172192, 23.261047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340408, 42.961399, 22.946625>,  <30.814310, 42.615002, 23.334450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340408, 42.961399, 22.946625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551275, 42.621578, 22.938997>,  <31.677795, 42.417686, 22.934422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551275, 42.621578, 22.938997>,  <31.340408, 42.961399, 22.946625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551275, 42.621578, 22.938997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314112, 0.215665, -0.924566,
		0.789576, 0.481410, 0.380544,
		0.527165, -0.849549, -0.019068,
		31.709425, 42.366714, 22.933277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011806, 43.159378, 22.836706>,  <31.340408, 42.961399, 22.946625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011806, 43.159378, 22.836706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927452, 42.788433, 22.713072>,  <31.876841, 42.565868, 22.638891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927452, 42.788433, 22.713072>,  <32.011806, 43.159378, 22.836706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927452, 42.788433, 22.713072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211299, 0.265474, -0.940679,
		0.954401, -0.263681, 0.139967,
		-0.210881, -0.927360, -0.309084,
		31.864187, 42.510223, 22.620346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513771, 42.973679, 22.321604>,  <32.011806, 43.159378, 22.836706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513771, 42.973679, 22.321604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209801, 42.721149, 22.259720>,  <32.027416, 42.569630, 22.222589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209801, 42.721149, 22.259720>,  <32.513771, 42.973679, 22.321604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209801, 42.721149, 22.259720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037538, 0.194990, -0.980087,
		0.648923, -0.750603, -0.124479,
		-0.759928, -0.631327, -0.154710,
		31.981823, 42.531750, 22.213306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105633, 43.109577, 22.062424>,  <32.513771, 42.973679, 22.321604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105633, 43.109577, 22.062424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420090, 43.339970, 21.972788>,  <33.608765, 43.478207, 21.919006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420090, 43.339970, 21.972788>,  <33.105633, 43.109577, 22.062424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420090, 43.339970, 21.972788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077537, 0.267803, 0.960349,
		0.613158, -0.772350, 0.165872,
		0.786146, 0.575984, -0.224091,
		33.655933, 43.512764, 21.905561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789165, 42.824665, 22.392572>,  <33.105633, 43.109577, 22.062424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789165, 42.824665, 22.392572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856075, 43.212051, 22.318720>,  <33.896221, 43.444485, 22.274408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856075, 43.212051, 22.318720>,  <33.789165, 42.824665, 22.392572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856075, 43.212051, 22.318720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264131, 0.136401, 0.954793,
		0.949870, -0.208480, -0.232986,
		0.167275, 0.968468, -0.184629,
		33.906258, 43.502590, 22.263330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213142, 43.025166, 22.885637>,  <33.789165, 42.824665, 22.392572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213142, 43.025166, 22.885637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114746, 43.399895, 22.786163>,  <34.055710, 43.624733, 22.726479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114746, 43.399895, 22.786163>,  <34.213142, 43.025166, 22.885637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114746, 43.399895, 22.786163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003100, 0.257326, 0.966319,
		0.969267, 0.236934, -0.066204,
		-0.245990, 0.936827, -0.248684,
		34.040951, 43.680943, 22.711557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710121, 43.484219, 23.190268>,  <34.213142, 43.025166, 22.885637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710121, 43.484219, 23.190268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365562, 43.681217, 23.140566>,  <34.158829, 43.799416, 23.110744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365562, 43.681217, 23.140566>,  <34.710121, 43.484219, 23.190268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365562, 43.681217, 23.140566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004191, 0.237728, 0.971323,
		0.507913, 0.837216, -0.202714,
		-0.861398, 0.492498, -0.124254,
		34.107143, 43.828968, 23.103291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826332, 44.026764, 23.611738>,  <34.710121, 43.484219, 23.190268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826332, 44.026764, 23.611738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431408, 43.997196, 23.555504>,  <34.194454, 43.979458, 23.521763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431408, 43.997196, 23.555504>,  <34.826332, 44.026764, 23.611738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431408, 43.997196, 23.555504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153709, 0.221674, 0.962930,
		-0.040011, 0.972315, -0.230221,
		-0.987306, -0.073915, -0.140584,
		34.135216, 43.975021, 23.513329>
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
