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
	<23.950211, 35.115078, 34.871006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327236, 34.993843, 34.927162>,  <24.553452, 34.921104, 34.960857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327236, 34.993843, 34.927162>,  <23.950211, 35.115078, 34.871006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327236, 34.993843, 34.927162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292694, 0.951957, 0.090043,
		-0.160939, -0.043779, 0.985993,
		0.942565, -0.303086, 0.140394,
		24.610006, 34.902916, 34.969280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.134220, 35.670845, 35.341988>,  <23.950211, 35.115078, 34.871006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.134220, 35.670845, 35.341988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530672, 35.723759, 35.336857>,  <24.768543, 35.755508, 35.333778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530672, 35.723759, 35.336857>,  <24.134220, 35.670845, 35.341988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530672, 35.723759, 35.336857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083735, -0.546598, 0.833198,
		0.103213, -0.826880, -0.552826,
		0.991129, 0.132287, -0.012823,
		24.828011, 35.763443, 35.333012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472734, 35.109009, 35.570988>,  <24.134220, 35.670845, 35.341988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472734, 35.109009, 35.570988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793371, 35.345848, 35.604126>,  <24.985754, 35.487953, 35.624008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793371, 35.345848, 35.604126>,  <24.472734, 35.109009, 35.570988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793371, 35.345848, 35.604126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263273, -0.473984, 0.840254,
		0.536782, -0.651732, -0.535827,
		0.801594, 0.592102, 0.082843,
		25.033850, 35.523479, 35.628979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071531, 34.734653, 35.736088>,  <24.472734, 35.109009, 35.570988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071531, 34.734653, 35.736088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172173, 35.103497, 35.853676>,  <25.232557, 35.324802, 35.924229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172173, 35.103497, 35.853676>,  <25.071531, 34.734653, 35.736088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172173, 35.103497, 35.853676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382029, -0.373699, 0.845224,
		0.889242, -0.100355, -0.446294,
		0.251602, 0.922105, 0.293970,
		25.247654, 35.380127, 35.941868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714254, 34.705471, 35.908401>,  <25.071531, 34.734653, 35.736088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714254, 34.705471, 35.908401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582909, 35.025826, 36.108707>,  <25.504101, 35.218037, 36.228889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582909, 35.025826, 36.108707>,  <25.714254, 34.705471, 35.908401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582909, 35.025826, 36.108707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303017, -0.412818, 0.858931,
		0.894626, 0.433783, -0.107126,
		-0.328366, 0.800883, 0.500761,
		25.484398, 35.266090, 36.258934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278252, 35.020672, 36.298347>,  <25.714254, 34.705471, 35.908401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278252, 35.020672, 36.298347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916248, 35.064335, 36.462807>,  <25.699047, 35.090530, 36.561481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916248, 35.064335, 36.462807>,  <26.278252, 35.020672, 36.298347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916248, 35.064335, 36.462807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285738, -0.560028, 0.777639,
		0.315139, 0.821251, 0.475640,
		-0.905009, 0.109156, 0.411150,
		25.644745, 35.097080, 36.586151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399242, 35.259007, 36.952522>,  <26.278252, 35.020672, 36.298347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399242, 35.259007, 36.952522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021185, 35.133198, 36.987801>,  <25.794350, 35.057713, 37.008968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021185, 35.133198, 36.987801>,  <26.399242, 35.259007, 36.952522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021185, 35.133198, 36.987801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237077, -0.474739, 0.847595,
		-0.224714, 0.822010, 0.523262,
		-0.945145, -0.314520, 0.088199,
		25.737642, 35.038841, 37.014259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962589, 35.488972, 37.543804>,  <26.399242, 35.259007, 36.952522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962589, 35.488972, 37.543804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892086, 35.102123, 37.470470>,  <25.849783, 34.870014, 37.426472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892086, 35.102123, 37.470470>,  <25.962589, 35.488972, 37.543804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892086, 35.102123, 37.470470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490123, -0.247744, 0.835704,
		-0.853646, 0.057446, 0.517676,
		-0.176259, -0.967121, -0.183330,
		25.839209, 34.811989, 37.415470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982178, 35.166584, 38.217041>,  <25.962589, 35.488972, 37.543804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982178, 35.166584, 38.217041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017210, 34.850197, 37.974819>,  <26.038229, 34.660362, 37.829487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017210, 34.850197, 37.974819>,  <25.982178, 35.166584, 38.217041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017210, 34.850197, 37.974819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402810, -0.527855, 0.747739,
		-0.911084, -0.309413, 0.272380,
		0.087583, -0.790970, -0.605555,
		26.043486, 34.612907, 37.793152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731178, 34.584587, 38.518005>,  <25.982178, 35.166584, 38.217041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731178, 34.584587, 38.518005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972483, 34.435959, 38.235725>,  <26.117266, 34.346783, 38.066357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972483, 34.435959, 38.235725>,  <25.731178, 34.584587, 38.518005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972483, 34.435959, 38.235725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508206, -0.502844, 0.699195,
		-0.614655, -0.780439, -0.114514,
		0.603263, -0.371567, -0.705700,
		26.153461, 34.324490, 38.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881853, 33.972103, 38.744408>,  <25.731178, 34.584587, 38.518005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881853, 33.972103, 38.744408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156105, 33.994762, 38.454109>,  <26.320656, 34.008358, 38.279930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156105, 33.994762, 38.454109>,  <25.881853, 33.972103, 38.744408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156105, 33.994762, 38.454109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597902, -0.612521, 0.517041,
		-0.415243, -0.788421, -0.453834,
		0.685629, 0.056651, -0.725744,
		26.361794, 34.011757, 38.236385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128647, 33.328186, 38.589020>,  <25.881853, 33.972103, 38.744408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128647, 33.328186, 38.589020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414265, 33.586624, 38.481167>,  <26.585634, 33.741688, 38.416454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414265, 33.586624, 38.481167>,  <26.128647, 33.328186, 38.589020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414265, 33.586624, 38.481167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682783, -0.557529, 0.472196,
		0.154759, -0.521266, -0.839245,
		0.714043, 0.646098, -0.269629,
		26.628477, 33.780453, 38.400280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685925, 33.070988, 38.029156>,  <26.128647, 33.328186, 38.589020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685925, 33.070988, 38.029156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843496, 33.327320, 38.292717>,  <26.938040, 33.481117, 38.450855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843496, 33.327320, 38.292717>,  <26.685925, 33.070988, 38.029156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843496, 33.327320, 38.292717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629891, -0.710286, 0.314214,
		0.669370, 0.291260, -0.683456,
		0.393931, 0.640828, 0.658906,
		26.961676, 33.519569, 38.490391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225096, 32.694962, 38.203796>,  <26.685925, 33.070988, 38.029156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225096, 32.694962, 38.203796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236147, 32.968246, 38.495674>,  <27.242779, 33.132217, 38.670799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236147, 32.968246, 38.495674>,  <27.225096, 32.694962, 38.203796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236147, 32.968246, 38.495674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621862, -0.583271, 0.522573,
		0.782639, 0.439331, -0.440981,
		0.027629, 0.683215, 0.729694,
		27.244436, 33.173210, 38.714581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795563, 33.210129, 38.261364>,  <27.225096, 32.694962, 38.203796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795563, 33.210129, 38.261364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683664, 33.088051, 38.625473>,  <27.616526, 33.014805, 38.843941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683664, 33.088051, 38.625473>,  <27.795563, 33.210129, 38.261364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683664, 33.088051, 38.625473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849028, -0.521276, 0.086154,
		0.448211, 0.796951, 0.404940,
		-0.279746, -0.305190, 0.910275,
		27.599741, 32.996494, 38.898556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896044, 33.441753, 37.531025>,  <27.795563, 33.210129, 38.261364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896044, 33.441753, 37.531025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883400, 33.047279, 37.465981>,  <27.875813, 32.810596, 37.426952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883400, 33.047279, 37.465981>,  <27.896044, 33.441753, 37.531025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883400, 33.047279, 37.465981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833035, 0.063908, -0.549516,
		0.552316, -0.152833, 0.819505,
		-0.031611, -0.986183, -0.162613,
		27.873917, 32.751423, 37.417198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309471, 33.995800, 37.387398>,  <27.896044, 33.441753, 37.531025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309471, 33.995800, 37.387398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002937, 33.939075, 37.638035>,  <26.819017, 33.905041, 37.788418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002937, 33.939075, 37.638035>,  <27.309471, 33.995800, 37.387398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002937, 33.939075, 37.638035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623543, 0.399012, -0.672297,
		-0.154684, -0.905914, -0.394199,
		-0.766334, -0.141807, 0.626597,
		26.773037, 33.896534, 37.826015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810795, 33.734886, 37.017159>,  <27.309471, 33.995800, 37.387398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810795, 33.734886, 37.017159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619240, 33.888821, 37.332771>,  <26.504307, 33.981182, 37.522137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619240, 33.888821, 37.332771>,  <26.810795, 33.734886, 37.017159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619240, 33.888821, 37.332771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649383, 0.449519, -0.613379,
		-0.590737, -0.806121, 0.034640,
		-0.478886, 0.384840, 0.789028,
		26.475574, 34.004272, 37.569481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127211, 33.566891, 36.983234>,  <26.810795, 33.734886, 37.017159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127211, 33.566891, 36.983234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095352, 33.873688, 37.237911>,  <26.076237, 34.057766, 37.390717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095352, 33.873688, 37.237911>,  <26.127211, 33.566891, 36.983234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095352, 33.873688, 37.237911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779217, 0.350437, -0.519629,
		-0.621673, -0.537510, 0.569742,
		-0.079647, 0.766992, 0.636694,
		26.071459, 34.103786, 37.428921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449160, 33.556721, 37.195396>,  <26.127211, 33.566891, 36.983234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449160, 33.556721, 37.195396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571507, 33.935989, 37.229851>,  <25.644915, 34.163551, 37.250523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571507, 33.935989, 37.229851>,  <25.449160, 33.556721, 37.195396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571507, 33.935989, 37.229851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896279, 0.317279, -0.309869,
		-0.321137, 0.017578, 0.946870,
		0.305868, 0.948169, 0.086135,
		25.663267, 34.220440, 37.255692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912939, 33.944408, 37.250053>,  <25.449160, 33.556721, 37.195396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912939, 33.944408, 37.250053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165485, 34.248489, 37.188770>,  <25.317013, 34.430939, 37.152000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165485, 34.248489, 37.188770>,  <24.912939, 33.944408, 37.250053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165485, 34.248489, 37.188770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756889, 0.561074, -0.335135,
		-0.168812, 0.327551, 0.929631,
		0.631366, 0.760202, -0.153203,
		25.354895, 34.476551, 37.142811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547314, 34.496925, 37.005379>,  <24.912939, 33.944408, 37.250053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547314, 34.496925, 37.005379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906683, 34.672569, 37.006741>,  <25.122305, 34.777958, 37.007557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906683, 34.672569, 37.006741>,  <24.547314, 34.496925, 37.005379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906683, 34.672569, 37.006741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388316, 0.798062, -0.460769,
		-0.205045, 0.412645, 0.887514,
		0.898425, 0.439114, 0.003402,
		25.176210, 34.804302, 37.007763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425306, 35.250729, 37.102531>,  <24.547314, 34.496925, 37.005379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425306, 35.250729, 37.102531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795656, 35.218407, 36.954895>,  <25.017866, 35.199013, 36.866314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795656, 35.218407, 36.954895>,  <24.425306, 35.250729, 37.102531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795656, 35.218407, 36.954895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180544, 0.763504, -0.620052,
		0.331900, 0.640728, 0.692322,
		0.925876, -0.080800, -0.369087,
		25.073420, 35.194168, 36.844170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575541, 35.932247, 36.705441>,  <24.425306, 35.250729, 37.102531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575541, 35.932247, 36.705441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883410, 35.699352, 36.600674>,  <25.068130, 35.559616, 36.537815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883410, 35.699352, 36.600674>,  <24.575541, 35.932247, 36.705441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883410, 35.699352, 36.600674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210651, 0.618869, -0.756722,
		0.602684, 0.527256, 0.598977,
		0.769674, -0.582239, -0.261915,
		25.114311, 35.524681, 36.522099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179474, 36.375721, 36.867199>,  <24.575541, 35.932247, 36.705441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179474, 36.375721, 36.867199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140871, 36.100155, 36.579842>,  <25.117710, 35.934814, 36.407429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140871, 36.100155, 36.579842>,  <25.179474, 36.375721, 36.867199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140871, 36.100155, 36.579842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254428, 0.680708, -0.686953,
		0.962264, -0.249075, 0.109585,
		-0.096507, -0.688911, -0.718392,
		25.111919, 35.893482, 36.364323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134691, 36.492599, 36.164162>,  <25.179474, 36.375721, 36.867199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134691, 36.492599, 36.164162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206942, 36.384026, 35.786018>,  <25.250292, 36.318882, 35.559132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206942, 36.384026, 35.786018>,  <25.134691, 36.492599, 36.164162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206942, 36.384026, 35.786018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784538, 0.619450, -0.027960,
		0.593191, -0.736618, 0.324837,
		0.180625, -0.271433, -0.945357,
		25.261129, 36.302597, 35.502411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527121, 35.958984, 35.895088>,  <25.134691, 36.492599, 36.164162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527121, 35.958984, 35.895088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826611, 36.061958, 35.650745>,  <26.006304, 36.123741, 35.504139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826611, 36.061958, 35.650745>,  <25.527121, 35.958984, 35.895088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826611, 36.061958, 35.650745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661443, -0.229425, 0.714043,
		0.043673, -0.938665, -0.342053,
		0.748723, 0.257433, -0.610854,
		26.051228, 36.139187, 35.467491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991110, 35.403667, 35.586346>,  <25.527121, 35.958984, 35.895088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991110, 35.403667, 35.586346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174116, 35.754177, 35.646782>,  <26.283920, 35.964481, 35.683044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174116, 35.754177, 35.646782>,  <25.991110, 35.403667, 35.586346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174116, 35.754177, 35.646782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502327, -0.394908, 0.769230,
		0.733722, -0.276037, -0.620851,
		0.457515, 0.876271, 0.151091,
		26.311371, 36.017059, 35.692108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094873, 35.007988, 34.926239>,  <25.991110, 35.403667, 35.586346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094873, 35.007988, 34.926239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054426, 35.164337, 34.560291>,  <26.030159, 35.258148, 34.340721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054426, 35.164337, 34.560291>,  <26.094873, 35.007988, 34.926239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054426, 35.164337, 34.560291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061267, -0.920287, -0.386417,
		-0.992986, 0.016979, 0.117004,
		-0.101116, 0.390875, -0.914872,
		26.024092, 35.281601, 34.285828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551935, 34.789963, 34.699718>,  <26.094873, 35.007988, 34.926239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551935, 34.789963, 34.699718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762743, 34.861599, 34.367413>,  <25.889229, 34.904583, 34.168030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762743, 34.861599, 34.367413>,  <25.551935, 34.789963, 34.699718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762743, 34.861599, 34.367413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212959, -0.918524, -0.333110,
		-0.822737, 0.352476, -0.445942,
		0.527022, 0.179094, -0.830767,
		25.920849, 34.915329, 34.118183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148609, 34.671097, 34.030537>,  <25.551935, 34.789963, 34.699718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148609, 34.671097, 34.030537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542662, 34.602570, 34.025364>,  <25.779093, 34.561451, 34.022263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542662, 34.602570, 34.025364>,  <25.148609, 34.671097, 34.030537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542662, 34.602570, 34.025364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171726, -0.979540, -0.104940,
		0.005313, 0.105600, -0.994394,
		0.985130, -0.171321, -0.012930,
		25.838202, 34.551174, 34.021484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437071, 34.334206, 33.517544>,  <25.148609, 34.671097, 34.030537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437071, 34.334206, 33.517544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664864, 34.252575, 33.836052>,  <25.801540, 34.203598, 34.027157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664864, 34.252575, 33.836052>,  <25.437071, 34.334206, 33.517544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664864, 34.252575, 33.836052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184873, -0.975673, -0.117833,
		0.800943, -0.080104, -0.593357,
		0.569484, -0.204073, 0.796268,
		25.835709, 34.191353, 34.074932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920124, 33.842537, 33.252590>,  <25.437071, 34.334206, 33.517544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920124, 33.842537, 33.252590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931110, 33.796646, 33.649796>,  <25.937702, 33.769112, 33.888119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931110, 33.796646, 33.649796>,  <25.920124, 33.842537, 33.252590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931110, 33.796646, 33.649796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207898, -0.971015, -0.117937,
		0.977765, 0.209685, -0.002820,
		0.027468, -0.114728, 0.993017,
		25.939350, 33.762226, 33.947701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549038, 33.650059, 33.456726>,  <25.920124, 33.842537, 33.252590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549038, 33.650059, 33.456726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308777, 33.525246, 33.751167>,  <26.164621, 33.450359, 33.927834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308777, 33.525246, 33.751167>,  <26.549038, 33.650059, 33.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308777, 33.525246, 33.751167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357565, -0.928329, -0.101746,
		0.715098, 0.202092, 0.669173,
		-0.600651, -0.312031, 0.736108,
		26.128582, 33.431637, 33.972000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674526, 33.565495, 34.203403>,  <26.549038, 33.650059, 33.456726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674526, 33.565495, 34.203403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376593, 33.441429, 34.439716>,  <26.197832, 33.366989, 34.581505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376593, 33.441429, 34.439716>,  <26.674526, 33.565495, 34.203403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376593, 33.441429, 34.439716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438431, -0.894933, 0.082903,
		0.502995, 0.320766, 0.802562,
		-0.744832, -0.310168, 0.590780,
		26.153143, 33.348377, 34.616951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049931, 33.226326, 34.714088>,  <26.674526, 33.565495, 34.203403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049931, 33.226326, 34.714088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669905, 33.102177, 34.701176>,  <26.441889, 33.027687, 34.693428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669905, 33.102177, 34.701176>,  <27.049931, 33.226326, 34.714088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669905, 33.102177, 34.701176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310531, -0.950563, 0.000076,
		-0.030713, -0.009953, 0.999479,
		-0.950067, -0.310372, -0.032286,
		26.384884, 33.009064, 34.691490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018265, 32.681053, 35.116898>,  <27.049931, 33.226326, 34.714088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018265, 32.681053, 35.116898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687620, 32.641338, 34.895321>,  <26.489233, 32.617512, 34.762375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687620, 32.641338, 34.895321>,  <27.018265, 32.681053, 35.116898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687620, 32.641338, 34.895321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157496, -0.985795, -0.058334,
		-0.540284, -0.135464, 0.830508,
		-0.826613, -0.099285, -0.553944,
		26.439636, 32.611553, 34.729137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554638, 32.056343, 35.386173>,  <27.018265, 32.681053, 35.116898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554638, 32.056343, 35.386173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499149, 32.128754, 34.996716>,  <26.465857, 32.172199, 34.763042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499149, 32.128754, 34.996716>,  <26.554638, 32.056343, 35.386173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499149, 32.128754, 34.996716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168136, -0.964573, -0.203297,
		-0.975955, -0.191906, 0.103367,
		-0.138719, 0.181029, -0.973645,
		26.457533, 32.183064, 34.704620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186670, 31.483274, 35.057076>,  <26.554638, 32.056343, 35.386173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186670, 31.483274, 35.057076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351133, 31.665405, 34.741196>,  <26.449812, 31.774685, 34.551666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351133, 31.665405, 34.741196>,  <26.186670, 31.483274, 35.057076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351133, 31.665405, 34.741196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012824, -0.863338, -0.504463,
		-0.911474, 0.217541, -0.349129,
		0.411158, 0.455328, -0.789699,
		26.474482, 31.802004, 34.504284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345619, 30.730299, 34.999809>,  <26.186670, 31.483274, 35.057076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345619, 30.730299, 34.999809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258041, 30.675669, 34.613358>,  <26.205494, 30.642891, 34.381485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258041, 30.675669, 34.613358>,  <26.345619, 30.730299, 34.999809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258041, 30.675669, 34.613358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357102, 0.910244, -0.209605,
		0.908042, -0.390899, -0.150525,
		-0.218949, -0.136577, -0.966131,
		26.192358, 30.634695, 34.323517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928864, 30.938776, 34.575642>,  <26.345619, 30.730299, 34.999809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928864, 30.938776, 34.575642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584776, 30.989491, 34.378078>,  <26.378325, 31.019920, 34.259541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584776, 30.989491, 34.378078>,  <26.928864, 30.938776, 34.575642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584776, 30.989491, 34.378078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097782, 0.991635, 0.084253,
		0.500463, 0.024180, -0.865420,
		-0.860218, 0.126788, -0.493913,
		26.326710, 31.027527, 34.229904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122704, 31.452866, 34.045361>,  <26.928864, 30.938776, 34.575642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122704, 31.452866, 34.045361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730135, 31.414709, 34.111946>,  <26.494593, 31.391815, 34.151897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730135, 31.414709, 34.111946>,  <27.122704, 31.452866, 34.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730135, 31.414709, 34.111946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092480, 0.995397, 0.025161,
		-0.168094, 0.009299, -0.985727,
		-0.981423, -0.095389, 0.166460,
		26.435707, 31.386093, 34.161884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636909, 31.951498, 33.561329>,  <27.122704, 31.452866, 34.045361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636909, 31.951498, 33.561329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425009, 31.887644, 33.894527>,  <26.297869, 31.849331, 34.094448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425009, 31.887644, 33.894527>,  <26.636909, 31.951498, 33.561329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425009, 31.887644, 33.894527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241951, 0.969762, 0.031972,
		-0.812910, -0.184607, -0.552356,
		-0.529751, -0.159634, 0.832995,
		26.266083, 31.839754, 34.144424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976545, 32.276039, 33.522053>,  <26.636909, 31.951498, 33.561329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976545, 32.276039, 33.522053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115387, 32.250805, 33.896336>,  <26.198692, 32.235664, 34.120903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115387, 32.250805, 33.896336>,  <25.976545, 32.276039, 33.522053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115387, 32.250805, 33.896336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379061, 0.903165, 0.201507,
		-0.857807, -0.424632, 0.289578,
		0.347103, -0.063086, 0.935703,
		26.219519, 32.231880, 34.177048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444426, 32.495911, 33.886478>,  <25.976545, 32.276039, 33.522053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444426, 32.495911, 33.886478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764927, 32.537949, 34.122086>,  <25.957228, 32.563171, 34.263451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764927, 32.537949, 34.122086>,  <25.444426, 32.495911, 33.886478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764927, 32.537949, 34.122086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297272, 0.924275, 0.239466,
		-0.519252, -0.366973, 0.771821,
		0.801253, 0.105098, 0.589022,
		26.005302, 32.569477, 34.298794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206312, 32.786560, 34.434826>,  <25.444426, 32.495911, 33.886478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206312, 32.786560, 34.434826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596470, 32.853157, 34.377014>,  <25.830564, 32.893116, 34.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596470, 32.853157, 34.377014>,  <25.206312, 32.786560, 34.434826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596470, 32.853157, 34.377014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157415, 0.984891, 0.072181,
		0.154366, -0.047653, 0.986864,
		0.975393, 0.166489, -0.144533,
		25.889088, 32.903103, 34.333652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355015, 33.158360, 34.967419>,  <25.206312, 32.786560, 34.434826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355015, 33.158360, 34.967419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620617, 33.215622, 34.673859>,  <25.779978, 33.249977, 34.497723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620617, 33.215622, 34.673859>,  <25.355015, 33.158360, 34.967419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620617, 33.215622, 34.673859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038350, 0.973691, 0.224623,
		0.746743, -0.177296, 0.641047,
		0.664007, 0.143151, -0.733896,
		25.819818, 33.258568, 34.453690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830919, 33.633770, 35.195923>,  <25.355015, 33.158360, 34.967419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830919, 33.633770, 35.195923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850224, 33.660053, 34.797253>,  <25.861805, 33.675823, 34.558052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850224, 33.660053, 34.797253>,  <25.830919, 33.633770, 35.195923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850224, 33.660053, 34.797253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254146, 0.964186, 0.075869,
		0.965961, -0.256961, 0.029832,
		0.048259, 0.065704, -0.996671,
		25.864702, 33.679764, 34.498253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542576, 33.798920, 35.058842>,  <25.830919, 33.633770, 35.195923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542576, 33.798920, 35.058842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300228, 33.934246, 34.770824>,  <26.154819, 34.015442, 34.598015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300228, 33.934246, 34.770824>,  <26.542576, 33.798920, 35.058842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300228, 33.934246, 34.770824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309453, 0.934018, 0.178466,
		0.732913, -0.114693, -0.670585,
		-0.605869, 0.338314, -0.720046,
		26.118467, 34.035740, 34.554810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104242, 34.105656, 34.587856>,  <26.542576, 33.798920, 35.058842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104242, 34.105656, 34.587856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731390, 34.115582, 34.443348>,  <26.507679, 34.121536, 34.356644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731390, 34.115582, 34.443348>,  <27.104242, 34.105656, 34.587856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731390, 34.115582, 34.443348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074431, 0.989477, -0.124078,
		0.354389, -0.142546, -0.924169,
		-0.932131, 0.024815, -0.361270,
		26.451750, 34.123028, 34.334969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109360, 34.293781, 33.841862>,  <27.104242, 34.105656, 34.587856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109360, 34.293781, 33.841862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734200, 34.377636, 33.952423>,  <26.509104, 34.427948, 34.018761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734200, 34.377636, 33.952423>,  <27.109360, 34.293781, 33.841862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734200, 34.377636, 33.952423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086453, 0.912861, -0.399012,
		-0.335964, -0.350337, -0.874295,
		-0.937899, 0.209639, 0.276401,
		26.452829, 34.440529, 34.035343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738960, 34.507889, 33.260765>,  <27.109360, 34.293781, 33.841862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738960, 34.507889, 33.260765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560106, 34.685368, 33.571430>,  <26.452793, 34.791855, 33.757828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560106, 34.685368, 33.571430>,  <26.738960, 34.507889, 33.260765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560106, 34.685368, 33.571430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119602, 0.890158, -0.439675,
		-0.886435, -0.103703, -0.451087,
		-0.447134, 0.443693, 0.776664,
		26.425966, 34.818474, 33.804428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403551, 35.086140, 33.026207>,  <26.738960, 34.507889, 33.260765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403551, 35.086140, 33.026207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488041, 35.171513, 33.407749>,  <26.538734, 35.222736, 33.636673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488041, 35.171513, 33.407749>,  <26.403551, 35.086140, 33.026207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488041, 35.171513, 33.407749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119357, 0.962933, -0.241894,
		-0.970123, 0.164942, 0.177918,
		0.211222, 0.213432, 0.953851,
		26.551407, 35.235542, 33.693905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871706, 35.561420, 33.256943>,  <26.403551, 35.086140, 33.026207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871706, 35.561420, 33.256943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192059, 35.604313, 33.492603>,  <26.384270, 35.630047, 33.633999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192059, 35.604313, 33.492603>,  <25.871706, 35.561420, 33.256943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192059, 35.604313, 33.492603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060317, 0.993279, -0.098791,
		-0.595780, 0.043584, 0.801964,
		0.800879, 0.107229, 0.589147,
		26.432322, 35.636482, 33.669346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672800, 35.958752, 33.905525>,  <25.871706, 35.561420, 33.256943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672800, 35.958752, 33.905525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055716, 36.008553, 33.801144>,  <26.285465, 36.038433, 33.738514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055716, 36.008553, 33.801144>,  <25.672800, 35.958752, 33.905525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055716, 36.008553, 33.801144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128972, 0.991648, 0.000003,
		0.258773, 0.033653, 0.965351,
		0.957289, 0.124504, -0.260952,
		26.342903, 36.045902, 33.722858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233898, 36.374928, 34.358189>,  <25.672800, 35.958752, 33.905525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233898, 36.374928, 34.358189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234755, 36.422890, 33.961075>,  <26.235268, 36.451668, 33.722809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234755, 36.422890, 33.961075>,  <26.233898, 36.374928, 34.358189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234755, 36.422890, 33.961075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245128, 0.962559, 0.115730,
		0.969488, 0.243111, 0.031454,
		0.002141, 0.119909, -0.992783,
		26.235397, 36.458862, 33.663239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505934, 37.000381, 34.154774>,  <26.233898, 36.374928, 34.358189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505934, 37.000381, 34.154774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270039, 36.893681, 33.849869>,  <26.128502, 36.829659, 33.666924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270039, 36.893681, 33.849869>,  <26.505934, 37.000381, 34.154774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270039, 36.893681, 33.849869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370912, 0.927900, -0.037757,
		0.717379, 0.260467, -0.646162,
		-0.589739, -0.266755, -0.762266,
		26.093117, 36.813656, 33.621189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808821, 37.427708, 33.797684>,  <26.505934, 37.000381, 34.154774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808821, 37.427708, 33.797684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104504, 37.599457, 34.005226>,  <26.281914, 37.702507, 34.129753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104504, 37.599457, 34.005226>,  <25.808821, 37.427708, 33.797684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104504, 37.599457, 34.005226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663733, -0.595036, -0.453201,
		0.114148, 0.679393, -0.724842,
		0.739209, 0.429369, 0.518857,
		26.326265, 37.728268, 34.160885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343266, 37.550156, 33.283646>,  <25.808821, 37.427708, 33.797684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343266, 37.550156, 33.283646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518394, 37.553970, 33.643250>,  <26.623472, 37.556259, 33.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518394, 37.553970, 33.643250>,  <26.343266, 37.550156, 33.283646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518394, 37.553970, 33.643250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658117, -0.684660, -0.313246,
		0.612529, 0.728800, -0.306037,
		0.437825, 0.009536, 0.899010,
		26.649742, 37.556831, 33.912952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060648, 37.830780, 33.274353>,  <26.343266, 37.550156, 33.283646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060648, 37.830780, 33.274353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999725, 37.578686, 33.578880>,  <26.963171, 37.427429, 33.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999725, 37.578686, 33.578880>,  <27.060648, 37.830780, 33.274353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999725, 37.578686, 33.578880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716338, -0.601110, -0.354298,
		0.680928, 0.491401, 0.543012,
		-0.152307, -0.630232, 0.761322,
		26.954033, 37.389618, 33.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704144, 37.807293, 33.647793>,  <27.060648, 37.830780, 33.274353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704144, 37.807293, 33.647793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495535, 37.467484, 33.679592>,  <27.370371, 37.263596, 33.698673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495535, 37.467484, 33.679592>,  <27.704144, 37.807293, 33.647793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495535, 37.467484, 33.679592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821858, -0.525191, -0.220733,
		0.229272, -0.049778, 0.972089,
		-0.521520, -0.849527, 0.079502,
		27.339079, 37.212624, 33.703442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256615, 37.483585, 33.710835>,  <27.704144, 37.807293, 33.647793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256615, 37.483585, 33.710835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943117, 37.243561, 33.646748>,  <27.755018, 37.099545, 33.608295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943117, 37.243561, 33.646748>,  <28.256615, 37.483585, 33.710835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943117, 37.243561, 33.646748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613583, -0.708105, -0.349432,
		0.096229, -0.372173, 0.923161,
		-0.783744, -0.600062, -0.160219,
		27.707994, 37.063541, 33.598682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948959, 37.361923, 33.842545>,  <28.256615, 37.483585, 33.710835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948959, 37.361923, 33.842545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839350, 37.210560, 34.196205>,  <28.773584, 37.119740, 34.408401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839350, 37.210560, 34.196205>,  <28.948959, 37.361923, 33.842545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839350, 37.210560, 34.196205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245850, -0.916353, -0.315998,
		0.929768, 0.130776, 0.344136,
		-0.274025, -0.378410, 0.884147,
		28.757143, 37.097038, 34.461449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291164, 37.551022, 33.295586>,  <28.948959, 37.361923, 33.842545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291164, 37.551022, 33.295586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296839, 37.447922, 32.909142>,  <29.300243, 37.386063, 32.677277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296839, 37.447922, 32.909142>,  <29.291164, 37.551022, 33.295586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296839, 37.447922, 32.909142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999897, 0.001386, 0.014312,
		-0.002350, -0.966212, 0.257739,
		0.014186, -0.257746, -0.966108,
		29.301094, 37.370598, 32.619308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636393, 36.888142, 33.147861>,  <29.291164, 37.551022, 33.295586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636393, 36.888142, 33.147861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669436, 37.117924, 32.822121>,  <29.689260, 37.255795, 32.626675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669436, 37.117924, 32.822121>,  <29.636393, 36.888142, 33.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669436, 37.117924, 32.822121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991015, -0.133607, 0.006277,
		-0.105197, -0.807557, -0.580333,
		0.082606, 0.574458, -0.814355,
		29.694218, 37.290260, 32.577812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987057, 36.454521, 32.667828>,  <29.636393, 36.888142, 33.147861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987057, 36.454521, 32.667828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028959, 36.842438, 32.579716>,  <30.054102, 37.075188, 32.526848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028959, 36.842438, 32.579716>,  <29.987057, 36.454521, 32.667828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028959, 36.842438, 32.579716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990491, -0.121608, -0.064340,
		-0.089184, -0.211446, -0.973312,
		0.104758, 0.969795, -0.220281,
		30.060387, 37.133377, 32.513630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063000, 35.641083, 32.637573>,  <29.987057, 36.454521, 32.667828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063000, 35.641083, 32.637573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149269, 35.868019, 32.319679>,  <30.201031, 36.004181, 32.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149269, 35.868019, 32.319679>,  <30.063000, 35.641083, 32.637573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149269, 35.868019, 32.319679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443728, -0.668061, -0.597327,
		-0.869822, 0.481476, 0.107662,
		0.215674, 0.567341, -0.794738,
		30.213972, 36.038223, 32.081257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808598, 35.193066, 32.243706>,  <30.063000, 35.641083, 32.637573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808598, 35.193066, 32.243706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915314, 35.496460, 32.005875>,  <29.979343, 35.678497, 31.863176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915314, 35.496460, 32.005875>,  <29.808598, 35.193066, 32.243706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915314, 35.496460, 32.005875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316438, -0.513791, -0.797425,
		-0.910324, 0.400891, 0.102940,
		0.266790, 0.758489, -0.594573,
		29.995350, 35.724007, 31.827503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311703, 35.412647, 31.802540>,  <29.808598, 35.193066, 32.243706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311703, 35.412647, 31.802540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644121, 35.520401, 31.607895>,  <29.843573, 35.585052, 31.491108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644121, 35.520401, 31.607895>,  <29.311703, 35.412647, 31.802540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644121, 35.520401, 31.607895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291321, -0.534459, -0.793401,
		-0.473806, 0.801114, -0.365683,
		0.831048, 0.269387, -0.486611,
		29.893436, 35.601215, 31.461912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121338, 35.585556, 31.130856>,  <29.311703, 35.412647, 31.802540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121338, 35.585556, 31.130856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516209, 35.546909, 31.080029>,  <29.753132, 35.523720, 31.049532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516209, 35.546909, 31.080029>,  <29.121338, 35.585556, 31.130856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516209, 35.546909, 31.080029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156496, -0.428926, -0.889680,
		0.031455, 0.898158, -0.438547,
		0.987178, -0.096616, -0.127066,
		29.812363, 35.517925, 31.041908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167150, 35.774654, 30.463022>,  <29.121338, 35.585556, 31.130856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167150, 35.774654, 30.463022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492086, 35.562054, 30.559032>,  <29.687048, 35.434494, 30.616638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492086, 35.562054, 30.559032>,  <29.167150, 35.774654, 30.463022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492086, 35.562054, 30.559032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101436, -0.534076, -0.839330,
		0.574296, 0.657473, -0.487764,
		0.812339, -0.531500, 0.240026,
		29.735788, 35.402603, 30.631041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486866, 35.932217, 29.866667>,  <29.167150, 35.774654, 30.463022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486866, 35.932217, 29.866667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650896, 35.612282, 30.041985>,  <29.749313, 35.420322, 30.147175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650896, 35.612282, 30.041985>,  <29.486866, 35.932217, 29.866667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650896, 35.612282, 30.041985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152593, -0.413618, -0.897572,
		0.899196, 0.434952, -0.047565,
		0.410075, -0.799836, 0.438294,
		29.773918, 35.372330, 30.173473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932236, 35.740231, 29.379150>,  <29.486866, 35.932217, 29.866667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932236, 35.740231, 29.379150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905354, 35.413548, 29.608402>,  <29.889225, 35.217537, 29.745953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905354, 35.413548, 29.608402>,  <29.932236, 35.740231, 29.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905354, 35.413548, 29.608402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195920, -0.574045, -0.795040,
		0.978314, 0.058858, 0.198587,
		-0.067204, -0.816706, 0.573128,
		29.885193, 35.168537, 29.780340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571486, 35.313240, 29.349058>,  <29.932236, 35.740231, 29.379150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571486, 35.313240, 29.349058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293739, 35.046444, 29.457117>,  <30.127092, 34.886364, 29.521952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293739, 35.046444, 29.457117>,  <30.571486, 35.313240, 29.349058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293739, 35.046444, 29.457117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233224, -0.563717, -0.792357,
		0.680783, -0.487179, 0.546983,
		-0.694364, -0.666993, 0.270148,
		30.085430, 34.846348, 29.538162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862471, 34.754032, 29.223360>,  <30.571486, 35.313240, 29.349058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862471, 34.754032, 29.223360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477015, 34.647190, 29.220398>,  <30.245741, 34.583084, 29.218620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477015, 34.647190, 29.220398>,  <30.862471, 34.754032, 29.223360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477015, 34.647190, 29.220398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141019, -0.484832, -0.863164,
		0.226967, -0.832822, 0.504870,
		-0.963638, -0.267106, -0.007403,
		30.187923, 34.567059, 29.218178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862946, 34.044827, 28.953350>,  <30.862471, 34.754032, 29.223360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862946, 34.044827, 28.953350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476395, 34.140724, 28.916185>,  <30.244463, 34.198261, 28.893887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476395, 34.140724, 28.916185>,  <30.862946, 34.044827, 28.953350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476395, 34.140724, 28.916185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056225, -0.549654, -0.833498,
		-0.250896, -0.800252, 0.544654,
		-0.966380, 0.239745, -0.092911,
		30.186481, 34.212646, 28.888311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544632, 33.450436, 28.777719>,  <30.862946, 34.044827, 28.953350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544632, 33.450436, 28.777719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306757, 33.753906, 28.671316>,  <30.164032, 33.935989, 28.607473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306757, 33.753906, 28.671316>,  <30.544632, 33.450436, 28.777719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306757, 33.753906, 28.671316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060895, -0.372430, -0.926060,
		-0.801648, -0.534517, 0.267679,
		-0.594687, 0.758674, -0.266008,
		30.128351, 33.981510, 28.591513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006929, 33.138828, 28.354237>,  <30.544632, 33.450436, 28.777719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006929, 33.138828, 28.354237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018286, 33.527931, 28.262201>,  <30.025101, 33.761391, 28.206980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018286, 33.527931, 28.262201>,  <30.006929, 33.138828, 28.354237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018286, 33.527931, 28.262201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178200, -0.221569, -0.958724,
		-0.983585, 0.068223, 0.167054,
		0.028393, 0.972755, -0.230090,
		30.026804, 33.819759, 28.193174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392822, 33.216911, 27.832714>,  <30.006929, 33.138828, 28.354237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392822, 33.216911, 27.832714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620419, 33.541382, 27.778687>,  <29.756977, 33.736065, 27.746269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620419, 33.541382, 27.778687>,  <29.392822, 33.216911, 27.832714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620419, 33.541382, 27.778687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102825, -0.092781, -0.990363,
		-0.815889, 0.577397, 0.030617,
		0.568992, 0.811174, -0.135070,
		29.791117, 33.784733, 27.738165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092384, 33.536869, 27.441822>,  <29.392822, 33.216911, 27.832714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092384, 33.536869, 27.441822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463402, 33.679283, 27.396393>,  <29.686012, 33.764732, 27.369135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463402, 33.679283, 27.396393>,  <29.092384, 33.536869, 27.441822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463402, 33.679283, 27.396393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086345, -0.091512, -0.992053,
		-0.363603, 0.929979, -0.054140,
		0.927544, 0.356039, -0.113573,
		29.741665, 33.786095, 27.362320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095980, 34.019363, 26.888575>,  <29.092384, 33.536869, 27.441822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095980, 34.019363, 26.888575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485409, 33.928200, 26.894403>,  <29.719067, 33.873501, 26.897902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485409, 33.928200, 26.894403>,  <29.095980, 34.019363, 26.888575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485409, 33.928200, 26.894403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006865, -0.092986, -0.995644,
		0.228271, 0.969232, -0.092093,
		0.973574, -0.227908, 0.014572,
		29.777481, 33.859829, 26.898775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387381, 34.470840, 26.414953>,  <29.095980, 34.019363, 26.888575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387381, 34.470840, 26.414953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652306, 34.175522, 26.465969>,  <29.811260, 33.998333, 26.496578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652306, 34.175522, 26.465969>,  <29.387381, 34.470840, 26.414953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652306, 34.175522, 26.465969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055778, -0.121168, -0.991064,
		0.747149, 0.663507, -0.039071,
		0.662312, -0.738293, 0.127540,
		29.851000, 33.954033, 26.504230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931036, 34.669758, 25.987383>,  <29.387381, 34.470840, 26.414953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931036, 34.669758, 25.987383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991974, 34.280293, 26.055229>,  <30.028536, 34.046612, 26.095938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991974, 34.280293, 26.055229>,  <29.931036, 34.669758, 25.987383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991974, 34.280293, 26.055229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110682, -0.187348, -0.976038,
		0.982110, 0.129921, -0.136308,
		0.152345, -0.973664, 0.169616,
		30.037678, 33.988194, 26.106113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322702, 34.450912, 25.527838>,  <29.931036, 34.669758, 25.987383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322702, 34.450912, 25.527838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171530, 34.097240, 25.637669>,  <30.080826, 33.885036, 25.703568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171530, 34.097240, 25.637669>,  <30.322702, 34.450912, 25.527838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171530, 34.097240, 25.637669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077860, -0.265168, -0.961054,
		0.922553, -0.384593, 0.031373,
		-0.377934, -0.884180, 0.274576,
		30.058149, 33.831985, 25.720041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780678, 33.972485, 25.194931>,  <30.322702, 34.450912, 25.527838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780678, 33.972485, 25.194931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432114, 33.801498, 25.291191>,  <30.222975, 33.698906, 25.348948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432114, 33.801498, 25.291191>,  <30.780678, 33.972485, 25.194931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432114, 33.801498, 25.291191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147863, -0.238873, -0.959727,
		0.467736, -0.871902, 0.144951,
		-0.871413, -0.427466, 0.240651,
		30.170691, 33.673260, 25.363386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755539, 33.374981, 24.801943>,  <30.780678, 33.972485, 25.194931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755539, 33.374981, 24.801943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374582, 33.434521, 24.908373>,  <30.146008, 33.470245, 24.972231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374582, 33.434521, 24.908373>,  <30.755539, 33.374981, 24.801943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374582, 33.434521, 24.908373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297155, -0.258007, -0.919310,
		-0.068190, -0.954608, 0.289955,
		-0.952392, 0.148850, 0.266073,
		30.088865, 33.479176, 24.988195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412790, 32.824039, 24.632967>,  <30.755539, 33.374981, 24.801943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412790, 32.824039, 24.632967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117035, 33.092812, 24.650043>,  <29.939583, 33.254074, 24.660290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117035, 33.092812, 24.650043>,  <30.412790, 32.824039, 24.632967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117035, 33.092812, 24.650043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355367, -0.335616, -0.872397,
		-0.571857, -0.660210, 0.486931,
		-0.739387, 0.671926, 0.042693,
		29.895218, 33.294388, 24.662851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849739, 32.393658, 24.318211>,  <30.412790, 32.824039, 24.632967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849739, 32.393658, 24.318211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756681, 32.782169, 24.298210>,  <29.700848, 33.015274, 24.286209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756681, 32.782169, 24.298210>,  <29.849739, 32.393658, 24.318211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756681, 32.782169, 24.298210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368184, -0.135542, -0.919820,
		-0.900176, -0.195579, 0.389141,
		-0.232642, 0.971276, -0.050003,
		29.686890, 33.073551, 24.283209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179270, 32.395031, 24.019156>,  <29.849739, 32.393658, 24.318211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179270, 32.395031, 24.019156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310574, 32.766766, 23.951544>,  <29.389357, 32.989807, 23.910976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310574, 32.766766, 23.951544>,  <29.179270, 32.395031, 24.019156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310574, 32.766766, 23.951544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368020, -0.038976, -0.929001,
		-0.869946, 0.367161, 0.329221,
		0.328261, 0.929340, -0.169029,
		29.409052, 33.045567, 23.900835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540884, 32.772087, 23.714247>,  <29.179270, 32.395031, 24.019156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540884, 32.772087, 23.714247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868559, 32.988483, 23.638073>,  <29.065163, 33.118320, 23.592369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868559, 32.988483, 23.638073>,  <28.540884, 32.772087, 23.714247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868559, 32.988483, 23.638073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242847, 0.026378, -0.969706,
		-0.519576, 0.840616, 0.152986,
		0.819186, 0.540988, -0.190436,
		29.114315, 33.150780, 23.580942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374699, 33.307343, 23.228281>,  <28.540884, 32.772087, 23.714247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374699, 33.307343, 23.228281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769514, 33.252651, 23.194674>,  <29.006403, 33.219837, 23.174509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769514, 33.252651, 23.194674>,  <28.374699, 33.307343, 23.228281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769514, 33.252651, 23.194674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107287, -0.172847, -0.979088,
		0.119348, 0.975412, -0.185276,
		0.987039, -0.136730, -0.084020,
		29.065626, 33.211632, 23.169468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513327, 33.643253, 22.687738>,  <28.374699, 33.307343, 23.228281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513327, 33.643253, 22.687738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848822, 33.428864, 22.726223>,  <29.050117, 33.300232, 22.749313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848822, 33.428864, 22.726223>,  <28.513327, 33.643253, 22.687738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848822, 33.428864, 22.726223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103837, -0.016020, -0.994465,
		0.534547, 0.844084, 0.042217,
		0.838736, -0.535972, 0.096211,
		29.100443, 33.268070, 22.755087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100126, 33.932018, 22.314224>,  <28.513327, 33.643253, 22.687738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100126, 33.932018, 22.314224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268044, 33.569950, 22.340902>,  <29.368793, 33.352711, 22.356909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268044, 33.569950, 22.340902>,  <29.100126, 33.932018, 22.314224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268044, 33.569950, 22.340902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066547, -0.042588, -0.996874,
		0.905178, 0.422917, 0.042358,
		0.419791, -0.905167, 0.066693,
		29.393980, 33.298401, 22.360910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650251, 33.970486, 21.926861>,  <29.100126, 33.932018, 22.314224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650251, 33.970486, 21.926861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571520, 33.578529, 21.939919>,  <29.524281, 33.343353, 21.947754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571520, 33.578529, 21.939919>,  <29.650251, 33.970486, 21.926861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571520, 33.578529, 21.939919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082786, -0.049787, -0.995323,
		0.976936, -0.193206, 0.090921,
		-0.196829, -0.979894, 0.032644,
		29.512470, 33.284561, 21.949711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109118, 33.735920, 21.505396>,  <29.650251, 33.970486, 21.926861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109118, 33.735920, 21.505396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838352, 33.443089, 21.536001>,  <29.675894, 33.267391, 21.554365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838352, 33.443089, 21.536001>,  <30.109118, 33.735920, 21.505396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838352, 33.443089, 21.536001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041330, -0.065983, -0.996964,
		0.734903, -0.678019, 0.014408,
		-0.676911, -0.732077, 0.076513,
		29.635279, 33.223465, 21.558956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408237, 33.254448, 21.003031>,  <30.109118, 33.735920, 21.505396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408237, 33.254448, 21.003031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027969, 33.156677, 21.079430>,  <29.799809, 33.098015, 21.125269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027969, 33.156677, 21.079430>,  <30.408237, 33.254448, 21.003031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027969, 33.156677, 21.079430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175193, -0.085055, -0.980853,
		0.255993, -0.965930, 0.038037,
		-0.950671, -0.244428, 0.190998,
		29.742767, 33.083347, 21.136728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324854, 32.627728, 20.741920>,  <30.408237, 33.254448, 21.003031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324854, 32.627728, 20.741920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953781, 32.775017, 20.766628>,  <29.731136, 32.863392, 20.781452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953781, 32.775017, 20.766628>,  <30.324854, 32.627728, 20.741920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953781, 32.775017, 20.766628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099227, -0.083660, -0.991542,
		-0.359942, -0.925966, 0.114147,
		-0.927683, 0.368224, 0.061768,
		29.675476, 32.885483, 20.785158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923016, 32.198494, 20.395054>,  <30.324854, 32.627728, 20.741920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923016, 32.198494, 20.395054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701878, 32.531757, 20.400913>,  <29.569195, 32.731716, 20.404428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701878, 32.531757, 20.400913>,  <29.923016, 32.198494, 20.395054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701878, 32.531757, 20.400913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020878, 0.031424, -0.999288,
		-0.833022, -0.552146, -0.034767,
		-0.552846, 0.833155, 0.014650,
		29.536024, 32.781704, 20.405308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408804, 32.002792, 20.049644>,  <29.923016, 32.198494, 20.395054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408804, 32.002792, 20.049644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427254, 32.402287, 20.041689>,  <29.438324, 32.641983, 20.036915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427254, 32.402287, 20.041689>,  <29.408804, 32.002792, 20.049644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427254, 32.402287, 20.041689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053467, -0.017415, -0.998418,
		-0.997504, 0.047114, 0.052597,
		0.046123, 0.998738, -0.019890,
		29.441092, 32.701908, 20.035723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831499, 32.194504, 19.685528>,  <29.408804, 32.002792, 20.049644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831499, 32.194504, 19.685528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089296, 32.499035, 19.657230>,  <29.243975, 32.681755, 19.640253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089296, 32.499035, 19.657230>,  <28.831499, 32.194504, 19.685528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089296, 32.499035, 19.657230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125697, 0.014234, -0.991967,
		-0.754208, 0.648207, 0.104871,
		0.644493, 0.761331, -0.070742,
		29.282644, 32.727432, 19.636007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725122, 32.580051, 18.921946>,  <28.831499, 32.194504, 19.685528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725122, 32.580051, 18.921946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083811, 32.719017, 19.031633>,  <29.299023, 32.802399, 19.097446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083811, 32.719017, 19.031633>,  <28.725122, 32.580051, 18.921946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083811, 32.719017, 19.031633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211317, 0.208326, -0.954958,
		-0.388896, 0.914277, 0.113395,
		0.896719, 0.347417, 0.274219,
		29.352827, 32.823242, 19.113899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805689, 33.177135, 18.417511>,  <28.725122, 32.580051, 18.921946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805689, 33.177135, 18.417511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171106, 33.091152, 18.555630>,  <29.390356, 33.039562, 18.638500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171106, 33.091152, 18.555630>,  <28.805689, 33.177135, 18.417511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171106, 33.091152, 18.555630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397495, 0.291856, -0.869953,
		0.086228, 0.931994, 0.352069,
		0.913544, -0.214960, 0.345297,
		29.445169, 33.026665, 18.659220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241217, 33.677780, 18.193092>,  <28.805689, 33.177135, 18.417511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241217, 33.677780, 18.193092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495495, 33.381565, 18.280264>,  <29.648062, 33.203835, 18.332567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495495, 33.381565, 18.280264>,  <29.241217, 33.677780, 18.193092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495495, 33.381565, 18.280264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468552, 0.145799, -0.871322,
		0.613473, 0.656008, 0.439664,
		0.635697, -0.740538, 0.217930,
		29.686203, 33.159405, 18.345642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946877, 33.876247, 18.102989>,  <29.241217, 33.677780, 18.193092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946877, 33.876247, 18.102989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957792, 33.482773, 18.031874>,  <29.964342, 33.246689, 17.989204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957792, 33.482773, 18.031874>,  <29.946877, 33.876247, 18.102989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957792, 33.482773, 18.031874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603893, 0.157954, -0.781258,
		0.796598, -0.086043, 0.598354,
		0.027291, -0.983690, -0.177787,
		29.965979, 33.187664, 17.978539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701843, 33.699863, 17.872074>,  <29.946877, 33.876247, 18.102989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701843, 33.699863, 17.872074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483305, 33.397781, 17.727200>,  <30.352182, 33.216534, 17.640274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483305, 33.397781, 17.727200>,  <30.701843, 33.699863, 17.872074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483305, 33.397781, 17.727200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568645, -0.016961, -0.822408,
		0.614941, -0.655273, 0.438708,
		-0.546343, -0.755201, -0.362188,
		30.319403, 33.171223, 17.618544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132099, 33.312393, 17.537458>,  <30.701843, 33.699863, 17.872074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132099, 33.312393, 17.537458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808304, 33.151089, 17.366760>,  <30.614027, 33.054306, 17.264341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808304, 33.151089, 17.366760>,  <31.132099, 33.312393, 17.537458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808304, 33.151089, 17.366760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515607, -0.140567, -0.845216,
		0.280853, -0.904226, 0.321710,
		-0.809488, -0.403257, -0.426747,
		30.565458, 33.030113, 17.238737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308712, 32.773628, 17.097515>,  <31.132099, 33.312393, 17.537458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308712, 32.773628, 17.097515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948343, 32.861893, 16.948040>,  <30.732122, 32.914852, 16.858355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948343, 32.861893, 16.948040>,  <31.308712, 32.773628, 17.097515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948343, 32.861893, 16.948040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366191, -0.075562, -0.927467,
		-0.232898, -0.972418, -0.012731,
		-0.900923, 0.220667, -0.373689,
		30.678066, 32.928093, 16.835934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240574, 32.224934, 16.670055>,  <31.308712, 32.773628, 17.097515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240574, 32.224934, 16.670055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988401, 32.512360, 16.552599>,  <30.837097, 32.684814, 16.482126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988401, 32.512360, 16.552599>,  <31.240574, 32.224934, 16.670055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988401, 32.512360, 16.552599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330666, -0.093647, -0.939090,
		-0.702294, -0.689128, -0.178567,
		-0.630431, 0.718563, -0.293639,
		30.799273, 32.727928, 16.464508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848173, 31.975847, 16.179070>,  <31.240574, 32.224934, 16.670055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848173, 31.975847, 16.179070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796301, 32.370125, 16.136009>,  <30.765177, 32.606693, 16.110172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796301, 32.370125, 16.136009>,  <30.848173, 31.975847, 16.179070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796301, 32.370125, 16.136009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026674, -0.111997, -0.993351,
		-0.991197, -0.125946, 0.040816,
		-0.129680, 0.985695, -0.107651,
		30.757397, 32.665833, 16.103714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348936, 32.127880, 15.710485>,  <30.848173, 31.975847, 16.179070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348936, 32.127880, 15.710485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583302, 32.451981, 15.704804>,  <30.723921, 32.646439, 15.701396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583302, 32.451981, 15.704804>,  <30.348936, 32.127880, 15.710485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583302, 32.451981, 15.704804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136366, -0.115855, -0.983861,
		-0.798817, 0.574521, -0.178372,
		0.585914, 0.810248, -0.014202,
		30.759075, 32.695057, 15.700543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161804, 32.608486, 15.137053>,  <30.348936, 32.127880, 15.710485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161804, 32.608486, 15.137053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545765, 32.623348, 15.248199>,  <30.776140, 32.632267, 15.314887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545765, 32.623348, 15.248199>,  <30.161804, 32.608486, 15.137053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545765, 32.623348, 15.248199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271284, -0.373006, -0.887283,
		0.070679, 0.927085, -0.368128,
		0.959901, 0.037155, 0.277867,
		30.833735, 32.634495, 15.331559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748009, 33.033802, 14.851575>,  <30.161804, 32.608486, 15.137053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748009, 33.033802, 14.851575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888226, 33.046421, 14.477168>,  <30.972355, 33.053993, 14.252524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888226, 33.046421, 14.477168>,  <30.748009, 33.033802, 14.851575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888226, 33.046421, 14.477168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627304, 0.734207, 0.259672,
		0.695422, -0.678192, 0.237580,
		0.350541, 0.031547, -0.936016,
		30.993387, 33.055885, 14.196363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423695, 32.957287, 14.844053>,  <30.748009, 33.033802, 14.851575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423695, 32.957287, 14.844053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356302, 33.140976, 14.495174>,  <31.315866, 33.251190, 14.285847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356302, 33.140976, 14.495174>,  <31.423695, 32.957287, 14.844053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356302, 33.140976, 14.495174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746477, 0.637303, 0.191356,
		0.643729, -0.618835, -0.450173,
		-0.168479, 0.459225, -0.872197,
		31.305759, 33.278744, 14.233516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106884, 33.228436, 14.634690>,  <31.423695, 32.957287, 14.844053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106884, 33.228436, 14.634690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802057, 33.413692, 14.453691>,  <31.619162, 33.524845, 14.345091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802057, 33.413692, 14.453691>,  <32.106884, 33.228436, 14.634690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802057, 33.413692, 14.453691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414290, 0.885836, 0.208947,
		0.497612, -0.028234, -0.866940,
		-0.762067, 0.463139, -0.452500,
		31.573437, 33.552635, 14.317941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238560, 33.845535, 14.195344>,  <32.106884, 33.228436, 14.634690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238560, 33.845535, 14.195344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875496, 33.906345, 14.351825>,  <31.657658, 33.942833, 14.445713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875496, 33.906345, 14.351825>,  <32.238560, 33.845535, 14.195344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875496, 33.906345, 14.351825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307129, 0.875849, 0.372237,
		-0.286044, 0.458014, -0.841666,
		-0.907662, 0.152024, 0.391201,
		31.603197, 33.951954, 14.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696821, 34.383369, 13.807587>,  <32.238560, 33.845535, 14.195344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696821, 34.383369, 13.807587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702763, 34.337612, 14.204916>,  <31.706327, 34.310158, 14.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702763, 34.337612, 14.204916>,  <31.696821, 34.383369, 13.807587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702763, 34.337612, 14.204916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369791, 0.923627, 0.100839,
		-0.928996, 0.365825, 0.056020,
		0.014852, -0.114394, 0.993324,
		31.707218, 34.303295, 14.502913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182716, 34.890202, 14.274590>,  <31.696821, 34.383369, 13.807587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182716, 34.890202, 14.274590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550396, 34.778397, 14.385550>,  <31.771004, 34.711315, 14.452127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550396, 34.778397, 14.385550>,  <31.182716, 34.890202, 14.274590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550396, 34.778397, 14.385550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322414, 0.938626, -0.122597,
		-0.226109, 0.202129, 0.952900,
		0.919197, -0.279508, 0.277401,
		31.826155, 34.694546, 14.468771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579403, 35.291660, 14.668791>,  <31.182716, 34.890202, 14.274590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579403, 35.291660, 14.668791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899448, 35.117691, 14.503548>,  <32.091476, 35.013309, 14.404402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899448, 35.117691, 14.503548>,  <31.579403, 35.291660, 14.668791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899448, 35.117691, 14.503548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484562, 0.874577, 0.017738,
		0.353580, -0.214369, 0.910509,
		0.800113, -0.434926, -0.413108,
		32.139481, 34.987213, 14.379615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222839, 35.525658, 14.958633>,  <31.579403, 35.291660, 14.668791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222839, 35.525658, 14.958633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321926, 35.408092, 14.589363>,  <32.381378, 35.337555, 14.367801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321926, 35.408092, 14.589363>,  <32.222839, 35.525658, 14.958633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321926, 35.408092, 14.589363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519042, 0.844851, -0.129700,
		0.818067, -0.447039, 0.361832,
		0.247713, -0.293910, -0.923177,
		32.396240, 35.319920, 14.312410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714699, 36.125656, 15.040396>,  <32.222839, 35.525658, 14.958633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714699, 36.125656, 15.040396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389513, 35.892891, 15.049103>,  <31.194403, 35.753231, 15.054327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389513, 35.892891, 15.049103>,  <31.714699, 36.125656, 15.040396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389513, 35.892891, 15.049103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058179, -0.043972, 0.997337,
		-0.579403, 0.812064, 0.069602,
		-0.812962, -0.581910, 0.021768,
		31.145624, 35.718319, 15.055633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092241, 36.471413, 15.397821>,  <31.714699, 36.125656, 15.040396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092241, 36.471413, 15.397821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087423, 36.071442, 15.397406>,  <31.084532, 35.831459, 15.397156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087423, 36.071442, 15.397406>,  <31.092241, 36.471413, 15.397821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087423, 36.071442, 15.397406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163866, -0.003000, 0.986478,
		-0.986409, 0.011712, 0.163890,
		-0.012045, -0.999927, -0.001040,
		31.083811, 35.771465, 15.397094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616417, 36.253757, 15.905635>,  <31.092241, 36.471413, 15.397821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616417, 36.253757, 15.905635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850084, 35.932331, 15.859982>,  <30.990284, 35.739475, 15.832591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850084, 35.932331, 15.859982>,  <30.616417, 36.253757, 15.905635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850084, 35.932331, 15.859982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200640, 0.006719, 0.979642,
		-0.786443, -0.595174, 0.165153,
		0.584168, -0.803569, -0.114131,
		31.025335, 35.691261, 15.825743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350626, 35.808178, 16.293938>,  <30.616417, 36.253757, 15.905635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350626, 35.808178, 16.293938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730816, 35.699768, 16.233082>,  <30.958929, 35.634724, 16.196568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730816, 35.699768, 16.233082>,  <30.350626, 35.808178, 16.293938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730816, 35.699768, 16.233082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151323, -0.024037, 0.988192,
		-0.271482, -0.962272, 0.018166,
		0.950473, -0.271025, -0.152140,
		31.015957, 35.618462, 16.187439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477676, 35.286755, 16.766262>,  <30.350626, 35.808178, 16.293938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477676, 35.286755, 16.766262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844542, 35.418625, 16.676706>,  <31.064661, 35.497746, 16.622972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844542, 35.418625, 16.676706>,  <30.477676, 35.286755, 16.766262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844542, 35.418625, 16.676706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249459, -0.036827, 0.967685,
		0.310773, -0.943377, -0.116016,
		0.917164, 0.329672, -0.223890,
		31.119690, 35.517525, 16.609539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776976, 35.143253, 17.314020>,  <30.477676, 35.286755, 16.766262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776976, 35.143253, 17.314020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080162, 35.349461, 17.154156>,  <31.262074, 35.473186, 17.058237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080162, 35.349461, 17.154156>,  <30.776976, 35.143253, 17.314020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080162, 35.349461, 17.154156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459453, 0.012981, 0.888107,
		0.463026, -0.856779, -0.227019,
		0.757964, 0.515521, -0.399660,
		31.307552, 35.504116, 17.034258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416246, 34.901691, 17.586121>,  <30.776976, 35.143253, 17.314020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416246, 34.901691, 17.586121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473072, 35.280640, 17.471369>,  <31.507168, 35.508011, 17.402517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473072, 35.280640, 17.471369>,  <31.416246, 34.901691, 17.586121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473072, 35.280640, 17.471369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314406, 0.231625, 0.920597,
		0.938598, -0.220982, -0.264954,
		0.142065, 0.947374, -0.286881,
		31.515692, 35.564850, 17.385305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038227, 35.065842, 17.889439>,  <31.416246, 34.901691, 17.586121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038227, 35.065842, 17.889439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877666, 35.422073, 17.803886>,  <31.781330, 35.635815, 17.752556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877666, 35.422073, 17.803886>,  <32.038227, 35.065842, 17.889439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877666, 35.422073, 17.803886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328814, 0.358071, 0.873880,
		0.854845, 0.280448, -0.436564,
		-0.401399, 0.890581, -0.213880,
		31.757246, 35.689247, 17.739723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537441, 35.527431, 18.142296>,  <32.038227, 35.065842, 17.889439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537441, 35.527431, 18.142296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195301, 35.730659, 18.101807>,  <31.990017, 35.852596, 18.077513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195301, 35.730659, 18.101807>,  <32.537441, 35.527431, 18.142296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195301, 35.730659, 18.101807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222160, 0.536248, 0.814299,
		0.468003, 0.674020, -0.571551,
		-0.855347, 0.508071, -0.101225,
		31.938698, 35.883080, 18.071440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685871, 36.266167, 18.192080>,  <32.537441, 35.527431, 18.142296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685871, 36.266167, 18.192080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300491, 36.233097, 18.293999>,  <32.069263, 36.213253, 18.355150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300491, 36.233097, 18.293999>,  <32.685871, 36.266167, 18.192080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300491, 36.233097, 18.293999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171279, 0.541202, 0.823264,
		-0.205962, 0.836818, -0.507262,
		-0.963454, -0.082678, 0.254796,
		32.011456, 36.208294, 18.370438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489410, 36.936546, 18.546343>,  <32.685871, 36.266167, 18.192080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489410, 36.936546, 18.546343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196159, 36.684761, 18.649340>,  <32.020210, 36.533691, 18.711138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196159, 36.684761, 18.649340>,  <32.489410, 36.936546, 18.546343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196159, 36.684761, 18.649340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048492, 0.329269, 0.942990,
		-0.678359, 0.703819, -0.210873,
		-0.733129, -0.629460, 0.257492,
		31.976221, 36.495922, 18.726587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092735, 37.370750, 18.931608>,  <32.489410, 36.936546, 18.546343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092735, 37.370750, 18.931608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979162, 36.999367, 19.027401>,  <31.911018, 36.776539, 19.084877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979162, 36.999367, 19.027401>,  <32.092735, 37.370750, 18.931608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979162, 36.999367, 19.027401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022828, 0.256236, 0.966344,
		-0.958573, 0.268907, -0.093948,
		-0.283930, -0.928456, 0.239483,
		31.893984, 36.720829, 19.099245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621861, 37.484554, 19.457933>,  <32.092735, 37.370750, 18.931608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621861, 37.484554, 19.457933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708315, 37.095417, 19.491045>,  <31.760187, 36.861935, 19.510912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708315, 37.095417, 19.491045>,  <31.621861, 37.484554, 19.457933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708315, 37.095417, 19.491045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065417, 0.070164, 0.995388,
		-0.974169, -0.220556, -0.048475,
		0.216138, -0.972848, 0.082779,
		31.773157, 36.803562, 19.515879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321911, 37.290413, 20.024805>,  <31.621861, 37.484554, 19.457933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321911, 37.290413, 20.024805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604321, 37.011845, 19.973377>,  <31.773767, 36.844704, 19.942520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604321, 37.011845, 19.973377>,  <31.321911, 37.290413, 20.024805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604321, 37.011845, 19.973377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087961, -0.093908, 0.991688,
		-0.702703, -0.711466, -0.005044,
		0.706025, -0.696418, -0.128570,
		31.816128, 36.802917, 19.934807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079115, 36.650791, 20.203947>,  <31.321911, 37.290413, 20.024805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079115, 36.650791, 20.203947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475775, 36.655296, 20.255333>,  <31.713770, 36.658001, 20.286165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475775, 36.655296, 20.255333>,  <31.079115, 36.650791, 20.203947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475775, 36.655296, 20.255333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116544, -0.348186, 0.930153,
		0.055207, -0.937358, -0.343966,
		0.991650, 0.011264, 0.128466,
		31.773270, 36.658676, 20.293873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234241, 35.963268, 20.395197>,  <31.079115, 36.650791, 20.203947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234241, 35.963268, 20.395197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530874, 36.196987, 20.527052>,  <31.708853, 36.337219, 20.606165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530874, 36.196987, 20.527052>,  <31.234241, 35.963268, 20.395197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530874, 36.196987, 20.527052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190337, -0.287919, 0.938549,
		0.643297, -0.758751, -0.102302,
		0.741580, 0.584294, 0.329636,
		31.753347, 36.372276, 20.625942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648176, 35.485920, 20.939260>,  <31.234241, 35.963268, 20.395197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648176, 35.485920, 20.939260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780476, 35.859989, 20.989933>,  <31.859856, 36.084431, 21.020336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780476, 35.859989, 20.989933>,  <31.648176, 35.485920, 20.939260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780476, 35.859989, 20.989933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150875, -0.080113, 0.985301,
		0.931581, -0.345000, 0.114598,
		0.330748, 0.935178, 0.126683,
		31.879700, 36.140541, 21.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096161, 35.369267, 21.513550>,  <31.648176, 35.485920, 20.939260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096161, 35.369267, 21.513550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022137, 35.761513, 21.487782>,  <31.977722, 35.996861, 21.472321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022137, 35.761513, 21.487782>,  <32.096161, 35.369267, 21.513550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022137, 35.761513, 21.487782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106085, 0.045238, 0.993327,
		0.976984, 0.190662, 0.095656,
		-0.185063, 0.980613, -0.064423,
		31.966618, 36.055698, 21.468454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450497, 35.718246, 22.164160>,  <32.096161, 35.369267, 21.513550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450497, 35.718246, 22.164160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157791, 35.945797, 22.014015>,  <31.982166, 36.082329, 21.923927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157791, 35.945797, 22.014015>,  <32.450497, 35.718246, 22.164160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157791, 35.945797, 22.014015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338026, 0.175307, 0.924665,
		0.591825, 0.803521, 0.064011,
		-0.731766, 0.568877, -0.375362,
		31.938261, 36.116459, 21.901407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400887, 36.111000, 22.694241>,  <32.450497, 35.718246, 22.164160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400887, 36.111000, 22.694241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074780, 36.190376, 22.476631>,  <31.879116, 36.238003, 22.346066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074780, 36.190376, 22.476631>,  <32.400887, 36.111000, 22.694241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074780, 36.190376, 22.476631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505536, 0.214322, 0.835763,
		0.282448, 0.956393, -0.074410,
		-0.815265, 0.198442, -0.544026,
		31.830200, 36.249908, 22.313423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194584, 36.696487, 22.857327>,  <32.400887, 36.111000, 22.694241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194584, 36.696487, 22.857327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853043, 36.533401, 22.727901>,  <31.648117, 36.435551, 22.650246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853043, 36.533401, 22.727901>,  <32.194584, 36.696487, 22.857327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853043, 36.533401, 22.727901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459693, 0.299108, 0.836192,
		-0.244151, 0.862728, -0.442822,
		-0.853857, -0.407719, -0.323562,
		31.596886, 36.411087, 22.630833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613497, 37.143730, 22.877905>,  <32.194584, 36.696487, 22.857327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613497, 37.143730, 22.877905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452253, 36.778347, 22.900183>,  <31.355507, 36.559116, 22.913549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452253, 36.778347, 22.900183>,  <31.613497, 37.143730, 22.877905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452253, 36.778347, 22.900183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388052, 0.225728, 0.893567,
		-0.828806, 0.338592, -0.445461,
		-0.403107, -0.913456, 0.055693,
		31.331322, 36.504311, 22.916891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921085, 37.237019, 23.145710>,  <31.613497, 37.143730, 22.877905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921085, 37.237019, 23.145710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979553, 36.848808, 23.222355>,  <31.014633, 36.615883, 23.268341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979553, 36.848808, 23.222355>,  <30.921085, 37.237019, 23.145710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979553, 36.848808, 23.222355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361226, 0.127956, 0.923657,
		-0.920951, -0.204224, -0.331876,
		0.146167, -0.970525, 0.191612,
		31.023403, 36.557652, 23.279839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191057, 36.860981, 23.363312>,  <30.921085, 37.237019, 23.145710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191057, 36.860981, 23.363312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513802, 36.663754, 23.493452>,  <30.707449, 36.545418, 23.571537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513802, 36.663754, 23.493452>,  <30.191057, 36.860981, 23.363312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513802, 36.663754, 23.493452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249220, 0.215223, 0.944229,
		-0.535597, -0.842946, 0.050771,
		0.806861, -0.493073, 0.325352,
		30.755859, 36.515831, 23.591057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969690, 36.606152, 24.025291>,  <30.191057, 36.860981, 23.363312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969690, 36.606152, 24.025291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363487, 36.542171, 24.054106>,  <30.599766, 36.503784, 24.071394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363487, 36.542171, 24.054106>,  <29.969690, 36.606152, 24.025291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363487, 36.542171, 24.054106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073054, -0.000501, 0.997328,
		-0.159490, -0.987125, -0.012178,
		0.984493, -0.159953, 0.072034,
		30.658834, 36.494186, 24.075716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027594, 36.108006, 24.505999>,  <29.969690, 36.606152, 24.025291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027594, 36.108006, 24.505999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379616, 36.297878, 24.500601>,  <30.590830, 36.411800, 24.497362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379616, 36.297878, 24.500601>,  <30.027594, 36.108006, 24.505999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379616, 36.297878, 24.500601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024511, -0.017030, 0.999555,
		0.474237, -0.879995, -0.026622,
		0.880056, 0.474678, -0.013493,
		30.643633, 36.440281, 24.496553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400877, 35.820919, 25.048239>,  <30.027594, 36.108006, 24.505999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400877, 35.820919, 25.048239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595268, 36.167717, 25.004162>,  <30.711903, 36.375797, 24.977716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595268, 36.167717, 25.004162>,  <30.400877, 35.820919, 25.048239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595268, 36.167717, 25.004162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136417, 0.049285, 0.989425,
		0.863260, -0.495868, -0.094322,
		0.485976, 0.866998, -0.110191,
		30.741060, 36.427814, 24.971104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980700, 35.799480, 25.493959>,  <30.400877, 35.820919, 25.048239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980700, 35.799480, 25.493959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953585, 36.189480, 25.409311>,  <30.937315, 36.423481, 25.358522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953585, 36.189480, 25.409311>,  <30.980700, 35.799480, 25.493959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953585, 36.189480, 25.409311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040946, 0.214650, 0.975832,
		0.996859, 0.057486, -0.054473,
		-0.067789, 0.974998, -0.211622,
		30.933249, 36.481979, 25.345825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477442, 36.185722, 25.936590>,  <30.980700, 35.799480, 25.493959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477442, 36.185722, 25.936590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200560, 36.447506, 25.814909>,  <31.034431, 36.604576, 25.741901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200560, 36.447506, 25.814909>,  <31.477442, 36.185722, 25.936590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200560, 36.447506, 25.814909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133742, 0.297882, 0.945188,
		0.709201, 0.694948, -0.118666,
		-0.692204, 0.654457, -0.304202,
		30.992899, 36.643845, 25.723648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817263, 36.789120, 26.064363>,  <31.477442, 36.185722, 25.936590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817263, 36.789120, 26.064363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427385, 36.874222, 26.036909>,  <31.193459, 36.925282, 26.020437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427385, 36.874222, 26.036909>,  <31.817263, 36.789120, 26.064363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427385, 36.874222, 26.036909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021820, 0.396105, 0.917946,
		0.222483, 0.893217, -0.390723,
		-0.974692, 0.212753, -0.068637,
		31.134977, 36.938049, 26.016317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721439, 37.510307, 26.285585>,  <31.817263, 36.789120, 26.064363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721439, 37.510307, 26.285585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371841, 37.321354, 26.331167>,  <31.162083, 37.207981, 26.358517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371841, 37.321354, 26.331167>,  <31.721439, 37.510307, 26.285585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371841, 37.321354, 26.331167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129829, 0.452978, 0.882018,
		-0.468274, 0.756083, -0.457229,
		-0.873993, -0.472387, 0.113957,
		31.109644, 37.179638, 26.365355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267292, 38.027874, 26.578707>,  <31.721439, 37.510307, 26.285585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267292, 38.027874, 26.578707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131016, 37.659149, 26.652670>,  <31.049250, 37.437916, 26.697048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131016, 37.659149, 26.652670>,  <31.267292, 38.027874, 26.578707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131016, 37.659149, 26.652670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041600, 0.211260, 0.976544,
		-0.939255, 0.325007, -0.110322,
		-0.340691, -0.921813, 0.184906,
		31.028809, 37.382607, 26.708141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582117, 38.197998, 26.787786>,  <31.267292, 38.027874, 26.578707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582117, 38.197998, 26.787786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685205, 37.847099, 26.949783>,  <30.747059, 37.636559, 27.046982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685205, 37.847099, 26.949783>,  <30.582117, 38.197998, 26.787786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685205, 37.847099, 26.949783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404953, 0.282493, 0.869604,
		-0.877265, -0.388116, -0.282440,
		0.257720, -0.877248, 0.404990,
		30.762522, 37.583923, 27.071280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123610, 38.087967, 27.342953>,  <30.582117, 38.197998, 26.787786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123610, 38.087967, 27.342953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407215, 37.817501, 27.423054>,  <30.577379, 37.655220, 27.471115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407215, 37.817501, 27.423054>,  <30.123610, 38.087967, 27.342953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407215, 37.817501, 27.423054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207280, 0.071601, 0.975658,
		-0.674043, -0.733263, -0.089389,
		0.709014, -0.676164, 0.200253,
		30.619919, 37.614651, 27.483130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829021, 37.541988, 27.839445>,  <30.123610, 38.087967, 27.342953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829021, 37.541988, 27.839445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226425, 37.522598, 27.880604>,  <30.464867, 37.510963, 27.905298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226425, 37.522598, 27.880604>,  <29.829021, 37.541988, 27.839445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226425, 37.522598, 27.880604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104547, -0.032814, 0.993978,
		-0.044800, -0.998285, -0.037669,
		0.993510, -0.048469, 0.102898,
		30.524479, 37.508057, 27.911472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908924, 37.119072, 28.351032>,  <29.829021, 37.541988, 27.839445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908924, 37.119072, 28.351032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261707, 37.307137, 28.337805>,  <30.473377, 37.419975, 28.329868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261707, 37.307137, 28.337805>,  <29.908924, 37.119072, 28.351032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261707, 37.307137, 28.337805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023616, 0.114157, 0.993182,
		0.470735, -0.875165, 0.111785,
		0.881959, 0.470165, -0.033070,
		30.526295, 37.448185, 28.327885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347879, 36.816708, 28.828733>,  <29.908924, 37.119072, 28.351032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347879, 36.816708, 28.828733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479794, 37.189335, 28.767509>,  <30.558943, 37.412910, 28.730776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479794, 37.189335, 28.767509>,  <30.347879, 36.816708, 28.828733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479794, 37.189335, 28.767509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030946, 0.172709, 0.984487,
		0.943549, -0.319932, 0.085785,
		0.329785, 0.931566, -0.153059,
		30.578730, 37.468803, 28.721592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920061, 36.834080, 29.163706>,  <30.347879, 36.816708, 28.828733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920061, 36.834080, 29.163706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825954, 37.222580, 29.149118>,  <30.769491, 37.455681, 29.140366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825954, 37.222580, 29.149118>,  <30.920061, 36.834080, 29.163706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825954, 37.222580, 29.149118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112470, 0.064476, 0.991561,
		0.965402, 0.229178, -0.124405,
		-0.235265, 0.971247, -0.036470,
		30.755375, 37.513954, 29.138178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425165, 37.216858, 29.381012>,  <30.920061, 36.834080, 29.163706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425165, 37.216858, 29.381012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131266, 37.484295, 29.426851>,  <30.954926, 37.644756, 29.454355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131266, 37.484295, 29.426851>,  <31.425165, 37.216858, 29.381012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131266, 37.484295, 29.426851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267214, 0.129995, 0.954829,
		0.623492, 0.732180, -0.274170,
		-0.734748, 0.668591, 0.114598,
		30.910841, 37.684872, 29.461231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669411, 37.898346, 29.649580>,  <31.425165, 37.216858, 29.381012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669411, 37.898346, 29.649580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287462, 37.851887, 29.758928>,  <31.058292, 37.824013, 29.824537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287462, 37.851887, 29.758928>,  <31.669411, 37.898346, 29.649580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287462, 37.851887, 29.758928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253547, 0.160656, 0.953889,
		-0.154707, 0.980153, -0.123958,
		-0.954872, -0.116144, 0.273370,
		31.001001, 37.817043, 29.840939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058029, 37.391048, 30.039200>,  <31.669411, 37.898346, 29.649580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058029, 37.391048, 30.039200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391548, 37.170322, 30.045898>,  <32.591660, 37.037888, 30.049917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391548, 37.170322, 30.045898>,  <32.058029, 37.391048, 30.039200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391548, 37.170322, 30.045898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328829, 0.472042, -0.817954,
		0.443456, 0.687514, 0.575040,
		0.833797, -0.551816, 0.016745,
		32.641685, 37.004776, 30.050922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688755, 37.813080, 29.960531>,  <32.058029, 37.391048, 30.039200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688755, 37.813080, 29.960531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830914, 37.456024, 29.849621>,  <32.916210, 37.241791, 29.783075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830914, 37.456024, 29.849621>,  <32.688755, 37.813080, 29.960531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830914, 37.456024, 29.849621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489460, 0.430446, -0.758383,
		0.796317, 0.133813, 0.589892,
		0.355398, -0.892642, -0.277276,
		32.937534, 37.188232, 29.766438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370144, 37.958035, 29.567249>,  <32.688755, 37.813080, 29.960531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370144, 37.958035, 29.567249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381336, 37.563606, 29.501659>,  <33.388050, 37.326950, 29.462305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381336, 37.563606, 29.501659>,  <33.370144, 37.958035, 29.567249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381336, 37.563606, 29.501659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414824, 0.160701, -0.895598,
		0.909471, -0.042965, 0.413541,
		0.027977, -0.986067, -0.163976,
		33.389729, 37.267784, 29.452467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079033, 37.698170, 29.251623>,  <33.370144, 37.958035, 29.567249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079033, 37.698170, 29.251623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781555, 37.460323, 29.129414>,  <33.603069, 37.317616, 29.056087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781555, 37.460323, 29.129414>,  <34.079033, 37.698170, 29.251623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781555, 37.460323, 29.129414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218896, 0.215228, -0.951715,
		0.631662, -0.774667, -0.029906,
		-0.743698, -0.594616, -0.305523,
		33.558445, 37.281940, 29.037756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370453, 37.464661, 28.695156>,  <34.079033, 37.698170, 29.251623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370453, 37.464661, 28.695156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980904, 37.385368, 28.650831>,  <33.747173, 37.337795, 28.624235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980904, 37.385368, 28.650831>,  <34.370453, 37.464661, 28.695156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980904, 37.385368, 28.650831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044318, 0.312684, -0.948823,
		0.222730, -0.928943, -0.295729,
		-0.973872, -0.198225, -0.110813,
		33.688744, 37.325901, 28.617586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341743, 36.999424, 28.174488>,  <34.370453, 37.464661, 28.695156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341743, 36.999424, 28.174488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957466, 37.110470, 28.174417>,  <33.726898, 37.177097, 28.174376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957466, 37.110470, 28.174417>,  <34.341743, 36.999424, 28.174488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957466, 37.110470, 28.174417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021264, 0.072953, -0.997109,
		-0.276796, -0.957919, -0.075989,
		-0.960693, 0.277612, -0.000176,
		33.669258, 37.193752, 28.174364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023876, 36.596817, 27.683279>,  <34.341743, 36.999424, 28.174488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023876, 36.596817, 27.683279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809784, 36.931225, 27.731600>,  <33.681328, 37.131870, 27.760592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809784, 36.931225, 27.731600>,  <34.023876, 36.596817, 27.683279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809784, 36.931225, 27.731600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005929, 0.139289, -0.990234,
		-0.844684, -0.530722, -0.069595,
		-0.535233, 0.836022, 0.120802,
		33.649216, 37.182030, 27.767841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360867, 36.448532, 27.473106>,  <34.023876, 36.596817, 27.683279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360867, 36.448532, 27.473106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439430, 36.839390, 27.440569>,  <33.486568, 37.073902, 27.421045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439430, 36.839390, 27.440569>,  <33.360867, 36.448532, 27.473106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439430, 36.839390, 27.440569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289155, -0.136993, -0.947429,
		-0.936916, 0.162563, -0.309452,
		0.196410, 0.977142, -0.081345,
		33.498352, 37.132534, 27.416166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024147, 36.643482, 26.786306>,  <33.360867, 36.448532, 27.473106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024147, 36.643482, 26.786306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284767, 36.933353, 26.876043>,  <33.441139, 37.107277, 26.929886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284767, 36.933353, 26.876043>,  <33.024147, 36.643482, 26.786306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284767, 36.933353, 26.876043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335317, -0.009842, -0.942054,
		-0.680478, 0.689018, -0.249410,
		0.651546, 0.724678, 0.224342,
		33.480232, 37.150757, 26.943346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924286, 37.025978, 26.146112>,  <33.024147, 36.643482, 26.786306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924286, 37.025978, 26.146112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247299, 37.187004, 26.318541>,  <33.441109, 37.283619, 26.421997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247299, 37.187004, 26.318541>,  <32.924286, 37.025978, 26.146112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247299, 37.187004, 26.318541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441042, 0.073124, -0.894503,
		-0.391621, 0.912464, -0.118500,
		0.807536, 0.402570, 0.431072,
		33.489559, 37.307774, 26.447863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031796, 37.736286, 25.811443>,  <32.924286, 37.025978, 26.146112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031796, 37.736286, 25.811443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369930, 37.596695, 25.973238>,  <33.572811, 37.512939, 26.070314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369930, 37.596695, 25.973238>,  <33.031796, 37.736286, 25.811443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369930, 37.596695, 25.973238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420933, -0.031116, -0.906558,
		0.328958, 0.936613, 0.120594,
		0.845342, -0.348981, 0.404487,
		33.623531, 37.492001, 26.094584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467247, 38.068691, 25.513422>,  <33.031796, 37.736286, 25.811443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467247, 38.068691, 25.513422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717468, 37.789547, 25.652950>,  <33.867599, 37.622059, 25.736668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717468, 37.789547, 25.652950>,  <33.467247, 38.068691, 25.513422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717468, 37.789547, 25.652950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449556, -0.042992, -0.892217,
		0.637641, 0.714941, 0.286835,
		0.625551, -0.697862, 0.348819,
		33.905132, 37.580189, 25.757597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266830, 38.283463, 25.417299>,  <33.467247, 38.068691, 25.513422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266830, 38.283463, 25.417299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247112, 37.883949, 25.416363>,  <34.235283, 37.644241, 25.415800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247112, 37.883949, 25.416363>,  <34.266830, 38.283463, 25.417299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247112, 37.883949, 25.416363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519997, -0.023662, -0.853840,
		0.852745, -0.043309, 0.520530,
		-0.049296, -0.998782, -0.002343,
		34.232323, 37.584316, 25.415659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923828, 38.054382, 25.108212>,  <34.266830, 38.283463, 25.417299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923828, 38.054382, 25.108212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685783, 37.733536, 25.088396>,  <34.542957, 37.541027, 25.076506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685783, 37.733536, 25.088396>,  <34.923828, 38.054382, 25.108212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685783, 37.733536, 25.088396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302798, -0.166702, -0.938362,
		0.744413, -0.573435, 0.342085,
		-0.595115, -0.802112, -0.049540,
		34.507248, 37.492901, 25.073534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309315, 37.585079, 24.705933>,  <34.923828, 38.054382, 25.108212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309315, 37.585079, 24.705933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940201, 37.431358, 24.694839>,  <34.718731, 37.339127, 24.688183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940201, 37.431358, 24.694839>,  <35.309315, 37.585079, 24.705933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940201, 37.431358, 24.694839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129287, -0.241027, -0.961868,
		0.362967, -0.891188, 0.272103,
		-0.922789, -0.384305, -0.027734,
		34.663364, 37.316067, 24.686520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322853, 36.834099, 24.506359>,  <35.309315, 37.585079, 24.705933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322853, 36.834099, 24.506359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973877, 36.973499, 24.369308>,  <34.764492, 37.057140, 24.287077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973877, 36.973499, 24.369308>,  <35.322853, 36.834099, 24.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973877, 36.973499, 24.369308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197999, -0.388914, -0.899746,
		-0.446816, -0.852814, 0.270301,
		-0.872440, 0.348502, -0.342629,
		34.712143, 37.078049, 24.266520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863644, 36.278770, 24.197062>,  <35.322853, 36.834099, 24.506359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863644, 36.278770, 24.197062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657246, 36.580193, 24.034134>,  <34.533409, 36.761047, 23.936378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657246, 36.580193, 24.034134>,  <34.863644, 36.278770, 24.197062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657246, 36.580193, 24.034134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218802, -0.575682, -0.787856,
		-0.828178, -0.317405, 0.461925,
		-0.515991, 0.753555, -0.407318,
		34.502449, 36.806259, 23.911938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335716, 35.982536, 23.889715>,  <34.863644, 36.278770, 24.197062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335716, 35.982536, 23.889715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307644, 36.338581, 23.709593>,  <34.290802, 36.552208, 23.601519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307644, 36.338581, 23.709593>,  <34.335716, 35.982536, 23.889715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307644, 36.338581, 23.709593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078735, -0.454954, -0.887027,
		-0.994422, -0.026795, 0.102011,
		-0.070178, 0.890112, -0.450306,
		34.286591, 36.605614, 23.574501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705433, 36.031822, 23.475771>,  <34.335716, 35.982536, 23.889715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705433, 36.031822, 23.475771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950077, 36.307697, 23.320717>,  <34.096863, 36.473221, 23.227684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950077, 36.307697, 23.320717>,  <33.705433, 36.031822, 23.475771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950077, 36.307697, 23.320717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198812, -0.340254, -0.919076,
		-0.765768, 0.639187, -0.070987,
		0.611615, 0.689686, -0.387634,
		34.133560, 36.514603, 23.204426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353912, 36.394005, 23.066610>,  <33.705433, 36.031822, 23.475771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353912, 36.394005, 23.066610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731079, 36.410393, 22.934408>,  <33.957378, 36.420227, 22.855087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731079, 36.410393, 22.934408>,  <33.353912, 36.394005, 23.066610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731079, 36.410393, 22.934408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292323, -0.373650, -0.880303,
		-0.159563, 0.926664, -0.340343,
		0.942914, 0.040974, -0.330506,
		34.013954, 36.422684, 22.835257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278698, 36.522430, 22.316629>,  <33.353912, 36.394005, 23.066610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278698, 36.522430, 22.316629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656517, 36.405880, 22.377197>,  <33.883209, 36.335949, 22.413538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656517, 36.405880, 22.377197>,  <33.278698, 36.522430, 22.316629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656517, 36.405880, 22.377197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009259, -0.437296, -0.899270,
		0.328244, 0.850805, -0.410349,
		0.944548, -0.291380, 0.151417,
		33.939880, 36.318466, 22.422623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635632, 36.799904, 21.762262>,  <33.278698, 36.522430, 22.316629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635632, 36.799904, 21.762262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856052, 36.491985, 21.891109>,  <33.988304, 36.307236, 21.968418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856052, 36.491985, 21.891109>,  <33.635632, 36.799904, 21.762262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856052, 36.491985, 21.891109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198265, -0.254182, -0.946616,
		0.810576, 0.585499, 0.012556,
		0.551051, -0.769794, 0.322118,
		34.021366, 36.261047, 21.987745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315342, 36.778873, 21.316050>,  <33.635632, 36.799904, 21.762262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315342, 36.778873, 21.316050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233166, 36.425827, 21.485182>,  <34.183861, 36.214001, 21.586660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233166, 36.425827, 21.485182>,  <34.315342, 36.778873, 21.316050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233166, 36.425827, 21.485182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035456, -0.438475, -0.898044,
		0.978028, -0.169499, 0.121373,
		-0.205437, -0.882615, 0.422831,
		34.171535, 36.161041, 21.612032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894726, 36.319263, 21.215466>,  <34.315342, 36.778873, 21.316050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894726, 36.319263, 21.215466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551476, 36.119652, 21.263775>,  <34.345524, 35.999886, 21.292761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551476, 36.119652, 21.263775>,  <34.894726, 36.319263, 21.215466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551476, 36.119652, 21.263775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138379, -0.451312, -0.881572,
		0.494440, -0.739787, 0.456338,
		-0.858126, -0.499032, 0.120775,
		34.294037, 35.969944, 21.300007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134647, 35.722393, 20.990902>,  <34.894726, 36.319263, 21.215466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134647, 35.722393, 20.990902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745090, 35.631592, 20.991722>,  <34.511356, 35.577110, 20.992214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745090, 35.631592, 20.991722>,  <35.134647, 35.722393, 20.990902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745090, 35.631592, 20.991722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115285, -0.502337, -0.856952,
		0.195563, -0.834342, 0.515392,
		-0.973891, -0.227005, 0.002052,
		34.452923, 35.563492, 20.992338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004002, 35.005177, 20.707506>,  <35.134647, 35.722393, 20.990902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004002, 35.005177, 20.707506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618542, 35.111622, 20.697979>,  <34.387268, 35.175491, 20.692263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618542, 35.111622, 20.697979>,  <35.004002, 35.005177, 20.707506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618542, 35.111622, 20.697979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138262, -0.572974, -0.807827,
		-0.228624, -0.775166, 0.588939,
		-0.963647, 0.266117, -0.023820,
		34.329449, 35.191456, 20.690832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675312, 34.425133, 20.552607>,  <35.004002, 35.005177, 20.707506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675312, 34.425133, 20.552607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446289, 34.730659, 20.433434>,  <34.308876, 34.913975, 20.361929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446289, 34.730659, 20.433434>,  <34.675312, 34.425133, 20.552607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446289, 34.730659, 20.433434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061719, -0.402515, -0.913330,
		-0.817542, -0.504542, 0.277603,
		-0.572553, 0.763819, -0.297933,
		34.274525, 34.959805, 20.344053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122234, 34.136578, 20.171865>,  <34.675312, 34.425133, 20.552607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122234, 34.136578, 20.171865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119164, 34.516747, 20.047514>,  <34.117321, 34.744846, 19.972902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119164, 34.516747, 20.047514>,  <34.122234, 34.136578, 20.171865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119164, 34.516747, 20.047514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158270, -0.308123, -0.938089,
		-0.987366, 0.042005, 0.152787,
		-0.007673, 0.950418, -0.310879,
		34.116863, 34.801872, 19.954250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609989, 34.129959, 19.621519>,  <34.122234, 34.136578, 20.171865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609989, 34.129959, 19.621519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835934, 34.454102, 19.559235>,  <33.971500, 34.648586, 19.521864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835934, 34.454102, 19.559235>,  <33.609989, 34.129959, 19.621519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835934, 34.454102, 19.559235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006282, -0.184471, -0.982818,
		-0.825161, 0.556135, -0.099110,
		0.564863, 0.810360, -0.155712,
		34.005394, 34.697208, 19.512522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230583, 34.374001, 19.155409>,  <33.609989, 34.129959, 19.621519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230583, 34.374001, 19.155409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597698, 34.532192, 19.141222>,  <33.817966, 34.627106, 19.132710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597698, 34.532192, 19.141222>,  <33.230583, 34.374001, 19.155409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597698, 34.532192, 19.141222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160332, -0.450829, -0.878093,
		-0.363256, 0.800219, -0.477174,
		0.917790, 0.395479, -0.035466,
		33.873035, 34.650837, 19.130583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288155, 34.609921, 18.573450>,  <33.230583, 34.374001, 19.155409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288155, 34.609921, 18.573450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680141, 34.593391, 18.651384>,  <33.915333, 34.583473, 18.698145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680141, 34.593391, 18.651384>,  <33.288155, 34.609921, 18.573450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680141, 34.593391, 18.651384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172918, -0.308906, -0.935241,
		0.098831, 0.950194, -0.295572,
		0.979965, -0.041321, 0.194835,
		33.974133, 34.580994, 18.709835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571548, 35.017944, 18.064558>,  <33.288155, 34.609921, 18.573450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571548, 35.017944, 18.064558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861095, 34.780670, 18.205500>,  <34.034824, 34.638306, 18.290064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861095, 34.780670, 18.205500>,  <33.571548, 35.017944, 18.064558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861095, 34.780670, 18.205500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197917, -0.310708, -0.929672,
		0.660942, 0.742696, -0.107511,
		0.723868, -0.593181, 0.352352,
		34.078255, 34.602715, 18.311205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094109, 35.213188, 17.598820>,  <33.571548, 35.017944, 18.064558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094109, 35.213188, 17.598820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207813, 34.864502, 17.758474>,  <34.276035, 34.655289, 17.854267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207813, 34.864502, 17.758474>,  <34.094109, 35.213188, 17.598820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207813, 34.864502, 17.758474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282358, -0.321727, -0.903751,
		0.916224, 0.369604, 0.154680,
		0.284265, -0.871714, 0.399134,
		34.293091, 34.602989, 17.878214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701546, 35.001709, 17.289703>,  <34.094109, 35.213188, 17.598820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701546, 35.001709, 17.289703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549404, 34.658718, 17.428303>,  <34.458118, 34.452923, 17.511463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549404, 34.658718, 17.428303>,  <34.701546, 35.001709, 17.289703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549404, 34.658718, 17.428303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470091, -0.501900, -0.726024,
		0.796458, -0.113260, 0.593992,
		-0.380354, -0.857478, 0.346500,
		34.435299, 34.401474, 17.532253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310635, 34.488472, 17.225468>,  <34.701546, 35.001709, 17.289703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310635, 34.488472, 17.225468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950603, 34.316418, 17.253298>,  <34.734585, 34.213184, 17.269997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950603, 34.316418, 17.253298>,  <35.310635, 34.488472, 17.225468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950603, 34.316418, 17.253298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240684, -0.623903, -0.743516,
		0.363225, -0.652476, 0.665089,
		-0.900077, -0.430140, 0.069576,
		34.680580, 34.187374, 17.274170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484833, 33.781548, 17.094841>,  <35.310635, 34.488472, 17.225468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484833, 33.781548, 17.094841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088234, 33.791592, 17.043781>,  <34.850273, 33.797619, 17.013145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088234, 33.791592, 17.043781>,  <35.484833, 33.781548, 17.094841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088234, 33.791592, 17.043781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082995, -0.633514, -0.769267,
		-0.100185, -0.773323, 0.626046,
		-0.991501, 0.025110, -0.127651,
		34.790783, 33.799126, 17.005486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322678, 33.070564, 17.143881>,  <35.484833, 33.781548, 17.094841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322678, 33.070564, 17.143881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053719, 33.302494, 16.959841>,  <34.892345, 33.441650, 16.849417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053719, 33.302494, 16.959841>,  <35.322678, 33.070564, 17.143881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053719, 33.302494, 16.959841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010808, -0.613841, -0.789356,
		-0.740114, -0.535732, 0.406477,
		-0.672395, 0.579820, -0.460102,
		34.852001, 33.476440, 16.821810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873177, 32.622459, 16.770220>,  <35.322678, 33.070564, 17.143881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873177, 32.622459, 16.770220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864094, 32.973637, 16.578930>,  <34.858646, 33.184345, 16.464157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864094, 32.973637, 16.578930>,  <34.873177, 32.622459, 16.770220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864094, 32.973637, 16.578930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071525, -0.475695, -0.876698,
		-0.997181, -0.054109, -0.051995,
		-0.022703, 0.877945, -0.478224,
		34.857285, 33.237019, 16.435463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227673, 32.357693, 17.113382>,  <34.873177, 32.622459, 16.770220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227673, 32.357693, 17.113382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465244, 32.042679, 17.047617>,  <34.607788, 31.853670, 17.008158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465244, 32.042679, 17.047617>,  <34.227673, 32.357693, 17.113382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465244, 32.042679, 17.047617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189198, -0.335360, 0.922896,
		-0.781952, -0.517030, -0.348181,
		0.593932, -0.787536, -0.164414,
		34.643425, 31.806417, 16.998293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815281, 31.807785, 17.450792>,  <34.227673, 32.357693, 17.113382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815281, 31.807785, 17.450792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188271, 31.672066, 17.401207>,  <34.412064, 31.590633, 17.371456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188271, 31.672066, 17.401207>,  <33.815281, 31.807785, 17.450792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188271, 31.672066, 17.401207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136590, -0.648863, 0.748546,
		-0.334413, -0.681069, -0.651393,
		0.932476, -0.339297, -0.123961,
		34.468014, 31.570276, 17.364019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789932, 31.105169, 17.556303>,  <33.815281, 31.807785, 17.450792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789932, 31.105169, 17.556303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169621, 31.191639, 17.647741>,  <34.397434, 31.243521, 17.702604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169621, 31.191639, 17.647741>,  <33.789932, 31.105169, 17.556303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169621, 31.191639, 17.647741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115530, -0.436318, 0.892345,
		0.292643, -0.873438, -0.389186,
		0.949217, 0.216176, 0.228594,
		34.454384, 31.256491, 17.716320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981533, 30.446537, 17.981205>,  <33.789932, 31.105169, 17.556303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981533, 30.446537, 17.981205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257214, 30.732553, 18.028065>,  <34.422623, 30.904163, 18.056181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257214, 30.732553, 18.028065>,  <33.981533, 30.446537, 17.981205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257214, 30.732553, 18.028065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070596, -0.094648, 0.993004,
		0.721126, -0.692647, -0.014752,
		0.689197, 0.715040, 0.117152,
		34.463974, 30.947065, 18.063210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367146, 30.235146, 18.604918>,  <33.981533, 30.446537, 17.981205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367146, 30.235146, 18.604918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367489, 30.633919, 18.573616>,  <34.367695, 30.873182, 18.554834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367489, 30.633919, 18.573616>,  <34.367146, 30.235146, 18.604918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367489, 30.633919, 18.573616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140615, 0.077598, 0.987019,
		0.990064, 0.010161, 0.140250,
		0.000854, 0.996933, -0.078256,
		34.367744, 30.932999, 18.550138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860897, 30.479519, 19.156975>,  <34.367146, 30.235146, 18.604918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860897, 30.479519, 19.156975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649857, 30.796902, 19.035608>,  <34.523232, 30.987331, 18.962788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649857, 30.796902, 19.035608>,  <34.860897, 30.479519, 19.156975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649857, 30.796902, 19.035608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053009, 0.387229, 0.920458,
		0.847838, 0.469549, -0.246362,
		-0.527598, 0.793459, -0.303418,
		34.491577, 31.034939, 18.944582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210678, 31.029221, 19.493231>,  <34.860897, 30.479519, 19.156975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210678, 31.029221, 19.493231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847610, 31.171934, 19.404827>,  <34.629772, 31.257563, 19.351786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847610, 31.171934, 19.404827>,  <35.210678, 31.029221, 19.493231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847610, 31.171934, 19.404827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016871, 0.495156, 0.868640,
		0.419352, 0.792165, -0.443417,
		-0.907667, 0.356785, -0.221009,
		34.575310, 31.278969, 19.338524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199116, 31.691919, 19.817169>,  <35.210678, 31.029221, 19.493231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199116, 31.691919, 19.817169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814281, 31.600027, 19.758354>,  <34.583382, 31.544891, 19.723066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814281, 31.600027, 19.758354>,  <35.199116, 31.691919, 19.817169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814281, 31.600027, 19.758354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238506, 0.447043, 0.862130,
		-0.132325, 0.864510, -0.484884,
		-0.962084, -0.229729, -0.147036,
		34.525658, 31.531109, 19.714243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894501, 32.334278, 19.821669>,  <35.199116, 31.691919, 19.817169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894501, 32.334278, 19.821669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596275, 32.076309, 19.888840>,  <34.417339, 31.921528, 19.929142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596275, 32.076309, 19.888840>,  <34.894501, 32.334278, 19.821669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596275, 32.076309, 19.888840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267620, 0.520510, 0.810832,
		-0.610335, 0.559589, -0.560670,
		-0.745567, -0.644926, 0.167928,
		34.372604, 31.882832, 19.939219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260471, 32.804497, 19.966187>,  <34.894501, 32.334278, 19.821669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260471, 32.804497, 19.966187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175247, 32.442814, 20.114246>,  <34.124111, 32.225803, 20.203083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175247, 32.442814, 20.114246>,  <34.260471, 32.804497, 19.966187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175247, 32.442814, 20.114246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423107, 0.426870, 0.799226,
		-0.880674, 0.013669, -0.473526,
		-0.213059, -0.904210, 0.370150,
		34.111328, 32.171551, 20.225292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642429, 32.873009, 20.316229>,  <34.260471, 32.804497, 19.966187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642429, 32.873009, 20.316229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762165, 32.532806, 20.489218>,  <33.834007, 32.328686, 20.593012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762165, 32.532806, 20.489218>,  <33.642429, 32.873009, 20.316229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762165, 32.532806, 20.489218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297095, 0.347643, 0.889314,
		-0.906715, -0.394690, -0.148620,
		0.299336, -0.850508, 0.432473,
		33.851967, 32.277653, 20.618959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108929, 32.680145, 20.757568>,  <33.642429, 32.873009, 20.316229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108929, 32.680145, 20.757568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456509, 32.531818, 20.888666>,  <33.665058, 32.442822, 20.967325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456509, 32.531818, 20.888666>,  <33.108929, 32.680145, 20.757568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456509, 32.531818, 20.888666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183175, 0.374229, 0.909065,
		-0.459751, -0.849968, 0.257262,
		0.868951, -0.370820, 0.327745,
		33.717194, 32.420574, 20.986990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980618, 32.327812, 21.405317>,  <33.108929, 32.680145, 20.757568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980618, 32.327812, 21.405317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375755, 32.385502, 21.428537>,  <33.612839, 32.420116, 21.442469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375755, 32.385502, 21.428537>,  <32.980618, 32.327812, 21.405317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375755, 32.385502, 21.428537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115295, 0.429125, 0.895857,
		0.104294, -0.891657, 0.440535,
		0.987841, 0.144224, 0.058048,
		33.672108, 32.428768, 21.445951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127354, 32.200661, 22.070015>,  <32.980618, 32.327812, 21.405317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127354, 32.200661, 22.070015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464123, 32.377197, 21.945835>,  <33.666183, 32.483120, 21.871326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464123, 32.377197, 21.945835>,  <33.127354, 32.200661, 22.070015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464123, 32.377197, 21.945835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122698, 0.403682, 0.906634,
		0.525464, -0.801407, 0.285716,
		0.841922, 0.441347, -0.310452,
		33.716698, 32.509602, 21.852699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639019, 31.938988, 22.574123>,  <33.127354, 32.200661, 22.070015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639019, 31.938988, 22.574123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763065, 32.283730, 22.413609>,  <33.837494, 32.490574, 22.317301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763065, 32.283730, 22.413609>,  <33.639019, 31.938988, 22.574123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763065, 32.283730, 22.413609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083469, 0.395783, 0.914543,
		0.947026, -0.317112, 0.050802,
		0.310119, 0.861856, -0.401286,
		33.856102, 32.542286, 22.293222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265961, 32.148640, 22.982676>,  <33.639019, 31.938988, 22.574123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265961, 32.148640, 22.982676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101883, 32.468121, 22.806576>,  <34.003437, 32.659809, 22.700916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101883, 32.468121, 22.806576>,  <34.265961, 32.148640, 22.982676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101883, 32.468121, 22.806576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139514, 0.532001, 0.835171,
		0.901264, 0.281161, -0.329653,
		-0.410193, 0.798701, -0.440247,
		33.978825, 32.707729, 22.674501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692757, 32.635334, 23.197939>,  <34.265961, 32.148640, 22.982676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692757, 32.635334, 23.197939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383953, 32.857780, 23.074823>,  <34.198669, 32.991249, 23.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383953, 32.857780, 23.074823>,  <34.692757, 32.635334, 23.197939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383953, 32.857780, 23.074823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216979, 0.685736, 0.694757,
		0.597425, 0.469578, -0.650062,
		-0.772013, 0.556115, -0.307787,
		34.152348, 33.024616, 22.982487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027531, 33.273792, 23.027185>,  <34.692757, 32.635334, 23.197939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027531, 33.273792, 23.027185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640961, 33.358414, 23.085516>,  <34.409019, 33.409187, 23.120514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640961, 33.358414, 23.085516>,  <35.027531, 33.273792, 23.027185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640961, 33.358414, 23.085516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246278, 0.600861, 0.760469,
		0.073257, 0.770851, -0.632789,
		-0.966427, 0.211552, 0.145826,
		34.351032, 33.421879, 23.129265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891209, 33.982712, 23.143353>,  <35.027531, 33.273792, 23.027185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891209, 33.982712, 23.143353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567211, 33.811050, 23.303223>,  <34.372814, 33.708054, 23.399145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567211, 33.811050, 23.303223>,  <34.891209, 33.982712, 23.143353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567211, 33.811050, 23.303223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098340, 0.572480, 0.814000,
		-0.578134, 0.698639, -0.421502,
		-0.809994, -0.429150, 0.399675,
		34.324211, 33.682304, 23.423124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527660, 34.569687, 23.439234>,  <34.891209, 33.982712, 23.143353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527660, 34.569687, 23.439234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382458, 34.252033, 23.634199>,  <34.295334, 34.061440, 23.751179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382458, 34.252033, 23.634199>,  <34.527660, 34.569687, 23.439234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382458, 34.252033, 23.634199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255456, 0.418236, 0.871677,
		-0.896084, 0.440940, 0.051043,
		-0.363009, -0.794135, 0.487415,
		34.273556, 34.013794, 23.780424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197086, 34.994114, 23.918379>,  <34.527660, 34.569687, 23.439234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197086, 34.994114, 23.918379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191109, 34.623955, 24.069862>,  <34.187523, 34.401859, 24.160753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191109, 34.623955, 24.069862>,  <34.197086, 34.994114, 23.918379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191109, 34.623955, 24.069862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045198, 0.378990, 0.924296,
		-0.998866, -0.003302, -0.047490,
		-0.014946, -0.925395, 0.378710,
		34.186626, 34.346336, 24.183475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617435, 34.903374, 24.386786>,  <34.197086, 34.994114, 23.918379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617435, 34.903374, 24.386786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887966, 34.632439, 24.502579>,  <34.050285, 34.469879, 24.572054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887966, 34.632439, 24.502579>,  <33.617435, 34.903374, 24.386786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887966, 34.632439, 24.502579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063148, 0.338234, 0.938941,
		-0.733890, -0.653311, 0.185984,
		0.676326, -0.677335, 0.289481,
		34.090862, 34.429237, 24.589424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499111, 34.820255, 25.011860>,  <33.617435, 34.903374, 24.386786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499111, 34.820255, 25.011860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870953, 34.673450, 24.998308>,  <34.094055, 34.585369, 24.990177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870953, 34.673450, 24.998308>,  <33.499111, 34.820255, 25.011860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870953, 34.673450, 24.998308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196825, 0.416611, 0.887522,
		-0.311617, -0.831708, 0.459518,
		0.929599, -0.367011, -0.033878,
		34.149834, 34.563347, 24.988144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647388, 34.507614, 25.720085>,  <33.499111, 34.820255, 25.011860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647388, 34.507614, 25.720085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013042, 34.555931, 25.565287>,  <34.232433, 34.584923, 25.472408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013042, 34.555931, 25.565287>,  <33.647388, 34.507614, 25.720085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013042, 34.555931, 25.565287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282711, 0.494238, 0.822072,
		0.290570, -0.860893, 0.417651,
		0.914135, 0.120795, -0.386995,
		34.287285, 34.592171, 25.449188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062500, 34.240162, 26.201674>,  <33.647388, 34.507614, 25.720085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062500, 34.240162, 26.201674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346207, 34.446861, 26.009876>,  <34.516430, 34.570881, 25.894798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346207, 34.446861, 26.009876>,  <34.062500, 34.240162, 26.201674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346207, 34.446861, 26.009876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435431, 0.213772, 0.874472,
		0.554387, -0.829017, -0.073389,
		0.709264, 0.516751, -0.479492,
		34.558987, 34.601887, 25.866028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674931, 33.936222, 26.288675>,  <34.062500, 34.240162, 26.201674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674931, 33.936222, 26.288675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740170, 34.323746, 26.214041>,  <34.779312, 34.556259, 26.169260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740170, 34.323746, 26.214041>,  <34.674931, 33.936222, 26.288675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740170, 34.323746, 26.214041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383512, 0.111994, 0.916720,
		0.909021, -0.221072, -0.353283,
		0.163096, 0.968806, -0.186589,
		34.789097, 34.614388, 26.158064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344402, 34.022678, 26.608980>,  <34.674931, 33.936222, 26.288675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344402, 34.022678, 26.608980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197613, 34.391487, 26.559662>,  <35.109539, 34.612774, 26.530071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197613, 34.391487, 26.559662>,  <35.344402, 34.022678, 26.608980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197613, 34.391487, 26.559662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361039, 0.263325, 0.894601,
		0.857312, 0.283777, -0.429519,
		-0.366970, 0.922025, -0.123297,
		35.087521, 34.668095, 26.522673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860134, 34.407238, 26.740652>,  <35.344402, 34.022678, 26.608980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860134, 34.407238, 26.740652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535213, 34.632294, 26.802103>,  <35.340263, 34.767326, 26.838974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535213, 34.632294, 26.802103>,  <35.860134, 34.407238, 26.740652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535213, 34.632294, 26.802103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372197, 0.297269, 0.879261,
		0.449042, 0.771403, -0.450886,
		-0.812299, 0.562644, 0.153628,
		35.291523, 34.801086, 26.848192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069752, 35.064411, 27.020809>,  <35.860134, 34.407238, 26.740652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069752, 35.064411, 27.020809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682144, 35.059753, 27.119492>,  <35.449577, 35.056957, 27.178701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682144, 35.059753, 27.119492>,  <36.069752, 35.064411, 27.020809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682144, 35.059753, 27.119492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239442, 0.200579, 0.949966,
		-0.060548, 0.979608, -0.191576,
		-0.969021, -0.011647, 0.246704,
		35.391438, 35.056259, 27.193502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046635, 35.616581, 27.453011>,  <36.069752, 35.064411, 27.020809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046635, 35.616581, 27.453011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715099, 35.406364, 27.529776>,  <35.516178, 35.280235, 27.575834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715099, 35.406364, 27.529776>,  <36.046635, 35.616581, 27.453011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715099, 35.406364, 27.529776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195665, 0.049078, 0.979442,
		-0.524159, 0.849349, 0.062153,
		-0.828838, -0.525544, 0.191913,
		35.466450, 35.248703, 27.587349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756069, 35.954281, 28.060242>,  <36.046635, 35.616581, 27.453011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756069, 35.954281, 28.060242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595215, 35.588360, 28.045105>,  <35.498703, 35.368809, 28.036022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595215, 35.588360, 28.045105>,  <35.756069, 35.954281, 28.060242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595215, 35.588360, 28.045105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245506, -0.147555, 0.958099,
		-0.882051, 0.375994, 0.283926,
		-0.402134, -0.914798, -0.037842,
		35.474575, 35.313919, 28.033752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373837, 35.910400, 28.646837>,  <35.756069, 35.954281, 28.060242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373837, 35.910400, 28.646837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413742, 35.529316, 28.532028>,  <35.437687, 35.300663, 28.463142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413742, 35.529316, 28.532028>,  <35.373837, 35.910400, 28.646837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413742, 35.529316, 28.532028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308377, -0.244654, 0.919265,
		-0.946019, -0.180220, 0.269387,
		0.099763, -0.952715, -0.287023,
		35.443672, 35.243500, 28.445921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944679, 35.527676, 29.096464>,  <35.373837, 35.910400, 28.646837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944679, 35.527676, 29.096464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185669, 35.244438, 28.949156>,  <35.330265, 35.074497, 28.860771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185669, 35.244438, 28.949156>,  <34.944679, 35.527676, 29.096464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185669, 35.244438, 28.949156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305541, -0.221647, 0.926022,
		-0.737338, -0.670428, 0.082815,
		0.602476, -0.708095, -0.368272,
		35.366413, 35.032009, 28.838675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850197, 35.032433, 29.550179>,  <34.944679, 35.527676, 29.096464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850197, 35.032433, 29.550179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174976, 34.922817, 29.344015>,  <35.369843, 34.857048, 29.220318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174976, 34.922817, 29.344015>,  <34.850197, 35.032433, 29.550179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174976, 34.922817, 29.344015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473292, -0.207746, 0.856058,
		-0.341672, -0.939011, -0.038975,
		0.811945, -0.274045, -0.515408,
		35.418560, 34.840603, 29.189392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096764, 34.343773, 29.728674>,  <34.850197, 35.032433, 29.550179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096764, 34.343773, 29.728674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429996, 34.503738, 29.575815>,  <35.629936, 34.599720, 29.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429996, 34.503738, 29.575815>,  <35.096764, 34.343773, 29.728674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429996, 34.503738, 29.575815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456887, -0.108057, 0.882937,
		0.311809, -0.910159, -0.272738,
		0.833084, 0.399919, -0.382147,
		35.679920, 34.623714, 29.461172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637161, 33.811512, 29.735332>,  <35.096764, 34.343773, 29.728674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637161, 33.811512, 29.735332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816219, 34.169178, 29.731787>,  <35.923653, 34.383778, 29.729658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816219, 34.169178, 29.731787>,  <35.637161, 33.811512, 29.735332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816219, 34.169178, 29.731787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432032, -0.207584, 0.877643,
		0.782920, -0.396702, -0.479233,
		0.447644, 0.894168, -0.008867,
		35.950512, 34.437428, 29.729126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418613, 33.732758, 29.949335>,  <35.637161, 33.811512, 29.735332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418613, 33.732758, 29.949335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322422, 34.116150, 30.010628>,  <36.264706, 34.346188, 30.047403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322422, 34.116150, 30.010628>,  <36.418613, 33.732758, 29.949335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322422, 34.116150, 30.010628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560592, 0.008268, 0.828051,
		0.792406, 0.285029, -0.539306,
		-0.240478, 0.958483, 0.153233,
		36.250278, 34.403694, 30.056597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995708, 34.037270, 30.275076>,  <36.418613, 33.732758, 29.949335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995708, 34.037270, 30.275076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715733, 34.304241, 30.376764>,  <36.547749, 34.464424, 30.437777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715733, 34.304241, 30.376764>,  <36.995708, 34.037270, 30.275076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715733, 34.304241, 30.376764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458425, 0.146898, 0.876509,
		0.547663, 0.730041, -0.408785,
		-0.699937, 0.667429, 0.254219,
		36.505753, 34.504471, 30.453030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425629, 34.507641, 30.450123>,  <36.995708, 34.037270, 30.275076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425629, 34.507641, 30.450123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072147, 34.553635, 30.631605>,  <36.860058, 34.581230, 30.740496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072147, 34.553635, 30.631605>,  <37.425629, 34.507641, 30.450123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072147, 34.553635, 30.631605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467333, 0.163129, 0.868901,
		0.025897, 0.979882, -0.197893,
		-0.883702, 0.114984, 0.453707,
		36.807037, 34.588131, 30.767717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523327, 35.099216, 30.840752>,  <37.425629, 34.507641, 30.450123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523327, 35.099216, 30.840752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224857, 34.888786, 31.003956>,  <37.045776, 34.762527, 31.101879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224857, 34.888786, 31.003956>,  <37.523327, 35.099216, 30.840752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224857, 34.888786, 31.003956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354659, 0.204551, 0.912346,
		-0.563422, 0.825471, 0.033948,
		-0.746172, -0.526076, 0.408010,
		37.001007, 34.730965, 31.126358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152718, 35.462971, 31.399782>,  <37.523327, 35.099216, 30.840752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152718, 35.462971, 31.399782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124367, 35.073086, 31.484560>,  <37.107357, 34.839157, 31.535427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124367, 35.073086, 31.484560>,  <37.152718, 35.462971, 31.399782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124367, 35.073086, 31.484560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283420, 0.184040, 0.941171,
		-0.956373, 0.126779, 0.263207,
		-0.070881, -0.974708, 0.211943,
		37.103104, 34.780674, 31.548143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499474, 35.449947, 31.851366>,  <37.152718, 35.462971, 31.399782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499474, 35.449947, 31.851366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829350, 35.225807, 31.882069>,  <37.027275, 35.091324, 31.900490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829350, 35.225807, 31.882069>,  <36.499474, 35.449947, 31.851366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829350, 35.225807, 31.882069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152577, 0.351103, 0.923822,
		-0.544611, -0.750158, 0.375048,
		0.824693, -0.560348, 0.076758,
		37.076759, 35.057701, 31.905096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553062, 35.428108, 32.575241>,  <36.499474, 35.449947, 31.851366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553062, 35.428108, 32.575241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902599, 35.264893, 32.469482>,  <37.112320, 35.166962, 32.406029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902599, 35.264893, 32.469482>,  <36.553062, 35.428108, 32.575241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902599, 35.264893, 32.469482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362682, 0.184863, 0.913393,
		-0.323827, -0.894051, 0.309531,
		0.873841, -0.408043, -0.264392,
		37.164753, 35.142479, 32.390163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686676, 34.947647, 33.032433>,  <36.553062, 35.428108, 32.575241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686676, 34.947647, 33.032433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038658, 35.068291, 32.885620>,  <37.249847, 35.140678, 32.797531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038658, 35.068291, 32.885620>,  <36.686676, 34.947647, 33.032433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038658, 35.068291, 32.885620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356281, 0.092069, 0.929832,
		0.314242, -0.948974, -0.026443,
		0.879952, 0.301614, -0.367033,
		37.302643, 35.158775, 32.775509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349129, 34.614044, 33.297897>,  <36.686676, 34.947647, 33.032433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349129, 34.614044, 33.297897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 34.982811, 33.184685>,  <37.518414, 35.204071, 33.116756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 34.982811, 33.184685>,  <37.349129, 34.614044, 33.297897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454933, 34.982811, 33.184685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508614, 0.115990, 0.853146,
		0.819358, -0.369618, -0.438218,
		0.264509, 0.921916, -0.283030,
		37.534286, 35.259384, 33.099777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215370, 34.627438, 33.191071>,  <37.349129, 34.614044, 33.297897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215370, 34.627438, 33.191071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974365, 34.914822, 33.330090>,  <37.829762, 35.087254, 33.413502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974365, 34.914822, 33.330090>,  <38.215370, 34.627438, 33.191071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974365, 34.914822, 33.330090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457739, -0.045650, 0.887914,
		0.653796, 0.694069, -0.301363,
		-0.602516, 0.718460, 0.347548,
		37.793610, 35.130360, 33.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597843, 34.977116, 33.545280>,  <38.215370, 34.627438, 33.191071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597843, 34.977116, 33.545280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233986, 35.067207, 33.684891>,  <38.015671, 35.121262, 33.768658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233986, 35.067207, 33.684891>,  <38.597843, 34.977116, 33.545280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233986, 35.067207, 33.684891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345062, -0.058053, 0.936783,
		0.231252, 0.972575, -0.024910,
		-0.909645, 0.225229, 0.349024,
		37.961094, 35.134777, 33.789597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256454, 34.633953, 33.263805>,  <38.597843, 34.977116, 33.545280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256454, 34.633953, 33.263805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569695, 34.866348, 33.175076>,  <39.757637, 35.005787, 33.121838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569695, 34.866348, 33.175076>,  <39.256454, 34.633953, 33.263805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569695, 34.866348, 33.175076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370260, 0.722149, 0.584302,
		0.499665, -0.375433, 0.780631,
		0.783098, 0.580991, -0.221824,
		39.804623, 35.040646, 33.108528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705490, 34.807549, 33.821594>,  <39.256454, 34.633953, 33.263805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705490, 34.807549, 33.821594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761467, 35.115856, 33.572971>,  <39.795055, 35.300842, 33.423798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761467, 35.115856, 33.572971>,  <39.705490, 34.807549, 33.821594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761467, 35.115856, 33.572971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148643, 0.636970, 0.756421,
		0.978938, -0.013469, 0.203711,
		0.139946, 0.770770, -0.621553,
		39.803452, 35.347088, 33.386505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437428, 35.160709, 33.898483>,  <39.705490, 34.807549, 33.821594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437428, 35.160709, 33.898483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170547, 35.416313, 33.745377>,  <40.010418, 35.569675, 33.653511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170547, 35.416313, 33.745377>,  <40.437428, 35.160709, 33.898483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170547, 35.416313, 33.745377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043758, 0.546603, 0.836248,
		0.743592, 0.541196, -0.392656,
		-0.667201, 0.639009, -0.382767,
		39.970387, 35.608017, 33.630547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752872, 35.521744, 33.306652>,  <40.437428, 35.160709, 33.898483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752872, 35.521744, 33.306652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898132, 35.341003, 32.980717>,  <40.985287, 35.232559, 32.785156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898132, 35.341003, 32.980717>,  <40.752872, 35.521744, 33.306652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898132, 35.341003, 32.980717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917056, -0.018728, -0.398319,
		0.164720, 0.891898, -0.421172,
		0.363147, -0.451850, -0.814835,
		41.007076, 35.205448, 32.736267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460716, 35.803158, 32.753277>,  <40.752872, 35.521744, 33.306652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460716, 35.803158, 32.753277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491875, 35.414253, 32.665062>,  <40.510571, 35.180908, 32.612133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491875, 35.414253, 32.665062>,  <40.460716, 35.803158, 32.753277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491875, 35.414253, 32.665062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867583, 0.042874, -0.495441,
		0.491155, 0.229925, -0.840180,
		0.077892, -0.972263, -0.220537,
		40.515244, 35.122574, 32.598900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425507, 35.773129, 32.085022>,  <40.460716, 35.803158, 32.753277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425507, 35.773129, 32.085022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283314, 35.435284, 32.245152>,  <40.197998, 35.232574, 32.341228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283314, 35.435284, 32.245152>,  <40.425507, 35.773129, 32.085022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283314, 35.435284, 32.245152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851446, 0.115937, -0.511467,
		0.385581, -0.522669, -0.760358,
		-0.355481, -0.844616, 0.400322,
		40.176670, 35.181900, 32.365250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439995, 36.089188, 31.375900>,  <40.425507, 35.773129, 32.085022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439995, 36.089188, 31.375900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530373, 36.222012, 31.009583>,  <40.584599, 36.301708, 30.789791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530373, 36.222012, 31.009583>,  <40.439995, 36.089188, 31.375900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530373, 36.222012, 31.009583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916853, -0.390125, 0.084753,
		-0.329131, -0.858800, -0.392601,
		0.225949, 0.332062, -0.915796,
		40.598156, 36.321629, 30.734844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728031, 35.504890, 30.920994>,  <40.439995, 36.089188, 31.375900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728031, 35.504890, 30.920994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880081, 35.854328, 30.799448>,  <40.971310, 36.063992, 30.726521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880081, 35.854328, 30.799448>,  <40.728031, 35.504890, 30.920994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880081, 35.854328, 30.799448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921270, -0.328384, 0.208390,
		0.082265, -0.359155, -0.929645,
		0.380125, 0.873597, -0.303864,
		40.994118, 36.116405, 30.708288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378139, 35.327724, 30.815891>,  <40.728031, 35.504890, 30.920994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378139, 35.327724, 30.815891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409569, 35.726006, 30.796310>,  <41.428429, 35.964973, 30.784561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409569, 35.726006, 30.796310>,  <41.378139, 35.327724, 30.815891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409569, 35.726006, 30.796310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870788, -0.044645, 0.489627,
		0.485339, -0.081100, -0.870557,
		0.078575, 0.995706, -0.048952,
		41.433140, 36.024715, 30.781624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137760, 35.285748, 30.711599>,  <41.378139, 35.327724, 30.815891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137760, 35.285748, 30.711599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029263, 35.661873, 30.793804>,  <41.964165, 35.887550, 30.843126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029263, 35.661873, 30.793804>,  <42.137760, 35.285748, 30.711599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029263, 35.661873, 30.793804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945068, 0.219720, 0.242010,
		0.182411, 0.259866, -0.948259,
		-0.271242, 0.940315, 0.205512,
		41.947891, 35.943966, 30.855457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447887, 35.756527, 30.299053>,  <42.137760, 35.285748, 30.711599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447887, 35.756527, 30.299053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353806, 35.926571, 30.648674>,  <42.297356, 36.028595, 30.858446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353806, 35.926571, 30.648674>,  <42.447887, 35.756527, 30.299053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353806, 35.926571, 30.648674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971738, 0.121470, 0.202412,
		-0.020124, 0.896955, -0.441663,
		-0.235203, 0.425107, 0.874050,
		42.283245, 36.054104, 30.910889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899670, 36.262505, 30.402388>,  <42.447887, 35.756527, 30.299053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899670, 36.262505, 30.402388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768822, 36.255787, 30.780321>,  <42.690311, 36.251755, 31.007082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768822, 36.255787, 30.780321>,  <42.899670, 36.262505, 30.402388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768822, 36.255787, 30.780321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929967, 0.171808, 0.325028,
		-0.167789, 0.984987, -0.040583,
		-0.327121, -0.016795, 0.944833,
		42.670685, 36.250748, 31.063770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082642, 36.795135, 30.743219>,  <42.899670, 36.262505, 30.402388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082642, 36.795135, 30.743219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089115, 36.494495, 31.006989>,  <43.092999, 36.314114, 31.165251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089115, 36.494495, 31.006989>,  <43.082642, 36.795135, 30.743219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089115, 36.494495, 31.006989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942973, 0.230771, 0.239889,
		-0.332476, 0.617937, 0.712470,
		0.016181, -0.751597, 0.659424,
		43.093971, 36.269016, 31.204815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505909, 37.030067, 31.337326>,  <43.082642, 36.795135, 30.743219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505909, 37.030067, 31.337326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534222, 36.636890, 31.269421>,  <43.551208, 36.400986, 31.228678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534222, 36.636890, 31.269421>,  <43.505909, 37.030067, 31.337326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534222, 36.636890, 31.269421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991296, 0.050373, 0.121631,
		-0.111005, -0.176894, 0.977950,
		0.070778, -0.982940, -0.169762,
		43.555454, 36.342007, 31.218493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828011, 36.621040, 31.986839>,  <43.505909, 37.030067, 31.337326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828011, 36.621040, 31.986839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879879, 36.504444, 31.607742>,  <43.910999, 36.434486, 31.380283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879879, 36.504444, 31.607742>,  <43.828011, 36.621040, 31.986839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879879, 36.504444, 31.607742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991347, 0.057758, 0.117875,
		0.020380, -0.954827, 0.296461,
		0.129674, -0.291494, -0.947743,
		43.918781, 36.416996, 31.323420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238987, 36.109470, 31.912283>,  <43.828011, 36.621040, 31.986839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238987, 36.109470, 31.912283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303131, 36.360706, 31.607706>,  <44.341618, 36.511448, 31.424961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303131, 36.360706, 31.607706>,  <44.238987, 36.109470, 31.912283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303131, 36.360706, 31.607706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968728, 0.047838, 0.243470,
		0.189346, -0.776671, -0.600775,
		0.160356, 0.628088, -0.761441,
		44.351238, 36.549133, 31.379274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742855, 36.095531, 32.511497>,  <44.238987, 36.109470, 31.912283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742855, 36.095531, 32.511497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711941, 36.330524, 32.833714>,  <43.693394, 36.471519, 33.027042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711941, 36.330524, 32.833714>,  <43.742855, 36.095531, 32.511497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711941, 36.330524, 32.833714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986671, 0.070979, -0.146431,
		-0.143202, -0.806118, 0.574166,
		-0.077287, 0.587482, 0.805538,
		43.688755, 36.506767, 33.075375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246147, 35.575653, 32.439335>,  <43.742855, 36.095531, 32.511497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246147, 35.575653, 32.439335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302944, 35.770309, 32.094540>,  <43.337021, 35.887104, 31.887663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302944, 35.770309, 32.094540>,  <43.246147, 35.575653, 32.439335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302944, 35.770309, 32.094540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989750, 0.056339, -0.131229,
		-0.015297, 0.871785, 0.489649,
		0.141990, 0.486638, -0.861987,
		43.345543, 35.916302, 31.835943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599449, 35.691250, 32.277767>,  <43.246147, 35.575653, 32.439335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599449, 35.691250, 32.277767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792679, 35.918217, 32.011028>,  <42.908619, 36.054398, 31.850986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792679, 35.918217, 32.011028>,  <42.599449, 35.691250, 32.277767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792679, 35.918217, 32.011028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871956, 0.380961, -0.307507,
		0.079558, 0.730007, 0.678793,
		0.483076, 0.567413, -0.666843,
		42.937603, 36.088440, 31.810976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149807, 36.227779, 32.203442>,  <42.599449, 35.691250, 32.277767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149807, 36.227779, 32.203442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328300, 36.244942, 31.845886>,  <42.435398, 36.255238, 31.631353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328300, 36.244942, 31.845886>,  <42.149807, 36.227779, 32.203442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328300, 36.244942, 31.845886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864994, 0.276800, -0.418529,
		0.229470, 0.959969, 0.160633,
		0.446238, 0.042907, -0.893885,
		42.462173, 36.257812, 31.577721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871937, 36.777920, 31.903866>,  <42.149807, 36.227779, 32.203442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871937, 36.777920, 31.903866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983818, 36.544109, 31.599209>,  <42.050945, 36.403824, 31.416414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983818, 36.544109, 31.599209>,  <41.871937, 36.777920, 31.903866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983818, 36.544109, 31.599209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837193, 0.239840, -0.491513,
		0.469973, 0.775119, -0.422274,
		0.279703, -0.584523, -0.761642,
		42.067730, 36.368752, 31.370716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610104, 37.144176, 31.389446>,  <41.871937, 36.777920, 31.903866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610104, 37.144176, 31.389446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724991, 36.807167, 31.207165>,  <41.793922, 36.604961, 31.097795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724991, 36.807167, 31.207165>,  <41.610104, 37.144176, 31.389446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724991, 36.807167, 31.207165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729747, 0.115701, -0.673857,
		0.620463, 0.526093, -0.581594,
		0.287220, -0.842520, -0.455703,
		41.811157, 36.554413, 31.070454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579811, 37.381290, 30.748505>,  <41.610104, 37.144176, 31.389446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579811, 37.381290, 30.748505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550743, 36.982544, 30.760956>,  <41.533302, 36.743294, 30.768427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550743, 36.982544, 30.760956>,  <41.579811, 37.381290, 30.748505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550743, 36.982544, 30.760956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889663, 0.050681, -0.453798,
		0.450800, -0.060669, -0.890561,
		-0.072666, -0.996871, 0.031128,
		41.528942, 36.683483, 30.770294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475704, 37.145950, 30.104465>,  <41.579811, 37.381290, 30.748505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475704, 37.145950, 30.104465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313187, 36.850178, 30.319191>,  <41.215675, 36.672714, 30.448027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313187, 36.850178, 30.319191>,  <41.475704, 37.145950, 30.104465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313187, 36.850178, 30.319191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861384, 0.113942, -0.495009,
		0.304859, -0.663524, -0.683226,
		-0.406298, -0.739428, 0.536813,
		41.191296, 36.628349, 30.480234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096554, 36.808601, 29.632269>,  <41.475704, 37.145950, 30.104465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096554, 36.808601, 29.632269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929062, 36.699604, 29.978775>,  <40.828568, 36.634205, 30.186678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929062, 36.699604, 29.978775>,  <41.096554, 36.808601, 29.632269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929062, 36.699604, 29.978775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884847, -0.092112, -0.456686,
		0.204239, -0.957737, -0.202549,
		-0.418728, -0.272498, 0.866263,
		40.803444, 36.617855, 30.238653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615509, 36.257820, 29.465389>,  <41.096554, 36.808601, 29.632269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615509, 36.257820, 29.465389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517597, 36.419464, 29.817930>,  <40.458851, 36.516449, 30.029455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517597, 36.419464, 29.817930>,  <40.615509, 36.257820, 29.465389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517597, 36.419464, 29.817930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966344, -0.027499, -0.255777,
		-0.079126, -0.914297, 0.397241,
		-0.244780, 0.404111, 0.881350,
		40.444164, 36.540695, 30.082335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763420, 35.539566, 29.267847>,  <40.615509, 36.257820, 29.465389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763420, 35.539566, 29.267847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706295, 35.284409, 28.965141>,  <40.672020, 35.131313, 28.783518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706295, 35.284409, 28.965141>,  <40.763420, 35.539566, 29.267847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706295, 35.284409, 28.965141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970753, 0.058805, -0.232766,
		0.192982, -0.767874, 0.610842,
		-0.142814, -0.637897, -0.756764,
		40.663452, 35.093040, 28.738111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123989, 35.918240, 28.917807>,  <40.763420, 35.539566, 29.267847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123989, 35.918240, 28.917807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136593, 36.281269, 28.750322>,  <40.144154, 36.499088, 28.649832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136593, 36.281269, 28.750322>,  <40.123989, 35.918240, 28.917807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136593, 36.281269, 28.750322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981094, 0.108115, 0.160515,
		0.190948, 0.405735, 0.893822,
		0.031509, 0.907574, -0.418709,
		40.146046, 36.553543, 28.624710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047405, 35.483437, 29.583889>,  <40.123989, 35.918240, 28.917807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047405, 35.483437, 29.583889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651039, 35.534897, 29.568232>,  <39.413219, 35.565773, 29.558838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651039, 35.534897, 29.568232>,  <40.047405, 35.483437, 29.583889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651039, 35.534897, 29.568232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114186, -0.651229, 0.750242,
		0.071028, 0.747897, 0.660004,
		-0.990917, 0.128651, -0.039144,
		39.353764, 35.573494, 29.556488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823303, 35.797783, 30.199961>,  <40.047405, 35.483437, 29.583889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823303, 35.797783, 30.199961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547127, 35.551147, 30.048641>,  <39.381420, 35.403164, 29.957850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547127, 35.551147, 30.048641>,  <39.823303, 35.797783, 30.199961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547127, 35.551147, 30.048641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013744, -0.534038, 0.845349,
		-0.723262, 0.578461, 0.377194,
		-0.690437, -0.616593, -0.378299,
		39.339996, 35.366169, 29.935152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241386, 35.699203, 30.667387>,  <39.823303, 35.797783, 30.199961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241386, 35.699203, 30.667387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289948, 35.375874, 30.436953>,  <39.319084, 35.181877, 30.298691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289948, 35.375874, 30.436953>,  <39.241386, 35.699203, 30.667387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289948, 35.375874, 30.436953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008322, -0.581190, 0.813725,
		-0.992568, -0.093997, -0.077287,
		0.121406, -0.808321, -0.576088,
		39.326370, 35.133377, 30.264126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672001, 35.124752, 30.633541>,  <39.241386, 35.699203, 30.667387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672001, 35.124752, 30.633541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020542, 34.935127, 30.582932>,  <39.229668, 34.821354, 30.552567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020542, 34.935127, 30.582932>,  <38.672001, 35.124752, 30.633541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020542, 34.935127, 30.582932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128108, -0.468737, 0.873999,
		-0.473656, -0.745342, -0.469164,
		0.871343, -0.474078, -0.126536,
		39.281948, 34.792908, 30.544975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492245, 34.482372, 30.774324>,  <38.672001, 35.124752, 30.633541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492245, 34.482372, 30.774324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876648, 34.542423, 30.867216>,  <39.107288, 34.578453, 30.922951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876648, 34.542423, 30.867216>,  <38.492245, 34.482372, 30.774324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876648, 34.542423, 30.867216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156255, -0.398066, 0.903951,
		0.228152, -0.904989, -0.359085,
		0.961005, 0.150129, 0.232228,
		39.164951, 34.587463, 30.936884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852673, 33.879314, 30.931095>,  <38.492245, 34.482372, 30.774324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852673, 33.879314, 30.931095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082008, 34.145611, 31.122120>,  <39.219612, 34.305389, 31.236734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082008, 34.145611, 31.122120>,  <38.852673, 33.879314, 30.931095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082008, 34.145611, 31.122120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025538, -0.597117, 0.801748,
		0.818918, -0.447479, -0.359354,
		0.573342, 0.665743, 0.477562,
		39.254009, 34.345333, 31.265388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665482, 33.742111, 31.187380>,  <38.852673, 33.879314, 30.931095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665482, 33.742111, 31.187380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393055, 33.962242, 31.380579>,  <39.229599, 34.094322, 31.496498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393055, 33.962242, 31.380579>,  <39.665482, 33.742111, 31.187380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393055, 33.962242, 31.380579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034949, -0.683314, 0.729288,
		0.731389, 0.479811, 0.484615,
		-0.681064, 0.550330, 0.482999,
		39.188736, 34.127342, 31.525478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805077, 33.852367, 31.878727>,  <39.665482, 33.742111, 31.187380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805077, 33.852367, 31.878727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409161, 33.825684, 31.828341>,  <39.171612, 33.809673, 31.798109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409161, 33.825684, 31.828341>,  <39.805077, 33.852367, 31.878727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409161, 33.825684, 31.828341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045445, -0.689923, 0.722455,
		-0.135101, 0.720802, 0.679847,
		-0.989789, -0.066709, -0.125966,
		39.112225, 33.805672, 31.790550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437496, 33.960304, 32.466038>,  <39.805077, 33.852367, 31.878727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437496, 33.960304, 32.466038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214157, 33.709759, 32.248440>,  <39.080154, 33.559433, 32.117882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214157, 33.709759, 32.248440>,  <39.437496, 33.960304, 32.466038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214157, 33.709759, 32.248440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001672, -0.656567, 0.754266,
		-0.829607, 0.420231, 0.367637,
		-0.558345, -0.626359, -0.543990,
		39.046654, 33.521851, 32.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828445, 33.821823, 32.872841>,  <39.437496, 33.960304, 32.466038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828445, 33.821823, 32.872841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886803, 33.511063, 32.627846>,  <38.921818, 33.324608, 32.480846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886803, 33.511063, 32.627846>,  <38.828445, 33.821823, 32.872841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886803, 33.511063, 32.627846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220265, -0.629083, 0.745478,
		-0.964469, 0.026154, -0.262900,
		0.145888, -0.776898, -0.612492,
		38.930569, 33.277992, 32.444099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409374, 33.589870, 33.199432>,  <38.828445, 33.821823, 32.872841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409374, 33.589870, 33.199432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537865, 33.414097, 33.534985>,  <39.614960, 33.308632, 33.736317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537865, 33.414097, 33.534985>,  <39.409374, 33.589870, 33.199432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537865, 33.414097, 33.534985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426948, -0.723490, -0.542474,
		0.845299, 0.532413, -0.044789,
		0.321224, -0.439430, 0.838878,
		39.634232, 33.282269, 33.786648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193615, 33.646824, 33.261852>,  <39.409374, 33.589870, 33.199432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193615, 33.646824, 33.261852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030087, 33.327709, 33.439121>,  <39.931969, 33.136242, 33.545483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030087, 33.327709, 33.439121>,  <40.193615, 33.646824, 33.261852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030087, 33.327709, 33.439121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528459, -0.602856, -0.597743,
		0.744040, -0.010172, 0.668058,
		-0.408823, -0.797786, 0.443173,
		39.907440, 33.088375, 33.572075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625156, 33.187164, 33.614769>,  <40.193615, 33.646824, 33.261852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625156, 33.187164, 33.614769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320477, 32.977043, 33.463047>,  <40.137669, 32.850971, 33.372013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320477, 32.977043, 33.463047>,  <40.625156, 33.187164, 33.614769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320477, 32.977043, 33.463047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634174, -0.484435, -0.602616,
		0.132805, -0.699558, 0.702126,
		-0.761700, -0.525301, -0.379306,
		40.091965, 32.819454, 33.349255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666145, 32.394897, 33.778805>,  <40.625156, 33.187164, 33.614769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666145, 32.394897, 33.778805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015835, 32.445225, 33.591228>,  <41.225647, 32.475422, 33.478683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015835, 32.445225, 33.591228>,  <40.666145, 32.394897, 33.778805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015835, 32.445225, 33.591228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159552, 0.837755, 0.522216,
		0.458566, -0.531352, 0.712308,
		0.874220, 0.125820, -0.468944,
		41.278099, 32.482971, 33.450546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181301, 32.499966, 34.270359>,  <40.666145, 32.394897, 33.778805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181301, 32.499966, 34.270359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338593, 32.664959, 33.941669>,  <41.432968, 32.763954, 33.744457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338593, 32.664959, 33.941669>,  <41.181301, 32.499966, 34.270359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338593, 32.664959, 33.941669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323515, 0.774499, 0.543589,
		0.860646, -0.479594, 0.171109,
		0.393226, 0.412482, -0.821725,
		41.456562, 32.788704, 33.695152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796562, 32.503605, 34.462646>,  <41.181301, 32.499966, 34.270359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796562, 32.503605, 34.462646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685135, 32.796951, 34.214592>,  <41.618279, 32.972961, 34.065762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685135, 32.796951, 34.214592>,  <41.796562, 32.503605, 34.462646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685135, 32.796951, 34.214592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257535, 0.679086, 0.687399,
		0.925242, 0.031784, -0.378043,
		-0.278572, 0.733370, -0.620134,
		41.601562, 33.016964, 34.028553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513649, 32.072041, 34.986286>,  <41.796562, 32.503605, 34.462646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513649, 32.072041, 34.986286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412045, 32.452641, 34.916870>,  <41.351082, 32.681000, 34.875221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412045, 32.452641, 34.916870>,  <41.513649, 32.072041, 34.986286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412045, 32.452641, 34.916870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038884, -0.189329, -0.981143,
		-0.966418, -0.242477, 0.085091,
		-0.254015, 0.951504, -0.173543,
		41.335838, 32.738091, 34.864807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821716, 32.712955, 35.172138>,  <41.513649, 32.072041, 34.986286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821716, 32.712955, 35.172138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983711, 32.347313, 35.164143>,  <42.080906, 32.127926, 35.159344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983711, 32.347313, 35.164143>,  <41.821716, 32.712955, 35.172138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983711, 32.347313, 35.164143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780592, 0.334282, 0.528140,
		-0.476092, -0.229494, 0.848922,
		0.404985, -0.914105, -0.019992,
		42.105206, 32.073082, 35.158146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945454, 32.377472, 35.873280>,  <41.821716, 32.712955, 35.172138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945454, 32.377472, 35.873280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205841, 32.308247, 35.577633>,  <42.362072, 32.266712, 35.400246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205841, 32.308247, 35.577633>,  <41.945454, 32.377472, 35.873280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205841, 32.308247, 35.577633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715443, 0.465322, 0.521169,
		0.253732, -0.868058, 0.426727,
		0.650970, -0.173061, -0.739113,
		42.401131, 32.256329, 35.355900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573036, 32.112663, 36.196209>,  <41.945454, 32.377472, 35.873280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573036, 32.112663, 36.196209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684448, 32.236492, 35.832542>,  <42.751297, 32.310791, 35.614342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684448, 32.236492, 35.832542>,  <42.573036, 32.112663, 36.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684448, 32.236492, 35.832542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783255, 0.474614, 0.401564,
		0.555816, -0.823958, -0.110278,
		0.278532, 0.309572, -0.909167,
		42.768009, 32.329365, 35.559792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348343, 32.017487, 36.016155>,  <42.573036, 32.112663, 36.196209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348343, 32.017487, 36.016155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245850, 32.296951, 35.748959>,  <43.184353, 32.464630, 35.588642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245850, 32.296951, 35.748959>,  <43.348343, 32.017487, 36.016155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245850, 32.296951, 35.748959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939392, 0.342841, -0.001761,
		0.227783, -0.627954, -0.744169,
		-0.256238, 0.698665, -0.667989,
		43.168980, 32.506550, 35.548561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740627, 32.089993, 35.234024>,  <43.348343, 32.017487, 36.016155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740627, 32.089993, 35.234024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613312, 32.450684, 35.351036>,  <43.536922, 32.667099, 35.421242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613312, 32.450684, 35.351036>,  <43.740627, 32.089993, 35.234024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613312, 32.450684, 35.351036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946720, 0.318340, 0.048795,
		-0.049122, 0.292471, -0.955012,
		-0.318290, 0.901732, 0.292526,
		43.517826, 32.721203, 35.438793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327015, 32.489647, 35.126907>,  <43.740627, 32.089993, 35.234024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327015, 32.489647, 35.126907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069324, 32.761116, 35.267967>,  <43.914711, 32.924000, 35.352604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069324, 32.761116, 35.267967>,  <44.327015, 32.489647, 35.126907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069324, 32.761116, 35.267967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751901, 0.646422, 0.129547,
		-0.140042, 0.348619, -0.926743,
		-0.644230, 0.678677, 0.352654,
		43.876057, 32.964718, 35.373764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253426, 33.067791, 34.718094>,  <44.327015, 32.489647, 35.126907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253426, 33.067791, 34.718094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651604, 33.032791, 34.733212>,  <44.890511, 33.011791, 34.742283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651604, 33.032791, 34.733212>,  <44.253426, 33.067791, 34.718094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651604, 33.032791, 34.733212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094468, 0.853166, -0.513014,
		0.012641, 0.514249, 0.857548,
		0.995448, -0.087496, 0.037795,
		44.950237, 33.006542, 34.744549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535030, 33.702423, 34.568962>,  <44.253426, 33.067791, 34.718094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535030, 33.702423, 34.568962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892399, 33.522800, 34.564087>,  <45.106819, 33.415028, 34.561161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892399, 33.522800, 34.564087>,  <44.535030, 33.702423, 34.568962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892399, 33.522800, 34.564087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390585, 0.789919, -0.472728,
		0.221914, 0.417582, 0.881124,
		0.893419, -0.449059, -0.012193,
		45.160423, 33.388084, 34.560429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962650, 33.931999, 34.958439>,  <44.535030, 33.702423, 34.568962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962650, 33.931999, 34.958439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170219, 33.798683, 34.643570>,  <45.294762, 33.718693, 34.454647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170219, 33.798683, 34.643570>,  <44.962650, 33.931999, 34.958439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170219, 33.798683, 34.643570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325287, 0.928573, -0.178721,
		0.790513, -0.163315, 0.590269,
		0.518919, -0.333288, -0.787173,
		45.325893, 33.698696, 34.407417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579529, 34.222122, 34.936256>,  <44.962650, 33.931999, 34.958439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579529, 34.222122, 34.936256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516403, 34.152752, 34.547409>,  <45.478527, 34.111130, 34.314098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516403, 34.152752, 34.547409>,  <45.579529, 34.222122, 34.936256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516403, 34.152752, 34.547409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263214, 0.941451, -0.210687,
		0.951743, -0.289125, -0.102921,
		-0.157810, -0.173430, -0.972120,
		45.469059, 34.100723, 34.255772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086494, 34.552013, 34.405952>,  <45.579529, 34.222122, 34.936256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086494, 34.552013, 34.405952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783009, 34.460342, 34.162045>,  <45.600918, 34.405338, 34.015697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783009, 34.460342, 34.162045>,  <46.086494, 34.552013, 34.405952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783009, 34.460342, 34.162045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157913, 0.843443, -0.513485,
		0.631989, -0.485881, -0.603746,
		-0.758718, -0.229178, -0.609774,
		45.555393, 34.391590, 33.979111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313995, 34.018776, 34.992382>,  <46.086494, 34.552013, 34.405952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313995, 34.018776, 34.992382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698460, 33.941147, 35.070881>,  <46.929138, 33.894569, 35.117981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698460, 33.941147, 35.070881>,  <46.313995, 34.018776, 34.992382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698460, 33.941147, 35.070881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238934, 0.941001, -0.239642,
		-0.138162, 0.277224, 0.950820,
		0.961156, -0.194074, 0.196249,
		46.986805, 33.882923, 35.129757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545692, 34.572086, 35.391373>,  <46.313995, 34.018776, 34.992382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545692, 34.572086, 35.391373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880127, 34.415836, 35.237301>,  <47.080788, 34.322086, 35.144855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880127, 34.415836, 35.237301>,  <46.545692, 34.572086, 35.391373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.880127, 34.415836, 35.237301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309926, 0.915680, -0.255883,
		0.452658, 0.094564, 0.886656,
		0.836090, -0.390625, -0.385182,
		47.130955, 34.298649, 35.121746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.151699, 34.960876, 35.546623>,  <46.545692, 34.572086, 35.391373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.151699, 34.960876, 35.546623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213543, 34.781212, 35.194633>,  <47.250648, 34.673412, 34.983440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213543, 34.781212, 35.194633>,  <47.151699, 34.960876, 35.546623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213543, 34.781212, 35.194633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469870, 0.816935, -0.334424,
		0.869090, -0.361766, 0.337356,
		0.154614, -0.449158, -0.879972,
		47.259926, 34.646465, 34.930641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.596210, 35.379009, 35.329235>,  <47.151699, 34.960876, 35.546623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.596210, 35.379009, 35.329235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477367, 35.174149, 35.006886>,  <47.406059, 35.051231, 34.813477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477367, 35.174149, 35.006886>,  <47.596210, 35.379009, 35.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477367, 35.174149, 35.006886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409426, 0.694124, -0.592083,
		0.862610, -0.505858, 0.003458,
		-0.297110, -0.512152, -0.805870,
		47.388233, 35.020504, 34.765125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.236565, 30.028122, 23.766422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.906731, 30.254063, 23.779099>,  <31.708830, 30.389626, 23.786705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.906731, 30.254063, 23.779099>,  <32.236565, 30.028122, 23.766422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906731, 30.254063, 23.779099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251192, 0.315357, 0.915124,
		0.506914, 0.762558, -0.401924,
		-0.824585, 0.564849, 0.031690,
		31.659355, 30.423517, 23.788605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465931, 30.743158, 23.878645>,  <32.236565, 30.028122, 23.766422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465931, 30.743158, 23.878645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.071808, 30.747499, 23.946817>,  <31.835333, 30.750105, 23.987720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.071808, 30.747499, 23.946817>,  <32.465931, 30.743158, 23.878645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071808, 30.747499, 23.946817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153606, 0.492459, 0.856674,
		-0.074634, 0.870268, -0.486891,
		-0.985310, 0.010853, 0.170433,
		31.776215, 30.750755, 23.997948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277050, 31.477917, 24.022902>,  <32.465931, 30.743158, 23.878645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277050, 31.477917, 24.022902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011269, 31.224194, 24.180967>,  <31.851801, 31.071959, 24.275806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011269, 31.224194, 24.180967>,  <32.277050, 31.477917, 24.022902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011269, 31.224194, 24.180967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044130, 0.561148, 0.826538,
		-0.746028, 0.531756, -0.400847,
		-0.664451, -0.634310, 0.395165,
		31.811934, 31.033901, 24.299517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697552, 31.893602, 24.288515>,  <32.277050, 31.477917, 24.022902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697552, 31.893602, 24.288515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694719, 31.547775, 24.489502>,  <31.693020, 31.340279, 24.610094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694719, 31.547775, 24.489502>,  <31.697552, 31.893602, 24.288515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694719, 31.547775, 24.489502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076120, 0.501488, 0.861809,
		-0.997073, -0.032145, -0.069362,
		-0.007081, -0.864567, 0.502467,
		31.692595, 31.288404, 24.640242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409710, 32.128773, 24.845575>,  <31.697552, 31.893602, 24.288515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409710, 32.128773, 24.845575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.517590, 31.759392, 24.954748>,  <31.582317, 31.537762, 25.020252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.517590, 31.759392, 24.954748>,  <31.409710, 32.128773, 24.845575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517590, 31.759392, 24.954748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140535, 0.318146, 0.937568,
		-0.952635, -0.214504, 0.215581,
		0.269699, -0.923456, 0.272932,
		31.598499, 31.482355, 25.036627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911856, 32.012047, 25.307409>,  <31.409710, 32.128773, 24.845575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911856, 32.012047, 25.307409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.240292, 31.788860, 25.355555>,  <31.437353, 31.654949, 25.384441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.240292, 31.788860, 25.355555>,  <30.911856, 32.012047, 25.307409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240292, 31.788860, 25.355555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052204, 0.283394, 0.957582,
		-0.568405, -0.779978, 0.261821,
		0.821091, -0.557963, 0.120365,
		31.486618, 31.621471, 25.391665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741232, 31.589161, 25.893730>,  <30.911856, 32.012047, 25.307409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741232, 31.589161, 25.893730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.131109, 31.658821, 25.837662>,  <31.365036, 31.700617, 25.804020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.131109, 31.658821, 25.837662>,  <30.741232, 31.589161, 25.893730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131109, 31.658821, 25.837662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102939, 0.206966, 0.972918,
		0.198426, -0.962727, 0.183804,
		0.974695, 0.174132, -0.140170,
		31.423517, 31.711065, 25.795610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001141, 31.248720, 26.430605>,  <30.741232, 31.589161, 25.893730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001141, 31.248720, 26.430605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311012, 31.481291, 26.331158>,  <31.496937, 31.620832, 26.271488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311012, 31.481291, 26.331158>,  <31.001141, 31.248720, 26.430605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311012, 31.481291, 26.331158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178106, 0.176628, 0.968029,
		0.606751, -0.794195, 0.033275,
		0.774681, 0.581426, -0.248620,
		31.543417, 31.655718, 26.256571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605289, 31.016790, 26.835226>,  <31.001141, 31.248720, 26.430605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605289, 31.016790, 26.835226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714262, 31.383844, 26.719484>,  <31.779646, 31.604076, 26.650040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714262, 31.383844, 26.719484>,  <31.605289, 31.016790, 26.835226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714262, 31.383844, 26.719484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176829, 0.247860, 0.952521,
		0.945787, -0.310662, -0.094740,
		0.272431, 0.917635, -0.289356,
		31.795992, 31.659136, 26.632677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970703, 31.259268, 27.401291>,  <31.605289, 31.016790, 26.835226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970703, 31.259268, 27.401291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.904493, 31.607841, 27.216595>,  <31.864767, 31.816986, 27.105778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.904493, 31.607841, 27.216595>,  <31.970703, 31.259268, 27.401291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904493, 31.607841, 27.216595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145410, 0.441515, 0.885393,
		0.975427, 0.213696, 0.053634,
		-0.165525, 0.871435, -0.461739,
		31.854836, 31.869272, 27.078074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507057, 31.687662, 27.428722>,  <31.970703, 31.259268, 27.401291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507057, 31.687662, 27.428722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.185947, 31.924957, 27.404663>,  <31.993280, 32.067333, 27.390228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.185947, 31.924957, 27.404663>,  <32.507057, 31.687662, 27.428722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185947, 31.924957, 27.404663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258090, 0.436633, 0.861824,
		0.537530, 0.676329, -0.503627,
		-0.802777, 0.593238, -0.060149,
		31.945114, 32.102928, 27.386618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714382, 32.468182, 27.435637>,  <32.507057, 31.687662, 27.428722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714382, 32.468182, 27.435637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323864, 32.490410, 27.519304>,  <32.089554, 32.503746, 27.569506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323864, 32.490410, 27.519304>,  <32.714382, 32.468182, 27.435637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323864, 32.490410, 27.519304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200649, 0.594668, 0.778531,
		-0.081121, 0.802049, -0.591724,
		-0.976299, 0.055574, 0.209170,
		32.030975, 32.507084, 27.582056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562744, 33.087021, 27.604694>,  <32.714382, 32.468182, 27.435637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562744, 33.087021, 27.604694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.279755, 32.879997, 27.797197>,  <32.109959, 32.755783, 27.912699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.279755, 32.879997, 27.797197>,  <32.562744, 33.087021, 27.604694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279755, 32.879997, 27.797197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188485, 0.518121, 0.834281,
		-0.681137, 0.680946, -0.269008,
		-0.707478, -0.517555, 0.481259,
		32.067513, 32.724731, 27.941576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167126, 33.633595, 27.931839>,  <32.562744, 33.087021, 27.604694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167126, 33.633595, 27.931839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.120365, 33.281254, 28.115328>,  <32.092308, 33.069847, 28.225422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.120365, 33.281254, 28.115328>,  <32.167126, 33.633595, 27.931839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120365, 33.281254, 28.115328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288495, 0.411855, 0.864376,
		-0.950318, 0.233388, 0.205975,
		-0.116903, -0.880855, 0.458724,
		32.085293, 33.016998, 28.252945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008083, 33.812534, 28.609108>,  <32.167126, 33.633595, 27.931839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008083, 33.812534, 28.609108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042580, 33.419624, 28.675684>,  <32.063278, 33.183880, 28.715630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042580, 33.419624, 28.675684>,  <32.008083, 33.812534, 28.609108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042580, 33.419624, 28.675684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419018, 0.187328, 0.888444,
		-0.903873, -0.006879, 0.427746,
		0.086240, -0.982273, 0.166438,
		32.068451, 33.124943, 28.725615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766241, 33.784306, 29.281170>,  <32.008083, 33.812534, 28.609108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766241, 33.784306, 29.281170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.993271, 33.469284, 29.185152>,  <32.129490, 33.280273, 29.127541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.993271, 33.469284, 29.185152>,  <31.766241, 33.784306, 29.281170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993271, 33.469284, 29.185152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467383, 0.068177, 0.881422,
		-0.677799, -0.612467, 0.406784,
		0.567575, -0.787551, -0.240046,
		32.163544, 33.233017, 29.113138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605783, 33.310333, 29.780773>,  <31.766241, 33.784306, 29.281170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605783, 33.310333, 29.780773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.960365, 33.201916, 29.630714>,  <32.173115, 33.136864, 29.540680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.960365, 33.201916, 29.630714>,  <31.605783, 33.310333, 29.780773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960365, 33.201916, 29.630714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351218, -0.133913, 0.926668,
		-0.301404, -0.953207, -0.023513,
		0.886454, -0.271043, -0.375146,
		32.226303, 33.120602, 29.518171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767525, 32.895752, 30.240742>,  <31.605783, 33.310333, 29.780773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767525, 32.895752, 30.240742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123814, 32.912880, 30.059729>,  <32.337585, 32.923157, 29.951120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.123814, 32.912880, 30.059729>,  <31.767525, 32.895752, 30.240742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123814, 32.912880, 30.059729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449602, -0.229503, 0.863242,
		-0.066896, -0.972365, -0.223674,
		0.890721, 0.042816, -0.452530,
		32.391029, 32.925724, 29.923969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211975, 32.442356, 30.578159>,  <31.767525, 32.895752, 30.240742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211975, 32.442356, 30.578159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497620, 32.670654, 30.416029>,  <32.669006, 32.807632, 30.318750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497620, 32.670654, 30.416029>,  <32.211975, 32.442356, 30.578159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497620, 32.670654, 30.416029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521739, -0.047903, 0.851759,
		0.466720, -0.819730, -0.331988,
		0.714116, 0.570744, -0.405327,
		32.711853, 32.841877, 30.294432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855156, 32.152966, 30.756296>,  <32.211975, 32.442356, 30.578159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855156, 32.152966, 30.756296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.971268, 32.528507, 30.682226>,  <33.040936, 32.753834, 30.637785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.971268, 32.528507, 30.682226>,  <32.855156, 32.152966, 30.756296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971268, 32.528507, 30.682226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502805, 0.015005, 0.864270,
		0.814202, -0.343985, -0.467705,
		0.290278, 0.938855, -0.185174,
		33.058350, 32.810165, 30.626675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627018, 32.068085, 30.717682>,  <32.855156, 32.152966, 30.756296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627018, 32.068085, 30.717682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486996, 32.430470, 30.812925>,  <33.402985, 32.647900, 30.870071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486996, 32.430470, 30.812925>,  <33.627018, 32.068085, 30.717682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486996, 32.430470, 30.812925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472657, -0.048631, 0.879904,
		0.808739, 0.420556, -0.411186,
		-0.350053, 0.905962, 0.238108,
		33.381981, 32.702259, 30.884357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142811, 32.354076, 31.181032>,  <33.627018, 32.068085, 30.717682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142811, 32.354076, 31.181032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817982, 32.577301, 31.249268>,  <33.623085, 32.711235, 31.290209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817982, 32.577301, 31.249268>,  <34.142811, 32.354076, 31.181032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817982, 32.577301, 31.249268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325457, 0.190480, 0.926172,
		0.484366, 0.807642, -0.336309,
		-0.812076, 0.558060, 0.170591,
		33.574360, 32.744720, 31.300446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732269, 32.690914, 30.758802>,  <34.142811, 32.354076, 31.181032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732269, 32.690914, 30.758802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110653, 32.815685, 30.723330>,  <35.337685, 32.890549, 30.702045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110653, 32.815685, 30.723330>,  <34.732269, 32.690914, 30.758802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110653, 32.815685, 30.723330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043807, -0.148042, -0.988010,
		-0.321315, 0.938502, -0.126377,
		0.945959, 0.311926, -0.088681,
		35.394440, 32.909264, 30.696726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709843, 33.287369, 30.299116>,  <34.732269, 32.690914, 30.758802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709843, 33.287369, 30.299116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062397, 33.099171, 30.282166>,  <35.273930, 32.986252, 30.271996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062397, 33.099171, 30.282166>,  <34.709843, 33.287369, 30.299116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062397, 33.099171, 30.282166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158071, -0.209199, -0.965013,
		0.445166, 0.857247, -0.258756,
		0.881386, -0.470492, -0.042377,
		35.326813, 32.958023, 30.269453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905361, 33.369335, 29.576351>,  <34.709843, 33.287369, 30.299116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905361, 33.369335, 29.576351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165169, 33.093758, 29.705027>,  <35.321053, 32.928410, 29.782232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165169, 33.093758, 29.705027>,  <34.905361, 33.369335, 29.576351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165169, 33.093758, 29.705027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002663, -0.421019, -0.907048,
		0.760342, 0.590001, -0.271625,
		0.649518, -0.688943, 0.321689,
		35.360023, 32.887074, 29.801533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585346, 33.392391, 29.145344>,  <34.905361, 33.369335, 29.576351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585346, 33.392391, 29.145344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.513409, 33.026089, 29.289038>,  <35.470245, 32.806309, 29.375254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.513409, 33.026089, 29.289038>,  <35.585346, 33.392391, 29.145344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513409, 33.026089, 29.289038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001083, -0.365003, -0.931006,
		0.983694, -0.167826, 0.064652,
		-0.179846, -0.915755, 0.359233,
		35.459454, 32.751362, 29.396809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080891, 32.903183, 28.687288>,  <35.585346, 33.392391, 29.145344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080891, 32.903183, 28.687288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808350, 32.676037, 28.872019>,  <35.644825, 32.539749, 28.982857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808350, 32.676037, 28.872019>,  <36.080891, 32.903183, 28.687288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808350, 32.676037, 28.872019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003570, -0.633520, -0.773718,
		0.731946, -0.525527, 0.433679,
		-0.681354, -0.567868, 0.461826,
		35.603943, 32.505676, 29.010567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342243, 32.256256, 28.683596>,  <36.080891, 32.903183, 28.687288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342243, 32.256256, 28.683596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950119, 32.186302, 28.720259>,  <35.714844, 32.144329, 28.742256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950119, 32.186302, 28.720259>,  <36.342243, 32.256256, 28.683596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950119, 32.186302, 28.720259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004728, -0.484865, -0.874576,
		0.197396, -0.856924, 0.476146,
		-0.980312, -0.174889, 0.091659,
		35.656025, 32.133835, 28.747757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230568, 31.517660, 28.650103>,  <36.342243, 32.256256, 28.683596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230568, 31.517660, 28.650103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876381, 31.679129, 28.558016>,  <35.663868, 31.776009, 28.502764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876381, 31.679129, 28.558016>,  <36.230568, 31.517660, 28.650103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876381, 31.679129, 28.558016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131607, -0.692961, -0.708862,
		-0.445678, -0.597375, 0.666719,
		-0.885467, 0.403669, -0.230218,
		35.610741, 31.800230, 28.488951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846355, 30.969360, 28.603729>,  <36.230568, 31.517660, 28.650103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846355, 30.969360, 28.603729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.608852, 31.238983, 28.427956>,  <35.466351, 31.400757, 28.322493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.608852, 31.238983, 28.427956>,  <35.846355, 30.969360, 28.603729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608852, 31.238983, 28.427956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404577, -0.722157, -0.561077,
		-0.695535, -0.155361, 0.701495,
		-0.593758, 0.674057, -0.439430,
		35.430725, 31.441200, 28.296125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143044, 30.653511, 28.552961>,  <35.846355, 30.969360, 28.603729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143044, 30.653511, 28.552961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179985, 30.933247, 28.269442>,  <35.202152, 31.101088, 28.099331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179985, 30.933247, 28.269442>,  <35.143044, 30.653511, 28.552961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179985, 30.933247, 28.269442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473390, -0.595409, -0.649146,
		-0.875998, 0.395492, 0.276069,
		0.092359, 0.699339, -0.708799,
		35.207691, 31.143047, 28.056803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472141, 30.682735, 28.190058>,  <35.143044, 30.653511, 28.552961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472141, 30.682735, 28.190058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744083, 30.828354, 27.935413>,  <34.907249, 30.915726, 27.782627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744083, 30.828354, 27.935413>,  <34.472141, 30.682735, 28.190058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744083, 30.828354, 27.935413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497805, -0.408356, -0.765138,
		-0.538508, 0.837088, -0.096398,
		0.679853, 0.364045, -0.636609,
		34.948040, 30.937567, 27.744431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073959, 30.905331, 27.611984>,  <34.472141, 30.682735, 28.190058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073959, 30.905331, 27.611984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451519, 30.861765, 27.487284>,  <34.678055, 30.835625, 27.412462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451519, 30.861765, 27.487284>,  <34.073959, 30.905331, 27.611984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451519, 30.861765, 27.487284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329309, -0.380904, -0.863983,
		-0.024649, 0.918178, -0.395402,
		0.943900, -0.108914, -0.311753,
		34.734688, 30.829090, 27.393757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121155, 31.101120, 26.888676>,  <34.073959, 30.905331, 27.611984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121155, 31.101120, 26.888676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456188, 30.887295, 26.933731>,  <34.657207, 30.758999, 26.960764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456188, 30.887295, 26.933731>,  <34.121155, 31.101120, 26.888676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456188, 30.887295, 26.933731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266551, -0.579867, -0.769873,
		0.476862, 0.614812, -0.628179,
		0.837588, -0.534565, 0.112638,
		34.707466, 30.726925, 26.967522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652309, 31.084154, 26.267406>,  <34.121155, 31.101120, 26.888676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652309, 31.084154, 26.267406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641499, 30.746561, 26.481682>,  <34.635014, 30.544004, 26.610247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641499, 30.746561, 26.481682>,  <34.652309, 31.084154, 26.267406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641499, 30.746561, 26.481682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138350, -0.527568, -0.838171,
		0.990014, -0.096765, -0.102507,
		-0.027026, -0.843984, 0.535687,
		34.633392, 30.493366, 26.642387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241413, 30.649218, 26.084167>,  <34.652309, 31.084154, 26.267406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241413, 30.649218, 26.084167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946014, 30.415306, 26.218422>,  <34.768776, 30.274960, 26.298975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946014, 30.415306, 26.218422>,  <35.241413, 30.649218, 26.084167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946014, 30.415306, 26.218422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049760, -0.449163, -0.892063,
		0.672414, -0.675490, 0.302609,
		-0.738500, -0.584778, 0.335636,
		34.724464, 30.239872, 26.319113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365051, 29.943439, 25.774605>,  <35.241413, 30.649218, 26.084167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365051, 29.943439, 25.774605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981808, 29.952753, 25.888781>,  <34.751862, 29.958342, 25.957287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981808, 29.952753, 25.888781>,  <35.365051, 29.943439, 25.774605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981808, 29.952753, 25.888781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249256, -0.558620, -0.791085,
		0.141034, -0.829097, 0.541025,
		-0.958113, 0.023284, 0.285442,
		34.694374, 29.959738, 25.974413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176304, 29.312191, 25.629530>,  <35.365051, 29.943439, 25.774605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176304, 29.312191, 25.629530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825790, 29.501236, 25.666986>,  <34.615482, 29.614662, 25.689461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825790, 29.501236, 25.666986>,  <35.176304, 29.312191, 25.629530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825790, 29.501236, 25.666986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373194, -0.542881, -0.752334,
		-0.304724, -0.694204, 0.652092,
		-0.876282, 0.472611, 0.093644,
		34.562904, 29.643019, 25.695080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650753, 28.775621, 25.480198>,  <35.176304, 29.312191, 25.629530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650753, 28.775621, 25.480198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438171, 29.111193, 25.433279>,  <34.310623, 29.312534, 25.405127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438171, 29.111193, 25.433279>,  <34.650753, 28.775621, 25.480198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438171, 29.111193, 25.433279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412789, -0.377404, -0.828958,
		-0.739705, -0.392132, 0.546872,
		-0.531453, 0.838927, -0.117300,
		34.278736, 29.362871, 25.398088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885643, 28.648449, 25.319475>,  <34.650753, 28.775621, 25.480198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885643, 28.648449, 25.319475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.939140, 29.028791, 25.207767>,  <33.971237, 29.256996, 25.140743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.939140, 29.028791, 25.207767>,  <33.885643, 28.648449, 25.319475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939140, 29.028791, 25.207767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310067, -0.227502, -0.923093,
		-0.941261, 0.210045, 0.264403,
		0.133739, 0.950854, -0.279267,
		33.979263, 29.314047, 25.123987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.181057, 29.002623, 25.138895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495968, 29.163198, 24.951691>,  <33.684914, 29.259544, 24.839367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495968, 29.163198, 24.951691>,  <33.181057, 29.002623, 25.138895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495968, 29.163198, 24.951691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511959, 0.002564, -0.859006,
		-0.343641, 0.915881, 0.207540,
		0.787279, 0.401442, -0.468013,
		33.732151, 29.283630, 24.811287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903343, 29.513103, 24.600851>,  <33.181057, 29.002623, 25.138895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903343, 29.513103, 24.600851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281036, 29.429684, 24.498920>,  <33.507652, 29.379631, 24.437761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281036, 29.429684, 24.498920>,  <32.903343, 29.513103, 24.600851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281036, 29.429684, 24.498920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242972, 0.081052, -0.966641,
		0.222246, 0.974648, 0.025860,
		0.944231, -0.208549, -0.254826,
		33.564304, 29.367119, 24.422472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096336, 30.029308, 24.071484>,  <32.903343, 29.513103, 24.600851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096336, 30.029308, 24.071484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388309, 29.764610, 24.003017>,  <33.563492, 29.605791, 23.961939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388309, 29.764610, 24.003017>,  <33.096336, 30.029308, 24.071484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388309, 29.764610, 24.003017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183600, 0.051392, -0.981657,
		0.658402, 0.747966, -0.083984,
		0.729930, -0.661745, -0.171163,
		33.607288, 29.566088, 23.951668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472317, 30.277555, 23.520826>,  <33.096336, 30.029308, 24.071484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472317, 30.277555, 23.520826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567356, 29.889053, 23.514975>,  <33.624378, 29.655952, 23.511463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567356, 29.889053, 23.514975>,  <33.472317, 30.277555, 23.520826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567356, 29.889053, 23.514975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030374, 0.007624, -0.999509,
		0.970888, 0.237926, -0.027690,
		0.237598, -0.971253, -0.014629,
		33.638634, 29.597677, 23.510586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981190, 30.170267, 22.898872>,  <33.472317, 30.277555, 23.520826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981190, 30.170267, 22.898872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847343, 29.800430, 22.971712>,  <33.767036, 29.578527, 23.015417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847343, 29.800430, 22.971712>,  <33.981190, 30.170267, 22.898872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847343, 29.800430, 22.971712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037036, -0.205994, -0.977852,
		0.941626, -0.320463, 0.103172,
		-0.334619, -0.924592, 0.182100,
		33.746960, 29.523052, 23.026342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334713, 29.890457, 22.338655>,  <33.981190, 30.170267, 22.898872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334713, 29.890457, 22.338655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089684, 29.589558, 22.435717>,  <33.942665, 29.409018, 22.493954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089684, 29.589558, 22.435717>,  <34.334713, 29.890457, 22.338655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089684, 29.589558, 22.435717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130487, -0.206538, -0.969699,
		0.779571, -0.625672, 0.028360,
		-0.612571, -0.752248, 0.242653,
		33.905910, 29.363884, 22.508512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449242, 29.210484, 21.879519>,  <34.334713, 29.890457, 22.338655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449242, 29.210484, 21.879519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074543, 29.176811, 22.015417>,  <33.849724, 29.156609, 22.096956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074543, 29.176811, 22.015417>,  <34.449242, 29.210484, 21.879519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074543, 29.176811, 22.015417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324332, -0.156232, -0.932952,
		0.131613, -0.984127, 0.119048,
		-0.936742, -0.084178, 0.339746,
		33.793522, 29.151558, 22.117340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148861, 28.535835, 21.754486>,  <34.449242, 29.210484, 21.879519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148861, 28.535835, 21.754486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815861, 28.753286, 21.797211>,  <33.616058, 28.883757, 21.822845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815861, 28.753286, 21.797211>,  <34.148861, 28.535835, 21.754486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815861, 28.753286, 21.797211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207461, -0.127126, -0.969948,
		-0.513711, -0.829644, 0.218614,
		-0.832503, 0.543627, 0.106812,
		33.566109, 28.916374, 21.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660950, 28.212343, 21.363815>,  <34.148861, 28.535835, 21.754486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660950, 28.212343, 21.363815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500832, 28.576784, 21.403124>,  <33.404762, 28.795448, 21.426708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500832, 28.576784, 21.403124>,  <33.660950, 28.212343, 21.363815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500832, 28.576784, 21.403124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183184, 0.025516, -0.982748,
		-0.897893, -0.411386, 0.156686,
		-0.400291, 0.911104, 0.098270,
		33.380745, 28.850115, 21.432606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974792, 28.168028, 20.952631>,  <33.660950, 28.212343, 21.363815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974792, 28.168028, 20.952631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050541, 28.559595, 20.983232>,  <33.095989, 28.794537, 21.001593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050541, 28.559595, 20.983232>,  <32.974792, 28.168028, 20.952631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050541, 28.559595, 20.983232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279136, 0.128370, -0.951632,
		-0.941392, 0.158861, 0.297562,
		0.189376, 0.978920, 0.076503,
		33.107353, 28.853271, 21.006184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338329, 28.486225, 20.804461>,  <32.974792, 28.168028, 20.952631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338329, 28.486225, 20.804461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637260, 28.745033, 20.743973>,  <32.816620, 28.900318, 20.707680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637260, 28.745033, 20.743973>,  <32.338329, 28.486225, 20.804461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637260, 28.745033, 20.743973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201739, 0.004107, -0.979431,
		-0.633092, 0.762461, 0.133598,
		0.747326, 0.647021, -0.151218,
		32.861458, 28.939140, 20.698606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103607, 28.718580, 20.250624>,  <32.338329, 28.486225, 20.804461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103607, 28.718580, 20.250624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466995, 28.883598, 20.277401>,  <32.685028, 28.982609, 20.293467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466995, 28.883598, 20.277401>,  <32.103607, 28.718580, 20.250624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466995, 28.883598, 20.277401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000431, 0.159243, -0.987239,
		-0.417941, 0.896910, 0.144490,
		0.908474, 0.412545, 0.066941,
		32.739536, 29.007362, 20.297483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118896, 29.510187, 20.055975>,  <32.103607, 28.718580, 20.250624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118896, 29.510187, 20.055975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472130, 29.333725, 19.992033>,  <32.684071, 29.227848, 19.953667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472130, 29.333725, 19.992033>,  <32.118896, 29.510187, 20.055975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472130, 29.333725, 19.992033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128944, 0.099410, -0.986656,
		0.451159, 0.891908, 0.030903,
		0.883079, -0.441154, -0.159856,
		32.737053, 29.201378, 19.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594990, 29.960329, 19.621704>,  <32.118896, 29.510187, 20.055975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594990, 29.960329, 19.621704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721653, 29.583252, 19.579645>,  <32.797649, 29.357006, 19.554409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721653, 29.583252, 19.579645>,  <32.594990, 29.960329, 19.621704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721653, 29.583252, 19.579645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096832, 0.078147, -0.992228,
		0.943584, 0.324379, -0.066536,
		0.316658, -0.942694, -0.105149,
		32.816650, 29.300444, 19.548101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008568, 29.984308, 19.070646>,  <32.594990, 29.960329, 19.621704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008568, 29.984308, 19.070646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935413, 29.591850, 19.095659>,  <32.891521, 29.356375, 19.110666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935413, 29.591850, 19.095659>,  <33.008568, 29.984308, 19.070646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935413, 29.591850, 19.095659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106185, -0.043521, -0.993394,
		0.977384, -0.188313, -0.096224,
		-0.182881, -0.981144, 0.062533,
		32.880550, 29.297506, 19.114420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351185, 29.702284, 18.449493>,  <33.008568, 29.984308, 19.070646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351185, 29.702284, 18.449493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124535, 29.393318, 18.564257>,  <32.988544, 29.207939, 18.633116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124535, 29.393318, 18.564257>,  <33.351185, 29.702284, 18.449493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124535, 29.393318, 18.564257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081481, -0.293969, -0.952336,
		0.819939, -0.562993, 0.103633,
		-0.566623, -0.772413, 0.286909,
		32.954548, 29.161594, 18.650330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568779, 29.175825, 17.978886>,  <33.351185, 29.702284, 18.449493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568779, 29.175825, 17.978886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219368, 29.043215, 18.121458>,  <33.009720, 28.963650, 18.207001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219368, 29.043215, 18.121458>,  <33.568779, 29.175825, 17.978886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219368, 29.043215, 18.121458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253259, -0.315788, -0.914406,
		0.415703, -0.889027, 0.191888,
		-0.873527, -0.331524, 0.356429,
		32.957310, 28.943758, 18.228386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564453, 28.474747, 17.701195>,  <33.568779, 29.175825, 17.978886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564453, 28.474747, 17.701195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.186329, 28.568108, 17.792326>,  <32.959454, 28.624125, 17.847006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.186329, 28.568108, 17.792326>,  <33.564453, 28.474747, 17.701195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186329, 28.568108, 17.792326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304213, -0.379025, -0.873954,
		-0.117628, -0.895469, 0.429301,
		-0.945313, 0.233401, 0.227830,
		32.902737, 28.638128, 17.860674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143089, 27.907185, 17.517115>,  <33.564453, 28.474747, 17.701195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143089, 27.907185, 17.517115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883953, 28.211840, 17.522871>,  <32.728470, 28.394632, 17.526325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883953, 28.211840, 17.522871>,  <33.143089, 27.907185, 17.517115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883953, 28.211840, 17.522871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316203, -0.251678, -0.914699,
		-0.693049, -0.597130, 0.403880,
		-0.647842, 0.761639, 0.014389,
		32.689602, 28.440331, 17.527187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413452, 27.662420, 17.152544>,  <33.143089, 27.907185, 17.517115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413452, 27.662420, 17.152544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444595, 28.060728, 17.133030>,  <32.463284, 28.299713, 17.121321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444595, 28.060728, 17.133030>,  <32.413452, 27.662420, 17.152544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444595, 28.060728, 17.133030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343117, -0.019182, -0.939097,
		-0.936060, 0.089859, 0.340172,
		0.077861, 0.995770, -0.048787,
		32.467953, 28.359459, 17.118393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850170, 27.892021, 16.970881>,  <32.413452, 27.662420, 17.152544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850170, 27.892021, 16.970881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079418, 28.195993, 16.848219>,  <32.216969, 28.378376, 16.774622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079418, 28.195993, 16.848219>,  <31.850170, 27.892021, 16.970881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079418, 28.195993, 16.848219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372653, -0.091588, -0.923440,
		-0.729836, 0.643520, 0.230699,
		0.573122, 0.759930, -0.306654,
		32.251354, 28.423973, 16.756224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503027, 28.178715, 16.466946>,  <31.850170, 27.892021, 16.970881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503027, 28.178715, 16.466946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875774, 28.312084, 16.409740>,  <32.099422, 28.392105, 16.375418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875774, 28.312084, 16.409740>,  <31.503027, 28.178715, 16.466946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875774, 28.312084, 16.409740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077011, -0.203421, -0.976058,
		-0.354531, 0.920570, -0.163884,
		0.931867, 0.333422, -0.143013,
		32.155334, 28.412111, 16.366837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155897, 28.398397, 17.040165>,  <31.503027, 28.178715, 16.466946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155897, 28.398397, 17.040165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135670, 28.029057, 16.887922>,  <31.123533, 27.807451, 16.796577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135670, 28.029057, 16.887922>,  <31.155897, 28.398397, 17.040165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135670, 28.029057, 16.887922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998365, 0.036566, 0.043935,
		-0.026650, 0.382205, -0.923693,
		-0.050568, -0.923354, -0.380605,
		31.120499, 27.752050, 16.773741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282051, 28.993391, 16.596931>,  <31.155897, 28.398397, 17.040165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282051, 28.993391, 16.596931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.509773, 29.285114, 16.748722>,  <31.646406, 29.460148, 16.839796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.509773, 29.285114, 16.748722>,  <31.282051, 28.993391, 16.596931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509773, 29.285114, 16.748722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814579, -0.437996, -0.380289,
		-0.111138, 0.525614, -0.843432,
		0.569305, 0.729307, 0.379476,
		31.680565, 29.503906, 16.862564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757847, 29.478279, 16.378569>,  <31.282051, 28.993391, 16.596931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757847, 29.478279, 16.378569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486431, 29.736956, 16.239214>,  <30.323582, 29.892162, 16.155602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486431, 29.736956, 16.239214>,  <30.757847, 29.478279, 16.378569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486431, 29.736956, 16.239214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136806, 0.354725, 0.924908,
		0.721711, 0.675249, -0.152224,
		-0.678540, 0.646691, -0.348387,
		30.282869, 29.930964, 16.134697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009302, 30.097721, 16.597872>,  <30.757847, 29.478279, 16.378569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009302, 30.097721, 16.597872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612486, 30.100660, 16.547598>,  <30.374395, 30.102425, 16.517433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612486, 30.100660, 16.547598>,  <31.009302, 30.097721, 16.597872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612486, 30.100660, 16.547598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111433, 0.413383, 0.903713,
		0.058598, 0.910528, -0.409275,
		-0.992043, 0.007349, -0.125687,
		30.314873, 30.102865, 16.509892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741306, 30.743818, 16.572386>,  <31.009302, 30.097721, 16.597872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741306, 30.743818, 16.572386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435352, 30.514603, 16.690081>,  <30.251780, 30.377073, 16.760698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435352, 30.514603, 16.690081>,  <30.741306, 30.743818, 16.572386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435352, 30.514603, 16.690081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022376, 0.432864, 0.901181,
		-0.643775, 0.695886, -0.318270,
		-0.764887, -0.573037, 0.294238,
		30.205887, 30.342691, 16.778353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285110, 31.179949, 16.871538>,  <30.741306, 30.743818, 16.572386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285110, 31.179949, 16.871538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151579, 30.832060, 17.016945>,  <30.071461, 30.623327, 17.104189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151579, 30.832060, 17.016945>,  <30.285110, 31.179949, 16.871538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151579, 30.832060, 17.016945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172164, 0.322897, 0.930643,
		-0.926778, 0.373260, 0.041942,
		-0.333829, -0.869721, 0.363516,
		30.051430, 30.571144, 17.125999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698566, 31.380455, 17.412903>,  <30.285110, 31.179949, 16.871538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698566, 31.380455, 17.412903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859171, 31.018318, 17.468254>,  <29.955534, 30.801037, 17.501465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859171, 31.018318, 17.468254>,  <29.698566, 31.380455, 17.412903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859171, 31.018318, 17.468254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186485, 0.228745, 0.955458,
		-0.896668, -0.357820, 0.260676,
		0.401510, -0.905340, 0.138380,
		29.979624, 30.746716, 17.509768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327824, 30.997042, 17.992115>,  <29.698566, 31.380455, 17.412903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327824, 30.997042, 17.992115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701519, 30.859827, 17.953075>,  <29.925735, 30.777498, 17.929651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701519, 30.859827, 17.953075>,  <29.327824, 30.997042, 17.992115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701519, 30.859827, 17.953075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187675, 0.240140, 0.952424,
		-0.303278, -0.908107, 0.288728,
		0.934238, -0.343036, -0.097600,
		29.981791, 30.756916, 17.923796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403357, 30.727562, 18.656248>,  <29.327824, 30.997042, 17.992115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403357, 30.727562, 18.656248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772282, 30.712349, 18.502422>,  <29.993637, 30.703220, 18.410128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772282, 30.712349, 18.502422>,  <29.403357, 30.727562, 18.656248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772282, 30.712349, 18.502422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384933, 0.002655, 0.922941,
		-0.034082, -0.999273, 0.017090,
		0.922315, -0.038034, -0.384563,
		30.048977, 30.700939, 18.387053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742685, 30.204834, 18.833712>,  <29.403357, 30.727562, 18.656248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742685, 30.204834, 18.833712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051754, 30.436611, 18.729998>,  <30.237194, 30.575678, 18.667770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051754, 30.436611, 18.729998>,  <29.742685, 30.204834, 18.833712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051754, 30.436611, 18.729998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303042, 0.022216, 0.952718,
		0.557805, -0.814710, -0.158430,
		0.772670, 0.579442, -0.259283,
		30.283554, 30.610443, 18.652212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361790, 29.803587, 19.011726>,  <29.742685, 30.204834, 18.833712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361790, 29.803587, 19.011726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442705, 30.195253, 19.004625>,  <30.491255, 30.430254, 19.000364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442705, 30.195253, 19.004625>,  <30.361790, 29.803587, 19.011726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442705, 30.195253, 19.004625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287492, -0.042045, 0.956860,
		0.936177, -0.198664, -0.290008,
		0.202287, 0.979165, -0.017752,
		30.503391, 30.489002, 18.999300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957907, 29.904760, 19.462526>,  <30.361790, 29.803587, 19.011726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957907, 29.904760, 19.462526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871521, 30.295286, 19.457315>,  <30.819689, 30.529602, 19.454189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871521, 30.295286, 19.457315>,  <30.957907, 29.904760, 19.462526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871521, 30.295286, 19.457315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439060, 0.109023, 0.891819,
		0.872116, 0.186880, -0.452206,
		-0.215964, 0.976314, -0.013029,
		30.806732, 30.588181, 19.453407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449020, 30.139902, 19.979021>,  <30.957907, 29.904760, 19.462526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449020, 30.139902, 19.979021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249912, 30.474171, 19.886173>,  <31.130447, 30.674732, 19.830465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249912, 30.474171, 19.886173>,  <31.449020, 30.139902, 19.979021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249912, 30.474171, 19.886173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241464, 0.390577, 0.888338,
		0.833019, 0.386140, -0.396202,
		-0.497770, 0.835671, -0.232119,
		31.100582, 30.724873, 19.816538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849470, 30.830534, 20.117323>,  <31.449020, 30.139902, 19.979021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849470, 30.830534, 20.117323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451651, 30.859247, 20.147573>,  <31.212959, 30.876476, 20.165724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451651, 30.859247, 20.147573>,  <31.849470, 30.830534, 20.117323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451651, 30.859247, 20.147573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090268, 0.229714, 0.969063,
		0.052191, 0.970607, -0.234942,
		-0.994549, 0.071784, 0.075626,
		31.153286, 30.880783, 20.170261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656376, 31.515507, 20.465134>,  <31.849470, 30.830534, 20.117323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656376, 31.515507, 20.465134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353365, 31.259443, 20.516285>,  <31.171558, 31.105806, 20.546976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353365, 31.259443, 20.516285>,  <31.656376, 31.515507, 20.465134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353365, 31.259443, 20.516285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090768, 0.090703, 0.991733,
		-0.646464, 0.762871, -0.010604,
		-0.757526, -0.640157, 0.127880,
		31.126106, 31.067396, 20.554649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388638, 31.737751, 21.093458>,  <31.656376, 31.515507, 20.465134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388638, 31.737751, 21.093458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243788, 31.367636, 21.048357>,  <31.156878, 31.145567, 21.021297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243788, 31.367636, 21.048357>,  <31.388638, 31.737751, 21.093458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243788, 31.367636, 21.048357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162284, -0.181696, 0.969872,
		-0.917895, 0.332914, 0.215955,
		-0.362122, -0.925286, -0.112751,
		31.135151, 31.090050, 21.014532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862244, 31.667551, 21.593895>,  <31.388638, 31.737751, 21.093458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862244, 31.667551, 21.593895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951113, 31.284605, 21.520044>,  <31.004435, 31.054836, 21.475735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951113, 31.284605, 21.520044>,  <30.862244, 31.667551, 21.593895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951113, 31.284605, 21.520044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002285, -0.189868, 0.981807,
		-0.975004, -0.217710, -0.044371,
		0.222174, -0.957367, -0.184625,
		31.017765, 30.997395, 21.464657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646719, 31.265812, 22.182520>,  <30.862244, 31.667551, 21.593895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646719, 31.265812, 22.182520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870329, 30.987656, 22.001886>,  <31.004494, 30.820763, 21.893507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870329, 30.987656, 22.001886>,  <30.646719, 31.265812, 22.182520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870329, 30.987656, 22.001886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007331, -0.540464, 0.841335,
		-0.829120, -0.473636, -0.297033,
		0.559022, -0.695390, -0.451582,
		31.038036, 30.779039, 21.866411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299145, 30.676487, 22.258886>,  <30.646719, 31.265812, 22.182520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299145, 30.676487, 22.258886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.690710, 30.599840, 22.230572>,  <30.925650, 30.553852, 22.213583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.690710, 30.599840, 22.230572>,  <30.299145, 30.676487, 22.258886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690710, 30.599840, 22.230572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001490, -0.353208, 0.935543,
		-0.204267, -0.915711, -0.346046,
		0.978914, -0.191616, -0.070785,
		30.984385, 30.542355, 22.209337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404140, 30.023548, 22.689817>,  <30.299145, 30.676487, 22.258886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404140, 30.023548, 22.689817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.749958, 30.214912, 22.628256>,  <30.957449, 30.329731, 22.591320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.749958, 30.214912, 22.628256>,  <30.404140, 30.023548, 22.689817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749958, 30.214912, 22.628256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163275, 0.022241, 0.986330,
		0.475294, -0.877854, -0.058884,
		0.864545, 0.478411, -0.153902,
		31.009321, 30.358437, 22.582085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942251, 29.656343, 22.985262>,  <30.404140, 30.023548, 22.689817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942251, 29.656343, 22.985262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107990, 30.019711, 22.963007>,  <31.207434, 30.237730, 22.949654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107990, 30.019711, 22.963007>,  <30.942251, 29.656343, 22.985262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107990, 30.019711, 22.963007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187039, -0.025165, 0.982030,
		0.890691, -0.417310, -0.180336,
		0.414349, 0.908415, -0.055639,
		31.232296, 30.292234, 22.946316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482647, 29.598904, 23.465328>,  <30.942251, 29.656343, 22.985262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482647, 29.598904, 23.465328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.440212, 29.993227, 23.413280>,  <31.414751, 30.229820, 23.382051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.440212, 29.993227, 23.413280>,  <31.482647, 29.598904, 23.465328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440212, 29.993227, 23.413280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261237, 0.153890, 0.952929,
		0.959427, 0.067101, -0.273855,
		-0.106086, 0.985807, -0.130117,
		31.408386, 30.288969, 23.374245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.817032, 29.996725, 27.050985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.502113, 30.237587, 26.997961>,  <35.313160, 30.382105, 26.966146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.502113, 30.237587, 26.997961>,  <35.817032, 29.996725, 27.050985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502113, 30.237587, 26.997961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410556, 0.672378, 0.615915,
		0.460005, 0.430486, -0.776581,
		-0.787298, 0.602154, -0.132559,
		35.265923, 30.418234, 26.958193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916153, 30.718603, 26.870451>,  <35.817032, 29.996725, 27.050985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916153, 30.718603, 26.870451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558475, 30.747223, 27.047224>,  <35.343868, 30.764395, 27.153288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558475, 30.747223, 27.047224>,  <35.916153, 30.718603, 26.870451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558475, 30.747223, 27.047224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320019, 0.792471, 0.519209,
		-0.313068, 0.605699, -0.731518,
		-0.894191, 0.071552, 0.441932,
		35.290218, 30.768688, 27.179804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790859, 31.383520, 26.855417>,  <35.916153, 30.718603, 26.870451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790859, 31.383520, 26.855417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537930, 31.236538, 27.128222>,  <35.386169, 31.148348, 27.291904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537930, 31.236538, 27.128222>,  <35.790859, 31.383520, 26.855417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537930, 31.236538, 27.128222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009926, 0.884124, 0.467147,
		-0.774638, 0.288620, -0.562702,
		-0.632327, -0.367455, 0.682012,
		35.348232, 31.126301, 27.332825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404137, 31.948231, 27.102667>,  <35.790859, 31.383520, 26.855417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404137, 31.948231, 27.102667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.347797, 31.695393, 27.407461>,  <35.313995, 31.543690, 27.590338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.347797, 31.695393, 27.407461>,  <35.404137, 31.948231, 27.102667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347797, 31.695393, 27.407461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164159, 0.744092, 0.647595,
		-0.976327, 0.216299, -0.001039,
		-0.140847, -0.632094, 0.761984,
		35.305542, 31.505764, 27.636057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885563, 32.313534, 27.581108>,  <35.404137, 31.948231, 27.102667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885563, 32.313534, 27.581108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.076149, 32.034264, 27.794846>,  <35.190502, 31.866701, 27.923088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.076149, 32.034264, 27.794846>,  <34.885563, 32.313534, 27.581108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076149, 32.034264, 27.794846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024474, 0.597000, 0.801868,
		-0.878852, -0.395141, 0.267363,
		0.476466, -0.698180, 0.534346,
		35.219090, 31.824810, 27.955149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409801, 32.151897, 28.178299>,  <34.885563, 32.313534, 27.581108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409801, 32.151897, 28.178299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.792770, 32.072750, 28.262383>,  <35.022552, 32.025261, 28.312832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.792770, 32.072750, 28.262383>,  <34.409801, 32.151897, 28.178299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792770, 32.072750, 28.262383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070346, 0.546305, 0.834627,
		-0.279984, -0.813879, 0.509127,
		0.957424, -0.197867, 0.210210,
		35.079998, 32.013390, 28.325445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384914, 31.997915, 28.990965>,  <34.409801, 32.151897, 28.178299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384914, 31.997915, 28.990965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.771736, 32.048954, 28.902847>,  <35.003830, 32.079578, 28.849977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.771736, 32.048954, 28.902847>,  <34.384914, 31.997915, 28.990965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771736, 32.048954, 28.902847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118051, 0.541904, 0.832108,
		0.225553, -0.830698, 0.508986,
		0.967052, 0.127598, -0.220292,
		35.061852, 32.087234, 28.836760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681564, 31.787008, 29.591021>,  <34.384914, 31.997915, 28.990965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681564, 31.787008, 29.591021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964115, 32.010849, 29.417641>,  <35.133644, 32.145153, 29.313612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964115, 32.010849, 29.417641>,  <34.681564, 31.787008, 29.591021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964115, 32.010849, 29.417641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196220, 0.433552, 0.879506,
		0.680095, -0.706314, 0.196445,
		0.706377, 0.559601, -0.433450,
		35.176029, 32.178730, 29.287605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386093, 31.624792, 30.021400>,  <34.681564, 31.787008, 29.591021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386093, 31.624792, 30.021400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.395718, 31.969519, 29.818741>,  <35.401493, 32.176353, 29.697145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.395718, 31.969519, 29.818741>,  <35.386093, 31.624792, 30.021400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395718, 31.969519, 29.818741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130940, 0.499713, 0.856237,
		0.991098, -0.086939, -0.100824,
		0.024057, 0.861817, -0.506648,
		35.402935, 32.228065, 29.666746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993767, 31.894478, 30.283060>,  <35.386093, 31.624792, 30.021400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993767, 31.894478, 30.283060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813450, 32.216595, 30.129026>,  <35.705261, 32.409866, 30.036606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813450, 32.216595, 30.129026>,  <35.993767, 31.894478, 30.283060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813450, 32.216595, 30.129026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130938, 0.486396, 0.863872,
		0.882974, 0.339002, -0.324706,
		-0.450790, 0.805293, -0.385086,
		35.678211, 32.458183, 30.013500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476994, 32.366707, 30.346729>,  <35.993767, 31.894478, 30.283060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476994, 32.366707, 30.346729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.129978, 32.562771, 30.312986>,  <35.921768, 32.680408, 30.292740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.129978, 32.562771, 30.312986>,  <36.476994, 32.366707, 30.346729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129978, 32.562771, 30.312986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166834, 0.446572, 0.879056,
		0.468551, 0.748543, -0.469195,
		-0.867541, 0.490160, -0.084359,
		35.869717, 32.709820, 30.287678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661652, 33.043976, 30.408720>,  <36.476994, 32.366707, 30.346729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661652, 33.043976, 30.408720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279900, 32.990158, 30.515341>,  <36.050846, 32.957867, 30.579313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279900, 32.990158, 30.515341>,  <36.661652, 33.043976, 30.408720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279900, 32.990158, 30.515341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227530, 0.250346, 0.941040,
		-0.193345, 0.958761, -0.208312,
		-0.954383, -0.134549, 0.266550,
		35.993584, 32.949795, 30.595306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224072, 33.708469, 30.634520>,  <36.661652, 33.043976, 30.408720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224072, 33.708469, 30.634520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.084969, 33.379665, 30.814905>,  <36.001507, 33.182384, 30.923136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.084969, 33.379665, 30.814905>,  <36.224072, 33.708469, 30.634520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084969, 33.379665, 30.814905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255193, 0.379838, 0.889156,
		-0.902187, 0.424292, 0.077680,
		-0.347756, -0.822009, 0.450962,
		35.980640, 33.133064, 30.950193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912498, 33.985565, 31.234064>,  <36.224072, 33.708469, 30.634520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912498, 33.985565, 31.234064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015137, 33.599716, 31.258272>,  <36.076721, 33.368206, 31.272797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015137, 33.599716, 31.258272>,  <35.912498, 33.985565, 31.234064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015137, 33.599716, 31.258272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202743, 0.114944, 0.972463,
		-0.945015, -0.237263, 0.225064,
		0.256599, -0.964621, 0.060520,
		36.092117, 33.310329, 31.276428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946308, 34.430157, 31.850506>,  <35.912498, 33.985565, 31.234064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946308, 34.430157, 31.850506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251709, 34.562042, 31.628389>,  <36.434952, 34.641174, 31.495119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251709, 34.562042, 31.628389>,  <35.946308, 34.430157, 31.850506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251709, 34.562042, 31.628389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580860, -0.025183, -0.813614,
		-0.282244, 0.943745, 0.172290,
		0.763505, 0.329714, -0.555292,
		36.480759, 34.660957, 31.461802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654655, 34.765491, 31.330404>,  <35.946308, 34.430157, 31.850506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654655, 34.765491, 31.330404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020184, 34.731525, 31.171545>,  <36.239498, 34.711143, 31.076229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020184, 34.731525, 31.171545>,  <35.654655, 34.765491, 31.330404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020184, 34.731525, 31.171545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385186, 0.128721, -0.913818,
		0.128721, 0.988038, 0.084918,
		0.913818, -0.084918, -0.397148,
		36.294331, 34.706051, 31.052401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616692, 35.327904, 30.831783>,  <35.654655, 34.765491, 31.330404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616692, 35.327904, 30.831783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.888958, 35.061317, 30.710112>,  <36.052319, 34.901367, 30.637108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.888958, 35.061317, 30.710112>,  <35.616692, 35.327904, 30.831783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888958, 35.061317, 30.710112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314811, 0.108828, -0.942895,
		0.661506, 0.737554, -0.135734,
		0.680664, -0.666461, -0.304180,
		36.093159, 34.861378, 30.618858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933380, 35.649586, 30.252151>,  <35.616692, 35.327904, 30.831783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933380, 35.649586, 30.252151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053024, 35.271233, 30.201822>,  <36.124809, 35.044220, 30.171625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053024, 35.271233, 30.201822>,  <35.933380, 35.649586, 30.252151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053024, 35.271233, 30.201822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102981, 0.099093, -0.989735,
		0.948646, 0.308995, -0.067769,
		0.299108, -0.945887, -0.125825,
		36.142757, 34.987465, 30.164074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490738, 35.613823, 29.760164>,  <35.933380, 35.649586, 30.252151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490738, 35.613823, 29.760164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331146, 35.247215, 29.748816>,  <36.235394, 35.027248, 29.742006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331146, 35.247215, 29.748816>,  <36.490738, 35.613823, 29.760164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331146, 35.247215, 29.748816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108163, 0.077765, -0.991087,
		0.910559, -0.392352, -0.130160,
		-0.398977, -0.916522, -0.028372,
		36.211452, 34.972260, 29.740305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734100, 35.215038, 29.089182>,  <36.490738, 35.613823, 29.760164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734100, 35.215038, 29.089182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.396523, 35.033791, 29.204033>,  <36.193977, 34.925041, 29.272943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.396523, 35.033791, 29.204033>,  <36.734100, 35.215038, 29.089182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396523, 35.033791, 29.204033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317314, -0.009887, -0.948269,
		0.432520, -0.891394, -0.135438,
		-0.843942, -0.453121, 0.287128,
		36.143341, 34.897854, 29.290171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606922, 34.758991, 28.616644>,  <36.734100, 35.215038, 29.089182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606922, 34.758991, 28.616644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.245178, 34.791687, 28.784193>,  <36.028133, 34.811306, 28.884724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.245178, 34.791687, 28.784193>,  <36.606922, 34.758991, 28.616644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245178, 34.791687, 28.784193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420953, -0.009278, -0.907035,
		-0.070260, -0.996610, 0.042802,
		-0.904357, 0.081746, 0.418874,
		35.973869, 34.816208, 28.909855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291096, 34.158428, 28.377815>,  <36.606922, 34.758991, 28.616644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291096, 34.158428, 28.377815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020718, 34.429302, 28.494108>,  <35.858490, 34.591827, 28.563885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020718, 34.429302, 28.494108>,  <36.291096, 34.158428, 28.377815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020718, 34.429302, 28.494108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406433, -0.013466, -0.913581,
		-0.614745, -0.735693, 0.284332,
		-0.675944, 0.677181, 0.290731,
		35.817936, 34.632458, 28.581327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709953, 34.050571, 27.957161>,  <36.291096, 34.158428, 28.377815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709953, 34.050571, 27.957161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.626392, 34.407696, 28.116783>,  <35.576256, 34.621971, 28.212557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.626392, 34.407696, 28.116783>,  <35.709953, 34.050571, 27.957161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626392, 34.407696, 28.116783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515033, 0.246440, -0.820980,
		-0.831325, -0.377032, 0.408346,
		-0.208903, 0.892813, 0.399055,
		35.563721, 34.675541, 28.236500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901596, 34.148014, 27.987770>,  <35.709953, 34.050571, 27.957161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901596, 34.148014, 27.987770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.077145, 34.506416, 28.014814>,  <35.182476, 34.721458, 28.031042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.077145, 34.506416, 28.014814>,  <34.901596, 34.148014, 27.987770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077145, 34.506416, 28.014814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433554, 0.277067, -0.857476,
		-0.787033, 0.347011, 0.510062,
		0.438875, 0.896001, 0.067613,
		35.208805, 34.775215, 28.035099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356236, 34.729324, 27.972208>,  <34.901596, 34.148014, 27.987770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356236, 34.729324, 27.972208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.713356, 34.865910, 27.854694>,  <34.927628, 34.947861, 27.784185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.713356, 34.865910, 27.854694>,  <34.356236, 34.729324, 27.972208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713356, 34.865910, 27.854694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381505, 0.226430, -0.896205,
		-0.239495, 0.912214, 0.332425,
		0.892802, 0.341459, -0.293785,
		34.981197, 34.968346, 27.766560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116028, 35.173756, 27.511703>,  <34.356236, 34.729324, 27.972208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116028, 35.173756, 27.511703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.501682, 35.128445, 27.415689>,  <34.733074, 35.101257, 27.358080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.501682, 35.128445, 27.415689>,  <34.116028, 35.173756, 27.511703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501682, 35.128445, 27.415689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206871, 0.245894, -0.946964,
		0.166297, 0.962654, 0.213639,
		0.964132, -0.113282, -0.240036,
		34.790920, 35.094460, 27.343679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218620, 35.569309, 26.949678>,  <34.116028, 35.173756, 27.511703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218620, 35.569309, 26.949678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.541428, 35.334805, 26.921337>,  <34.735111, 35.194099, 26.904331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.541428, 35.334805, 26.921337>,  <34.218620, 35.569309, 26.949678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541428, 35.334805, 26.921337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034188, 0.073400, -0.996717,
		0.589539, 0.806789, 0.039192,
		0.807016, -0.586263, -0.070854,
		34.783531, 35.158924, 26.900082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709778, 35.916950, 26.479469>,  <34.218620, 35.569309, 26.949678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709778, 35.916950, 26.479469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.796509, 35.526482, 26.482895>,  <34.848549, 35.292202, 26.484949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.796509, 35.526482, 26.482895>,  <34.709778, 35.916950, 26.479469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796509, 35.526482, 26.482895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114555, -0.034154, -0.992830,
		0.969465, 0.214294, -0.119231,
		0.216830, -0.976172, 0.008563,
		34.861557, 35.233631, 26.485464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548615, 36.565376, 26.215185>,  <34.709778, 35.916950, 26.479469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548615, 36.565376, 26.215185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.346355, 36.873734, 26.060246>,  <34.224998, 37.058750, 25.967281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.346355, 36.873734, 26.060246>,  <34.548615, 36.565376, 26.215185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346355, 36.873734, 26.060246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065610, 0.413315, 0.908221,
		0.860242, 0.484653, -0.158413,
		-0.505646, 0.770897, -0.387349,
		34.194660, 37.105003, 25.944040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797634, 37.176048, 26.560740>,  <34.548615, 36.565376, 26.215185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797634, 37.176048, 26.560740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.432278, 37.280846, 26.436115>,  <34.213062, 37.343723, 26.361341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.432278, 37.280846, 26.436115>,  <34.797634, 37.176048, 26.560740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432278, 37.280846, 26.436115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232048, 0.293733, 0.927294,
		0.334459, 0.919283, -0.207500,
		-0.913395, 0.261992, -0.311559,
		34.158260, 37.359444, 26.342648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602009, 37.582703, 27.029774>,  <34.797634, 37.176048, 26.560740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602009, 37.582703, 27.029774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.247753, 37.546410, 26.847601>,  <34.035202, 37.524635, 26.738298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.247753, 37.546410, 26.847601>,  <34.602009, 37.582703, 27.029774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247753, 37.546410, 26.847601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464380, 0.171184, 0.868935,
		-0.000877, 0.981052, -0.193740,
		-0.885636, -0.090731, -0.455431,
		33.982063, 37.519192, 26.710972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234867, 38.210175, 27.165445>,  <34.602009, 37.582703, 27.029774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234867, 38.210175, 27.165445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.999737, 37.896980, 27.084055>,  <33.858658, 37.709064, 27.035221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.999737, 37.896980, 27.084055>,  <34.234867, 38.210175, 27.165445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999737, 37.896980, 27.084055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435679, 0.094466, 0.895131,
		-0.681651, 0.614829, -0.396658,
		-0.587823, -0.782983, -0.203476,
		33.823391, 37.662086, 27.023012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630322, 38.437180, 27.508457>,  <34.234867, 38.210175, 27.165445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630322, 38.437180, 27.508457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.597630, 38.040302, 27.470789>,  <33.578014, 37.802174, 27.448189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.597630, 38.040302, 27.470789>,  <33.630322, 38.437180, 27.508457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597630, 38.040302, 27.470789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251443, -0.070901, 0.965272,
		-0.964415, 0.102573, -0.243686,
		-0.081733, -0.992196, -0.094170,
		33.573109, 37.742645, 27.442537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004280, 38.280151, 27.864450>,  <33.630322, 38.437180, 27.508457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004280, 38.280151, 27.864450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.186966, 37.924969, 27.842752>,  <33.296577, 37.711861, 27.829733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.186966, 37.924969, 27.842752>,  <33.004280, 38.280151, 27.864450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186966, 37.924969, 27.842752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343130, -0.232091, 0.910162,
		-0.820776, -0.397071, -0.410685,
		0.456715, -0.887957, -0.054247,
		33.323982, 37.658581, 27.826479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565216, 37.819866, 28.152048>,  <33.004280, 38.280151, 27.864450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565216, 37.819866, 28.152048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.902943, 37.606186, 28.168812>,  <33.105579, 37.477978, 28.178869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.902943, 37.606186, 28.168812>,  <32.565216, 37.819866, 28.152048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902943, 37.606186, 28.168812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332609, -0.461166, 0.822616,
		-0.420110, -0.708492, -0.567051,
		0.844322, -0.534195, 0.041911,
		33.156239, 37.445927, 28.181385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442013, 37.264389, 28.425848>,  <32.565216, 37.819866, 28.152048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442013, 37.264389, 28.425848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.837955, 37.259003, 28.482428>,  <33.075520, 37.255772, 28.516375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.837955, 37.259003, 28.482428>,  <32.442013, 37.264389, 28.425848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837955, 37.259003, 28.482428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132787, -0.441916, 0.887174,
		0.050565, -0.896955, -0.439220,
		0.989854, -0.013463, 0.141449,
		33.134911, 37.254963, 28.524862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561504, 36.550663, 28.696951>,  <32.442013, 37.264389, 28.425848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561504, 36.550663, 28.696951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.882519, 36.764999, 28.801878>,  <33.075127, 36.893600, 28.864834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.882519, 36.764999, 28.801878>,  <32.561504, 36.550663, 28.696951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882519, 36.764999, 28.801878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009795, -0.427794, 0.903823,
		0.596522, -0.727921, -0.338072,
		0.802536, 0.535839, 0.262318,
		33.123280, 36.925751, 28.880573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009922, 36.140553, 28.915716>,  <32.561504, 36.550663, 28.696951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009922, 36.140553, 28.915716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.117062, 36.482368, 29.093716>,  <33.181347, 36.687458, 29.200516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.117062, 36.482368, 29.093716>,  <33.009922, 36.140553, 28.915716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117062, 36.482368, 29.093716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246889, -0.385578, 0.889031,
		0.931291, -0.347991, 0.107700,
		0.267848, 0.854536, 0.445001,
		33.197414, 36.738728, 29.227217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233398, 35.929317, 29.522551>,  <33.009922, 36.140553, 28.915716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233398, 35.929317, 29.522551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.163681, 36.318649, 29.582218>,  <33.121849, 36.552250, 29.618019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.163681, 36.318649, 29.582218>,  <33.233398, 35.929317, 29.522551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163681, 36.318649, 29.582218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288135, -0.195267, 0.937469,
		0.941594, 0.120416, 0.314485,
		-0.174295, 0.973330, 0.149167,
		33.111393, 36.610649, 29.626968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705631, 36.173145, 30.021933>,  <33.233398, 35.929317, 29.522551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705631, 36.173145, 30.021933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.377308, 36.401608, 30.024864>,  <33.180313, 36.538685, 30.026623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.377308, 36.401608, 30.024864>,  <33.705631, 36.173145, 30.021933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377308, 36.401608, 30.024864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251775, -0.373285, 0.892898,
		0.512721, 0.731053, 0.450199,
		-0.820809, 0.571156, 0.007330,
		33.131065, 36.572956, 30.027063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.186337, 35.850849, 22.446627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812046, 35.991524, 22.435755>,  <34.587471, 36.075928, 22.429232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812046, 35.991524, 22.435755>,  <35.186337, 35.850849, 22.446627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812046, 35.991524, 22.435755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134100, 0.425948, 0.894754,
		0.326246, 0.833599, -0.445731,
		-0.935725, 0.351683, -0.027178,
		34.531330, 36.097027, 22.427601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256107, 36.621983, 22.537394>,  <35.186337, 35.850849, 22.446627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256107, 36.621983, 22.537394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875271, 36.543438, 22.631168>,  <34.646770, 36.496311, 22.687433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875271, 36.543438, 22.631168>,  <35.256107, 36.621983, 22.537394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875271, 36.543438, 22.631168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087362, 0.560022, 0.823858,
		-0.293066, 0.804871, -0.516039,
		-0.952093, -0.196363, 0.234439,
		34.589642, 36.484528, 22.701500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988277, 37.280151, 22.654757>,  <35.256107, 36.621983, 22.537394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988277, 37.280151, 22.654757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700611, 37.056892, 22.820297>,  <34.528011, 36.922939, 22.919621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700611, 37.056892, 22.820297>,  <34.988277, 37.280151, 22.654757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700611, 37.056892, 22.820297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024835, 0.615876, 0.787451,
		-0.694392, 0.556032, -0.456781,
		-0.719169, -0.558144, 0.413850,
		34.484859, 36.889450, 22.944452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514061, 37.740456, 22.975140>,  <34.988277, 37.280151, 22.654757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514061, 37.740456, 22.975140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413410, 37.403130, 23.165087>,  <34.353020, 37.200733, 23.279055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413410, 37.403130, 23.165087>,  <34.514061, 37.740456, 22.975140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413410, 37.403130, 23.165087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041331, 0.499569, 0.865288,
		-0.966941, 0.198106, -0.160561,
		-0.251630, -0.843318, 0.474865,
		34.337921, 37.150135, 23.307547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941921, 37.830372, 23.366150>,  <34.514061, 37.740456, 22.975140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941921, 37.830372, 23.366150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108696, 37.514725, 23.546572>,  <34.208763, 37.325336, 23.654825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108696, 37.514725, 23.546572>,  <33.941921, 37.830372, 23.366150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108696, 37.514725, 23.546572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256731, 0.373798, 0.891271,
		-0.871923, -0.487407, -0.046740,
		0.416940, -0.789120, 0.451056,
		34.233776, 37.277988, 23.681889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513851, 37.429867, 23.909752>,  <33.941921, 37.830372, 23.366150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513851, 37.429867, 23.909752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886906, 37.343788, 24.025595>,  <34.110741, 37.292141, 24.095100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886906, 37.343788, 24.025595>,  <33.513851, 37.429867, 23.909752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886906, 37.343788, 24.025595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300726, -0.020117, 0.953498,
		-0.199364, -0.976363, -0.083477,
		0.932640, -0.215197, 0.289607,
		34.166698, 37.279228, 24.112476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411213, 36.938389, 24.536604>,  <33.513851, 37.429867, 23.909752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411213, 36.938389, 24.536604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803802, 36.991165, 24.592180>,  <34.039356, 37.022831, 24.625526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803802, 36.991165, 24.592180>,  <33.411213, 36.938389, 24.536604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803802, 36.991165, 24.592180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147202, 0.055014, 0.987575,
		0.122667, -0.989729, 0.073418,
		0.981470, 0.131950, 0.138941,
		34.098244, 37.030750, 24.633863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822613, 36.404854, 25.023800>,  <33.411213, 36.938389, 24.536604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822613, 36.404854, 25.023800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031471, 36.744648, 25.054104>,  <34.156784, 36.948524, 25.072287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031471, 36.744648, 25.054104>,  <33.822613, 36.404854, 25.023800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031471, 36.744648, 25.054104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175811, 0.020287, 0.984215,
		0.834539, -0.527222, 0.159941,
		0.522144, 0.849486, 0.075761,
		34.188114, 36.999493, 25.076832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176994, 36.324818, 25.672110>,  <33.822613, 36.404854, 25.023800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176994, 36.324818, 25.672110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196163, 36.709621, 25.564604>,  <34.207664, 36.940506, 25.500101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196163, 36.709621, 25.564604>,  <34.176994, 36.324818, 25.672110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196163, 36.709621, 25.564604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100265, 0.272348, 0.956961,
		0.993806, -0.018913, 0.109508,
		0.047923, 0.962013, -0.268765,
		34.210541, 36.998226, 25.483974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829166, 35.852158, 25.703993>,  <34.176994, 36.324818, 25.672110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829166, 35.852158, 25.703993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842262, 35.485851, 25.864140>,  <34.850121, 35.266068, 25.960228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842262, 35.485851, 25.864140>,  <34.829166, 35.852158, 25.703993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842262, 35.485851, 25.864140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217706, -0.397498, -0.891403,
		0.975465, -0.057979, -0.212382,
		0.032738, -0.915769, 0.400368,
		34.852085, 35.211121, 25.984249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178101, 35.454967, 25.178486>,  <34.829166, 35.852158, 25.703993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178101, 35.454967, 25.178486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963779, 35.203983, 25.404480>,  <34.835186, 35.053394, 25.540077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963779, 35.203983, 25.404480>,  <35.178101, 35.454967, 25.178486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963779, 35.203983, 25.404480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236821, -0.530606, -0.813863,
		0.810450, -0.569872, 0.135706,
		-0.535804, -0.627458, 0.564987,
		34.803040, 35.015747, 25.573977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474430, 34.812347, 25.105616>,  <35.178101, 35.454967, 25.178486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474430, 34.812347, 25.105616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091198, 34.746883, 25.199673>,  <34.861259, 34.707603, 25.256107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091198, 34.746883, 25.199673>,  <35.474430, 34.812347, 25.105616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091198, 34.746883, 25.199673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102231, -0.571434, -0.814256,
		0.267628, -0.804164, 0.530750,
		-0.958084, -0.163659, 0.235142,
		34.803772, 34.697784, 25.270216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350704, 34.111408, 24.770016>,  <35.474430, 34.812347, 25.105616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350704, 34.111408, 24.770016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975780, 34.220413, 24.856899>,  <34.750824, 34.285816, 24.909029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975780, 34.220413, 24.856899>,  <35.350704, 34.111408, 24.770016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975780, 34.220413, 24.856899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345170, -0.640186, -0.686309,
		-0.047978, -0.718260, 0.694119,
		-0.937313, 0.272517, 0.217207,
		34.694588, 34.302170, 24.922062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965714, 33.485668, 24.875750>,  <35.350704, 34.111408, 24.770016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965714, 33.485668, 24.875750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697636, 33.769531, 24.788832>,  <34.536789, 33.939850, 24.736681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697636, 33.769531, 24.788832>,  <34.965714, 33.485668, 24.875750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697636, 33.769531, 24.788832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296073, -0.524118, -0.798525,
		-0.680569, -0.470835, 0.561374,
		-0.670199, 0.709659, -0.217297,
		34.496574, 33.982430, 24.723642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278229, 33.132175, 24.780746>,  <34.965714, 33.485668, 24.875750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278229, 33.132175, 24.780746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239895, 33.480347, 24.587593>,  <34.216896, 33.689247, 24.471701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239895, 33.480347, 24.587593>,  <34.278229, 33.132175, 24.780746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239895, 33.480347, 24.587593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407637, -0.476889, -0.778722,
		-0.908102, 0.122217, 0.400518,
		-0.095830, 0.870425, -0.482884,
		34.211147, 33.741474, 24.442728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603004, 33.196377, 24.509045>,  <34.278229, 33.132175, 24.780746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603004, 33.196377, 24.509045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807766, 33.443897, 24.270706>,  <33.930622, 33.592411, 24.127703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807766, 33.443897, 24.270706>,  <33.603004, 33.196377, 24.509045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807766, 33.443897, 24.270706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244377, -0.560059, -0.791590,
		-0.823548, 0.550831, -0.135476,
		0.511907, 0.618805, -0.595845,
		33.961338, 33.629539, 24.091953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222393, 33.352337, 23.950752>,  <33.603004, 33.196377, 24.509045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222393, 33.352337, 23.950752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584122, 33.437595, 23.802822>,  <33.801159, 33.488750, 23.714064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584122, 33.437595, 23.802822>,  <33.222393, 33.352337, 23.950752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584122, 33.437595, 23.802822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257024, -0.419825, -0.870451,
		-0.340794, 0.882223, -0.324874,
		0.904322, 0.213144, -0.369826,
		33.855419, 33.501537, 23.691874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062832, 33.476189, 23.305506>,  <33.222393, 33.352337, 23.950752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062832, 33.476189, 23.305506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462040, 33.467224, 23.281984>,  <33.701565, 33.461845, 23.267872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462040, 33.467224, 23.281984>,  <33.062832, 33.476189, 23.305506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462040, 33.467224, 23.281984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062923, -0.340566, -0.938112,
		0.000999, 0.939953, -0.341302,
		0.998018, -0.022412, -0.058804,
		33.761444, 33.460499, 23.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129532, 33.732788, 22.642782>,  <33.062832, 33.476189, 23.305506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129532, 33.732788, 22.642782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458305, 33.522766, 22.731091>,  <33.655571, 33.396755, 22.784075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458305, 33.522766, 22.731091>,  <33.129532, 33.732788, 22.642782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458305, 33.522766, 22.731091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018244, -0.411673, -0.911149,
		0.569287, 0.744879, -0.347948,
		0.821936, -0.525053, 0.220771,
		33.704887, 33.365250, 22.797321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659557, 33.783768, 22.031641>,  <33.129532, 33.732788, 22.642782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659557, 33.783768, 22.031641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787907, 33.454079, 22.218271>,  <33.864918, 33.256264, 22.330250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787907, 33.454079, 22.218271>,  <33.659557, 33.783768, 22.031641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787907, 33.454079, 22.218271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066217, -0.471898, -0.879163,
		0.944804, 0.312996, -0.096842,
		0.320875, -0.824224, 0.466577,
		33.884171, 33.206810, 22.358244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331974, 33.650826, 21.808006>,  <33.659557, 33.783768, 22.031641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331974, 33.650826, 21.808006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163948, 33.310318, 21.933792>,  <34.063133, 33.106014, 22.009264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163948, 33.310318, 21.933792>,  <34.331974, 33.650826, 21.808006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163948, 33.310318, 21.933792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175197, -0.416074, -0.892294,
		0.890420, -0.319732, 0.323919,
		-0.420069, -0.851266, 0.314464,
		34.037926, 33.054939, 22.028131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730404, 33.170357, 21.462858>,  <34.331974, 33.650826, 21.808006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730404, 33.170357, 21.462858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415466, 32.974735, 21.613016>,  <34.226505, 32.857365, 21.703112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415466, 32.974735, 21.613016>,  <34.730404, 33.170357, 21.462858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415466, 32.974735, 21.613016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066260, -0.672495, -0.737130,
		0.612946, -0.555499, 0.561888,
		-0.787342, -0.489051, 0.375396,
		34.179264, 32.828018, 21.725636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972393, 32.573299, 21.492565>,  <34.730404, 33.170357, 21.462858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972393, 32.573299, 21.492565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574131, 32.538712, 21.478701>,  <34.335175, 32.517960, 21.470381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574131, 32.538712, 21.478701>,  <34.972393, 32.573299, 21.492565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574131, 32.538712, 21.478701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076259, -0.542758, -0.836420,
		0.053515, -0.835426, 0.546992,
		-0.995651, -0.086474, -0.034663,
		34.275436, 32.512768, 21.468302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.746571, 32.310272, 21.587582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044950, 32.576290, 21.573290>,  <29.223978, 32.735901, 21.564714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044950, 32.576290, 21.573290>,  <28.746571, 32.310272, 21.587582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044950, 32.576290, 21.573290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074822, -0.030376, 0.996734,
		0.661789, -0.746184, -0.072419,
		0.745947, 0.665046, -0.035729,
		29.268734, 32.775803, 21.562571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209534, 31.995998, 22.032879>,  <28.746571, 32.310272, 21.587582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209534, 31.995998, 22.032879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.344799, 32.371868, 22.012249>,  <29.425959, 32.597389, 21.999870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.344799, 32.371868, 22.012249>,  <29.209534, 31.995998, 22.032879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344799, 32.371868, 22.012249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134495, 0.005987, 0.990896,
		0.931427, -0.342023, -0.124356,
		0.338165, 0.939672, -0.051576,
		29.446249, 32.653770, 21.996777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836411, 32.071136, 22.364485>,  <29.209534, 31.995998, 22.032879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836411, 32.071136, 22.364485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.663385, 32.431393, 22.381138>,  <29.559570, 32.647545, 22.391129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.663385, 32.431393, 22.381138>,  <29.836411, 32.071136, 22.364485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663385, 32.431393, 22.381138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243077, 0.072033, 0.967329,
		0.868218, 0.428550, -0.250084,
		-0.432563, 0.900642, 0.041631,
		29.533617, 32.701584, 22.393627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122686, 32.388741, 22.883051>,  <29.836411, 32.071136, 22.364485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122686, 32.388741, 22.883051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.831543, 32.658733, 22.834681>,  <29.656857, 32.820728, 22.805658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.831543, 32.658733, 22.834681>,  <30.122686, 32.388741, 22.883051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831543, 32.658733, 22.834681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134633, 0.313578, 0.939970,
		0.672383, 0.667883, -0.319115,
		-0.727857, 0.674982, -0.120926,
		29.613186, 32.861229, 22.798403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335089, 33.037716, 23.128941>,  <30.122686, 32.388741, 22.883051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335089, 33.037716, 23.128941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.937355, 33.080212, 23.127827>,  <29.698715, 33.105709, 23.127159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.937355, 33.080212, 23.127827>,  <30.335089, 33.037716, 23.128941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937355, 33.080212, 23.127827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042833, 0.424586, 0.904374,
		0.097264, 0.899133, -0.426732,
		-0.994337, 0.106241, -0.002785,
		29.639053, 33.112083, 23.126991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243891, 33.791492, 23.233717>,  <30.335089, 33.037716, 23.128941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243891, 33.791492, 23.233717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.909725, 33.593834, 23.329971>,  <29.709227, 33.475239, 23.387724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.909725, 33.593834, 23.329971>,  <30.243891, 33.791492, 23.233717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909725, 33.593834, 23.329971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074856, 0.331449, 0.940499,
		-0.544499, 0.803719, -0.239908,
		-0.835414, -0.494142, 0.240637,
		29.659101, 33.445591, 23.402163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917013, 34.187805, 23.633942>,  <30.243891, 33.791492, 23.233717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917013, 34.187805, 23.633942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.747131, 33.840271, 23.735727>,  <29.645203, 33.631752, 23.796799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.747131, 33.840271, 23.735727>,  <29.917013, 34.187805, 23.633942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747131, 33.840271, 23.735727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134338, 0.217483, 0.966775,
		-0.895308, 0.444780, 0.024351,
		-0.424707, -0.868833, 0.254465,
		29.619719, 33.579620, 23.812067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398983, 34.344368, 24.163374>,  <29.917013, 34.187805, 23.633942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398983, 34.344368, 24.163374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.495464, 33.957085, 24.189875>,  <29.553352, 33.724712, 24.205776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.495464, 33.957085, 24.189875>,  <29.398983, 34.344368, 24.163374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495464, 33.957085, 24.189875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011505, 0.065411, 0.997792,
		-0.970407, -0.241432, 0.004638,
		0.241203, -0.968211, 0.066253,
		29.567825, 33.666622, 24.209751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909697, 34.187653, 24.636734>,  <29.398983, 34.344368, 24.163374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909697, 34.187653, 24.636734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.224497, 33.940922, 24.641712>,  <29.413376, 33.792885, 24.644699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.224497, 33.940922, 24.641712>,  <28.909697, 34.187653, 24.636734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224497, 33.940922, 24.641712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108413, 0.158126, 0.981449,
		-0.607354, -0.771050, 0.191317,
		0.786999, -0.616829, 0.012447,
		29.460596, 33.755875, 24.645447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865469, 33.753696, 25.263605>,  <28.909697, 34.187653, 24.636734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865469, 33.753696, 25.263605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.251671, 33.691147, 25.180323>,  <29.483391, 33.653618, 25.130352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.251671, 33.691147, 25.180323>,  <28.865469, 33.753696, 25.263605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251671, 33.691147, 25.180323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224799, 0.097030, 0.969562,
		-0.131410, -0.982920, 0.128835,
		0.965503, -0.156373, -0.208208,
		29.541323, 33.644234, 25.117861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038794, 33.151108, 25.705151>,  <28.865469, 33.753696, 25.263605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038794, 33.151108, 25.705151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.389809, 33.311951, 25.600660>,  <29.600418, 33.408459, 25.537966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.389809, 33.311951, 25.600660>,  <29.038794, 33.151108, 25.705151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389809, 33.311951, 25.600660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314534, -0.071506, 0.946549,
		0.361939, -0.912794, -0.189226,
		0.877535, 0.402111, -0.261225,
		29.653069, 33.432583, 25.522293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613079, 32.688641, 26.129515>,  <29.038794, 33.151108, 25.705151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613079, 32.688641, 26.129515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.758490, 33.039982, 26.005354>,  <29.845736, 33.250786, 25.930857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.758490, 33.039982, 26.005354>,  <29.613079, 32.688641, 26.129515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758490, 33.039982, 26.005354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382073, 0.163311, 0.909588,
		0.849630, -0.449253, -0.276227,
		0.363524, 0.878351, -0.310401,
		29.867546, 33.303486, 25.912233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301622, 32.715843, 26.268496>,  <29.613079, 32.688641, 26.129515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301622, 32.715843, 26.268496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.226557, 33.106628, 26.227852>,  <30.181519, 33.341099, 26.203466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.226557, 33.106628, 26.227852>,  <30.301622, 32.715843, 26.268496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226557, 33.106628, 26.227852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307337, 0.156657, 0.938617,
		0.932913, 0.144916, -0.329656,
		-0.187663, 0.976964, -0.101609,
		30.170258, 33.399719, 26.197369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882280, 33.150566, 26.551184>,  <30.301622, 32.715843, 26.268496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882280, 33.150566, 26.551184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554827, 33.379803, 26.566183>,  <30.358355, 33.517345, 26.575184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554827, 33.379803, 26.566183>,  <30.882280, 33.150566, 26.551184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554827, 33.379803, 26.566183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231550, 0.269597, 0.934720,
		0.525566, 0.773879, -0.353400,
		-0.818636, 0.573087, 0.037501,
		30.309237, 33.551727, 26.577433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549694, 33.024876, 26.639463>,  <30.882280, 33.150566, 26.551184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549694, 33.024876, 26.639463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.588408, 32.657879, 26.793785>,  <31.611635, 32.437683, 26.886377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.588408, 32.657879, 26.793785>,  <31.549694, 33.024876, 26.639463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588408, 32.657879, 26.793785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335739, -0.334810, -0.880444,
		0.936970, 0.214742, 0.275633,
		0.096784, -0.917490, 0.385804,
		31.617443, 32.382633, 26.909527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217640, 32.822041, 26.304043>,  <31.549694, 33.024876, 26.639463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217640, 32.822041, 26.304043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.075371, 32.461609, 26.403284>,  <31.990009, 32.245350, 26.462828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.075371, 32.461609, 26.403284>,  <32.217640, 32.822041, 26.304043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075371, 32.461609, 26.403284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264778, -0.351731, -0.897874,
		0.896322, -0.253655, 0.363686,
		-0.355669, -0.901080, 0.248102,
		31.968670, 32.191284, 26.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527966, 32.378876, 25.887083>,  <32.217640, 32.822041, 26.304043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527966, 32.378876, 25.887083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.204742, 32.172882, 26.001511>,  <32.010807, 32.049286, 26.070168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.204742, 32.172882, 26.001511>,  <32.527966, 32.378876, 25.887083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204742, 32.172882, 26.001511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024847, -0.514961, -0.856853,
		0.588577, -0.685280, 0.428915,
		-0.808059, -0.514981, 0.286067,
		31.962324, 32.018387, 26.087330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726402, 31.683409, 25.813490>,  <32.527966, 32.378876, 25.887083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726402, 31.683409, 25.813490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.327072, 31.685625, 25.790478>,  <32.087475, 31.686954, 25.776670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.327072, 31.685625, 25.790478>,  <32.726402, 31.683409, 25.813490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327072, 31.685625, 25.790478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040157, -0.649390, -0.759395,
		-0.041568, -0.760436, 0.648081,
		-0.998328, 0.005542, -0.057531,
		32.027573, 31.687288, 25.773218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513474, 30.939507, 25.773153>,  <32.726402, 31.683409, 25.813490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513474, 30.939507, 25.773153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229542, 31.176851, 25.621328>,  <32.059181, 31.319258, 25.530233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229542, 31.176851, 25.621328>,  <32.513474, 30.939507, 25.773153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229542, 31.176851, 25.621328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198679, -0.685646, -0.700297,
		-0.675760, -0.421691, 0.604586,
		-0.709841, 0.593352, -0.379552,
		32.016594, 31.354858, 25.507460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090748, 30.388977, 25.518112>,  <32.513474, 30.939507, 25.773153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090748, 30.388977, 25.518112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.945019, 30.732126, 25.373159>,  <31.857582, 30.938017, 25.286188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.945019, 30.732126, 25.373159>,  <32.090748, 30.388977, 25.518112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945019, 30.732126, 25.373159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422729, -0.499067, -0.756461,
		-0.829802, -0.122405, 0.544469,
		-0.364321, 0.857875, -0.362382,
		31.835722, 30.989489, 25.264444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370853, 30.190901, 25.287165>,  <32.090748, 30.388977, 25.518112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370853, 30.190901, 25.287165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.451906, 30.531494, 25.093704>,  <31.500538, 30.735849, 24.977629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.451906, 30.531494, 25.093704>,  <31.370853, 30.190901, 25.287165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451906, 30.531494, 25.093704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333310, -0.404435, -0.851667,
		-0.920785, 0.333781, 0.201856,
		0.202632, 0.851483, -0.483650,
		31.512695, 30.786940, 24.948608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840643, 30.320709, 24.756529>,  <31.370853, 30.190901, 25.287165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840643, 30.320709, 24.756529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.140371, 30.551563, 24.626648>,  <31.320208, 30.690077, 24.548719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.140371, 30.551563, 24.626648>,  <30.840643, 30.320709, 24.756529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140371, 30.551563, 24.626648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192549, -0.279261, -0.940711,
		-0.633596, 0.767415, -0.098129,
		0.749320, 0.577137, -0.324704,
		31.365168, 30.724705, 24.529236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554813, 30.852739, 24.192133>,  <30.840643, 30.320709, 24.756529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554813, 30.852739, 24.192133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951078, 30.814863, 24.152899>,  <31.188837, 30.792137, 24.129358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951078, 30.814863, 24.152899>,  <30.554813, 30.852739, 24.192133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951078, 30.814863, 24.152899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108847, -0.116125, -0.987252,
		0.082092, 0.988711, -0.125348,
		0.990663, -0.094689, -0.098085,
		31.248278, 30.786457, 24.123474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696842, 31.305164, 23.607397>,  <30.554813, 30.852739, 24.192133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696842, 31.305164, 23.607397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998770, 31.047920, 23.659019>,  <31.179926, 30.893574, 23.689993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998770, 31.047920, 23.659019>,  <30.696842, 31.305164, 23.607397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998770, 31.047920, 23.659019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008258, -0.187420, -0.982245,
		0.655880, 0.742484, -0.136158,
		0.754820, -0.643110, 0.129056,
		31.225216, 30.854988, 23.697737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242296, 31.550219, 23.286295>,  <30.696842, 31.305164, 23.607397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242296, 31.550219, 23.286295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.310680, 31.156515, 23.304222>,  <31.351711, 30.920294, 23.314978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.310680, 31.156515, 23.304222>,  <31.242296, 31.550219, 23.286295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310680, 31.156515, 23.304222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000810, -0.045626, -0.998958,
		0.985278, 0.170744, -0.008597,
		0.170959, -0.984258, 0.044816,
		31.361967, 30.861238, 23.317667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723763, 31.439220, 22.731253>,  <31.242296, 31.550219, 23.286295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723763, 31.439220, 22.731253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.577385, 31.077589, 22.819546>,  <31.489557, 30.860609, 22.872522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.577385, 31.077589, 22.819546>,  <31.723763, 31.439220, 22.731253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577385, 31.077589, 22.819546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111687, -0.278134, -0.954027,
		0.923910, -0.324468, 0.202755,
		-0.365945, -0.904081, 0.220732,
		31.467602, 30.806364, 22.885765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155975, 30.924145, 22.425011>,  <31.723763, 31.439220, 22.731253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155975, 30.924145, 22.425011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813198, 30.723534, 22.472528>,  <31.607531, 30.603167, 22.501040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813198, 30.723534, 22.472528>,  <32.155975, 30.924145, 22.425011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813198, 30.723534, 22.472528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050645, -0.311311, -0.948958,
		0.512910, -0.807190, 0.292177,
		-0.856947, -0.501527, 0.118795,
		31.556114, 30.573076, 22.508167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225517, 30.285009, 22.109581>,  <32.155975, 30.924145, 22.425011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225517, 30.285009, 22.109581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.843315, 30.400763, 22.132450>,  <31.613995, 30.470215, 22.146172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.843315, 30.400763, 22.132450>,  <32.225517, 30.285009, 22.109581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843315, 30.400763, 22.132450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118690, -0.199735, -0.972635,
		-0.270048, -0.936142, 0.225195,
		-0.955504, 0.289386, 0.057172,
		31.556664, 30.487577, 22.149603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555107, 29.680267, 22.130074>,  <32.225517, 30.285009, 22.109581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555107, 29.680267, 22.130074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864090, 29.448746, 22.025545>,  <33.049480, 29.309834, 21.962828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864090, 29.448746, 22.025545>,  <32.555107, 29.680267, 22.130074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864090, 29.448746, 22.025545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287684, -0.047919, 0.956526,
		-0.566163, -0.814058, 0.129497,
		0.772462, -0.578804, -0.261321,
		33.095829, 29.275105, 21.947149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586948, 29.179651, 22.585070>,  <32.555107, 29.680267, 22.130074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586948, 29.179651, 22.585070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.953587, 29.165108, 22.425810>,  <33.173569, 29.156382, 22.330254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.953587, 29.165108, 22.425810>,  <32.586948, 29.179651, 22.585070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953587, 29.165108, 22.425810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390059, -0.137224, 0.910507,
		-0.087736, -0.989873, -0.111599,
		0.916600, -0.036354, -0.398148,
		33.228565, 29.154200, 22.306366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930252, 28.580757, 22.875935>,  <32.586948, 29.179651, 22.585070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930252, 28.580757, 22.875935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231945, 28.821707, 22.771412>,  <33.412960, 28.966276, 22.708698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231945, 28.821707, 22.771412>,  <32.930252, 28.580757, 22.875935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231945, 28.821707, 22.771412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319137, 0.011491, 0.947639,
		0.573835, -0.798132, -0.183573,
		0.754232, 0.602373, -0.261307,
		33.458214, 29.002419, 22.693020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455051, 28.263931, 23.126820>,  <32.930252, 28.580757, 22.875935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455051, 28.263931, 23.126820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.534248, 28.655085, 23.099873>,  <33.581768, 28.889776, 23.083704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.534248, 28.655085, 23.099873>,  <33.455051, 28.263931, 23.126820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534248, 28.655085, 23.099873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385876, -0.014580, 0.922435,
		0.901054, -0.208632, -0.380230,
		0.197993, 0.977885, -0.067369,
		33.593647, 28.948450, 23.079662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923382, 28.357840, 23.609985>,  <33.455051, 28.263931, 23.126820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923382, 28.357840, 23.609985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.863171, 28.750351, 23.561932>,  <33.827042, 28.985857, 23.533098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.863171, 28.750351, 23.561932>,  <33.923382, 28.357840, 23.609985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863171, 28.750351, 23.561932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415096, 0.173027, 0.893173,
		0.897238, 0.084584, -0.433370,
		-0.150533, 0.981278, -0.120136,
		33.818012, 29.044735, 23.525890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544968, 28.735929, 23.787273>,  <33.923382, 28.357840, 23.609985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544968, 28.735929, 23.787273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.219688, 28.961952, 23.843021>,  <34.024521, 29.097567, 23.876471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.219688, 28.961952, 23.843021>,  <34.544968, 28.735929, 23.787273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219688, 28.961952, 23.843021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290726, 0.186949, 0.938365,
		0.504176, 0.803592, -0.316303,
		-0.813195, 0.565058, 0.139370,
		33.975731, 29.131470, 23.884832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794598, 29.249933, 24.113356>,  <34.544968, 28.735929, 23.787273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794598, 29.249933, 24.113356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409256, 29.307716, 24.203764>,  <34.178051, 29.342386, 24.258009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409256, 29.307716, 24.203764>,  <34.794598, 29.249933, 24.113356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409256, 29.307716, 24.203764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262770, 0.338932, 0.903370,
		0.053892, 0.929654, -0.364470,
		-0.963352, 0.144456, 0.226019,
		34.120251, 29.351053, 24.271570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696777, 30.030535, 24.283442>,  <34.794598, 29.249933, 24.113356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696777, 30.030535, 24.283442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404095, 29.810339, 24.444225>,  <34.228485, 29.678221, 24.540695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404095, 29.810339, 24.444225>,  <34.696777, 30.030535, 24.283442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404095, 29.810339, 24.444225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171607, 0.421941, 0.890235,
		-0.659668, 0.720366, -0.214267,
		-0.731703, -0.550490, 0.401960,
		34.184586, 29.645191, 24.564814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291935, 30.497244, 24.670712>,  <34.696777, 30.030535, 24.283442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291935, 30.497244, 24.670712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.194275, 30.133162, 24.804525>,  <34.135677, 29.914711, 24.884813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.194275, 30.133162, 24.804525>,  <34.291935, 30.497244, 24.670712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194275, 30.133162, 24.804525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001647, 0.345362, 0.938468,
		-0.969736, 0.228575, -0.085819,
		-0.244149, -0.910208, 0.334534,
		34.121029, 29.860100, 24.904886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761147, 30.544655, 25.186769>,  <34.291935, 30.497244, 24.670712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761147, 30.544655, 25.186769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901737, 30.176535, 25.255491>,  <33.986092, 29.955664, 25.296724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901737, 30.176535, 25.255491>,  <33.761147, 30.544655, 25.186769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901737, 30.176535, 25.255491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028764, 0.194042, 0.980572,
		-0.935756, -0.339704, 0.094672,
		0.351474, -0.920298, 0.171804,
		34.007179, 29.900446, 25.307034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384544, 30.201561, 25.796818>,  <33.761147, 30.544655, 25.186769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384544, 30.201561, 25.796818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749931, 30.042810, 25.760899>,  <33.969162, 29.947559, 25.739347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749931, 30.042810, 25.760899>,  <33.384544, 30.201561, 25.796818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749931, 30.042810, 25.760899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136168, 0.090183, 0.986573,
		-0.383451, -0.913430, 0.136421,
		0.913468, -0.396878, -0.089799,
		34.023972, 29.923746, 25.733959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458874, 29.818115, 26.363543>,  <33.384544, 30.201561, 25.796818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458874, 29.818115, 26.363543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830307, 29.896675, 26.237583>,  <34.053165, 29.943811, 26.162008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830307, 29.896675, 26.237583>,  <33.458874, 29.818115, 26.363543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830307, 29.896675, 26.237583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253551, 0.283872, 0.924732,
		0.270996, -0.938535, 0.213805,
		0.928587, 0.196388, -0.314895,
		34.108883, 29.955595, 26.143114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816444, 29.548351, 26.940523>,  <33.458874, 29.818115, 26.363543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816444, 29.548351, 26.940523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102505, 29.751276, 26.748194>,  <34.274139, 29.873032, 26.632795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102505, 29.751276, 26.748194>,  <33.816444, 29.548351, 26.940523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102505, 29.751276, 26.748194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327386, 0.364661, 0.871688,
		0.617556, -0.780805, 0.094701,
		0.715152, 0.507313, -0.480823,
		34.317051, 29.903469, 26.603947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452343, 29.393869, 27.291758>,  <33.816444, 29.548351, 26.940523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452343, 29.393869, 27.291758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492985, 29.745615, 27.105686>,  <34.517368, 29.956663, 26.994043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492985, 29.745615, 27.105686>,  <34.452343, 29.393869, 27.291758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492985, 29.745615, 27.105686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519896, 0.351731, 0.778456,
		0.848166, -0.320938, -0.421442,
		0.101602, 0.879366, -0.465180,
		34.523464, 30.009424, 26.966131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.846455, 31.808105, 21.212172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482731, 31.973534, 21.193754>,  <34.264496, 32.072792, 21.182703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482731, 31.973534, 21.193754>,  <34.846455, 31.808105, 21.212172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482731, 31.973534, 21.193754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202163, -0.535758, -0.819813,
		-0.363719, -0.736153, 0.570777,
		-0.909307, 0.413571, -0.046042,
		34.209938, 32.097607, 21.179941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472847, 31.271358, 21.116058>,  <34.846455, 31.808105, 21.212172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472847, 31.271358, 21.116058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282349, 31.594191, 20.976450>,  <34.168049, 31.787889, 20.892685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282349, 31.594191, 20.976450>,  <34.472847, 31.271358, 21.116058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282349, 31.594191, 20.976450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072204, -0.431477, -0.899230,
		-0.876344, -0.403052, 0.263763,
		-0.476244, 0.807079, -0.349020,
		34.139477, 31.836315, 20.871744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891232, 30.973295, 20.782385>,  <34.472847, 31.271358, 21.116058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891232, 30.973295, 20.782385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958298, 31.331364, 20.617191>,  <33.998539, 31.546206, 20.518076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958298, 31.331364, 20.617191>,  <33.891232, 30.973295, 20.782385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958298, 31.331364, 20.617191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146021, -0.436842, -0.887607,
		-0.974970, 0.088517, -0.203957,
		0.167666, 0.895172, -0.412982,
		34.008598, 31.599915, 20.493296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441601, 31.062315, 20.213823>,  <33.891232, 30.973295, 20.782385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441601, 31.062315, 20.213823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727989, 31.325480, 20.120417>,  <33.899822, 31.483379, 20.064373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727989, 31.325480, 20.120417>,  <33.441601, 31.062315, 20.213823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727989, 31.325480, 20.120417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098434, -0.426285, -0.899217,
		-0.691151, 0.620831, -0.369971,
		0.715975, 0.657913, -0.233516,
		33.942783, 31.522854, 20.050362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270248, 31.204424, 19.494747>,  <33.441601, 31.062315, 20.213823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270248, 31.204424, 19.494747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651447, 31.307367, 19.558706>,  <33.880165, 31.369133, 19.597082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651447, 31.307367, 19.558706>,  <33.270248, 31.204424, 19.494747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651447, 31.307367, 19.558706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213309, -0.195110, -0.957304,
		-0.215173, 0.946413, -0.240836,
		0.952995, 0.257359, 0.159896,
		33.937347, 31.384575, 19.606674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411877, 31.754580, 19.087658>,  <33.270248, 31.204424, 19.494747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411877, 31.754580, 19.087658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773636, 31.601128, 19.162384>,  <33.990692, 31.509056, 19.207220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773636, 31.601128, 19.162384>,  <33.411877, 31.754580, 19.087658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773636, 31.601128, 19.162384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196435, -0.014342, -0.980412,
		0.378795, 0.923376, 0.062387,
		0.904394, -0.383630, 0.186816,
		34.044952, 31.486038, 19.218430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812393, 32.076439, 18.566057>,  <33.411877, 31.754580, 19.087658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812393, 32.076439, 18.566057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042221, 31.777832, 18.700268>,  <34.180119, 31.598667, 18.780794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042221, 31.777832, 18.700268>,  <33.812393, 32.076439, 18.566057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042221, 31.777832, 18.700268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353976, -0.142973, -0.924262,
		0.737950, 0.649823, 0.182102,
		0.574571, -0.746518, 0.335528,
		34.214592, 31.553877, 18.800926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521835, 32.262344, 18.353779>,  <33.812393, 32.076439, 18.566057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521835, 32.262344, 18.353779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460960, 31.870487, 18.406134>,  <34.424435, 31.635372, 18.437546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460960, 31.870487, 18.406134>,  <34.521835, 32.262344, 18.353779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460960, 31.870487, 18.406134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226049, -0.163419, -0.960311,
		0.962155, -0.116558, 0.246318,
		-0.152185, -0.979647, 0.130887,
		34.415306, 31.576593, 18.445400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281284, 31.936085, 18.315582>,  <34.521835, 32.262344, 18.353779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281284, 31.936085, 18.315582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050224, 31.618938, 18.237930>,  <34.911591, 31.428650, 18.191339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050224, 31.618938, 18.237930>,  <35.281284, 31.936085, 18.315582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050224, 31.618938, 18.237930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102484, 0.165499, -0.980870,
		0.809828, -0.586492, -0.014344,
		-0.577647, -0.792866, -0.194132,
		34.876930, 31.381079, 18.179691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682041, 31.367842, 17.953407>,  <35.281284, 31.936085, 18.315582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682041, 31.367842, 17.953407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292789, 31.346500, 17.863804>,  <35.059238, 31.333694, 17.810041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292789, 31.346500, 17.863804>,  <35.682041, 31.367842, 17.953407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292789, 31.346500, 17.863804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208909, 0.204646, -0.956283,
		0.096863, -0.977381, -0.188000,
		-0.973126, -0.053353, -0.224007,
		35.000851, 31.330494, 17.796602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684498, 31.059069, 17.231710>,  <35.682041, 31.367842, 17.953407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684498, 31.059069, 17.231710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316982, 31.211529, 17.272804>,  <35.096474, 31.303005, 17.297461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316982, 31.211529, 17.272804>,  <35.684498, 31.059069, 17.231710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316982, 31.211529, 17.272804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051527, 0.142227, -0.988492,
		-0.391374, -0.913508, -0.111037,
		-0.918788, 0.381148, 0.102734,
		35.041348, 31.325872, 17.303625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161488, 30.628590, 16.868368>,  <35.684498, 31.059069, 17.231710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161488, 30.628590, 16.868368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999287, 30.993635, 16.889172>,  <34.901966, 31.212664, 16.901653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999287, 30.993635, 16.889172>,  <35.161488, 30.628590, 16.868368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999287, 30.993635, 16.889172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122414, 0.002170, -0.992477,
		-0.905862, -0.408815, 0.110836,
		-0.405499, 0.912615, 0.052010,
		34.877636, 31.267420, 16.904774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493359, 30.755959, 16.527834>,  <35.161488, 30.628590, 16.868368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493359, 30.755959, 16.527834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669216, 31.115213, 16.524822>,  <34.774731, 31.330767, 16.523014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669216, 31.115213, 16.524822>,  <34.493359, 30.755959, 16.527834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669216, 31.115213, 16.524822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240086, 0.109437, -0.964563,
		-0.865488, 0.425875, 0.263745,
		0.439647, 0.898139, -0.007530,
		34.801109, 31.384655, 16.522564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899731, 30.358572, 16.390335>,  <34.493359, 30.755959, 16.527834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899731, 30.358572, 16.390335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746761, 30.285601, 16.028015>,  <33.654980, 30.241817, 15.810623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746761, 30.285601, 16.028015>,  <33.899731, 30.358572, 16.390335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746761, 30.285601, 16.028015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027986, -0.982153, 0.185990,
		-0.923563, 0.045778, 0.380705,
		-0.382425, -0.182428, -0.905799,
		33.632034, 30.230873, 15.756275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186539, 30.122437, 16.449020>,  <33.899731, 30.358572, 16.390335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186539, 30.122437, 16.449020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394989, 29.989279, 16.134668>,  <33.520061, 29.909384, 15.946057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394989, 29.989279, 16.134668>,  <33.186539, 30.122437, 16.449020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394989, 29.989279, 16.134668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109854, -0.939300, 0.325036,
		-0.846378, -0.083054, -0.526067,
		0.521131, -0.332894, -0.785878,
		33.551327, 29.889410, 15.898905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042816, 29.382017, 16.468258>,  <33.186539, 30.122437, 16.449020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042816, 29.382017, 16.468258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785572, 29.088943, 16.557320>,  <32.631226, 28.913099, 16.610756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785572, 29.088943, 16.557320>,  <33.042816, 29.382017, 16.468258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785572, 29.088943, 16.557320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106522, 0.202336, 0.973506,
		-0.758325, 0.649793, -0.052078,
		-0.643114, -0.732686, 0.222654,
		32.592636, 28.869137, 16.624115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621384, 29.638960, 17.045628>,  <33.042816, 29.382017, 16.468258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621384, 29.638960, 17.045628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615231, 29.239159, 17.056648>,  <32.611538, 28.999279, 17.063261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615231, 29.239159, 17.056648>,  <32.621384, 29.638960, 17.045628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615231, 29.239159, 17.056648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004116, 0.027618, 0.999610,
		-0.999873, 0.015267, -0.004538,
		-0.015386, -0.999502, 0.027552,
		32.610615, 28.939308, 17.064915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117699, 29.566824, 17.543550>,  <32.621384, 29.638960, 17.045628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117699, 29.566824, 17.543550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293568, 29.207579, 17.539995>,  <32.399090, 28.992031, 17.537861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293568, 29.207579, 17.539995>,  <32.117699, 29.566824, 17.543550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293568, 29.207579, 17.539995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041738, 0.010543, 0.999073,
		-0.897186, -0.439640, 0.042121,
		0.439677, -0.898112, -0.008890,
		32.425472, 28.938145, 17.537329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800482, 29.216322, 18.043764>,  <32.117699, 29.566824, 17.543550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800482, 29.216322, 18.043764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143291, 29.013969, 18.004591>,  <32.348976, 28.892557, 17.981087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143291, 29.013969, 18.004591>,  <31.800482, 29.216322, 18.043764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143291, 29.013969, 18.004591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070220, -0.073620, 0.994811,
		-0.510466, -0.859456, -0.027572,
		0.857026, -0.505882, -0.097932,
		32.400398, 28.862206, 17.975212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745726, 28.624264, 18.505453>,  <31.800482, 29.216322, 18.043764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745726, 28.624264, 18.505453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123154, 28.727531, 18.422487>,  <32.349609, 28.789492, 18.372707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123154, 28.727531, 18.422487>,  <31.745726, 28.624264, 18.505453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123154, 28.727531, 18.422487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207639, 0.026720, 0.977841,
		0.257993, -0.965730, -0.028394,
		0.943571, 0.258171, -0.207417,
		32.406223, 28.804983, 18.360262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187000, 28.102806, 18.888016>,  <31.745726, 28.624264, 18.505453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187000, 28.102806, 18.888016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410778, 28.425600, 18.812330>,  <32.545044, 28.619276, 18.766920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410778, 28.425600, 18.812330>,  <32.187000, 28.102806, 18.888016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410778, 28.425600, 18.812330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167355, 0.113604, 0.979330,
		0.811798, -0.579545, -0.071498,
		0.559443, 0.806983, -0.189213,
		32.578609, 28.667694, 18.755566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797821, 28.014462, 19.152050>,  <32.187000, 28.102806, 18.888016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797821, 28.014462, 19.152050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785351, 28.414248, 19.155912>,  <32.777870, 28.654119, 19.158230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785351, 28.414248, 19.155912>,  <32.797821, 28.014462, 19.152050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785351, 28.414248, 19.155912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333875, 0.001310, 0.942617,
		0.942102, 0.032612, -0.333738,
		-0.031177, 0.999467, 0.009654,
		32.775997, 28.714088, 19.158808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490856, 28.201250, 19.492041>,  <32.797821, 28.014462, 19.152050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490856, 28.201250, 19.492041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281559, 28.541994, 19.501457>,  <33.155979, 28.746441, 19.507107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281559, 28.541994, 19.501457>,  <33.490856, 28.201250, 19.492041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281559, 28.541994, 19.501457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316061, 0.168334, 0.933686,
		0.791406, 0.495984, -0.357319,
		-0.523242, 0.851859, 0.023540,
		33.124588, 28.797552, 19.508520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911724, 28.652264, 19.795982>,  <33.490856, 28.201250, 19.492041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911724, 28.652264, 19.795982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550045, 28.816177, 19.844152>,  <33.333038, 28.914526, 19.873055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550045, 28.816177, 19.844152>,  <33.911724, 28.652264, 19.795982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550045, 28.816177, 19.844152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251989, 0.284170, 0.925067,
		0.344856, 0.866790, -0.360207,
		-0.904199, 0.409783, 0.120424,
		33.278786, 28.939112, 19.880280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022732, 29.217892, 20.256046>,  <33.911724, 28.652264, 19.795982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022732, 29.217892, 20.256046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625469, 29.172714, 20.244173>,  <33.387112, 29.145609, 20.237049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625469, 29.172714, 20.244173>,  <34.022732, 29.217892, 20.256046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625469, 29.172714, 20.244173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061099, 0.285925, 0.956302,
		-0.099518, 0.951573, -0.290870,
		-0.993158, -0.112941, -0.029685,
		33.327522, 29.138832, 20.235268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805740, 29.827633, 20.556774>,  <34.022732, 29.217892, 20.256046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805740, 29.827633, 20.556774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507923, 29.564428, 20.601828>,  <33.329235, 29.406506, 20.628860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507923, 29.564428, 20.601828>,  <33.805740, 29.827633, 20.556774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507923, 29.564428, 20.601828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023210, 0.194133, 0.980701,
		-0.667176, 0.727555, -0.159812,
		-0.744539, -0.658009, 0.112634,
		33.284561, 29.367025, 20.635618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354393, 30.141678, 21.092731>,  <33.805740, 29.827633, 20.556774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354393, 30.141678, 21.092731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285213, 29.748201, 21.072958>,  <33.243706, 29.512115, 21.061094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285213, 29.748201, 21.072958>,  <33.354393, 30.141678, 21.092731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285213, 29.748201, 21.072958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033273, -0.044328, 0.998463,
		-0.984370, 0.174323, -0.025064,
		-0.172944, -0.983690, -0.049436,
		33.233330, 29.453094, 21.058126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754345, 29.967545, 21.448572>,  <33.354393, 30.141678, 21.092731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754345, 29.967545, 21.448572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974106, 29.633438, 21.457479>,  <33.105961, 29.432974, 21.462824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974106, 29.633438, 21.457479>,  <32.754345, 29.967545, 21.448572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974106, 29.633438, 21.457479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002527, 0.028309, 0.999596,
		-0.835557, -0.549119, 0.017664,
		0.549398, -0.835264, 0.022266,
		33.138924, 29.382858, 21.464159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969494, 30.022049, 21.304173>,  <32.754345, 29.967545, 21.448572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969494, 30.022049, 21.304173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652477, 30.203794, 21.466867>,  <31.462267, 30.312841, 21.564484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652477, 30.203794, 21.466867>,  <31.969494, 30.022049, 21.304173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652477, 30.203794, 21.466867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338927, 0.226284, -0.913194,
		-0.506960, -0.861597, -0.025343,
		-0.792540, 0.454364, 0.406736,
		31.414715, 30.340103, 21.588888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327152, 29.782839, 20.993778>,  <31.969494, 30.022049, 21.304173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327152, 29.782839, 20.993778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229130, 30.139261, 21.146601>,  <31.170317, 30.353115, 21.238295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229130, 30.139261, 21.146601>,  <31.327152, 29.782839, 20.993778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229130, 30.139261, 21.146601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339617, 0.290209, -0.894672,
		-0.908080, -0.348997, 0.231501,
		-0.245054, 0.891056, 0.382058,
		31.155613, 30.406578, 21.261219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533443, 29.942982, 20.916607>,  <31.327152, 29.782839, 20.993778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533443, 29.942982, 20.916607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727125, 30.291729, 20.945974>,  <30.843334, 30.500977, 20.963594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727125, 30.291729, 20.945974>,  <30.533443, 29.942982, 20.916607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727125, 30.291729, 20.945974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265073, 0.226147, -0.937333,
		-0.833835, 0.434401, 0.340611,
		0.484206, 0.871868, 0.073421,
		30.872387, 30.553289, 20.968000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074259, 30.502663, 20.861425>,  <30.533443, 29.942982, 20.916607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074259, 30.502663, 20.861425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.418661, 30.652952, 20.724312>,  <30.625303, 30.743126, 20.642044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.418661, 30.652952, 20.724312>,  <30.074259, 30.502663, 20.861425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418661, 30.652952, 20.724312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455739, 0.270781, -0.847927,
		-0.225765, 0.886291, 0.404375,
		0.861006, 0.375722, -0.342785,
		30.676964, 30.765669, 20.621477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905067, 30.972881, 20.274427>,  <30.074259, 30.502663, 20.861425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905067, 30.972881, 20.274427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.301760, 30.954149, 20.226631>,  <30.539776, 30.942909, 20.197954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.301760, 30.954149, 20.226631>,  <29.905067, 30.972881, 20.274427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301760, 30.954149, 20.226631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094845, 0.359784, -0.928202,
		0.086460, 0.931860, 0.352367,
		0.991730, -0.046832, -0.119490,
		30.599279, 30.940100, 20.190784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073259, 31.478443, 19.812275>,  <29.905067, 30.972881, 20.274427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073259, 31.478443, 19.812275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399700, 31.248363, 19.789923>,  <30.595566, 31.110315, 19.776512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399700, 31.248363, 19.789923>,  <30.073259, 31.478443, 19.812275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399700, 31.248363, 19.789923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038254, 0.042716, -0.998355,
		0.576638, 0.816898, 0.012857,
		0.816103, -0.575198, -0.055881,
		30.644531, 31.075804, 19.773159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495844, 31.859915, 19.362610>,  <30.073259, 31.478443, 19.812275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495844, 31.859915, 19.362610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.574945, 31.467823, 19.359926>,  <30.622406, 31.232569, 19.358316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.574945, 31.467823, 19.359926>,  <30.495844, 31.859915, 19.362610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574945, 31.467823, 19.359926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033554, 0.000073, -0.999437,
		0.979677, 0.197867, -0.032876,
		0.197753, -0.980229, -0.006711,
		30.634272, 31.173754, 19.357912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610437, 32.455044, 19.043440>,  <30.495844, 31.859915, 19.362610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610437, 32.455044, 19.043440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258465, 32.611691, 18.935844>,  <30.047281, 32.705681, 18.871286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258465, 32.611691, 18.935844>,  <30.610437, 32.455044, 19.043440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258465, 32.611691, 18.935844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152349, 0.303689, 0.940512,
		0.450012, 0.868566, -0.207563,
		-0.879931, 0.391620, -0.268989,
		29.994486, 32.729176, 18.855148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553465, 33.195637, 19.294090>,  <30.610437, 32.455044, 19.043440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553465, 33.195637, 19.294090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.181019, 33.063465, 19.232325>,  <29.957552, 32.984161, 19.195265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.181019, 33.063465, 19.232325>,  <30.553465, 33.195637, 19.294090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181019, 33.063465, 19.232325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266656, 0.327877, 0.906306,
		-0.248840, 0.885050, -0.393401,
		-0.931114, -0.330428, -0.154415,
		29.901684, 32.964336, 19.186001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103252, 33.711826, 19.567049>,  <30.553465, 33.195637, 19.294090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103252, 33.711826, 19.567049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.831949, 33.418304, 19.551540>,  <29.669167, 33.242191, 19.542234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.831949, 33.418304, 19.551540>,  <30.103252, 33.711826, 19.567049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831949, 33.418304, 19.551540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291145, 0.219913, 0.931060,
		-0.674686, 0.642787, -0.362801,
		-0.678258, -0.733801, -0.038772,
		29.628471, 33.198166, 19.539909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431627, 33.989029, 19.850172>,  <30.103252, 33.711826, 19.567049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431627, 33.989029, 19.850172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428808, 33.594284, 19.914730>,  <29.427116, 33.357437, 19.953465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428808, 33.594284, 19.914730>,  <29.431627, 33.989029, 19.850172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428808, 33.594284, 19.914730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228796, 0.158708, 0.960450,
		-0.973449, -0.030155, -0.226910,
		-0.007050, -0.986865, 0.161393,
		29.426693, 33.298225, 19.963148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932032, 33.880749, 20.273245>,  <29.431627, 33.989029, 19.850172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932032, 33.880749, 20.273245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.136532, 33.544037, 20.342556>,  <29.259232, 33.342010, 20.384144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.136532, 33.544037, 20.342556>,  <28.932032, 33.880749, 20.273245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136532, 33.544037, 20.342556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162723, 0.103163, 0.981264,
		-0.843887, -0.529867, -0.084235,
		0.511249, -0.841783, 0.173280,
		29.289907, 33.291500, 20.394541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652241, 33.631405, 20.899153>,  <28.932032, 33.880749, 20.273245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652241, 33.631405, 20.899153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.951857, 33.370571, 20.852283>,  <29.131626, 33.214069, 20.824162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.951857, 33.370571, 20.852283>,  <28.652241, 33.631405, 20.899153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951857, 33.370571, 20.852283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153315, -0.342659, 0.926865,
		-0.644545, -0.676292, -0.356639,
		0.749037, -0.652084, -0.117173,
		29.176567, 33.174946, 20.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448469, 32.965641, 21.256859>,  <28.652241, 33.631405, 20.899153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448469, 32.965641, 21.256859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.846016, 32.975628, 21.213772>,  <29.084545, 32.981621, 21.187920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.846016, 32.975628, 21.213772>,  <28.448469, 32.965641, 21.256859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846016, 32.975628, 21.213772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110541, -0.201477, 0.973236,
		0.002599, -0.979175, -0.203002,
		0.993868, 0.024969, -0.107715,
		29.144176, 32.983120, 21.181458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.616791, 34.503578, 15.944585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644096, 34.132607, 16.091669>,  <34.660480, 33.910023, 16.179920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644096, 34.132607, 16.091669>,  <34.616791, 34.503578, 15.944585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644096, 34.132607, 16.091669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512294, 0.283683, 0.810604,
		-0.856093, -0.243710, -0.455753,
		0.068263, -0.927432, 0.367711,
		34.664574, 33.854378, 16.201982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916729, 34.212387, 16.272285>,  <34.616791, 34.503578, 15.944585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916729, 34.212387, 16.272285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.209850, 33.989513, 16.428511>,  <34.385723, 33.855789, 16.522245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.209850, 33.989513, 16.428511>,  <33.916729, 34.212387, 16.272285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209850, 33.989513, 16.428511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298454, 0.252622, 0.920384,
		-0.611490, -0.791028, 0.018828,
		0.732806, -0.557187, 0.390562,
		34.429691, 33.822357, 16.545679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518452, 33.947430, 16.774460>,  <33.916729, 34.212387, 16.272285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518452, 33.947430, 16.774460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.906643, 33.894131, 16.854881>,  <34.139557, 33.862152, 16.903133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.906643, 33.894131, 16.854881>,  <33.518452, 33.947430, 16.774460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906643, 33.894131, 16.854881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176583, 0.175313, 0.968547,
		-0.164307, -0.975454, 0.146607,
		0.970475, -0.133251, 0.201054,
		34.197784, 33.854156, 16.915197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554943, 33.424805, 17.289263>,  <33.518452, 33.947430, 16.774460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554943, 33.424805, 17.289263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.870228, 33.670944, 17.285912>,  <34.059399, 33.818626, 17.283901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.870228, 33.670944, 17.285912>,  <33.554943, 33.424805, 17.289263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870228, 33.670944, 17.285912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138322, 0.190414, 0.971910,
		0.599659, -0.764911, 0.235203,
		0.788211, 0.615348, -0.008380,
		34.106689, 33.855549, 17.283398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986290, 33.255569, 17.883930>,  <33.554943, 33.424805, 17.289263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986290, 33.255569, 17.883930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.155743, 33.607330, 17.797037>,  <34.257416, 33.818386, 17.744902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.155743, 33.607330, 17.797037>,  <33.986290, 33.255569, 17.883930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155743, 33.607330, 17.797037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100143, 0.192877, 0.976099,
		0.900282, -0.435260, -0.006357,
		0.423631, 0.879402, -0.217232,
		34.282833, 33.871151, 17.731867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581062, 33.429459, 18.346224>,  <33.986290, 33.255569, 17.883930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581062, 33.429459, 18.346224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.503380, 33.794781, 18.203028>,  <34.456772, 34.013973, 18.117111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.503380, 33.794781, 18.203028>,  <34.581062, 33.429459, 18.346224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503380, 33.794781, 18.203028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123592, 0.384809, 0.914684,
		0.973144, 0.133392, -0.187609,
		-0.194205, 0.913306, -0.357989,
		34.445118, 34.068771, 18.095631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071964, 33.833275, 18.651152>,  <34.581062, 33.429459, 18.346224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071964, 33.833275, 18.651152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.794277, 34.104805, 18.555435>,  <34.627666, 34.267723, 18.498005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.794277, 34.104805, 18.555435>,  <35.071964, 33.833275, 18.651152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794277, 34.104805, 18.555435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086917, 0.409084, 0.908348,
		0.714501, 0.609790, -0.342994,
		-0.694215, 0.678827, -0.239290,
		34.586014, 34.308453, 18.483648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170990, 34.375984, 19.080687>,  <35.071964, 33.833275, 18.651152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170990, 34.375984, 19.080687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.810711, 34.469833, 18.934429>,  <34.594543, 34.526142, 18.846674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.810711, 34.469833, 18.934429>,  <35.170990, 34.375984, 19.080687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810711, 34.469833, 18.934429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152529, 0.617282, 0.771815,
		0.406790, 0.750943, -0.520198,
		-0.900698, 0.234621, -0.365644,
		34.540501, 34.540218, 18.824736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101990, 35.136078, 19.136162>,  <35.170990, 34.375984, 19.080687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101990, 35.136078, 19.136162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726707, 34.998001, 19.126223>,  <34.501537, 34.915157, 19.120258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726707, 34.998001, 19.126223>,  <35.101990, 35.136078, 19.136162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726707, 34.998001, 19.126223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210639, 0.512584, 0.832400,
		-0.274598, 0.786195, -0.553619,
		-0.938204, -0.345189, -0.024849,
		34.445248, 34.894444, 19.118769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584782, 35.760487, 19.083103>,  <35.101990, 35.136078, 19.136162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584782, 35.760487, 19.083103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435894, 35.416859, 19.223646>,  <34.346561, 35.210682, 19.307972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435894, 35.416859, 19.223646>,  <34.584782, 35.760487, 19.083103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435894, 35.416859, 19.223646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276985, 0.464124, 0.841349,
		-0.885851, 0.215846, -0.410706,
		-0.372220, -0.859069, 0.351359,
		34.324226, 35.159138, 19.329054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325424, 36.031384, 19.603722>,  <34.584782, 35.760487, 19.083103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325424, 36.031384, 19.603722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239899, 35.656464, 19.713816>,  <34.188583, 35.431511, 19.779873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239899, 35.656464, 19.713816>,  <34.325424, 36.031384, 19.603722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239899, 35.656464, 19.713816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360095, 0.337533, 0.869714,
		-0.908083, 0.086847, -0.409686,
		-0.213814, -0.937299, 0.275235,
		34.175755, 35.375275, 19.796387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609684, 35.948822, 19.850098>,  <34.325424, 36.031384, 19.603722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609684, 35.948822, 19.850098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.811481, 35.652992, 20.028322>,  <33.932560, 35.475494, 20.135258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.811481, 35.652992, 20.028322>,  <33.609684, 35.948822, 19.850098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811481, 35.652992, 20.028322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316943, 0.321394, 0.892330,
		-0.803141, -0.591390, -0.072262,
		0.504491, -0.739570, 0.445562,
		33.962830, 35.431122, 20.161991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884674, 36.097359, 19.734091>,  <33.609684, 35.948822, 19.850098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884674, 36.097359, 19.734091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.547424, 36.302063, 19.800125>,  <32.345074, 36.424885, 19.839745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.547424, 36.302063, 19.800125>,  <32.884674, 36.097359, 19.734091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547424, 36.302063, 19.800125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319481, -0.229791, -0.919308,
		-0.432529, -0.827828, 0.357239,
		-0.843120, 0.511759, 0.165084,
		32.294487, 36.455589, 19.849651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192703, 35.619339, 19.743372>,  <32.884674, 36.097359, 19.734091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192703, 35.619339, 19.743372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.079071, 35.994984, 19.666050>,  <32.010891, 36.220371, 19.619658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.079071, 35.994984, 19.666050>,  <32.192703, 35.619339, 19.743372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079071, 35.994984, 19.666050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496736, -0.316600, -0.808095,
		-0.820092, -0.133543, 0.556431,
		-0.284082, 0.939111, -0.193305,
		31.993847, 36.276718, 19.608059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538475, 35.513893, 19.447748>,  <32.192703, 35.619339, 19.743372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538475, 35.513893, 19.447748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634697, 35.886990, 19.340317>,  <31.692430, 36.110847, 19.275858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634697, 35.886990, 19.340317>,  <31.538475, 35.513893, 19.447748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634697, 35.886990, 19.340317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482921, -0.125017, -0.866694,
		-0.841974, 0.338191, 0.420365,
		0.240555, 0.932737, -0.268581,
		31.706863, 36.166809, 19.259743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917713, 35.807354, 19.059134>,  <31.538475, 35.513893, 19.447748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917713, 35.807354, 19.059134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236914, 36.021091, 18.947657>,  <31.428434, 36.149334, 18.880770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236914, 36.021091, 18.947657>,  <30.917713, 35.807354, 19.059134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236914, 36.021091, 18.947657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253143, -0.122467, -0.959646,
		-0.546913, 0.836347, 0.037536,
		0.798000, 0.534345, -0.278694,
		31.476315, 36.181396, 18.864048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703970, 36.282368, 18.545980>,  <30.917713, 35.807354, 19.059134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703970, 36.282368, 18.545980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.099609, 36.237015, 18.508394>,  <31.336992, 36.209805, 18.485842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.099609, 36.237015, 18.508394>,  <30.703970, 36.282368, 18.545980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099609, 36.237015, 18.508394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110566, -0.150315, -0.982436,
		0.097267, 0.982115, -0.161213,
		0.989098, -0.113383, -0.093968,
		31.396339, 36.202999, 18.480204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822529, 36.611912, 17.984545>,  <30.703970, 36.282368, 18.545980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822529, 36.611912, 17.984545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163965, 36.406803, 18.021311>,  <31.368826, 36.283737, 18.043369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163965, 36.406803, 18.021311>,  <30.822529, 36.611912, 17.984545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163965, 36.406803, 18.021311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107126, -0.345443, -0.932305,
		0.509812, 0.785960, -0.349798,
		0.853590, -0.512773, 0.091914,
		31.420042, 36.252972, 18.048885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238190, 36.838223, 17.471090>,  <30.822529, 36.611912, 17.984545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238190, 36.838223, 17.471090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.407011, 36.484741, 17.552025>,  <31.508305, 36.272652, 17.600586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.407011, 36.484741, 17.552025>,  <31.238190, 36.838223, 17.471090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407011, 36.484741, 17.552025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059178, -0.249566, -0.966548,
		0.904637, 0.395962, -0.157626,
		0.422054, -0.883703, 0.202335,
		31.533627, 36.219631, 17.612724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761072, 36.711887, 16.921144>,  <31.238190, 36.838223, 17.471090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761072, 36.711887, 16.921144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715078, 36.340469, 17.062334>,  <31.687481, 36.117619, 17.147047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715078, 36.340469, 17.062334>,  <31.761072, 36.711887, 16.921144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715078, 36.340469, 17.062334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064922, -0.347544, -0.935413,
		0.991243, -0.130475, -0.020320,
		-0.114986, -0.928541, 0.352972,
		31.680582, 36.061909, 17.168226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201542, 36.320541, 16.588026>,  <31.761072, 36.711887, 16.921144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201542, 36.320541, 16.588026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.930616, 36.056267, 16.717480>,  <31.768061, 35.897701, 16.795153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.930616, 36.056267, 16.717480>,  <32.201542, 36.320541, 16.588026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930616, 36.056267, 16.717480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132778, -0.322900, -0.937073,
		0.723613, -0.677664, 0.130980,
		-0.677314, -0.660687, 0.323634,
		31.727423, 35.858059, 16.814569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344048, 35.698952, 16.305464>,  <32.201542, 36.320541, 16.588026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344048, 35.698952, 16.305464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960720, 35.650787, 16.409103>,  <31.730724, 35.621887, 16.471287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960720, 35.650787, 16.409103>,  <32.344048, 35.698952, 16.305464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960720, 35.650787, 16.409103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209477, -0.320579, -0.923769,
		0.194298, -0.939537, 0.281991,
		-0.958315, -0.120415, 0.259100,
		31.673225, 35.614662, 16.486834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259476, 35.200111, 15.944773>,  <32.344048, 35.698952, 16.305464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259476, 35.200111, 15.944773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.890238, 35.327133, 16.031548>,  <31.668695, 35.403347, 16.083612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.890238, 35.327133, 16.031548>,  <32.259476, 35.200111, 15.944773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890238, 35.327133, 16.031548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286833, -0.192731, -0.938393,
		-0.256179, -0.928448, 0.268993,
		-0.923092, 0.317553, 0.216936,
		31.613310, 35.422398, 16.096628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805216, 34.703362, 15.609482>,  <32.259476, 35.200111, 15.944773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805216, 34.703362, 15.609482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583296, 35.029961, 15.673398>,  <31.450144, 35.225918, 15.711748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583296, 35.029961, 15.673398>,  <31.805216, 34.703362, 15.609482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583296, 35.029961, 15.673398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412869, -0.103450, -0.904896,
		-0.722311, -0.568011, 0.394499,
		-0.554802, 0.816493, 0.159791,
		31.416855, 35.274910, 15.721335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121260, 34.491798, 15.488574>,  <31.805216, 34.703362, 15.609482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121260, 34.491798, 15.488574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117674, 34.890141, 15.452366>,  <31.115522, 35.129147, 15.430641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.117674, 34.890141, 15.452366>,  <31.121260, 34.491798, 15.488574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117674, 34.890141, 15.452366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345028, -0.088045, -0.934454,
		-0.938549, 0.022858, 0.344387,
		-0.008962, 0.995854, -0.090521,
		31.114985, 35.188896, 15.425210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300964, 33.864422, 15.924428>,  <31.121260, 34.491798, 15.488574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300964, 33.864422, 15.924428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140402, 33.513222, 15.820134>,  <31.044064, 33.302502, 15.757558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140402, 33.513222, 15.820134>,  <31.300964, 33.864422, 15.924428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140402, 33.513222, 15.820134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515100, -0.018979, 0.856920,
		-0.757327, 0.478278, -0.444641,
		-0.401408, -0.878003, -0.260734,
		31.019979, 33.249821, 15.741914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618759, 33.914913, 15.787799>,  <31.300964, 33.864422, 15.924428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618759, 33.914913, 15.787799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670109, 33.529835, 15.883080>,  <30.700918, 33.298790, 15.940249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670109, 33.529835, 15.883080>,  <30.618759, 33.914913, 15.787799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670109, 33.529835, 15.883080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508316, 0.142368, 0.849321,
		-0.851549, -0.230113, -0.471077,
		0.128374, -0.962694, 0.238204,
		30.708620, 33.241028, 15.954541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958311, 33.638817, 15.997606>,  <30.618759, 33.914913, 15.787799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958311, 33.638817, 15.997606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199299, 33.359158, 16.151604>,  <30.343891, 33.191360, 16.244001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199299, 33.359158, 16.151604>,  <29.958311, 33.638817, 15.997606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199299, 33.359158, 16.151604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592612, -0.068732, 0.802550,
		-0.534643, -0.711662, -0.455734,
		0.602469, -0.699151, 0.384993,
		30.380039, 33.149414, 16.267101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540607, 33.279945, 16.336275>,  <29.958311, 33.638817, 15.997606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540607, 33.279945, 16.336275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.881638, 33.147438, 16.497957>,  <30.086256, 33.067932, 16.594967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.881638, 33.147438, 16.497957>,  <29.540607, 33.279945, 16.336275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881638, 33.147438, 16.497957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500833, -0.296978, 0.813001,
		-0.149279, -0.895582, -0.419105,
		0.852574, -0.331266, 0.404205,
		30.137409, 33.048058, 16.619219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401056, 32.712898, 16.737993>,  <29.540607, 33.279945, 16.336275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401056, 32.712898, 16.737993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757723, 32.812641, 16.889124>,  <29.971724, 32.872486, 16.979801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757723, 32.812641, 16.889124>,  <29.401056, 32.712898, 16.737993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757723, 32.812641, 16.889124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293234, -0.317700, 0.901710,
		0.344884, -0.914815, -0.210162,
		0.891666, 0.249358, 0.377825,
		30.025223, 32.887447, 17.002472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599638, 32.125431, 17.207247>,  <29.401056, 32.712898, 16.737993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599638, 32.125431, 17.207247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834232, 32.427624, 17.324060>,  <29.974989, 32.608940, 17.394148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834232, 32.427624, 17.324060>,  <29.599638, 32.125431, 17.207247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834232, 32.427624, 17.324060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264424, -0.162208, 0.950667,
		0.765582, -0.634772, 0.104635,
		0.586484, 0.755482, 0.292032,
		30.010178, 32.654270, 17.411671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960850, 31.920389, 17.838095>,  <29.599638, 32.125431, 17.207247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960850, 31.920389, 17.838095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964600, 32.318829, 17.873184>,  <29.966850, 32.557892, 17.894238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964600, 32.318829, 17.873184>,  <29.960850, 31.920389, 17.838095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964600, 32.318829, 17.873184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154115, -0.085241, 0.984369,
		0.988009, -0.022749, 0.152715,
		0.009376, 0.996101, 0.087725,
		29.967413, 32.617661, 17.899502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241682, 32.037735, 18.450100>,  <29.960850, 31.920389, 17.838095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241682, 32.037735, 18.450100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073700, 32.399139, 18.415928>,  <29.972912, 32.615982, 18.395424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073700, 32.399139, 18.415928>,  <30.241682, 32.037735, 18.450100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073700, 32.399139, 18.415928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205880, -0.003163, 0.978572,
		0.883885, 0.428543, 0.187344,
		-0.419953, 0.903516, -0.085432,
		29.947714, 32.670193, 18.390299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865023, 31.666197, 18.775784>,  <30.241682, 32.037735, 18.450100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865023, 31.666197, 18.775784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782467, 31.282469, 18.852837>,  <30.732933, 31.052233, 18.899069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782467, 31.282469, 18.852837>,  <30.865023, 31.666197, 18.775784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782467, 31.282469, 18.852837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068546, -0.210564, -0.975174,
		0.976066, -0.188062, 0.109216,
		-0.206390, -0.959320, 0.192634,
		30.720551, 30.994673, 18.910627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305815, 31.297712, 18.388147>,  <30.865023, 31.666197, 18.775784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305815, 31.297712, 18.388147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.998440, 31.054380, 18.467587>,  <30.814014, 30.908382, 18.515251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.998440, 31.054380, 18.467587>,  <31.305815, 31.297712, 18.388147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998440, 31.054380, 18.467587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124292, -0.162555, -0.978840,
		0.627740, -0.776860, 0.049303,
		-0.768436, -0.608329, 0.198599,
		30.767908, 30.871881, 18.527166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282770, 30.758871, 17.900434>,  <31.305815, 31.297712, 18.388147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282770, 30.758871, 17.900434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917324, 30.729824, 18.060452>,  <30.698057, 30.712397, 18.156462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917324, 30.729824, 18.060452>,  <31.282770, 30.758871, 17.900434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917324, 30.729824, 18.060452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339283, -0.406012, -0.848553,
		0.224041, -0.910978, 0.346301,
		-0.913615, -0.072617, 0.400043,
		30.643240, 30.708038, 18.180464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090046, 30.071234, 17.834385>,  <31.282770, 30.758871, 17.900434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090046, 30.071234, 17.834385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763124, 30.301447, 17.845514>,  <30.566971, 30.439575, 17.852192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763124, 30.301447, 17.845514>,  <31.090046, 30.071234, 17.834385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763124, 30.301447, 17.845514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350093, -0.457652, -0.817306,
		-0.457652, -0.677729, 0.575532,
		0.817306, -0.575532, -0.027823,
		30.517933, 30.474106, 17.853861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487898, 29.555687, 17.662083>,  <31.090046, 30.071234, 17.834385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487898, 29.555687, 17.662083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321125, 29.917830, 17.629852>,  <30.221062, 30.135115, 17.610514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321125, 29.917830, 17.629852>,  <30.487898, 29.555687, 17.662083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321125, 29.917830, 17.629852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527461, -0.313193, -0.789744,
		-0.740237, -0.286770, 0.608122,
		-0.416934, 0.905358, -0.080577,
		30.196045, 30.189438, 17.605679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715343, 29.448626, 17.687111>,  <30.487898, 29.555687, 17.662083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715343, 29.448626, 17.687111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818411, 29.792681, 17.511034>,  <29.880251, 29.999113, 17.405388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818411, 29.792681, 17.511034>,  <29.715343, 29.448626, 17.687111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818411, 29.792681, 17.511034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470626, -0.286159, -0.834640,
		-0.843871, 0.422226, 0.331069,
		0.257669, 0.860138, -0.440192,
		29.895712, 30.050722, 17.378977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145338, 29.740709, 17.127390>,  <29.715343, 29.448626, 17.687111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145338, 29.740709, 17.127390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495934, 29.902437, 17.022860>,  <29.706291, 29.999474, 16.960142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495934, 29.902437, 17.022860>,  <29.145338, 29.740709, 17.127390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495934, 29.902437, 17.022860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187033, -0.214195, -0.958718,
		-0.443602, 0.889183, -0.112119,
		0.876491, 0.404319, -0.261324,
		29.758881, 30.023733, 16.944462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011070, 30.244099, 16.472443>,  <29.145338, 29.740709, 17.127390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011070, 30.244099, 16.472443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.397470, 30.140697, 16.470818>,  <29.629311, 30.078657, 16.469843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.397470, 30.140697, 16.470818>,  <29.011070, 30.244099, 16.472443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397470, 30.140697, 16.470818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042058, -0.141629, -0.989026,
		0.255090, 0.955572, -0.147686,
		0.966002, -0.258502, -0.004062,
		29.687271, 30.063147, 16.469599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490986, 30.639486, 15.854709>,  <29.011070, 30.244099, 16.472443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490986, 30.639486, 15.854709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555723, 30.269491, 15.992232>,  <29.594566, 30.047495, 16.074747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555723, 30.269491, 15.992232>,  <29.490986, 30.639486, 15.854709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555723, 30.269491, 15.992232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234197, -0.374452, -0.897183,
		0.958623, 0.064683, -0.277232,
		0.161843, -0.924987, 0.343810,
		29.604277, 29.991995, 16.095375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.915607, 33.870770, 31.664122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147549, 33.586700, 31.504414>,  <33.286713, 33.416260, 31.408588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147549, 33.586700, 31.504414>,  <32.915607, 33.870770, 31.664122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147549, 33.586700, 31.504414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400466, 0.178334, -0.898790,
		0.709502, 0.681064, -0.180992,
		0.579857, -0.710175, -0.399272,
		33.321507, 33.373650, 31.384632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103588, 34.038658, 31.040512>,  <32.915607, 33.870770, 31.664122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103588, 34.038658, 31.040512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176315, 33.647392, 31.000257>,  <33.219952, 33.412632, 30.976105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176315, 33.647392, 31.000257>,  <33.103588, 34.038658, 31.040512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176315, 33.647392, 31.000257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391182, 0.021947, -0.920052,
		0.902174, 0.206650, -0.378651,
		0.181818, -0.978169, -0.100638,
		33.230862, 33.353943, 30.970066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387585, 33.986904, 30.342203>,  <33.103588, 34.038658, 31.040512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387585, 33.986904, 30.342203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261082, 33.618301, 30.432369>,  <33.185181, 33.397141, 30.486469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261082, 33.618301, 30.432369>,  <33.387585, 33.986904, 30.342203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261082, 33.618301, 30.432369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237470, -0.153147, -0.959246,
		0.918472, -0.356894, -0.170397,
		-0.316254, -0.921506, 0.225413,
		33.166206, 33.341850, 30.499992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594734, 33.677612, 29.786652>,  <33.387585, 33.986904, 30.342203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594734, 33.677612, 29.786652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318340, 33.434662, 29.943438>,  <33.152504, 33.288891, 30.037510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318340, 33.434662, 29.943438>,  <33.594734, 33.677612, 29.786652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318340, 33.434662, 29.943438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417651, -0.107132, -0.902269,
		0.590010, -0.787156, -0.179646,
		-0.690981, -0.607377, 0.391966,
		33.111046, 33.252449, 30.061028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541649, 33.204956, 29.312721>,  <33.594734, 33.677612, 29.786652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541649, 33.204956, 29.312721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205269, 33.116386, 29.510212>,  <33.003441, 33.063244, 29.628706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205269, 33.116386, 29.510212>,  <33.541649, 33.204956, 29.312721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205269, 33.116386, 29.510212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442448, -0.243894, -0.862992,
		0.311506, -0.944186, 0.107134,
		-0.840954, -0.221426, 0.493727,
		32.952984, 33.049957, 29.658331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357601, 32.649540, 29.007732>,  <33.541649, 33.204956, 29.312721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357601, 32.649540, 29.007732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025089, 32.801563, 29.169983>,  <32.825584, 32.892776, 29.267334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025089, 32.801563, 29.169983>,  <33.357601, 32.649540, 29.007732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025089, 32.801563, 29.169983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480376, -0.124036, -0.868248,
		-0.279677, -0.916606, 0.285682,
		-0.831276, 0.380063, 0.405625,
		32.775707, 32.915581, 29.291670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904099, 32.156796, 28.946472>,  <33.357601, 32.649540, 29.007732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904099, 32.156796, 28.946472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689243, 32.493042, 28.974314>,  <32.560329, 32.694790, 28.991018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689243, 32.493042, 28.974314>,  <32.904099, 32.156796, 28.946472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689243, 32.493042, 28.974314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614902, -0.333754, -0.714495,
		-0.577385, -0.426585, 0.696169,
		-0.537142, 0.840615, 0.069604,
		32.528099, 32.745228, 28.995195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309811, 31.928236, 28.979656>,  <32.904099, 32.156796, 28.946472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309811, 31.928236, 28.979656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.218273, 32.309391, 28.900024>,  <32.163349, 32.538086, 28.852245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.218273, 32.309391, 28.900024>,  <32.309811, 31.928236, 28.979656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218273, 32.309391, 28.900024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705523, -0.303259, -0.640524,
		-0.670721, -0.006124, 0.741684,
		-0.228845, 0.952889, -0.199081,
		32.149620, 32.595257, 28.840300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638685, 31.937780, 28.843344>,  <32.309811, 31.928236, 28.979656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638685, 31.937780, 28.843344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.772511, 32.272675, 28.670322>,  <31.852806, 32.473610, 28.566509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.772511, 32.272675, 28.670322>,  <31.638685, 31.937780, 28.843344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772511, 32.272675, 28.670322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564713, -0.189345, -0.803273,
		-0.754432, 0.513012, 0.409452,
		0.334561, 0.837238, -0.432553,
		31.872879, 32.523846, 28.540556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042164, 32.215710, 28.534573>,  <31.638685, 31.937780, 28.843344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042164, 32.215710, 28.534573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374231, 32.364487, 28.368452>,  <31.573473, 32.453754, 28.268780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374231, 32.364487, 28.368452>,  <31.042164, 32.215710, 28.534573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374231, 32.364487, 28.368452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386467, -0.152964, -0.909530,
		-0.401820, 0.915565, 0.016758,
		0.830171, 0.371944, -0.415300,
		31.623283, 32.476070, 28.243862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731430, 32.551899, 27.894667>,  <31.042164, 32.215710, 28.534573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731430, 32.551899, 27.894667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124079, 32.528080, 27.822145>,  <31.359669, 32.513786, 27.778633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124079, 32.528080, 27.822145>,  <30.731430, 32.551899, 27.894667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124079, 32.528080, 27.822145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187938, -0.136792, -0.972608,
		0.033117, 0.988808, -0.145470,
		0.981622, -0.059549, -0.181304,
		31.418566, 32.510216, 27.767754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985619, 32.933189, 27.221830>,  <30.731430, 32.551899, 27.894667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985619, 32.933189, 27.221830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.275349, 32.664623, 27.284506>,  <31.449186, 32.503483, 27.322111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.275349, 32.664623, 27.284506>,  <30.985619, 32.933189, 27.221830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275349, 32.664623, 27.284506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025779, -0.253479, -0.966997,
		0.688978, 0.696380, -0.200909,
		0.724324, -0.671419, 0.156690,
		31.492645, 32.463196, 27.331512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977283, 33.608349, 27.201263>,  <30.985619, 32.933189, 27.221830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977283, 33.608349, 27.201263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.605999, 33.692059, 27.078215>,  <30.383228, 33.742283, 27.004385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.605999, 33.692059, 27.078215>,  <30.977283, 33.608349, 27.201263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605999, 33.692059, 27.078215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197894, 0.422458, 0.884515,
		0.315060, 0.881893, -0.350717,
		-0.928211, 0.209270, -0.307621,
		30.327536, 33.754841, 26.985928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897280, 34.302486, 27.297249>,  <30.977283, 33.608349, 27.201263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897280, 34.302486, 27.297249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.529121, 34.146156, 27.301865>,  <30.308228, 34.052361, 27.304634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.529121, 34.146156, 27.301865>,  <30.897280, 34.302486, 27.297249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529121, 34.146156, 27.301865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191965, 0.477402, 0.857459,
		-0.340622, 0.786986, -0.514422,
		-0.920395, -0.390821, 0.011540,
		30.253002, 34.028912, 27.305326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488163, 34.799259, 27.420773>,  <30.897280, 34.302486, 27.297249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488163, 34.799259, 27.420773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.260025, 34.495228, 27.545341>,  <30.123142, 34.312809, 27.620083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.260025, 34.495228, 27.545341>,  <30.488163, 34.799259, 27.420773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260025, 34.495228, 27.545341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296505, 0.544081, 0.784895,
		-0.766022, 0.355323, -0.535682,
		-0.570346, -0.760080, 0.311423,
		30.088921, 34.267204, 27.638769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953823, 35.041885, 27.816444>,  <30.488163, 34.799259, 27.420773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953823, 35.041885, 27.816444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981894, 34.665684, 27.949425>,  <29.998735, 34.439964, 28.029213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981894, 34.665684, 27.949425>,  <29.953823, 35.041885, 27.816444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981894, 34.665684, 27.949425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223648, 0.309956, 0.924072,
		-0.972140, -0.139200, -0.188590,
		0.070176, -0.940505, 0.332453,
		30.002947, 34.383533, 28.049160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446136, 35.100235, 28.304487>,  <29.953823, 35.041885, 27.816444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446136, 35.100235, 28.304487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.639111, 34.756916, 28.374437>,  <29.754894, 34.550926, 28.416407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.639111, 34.756916, 28.374437>,  <29.446136, 35.100235, 28.304487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639111, 34.756916, 28.374437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157029, 0.111663, 0.981261,
		-0.861742, -0.500854, -0.080908,
		0.482434, -0.858299, 0.174873,
		29.783840, 34.499428, 28.426899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965090, 34.568825, 28.603724>,  <29.446136, 35.100235, 28.304487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965090, 34.568825, 28.603724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.334162, 34.464851, 28.717632>,  <29.555605, 34.402466, 28.785978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.334162, 34.464851, 28.717632>,  <28.965090, 34.568825, 28.603724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334162, 34.464851, 28.717632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227287, 0.229929, 0.946294,
		-0.311452, -0.937852, 0.153071,
		0.922680, -0.259934, 0.284773,
		29.610966, 34.386871, 28.803064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966555, 34.206841, 29.173725>,  <28.965090, 34.568825, 28.603724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966555, 34.206841, 29.173725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345230, 34.333084, 29.199560>,  <29.572435, 34.408833, 29.215061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345230, 34.333084, 29.199560>,  <28.966555, 34.206841, 29.173725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345230, 34.333084, 29.199560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144956, 0.238278, 0.960318,
		0.287703, -0.918482, 0.271325,
		0.946686, 0.315617, 0.064586,
		29.629236, 34.427769, 29.218937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106081, 34.024387, 29.938900>,  <28.966555, 34.206841, 29.173725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106081, 34.024387, 29.938900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402925, 34.268574, 29.828190>,  <29.581032, 34.415085, 29.761765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402925, 34.268574, 29.828190>,  <29.106081, 34.024387, 29.938900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402925, 34.268574, 29.828190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096947, 0.310826, 0.945510,
		0.663228, -0.728506, 0.171485,
		0.742111, 0.610464, -0.276775,
		29.625559, 34.451714, 29.745157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635433, 34.036865, 30.420359>,  <29.106081, 34.024387, 29.938900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635433, 34.036865, 30.420359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.693668, 34.387386, 30.236662>,  <29.728609, 34.597698, 30.126444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.693668, 34.387386, 30.236662>,  <29.635433, 34.036865, 30.420359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693668, 34.387386, 30.236662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294298, 0.404816, 0.865744,
		0.944560, -0.261195, -0.198957,
		0.145587, 0.876300, -0.459242,
		29.737345, 34.650276, 30.098888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315685, 34.276852, 30.659952>,  <29.635433, 34.036865, 30.420359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315685, 34.276852, 30.659952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.153076, 34.604843, 30.498768>,  <30.055511, 34.801636, 30.402058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.153076, 34.604843, 30.498768>,  <30.315685, 34.276852, 30.659952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153076, 34.604843, 30.498768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243465, 0.522325, 0.817252,
		0.880605, 0.234124, -0.411972,
		-0.406522, 0.819977, -0.402961,
		30.031120, 34.850838, 30.377880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845106, 34.779049, 30.864534>,  <30.315685, 34.276852, 30.659952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845106, 34.779049, 30.864534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502081, 34.971832, 30.792639>,  <30.296267, 35.087502, 30.749502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502081, 34.971832, 30.792639>,  <30.845106, 34.779049, 30.864534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502081, 34.971832, 30.792639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208747, 0.645438, 0.734734,
		0.470119, 0.592560, -0.654110,
		-0.857562, 0.481956, -0.179738,
		30.244812, 35.116421, 30.738718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149714, 35.421379, 30.812212>,  <30.845106, 34.779049, 30.864534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149714, 35.421379, 30.812212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.755995, 35.431011, 30.882164>,  <30.519764, 35.436790, 30.924135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.755995, 35.431011, 30.882164>,  <31.149714, 35.421379, 30.812212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755995, 35.431011, 30.882164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156129, 0.581080, 0.798731,
		-0.082386, 0.813491, -0.575713,
		-0.984295, 0.024081, 0.174882,
		30.460707, 35.438236, 30.934629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871078, 36.167744, 30.881247>,  <31.149714, 35.421379, 30.812212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871078, 36.167744, 30.881247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585300, 35.959217, 31.067924>,  <30.413834, 35.834103, 31.179932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585300, 35.959217, 31.067924>,  <30.871078, 36.167744, 30.881247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585300, 35.959217, 31.067924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145815, 0.541422, 0.828010,
		-0.684331, 0.659617, -0.310800,
		-0.714444, -0.521313, 0.466694,
		30.370968, 35.802822, 31.207933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458853, 36.710526, 31.079239>,  <30.871078, 36.167744, 30.881247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458853, 36.710526, 31.079239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330715, 36.403748, 31.301651>,  <30.253832, 36.219681, 31.435099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330715, 36.403748, 31.301651>,  <30.458853, 36.710526, 31.079239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330715, 36.403748, 31.301651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072138, 0.565510, 0.821581,
		-0.944550, 0.303301, -0.125833,
		-0.320346, -0.766947, 0.556032,
		30.234612, 36.173664, 31.468460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604479, 37.488892, 31.017393>,  <30.458853, 36.710526, 31.079239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604479, 37.488892, 31.017393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.703215, 37.849075, 30.874151>,  <30.762457, 38.065186, 30.788206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.703215, 37.849075, 30.874151>,  <30.604479, 37.488892, 31.017393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703215, 37.849075, 30.874151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169888, -0.323607, -0.930815,
		-0.954048, 0.290601, 0.073098,
		0.246840, 0.900461, -0.358106,
		30.777267, 38.119213, 30.766720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323252, 37.557396, 30.349163>,  <30.604479, 37.488892, 31.017393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323252, 37.557396, 30.349163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522997, 37.903397, 30.329567>,  <30.642845, 38.110996, 30.317808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522997, 37.903397, 30.329567>,  <30.323252, 37.557396, 30.349163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522997, 37.903397, 30.329567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194228, 0.056661, -0.979319,
		-0.844340, 0.498553, 0.196303,
		0.499365, 0.865005, -0.048992,
		30.672806, 38.162899, 30.314869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909721, 38.044155, 30.018429>,  <30.323252, 37.557396, 30.349163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909721, 38.044155, 30.018429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.294825, 38.120487, 29.941820>,  <30.525887, 38.166286, 29.895855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.294825, 38.120487, 29.941820>,  <29.909721, 38.044155, 30.018429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294825, 38.120487, 29.941820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182064, -0.066093, -0.981063,
		-0.199875, 0.979395, -0.028889,
		0.962758, 0.190831, -0.191523,
		30.583652, 38.177738, 29.884363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961182, 38.582336, 29.603956>,  <29.909721, 38.044155, 30.018429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961182, 38.582336, 29.603956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.253557, 38.315647, 29.545706>,  <30.428982, 38.155632, 29.510756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.253557, 38.315647, 29.545706>,  <29.961182, 38.582336, 29.603956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253557, 38.315647, 29.545706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267071, -0.083093, -0.960088,
		0.628014, 0.740657, -0.238799,
		0.730938, -0.666725, -0.145625,
		30.472839, 38.115631, 29.502018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465677, 38.788143, 28.997709>,  <29.961182, 38.582336, 29.603956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465677, 38.788143, 28.997709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540060, 38.398834, 29.051622>,  <30.584690, 38.165249, 29.083971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540060, 38.398834, 29.051622>,  <30.465677, 38.788143, 28.997709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540060, 38.398834, 29.051622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078449, -0.122030, -0.989421,
		0.979421, 0.194563, 0.053660,
		0.185957, -0.973270, 0.134782,
		30.595846, 38.106853, 29.092056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158762, 38.632641, 28.580414>,  <30.465677, 38.788143, 28.997709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158762, 38.632641, 28.580414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976353, 38.281105, 28.636538>,  <30.866907, 38.070183, 28.670212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976353, 38.281105, 28.636538>,  <31.158762, 38.632641, 28.580414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976353, 38.281105, 28.636538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224431, -0.266123, -0.937448,
		0.861204, -0.396011, 0.318597,
		-0.456025, -0.878837, 0.140309,
		30.839544, 38.017452, 28.678631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663296, 38.001991, 28.445374>,  <31.158762, 38.632641, 28.580414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663296, 38.001991, 28.445374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.301044, 37.845768, 28.379282>,  <31.083693, 37.752033, 28.339628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.301044, 37.845768, 28.379282>,  <31.663296, 38.001991, 28.445374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301044, 37.845768, 28.379282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239670, -0.149955, -0.959204,
		0.349847, -0.908283, 0.229409,
		-0.905630, -0.390557, -0.165227,
		31.029356, 37.728600, 28.329714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802633, 37.614429, 27.997658>,  <31.663296, 38.001991, 28.445374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802633, 37.614429, 27.997658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405682, 37.584999, 27.958115>,  <31.167511, 37.567341, 27.934389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405682, 37.584999, 27.958115>,  <31.802633, 37.614429, 27.997658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405682, 37.584999, 27.958115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117492, -0.322973, -0.939087,
		0.037164, -0.943544, 0.329156,
		-0.992378, -0.073573, -0.098856,
		31.107967, 37.562927, 27.928457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677746, 36.927780, 27.795090>,  <31.802633, 37.614429, 27.997658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677746, 36.927780, 27.795090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.358564, 37.136456, 27.674353>,  <31.167055, 37.261662, 27.601910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.358564, 37.136456, 27.674353>,  <31.677746, 36.927780, 27.795090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358564, 37.136456, 27.674353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139432, -0.327435, -0.934529,
		-0.586369, -0.787798, 0.188538,
		-0.797954, 0.521691, -0.301842,
		31.119179, 37.292961, 27.583799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250633, 36.399418, 27.317629>,  <31.677746, 36.927780, 27.795090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250633, 36.399418, 27.317629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087814, 36.761127, 27.266085>,  <30.990122, 36.978153, 27.235157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087814, 36.761127, 27.266085>,  <31.250633, 36.399418, 27.317629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087814, 36.761127, 27.266085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338884, -0.280519, -0.898035,
		-0.848215, -0.321874, 0.420628,
		-0.407048, 0.904271, -0.128862,
		30.965700, 37.032410, 27.227427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608095, 36.232841, 26.974302>,  <31.250633, 36.399418, 27.317629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608095, 36.232841, 26.974302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711382, 36.612267, 26.901041>,  <30.773354, 36.839924, 26.857084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711382, 36.612267, 26.901041>,  <30.608095, 36.232841, 26.974302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711382, 36.612267, 26.901041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295722, -0.102875, -0.949719,
		-0.919713, 0.299396, 0.253948,
		0.258217, 0.948567, -0.183154,
		30.788847, 36.896835, 26.846094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979980, 36.634640, 26.592054>,  <30.608095, 36.232841, 26.974302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979980, 36.634640, 26.592054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.320175, 36.819336, 26.491283>,  <30.524292, 36.930153, 26.430820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.320175, 36.819336, 26.491283>,  <29.979980, 36.634640, 26.592054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320175, 36.819336, 26.491283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163081, -0.223880, -0.960876,
		-0.500080, 0.858295, -0.115105,
		0.850485, 0.461744, -0.251930,
		30.575321, 36.957859, 26.415705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854044, 37.215286, 26.053427>,  <29.979980, 36.634640, 26.592054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854044, 37.215286, 26.053427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.242571, 37.123215, 26.029556>,  <30.475687, 37.067974, 26.015234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.242571, 37.123215, 26.029556>,  <29.854044, 37.215286, 26.053427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242571, 37.123215, 26.029556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074764, -0.057393, -0.995548,
		0.225727, 0.971455, -0.072955,
		0.971318, -0.230176, -0.059675,
		30.533966, 37.054161, 26.011654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099106, 37.496059, 25.456120>,  <29.854044, 37.215286, 26.053427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099106, 37.496059, 25.456120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.395920, 37.242905, 25.544516>,  <30.574009, 37.091011, 25.597553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.395920, 37.242905, 25.544516>,  <30.099106, 37.496059, 25.456120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395920, 37.242905, 25.544516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243784, -0.052322, -0.968417,
		0.624462, 0.772473, 0.115463,
		0.742035, -0.632888, 0.220990,
		30.618530, 37.053040, 25.610813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728172, 37.711445, 24.937569>,  <30.099106, 37.496059, 25.456120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728172, 37.711445, 24.937569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.794968, 37.341003, 25.072893>,  <30.835045, 37.118740, 25.154087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.794968, 37.341003, 25.072893>,  <30.728172, 37.711445, 24.937569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794968, 37.341003, 25.072893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231732, -0.296652, -0.926444,
		0.958340, 0.233104, 0.165069,
		0.166990, -0.926100, 0.338310,
		30.845064, 37.063175, 25.174387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316345, 37.579807, 24.667200>,  <30.728172, 37.711445, 24.937569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316345, 37.579807, 24.667200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185402, 37.217152, 24.773661>,  <31.106836, 36.999557, 24.837538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185402, 37.217152, 24.773661>,  <31.316345, 37.579807, 24.667200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185402, 37.217152, 24.773661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136756, -0.324167, -0.936063,
		0.934951, -0.270032, 0.230108,
		-0.327360, -0.906642, 0.266151,
		31.087194, 36.945160, 24.853506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829317, 36.996582, 24.423176>,  <31.316345, 37.579807, 24.667200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829317, 36.996582, 24.423176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475468, 36.811741, 24.448164>,  <31.263159, 36.700836, 24.463158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475468, 36.811741, 24.448164>,  <31.829317, 36.996582, 24.423176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475468, 36.811741, 24.448164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101962, -0.322412, -0.941092,
		0.455025, -0.826141, 0.332330,
		-0.884622, -0.462105, 0.062470,
		31.210081, 36.673111, 24.466906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943796, 36.287373, 24.214073>,  <31.829317, 36.996582, 24.423176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943796, 36.287373, 24.214073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.549265, 36.339046, 24.173145>,  <31.312546, 36.370052, 24.148588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.549265, 36.339046, 24.173145>,  <31.943796, 36.287373, 24.214073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549265, 36.339046, 24.173145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051448, -0.348466, -0.935908,
		-0.156558, -0.928377, 0.337056,
		-0.986328, 0.129183, -0.102318,
		31.253366, 36.377804, 24.142450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560555, 35.617439, 23.972204>,  <31.943796, 36.287373, 24.214073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560555, 35.617439, 23.972204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306232, 35.898380, 23.844168>,  <31.153639, 36.066944, 23.767345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306232, 35.898380, 23.844168>,  <31.560555, 35.617439, 23.972204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306232, 35.898380, 23.844168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039908, -0.444066, -0.895105,
		-0.770818, -0.556337, 0.310368,
		-0.635804, 0.702349, -0.320092,
		31.115492, 36.109085, 23.748140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028086, 35.299423, 23.562506>,  <31.560555, 35.617439, 23.972204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028086, 35.299423, 23.562506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041471, 35.685238, 23.457785>,  <31.049503, 35.916729, 23.394951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041471, 35.685238, 23.457785>,  <31.028086, 35.299423, 23.562506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041471, 35.685238, 23.457785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041953, -0.260365, -0.964599,
		-0.998559, 0.043265, 0.031752,
		0.033466, 0.964541, -0.261805,
		31.051512, 35.974602, 23.379244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722696, 35.391529, 22.865896>,  <31.028086, 35.299423, 23.562506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722696, 35.391529, 22.865896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.904018, 35.747204, 22.890774>,  <31.012812, 35.960609, 22.905701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.904018, 35.747204, 22.890774>,  <30.722696, 35.391529, 22.865896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904018, 35.747204, 22.890774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214234, -0.040953, -0.975924,
		-0.865228, 0.455714, -0.209057,
		0.453303, 0.889184, 0.062196,
		31.040009, 36.013958, 22.909433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540987, 35.759743, 22.190281>,  <30.722696, 35.391529, 22.865896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540987, 35.759743, 22.190281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.849018, 35.983189, 22.313524>,  <31.033836, 36.117256, 22.387470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.849018, 35.983189, 22.313524>,  <30.540987, 35.759743, 22.190281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849018, 35.983189, 22.313524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246384, 0.185069, -0.951338,
		-0.588449, 0.808519, 0.004885,
		0.770080, 0.558610, 0.308110,
		31.080042, 36.150772, 22.405956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662136, 36.317074, 21.757805>,  <30.540987, 35.759743, 22.190281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662136, 36.317074, 21.757805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027481, 36.308197, 21.920422>,  <31.246689, 36.302872, 22.017992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027481, 36.308197, 21.920422>,  <30.662136, 36.317074, 21.757805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027481, 36.308197, 21.920422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398067, 0.258371, -0.880220,
		-0.085504, 0.965791, 0.244820,
		0.913363, -0.022193, 0.406541,
		31.301491, 36.301540, 22.042383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049051, 36.960003, 21.614532>,  <30.662136, 36.317074, 21.757805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049051, 36.960003, 21.614532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329359, 36.682381, 21.680510>,  <31.497543, 36.515808, 21.720097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329359, 36.682381, 21.680510>,  <31.049051, 36.960003, 21.614532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329359, 36.682381, 21.680510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440581, 0.239211, -0.865255,
		0.561080, 0.679015, 0.473421,
		0.700769, -0.694058, 0.164944,
		31.539589, 36.474163, 21.729994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687771, 37.345497, 21.442595>,  <31.049051, 36.960003, 21.614532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687771, 37.345497, 21.442595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733501, 36.948231, 21.433252>,  <31.760941, 36.709869, 21.427647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733501, 36.948231, 21.433252>,  <31.687771, 37.345497, 21.442595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733501, 36.948231, 21.433252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342707, 0.061494, -0.937428,
		0.932460, 0.099170, 0.347396,
		0.114327, -0.993169, -0.023354,
		31.767799, 36.650280, 21.426247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326607, 37.342480, 21.132151>,  <31.687771, 37.345497, 21.442595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326607, 37.342480, 21.132151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164673, 36.978199, 21.099321>,  <32.067513, 36.759632, 21.079624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164673, 36.978199, 21.099321>,  <32.326607, 37.342480, 21.132151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164673, 36.978199, 21.099321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172907, 0.011895, -0.984866,
		0.897891, -0.412903, 0.152651,
		-0.404839, -0.910697, -0.082074,
		32.043221, 36.704990, 21.074699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735069, 37.160667, 20.693331>,  <32.326607, 37.342480, 21.132151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735069, 37.160667, 20.693331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462868, 36.867569, 20.693546>,  <32.299545, 36.691711, 20.693676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462868, 36.867569, 20.693546>,  <32.735069, 37.160667, 20.693331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462868, 36.867569, 20.693546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084360, -0.079078, -0.993293,
		0.727872, -0.675894, 0.115627,
		-0.680504, -0.732744, 0.000540,
		32.258717, 36.647747, 20.693708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059082, 36.450893, 20.444124>,  <32.735069, 37.160667, 20.693331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059082, 36.450893, 20.444124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663769, 36.488354, 20.395912>,  <32.426582, 36.510830, 20.366985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663769, 36.488354, 20.395912>,  <33.059082, 36.450893, 20.444124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663769, 36.488354, 20.395912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105840, -0.148519, -0.983229,
		-0.109979, -0.984465, 0.136867,
		-0.988283, 0.093649, -0.120530,
		32.367283, 36.516449, 20.359753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197800, 35.752865, 20.475237>,  <33.059082, 36.450893, 20.444124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197800, 35.752865, 20.475237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545753, 35.565601, 20.537367>,  <33.754524, 35.453243, 20.574646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545753, 35.565601, 20.537367>,  <33.197800, 35.752865, 20.475237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545753, 35.565601, 20.537367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027915, 0.361120, 0.932101,
		-0.492465, -0.806485, 0.327202,
		0.869885, -0.468161, 0.155326,
		33.806721, 35.425152, 20.583965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157333, 35.424194, 21.024183>,  <33.197800, 35.752865, 20.475237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157333, 35.424194, 21.024183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554638, 35.467007, 21.006374>,  <33.793018, 35.492695, 20.995689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554638, 35.467007, 21.006374>,  <33.157333, 35.424194, 21.024183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554638, 35.467007, 21.006374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019648, 0.223099, 0.974598,
		0.114240, -0.968903, 0.219492,
		0.993259, 0.107026, -0.044524,
		33.852615, 35.499115, 20.993017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365295, 35.098873, 21.528593>,  <33.157333, 35.424194, 21.024183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365295, 35.098873, 21.528593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666370, 35.353596, 21.461735>,  <33.847015, 35.506428, 21.421619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666370, 35.353596, 21.461735>,  <33.365295, 35.098873, 21.528593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666370, 35.353596, 21.461735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136856, 0.096993, 0.985831,
		0.643995, -0.764899, -0.014145,
		0.752689, 0.636806, -0.167144,
		33.892178, 35.544636, 21.411591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876293, 34.949791, 21.997248>,  <33.365295, 35.098873, 21.528593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876293, 34.949791, 21.997248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993664, 35.316368, 21.888409>,  <34.064087, 35.536316, 21.823105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993664, 35.316368, 21.888409>,  <33.876293, 34.949791, 21.997248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993664, 35.316368, 21.888409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225032, 0.210414, 0.951360,
		0.929119, -0.340383, -0.144488,
		0.293424, 0.916442, -0.272097,
		34.081692, 35.591301, 21.806780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385872, 35.112038, 22.415792>,  <33.876293, 34.949791, 21.997248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385872, 35.112038, 22.415792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260731, 35.474190, 22.300970>,  <34.185646, 35.691483, 22.232077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260731, 35.474190, 22.300970>,  <34.385872, 35.112038, 22.415792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260731, 35.474190, 22.300970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188629, 0.355436, 0.915470,
		0.930882, 0.232260, -0.281981,
		-0.312853, 0.905384, -0.287058,
		34.166874, 35.745804, 22.214853>
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
