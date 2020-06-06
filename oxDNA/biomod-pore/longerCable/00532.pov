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
	<24.056755, 34.879345, 34.720673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293615, 34.849064, 35.041576>,  <24.435732, 34.830894, 35.234119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293615, 34.849064, 35.041576>,  <24.056755, 34.879345, 34.720673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293615, 34.849064, 35.041576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437934, 0.865955, -0.241526,
		-0.676441, 0.494359, 0.545928,
		0.592150, -0.075702, 0.802264,
		24.471260, 34.826355, 35.282257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.987583, 35.454525, 35.157337>,  <24.056755, 34.879345, 34.720673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.987583, 35.454525, 35.157337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355045, 35.300144, 35.191059>,  <24.575523, 35.207516, 35.211292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355045, 35.300144, 35.191059>,  <23.987583, 35.454525, 35.157337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355045, 35.300144, 35.191059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394240, 0.881940, -0.258373,
		0.025366, 0.270593, 0.962359,
		0.918657, -0.385954, 0.084307,
		24.630642, 35.184357, 35.216351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485342, 35.967667, 35.455791>,  <23.987583, 35.454525, 35.157337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485342, 35.967667, 35.455791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730654, 35.753475, 35.223534>,  <24.877842, 35.624958, 35.084179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730654, 35.753475, 35.223534>,  <24.485342, 35.967667, 35.455791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730654, 35.753475, 35.223534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464940, 0.839004, -0.282671,
		0.638527, -0.096607, 0.763512,
		0.613282, -0.535480, -0.580643,
		24.914639, 35.592831, 35.049339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261900, 36.155388, 35.570606>,  <24.485342, 35.967667, 35.455791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261900, 36.155388, 35.570606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238939, 35.975662, 35.213997>,  <25.225163, 35.867825, 35.000031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238939, 35.975662, 35.213997>,  <25.261900, 36.155388, 35.570606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238939, 35.975662, 35.213997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635587, 0.672202, -0.379703,
		0.769893, -0.588438, 0.246995,
		-0.057401, -0.449317, -0.891527,
		25.221720, 35.840866, 34.946537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929802, 35.928566, 35.392727>,  <25.261900, 36.155388, 35.570606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929802, 35.928566, 35.392727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734625, 35.948978, 35.044174>,  <25.617519, 35.961224, 34.835041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734625, 35.948978, 35.044174>,  <25.929802, 35.928566, 35.392727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734625, 35.948978, 35.044174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709765, 0.604276, -0.362055,
		0.508081, -0.795140, -0.331068,
		-0.487941, 0.051027, -0.871384,
		25.588242, 35.964287, 34.782761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393888, 35.810249, 34.934475>,  <25.929802, 35.928566, 35.392727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393888, 35.810249, 34.934475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098629, 36.032883, 34.781975>,  <25.921473, 36.166462, 34.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098629, 36.032883, 34.781975>,  <26.393888, 35.810249, 34.934475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098629, 36.032883, 34.781975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672492, 0.652066, -0.350092,
		0.053747, -0.514809, -0.855618,
		-0.738150, 0.556580, -0.381252,
		25.877184, 36.199856, 34.667599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435661, 35.930916, 34.172558>,  <26.393888, 35.810249, 34.934475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435661, 35.930916, 34.172558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304132, 36.222553, 34.412659>,  <26.225214, 36.397533, 34.556721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304132, 36.222553, 34.412659>,  <26.435661, 35.930916, 34.172558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304132, 36.222553, 34.412659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823996, 0.532040, -0.194846,
		-0.461418, 0.430534, -0.775715,
		-0.328823, 0.729091, 0.600251,
		26.205486, 36.441280, 34.592735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746815, 36.506470, 33.924995>,  <26.435661, 35.930916, 34.172558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746815, 36.506470, 33.924995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664017, 36.573895, 34.310478>,  <26.614338, 36.614349, 34.541767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664017, 36.573895, 34.310478>,  <26.746815, 36.506470, 33.924995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664017, 36.573895, 34.310478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725503, 0.687297, 0.035612,
		-0.656353, 0.706547, -0.264561,
		-0.206993, 0.168566, 0.963711,
		26.601919, 36.624466, 34.599590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663834, 37.142681, 33.890694>,  <26.746815, 36.506470, 33.924995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663834, 37.142681, 33.890694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765232, 37.043484, 34.264698>,  <26.826071, 36.983967, 34.489101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765232, 37.043484, 34.264698>,  <26.663834, 37.142681, 33.890694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765232, 37.043484, 34.264698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797179, 0.601074, -0.056705,
		-0.547947, 0.759743, 0.350065,
		0.253496, -0.247993, 0.935008,
		26.841282, 36.969086, 34.545200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927923, 37.760765, 34.091133>,  <26.663834, 37.142681, 33.890694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927923, 37.760765, 34.091133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039011, 37.496624, 34.370216>,  <27.105663, 37.338139, 34.537666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039011, 37.496624, 34.370216>,  <26.927923, 37.760765, 34.091133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039011, 37.496624, 34.370216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818399, 0.542977, 0.188146,
		-0.503085, 0.518755, 0.691229,
		0.277720, -0.660355, 0.697713,
		27.122328, 37.298519, 34.579529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274738, 38.199337, 34.672852>,  <26.927923, 37.760765, 34.091133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274738, 38.199337, 34.672852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401899, 37.820744, 34.695148>,  <27.478195, 37.593586, 34.708527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401899, 37.820744, 34.695148>,  <27.274738, 38.199337, 34.672852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401899, 37.820744, 34.695148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947150, 0.314359, -0.063917,
		0.042973, 0.073117, 0.996397,
		0.317900, -0.946484, 0.055744,
		27.497269, 37.536797, 34.711872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777552, 38.063042, 35.292728>,  <27.274738, 38.199337, 34.672852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777552, 38.063042, 35.292728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858427, 37.840485, 34.970348>,  <27.906952, 37.706951, 34.776920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858427, 37.840485, 34.970348>,  <27.777552, 38.063042, 35.292728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858427, 37.840485, 34.970348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970110, 0.226542, 0.086980,
		0.134186, -0.799443, 0.585564,
		0.202191, -0.556390, -0.805946,
		27.919085, 37.673569, 34.728565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280783, 38.131363, 34.686615>,  <27.777552, 38.063042, 35.292728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280783, 38.131363, 34.686615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275164, 38.379875, 34.373230>,  <28.271793, 38.528984, 34.185200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275164, 38.379875, 34.373230>,  <28.280783, 38.131363, 34.686615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275164, 38.379875, 34.373230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995421, 0.082776, 0.047794,
		0.094545, -0.779203, -0.619600,
		-0.014047, 0.621282, -0.783461,
		28.270950, 38.566261, 34.138191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462605, 37.985516, 33.987495>,  <28.280783, 38.131363, 34.686615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462605, 37.985516, 33.987495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534386, 38.362049, 34.101818>,  <28.577454, 38.587971, 34.170410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534386, 38.362049, 34.101818>,  <28.462605, 37.985516, 33.987495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534386, 38.362049, 34.101818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977406, -0.203585, 0.056831,
		0.111683, 0.269150, -0.956601,
		0.179454, 0.941335, 0.285806,
		28.588223, 38.644451, 34.187561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603317, 37.370621, 34.195507>,  <28.462605, 37.985516, 33.987495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603317, 37.370621, 34.195507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531778, 37.381569, 34.588905>,  <28.488855, 37.388138, 34.824944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531778, 37.381569, 34.588905>,  <28.603317, 37.370621, 34.195507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531778, 37.381569, 34.588905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858530, -0.492589, -0.142413,
		0.480562, -0.869831, 0.111597,
		-0.178847, 0.027371, 0.983496,
		28.478125, 37.389782, 34.883953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399250, 36.675739, 34.364929>,  <28.603317, 37.370621, 34.195507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399250, 36.675739, 34.364929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247181, 36.959530, 34.602283>,  <28.155939, 37.129803, 34.744698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247181, 36.959530, 34.602283>,  <28.399250, 36.675739, 34.364929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247181, 36.959530, 34.602283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899305, -0.433474, -0.057887,
		0.216149, -0.555646, 0.802831,
		-0.380171, 0.709478, 0.593390,
		28.133129, 37.172375, 34.780300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936586, 36.344753, 34.915890>,  <28.399250, 36.675739, 34.364929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936586, 36.344753, 34.915890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802729, 36.719032, 34.871208>,  <27.722414, 36.943600, 34.844398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802729, 36.719032, 34.871208>,  <27.936586, 36.344753, 34.915890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802729, 36.719032, 34.871208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938090, -0.319531, 0.133745,
		0.089452, 0.149546, 0.984700,
		-0.334643, 0.935701, -0.111705,
		27.702335, 36.999741, 34.837696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561350, 36.608452, 35.501816>,  <27.936586, 36.344753, 34.915890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561350, 36.608452, 35.501816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399660, 36.803238, 35.192116>,  <27.302647, 36.920109, 35.006294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399660, 36.803238, 35.192116>,  <27.561350, 36.608452, 35.501816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399660, 36.803238, 35.192116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905697, -0.331316, 0.264468,
		-0.127735, 0.808142, 0.574969,
		-0.404224, 0.486966, -0.774252,
		27.278393, 36.949329, 34.959839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048943, 36.766705, 35.800297>,  <27.561350, 36.608452, 35.501816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048943, 36.766705, 35.800297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975332, 36.844036, 35.414810>,  <26.931166, 36.890434, 35.183517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975332, 36.844036, 35.414810>,  <27.048943, 36.766705, 35.800297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975332, 36.844036, 35.414810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936946, -0.330858, 0.112541,
		-0.297097, 0.923664, 0.242027,
		-0.184027, 0.193331, -0.963720,
		26.920124, 36.902035, 35.125694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359037, 36.785637, 35.868427>,  <27.048943, 36.766705, 35.800297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359037, 36.785637, 35.868427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425772, 36.771652, 35.474281>,  <26.465813, 36.763260, 35.237793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425772, 36.771652, 35.474281>,  <26.359037, 36.785637, 35.868427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425772, 36.771652, 35.474281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898641, -0.416624, -0.137367,
		-0.405724, 0.908406, -0.100926,
		0.166833, -0.034963, -0.985365,
		26.475822, 36.761162, 35.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844351, 37.172989, 35.481777>,  <26.359037, 36.785637, 35.868427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844351, 37.172989, 35.481777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992273, 36.881622, 35.251072>,  <26.081026, 36.706802, 35.112648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992273, 36.881622, 35.251072>,  <25.844351, 37.172989, 35.481777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992273, 36.881622, 35.251072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926216, -0.337977, -0.167019,
		-0.073273, 0.595969, -0.799657,
		0.369804, -0.728417, -0.576761,
		26.103214, 36.663097, 35.078045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286777, 37.129543, 34.980247>,  <25.844351, 37.172989, 35.481777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286777, 37.129543, 34.980247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526840, 36.809593, 34.980850>,  <25.670877, 36.617622, 34.981213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526840, 36.809593, 34.980850>,  <25.286777, 37.129543, 34.980247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526840, 36.809593, 34.980850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790735, -0.593579, -0.149670,
		0.120612, 0.088636, -0.988735,
		0.600159, -0.799880, 0.001505,
		25.706888, 36.569630, 34.981300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204191, 36.825634, 34.314522>,  <25.286777, 37.129543, 34.980247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204191, 36.825634, 34.314522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567291, 36.695183, 34.208973>,  <25.785152, 36.616913, 34.145645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567291, 36.695183, 34.208973>,  <25.204191, 36.825634, 34.314522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567291, 36.695183, 34.208973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302812, -0.944702, 0.125872,
		-0.290331, -0.034357, -0.956309,
		0.907752, -0.326127, -0.263872,
		25.839617, 36.597343, 34.129810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172504, 36.535633, 33.644421>,  <25.204191, 36.825634, 34.314522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172504, 36.535633, 33.644421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426838, 36.374088, 33.907513>,  <25.579439, 36.277161, 34.065369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426838, 36.374088, 33.907513>,  <25.172504, 36.535633, 33.644421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426838, 36.374088, 33.907513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625409, -0.768978, 0.132422,
		0.452301, -0.495550, -0.741521,
		0.635836, -0.403860, 0.657731,
		25.617588, 36.252930, 34.104832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835739, 35.965057, 33.729233>,  <25.172504, 36.535633, 33.644421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835739, 35.965057, 33.729233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096878, 35.971523, 34.032162>,  <25.253561, 35.975403, 34.213917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096878, 35.971523, 34.032162>,  <24.835739, 35.965057, 33.729233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096878, 35.971523, 34.032162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448624, -0.797318, 0.403757,
		0.610351, -0.603342, -0.513273,
		0.652846, 0.016167, 0.757318,
		25.292732, 35.976372, 34.259357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053057, 35.273613, 33.819023>,  <24.835739, 35.965057, 33.729233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053057, 35.273613, 33.819023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140924, 35.428009, 34.177410>,  <25.193645, 35.520649, 34.392441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140924, 35.428009, 34.177410>,  <25.053057, 35.273613, 33.819023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140924, 35.428009, 34.177410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407807, -0.797977, 0.443764,
		0.886249, -0.462864, -0.017882,
		0.219672, 0.385993, 0.895965,
		25.206825, 35.543808, 34.446201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481579, 34.789169, 34.287510>,  <25.053057, 35.273613, 33.819023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481579, 34.789169, 34.287510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289162, 35.050503, 34.521347>,  <25.173712, 35.207302, 34.661652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289162, 35.050503, 34.521347>,  <25.481579, 34.789169, 34.287510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289162, 35.050503, 34.521347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468292, -0.755203, 0.458662,
		0.741148, -0.053126, 0.669236,
		-0.481042, 0.653334, 0.584596,
		25.144850, 35.246502, 34.696724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958502, 34.271091, 33.948997>,  <25.481579, 34.789169, 34.287510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958502, 34.271091, 33.948997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999704, 34.471088, 33.605045>,  <26.024426, 34.591087, 33.398674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999704, 34.471088, 33.605045>,  <25.958502, 34.271091, 33.948997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999704, 34.471088, 33.605045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005766, -0.864164, -0.503177,
		-0.994664, 0.056788, -0.086131,
		0.103005, 0.499996, -0.859880,
		26.030605, 34.621086, 33.347080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509708, 33.977322, 33.589905>,  <25.958502, 34.271091, 33.948997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509708, 33.977322, 33.589905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787075, 34.157948, 33.365311>,  <25.953495, 34.266323, 33.230553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787075, 34.157948, 33.365311>,  <25.509708, 33.977322, 33.589905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787075, 34.157948, 33.365311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099453, -0.831783, -0.546119,
		-0.713641, 0.322846, -0.621681,
		0.693416, 0.451561, -0.561487,
		25.995100, 34.293415, 33.196865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427034, 33.921551, 32.872826>,  <25.509708, 33.977322, 33.589905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427034, 33.921551, 32.872826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819942, 33.977924, 32.922283>,  <26.055687, 34.011749, 32.951958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819942, 33.977924, 32.922283>,  <25.427034, 33.921551, 32.872826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819942, 33.977924, 32.922283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183939, -0.852054, -0.490073,
		0.036278, 0.504125, -0.862869,
		0.982268, 0.140936, 0.123639,
		26.114622, 34.020206, 32.959373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870768, 33.897495, 32.228287>,  <25.427034, 33.921551, 32.872826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870768, 33.897495, 32.228287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075861, 33.751198, 32.538986>,  <26.198917, 33.663418, 32.725407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075861, 33.751198, 32.538986>,  <25.870768, 33.897495, 32.228287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075861, 33.751198, 32.538986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285154, -0.780815, -0.555892,
		0.809811, 0.506516, -0.296054,
		0.512732, -0.365746, 0.776747,
		26.229681, 33.641476, 32.772011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501436, 33.760040, 31.842934>,  <25.870768, 33.897495, 32.228287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501436, 33.760040, 31.842934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537033, 33.563244, 32.189350>,  <26.558392, 33.445168, 32.397202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537033, 33.563244, 32.189350>,  <26.501436, 33.760040, 31.842934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537033, 33.563244, 32.189350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424967, -0.767622, -0.479749,
		0.900823, 0.410734, 0.140766,
		0.088994, -0.491990, 0.866040,
		26.563732, 33.415646, 32.449162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141209, 33.542572, 31.815783>,  <26.501436, 33.760040, 31.842934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141209, 33.542572, 31.815783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979528, 33.317921, 32.104557>,  <26.882521, 33.183128, 32.277821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979528, 33.317921, 32.104557>,  <27.141209, 33.542572, 31.815783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979528, 33.317921, 32.104557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296115, -0.827128, -0.477677,
		0.865412, 0.020699, 0.500633,
		-0.404200, -0.561633, 0.721936,
		26.858269, 33.149429, 32.321136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643618, 32.982136, 32.024422>,  <27.141209, 33.542572, 31.815783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643618, 32.982136, 32.024422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287409, 32.834789, 32.131214>,  <27.073685, 32.746380, 32.195290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287409, 32.834789, 32.131214>,  <27.643618, 32.982136, 32.024422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287409, 32.834789, 32.131214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323756, -0.925415, -0.196951,
		0.319617, -0.088953, 0.943362,
		-0.890521, -0.368368, 0.266979,
		27.020252, 32.724277, 32.211308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737148, 32.355259, 32.414688>,  <27.643618, 32.982136, 32.024422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737148, 32.355259, 32.414688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388357, 32.377708, 32.220161>,  <27.179083, 32.391178, 32.103443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388357, 32.377708, 32.220161>,  <27.737148, 32.355259, 32.414688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388357, 32.377708, 32.220161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090234, -0.957959, -0.272348,
		-0.481160, -0.281363, 0.830253,
		-0.871976, 0.056126, -0.486320,
		27.126764, 32.394547, 32.074265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705164, 31.667788, 32.331684>,  <27.737148, 32.355259, 32.414688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705164, 31.667788, 32.331684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352724, 31.758020, 32.165417>,  <27.141260, 31.812160, 32.065659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352724, 31.758020, 32.165417>,  <27.705164, 31.667788, 32.331684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352724, 31.758020, 32.165417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070494, -0.931737, -0.356224,
		-0.467647, -0.284567, 0.836856,
		-0.881100, 0.225581, -0.415664,
		27.088394, 31.825695, 32.040718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190611, 31.119350, 32.388718>,  <27.705164, 31.667788, 32.331684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190611, 31.119350, 32.388718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065289, 31.333948, 32.075283>,  <26.990095, 31.462708, 31.887222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065289, 31.333948, 32.075283>,  <27.190611, 31.119350, 32.388718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065289, 31.333948, 32.075283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047846, -0.833003, -0.551196,
		-0.948447, -0.135201, 0.286653,
		-0.313305, 0.536495, -0.783590,
		26.971296, 31.494896, 31.840206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560871, 30.885088, 32.086426>,  <27.190611, 31.119350, 32.388718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560871, 30.885088, 32.086426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740429, 31.091175, 31.794386>,  <26.848164, 31.214828, 31.619164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740429, 31.091175, 31.794386>,  <26.560871, 30.885088, 32.086426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740429, 31.091175, 31.794386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049068, -0.830023, -0.555567,
		-0.892235, 0.213567, -0.397876,
		0.448897, 0.515220, -0.730096,
		26.875097, 31.245741, 31.575357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405325, 30.355099, 31.572884>,  <26.560871, 30.885088, 32.086426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405325, 30.355099, 31.572884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478281, 30.104263, 31.269966>,  <26.522055, 29.953762, 31.088215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478281, 30.104263, 31.269966>,  <26.405325, 30.355099, 31.572884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478281, 30.104263, 31.269966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790879, 0.364036, -0.491924,
		0.584162, 0.688650, -0.429555,
		0.182390, -0.627088, -0.757294,
		26.532997, 29.916138, 31.042778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666622, 30.764704, 30.986876>,  <26.405325, 30.355099, 31.572884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666622, 30.764704, 30.986876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479555, 30.423256, 30.895119>,  <26.367315, 30.218388, 30.840065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479555, 30.423256, 30.895119>,  <26.666622, 30.764704, 30.986876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479555, 30.423256, 30.895119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758107, 0.520807, -0.392471,
		0.454491, -0.009641, -0.890699,
		-0.467666, -0.853620, -0.229393,
		26.339254, 30.167170, 30.826302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940510, 31.155802, 30.429724>,  <26.666622, 30.764704, 30.986876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940510, 31.155802, 30.429724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599688, 31.272627, 30.603483>,  <26.395195, 31.342722, 30.707739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599688, 31.272627, 30.603483>,  <26.940510, 31.155802, 30.429724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599688, 31.272627, 30.603483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329462, 0.944099, 0.011476,
		-0.406764, 0.152896, -0.900648,
		-0.852055, 0.292061, 0.434399,
		26.344070, 31.360245, 30.733803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695826, 31.432615, 30.772821>,  <26.940510, 31.155802, 30.429724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695826, 31.432615, 30.772821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327393, 31.314331, 30.874142>,  <27.106333, 31.243361, 30.934935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327393, 31.314331, 30.874142>,  <27.695826, 31.432615, 30.772821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327393, 31.314331, 30.874142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142388, 0.861298, 0.487742,
		-0.362399, 0.413183, -0.835432,
		-0.921082, -0.295713, 0.253301,
		27.051067, 31.225616, 30.950132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211115, 31.981556, 30.646143>,  <27.695826, 31.432615, 30.772821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211115, 31.981556, 30.646143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040655, 31.731186, 30.907406>,  <26.938379, 31.580963, 31.064163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040655, 31.731186, 30.907406>,  <27.211115, 31.981556, 30.646143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040655, 31.731186, 30.907406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216135, 0.771534, 0.598349,
		-0.878454, 0.113817, -0.464074,
		-0.426151, -0.625924, 0.653157,
		26.912809, 31.543409, 31.103354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652689, 32.314350, 30.906118>,  <27.211115, 31.981556, 30.646143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652689, 32.314350, 30.906118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730261, 32.052624, 31.198490>,  <26.776804, 31.895588, 31.373913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730261, 32.052624, 31.198490>,  <26.652689, 32.314350, 30.906118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730261, 32.052624, 31.198490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104107, 0.727141, 0.678548,
		-0.975476, -0.207684, 0.072894,
		0.193928, -0.654319, 0.730930,
		26.788439, 31.856329, 31.417768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132191, 32.341873, 31.371645>,  <26.652689, 32.314350, 30.906118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132191, 32.341873, 31.371645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465342, 32.222580, 31.558138>,  <26.665232, 32.151005, 31.670034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465342, 32.222580, 31.558138>,  <26.132191, 32.341873, 31.371645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465342, 32.222580, 31.558138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168974, 0.665155, 0.727336,
		-0.527033, -0.684562, 0.503597,
		0.832877, -0.298235, 0.466232,
		26.715204, 32.133110, 31.698008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907160, 32.263859, 32.056515>,  <26.132191, 32.341873, 31.371645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907160, 32.263859, 32.056515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303278, 32.296467, 32.101536>,  <26.540949, 32.316032, 32.128548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303278, 32.296467, 32.101536>,  <25.907160, 32.263859, 32.056515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303278, 32.296467, 32.101536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138085, 0.668607, 0.730683,
		-0.015694, -0.739135, 0.673374,
		0.990296, 0.081515, 0.112557,
		26.600367, 32.320923, 32.135303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899628, 32.456722, 32.719975>,  <25.907160, 32.263859, 32.056515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899628, 32.456722, 32.719975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266958, 32.523624, 32.576473>,  <26.487356, 32.563766, 32.490372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266958, 32.523624, 32.576473>,  <25.899628, 32.456722, 32.719975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266958, 32.523624, 32.576473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069097, 0.824682, 0.561360,
		0.389747, -0.540300, 0.745770,
		0.918326, 0.167258, -0.358750,
		26.542456, 32.573803, 32.468849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384499, 32.532753, 33.319759>,  <25.899628, 32.456722, 32.719975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384499, 32.532753, 33.319759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486879, 32.726551, 32.985153>,  <26.548307, 32.842831, 32.784389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486879, 32.726551, 32.985153>,  <26.384499, 32.532753, 33.319759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486879, 32.726551, 32.985153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066725, 0.854418, 0.515284,
		0.964384, -0.187704, 0.186361,
		0.255952, 0.484497, -0.836511,
		26.563665, 32.871899, 32.734200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928261, 32.834366, 33.533592>,  <26.384499, 32.532753, 33.319759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928261, 32.834366, 33.533592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802103, 33.028229, 33.207249>,  <26.726408, 33.144547, 33.011440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802103, 33.028229, 33.207249>,  <26.928261, 32.834366, 33.533592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802103, 33.028229, 33.207249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001225, 0.859534, 0.511077,
		0.948960, 0.162190, -0.270498,
		-0.315393, 0.484660, -0.815862,
		26.707485, 33.173626, 32.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178329, 33.469677, 33.639210>,  <26.928261, 32.834366, 33.533592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178329, 33.469677, 33.639210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933689, 33.559402, 33.335728>,  <26.786905, 33.613239, 33.153641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933689, 33.559402, 33.335728>,  <27.178329, 33.469677, 33.639210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933689, 33.559402, 33.335728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083769, 0.935216, 0.344026,
		0.786719, 0.273962, -0.553189,
		-0.611602, 0.224312, -0.758701,
		26.750208, 33.626698, 33.108116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368748, 34.062408, 33.249592>,  <27.178329, 33.469677, 33.639210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368748, 34.062408, 33.249592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976568, 34.069012, 33.171162>,  <26.741261, 34.072975, 33.124104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976568, 34.069012, 33.171162>,  <27.368748, 34.062408, 33.249592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976568, 34.069012, 33.171162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074900, 0.890144, 0.449482,
		0.181954, 0.455381, -0.871505,
		-0.980450, 0.016510, -0.196073,
		26.682432, 34.073963, 33.112339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441019, 34.551586, 33.797012>,  <27.368748, 34.062408, 33.249592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441019, 34.551586, 33.797012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541885, 34.365719, 34.136539>,  <27.602406, 34.254200, 34.340256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541885, 34.365719, 34.136539>,  <27.441019, 34.551586, 33.797012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541885, 34.365719, 34.136539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112872, -0.857057, -0.502706,
		0.961079, 0.222572, -0.163671,
		0.252164, -0.464667, 0.848822,
		27.617535, 34.226318, 34.391186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186512, 34.095093, 33.694256>,  <27.441019, 34.551586, 33.797012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186512, 34.095093, 33.694256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881210, 33.953457, 33.910427>,  <27.698030, 33.868477, 34.040131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881210, 33.953457, 33.910427>,  <28.186512, 34.095093, 33.694256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881210, 33.953457, 33.910427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187492, -0.921842, -0.339195,
		0.618298, -0.157565, 0.769988,
		-0.763253, -0.354090, 0.540431,
		27.652235, 33.847229, 34.072556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507669, 33.598190, 34.049957>,  <28.186512, 34.095093, 33.694256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507669, 33.598190, 34.049957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121870, 33.544033, 33.959263>,  <27.890390, 33.511539, 33.904846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121870, 33.544033, 33.959263>,  <28.507669, 33.598190, 34.049957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121870, 33.544033, 33.959263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233896, -0.836578, -0.495409,
		-0.122611, -0.530855, 0.838546,
		-0.964499, -0.135390, -0.226738,
		27.832520, 33.503418, 33.891243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451712, 32.916653, 34.133484>,  <28.507669, 33.598190, 34.049957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451712, 32.916653, 34.133484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190769, 33.084484, 33.881012>,  <28.034204, 33.185184, 33.729530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190769, 33.084484, 33.881012>,  <28.451712, 32.916653, 34.133484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190769, 33.084484, 33.881012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307223, -0.614904, -0.726297,
		-0.692855, -0.667714, 0.272229,
		-0.652354, 0.419584, -0.631176,
		27.995062, 33.210358, 33.691658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789303, 32.967716, 34.824791>,  <28.451712, 32.916653, 34.133484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789303, 32.967716, 34.824791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409334, 32.954803, 34.949116>,  <28.181353, 32.947056, 35.023712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409334, 32.954803, 34.949116>,  <28.789303, 32.967716, 34.824791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409334, 32.954803, 34.949116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204837, 0.686814, 0.697373,
		-0.235985, 0.726116, -0.645807,
		-0.949923, -0.032284, 0.310813,
		28.124357, 32.945118, 35.042358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496595, 33.676250, 34.906563>,  <28.789303, 32.967716, 34.824791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496595, 33.676250, 34.906563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341129, 33.405228, 35.156319>,  <28.247850, 33.242615, 35.306171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341129, 33.405228, 35.156319>,  <28.496595, 33.676250, 34.906563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341129, 33.405228, 35.156319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264570, 0.567057, 0.780031,
		-0.882578, 0.468364, -0.041133,
		-0.388663, -0.677555, 0.624387,
		28.224531, 33.201962, 35.343636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327513, 33.689770, 35.721153>,  <28.496595, 33.676250, 34.906563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327513, 33.689770, 35.721153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452240, 33.335899, 35.582523>,  <28.527077, 33.123577, 35.499348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452240, 33.335899, 35.582523>,  <28.327513, 33.689770, 35.721153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452240, 33.335899, 35.582523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819144, 0.065488, 0.569837,
		-0.481426, -0.461579, 0.745100,
		0.311820, -0.884679, -0.346572,
		28.545786, 33.070496, 35.478550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329647, 34.410553, 35.308968>,  <28.327513, 33.689770, 35.721153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329647, 34.410553, 35.308968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645105, 34.169418, 35.260593>,  <28.834381, 34.024738, 35.231571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645105, 34.169418, 35.260593>,  <28.329647, 34.410553, 35.308968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645105, 34.169418, 35.260593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472832, 0.720367, -0.507446,
		0.393022, 0.343016, 0.853155,
		0.788647, -0.602836, -0.120931,
		28.881699, 33.988567, 35.224316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051800, 34.696266, 35.593208>,  <28.329647, 34.410553, 35.308968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051800, 34.696266, 35.593208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067635, 34.460945, 35.270138>,  <29.077135, 34.319752, 35.076298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067635, 34.460945, 35.270138>,  <29.051800, 34.696266, 35.593208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067635, 34.460945, 35.270138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520854, 0.701955, -0.485768,
		0.852727, -0.401448, 0.334209,
		0.039588, -0.588302, -0.807672,
		29.079512, 34.284454, 35.027836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736641, 34.730785, 35.266125>,  <29.051800, 34.696266, 35.593208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736641, 34.730785, 35.266125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500528, 34.593925, 34.973686>,  <29.358862, 34.511810, 34.798222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500528, 34.593925, 34.973686>,  <29.736641, 34.730785, 35.266125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500528, 34.593925, 34.973686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583295, 0.445279, -0.679333,
		0.557976, -0.827442, -0.063265,
		-0.590279, -0.342149, -0.731098,
		29.323444, 34.491280, 34.754356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162464, 34.551853, 34.649387>,  <29.736641, 34.730785, 35.266125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162464, 34.551853, 34.649387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791685, 34.588032, 34.503738>,  <29.569218, 34.609741, 34.416348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791685, 34.588032, 34.503738>,  <30.162464, 34.551853, 34.649387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791685, 34.588032, 34.503738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374778, 0.268826, -0.887285,
		0.017632, -0.958932, -0.283086,
		-0.926947, 0.090450, -0.364126,
		29.513601, 34.615166, 34.394501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145185, 34.036049, 34.028275>,  <30.162464, 34.551853, 34.649387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145185, 34.036049, 34.028275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902134, 34.353508, 34.016178>,  <29.756304, 34.543983, 34.008919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902134, 34.353508, 34.016178>,  <30.145185, 34.036049, 34.028275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902134, 34.353508, 34.016178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341912, 0.227027, -0.911896,
		-0.716858, -0.564433, -0.409305,
		-0.607628, 0.793646, -0.030240,
		29.719845, 34.591602, 34.007107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791653, 33.852852, 33.529041>,  <30.145185, 34.036049, 34.028275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791653, 33.852852, 33.529041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801210, 34.248512, 33.587025>,  <29.806944, 34.485909, 33.621815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801210, 34.248512, 33.587025>,  <29.791653, 33.852852, 33.529041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801210, 34.248512, 33.587025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491566, 0.114635, -0.863262,
		-0.870513, 0.091882, -0.483493,
		0.023893, 0.989149, 0.144957,
		29.808378, 34.545258, 33.630512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691525, 34.269661, 32.862572>,  <29.791653, 33.852852, 33.529041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691525, 34.269661, 32.862572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911615, 34.444061, 33.147430>,  <30.043669, 34.548702, 33.318348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911615, 34.444061, 33.147430>,  <29.691525, 34.269661, 32.862572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911615, 34.444061, 33.147430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773642, 0.054746, -0.631254,
		-0.314215, 0.898280, -0.307185,
		0.550225, 0.436000, 0.712149,
		30.076683, 34.574860, 33.361076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413027, 33.642406, 32.688194>,  <29.691525, 34.269661, 32.862572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413027, 33.642406, 32.688194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036858, 33.535492, 32.772251>,  <28.811155, 33.471344, 32.822685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036858, 33.535492, 32.772251>,  <29.413027, 33.642406, 32.688194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036858, 33.535492, 32.772251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254493, 0.143520, -0.956366,
		0.225469, -0.952868, -0.202993,
		-0.940424, -0.267292, 0.210139,
		28.754730, 33.455307, 32.835293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146923, 33.101810, 32.305889>,  <29.413027, 33.642406, 32.688194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146923, 33.101810, 32.305889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855921, 33.357704, 32.405067>,  <28.681320, 33.511242, 32.464577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855921, 33.357704, 32.405067>,  <29.146923, 33.101810, 32.305889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855921, 33.357704, 32.405067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087152, 0.272293, -0.958259,
		-0.680545, -0.718747, -0.142340,
		-0.727505, 0.639733, 0.247948,
		28.637669, 33.549625, 32.479450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580465, 33.122250, 31.832047>,  <29.146923, 33.101810, 32.305889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580465, 33.122250, 31.832047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601870, 33.495178, 31.975111>,  <28.614712, 33.718933, 32.060951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601870, 33.495178, 31.975111>,  <28.580465, 33.122250, 31.832047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601870, 33.495178, 31.975111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076847, 0.360957, -0.929411,
		-0.995606, 0.022250, 0.090962,
		0.053513, 0.932317, 0.357661,
		28.617924, 33.774872, 32.082409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203947, 33.394539, 31.436377>,  <28.580465, 33.122250, 31.832047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203947, 33.394539, 31.436377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378857, 33.716068, 31.597702>,  <28.483803, 33.908985, 31.694496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378857, 33.716068, 31.597702>,  <28.203947, 33.394539, 31.436377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378857, 33.716068, 31.597702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004997, 0.450623, -0.892700,
		-0.899316, 0.388337, 0.201061,
		0.437272, 0.803824, 0.403312,
		28.510038, 33.957214, 31.718695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735313, 33.796154, 31.332872>,  <28.203947, 33.394539, 31.436377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735313, 33.796154, 31.332872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082403, 33.992691, 31.362921>,  <28.290657, 34.110611, 31.380951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082403, 33.992691, 31.362921>,  <27.735313, 33.796154, 31.332872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082403, 33.992691, 31.362921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037831, 0.215984, -0.975664,
		-0.495607, 0.843763, 0.206002,
		0.867722, 0.491339, 0.075123,
		28.342720, 34.140091, 31.385458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682150, 34.377243, 30.909155>,  <27.735313, 33.796154, 31.332872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682150, 34.377243, 30.909155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078030, 34.369240, 30.965858>,  <28.315557, 34.364437, 30.999880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078030, 34.369240, 30.965858>,  <27.682150, 34.377243, 30.909155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078030, 34.369240, 30.965858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139853, 0.346769, -0.927466,
		-0.030602, 0.937737, 0.345995,
		0.989699, -0.020006, 0.141757,
		28.374939, 34.363239, 31.008385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911812, 34.912674, 30.550512>,  <27.682150, 34.377243, 30.909155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911812, 34.912674, 30.550512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241310, 34.690800, 30.597443>,  <28.439009, 34.557674, 30.625601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241310, 34.690800, 30.597443>,  <27.911812, 34.912674, 30.550512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241310, 34.690800, 30.597443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257692, 0.181974, -0.948936,
		0.505014, 0.811915, 0.292839,
		0.823745, -0.554688, 0.117325,
		28.488434, 34.524395, 30.632641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372223, 35.325928, 30.224831>,  <27.911812, 34.912674, 30.550512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372223, 35.325928, 30.224831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546556, 34.967560, 30.259193>,  <28.651155, 34.752541, 30.279812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546556, 34.967560, 30.259193>,  <28.372223, 35.325928, 30.224831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546556, 34.967560, 30.259193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487128, 0.154551, -0.859547,
		0.756807, 0.416466, 0.503786,
		0.435832, -0.895919, 0.085907,
		28.677305, 34.698784, 30.284966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160063, 35.379799, 30.226259>,  <28.372223, 35.325928, 30.224831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160063, 35.379799, 30.226259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042330, 35.019676, 30.098000>,  <28.971689, 34.803604, 30.021044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042330, 35.019676, 30.098000>,  <29.160063, 35.379799, 30.226259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042330, 35.019676, 30.098000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496862, 0.142453, -0.856058,
		0.816392, -0.411285, 0.405399,
		-0.294334, -0.900306, -0.320650,
		28.954029, 34.749584, 30.001804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723812, 35.128223, 29.938231>,  <29.160063, 35.379799, 30.226259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723812, 35.128223, 29.938231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415501, 34.926067, 29.783066>,  <29.230513, 34.804775, 29.689966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415501, 34.926067, 29.783066>,  <29.723812, 35.128223, 29.938231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415501, 34.926067, 29.783066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380360, 0.123417, -0.916567,
		0.511100, -0.854018, 0.097104,
		-0.770781, -0.505392, -0.387913,
		29.184267, 34.774448, 29.666693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953222, 34.582489, 29.532505>,  <29.723812, 35.128223, 29.938231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953222, 34.582489, 29.532505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583027, 34.645615, 29.394770>,  <29.360910, 34.683491, 29.312128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583027, 34.645615, 29.394770>,  <29.953222, 34.582489, 29.532505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583027, 34.645615, 29.394770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343083, -0.036002, -0.938615,
		-0.160527, -0.986812, -0.020826,
		-0.925487, 0.157818, -0.344338,
		29.305382, 34.692959, 29.291468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011648, 34.089993, 28.880655>,  <29.953222, 34.582489, 29.532505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011648, 34.089993, 28.880655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682659, 34.313717, 28.839254>,  <29.485266, 34.447952, 28.814413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682659, 34.313717, 28.839254>,  <30.011648, 34.089993, 28.880655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682659, 34.313717, 28.839254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264832, 0.215504, -0.939905,
		-0.503395, -0.800455, -0.325369,
		-0.822470, 0.559311, -0.103503,
		29.435919, 34.481510, 28.808203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661472, 33.824829, 28.246109>,  <30.011648, 34.089993, 28.880655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661472, 33.824829, 28.246109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527407, 34.194382, 28.319977>,  <29.446966, 34.416115, 28.364298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527407, 34.194382, 28.319977>,  <29.661472, 33.824829, 28.246109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527407, 34.194382, 28.319977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172750, 0.252945, -0.951933,
		-0.926187, -0.287153, -0.244380,
		-0.335165, 0.923884, 0.184669,
		29.426857, 34.471546, 28.375378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240385, 33.981808, 27.672585>,  <29.661472, 33.824829, 28.246109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240385, 33.981808, 27.672585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352720, 34.335125, 27.822741>,  <29.420120, 34.547115, 27.912834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352720, 34.335125, 27.822741>,  <29.240385, 33.981808, 27.672585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352720, 34.335125, 27.822741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236454, 0.315396, -0.919029,
		-0.930172, 0.346859, -0.120285,
		0.280836, 0.883297, 0.375389,
		29.436972, 34.600113, 27.935358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020891, 34.408955, 27.183577>,  <29.240385, 33.981808, 27.672585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020891, 34.408955, 27.183577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293119, 34.619144, 27.387814>,  <29.456457, 34.745258, 27.510355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293119, 34.619144, 27.387814>,  <29.020891, 34.408955, 27.183577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293119, 34.619144, 27.387814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289253, 0.447578, -0.846172,
		-0.673169, 0.723569, 0.152613,
		0.680570, 0.525473, 0.510590,
		29.497290, 34.776787, 27.540991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935759, 35.071918, 26.950603>,  <29.020891, 34.408955, 27.183577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935759, 35.071918, 26.950603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297516, 35.102207, 27.118574>,  <29.514570, 35.120380, 27.219357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297516, 35.102207, 27.118574>,  <28.935759, 35.071918, 26.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297516, 35.102207, 27.118574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262298, 0.677569, -0.687095,
		-0.336558, 0.731550, 0.592927,
		0.904394, 0.075724, 0.419926,
		29.568834, 35.124924, 27.244553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030155, 35.779652, 26.932789>,  <28.935759, 35.071918, 26.950603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030155, 35.779652, 26.932789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392185, 35.619499, 26.990101>,  <29.609404, 35.523407, 27.024488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392185, 35.619499, 26.990101>,  <29.030155, 35.779652, 26.932789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392185, 35.619499, 26.990101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366020, 0.561950, -0.741782,
		0.216482, 0.723813, 0.655157,
		0.905077, -0.400384, 0.143278,
		29.663708, 35.499386, 27.033085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453335, 36.384510, 26.971180>,  <29.030155, 35.779652, 26.932789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453335, 36.384510, 26.971180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684420, 36.081470, 26.849663>,  <29.823071, 35.899647, 26.776752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684420, 36.081470, 26.849663>,  <29.453335, 36.384510, 26.971180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684420, 36.081470, 26.849663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374403, 0.576679, -0.726129,
		0.725307, 0.305752, 0.616802,
		0.577712, -0.757600, -0.303795,
		29.857733, 35.854191, 26.758524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084497, 36.715843, 26.776405>,  <29.453335, 36.384510, 26.971180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084497, 36.715843, 26.776405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103302, 36.353577, 26.607853>,  <30.114586, 36.136215, 26.506721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103302, 36.353577, 26.607853>,  <30.084497, 36.715843, 26.776405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103302, 36.353577, 26.607853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461107, 0.393888, -0.795130,
		0.886098, -0.156920, 0.436127,
		0.047013, -0.905665, -0.421380,
		30.117407, 36.081879, 26.481440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756195, 36.784531, 26.525555>,  <30.084497, 36.715843, 26.776405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756195, 36.784531, 26.525555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566236, 36.491295, 26.330801>,  <30.452261, 36.315353, 26.213949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566236, 36.491295, 26.330801>,  <30.756195, 36.784531, 26.525555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566236, 36.491295, 26.330801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434339, 0.285928, -0.854163,
		0.765391, -0.617110, 0.182624,
		-0.474896, -0.733090, -0.486882,
		30.423767, 36.271366, 26.184736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237255, 36.480633, 26.005344>,  <30.756195, 36.784531, 26.525555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237255, 36.480633, 26.005344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874302, 36.376850, 25.873077>,  <30.656530, 36.314579, 25.793718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874302, 36.376850, 25.873077>,  <31.237255, 36.480633, 26.005344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874302, 36.376850, 25.873077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263387, 0.262086, -0.928406,
		0.327546, -0.929512, -0.169474,
		-0.907382, -0.259459, -0.330666,
		30.602087, 36.299011, 25.773878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311110, 36.280907, 25.303034>,  <31.237255, 36.480633, 26.005344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311110, 36.280907, 25.303034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911995, 36.282467, 25.276485>,  <30.672525, 36.283401, 25.260557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911995, 36.282467, 25.276485>,  <31.311110, 36.280907, 25.303034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911995, 36.282467, 25.276485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065156, 0.255880, -0.964510,
		0.013220, -0.966701, -0.255568,
		-0.997787, 0.003901, -0.066369,
		30.612659, 36.283638, 25.256575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010429, 35.930840, 24.661339>,  <31.311110, 36.280907, 25.303034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010429, 35.930840, 24.661339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729616, 36.187954, 24.783958>,  <30.561129, 36.342224, 24.857531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729616, 36.187954, 24.783958>,  <31.010429, 35.930840, 24.661339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729616, 36.187954, 24.783958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082170, 0.354471, -0.931450,
		-0.707386, -0.679099, -0.196033,
		-0.702035, 0.642787, 0.306550,
		30.519005, 36.380791, 24.875923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524921, 35.853882, 24.154665>,  <31.010429, 35.930840, 24.661339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524921, 35.853882, 24.154665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438969, 36.201942, 24.332048>,  <30.387396, 36.410778, 24.438478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438969, 36.201942, 24.332048>,  <30.524921, 35.853882, 24.154665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438969, 36.201942, 24.332048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101095, 0.431807, -0.896283,
		-0.971393, -0.237428, -0.004820,
		-0.214884, 0.870155, 0.443457,
		30.374504, 36.462990, 24.465086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909739, 36.189240, 23.783571>,  <30.524921, 35.853882, 24.154665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909739, 36.189240, 23.783571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070599, 36.491646, 23.990150>,  <30.167114, 36.673088, 24.114098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070599, 36.491646, 23.990150>,  <29.909739, 36.189240, 23.783571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070599, 36.491646, 23.990150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094961, 0.526585, -0.844802,
		-0.910636, 0.388778, 0.139974,
		0.402149, 0.756016, 0.516446,
		30.191242, 36.718449, 24.145084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473732, 36.825752, 23.626019>,  <29.909739, 36.189240, 23.783571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473732, 36.825752, 23.626019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845442, 36.913807, 23.744669>,  <30.068468, 36.966640, 23.815859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845442, 36.913807, 23.744669>,  <29.473732, 36.825752, 23.626019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845442, 36.913807, 23.744669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082112, 0.659825, -0.746920,
		-0.360146, 0.718451, 0.595083,
		0.929275, 0.220136, 0.296627,
		30.124224, 36.979847, 23.833656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483784, 37.456730, 23.468887>,  <29.473732, 36.825752, 23.626019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483784, 37.456730, 23.468887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870720, 37.360031, 23.499374>,  <30.102882, 37.302013, 23.517666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870720, 37.360031, 23.499374>,  <29.483784, 37.456730, 23.468887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870720, 37.360031, 23.499374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217167, 0.635348, -0.741061,
		0.130723, 0.733411, 0.667098,
		0.967342, -0.241745, 0.076218,
		30.160923, 37.287506, 23.522240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887024, 38.027870, 23.474438>,  <29.483784, 37.456730, 23.468887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887024, 38.027870, 23.474438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165506, 37.765377, 23.358055>,  <30.332596, 37.607880, 23.288225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165506, 37.765377, 23.358055>,  <29.887024, 38.027870, 23.474438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165506, 37.765377, 23.358055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373104, 0.677074, -0.634321,
		0.613260, 0.333063, 0.716227,
		0.696208, -0.656231, -0.290956,
		30.374369, 37.568508, 23.270769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512598, 38.393391, 23.453308>,  <29.887024, 38.027870, 23.474438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512598, 38.393391, 23.453308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552813, 38.082554, 23.204784>,  <30.576941, 37.896053, 23.055670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552813, 38.082554, 23.204784>,  <30.512598, 38.393391, 23.453308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552813, 38.082554, 23.204784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261947, 0.623115, -0.736961,
		0.959832, -0.088660, 0.266201,
		0.100535, -0.777089, -0.621309,
		30.582973, 37.849426, 23.018391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083841, 38.467316, 23.060026>,  <30.512598, 38.393391, 23.453308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083841, 38.467316, 23.060026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885454, 38.226715, 22.809519>,  <30.766422, 38.082355, 22.659214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885454, 38.226715, 22.809519>,  <31.083841, 38.467316, 23.060026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885454, 38.226715, 22.809519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320573, 0.543440, -0.775826,
		0.807000, -0.585549, -0.076702,
		-0.495967, -0.601503, -0.626267,
		30.736664, 38.046265, 22.621639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424658, 38.259293, 22.508814>,  <31.083841, 38.467316, 23.060026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424658, 38.259293, 22.508814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076624, 38.191841, 22.323551>,  <30.867804, 38.151371, 22.212393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076624, 38.191841, 22.323551>,  <31.424658, 38.259293, 22.508814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076624, 38.191841, 22.323551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281924, 0.600518, -0.748262,
		0.404312, -0.781628, -0.474963,
		-0.870087, -0.168628, -0.463157,
		30.815598, 38.141254, 22.184605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558270, 37.967285, 21.788738>,  <31.424658, 38.259293, 22.508814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558270, 37.967285, 21.788738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186722, 38.115444, 21.787779>,  <30.963793, 38.204338, 21.787203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186722, 38.115444, 21.787779>,  <31.558270, 37.967285, 21.788738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186722, 38.115444, 21.787779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203138, 0.503987, -0.839483,
		-0.309730, -0.780260, -0.543381,
		-0.928872, 0.370395, -0.002401,
		30.908060, 38.226562, 21.787058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425243, 38.044300, 21.115458>,  <31.558270, 37.967285, 21.788738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425243, 38.044300, 21.115458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166401, 38.293022, 21.291914>,  <31.011095, 38.442257, 21.397789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166401, 38.293022, 21.291914>,  <31.425243, 38.044300, 21.115458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166401, 38.293022, 21.291914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265148, 0.726055, -0.634461,
		-0.714808, -0.293596, -0.634706,
		-0.647106, 0.621809, 0.441143,
		30.972269, 38.479565, 21.424257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052250, 38.363770, 20.523008>,  <31.425243, 38.044300, 21.115458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052250, 38.363770, 20.523008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988092, 38.611225, 20.830662>,  <30.949598, 38.759697, 21.015253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988092, 38.611225, 20.830662>,  <31.052250, 38.363770, 20.523008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988092, 38.611225, 20.830662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289477, 0.774439, -0.562537,
		-0.943651, 0.132419, -0.303295,
		-0.160393, 0.618635, 0.769132,
		30.939974, 38.796814, 21.061401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644392, 38.920513, 20.232027>,  <31.052250, 38.363770, 20.523008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644392, 38.920513, 20.232027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817051, 39.062984, 20.563524>,  <30.920647, 39.148468, 20.762423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817051, 39.062984, 20.563524>,  <30.644392, 38.920513, 20.232027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817051, 39.062984, 20.563524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104801, 0.892717, -0.438261,
		-0.895933, 0.276028, 0.348012,
		0.431648, 0.356181, 0.828743,
		30.946545, 39.169838, 20.812147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502905, 39.590130, 20.269672>,  <30.644392, 38.920513, 20.232027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502905, 39.590130, 20.269672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781687, 39.612194, 20.555668>,  <30.948956, 39.625431, 20.727266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781687, 39.612194, 20.555668>,  <30.502905, 39.590130, 20.269672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781687, 39.612194, 20.555668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163120, 0.958707, -0.232967,
		-0.698317, 0.278996, 0.659177,
		0.696954, 0.055160, 0.714991,
		30.990772, 39.628742, 20.770164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358109, 40.156685, 20.692421>,  <30.502905, 39.590130, 20.269672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358109, 40.156685, 20.692421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750216, 40.083012, 20.721130>,  <30.985479, 40.038807, 20.738356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750216, 40.083012, 20.721130>,  <30.358109, 40.156685, 20.692421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750216, 40.083012, 20.721130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196955, 0.940952, -0.275350,
		-0.016821, 0.284052, 0.958661,
		0.980268, -0.184181, 0.071773,
		31.044296, 40.027756, 20.742662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633604, 40.772152, 20.899052>,  <30.358109, 40.156685, 20.692421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633604, 40.772152, 20.899052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939453, 40.570667, 20.738237>,  <31.122963, 40.449776, 20.641748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939453, 40.570667, 20.738237>,  <30.633604, 40.772152, 20.899052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939453, 40.570667, 20.738237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359334, 0.851053, -0.382869,
		0.535009, 0.148284, 0.831732,
		0.764621, -0.503707, -0.402037,
		31.168839, 40.419556, 20.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238192, 41.017601, 21.223040>,  <30.633604, 40.772152, 20.899052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238192, 41.017601, 21.223040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327812, 40.851440, 20.870394>,  <31.381584, 40.751743, 20.658806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327812, 40.851440, 20.870394>,  <31.238192, 41.017601, 21.223040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327812, 40.851440, 20.870394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324591, 0.884770, -0.334399,
		0.918935, -0.211240, 0.333071,
		0.224052, -0.415403, -0.881613,
		31.395027, 40.726818, 20.605909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848173, 41.446758, 21.018845>,  <31.238192, 41.017601, 21.223040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848173, 41.446758, 21.018845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750925, 41.238739, 20.691322>,  <31.692577, 41.113926, 20.494808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750925, 41.238739, 20.691322>,  <31.848173, 41.446758, 21.018845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750925, 41.238739, 20.691322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340134, 0.744828, -0.574056,
		0.908406, -0.418067, -0.004195,
		-0.243119, -0.520049, -0.818805,
		31.677990, 41.082726, 20.445681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436573, 41.507069, 20.548626>,  <31.848173, 41.446758, 21.018845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436573, 41.507069, 20.548626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129936, 41.409973, 20.310831>,  <31.945953, 41.351715, 20.168154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129936, 41.409973, 20.310831>,  <32.436573, 41.507069, 20.548626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129936, 41.409973, 20.310831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258435, 0.730878, -0.631687,
		0.587834, -0.637882, -0.497552,
		-0.766592, -0.242742, -0.594486,
		31.899960, 41.337151, 20.132484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751373, 41.434155, 19.760248>,  <32.436573, 41.507069, 20.548626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751373, 41.434155, 19.760248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356750, 41.485359, 19.719629>,  <32.119976, 41.516083, 19.695257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356750, 41.485359, 19.719629>,  <32.751373, 41.434155, 19.760248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356750, 41.485359, 19.719629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159458, 0.618590, -0.769363,
		-0.035673, -0.775215, -0.630689,
		-0.986560, 0.128014, -0.101547,
		32.060783, 41.523762, 19.689165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572514, 41.479622, 19.009350>,  <32.751373, 41.434155, 19.760248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572514, 41.479622, 19.009350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265018, 41.645943, 19.203732>,  <32.080521, 41.745735, 19.320360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265018, 41.645943, 19.203732>,  <32.572514, 41.479622, 19.009350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265018, 41.645943, 19.203732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033809, 0.732342, -0.680097,
		-0.638671, -0.539246, -0.548920,
		-0.768737, 0.415800, 0.485957,
		32.034397, 41.770683, 19.349518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030617, 41.505905, 18.508804>,  <32.572514, 41.479622, 19.009350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030617, 41.505905, 18.508804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954176, 41.778446, 18.791431>,  <31.908312, 41.941971, 18.961008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954176, 41.778446, 18.791431>,  <32.030617, 41.505905, 18.508804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954176, 41.778446, 18.791431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193699, 0.679503, -0.707641,
		-0.962269, -0.272093, 0.002122,
		-0.191102, 0.681352, 0.706569,
		31.896845, 41.982853, 19.003403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388418, 41.788754, 18.315363>,  <32.030617, 41.505905, 18.508804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388418, 41.788754, 18.315363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557421, 42.064571, 18.550655>,  <31.658823, 42.230064, 18.691830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557421, 42.064571, 18.550655>,  <31.388418, 41.788754, 18.315363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557421, 42.064571, 18.550655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115191, 0.684591, -0.719768,
		-0.899010, 0.236348, 0.368674,
		0.422507, 0.689547, 0.588229,
		31.684174, 42.271435, 18.727123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919764, 42.033295, 17.750519>,  <31.388418, 41.788754, 18.315363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919764, 42.033295, 17.750519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092216, 41.679058, 17.681416>,  <31.195688, 41.466515, 17.639954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092216, 41.679058, 17.681416>,  <30.919764, 42.033295, 17.750519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092216, 41.679058, 17.681416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721014, -0.223030, -0.656046,
		0.542461, 0.407406, -0.734682,
		0.431133, -0.885595, -0.172760,
		31.221556, 41.413380, 17.629587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887215, 42.832783, 17.656908>,  <30.919764, 42.033295, 17.750519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887215, 42.832783, 17.656908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997805, 42.883110, 18.038008>,  <31.064159, 42.913307, 18.266668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997805, 42.883110, 18.038008>,  <30.887215, 42.832783, 17.656908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997805, 42.883110, 18.038008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720312, 0.683406, 0.118775,
		-0.636170, -0.719115, 0.279574,
		0.276475, 0.125819, 0.952749,
		31.080748, 42.920856, 18.323832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340809, 42.645943, 18.192451>,  <30.887215, 42.832783, 17.656908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340809, 42.645943, 18.192451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583361, 42.959064, 18.248331>,  <30.728891, 43.146938, 18.281858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583361, 42.959064, 18.248331>,  <30.340809, 42.645943, 18.192451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583361, 42.959064, 18.248331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785926, 0.616722, -0.044425,
		-0.120933, -0.082857, 0.989197,
		0.606378, 0.782808, 0.139701,
		30.765274, 43.193909, 18.290241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263737, 43.056473, 18.735846>,  <30.340809, 42.645943, 18.192451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263737, 43.056473, 18.735846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334553, 43.323601, 18.446661>,  <30.377043, 43.483879, 18.273149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334553, 43.323601, 18.446661>,  <30.263737, 43.056473, 18.735846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334553, 43.323601, 18.446661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874728, 0.443460, 0.195432,
		0.451119, 0.597799, 0.662667,
		0.177038, 0.667817, -0.722965,
		30.387665, 43.523945, 18.229773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213873, 43.825130, 18.818237>,  <30.263737, 43.056473, 18.735846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213873, 43.825130, 18.818237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067600, 43.784637, 18.448151>,  <29.979837, 43.760342, 18.226099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067600, 43.784637, 18.448151>,  <30.213873, 43.825130, 18.818237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067600, 43.784637, 18.448151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718050, 0.663159, 0.211243,
		0.592183, 0.741601, -0.315194,
		-0.365682, -0.101231, -0.925218,
		29.957895, 43.754269, 18.170586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767195, 44.115868, 18.435659>,  <30.213873, 43.825130, 18.818237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767195, 44.115868, 18.435659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653435, 44.499168, 18.447519>,  <30.585178, 44.729149, 18.454636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653435, 44.499168, 18.447519>,  <30.767195, 44.115868, 18.435659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653435, 44.499168, 18.447519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223780, 0.036278, 0.973964,
		0.932223, 0.283630, -0.224755,
		-0.284400, 0.958247, 0.029651,
		30.568115, 44.786644, 18.456415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343401, 44.350616, 18.972298>,  <30.767195, 44.115868, 18.435659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343401, 44.350616, 18.972298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968496, 44.486099, 18.939260>,  <30.743553, 44.567387, 18.919437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968496, 44.486099, 18.939260>,  <31.343401, 44.350616, 18.972298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968496, 44.486099, 18.939260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122917, -0.099346, 0.987432,
		0.326241, 0.935634, 0.134745,
		-0.937261, 0.338703, -0.082595,
		30.687319, 44.587711, 18.914482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138441, 45.010960, 19.458902>,  <31.343401, 44.350616, 18.972298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138441, 45.010960, 19.458902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836489, 44.757416, 19.391512>,  <30.655317, 44.605289, 19.351078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836489, 44.757416, 19.391512>,  <31.138441, 45.010960, 19.458902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836489, 44.757416, 19.391512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190135, -0.034348, 0.981157,
		-0.627699, 0.772688, -0.094590,
		-0.754879, -0.633856, -0.168476,
		30.610025, 44.567261, 19.340969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827633, 45.132477, 20.066689>,  <31.138441, 45.010960, 19.458902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827633, 45.132477, 20.066689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689522, 44.812092, 19.871042>,  <30.606655, 44.619862, 19.753654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689522, 44.812092, 19.871042>,  <30.827633, 45.132477, 20.066689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689522, 44.812092, 19.871042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315098, -0.391980, 0.864329,
		-0.884023, 0.452555, -0.117040,
		-0.345279, -0.800966, -0.489118,
		30.585938, 44.571800, 19.724306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159382, 45.140678, 20.290070>,  <30.827633, 45.132477, 20.066689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159382, 45.140678, 20.290070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266569, 44.776009, 20.165464>,  <30.330881, 44.557205, 20.090700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266569, 44.776009, 20.165464>,  <30.159382, 45.140678, 20.290070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266569, 44.776009, 20.165464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509265, -0.408513, 0.757474,
		-0.817828, -0.044334, -0.573752,
		0.267967, -0.911675, -0.311515,
		30.346960, 44.502506, 20.072010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593466, 44.668457, 20.209570>,  <30.159382, 45.140678, 20.290070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593466, 44.668457, 20.209570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888910, 44.402294, 20.252819>,  <30.066177, 44.242596, 20.278769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888910, 44.402294, 20.252819>,  <29.593466, 44.668457, 20.209570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888910, 44.402294, 20.252819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540461, -0.488620, 0.684946,
		-0.402936, -0.564344, -0.720526,
		0.738609, -0.665406, 0.108123,
		30.110493, 44.202671, 20.285255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259798, 44.043186, 20.510353>,  <29.593466, 44.668457, 20.209570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259798, 44.043186, 20.510353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651487, 43.987644, 20.569469>,  <29.886501, 43.954319, 20.604940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651487, 43.987644, 20.569469>,  <29.259798, 44.043186, 20.510353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651487, 43.987644, 20.569469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193105, -0.415998, 0.888626,
		-0.061904, -0.898702, -0.434168,
		0.979223, -0.138850, 0.147792,
		29.945255, 43.945988, 20.613808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408951, 43.332554, 20.696495>,  <29.259798, 44.043186, 20.510353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408951, 43.332554, 20.696495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714724, 43.546268, 20.840818>,  <29.898188, 43.674496, 20.927412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714724, 43.546268, 20.840818>,  <29.408951, 43.332554, 20.696495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714724, 43.546268, 20.840818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067256, -0.490510, 0.868836,
		0.641189, -0.688431, -0.339026,
		0.764430, 0.534287, 0.360811,
		29.944052, 43.706554, 20.949062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988134, 42.896221, 20.839958>,  <29.408951, 43.332554, 20.696495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988134, 42.896221, 20.839958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007311, 43.220440, 21.073439>,  <30.018816, 43.414970, 21.213528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007311, 43.220440, 21.073439>,  <29.988134, 42.896221, 20.839958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007311, 43.220440, 21.073439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099757, -0.577568, 0.810225,
		0.993856, -0.097072, 0.053168,
		0.047942, 0.810551, 0.583703,
		30.021694, 43.463604, 21.248550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472403, 42.654232, 21.430483>,  <29.988134, 42.896221, 20.839958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472403, 42.654232, 21.430483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284517, 42.992989, 21.530197>,  <30.171785, 43.196243, 21.590027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284517, 42.992989, 21.530197>,  <30.472403, 42.654232, 21.430483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284517, 42.992989, 21.530197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027281, -0.296166, 0.954747,
		0.882396, 0.441658, 0.162218,
		-0.469715, 0.846891, 0.249287,
		30.143602, 43.247055, 21.604982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888493, 42.788906, 21.917244>,  <30.472403, 42.654232, 21.430483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888493, 42.788906, 21.917244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563166, 43.014915, 21.972754>,  <30.367970, 43.150520, 22.006060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563166, 43.014915, 21.972754>,  <30.888493, 42.788906, 21.917244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563166, 43.014915, 21.972754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016278, -0.216328, 0.976185,
		0.581593, 0.796207, 0.166746,
		-0.813317, 0.565028, 0.138775,
		30.319170, 43.184425, 22.014385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995615, 43.163177, 22.498011>,  <30.888493, 42.788906, 21.917244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995615, 43.163177, 22.498011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597284, 43.185394, 22.469040>,  <30.358286, 43.198727, 22.451658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597284, 43.185394, 22.469040>,  <30.995615, 43.163177, 22.498011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597284, 43.185394, 22.469040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080809, -0.167627, 0.982533,
		0.042434, 0.984285, 0.171416,
		-0.995826, 0.055545, -0.072426,
		30.298536, 43.202057, 22.447311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831322, 43.631245, 22.986351>,  <30.995615, 43.163177, 22.498011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831322, 43.631245, 22.986351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493946, 43.428452, 22.915276>,  <30.291521, 43.306774, 22.872631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493946, 43.428452, 22.915276>,  <30.831322, 43.631245, 22.986351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493946, 43.428452, 22.915276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197663, -0.014684, 0.980160,
		-0.499538, 0.861828, -0.087828,
		-0.843440, -0.506987, -0.177687,
		30.240913, 43.276356, 22.861969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337811, 43.811028, 23.591606>,  <30.831322, 43.631245, 22.986351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337811, 43.811028, 23.591606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196951, 43.470093, 23.436937>,  <30.112434, 43.265533, 23.344135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196951, 43.470093, 23.436937>,  <30.337811, 43.811028, 23.591606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196951, 43.470093, 23.436937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138763, -0.361025, 0.922174,
		-0.925600, 0.378400, 0.008863,
		-0.352151, -0.852335, -0.386673,
		30.091307, 43.214394, 23.320936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750349, 43.719444, 23.928154>,  <30.337811, 43.811028, 23.591606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750349, 43.719444, 23.928154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873470, 43.362099, 23.797209>,  <29.947342, 43.147694, 23.718641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873470, 43.362099, 23.797209>,  <29.750349, 43.719444, 23.928154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873470, 43.362099, 23.797209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166669, -0.389375, 0.905874,
		-0.936739, -0.224268, -0.268746,
		0.307801, -0.893359, -0.327364,
		29.965811, 43.094090, 23.698999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349846, 43.253868, 24.370678>,  <29.750349, 43.719444, 23.928154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349846, 43.253868, 24.370678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654043, 43.053104, 24.205881>,  <29.836561, 42.932644, 24.107002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654043, 43.053104, 24.205881>,  <29.349846, 43.253868, 24.370678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654043, 43.053104, 24.205881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035158, -0.601713, 0.797938,
		-0.648398, -0.621308, -0.439950,
		0.760489, -0.501914, -0.411994,
		29.882191, 42.902531, 24.082283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060448, 42.541035, 24.247557>,  <29.349846, 43.253868, 24.370678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060448, 42.541035, 24.247557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459232, 42.510212, 24.242916>,  <29.698503, 42.491718, 24.240131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459232, 42.510212, 24.242916>,  <29.060448, 42.541035, 24.247557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459232, 42.510212, 24.242916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047516, -0.719178, 0.693199,
		-0.061758, -0.690540, -0.720653,
		0.996960, -0.077053, -0.011603,
		29.758320, 42.487095, 24.239435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163305, 41.911556, 24.099779>,  <29.060448, 42.541035, 24.247557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163305, 41.911556, 24.099779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508947, 42.006645, 24.277233>,  <29.716333, 42.063698, 24.383705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508947, 42.006645, 24.277233>,  <29.163305, 41.911556, 24.099779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508947, 42.006645, 24.277233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060408, -0.826078, 0.560309,
		0.499672, -0.510965, -0.699459,
		0.864106, 0.237718, 0.443634,
		29.768179, 42.077961, 24.410324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758942, 41.392326, 24.023878>,  <29.163305, 41.911556, 24.099779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758942, 41.392326, 24.023878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872778, 41.617779, 24.334061>,  <29.941080, 41.753048, 24.520170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872778, 41.617779, 24.334061>,  <29.758942, 41.392326, 24.023878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872778, 41.617779, 24.334061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027464, -0.813367, 0.581102,
		0.958255, -0.144079, -0.246957,
		0.284592, 0.563627, 0.775457,
		29.958155, 41.786865, 24.566698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170143, 40.938385, 24.390350>,  <29.758942, 41.392326, 24.023878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170143, 40.938385, 24.390350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105167, 41.242573, 24.641840>,  <30.066181, 41.425087, 24.792734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105167, 41.242573, 24.641840>,  <30.170143, 40.938385, 24.390350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105167, 41.242573, 24.641840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103381, -0.620562, 0.777312,
		0.981288, 0.191266, 0.022186,
		-0.162441, 0.760473, 0.628724,
		30.056435, 41.470715, 24.830458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558886, 40.802967, 24.871916>,  <30.170143, 40.938385, 24.390350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558886, 40.802967, 24.871916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312389, 41.065319, 25.046305>,  <30.164492, 41.222729, 25.150938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312389, 41.065319, 25.046305>,  <30.558886, 40.802967, 24.871916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312389, 41.065319, 25.046305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019234, -0.540877, 0.840882,
		0.787324, 0.526570, 0.320694,
		-0.616239, 0.655878, 0.435974,
		30.127518, 41.262081, 25.177097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831467, 40.914997, 25.527063>,  <30.558886, 40.802967, 24.871916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831467, 40.914997, 25.527063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439156, 40.992592, 25.535501>,  <30.203770, 41.039150, 25.540564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439156, 40.992592, 25.535501>,  <30.831467, 40.914997, 25.527063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439156, 40.992592, 25.535501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052707, -0.367453, 0.928548,
		0.187880, 0.909586, 0.370613,
		-0.980777, 0.193990, 0.021096,
		30.144922, 41.050789, 25.541830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734613, 40.978138, 26.187956>,  <30.831467, 40.914997, 25.527063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734613, 40.978138, 26.187956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358454, 40.933239, 26.059553>,  <30.132757, 40.906300, 25.982512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358454, 40.933239, 26.059553>,  <30.734613, 40.978138, 26.187956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358454, 40.933239, 26.059553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247042, -0.423219, 0.871697,
		-0.233699, 0.899048, 0.370267,
		-0.940401, -0.112243, -0.321009,
		30.076334, 40.899567, 25.963251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251925, 41.235703, 26.706175>,  <30.734613, 40.978138, 26.187956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251925, 41.235703, 26.706175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020294, 40.997036, 26.483946>,  <29.881315, 40.853836, 26.350609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020294, 40.997036, 26.483946>,  <30.251925, 41.235703, 26.706175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020294, 40.997036, 26.483946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411514, -0.374357, 0.830971,
		-0.703793, 0.709823, -0.028753,
		-0.579078, -0.596664, -0.555573,
		29.846571, 40.818035, 26.317274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596815, 41.272312, 27.064363>,  <30.251925, 41.235703, 26.706175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596815, 41.272312, 27.064363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567343, 40.964043, 26.811180>,  <29.549660, 40.779079, 26.659271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567343, 40.964043, 26.811180>,  <29.596815, 41.272312, 27.064363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567343, 40.964043, 26.811180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662825, -0.436373, 0.608476,
		-0.745141, 0.464373, -0.478668,
		-0.073682, -0.770672, -0.632957,
		29.545238, 40.732841, 26.621292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845213, 41.135494, 27.128067>,  <29.596815, 41.272312, 27.064363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845213, 41.135494, 27.128067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073822, 40.827934, 27.013418>,  <29.210987, 40.643398, 26.944630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073822, 40.827934, 27.013418>,  <28.845213, 41.135494, 27.128067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073822, 40.827934, 27.013418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573565, -0.624112, 0.530573,
		-0.586841, -0.138841, -0.797710,
		0.571525, -0.768900, -0.286620,
		29.245279, 40.597263, 26.927431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358912, 40.637882, 26.817135>,  <28.845213, 41.135494, 27.128067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358912, 40.637882, 26.817135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680834, 40.426231, 26.924696>,  <28.873987, 40.299240, 26.989233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680834, 40.426231, 26.924696>,  <28.358912, 40.637882, 26.817135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680834, 40.426231, 26.924696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592766, -0.693470, 0.409547,
		-0.030226, -0.489003, -0.871758,
		0.804807, -0.529128, 0.268903,
		28.922276, 40.267494, 27.005367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247810, 39.976791, 26.485374>,  <28.358912, 40.637882, 26.817135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247810, 39.976791, 26.485374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512314, 39.956150, 26.784727>,  <28.671015, 39.943764, 26.964338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512314, 39.956150, 26.784727>,  <28.247810, 39.976791, 26.485374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512314, 39.956150, 26.784727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564252, -0.691615, 0.450875,
		0.494326, -0.720421, -0.486452,
		0.661258, -0.051602, 0.748382,
		28.710691, 39.940670, 27.009241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216856, 39.255375, 26.705025>,  <28.247810, 39.976791, 26.485374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216856, 39.255375, 26.705025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413866, 39.426571, 27.008141>,  <28.532072, 39.529289, 27.190010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413866, 39.426571, 27.008141>,  <28.216856, 39.255375, 26.705025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413866, 39.426571, 27.008141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402600, -0.659909, 0.634376,
		0.771578, -0.617532, -0.152713,
		0.492525, 0.427988, 0.757790,
		28.561623, 39.554966, 27.235477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557861, 38.687481, 26.983553>,  <28.216856, 39.255375, 26.705025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557861, 38.687481, 26.983553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565544, 38.956284, 27.279671>,  <28.570154, 39.117565, 27.457342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565544, 38.956284, 27.279671>,  <28.557861, 38.687481, 26.983553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565544, 38.956284, 27.279671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393651, -0.675543, 0.623443,
		0.919059, -0.303391, 0.251563,
		0.019205, 0.672009, 0.740294,
		28.571306, 39.157887, 27.501759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634705, 38.297657, 27.478008>,  <28.557861, 38.687481, 26.983553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634705, 38.297657, 27.478008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547958, 38.619938, 27.698488>,  <28.495911, 38.813305, 27.830776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547958, 38.619938, 27.698488>,  <28.634705, 38.297657, 27.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547958, 38.619938, 27.698488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303838, -0.592298, 0.746234,
		0.927713, -0.005643, 0.373251,
		-0.216865, 0.805699, 0.551198,
		28.482899, 38.861649, 27.863848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935265, 38.123386, 28.178362>,  <28.634705, 38.297657, 27.478008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935265, 38.123386, 28.178362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696634, 38.440006, 28.231350>,  <28.553455, 38.629978, 28.263144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696634, 38.440006, 28.231350>,  <28.935265, 38.123386, 28.178362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696634, 38.440006, 28.231350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400219, -0.436491, 0.805792,
		0.695645, 0.427699, 0.577193,
		-0.596575, 0.791549, 0.132470,
		28.517662, 38.677471, 28.271091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998219, 38.449570, 28.914896>,  <28.935265, 38.123386, 28.178362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998219, 38.449570, 28.914896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631025, 38.527916, 28.776941>,  <28.410709, 38.574924, 28.694168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631025, 38.527916, 28.776941>,  <28.998219, 38.449570, 28.914896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631025, 38.527916, 28.776941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394873, -0.369784, 0.841032,
		0.037196, 0.908238, 0.416797,
		-0.917982, 0.195865, -0.344885,
		28.355631, 38.586674, 28.673475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714735, 38.817673, 29.460049>,  <28.998219, 38.449570, 28.914896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714735, 38.817673, 29.460049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437210, 38.664097, 29.216337>,  <28.270695, 38.571953, 29.070110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437210, 38.664097, 29.216337>,  <28.714735, 38.817673, 29.460049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437210, 38.664097, 29.216337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286226, -0.629329, 0.722510,
		-0.660833, 0.675677, 0.326743,
		-0.693812, -0.383936, -0.609278,
		28.229067, 38.548916, 29.033554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027790, 38.862125, 29.783274>,  <28.714735, 38.817673, 29.460049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027790, 38.862125, 29.783274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916866, 38.595394, 29.506598>,  <27.850311, 38.435356, 29.340591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916866, 38.595394, 29.506598>,  <28.027790, 38.862125, 29.783274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916866, 38.595394, 29.506598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415670, -0.565792, 0.712108,
		-0.866209, 0.484990, -0.120282,
		-0.277310, -0.666831, -0.691690,
		27.833673, 38.395344, 29.299091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265926, 38.713535, 29.900370>,  <28.027790, 38.862125, 29.783274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265926, 38.713535, 29.900370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443329, 38.410957, 29.708080>,  <27.549770, 38.229412, 29.592707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443329, 38.410957, 29.708080>,  <27.265926, 38.713535, 29.900370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443329, 38.410957, 29.708080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242788, -0.617704, 0.747995,
		-0.862761, -0.215025, -0.457610,
		0.443505, -0.756444, -0.480726,
		27.576380, 38.184025, 29.563862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817137, 38.120930, 30.121389>,  <27.265926, 38.713535, 29.900370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817137, 38.120930, 30.121389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152267, 37.954578, 29.979918>,  <27.353346, 37.854767, 29.895035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152267, 37.954578, 29.979918>,  <26.817137, 38.120930, 30.121389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152267, 37.954578, 29.979918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151923, -0.799865, 0.580633,
		-0.524368, -0.432739, -0.733332,
		0.837829, -0.415875, -0.353680,
		27.403616, 37.829815, 29.873814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665859, 37.351902, 29.983124>,  <26.817137, 38.120930, 30.121389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665859, 37.351902, 29.983124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061171, 37.381794, 30.036369>,  <27.298357, 37.399731, 30.068316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061171, 37.381794, 30.036369>,  <26.665859, 37.351902, 29.983124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061171, 37.381794, 30.036369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037501, -0.726405, 0.686243,
		0.147978, -0.683192, -0.715088,
		0.988279, 0.074732, 0.133112,
		27.357655, 37.404213, 30.076303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905931, 36.643421, 30.065668>,  <26.665859, 37.351902, 29.983124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905931, 36.643421, 30.065668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189487, 36.867432, 30.237177>,  <27.359621, 37.001839, 30.340082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189487, 36.867432, 30.237177>,  <26.905931, 36.643421, 30.065668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189487, 36.867432, 30.237177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091931, -0.676093, 0.731059,
		0.699302, -0.478823, -0.530759,
		0.708891, 0.560024, 0.428774,
		27.402155, 37.035439, 30.365808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395258, 36.174618, 30.272364>,  <26.905931, 36.643421, 30.065668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395258, 36.174618, 30.272364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455244, 36.501389, 30.495127>,  <27.491236, 36.697449, 30.628784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455244, 36.501389, 30.495127>,  <27.395258, 36.174618, 30.272364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455244, 36.501389, 30.495127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141331, -0.575207, 0.805706,
		0.978538, -0.042118, -0.201717,
		0.149964, 0.816923, 0.556910,
		27.500233, 36.746464, 30.662199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103680, 36.108192, 30.566069>,  <27.395258, 36.174618, 30.272364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103680, 36.108192, 30.566069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897434, 36.352371, 30.806568>,  <27.773687, 36.498878, 30.950869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897434, 36.352371, 30.806568>,  <28.103680, 36.108192, 30.566069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897434, 36.352371, 30.806568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047398, -0.680324, 0.731377,
		0.855511, 0.405604, 0.321849,
		-0.515611, 0.610446, 0.601249,
		27.742750, 36.535503, 30.986942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452921, 36.151184, 31.195061>,  <28.103680, 36.108192, 30.566069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452921, 36.151184, 31.195061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097773, 36.272915, 31.333090>,  <27.884684, 36.345951, 31.415907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097773, 36.272915, 31.333090>,  <28.452921, 36.151184, 31.195061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097773, 36.272915, 31.333090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104150, -0.597597, 0.795003,
		0.448154, 0.741798, 0.498893,
		-0.887869, 0.304324, 0.345074,
		27.831411, 36.364212, 31.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502876, 35.999657, 31.841402>,  <28.452921, 36.151184, 31.195061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502876, 35.999657, 31.841402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111376, 36.081432, 31.847687>,  <27.876474, 36.130497, 31.851458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111376, 36.081432, 31.847687>,  <28.502876, 35.999657, 31.841402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111376, 36.081432, 31.847687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098481, -0.535917, 0.838507,
		0.179843, 0.819144, 0.544664,
		-0.978753, 0.204439, 0.015711,
		27.817749, 36.142765, 31.852400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350227, 36.293747, 32.491890>,  <28.502876, 35.999657, 31.841402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350227, 36.293747, 32.491890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018770, 36.123680, 32.346245>,  <27.819895, 36.021641, 32.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018770, 36.123680, 32.346245>,  <28.350227, 36.293747, 32.491890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018770, 36.123680, 32.346245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079839, -0.554053, 0.828644,
		-0.554053, 0.715722, 0.425168,
		-0.828644, -0.425168, -0.364117,
		27.770178, 35.996128, 32.237011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061981, 36.271626, 32.624031>,  <28.350227, 36.293747, 32.491890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061981, 36.271626, 32.624031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428556, 36.180138, 32.755383>,  <29.648500, 36.125244, 32.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428556, 36.180138, 32.755383>,  <29.061981, 36.271626, 32.624031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428556, 36.180138, 32.755383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362092, 0.823321, -0.437072,
		-0.170390, 0.519451, 0.837340,
		0.916437, -0.228721, 0.328375,
		29.703487, 36.111523, 32.853893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300577, 36.871220, 32.943462>,  <29.061981, 36.271626, 32.624031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300577, 36.871220, 32.943462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616528, 36.646172, 32.845844>,  <29.806097, 36.511143, 32.787273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616528, 36.646172, 32.845844>,  <29.300577, 36.871220, 32.943462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616528, 36.646172, 32.845844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386118, 0.765405, -0.514848,
		0.476454, 0.312437, 0.821812,
		0.789876, -0.562617, -0.244043,
		29.853491, 36.477386, 32.772633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886230, 37.261341, 33.116787>,  <29.300577, 36.871220, 32.943462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886230, 37.261341, 33.116787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029827, 36.999111, 32.851051>,  <30.115984, 36.841774, 32.691608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029827, 36.999111, 32.851051>,  <29.886230, 37.261341, 33.116787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029827, 36.999111, 32.851051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356633, 0.754123, -0.551463,
		0.862519, -0.038955, 0.504523,
		0.358990, -0.655577, -0.664338,
		30.137524, 36.802437, 32.651749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622629, 37.413948, 32.998333>,  <29.886230, 37.261341, 33.116787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622629, 37.413948, 32.998333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486498, 37.216732, 32.678062>,  <30.404819, 37.098400, 32.485901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486498, 37.216732, 32.678062>,  <30.622629, 37.413948, 32.998333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486498, 37.216732, 32.678062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413119, 0.686525, -0.598345,
		0.844695, -0.534409, -0.029959,
		-0.340329, -0.493042, -0.800678,
		30.384399, 37.068821, 32.437859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226637, 37.302963, 32.540764>,  <30.622629, 37.413948, 32.998333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226637, 37.302963, 32.540764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904354, 37.244804, 32.311089>,  <30.710985, 37.209908, 32.173283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904354, 37.244804, 32.311089>,  <31.226637, 37.302963, 32.540764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904354, 37.244804, 32.311089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447156, 0.486431, -0.750624,
		0.388443, -0.861536, -0.326905,
		-0.805707, -0.145397, -0.574192,
		30.662642, 37.201183, 32.138832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491320, 37.051243, 31.881153>,  <31.226637, 37.302963, 32.540764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491320, 37.051243, 31.881153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139923, 37.229725, 31.812847>,  <30.929085, 37.336815, 31.771864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139923, 37.229725, 31.812847>,  <31.491320, 37.051243, 31.881153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139923, 37.229725, 31.812847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446175, 0.638405, -0.627189,
		-0.170835, -0.627170, -0.759916,
		-0.878489, 0.446201, -0.170765,
		30.876377, 37.363586, 31.761618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556906, 37.298355, 31.232100>,  <31.491320, 37.051243, 31.881153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556906, 37.298355, 31.232100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235521, 37.501640, 31.356140>,  <31.042690, 37.623611, 31.430565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235521, 37.501640, 31.356140>,  <31.556906, 37.298355, 31.232100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235521, 37.501640, 31.356140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261062, 0.768873, -0.583679,
		-0.535064, -0.388009, -0.750437,
		-0.803463, 0.508216, 0.310102,
		30.994482, 37.654106, 31.449171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251379, 37.529190, 30.610832>,  <31.556906, 37.298355, 31.232100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251379, 37.529190, 30.610832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101276, 37.756424, 30.903809>,  <31.011215, 37.892765, 31.079594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101276, 37.756424, 30.903809>,  <31.251379, 37.529190, 30.610832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101276, 37.756424, 30.903809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037076, 0.798752, -0.600517,
		-0.926179, -0.198192, -0.320799,
		-0.375256, 0.568080, 0.732439,
		30.988699, 37.926849, 31.123541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672768, 37.788452, 30.368227>,  <31.251379, 37.529190, 30.610832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672768, 37.788452, 30.368227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759113, 38.041313, 30.665895>,  <30.810921, 38.193027, 30.844496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759113, 38.041313, 30.665895>,  <30.672768, 37.788452, 30.368227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759113, 38.041313, 30.665895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136465, 0.735126, -0.664053,
		-0.966841, 0.244897, 0.072420,
		0.215863, 0.632151, 0.744170,
		30.823872, 38.230957, 30.889147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264336, 38.380501, 30.235388>,  <30.672768, 37.788452, 30.368227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264336, 38.380501, 30.235388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551254, 38.513844, 30.480127>,  <30.723406, 38.593849, 30.626970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551254, 38.513844, 30.480127>,  <30.264336, 38.380501, 30.235388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551254, 38.513844, 30.480127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109077, 0.813573, -0.571140,
		-0.688177, 0.476415, 0.547211,
		0.717296, 0.333358, 0.611849,
		30.766443, 38.613850, 30.663681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083332, 39.023483, 30.345650>,  <30.264336, 38.380501, 30.235388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083332, 39.023483, 30.345650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470844, 39.029644, 30.444624>,  <30.703352, 39.033340, 30.504009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470844, 39.029644, 30.444624>,  <30.083332, 39.023483, 30.345650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470844, 39.029644, 30.444624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161949, 0.716361, -0.678674,
		-0.187708, 0.697559, 0.691503,
		0.968782, 0.015404, 0.247436,
		30.761478, 39.034264, 30.518854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237143, 39.706795, 30.419378>,  <30.083332, 39.023483, 30.345650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237143, 39.706795, 30.419378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600565, 39.550247, 30.360916>,  <30.818619, 39.456318, 30.325840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600565, 39.550247, 30.360916>,  <30.237143, 39.706795, 30.419378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600565, 39.550247, 30.360916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210832, 0.731567, -0.648352,
		0.360664, 0.558249, 0.747181,
		0.908555, -0.391367, -0.146153,
		30.873131, 39.432838, 30.317070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688555, 40.311947, 30.481594>,  <30.237143, 39.706795, 30.419378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688555, 40.311947, 30.481594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886532, 40.023117, 30.288252>,  <31.005318, 39.849819, 30.172247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886532, 40.023117, 30.288252>,  <30.688555, 40.311947, 30.481594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886532, 40.023117, 30.288252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487258, 0.691218, -0.533664,
		0.719451, 0.028615, 0.693953,
		0.494944, -0.722079, -0.483355,
		31.035015, 39.806492, 30.143246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390406, 40.598953, 30.345446>,  <30.688555, 40.311947, 30.481594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390406, 40.598953, 30.345446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317902, 40.319706, 30.068380>,  <31.274399, 40.152157, 29.902142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317902, 40.319706, 30.068380>,  <31.390406, 40.598953, 30.345446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317902, 40.319706, 30.068380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509282, 0.535894, -0.673387,
		0.841295, -0.474818, 0.258401,
		-0.181260, -0.698116, -0.692661,
		31.263523, 40.110271, 29.860582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018978, 40.511421, 29.991282>,  <31.390406, 40.598953, 30.345446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018978, 40.511421, 29.991282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733715, 40.384300, 29.741352>,  <31.562555, 40.308029, 29.591394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733715, 40.384300, 29.741352>,  <32.018978, 40.511421, 29.991282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733715, 40.384300, 29.741352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383755, 0.568913, -0.727372,
		0.586635, -0.758510, -0.283765,
		-0.713156, -0.317806, -0.624826,
		31.519766, 40.288960, 29.553905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277557, 40.667660, 29.347975>,  <32.018978, 40.511421, 29.991282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277557, 40.667660, 29.347975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921108, 40.537716, 29.221249>,  <31.707239, 40.459747, 29.145212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921108, 40.537716, 29.221249>,  <32.277557, 40.667660, 29.347975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921108, 40.537716, 29.221249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109672, 0.523299, -0.845062,
		0.440319, -0.787796, -0.430693,
		-0.891118, -0.324862, -0.316818,
		31.653772, 40.440258, 29.126204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391850, 40.525803, 28.797001>,  <32.277557, 40.667660, 29.347975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391850, 40.525803, 28.797001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995733, 40.581383, 28.795708>,  <31.758062, 40.614731, 28.794931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995733, 40.581383, 28.795708>,  <32.391850, 40.525803, 28.797001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995733, 40.581383, 28.795708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066156, 0.450770, -0.890185,
		-0.122232, -0.881759, -0.455587,
		-0.990294, 0.138949, -0.003235,
		31.698645, 40.623066, 28.794737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233341, 40.307873, 28.155203>,  <32.391850, 40.525803, 28.797001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233341, 40.307873, 28.155203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958738, 40.561848, 28.296938>,  <31.793976, 40.714233, 28.381979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958738, 40.561848, 28.296938>,  <32.233341, 40.307873, 28.155203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958738, 40.561848, 28.296938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095863, 0.404029, -0.909709,
		-0.720776, -0.658490, -0.216501,
		-0.686507, 0.634942, 0.354339,
		31.752787, 40.752331, 28.403240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868599, 40.476192, 27.583160>,  <32.233341, 40.307873, 28.155203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868599, 40.476192, 27.583160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734486, 40.769474, 27.819801>,  <31.654018, 40.945442, 27.961786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734486, 40.769474, 27.819801>,  <31.868599, 40.476192, 27.583160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734486, 40.769474, 27.819801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168254, 0.571251, -0.803345,
		-0.926971, -0.368887, -0.068166,
		-0.335283, 0.733209, 0.591600,
		31.633902, 40.989437, 27.997282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240118, 40.719940, 27.274500>,  <31.868599, 40.476192, 27.583160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240118, 40.719940, 27.274500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386848, 41.009296, 27.508472>,  <31.474888, 41.182911, 27.648855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386848, 41.009296, 27.508472>,  <31.240118, 40.719940, 27.274500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386848, 41.009296, 27.508472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071878, 0.648922, -0.757452,
		-0.927508, 0.235811, 0.290038,
		0.366827, 0.723390, 0.584931,
		31.496897, 41.226315, 27.683952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864176, 41.257675, 27.107334>,  <31.240118, 40.719940, 27.274500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864176, 41.257675, 27.107334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175207, 41.431030, 27.289564>,  <31.361826, 41.535042, 27.398903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175207, 41.431030, 27.289564>,  <30.864176, 41.257675, 27.107334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175207, 41.431030, 27.289564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060802, 0.669314, -0.740488,
		-0.625841, 0.603487, 0.494092,
		0.777577, 0.433386, 0.455577,
		31.408480, 41.561047, 27.426237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772167, 42.034306, 27.032509>,  <30.864176, 41.257675, 27.107334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772167, 42.034306, 27.032509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161757, 41.976025, 27.101957>,  <31.395510, 41.941055, 27.143627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161757, 41.976025, 27.101957>,  <30.772167, 42.034306, 27.032509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161757, 41.976025, 27.101957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226513, 0.653342, -0.722382,
		-0.008179, 0.742909, 0.669343,
		0.973974, -0.145706, 0.173622,
		31.453949, 41.932312, 27.154043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117060, 42.771774, 27.104000>,  <30.772167, 42.034306, 27.032509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117060, 42.771774, 27.104000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410908, 42.516171, 27.012789>,  <31.587217, 42.362808, 26.958063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410908, 42.516171, 27.012789>,  <31.117060, 42.771774, 27.104000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410908, 42.516171, 27.012789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297004, 0.605046, -0.738720,
		0.610018, 0.474954, 0.634268,
		0.734620, -0.639013, -0.228026,
		31.631294, 42.324467, 26.944382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689177, 43.195694, 26.918217>,  <31.117060, 42.771774, 27.104000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689177, 43.195694, 26.918217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791407, 42.842262, 26.761257>,  <31.852745, 42.630203, 26.667082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791407, 42.842262, 26.761257>,  <31.689177, 43.195694, 26.918217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791407, 42.842262, 26.761257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333992, 0.461582, -0.821822,
		0.907265, 0.078981, 0.413077,
		0.255577, -0.883575, -0.392398,
		31.868080, 42.577190, 26.643538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161057, 43.434277, 26.453024>,  <31.689177, 43.195694, 26.918217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161057, 43.434277, 26.453024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098526, 43.052822, 26.350155>,  <32.061008, 42.823948, 26.288433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098526, 43.052822, 26.350155>,  <32.161057, 43.434277, 26.453024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098526, 43.052822, 26.350155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318119, 0.197885, -0.927169,
		0.935073, -0.226753, 0.272436,
		-0.156327, -0.953638, -0.257172,
		32.051628, 42.766731, 26.273003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838142, 43.383587, 26.101479>,  <32.161057, 43.434277, 26.453024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838142, 43.383587, 26.101479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551521, 43.115963, 26.022566>,  <32.379551, 42.955391, 25.975218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551521, 43.115963, 26.022566>,  <32.838142, 43.383587, 26.101479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551521, 43.115963, 26.022566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137541, 0.141750, -0.980301,
		0.683840, -0.729569, -0.009549,
		-0.716551, -0.669056, -0.197280,
		32.336555, 42.915245, 25.963383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163685, 42.872635, 25.770267>,  <32.838142, 43.383587, 26.101479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163685, 42.872635, 25.770267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779629, 42.870346, 25.658482>,  <32.549194, 42.868973, 25.591410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779629, 42.870346, 25.658482>,  <33.163685, 42.872635, 25.770267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779629, 42.870346, 25.658482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264546, 0.304257, -0.915119,
		0.090264, -0.952573, -0.290616,
		-0.960140, -0.005721, -0.279463,
		32.491589, 42.868629, 25.574642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158642, 42.532867, 25.036545>,  <33.163685, 42.872635, 25.770267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158642, 42.532867, 25.036545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816723, 42.738331, 25.066147>,  <32.611572, 42.861610, 25.083908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816723, 42.738331, 25.066147>,  <33.158642, 42.532867, 25.036545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816723, 42.738331, 25.066147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159417, 0.395603, -0.904480,
		-0.493871, -0.761349, -0.420046,
		-0.854796, 0.513659, 0.074005,
		32.560284, 42.892429, 25.088348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652863, 42.317741, 24.483149>,  <33.158642, 42.532867, 25.036545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652863, 42.317741, 24.483149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552391, 42.687115, 24.599199>,  <32.492107, 42.908741, 24.668831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552391, 42.687115, 24.599199>,  <32.652863, 42.317741, 24.483149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552391, 42.687115, 24.599199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022322, 0.294131, -0.955504,
		-0.967683, -0.246480, -0.053267,
		-0.251181, 0.923436, 0.290128,
		32.477036, 42.964146, 24.686237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130867, 42.589729, 23.992592>,  <32.652863, 42.317741, 24.483149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130867, 42.589729, 23.992592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297012, 42.917515, 24.150551>,  <32.396702, 43.114185, 24.245325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297012, 42.917515, 24.150551>,  <32.130867, 42.589729, 23.992592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297012, 42.917515, 24.150551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053889, 0.411187, -0.909957,
		-0.908057, 0.399245, 0.126633,
		0.415366, 0.819468, 0.394896,
		32.421623, 43.163357, 24.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755810, 43.245090, 23.649986>,  <32.130867, 42.589729, 23.992592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755810, 43.245090, 23.649986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118725, 43.340000, 23.788855>,  <32.336475, 43.396946, 23.872175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118725, 43.340000, 23.788855>,  <31.755810, 43.245090, 23.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118725, 43.340000, 23.788855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251638, 0.355100, -0.900323,
		-0.336906, 0.904214, 0.262471,
		0.907289, 0.237277, 0.347170,
		32.390911, 43.411182, 23.893005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815746, 43.850754, 23.402203>,  <31.755810, 43.245090, 23.649986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815746, 43.850754, 23.402203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187275, 43.740902, 23.501696>,  <32.410191, 43.674992, 23.561392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187275, 43.740902, 23.501696>,  <31.815746, 43.850754, 23.402203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187275, 43.740902, 23.501696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340759, 0.369502, -0.864495,
		0.145505, 0.887721, 0.436783,
		0.928823, -0.274626, 0.248734,
		32.465923, 43.658516, 23.576317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191673, 44.419621, 23.242250>,  <31.815746, 43.850754, 23.402203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191673, 44.419621, 23.242250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502529, 44.172188, 23.288563>,  <32.689045, 44.023727, 23.316349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502529, 44.172188, 23.288563>,  <32.191673, 44.419621, 23.242250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502529, 44.172188, 23.288563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454216, 0.423993, -0.783529,
		0.435588, 0.661502, 0.610473,
		0.777142, -0.618583, 0.115779,
		32.735672, 43.986614, 23.323296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908371, 44.830978, 23.309866>,  <32.191673, 44.419621, 23.242250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908371, 44.830978, 23.309866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996323, 44.457676, 23.196239>,  <33.049095, 44.233696, 23.128063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996323, 44.457676, 23.196239>,  <32.908371, 44.830978, 23.309866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996323, 44.457676, 23.196239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516382, 0.358398, -0.777754,
		0.827649, 0.024324, 0.560719,
		0.219879, -0.933252, -0.284067,
		33.062286, 44.177700, 23.111019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627869, 44.810001, 22.984669>,  <32.908371, 44.830978, 23.309866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627869, 44.810001, 22.984669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446178, 44.485729, 22.836903>,  <33.337162, 44.291164, 22.748243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446178, 44.485729, 22.836903>,  <33.627869, 44.810001, 22.984669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446178, 44.485729, 22.836903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344681, 0.222449, -0.911982,
		0.821505, -0.541580, 0.178384,
		-0.454230, -0.810684, -0.369415,
		33.309910, 44.242523, 22.726078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058784, 44.572544, 22.485001>,  <33.627869, 44.810001, 22.984669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058784, 44.572544, 22.485001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722828, 44.393360, 22.362417>,  <33.521255, 44.285851, 22.288868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722828, 44.393360, 22.362417>,  <34.058784, 44.572544, 22.485001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722828, 44.393360, 22.362417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205489, 0.260157, -0.943447,
		0.502352, -0.855367, -0.126453,
		-0.839891, -0.447957, -0.306459,
		33.470860, 44.258972, 22.270479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296024, 44.293842, 21.817329>,  <34.058784, 44.572544, 22.485001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296024, 44.293842, 21.817329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896221, 44.284904, 21.826139>,  <33.656338, 44.279541, 21.831427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896221, 44.284904, 21.826139>,  <34.296024, 44.293842, 21.817329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896221, 44.284904, 21.826139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027197, 0.266870, -0.963349,
		0.015650, -0.963473, -0.267347,
		-0.999507, -0.022347, 0.022027,
		33.596371, 44.278198, 21.832747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126610, 43.964050, 21.156967>,  <34.296024, 44.293842, 21.817329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126610, 43.964050, 21.156967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802662, 44.148159, 21.302437>,  <33.608292, 44.258625, 21.389719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802662, 44.148159, 21.302437>,  <34.126610, 43.964050, 21.156967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802662, 44.148159, 21.302437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173928, 0.403676, -0.898217,
		-0.560231, -0.790693, -0.246871,
		-0.809870, 0.460271, 0.363676,
		33.559700, 44.286240, 21.411539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643116, 43.879749, 20.575451>,  <34.126610, 43.964050, 21.156967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643116, 43.879749, 20.575451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016251, 43.760788, 20.656807>,  <35.240131, 43.689411, 20.705620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016251, 43.760788, 20.656807>,  <34.643116, 43.879749, 20.575451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016251, 43.760788, 20.656807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349015, -0.605693, 0.715070,
		-0.089472, -0.738029, -0.668810,
		0.932836, -0.297403, 0.203391,
		35.296101, 43.671566, 20.717825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661163, 43.172138, 20.710827>,  <34.643116, 43.879749, 20.575451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661163, 43.172138, 20.710827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989693, 43.312164, 20.890995>,  <35.186810, 43.396179, 20.999096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989693, 43.312164, 20.890995>,  <34.661163, 43.172138, 20.710827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989693, 43.312164, 20.890995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133325, -0.649912, 0.748224,
		0.554659, -0.674588, -0.487118,
		0.821327, 0.350065, 0.450419,
		35.236092, 43.417183, 21.026121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120651, 42.609341, 20.911848>,  <34.661163, 43.172138, 20.710827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120651, 42.609341, 20.911848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231667, 42.913040, 21.147308>,  <35.298275, 43.095261, 21.288586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231667, 42.913040, 21.147308>,  <35.120651, 42.609341, 20.911848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231667, 42.913040, 21.147308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072548, -0.594412, 0.800882,
		0.957970, -0.264984, -0.109892,
		0.277542, 0.759249, 0.588653,
		35.314930, 43.140816, 21.323904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608044, 42.255367, 21.372082>,  <35.120651, 42.609341, 20.911848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608044, 42.255367, 21.372082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478344, 42.598297, 21.532009>,  <35.400524, 42.804054, 21.627966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478344, 42.598297, 21.532009>,  <35.608044, 42.255367, 21.372082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478344, 42.598297, 21.532009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135695, -0.460434, 0.877261,
		0.936189, 0.230196, 0.265629,
		-0.324247, 0.857327, 0.399817,
		35.381069, 42.855495, 21.651955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955643, 42.184193, 21.977934>,  <35.608044, 42.255367, 21.372082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955643, 42.184193, 21.977934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676640, 42.465675, 22.032015>,  <35.509239, 42.634567, 22.064463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676640, 42.465675, 22.032015>,  <35.955643, 42.184193, 21.977934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676640, 42.465675, 22.032015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243967, -0.410611, 0.878566,
		0.673770, 0.579821, 0.458085,
		-0.697506, 0.703709, 0.135200,
		35.467388, 42.676788, 22.072575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105984, 42.301865, 22.585627>,  <35.955643, 42.184193, 21.977934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105984, 42.301865, 22.585627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727943, 42.414394, 22.519121>,  <35.501122, 42.481915, 22.479218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727943, 42.414394, 22.519121>,  <36.105984, 42.301865, 22.585627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727943, 42.414394, 22.519121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262349, -0.349842, 0.899324,
		0.194840, 0.893568, 0.404442,
		-0.945098, 0.281329, -0.166264,
		35.444412, 42.498795, 22.469242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940266, 42.550209, 23.169952>,  <36.105984, 42.301865, 22.585627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940266, 42.550209, 23.169952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578175, 42.505234, 23.006039>,  <35.360920, 42.478249, 22.907690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578175, 42.505234, 23.006039>,  <35.940266, 42.550209, 23.169952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578175, 42.505234, 23.006039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363788, -0.293312, 0.884096,
		-0.219598, 0.949382, 0.224611,
		-0.905227, -0.112435, -0.409784,
		35.306606, 42.471504, 22.883102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429104, 42.843887, 23.571524>,  <35.940266, 42.550209, 23.169952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429104, 42.843887, 23.571524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228130, 42.576519, 23.352148>,  <35.107548, 42.416100, 23.220524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228130, 42.576519, 23.352148>,  <35.429104, 42.843887, 23.571524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228130, 42.576519, 23.352148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533458, -0.259539, 0.805023,
		-0.680432, 0.697036, -0.226172,
		-0.502430, -0.668417, -0.548438,
		35.077400, 42.375996, 23.187616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835308, 42.931175, 23.910051>,  <35.429104, 42.843887, 23.571524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835308, 42.931175, 23.910051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871372, 42.589508, 23.705200>,  <34.893009, 42.384510, 23.582291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871372, 42.589508, 23.705200>,  <34.835308, 42.931175, 23.910051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871372, 42.589508, 23.705200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582794, -0.462232, 0.668351,
		-0.807603, 0.238208, -0.539475,
		0.090156, -0.854166, -0.512126,
		34.898418, 42.333260, 23.551563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242172, 42.578766, 24.124218>,  <34.835308, 42.931175, 23.910051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242172, 42.578766, 24.124218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476261, 42.292549, 23.971632>,  <34.616714, 42.120819, 23.880081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476261, 42.292549, 23.971632>,  <34.242172, 42.578766, 24.124218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476261, 42.292549, 23.971632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179259, -0.572961, 0.799739,
		-0.790813, -0.399641, -0.463575,
		0.585218, -0.715544, -0.381466,
		34.651825, 42.077885, 23.857193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787861, 41.881065, 24.179741>,  <34.242172, 42.578766, 24.124218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787861, 41.881065, 24.179741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166843, 41.765434, 24.124945>,  <34.394234, 41.696056, 24.092068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166843, 41.765434, 24.124945>,  <33.787861, 41.881065, 24.179741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166843, 41.765434, 24.124945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154592, -0.788672, 0.595061,
		-0.280058, -0.542615, -0.791919,
		0.947454, -0.289076, -0.136990,
		34.451080, 41.678711, 24.083847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718681, 41.103493, 24.101713>,  <33.787861, 41.881065, 24.179741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718681, 41.103493, 24.101713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096233, 41.190880, 24.200808>,  <34.322765, 41.243313, 24.260263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096233, 41.190880, 24.200808>,  <33.718681, 41.103493, 24.101713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096233, 41.190880, 24.200808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018220, -0.714451, 0.699448,
		0.329799, -0.664705, -0.670373,
		0.943875, 0.218463, 0.247736,
		34.379395, 41.256420, 24.275129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250633, 40.458687, 24.135435>,  <33.718681, 41.103493, 24.101713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250633, 40.458687, 24.135435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367523, 40.753548, 24.379145>,  <34.437656, 40.930466, 24.525370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367523, 40.753548, 24.379145>,  <34.250633, 40.458687, 24.135435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367523, 40.753548, 24.379145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019867, -0.632265, 0.774498,
		0.956144, -0.238431, -0.170118,
		0.292224, 0.737151, 0.609273,
		34.455189, 40.974693, 24.561926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774876, 40.192532, 24.417080>,  <34.250633, 40.458687, 24.135435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774876, 40.192532, 24.417080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657242, 40.481220, 24.667721>,  <34.586662, 40.654434, 24.818106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657242, 40.481220, 24.667721>,  <34.774876, 40.192532, 24.417080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657242, 40.481220, 24.667721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019050, -0.659891, 0.751120,
		0.955590, 0.208955, 0.207811,
		-0.294084, 0.721721, 0.626605,
		34.569016, 40.697735, 24.855701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163643, 39.997608, 25.054062>,  <34.774876, 40.192532, 24.417080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163643, 39.997608, 25.054062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860130, 40.232956, 25.165823>,  <34.678020, 40.374165, 25.232880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860130, 40.232956, 25.165823>,  <35.163643, 39.997608, 25.054062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860130, 40.232956, 25.165823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054551, -0.484861, 0.872888,
		0.649055, 0.647091, 0.400001,
		-0.758783, 0.588373, 0.279402,
		34.632496, 40.409470, 25.249643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209805, 40.035267, 25.802773>,  <35.163643, 39.997608, 25.054062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209805, 40.035267, 25.802773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831066, 40.140362, 25.728533>,  <34.603821, 40.203419, 25.683989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831066, 40.140362, 25.728533>,  <35.209805, 40.035267, 25.802773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831066, 40.140362, 25.728533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280222, -0.390356, 0.876982,
		0.157970, 0.882377, 0.443233,
		-0.946848, 0.262741, -0.185597,
		34.547012, 40.219185, 25.672853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077759, 40.414333, 26.320196>,  <35.209805, 40.035267, 25.802773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077759, 40.414333, 26.320196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725727, 40.266426, 26.201044>,  <34.514507, 40.177681, 26.129553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725727, 40.266426, 26.201044>,  <35.077759, 40.414333, 26.320196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725727, 40.266426, 26.201044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153268, -0.372536, 0.915273,
		-0.449411, 0.851168, 0.271188,
		-0.880079, -0.369770, -0.297879,
		34.461704, 40.155495, 26.111681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586578, 40.385712, 26.958521>,  <35.077759, 40.414333, 26.320196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586578, 40.385712, 26.958521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394096, 40.161842, 26.688643>,  <34.278606, 40.027523, 26.526716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394096, 40.161842, 26.688643>,  <34.586578, 40.385712, 26.958521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394096, 40.161842, 26.688643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494534, -0.462176, 0.736090,
		-0.723795, 0.687869, -0.054375,
		-0.481203, -0.559669, -0.674695,
		34.249737, 39.993942, 26.486235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836082, 40.417362, 27.067719>,  <34.586578, 40.385712, 26.958521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836082, 40.417362, 27.067719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915886, 40.066597, 26.892801>,  <33.963768, 39.856140, 26.787851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915886, 40.066597, 26.892801>,  <33.836082, 40.417362, 27.067719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915886, 40.066597, 26.892801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496411, -0.475209, 0.726466,
		-0.844852, 0.072145, -0.530114,
		0.199504, -0.876910, -0.437295,
		33.975739, 39.803524, 26.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131035, 40.028179, 26.658245>,  <33.836082, 40.417362, 27.067719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131035, 40.028179, 26.658245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419704, 39.798733, 26.813238>,  <33.592907, 39.661064, 26.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419704, 39.798733, 26.813238>,  <33.131035, 40.028179, 26.658245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419704, 39.798733, 26.813238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676367, -0.465170, 0.571091,
		-0.147342, -0.674225, -0.723679,
		0.721677, -0.573618, 0.387484,
		33.636208, 39.626648, 26.929483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829796, 39.663414, 27.202908>,  <33.131035, 40.028179, 26.658245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829796, 39.663414, 27.202908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197071, 39.513657, 27.254688>,  <33.417439, 39.423801, 27.285757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197071, 39.513657, 27.254688>,  <32.829796, 39.663414, 27.202908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197071, 39.513657, 27.254688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284232, -0.395021, 0.873596,
		-0.275931, -0.838921, -0.469119,
		0.918191, -0.374391, 0.129449,
		33.472527, 39.401340, 27.293524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718983, 38.967850, 27.393637>,  <32.829796, 39.663414, 27.202908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718983, 38.967850, 27.393637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096592, 38.996738, 27.522385>,  <33.323158, 39.014072, 27.599634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096592, 38.996738, 27.522385>,  <32.718983, 38.967850, 27.393637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096592, 38.996738, 27.522385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263573, -0.421585, 0.867638,
		0.198360, -0.903908, -0.378951,
		0.944025, 0.072223, 0.321872,
		33.379799, 39.018406, 27.618946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926788, 38.331116, 27.660538>,  <32.718983, 38.967850, 27.393637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926788, 38.331116, 27.660538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170265, 38.595844, 27.835573>,  <33.316353, 38.754681, 27.940596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170265, 38.595844, 27.835573>,  <32.926788, 38.331116, 27.660538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170265, 38.595844, 27.835573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241444, -0.370861, 0.896753,
		0.755777, -0.651500, -0.065947,
		0.608691, 0.661823, 0.437590,
		33.352871, 38.794392, 27.966850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322639, 37.926483, 28.066467>,  <32.926788, 38.331116, 27.660538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322639, 37.926483, 28.066467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388283, 38.296974, 28.202217>,  <33.427670, 38.519268, 28.283667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388283, 38.296974, 28.202217>,  <33.322639, 37.926483, 28.066467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388283, 38.296974, 28.202217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106997, -0.325295, 0.939540,
		0.980622, -0.190503, 0.045718,
		0.164113, 0.926225, 0.339374,
		33.437515, 38.574841, 28.304029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762348, 37.863476, 28.645460>,  <33.322639, 37.926483, 28.066467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762348, 37.863476, 28.645460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590488, 38.218739, 28.710661>,  <33.487373, 38.431896, 28.749783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590488, 38.218739, 28.710661>,  <33.762348, 37.863476, 28.645460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590488, 38.218739, 28.710661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123587, -0.236654, 0.963702,
		0.894497, 0.393912, 0.211444,
		-0.429653, 0.888160, 0.163004,
		33.461594, 38.485188, 28.759562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077354, 38.187962, 29.187599>,  <33.762348, 37.863476, 28.645460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077354, 38.187962, 29.187599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710522, 38.347435, 29.188745>,  <33.490421, 38.443119, 29.189434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710522, 38.347435, 29.188745>,  <34.077354, 38.187962, 29.187599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710522, 38.347435, 29.188745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101250, -0.239844, 0.965517,
		0.385622, 0.885171, 0.260324,
		-0.917085, 0.398682, 0.002865,
		33.435398, 38.467041, 29.189606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137241, 38.657440, 29.693468>,  <34.077354, 38.187962, 29.187599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137241, 38.657440, 29.693468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755688, 38.548328, 29.643364>,  <33.526756, 38.482861, 29.613302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755688, 38.548328, 29.643364>,  <34.137241, 38.657440, 29.693468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755688, 38.548328, 29.643364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028983, -0.331651, 0.942957,
		-0.298763, 0.903105, 0.308452,
		-0.953887, -0.272781, -0.125260,
		33.469521, 38.466496, 29.605785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845284, 38.797417, 30.375706>,  <34.137241, 38.657440, 29.693468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845284, 38.797417, 30.375706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596714, 38.555065, 30.177015>,  <33.447571, 38.409653, 30.057800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596714, 38.555065, 30.177015>,  <33.845284, 38.797417, 30.375706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596714, 38.555065, 30.177015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212652, -0.479770, 0.851234,
		-0.754060, 0.634610, 0.169300,
		-0.621427, -0.605880, -0.496727,
		33.410286, 38.373302, 30.027998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291088, 38.652603, 30.804405>,  <33.845284, 38.797417, 30.375706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291088, 38.652603, 30.804405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246632, 38.366840, 30.528065>,  <33.219959, 38.195385, 30.362261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246632, 38.366840, 30.528065>,  <33.291088, 38.652603, 30.804405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246632, 38.366840, 30.528065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082000, -0.686194, 0.722782,
		-0.990416, 0.136981, 0.017684,
		-0.111142, -0.714405, -0.690850,
		33.213287, 38.152519, 30.320810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660324, 38.329712, 30.953615>,  <33.291088, 38.652603, 30.804405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660324, 38.329712, 30.953615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887798, 38.066414, 30.756310>,  <33.024284, 37.908436, 30.637926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887798, 38.066414, 30.756310>,  <32.660324, 38.329712, 30.953615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887798, 38.066414, 30.756310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081805, -0.641964, 0.762358,
		-0.818475, -0.393193, -0.418924,
		0.568688, -0.658242, -0.493266,
		33.058403, 37.868942, 30.608330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372242, 37.676147, 31.186403>,  <32.660324, 38.329712, 30.953615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372242, 37.676147, 31.186403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695503, 37.534130, 30.998428>,  <32.889458, 37.448921, 30.885643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695503, 37.534130, 30.998428>,  <32.372242, 37.676147, 31.186403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695503, 37.534130, 30.998428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021872, -0.815423, 0.578452,
		-0.588572, -0.457197, -0.666749,
		0.808149, -0.355044, -0.469935,
		32.937946, 37.427616, 30.857449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193375, 37.022366, 31.035887>,  <32.372242, 37.676147, 31.186403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193375, 37.022366, 31.035887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593121, 37.035984, 31.031773>,  <32.832970, 37.044155, 31.029305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593121, 37.035984, 31.031773>,  <32.193375, 37.022366, 31.035887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593121, 37.035984, 31.031773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033857, -0.822148, 0.568267,
		0.010891, -0.568255, -0.822780,
		0.999367, 0.034046, -0.010285,
		32.892929, 37.046200, 31.028687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289135, 36.324024, 31.117426>,  <32.193375, 37.022366, 31.035887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289135, 36.324024, 31.117426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644798, 36.483521, 31.207237>,  <32.858196, 36.579216, 31.261124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644798, 36.483521, 31.207237>,  <32.289135, 36.324024, 31.117426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644798, 36.483521, 31.207237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126507, -0.685718, 0.716790,
		0.439774, -0.608932, -0.660152,
		0.889154, 0.398739, 0.224527,
		32.911545, 36.603142, 31.274595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775291, 35.756142, 31.139194>,  <32.289135, 36.324024, 31.117426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775291, 35.756142, 31.139194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917915, 36.062904, 31.352631>,  <33.003490, 36.246964, 31.480692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917915, 36.062904, 31.352631>,  <32.775291, 35.756142, 31.139194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917915, 36.062904, 31.352631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168655, -0.614583, 0.770613,
		0.918923, -0.184779, -0.348479,
		0.356562, 0.766906, 0.533590,
		33.024883, 36.292976, 31.512707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395718, 35.574959, 31.473757>,  <32.775291, 35.756142, 31.139194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395718, 35.574959, 31.473757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262115, 35.884026, 31.689693>,  <33.181953, 36.069466, 31.819256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262115, 35.884026, 31.689693>,  <33.395718, 35.574959, 31.473757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262115, 35.884026, 31.689693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294948, -0.458294, 0.838434,
		0.895235, 0.439267, -0.074824,
		-0.334005, 0.772665, 0.539842,
		33.161915, 36.115826, 31.851646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898769, 35.696003, 31.979940>,  <33.395718, 35.574959, 31.473757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898769, 35.696003, 31.979940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553566, 35.836704, 32.124981>,  <33.346443, 35.921127, 32.212006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553566, 35.836704, 32.124981>,  <33.898769, 35.696003, 31.979940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553566, 35.836704, 32.124981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110945, -0.568272, 0.815327,
		0.492852, 0.743865, 0.451400,
		-0.863011, 0.351755, 0.362602,
		33.294662, 35.942230, 32.233761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088146, 35.732792, 32.640259>,  <33.898769, 35.696003, 31.979940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088146, 35.732792, 32.640259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695213, 35.806988, 32.650139>,  <33.459454, 35.851505, 32.656067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695213, 35.806988, 32.650139>,  <34.088146, 35.732792, 32.640259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695213, 35.806988, 32.650139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062925, -0.451727, 0.889934,
		0.176234, 0.872660, 0.455420,
		-0.982335, 0.185494, 0.024698,
		33.400513, 35.862637, 32.657547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902691, 36.073502, 33.269295>,  <34.088146, 35.732792, 32.640259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902691, 36.073502, 33.269295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547626, 35.932499, 33.150776>,  <33.334587, 35.847897, 33.079662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547626, 35.932499, 33.150776>,  <33.902691, 36.073502, 33.269295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547626, 35.932499, 33.150776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125062, -0.434715, 0.891842,
		-0.443190, 0.828710, 0.341794,
		-0.887661, -0.352511, -0.296301,
		33.281326, 35.826744, 33.061886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294624, 36.281464, 33.842941>,  <33.902691, 36.073502, 33.269295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294624, 36.281464, 33.842941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215672, 35.951870, 33.630497>,  <33.168301, 35.754112, 33.503029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215672, 35.951870, 33.630497>,  <33.294624, 36.281464, 33.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215672, 35.951870, 33.630497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200274, -0.496455, 0.844644,
		-0.959652, 0.273086, -0.067033,
		-0.197381, -0.823989, -0.531115,
		33.156456, 35.704674, 33.471161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663620, 35.965378, 34.250118>,  <33.294624, 36.281464, 33.842941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663620, 35.965378, 34.250118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822266, 35.702461, 33.993786>,  <32.917454, 35.544712, 33.839985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822266, 35.702461, 33.993786>,  <32.663620, 35.965378, 34.250118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822266, 35.702461, 33.993786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002687, -0.698915, 0.715200,
		-0.917984, -0.281933, -0.278962,
		0.396609, -0.657291, -0.640835,
		32.941250, 35.505276, 33.801537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255642, 35.355396, 34.207062>,  <32.663620, 35.965378, 34.250118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255642, 35.355396, 34.207062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631641, 35.239834, 34.134476>,  <32.857243, 35.170494, 34.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631641, 35.239834, 34.134476>,  <32.255642, 35.355396, 34.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631641, 35.239834, 34.134476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108947, -0.758226, 0.642826,
		-0.323308, -0.584487, -0.744209,
		0.940001, -0.288910, -0.181463,
		32.913643, 35.153160, 34.080036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194138, 34.582478, 34.016388>,  <32.255642, 35.355396, 34.207062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194138, 34.582478, 34.016388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528488, 34.698318, 34.202908>,  <32.729099, 34.767822, 34.314819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528488, 34.698318, 34.202908>,  <32.194138, 34.582478, 34.016388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528488, 34.698318, 34.202908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199749, -0.630779, 0.749812,
		0.511279, -0.719896, -0.469408,
		0.835879, 0.289599, 0.466303,
		32.779251, 34.785198, 34.342800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504169, 33.982544, 34.417046>,  <32.194138, 34.582478, 34.016388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504169, 33.982544, 34.417046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600517, 34.320618, 34.607891>,  <32.658325, 34.523464, 34.722401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600517, 34.320618, 34.607891>,  <32.504169, 33.982544, 34.417046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600517, 34.320618, 34.607891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315620, -0.396659, 0.862001,
		0.917805, -0.358218, 0.171214,
		0.240871, 0.845187, 0.477116,
		32.672779, 34.574173, 34.751026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964798, 33.719406, 34.954586>,  <32.504169, 33.982544, 34.417046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964798, 33.719406, 34.954586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363979, 33.722820, 34.929260>,  <33.603489, 33.724869, 34.914066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363979, 33.722820, 34.929260>,  <32.964798, 33.719406, 34.954586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363979, 33.722820, 34.929260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058768, -0.511285, 0.857400,
		-0.025048, -0.859369, -0.510742,
		0.997957, 0.008539, -0.063310,
		33.663368, 33.725384, 34.910267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341061, 32.947315, 34.947777>,  <32.964798, 33.719406, 34.954586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341061, 32.947315, 34.947777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520355, 33.245975, 35.144386>,  <33.627934, 33.425171, 35.262352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520355, 33.245975, 35.144386>,  <33.341061, 32.947315, 34.947777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520355, 33.245975, 35.144386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063805, -0.521732, 0.850720,
		0.891635, -0.412685, -0.186219,
		0.448236, 0.746650, 0.491526,
		33.654827, 33.469971, 35.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885902, 32.669697, 35.365601>,  <33.341061, 32.947315, 34.947777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885902, 32.669697, 35.365601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888035, 33.014931, 35.567612>,  <33.889313, 33.222073, 35.688816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888035, 33.014931, 35.567612>,  <33.885902, 32.669697, 35.365601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888035, 33.014931, 35.567612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449661, -0.453162, 0.769708,
		0.893183, 0.222985, -0.390513,
		0.005332, 0.863089, 0.505024,
		33.889633, 33.273857, 35.719120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649441, 32.687611, 35.443054>,  <33.885902, 32.669697, 35.365601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649441, 32.687611, 35.443054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729191, 32.983799, 35.186321>,  <34.777039, 33.161510, 35.032280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729191, 32.983799, 35.186321>,  <34.649441, 32.687611, 35.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729191, 32.983799, 35.186321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346705, 0.559319, 0.752967,
		0.916541, -0.372648, -0.145212,
		0.199372, 0.740470, -0.641837,
		34.789001, 33.205940, 34.993771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098675, 33.098076, 35.842941>,  <34.649441, 32.687611, 35.443054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098675, 33.098076, 35.842941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024635, 33.330181, 35.525692>,  <34.980213, 33.469444, 35.335342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024635, 33.330181, 35.525692>,  <35.098675, 33.098076, 35.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024635, 33.330181, 35.525692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417565, 0.777025, 0.471034,
		0.889595, -0.243993, -0.386119,
		-0.185095, 0.580259, -0.793120,
		34.969109, 33.504257, 35.287754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656643, 33.448280, 35.624439>,  <35.098675, 33.098076, 35.842941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656643, 33.448280, 35.624439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354546, 33.682953, 35.507538>,  <35.173286, 33.823757, 35.437397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354546, 33.682953, 35.507538>,  <35.656643, 33.448280, 35.624439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354546, 33.682953, 35.507538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422248, 0.776528, 0.467666,
		0.501312, 0.229799, -0.834193,
		-0.755244, 0.586683, -0.292251,
		35.127972, 33.858959, 35.419861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928757, 34.118519, 35.227806>,  <35.656643, 33.448280, 35.624439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928757, 34.118519, 35.227806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560863, 34.198555, 35.362892>,  <35.340126, 34.246578, 35.443943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560863, 34.198555, 35.362892>,  <35.928757, 34.118519, 35.227806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560863, 34.198555, 35.362892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344160, 0.824817, 0.448588,
		-0.188792, 0.528810, -0.827477,
		-0.919735, 0.200095, 0.337714,
		35.284943, 34.258583, 35.464207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801388, 34.737663, 34.997704>,  <35.928757, 34.118519, 35.227806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801388, 34.737663, 34.997704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583706, 34.697758, 35.330902>,  <35.453094, 34.673813, 35.530823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583706, 34.697758, 35.330902>,  <35.801388, 34.737663, 34.997704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583706, 34.697758, 35.330902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356829, 0.871092, 0.337448,
		-0.759283, 0.480880, -0.438457,
		-0.544208, -0.099764, 0.832997,
		35.420444, 34.667828, 35.580803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207733, 34.610027, 34.466816>,  <35.801388, 34.737663, 34.997704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207733, 34.610027, 34.466816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248024, 34.570782, 34.862843>,  <36.272198, 34.547234, 35.100456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248024, 34.570782, 34.862843>,  <36.207733, 34.610027, 34.466816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248024, 34.570782, 34.862843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977170, 0.177343, 0.116995,
		-0.187061, -0.979245, -0.078020,
		0.100730, -0.098124, 0.990063,
		36.278244, 34.541348, 35.159863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662483, 33.886036, 34.601864>,  <36.207733, 34.610027, 34.466816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662483, 33.886036, 34.601864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794720, 33.666351, 34.294861>,  <36.874062, 33.534538, 34.110661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794720, 33.666351, 34.294861>,  <36.662483, 33.886036, 34.601864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794720, 33.666351, 34.294861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917815, -0.376513, -0.125911,
		-0.219825, 0.746056, -0.628551,
		0.330594, -0.549216, -0.767509,
		36.893898, 33.501587, 34.064610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239967, 33.900726, 34.025173>,  <36.662483, 33.886036, 34.601864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239967, 33.900726, 34.025173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435963, 33.552742, 34.047405>,  <36.553558, 33.343952, 34.060745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435963, 33.552742, 34.047405>,  <36.239967, 33.900726, 34.025173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435963, 33.552742, 34.047405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871722, -0.488703, 0.035630,
		-0.003832, -0.065912, -0.997818,
		0.489985, -0.869957, 0.055584,
		36.582958, 33.291756, 34.064079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054874, 33.525333, 33.506458>,  <36.239967, 33.900726, 34.025173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054874, 33.525333, 33.506458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146275, 33.288685, 33.815720>,  <36.201115, 33.146694, 34.001278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146275, 33.288685, 33.815720>,  <36.054874, 33.525333, 33.506458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146275, 33.288685, 33.815720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902370, -0.426781, -0.059892,
		0.365402, -0.683988, -0.631381,
		0.228496, -0.591623, 0.773157,
		36.214825, 33.111198, 34.047668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024097, 32.856388, 33.275009>,  <36.054874, 33.525333, 33.506458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024097, 32.856388, 33.275009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960434, 32.879234, 33.669250>,  <35.922237, 32.892941, 33.905796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960434, 32.879234, 33.669250>,  <36.024097, 32.856388, 33.275009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960434, 32.879234, 33.669250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820488, -0.562871, -0.099877,
		0.549062, -0.824569, 0.136444,
		-0.159156, 0.057112, 0.985600,
		35.912685, 32.896366, 33.964931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903690, 32.163940, 33.395477>,  <36.024097, 32.856388, 33.275009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903690, 32.163940, 33.395477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728302, 32.404804, 33.662354>,  <35.623070, 32.549324, 33.822479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728302, 32.404804, 33.662354>,  <35.903690, 32.163940, 33.395477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728302, 32.404804, 33.662354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873969, -0.458785, -0.160299,
		0.209572, -0.653391, 0.727434,
		-0.438473, 0.602160, 0.667191,
		35.596760, 32.585453, 33.862511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024311, 31.434675, 33.694248>,  <35.903690, 32.163940, 33.395477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024311, 31.434675, 33.694248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054832, 31.051613, 33.583202>,  <36.073147, 30.821775, 33.516575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054832, 31.051613, 33.583202>,  <36.024311, 31.434675, 33.694248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054832, 31.051613, 33.583202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657190, -0.257698, 0.708303,
		-0.749853, 0.128401, -0.649025,
		0.076306, -0.957656, -0.277619,
		36.077724, 30.764317, 33.499916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860741, 30.763693, 33.969749>,  <36.024311, 31.434675, 33.694248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860741, 30.763693, 33.969749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212181, 30.612841, 33.852566>,  <36.423046, 30.522329, 33.782253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212181, 30.612841, 33.852566>,  <35.860741, 30.763693, 33.969749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212181, 30.612841, 33.852566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465849, 0.541882, 0.699535,
		-0.105064, -0.751091, 0.651785,
		0.878605, -0.377129, -0.292963,
		36.475761, 30.499702, 33.764675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250172, 30.331919, 34.565887>,  <35.860741, 30.763693, 33.969749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250172, 30.331919, 34.565887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463917, 30.518408, 34.283867>,  <36.592163, 30.630302, 34.114655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463917, 30.518408, 34.283867>,  <36.250172, 30.331919, 34.565887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463917, 30.518408, 34.283867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327404, 0.654845, 0.681164,
		0.779274, -0.594822, 0.197278,
		0.534358, 0.466224, -0.705051,
		36.624226, 30.658276, 34.072353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944534, 30.535383, 34.835152>,  <36.250172, 30.331919, 34.565887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944534, 30.535383, 34.835152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825718, 30.779758, 34.541615>,  <36.754429, 30.926384, 34.365494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825718, 30.779758, 34.541615>,  <36.944534, 30.535383, 34.835152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825718, 30.779758, 34.541615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332149, 0.786642, 0.520453,
		0.895234, -0.089148, -0.436588,
		-0.297041, 0.610939, -0.733839,
		36.736607, 30.963039, 34.321465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549728, 31.059954, 34.527828>,  <36.944534, 30.535383, 34.835152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549728, 31.059954, 34.527828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175114, 31.194323, 34.567940>,  <36.950344, 31.274944, 34.592007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175114, 31.194323, 34.567940>,  <37.549728, 31.059954, 34.527828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175114, 31.194323, 34.567940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339874, 0.799915, 0.494593,
		0.085932, 0.497286, -0.863321,
		-0.936537, 0.335921, 0.100277,
		36.894154, 31.295099, 34.598022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496159, 31.740133, 34.375320>,  <37.549728, 31.059954, 34.527828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496159, 31.740133, 34.375320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162704, 31.692902, 34.591141>,  <36.962631, 31.664562, 34.720634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162704, 31.692902, 34.591141>,  <37.496159, 31.740133, 34.375320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162704, 31.692902, 34.591141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009548, 0.979814, 0.199682,
		-0.552238, 0.161309, -0.817932,
		-0.833632, -0.118081, 0.539551,
		36.912617, 31.657476, 34.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980373, 32.107052, 34.064404>,  <37.496159, 31.740133, 34.375320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980373, 32.107052, 34.064404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928883, 32.081139, 34.460228>,  <36.897987, 32.065590, 34.697723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928883, 32.081139, 34.460228>,  <36.980373, 32.107052, 34.064404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928883, 32.081139, 34.460228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102019, 0.993435, 0.051765,
		-0.986419, -0.094291, -0.134489,
		-0.128725, -0.064783, 0.989562,
		36.890266, 32.061703, 34.757095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452789, 32.583088, 34.217037>,  <36.980373, 32.107052, 34.064404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452789, 32.583088, 34.217037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592319, 32.939747, 34.332474>,  <37.676037, 33.153744, 34.401737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592319, 32.939747, 34.332474>,  <37.452789, 32.583088, 34.217037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592319, 32.939747, 34.332474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717822, -0.056214, -0.693954,
		-0.602540, 0.449224, -0.659654,
		0.348822, 0.891649, 0.288592,
		37.696964, 33.207241, 34.419052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579159, 32.994736, 33.621811>,  <37.452789, 32.583088, 34.217037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579159, 32.994736, 33.621811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828648, 33.119400, 33.908539>,  <37.978340, 33.194199, 34.080578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828648, 33.119400, 33.908539>,  <37.579159, 32.994736, 33.621811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828648, 33.119400, 33.908539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750492, 0.017536, -0.660647,
		-0.218465, 0.950033, -0.222959,
		0.623726, 0.311657, 0.716823,
		38.015766, 33.212898, 34.123585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931385, 33.657047, 33.568497>,  <37.579159, 32.994736, 33.621811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931385, 33.657047, 33.568497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163750, 33.388680, 33.752853>,  <38.303169, 33.227661, 33.863468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163750, 33.388680, 33.752853>,  <37.931385, 33.657047, 33.568497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163750, 33.388680, 33.752853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579059, -0.057304, -0.813269,
		0.572046, 0.739316, 0.355212,
		0.580908, -0.670916, 0.460888,
		38.338020, 33.187405, 33.891121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661743, 33.964077, 33.678539>,  <37.931385, 33.657047, 33.568497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661743, 33.964077, 33.678539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640293, 33.564686, 33.673512>,  <38.627422, 33.325050, 33.670494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640293, 33.564686, 33.673512>,  <38.661743, 33.964077, 33.678539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640293, 33.564686, 33.673512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526351, -0.017563, -0.850086,
		0.848575, -0.052203, 0.526494,
		-0.053623, -0.998482, -0.012574,
		38.624207, 33.265141, 33.669739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337048, 33.640781, 33.927788>,  <38.661743, 33.964077, 33.678539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337048, 33.640781, 33.927788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121922, 33.474949, 33.634155>,  <38.992844, 33.375450, 33.457977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121922, 33.474949, 33.634155>,  <39.337048, 33.640781, 33.927788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121922, 33.474949, 33.634155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747716, 0.167666, -0.642502,
		0.389451, -0.894432, 0.219818,
		-0.537818, -0.414584, -0.734078,
		38.960575, 33.350574, 33.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986153, 33.883083, 33.991505>,  <39.337048, 33.640781, 33.927788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986153, 33.883083, 33.991505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078545, 34.179676, 34.243488>,  <40.133980, 34.357632, 34.394680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078545, 34.179676, 34.243488>,  <39.986153, 33.883083, 33.991505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078545, 34.179676, 34.243488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490391, -0.647932, 0.582838,
		0.840337, 0.174303, -0.513277,
		0.230978, 0.741486, 0.629958,
		40.147839, 34.402122, 34.432476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811226, 33.858444, 34.049683>,  <39.986153, 33.883083, 33.991505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811226, 33.858444, 34.049683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595680, 33.974491, 34.366024>,  <40.466354, 34.044121, 34.555828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595680, 33.974491, 34.366024>,  <40.811226, 33.858444, 34.049683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595680, 33.974491, 34.366024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487226, -0.658520, 0.573553,
		0.687196, 0.694393, 0.213497,
		-0.538863, 0.290122, 0.790858,
		40.434021, 34.061527, 34.603283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435837, 33.854183, 34.520287>,  <40.811226, 33.858444, 34.049683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435837, 33.854183, 34.520287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776333, 33.783752, 34.718025>,  <41.980633, 33.741493, 34.836670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776333, 33.783752, 34.718025>,  <41.435837, 33.854183, 34.520287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776333, 33.783752, 34.718025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471526, -0.670101, 0.573260,
		0.230326, -0.721083, -0.653445,
		0.851242, -0.176080, 0.494351,
		42.031704, 33.730930, 34.866329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882690, 33.515415, 34.780453>,  <41.435837, 33.854183, 34.520287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882690, 33.515415, 34.780453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185303, 33.352329, 34.984978>,  <41.366871, 33.254478, 35.107693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185303, 33.352329, 34.984978>,  <40.882690, 33.515415, 34.780453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185303, 33.352329, 34.984978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435335, 0.269471, 0.858993,
		-0.488005, -0.872442, 0.026370,
		0.756528, -0.407713, 0.511308,
		41.412262, 33.230015, 35.138371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559643, 33.206234, 35.422688>,  <40.882690, 33.515415, 34.780453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559643, 33.206234, 35.422688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954514, 33.247982, 35.470993>,  <41.191437, 33.273029, 35.499977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954514, 33.247982, 35.470993>,  <40.559643, 33.206234, 35.422688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954514, 33.247982, 35.470993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151236, 0.369669, 0.916773,
		0.051035, -0.923283, 0.380713,
		0.987179, 0.104365, 0.120768,
		41.250668, 33.279293, 35.507225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677914, 32.954895, 36.207813>,  <40.559643, 33.206234, 35.422688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677914, 32.954895, 36.207813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951584, 33.203926, 36.055866>,  <41.115788, 33.353344, 35.964699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951584, 33.203926, 36.055866>,  <40.677914, 32.954895, 36.207813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951584, 33.203926, 36.055866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065402, 0.571131, 0.818249,
		0.726378, -0.534983, 0.431473,
		0.684177, 0.622577, -0.379868,
		41.156837, 33.390697, 35.941906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936867, 32.593410, 35.747051>,  <40.677914, 32.954895, 36.207813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936867, 32.593410, 35.747051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577061, 32.609539, 35.921059>,  <40.361176, 32.619217, 36.025463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577061, 32.609539, 35.921059>,  <40.936867, 32.593410, 35.747051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577061, 32.609539, 35.921059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343282, 0.550680, -0.760861,
		-0.270233, -0.833742, -0.481506,
		-0.899518, 0.040317, 0.435020,
		40.307205, 32.621635, 36.051563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339169, 32.420090, 35.284714>,  <40.936867, 32.593410, 35.747051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339169, 32.420090, 35.284714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259930, 32.673866, 35.583576>,  <40.212387, 32.826134, 35.762894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259930, 32.673866, 35.583576>,  <40.339169, 32.420090, 35.284714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259930, 32.673866, 35.583576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307860, 0.683412, -0.661944,
		-0.930580, -0.361151, 0.059934,
		-0.198102, 0.634443, 0.747153,
		40.200500, 32.864201, 35.807724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734558, 32.895454, 35.126255>,  <40.339169, 32.420090, 35.284714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734558, 32.895454, 35.126255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915531, 33.110001, 35.411243>,  <40.024113, 33.238728, 35.582237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915531, 33.110001, 35.411243>,  <39.734558, 32.895454, 35.126255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915531, 33.110001, 35.411243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007342, 0.796646, -0.604401,
		-0.891770, 0.278680, 0.356488,
		0.452429, 0.536370, 0.712471,
		40.051258, 33.270912, 35.624985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248623, 33.443779, 35.334736>,  <39.734558, 32.895454, 35.126255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248623, 33.443779, 35.334736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647877, 33.468018, 35.337532>,  <39.887428, 33.482559, 35.339211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647877, 33.468018, 35.337532>,  <39.248623, 33.443779, 35.334736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647877, 33.468018, 35.337532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043123, 0.782056, -0.621714,
		-0.043139, 0.620255, 0.783213,
		0.998138, 0.060595, 0.006989,
		39.947319, 33.486195, 35.339630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434597, 34.043945, 35.616291>,  <39.248623, 33.443779, 35.334736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434597, 34.043945, 35.616291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727547, 33.966496, 35.355175>,  <39.903316, 33.920025, 35.198505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727547, 33.966496, 35.355175>,  <39.434597, 34.043945, 35.616291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727547, 33.966496, 35.355175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010338, 0.955443, -0.294995,
		0.680824, 0.222794, 0.697740,
		0.732374, -0.193627, -0.652792,
		39.947258, 33.908409, 35.159336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940998, 34.460587, 35.619942>,  <39.434597, 34.043945, 35.616291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940998, 34.460587, 35.619942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927769, 34.366207, 35.231461>,  <39.919830, 34.309578, 34.998371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927769, 34.366207, 35.231461>,  <39.940998, 34.460587, 35.619942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927769, 34.366207, 35.231461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009473, 0.971763, -0.235767,
		0.999408, 0.001402, -0.034375,
		-0.033074, -0.235953, -0.971201,
		39.917847, 34.295422, 34.940102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440998, 34.908554, 35.273518>,  <39.940998, 34.460587, 35.619942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440998, 34.908554, 35.273518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112820, 34.849712, 35.052525>,  <39.915913, 34.814407, 34.919930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112820, 34.849712, 35.052525>,  <40.440998, 34.908554, 35.273518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112820, 34.849712, 35.052525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042246, 0.979289, -0.198012,
		0.570164, -0.139118, -0.809667,
		-0.820444, -0.147104, -0.552478,
		39.866688, 34.805580, 34.886780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232288, 35.221058, 35.386765>,  <40.440998, 34.908554, 35.273518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232288, 35.221058, 35.386765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433289, 35.344837, 35.063843>,  <41.553886, 35.419106, 34.870090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433289, 35.344837, 35.063843>,  <41.232288, 35.221058, 35.386765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433289, 35.344837, 35.063843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821014, -0.463459, 0.333379,
		-0.270986, -0.830328, -0.486950,
		0.502496, 0.309452, -0.807302,
		41.584038, 35.437672, 34.821651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754635, 34.732048, 35.168274>,  <41.232288, 35.221058, 35.386765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754635, 34.732048, 35.168274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449051, 34.826641, 34.928123>,  <41.265701, 34.883396, 34.784035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449051, 34.826641, 34.928123>,  <41.754635, 34.732048, 35.168274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449051, 34.826641, 34.928123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401051, 0.554873, 0.728886,
		0.505498, 0.797617, -0.329058,
		-0.763957, 0.236481, -0.600372,
		41.219864, 34.897587, 34.748013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977238, 35.357128, 35.462059>,  <41.754635, 34.732048, 35.168274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977238, 35.357128, 35.462059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054993, 35.724117, 35.323231>,  <42.101646, 35.944309, 35.239933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054993, 35.724117, 35.323231>,  <41.977238, 35.357128, 35.462059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054993, 35.724117, 35.323231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126377, 0.327446, 0.936380,
		0.972750, -0.225884, -0.052295,
		0.194389, 0.917472, -0.347070,
		42.113308, 35.999359, 35.219109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654129, 35.570580, 35.612377>,  <41.977238, 35.357128, 35.462059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654129, 35.570580, 35.612377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400066, 35.877903, 35.580669>,  <42.247627, 36.062298, 35.561646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400066, 35.877903, 35.580669>,  <42.654129, 35.570580, 35.612377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400066, 35.877903, 35.580669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141003, 0.216249, 0.966103,
		0.759404, 0.602449, -0.245685,
		-0.635157, 0.768305, -0.079273,
		42.209518, 36.108395, 35.556889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954750, 36.248981, 35.917503>,  <42.654129, 35.570580, 35.612377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954750, 36.248981, 35.917503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554848, 36.253231, 35.925308>,  <42.314907, 36.255779, 35.929993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554848, 36.253231, 35.925308>,  <42.954750, 36.248981, 35.917503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554848, 36.253231, 35.925308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020312, 0.081041, 0.996504,
		0.009003, 0.996654, -0.081237,
		-0.999753, 0.010622, 0.019514,
		42.254921, 36.256416, 35.931164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872143, 36.896420, 35.505867>,  <42.954750, 36.248981, 35.917503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872143, 36.896420, 35.505867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040234, 36.884083, 35.868626>,  <43.141087, 36.876682, 36.086281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040234, 36.884083, 35.868626>,  <42.872143, 36.896420, 35.505867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040234, 36.884083, 35.868626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907376, 0.023904, -0.419639,
		-0.008737, 0.999238, 0.038027,
		0.420228, -0.030839, 0.906894,
		43.166302, 36.874832, 36.140694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819557, 37.720901, 35.558247>,  <42.872143, 36.896420, 35.505867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819557, 37.720901, 35.558247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132839, 37.791130, 35.319660>,  <43.320808, 37.833267, 35.176510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132839, 37.791130, 35.319660>,  <42.819557, 37.720901, 35.558247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132839, 37.791130, 35.319660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024614, 0.949798, 0.311893,
		0.621282, -0.258956, 0.739561,
		0.783201, 0.175570, -0.596467,
		43.367798, 37.843800, 35.140720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303986, 38.080528, 36.077370>,  <42.819557, 37.720901, 35.558247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303986, 38.080528, 36.077370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399734, 38.140018, 35.693581>,  <43.457184, 38.175713, 35.463306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399734, 38.140018, 35.693581>,  <43.303986, 38.080528, 36.077370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399734, 38.140018, 35.693581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260671, 0.942074, 0.211059,
		0.935282, -0.300627, 0.186736,
		0.239370, 0.148723, -0.959470,
		43.471546, 38.184635, 35.405739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021446, 38.247650, 35.890358>,  <43.303986, 38.080528, 36.077370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021446, 38.247650, 35.890358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832916, 38.401943, 35.573105>,  <43.719799, 38.494518, 35.382751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832916, 38.401943, 35.573105>,  <44.021446, 38.247650, 35.890358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832916, 38.401943, 35.573105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444137, 0.880744, 0.164413,
		0.761967, -0.274768, -0.586437,
		-0.471325, 0.385735, -0.793133,
		43.691517, 38.517662, 35.335163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482296, 38.615215, 35.465607>,  <44.021446, 38.247650, 35.890358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482296, 38.615215, 35.465607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110184, 38.761951, 35.464386>,  <43.886917, 38.849995, 35.463654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110184, 38.761951, 35.464386>,  <44.482296, 38.615215, 35.465607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110184, 38.761951, 35.464386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360313, 0.915224, 0.180390,
		0.068963, 0.166715, -0.983591,
		-0.930279, 0.366840, -0.003047,
		43.831100, 38.872005, 35.463470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229248, 38.325260, 35.218842>,  <44.482296, 38.615215, 35.465607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229248, 38.325260, 35.218842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.589779, 38.206406, 35.092785>,  <45.806099, 38.135094, 35.017151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.589779, 38.206406, 35.092785>,  <45.229248, 38.325260, 35.218842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589779, 38.206406, 35.092785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388247, -0.231699, -0.891953,
		0.192013, 0.926297, -0.324200,
		0.901330, -0.297136, -0.315142,
		45.860176, 38.117264, 34.998241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292759, 38.508686, 34.383121>,  <45.229248, 38.325260, 35.218842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292759, 38.508686, 34.383121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530605, 38.210716, 34.504131>,  <45.673313, 38.031933, 34.576736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530605, 38.210716, 34.504131>,  <45.292759, 38.508686, 34.383121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530605, 38.210716, 34.504131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220221, -0.512781, -0.829794,
		0.773264, 0.426783, -0.468955,
		0.594613, -0.744924, 0.302529,
		45.708988, 37.987240, 34.594891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924469, 38.468395, 33.929726>,  <45.292759, 38.508686, 34.383121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924469, 38.468395, 33.929726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780502, 38.130726, 34.088638>,  <45.694122, 37.928123, 34.183987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780502, 38.130726, 34.088638>,  <45.924469, 38.468395, 33.929726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780502, 38.130726, 34.088638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290448, -0.303278, -0.907558,
		0.886623, -0.442035, -0.136034,
		-0.359917, -0.844173, 0.397281,
		45.672527, 37.877476, 34.207821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096367, 38.039173, 33.460823>,  <45.924469, 38.468395, 33.929726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096367, 38.039173, 33.460823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768211, 37.910076, 33.649632>,  <45.571320, 37.832619, 33.762917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768211, 37.910076, 33.649632>,  <46.096367, 38.039173, 33.460823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768211, 37.910076, 33.649632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421617, -0.216206, -0.880621,
		0.386271, -0.921461, 0.041297,
		-0.820387, -0.322747, 0.472017,
		45.522095, 37.813251, 33.791237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809242, 37.416470, 33.097801>,  <46.096367, 38.039173, 33.460823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809242, 37.416470, 33.097801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531757, 37.639481, 33.280197>,  <45.365269, 37.773289, 33.389637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531757, 37.639481, 33.280197>,  <45.809242, 37.416470, 33.097801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531757, 37.639481, 33.280197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560727, -0.020692, -0.827742,
		-0.452056, -0.829898, 0.326977,
		-0.693708, 0.557531, 0.455992,
		45.323647, 37.806740, 33.416996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228180, 36.867245, 32.906483>,  <45.809242, 37.416470, 33.097801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228180, 36.867245, 32.906483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460781, 37.171986, 32.792332>,  <46.600342, 37.354832, 32.723843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460781, 37.171986, 32.792332>,  <46.228180, 36.867245, 32.906483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460781, 37.171986, 32.792332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716087, -0.645794, -0.264896,
		-0.386104, -0.050316, -0.921082,
		0.581501, 0.761852, -0.285375,
		46.635231, 37.400539, 32.706718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652119, 36.719204, 32.231045>,  <46.228180, 36.867245, 32.906483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652119, 36.719204, 32.231045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830795, 36.978817, 32.477367>,  <46.938004, 37.134586, 32.625160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830795, 36.978817, 32.477367>,  <46.652119, 36.719204, 32.231045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830795, 36.978817, 32.477367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837179, -0.546003, -0.031809,
		0.315586, 0.529749, -0.787256,
		0.446695, 0.649035, 0.615805,
		46.964806, 37.173527, 32.662109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.269226, 36.917358, 31.978464>,  <46.652119, 36.719204, 32.231045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.269226, 36.917358, 31.978464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286583, 36.946568, 32.377018>,  <47.296997, 36.964092, 32.616150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286583, 36.946568, 32.377018>,  <47.269226, 36.917358, 31.978464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.286583, 36.946568, 32.377018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645627, -0.763146, 0.027818,
		0.762419, 0.642087, -0.080261,
		0.043390, 0.073027, 0.996386,
		47.299599, 36.968475, 32.675934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.976437, 36.940090, 32.172874>,  <47.269226, 36.917358, 31.978464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.976437, 36.940090, 32.172874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730995, 36.769524, 32.438705>,  <47.583733, 36.667183, 32.598202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730995, 36.769524, 32.438705>,  <47.976437, 36.940090, 32.172874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730995, 36.769524, 32.438705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563242, -0.826230, -0.010104,
		0.553400, 0.368116, 0.747154,
		-0.613602, -0.426420, 0.664574,
		47.546913, 36.641598, 32.638077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.172668, 36.695339, 32.942505>,  <47.976437, 36.940090, 32.172874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.172668, 36.695339, 32.942505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.890549, 36.449520, 32.801151>,  <47.721275, 36.302029, 32.716339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.890549, 36.449520, 32.801151>,  <48.172668, 36.695339, 32.942505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.890549, 36.449520, 32.801151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490563, -0.782965, 0.382510,
		-0.511760, 0.096426, 0.853700,
		-0.705301, -0.614547, -0.353387,
		47.678959, 36.265156, 32.695133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911823, 36.367695, 33.498520>,  <48.172668, 36.695339, 32.942505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911823, 36.367695, 33.498520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.858112, 36.098095, 33.207947>,  <47.825886, 35.936337, 33.033604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.858112, 36.098095, 33.207947>,  <47.911823, 36.367695, 33.498520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.858112, 36.098095, 33.207947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594011, -0.641507, 0.485408,
		-0.793172, -0.366329, 0.486499,
		-0.134273, -0.673997, -0.726429,
		47.817829, 35.895897, 32.990017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.758030, 35.629700, 33.758137>,  <47.911823, 36.367695, 33.498520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.758030, 35.629700, 33.758137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.935509, 35.643101, 33.399918>,  <48.041996, 35.651142, 33.184986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.935509, 35.643101, 33.399918>,  <47.758030, 35.629700, 33.758137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.935509, 35.643101, 33.399918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669621, -0.676532, 0.306452,
		-0.595601, -0.735651, -0.322609,
		0.443697, 0.033503, -0.895550,
		48.068619, 35.653152, 33.131252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474922, 35.826828, 34.346874>,  <47.758030, 35.629700, 33.758137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474922, 35.826828, 34.346874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442890, 36.225159, 34.329403>,  <47.423672, 36.464157, 34.318920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442890, 36.225159, 34.329403>,  <47.474922, 35.826828, 34.346874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.442890, 36.225159, 34.329403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386609, -0.071420, -0.919474,
		-0.918760, -0.056745, 0.390717,
		-0.080080, 0.995831, -0.043680,
		47.418865, 36.523907, 34.316299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133980, 35.422890, 34.792828>,  <47.474922, 35.826828, 34.346874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133980, 35.422890, 34.792828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348022, 35.356869, 35.124229>,  <47.476448, 35.317257, 35.323071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348022, 35.356869, 35.124229>,  <47.133980, 35.422890, 34.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348022, 35.356869, 35.124229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099035, -0.961711, -0.255547,
		0.838962, 0.218795, -0.498269,
		0.535103, -0.165048, 0.828507,
		47.508553, 35.307354, 35.372780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.753479, 35.040287, 34.672512>,  <47.133980, 35.422890, 34.792828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.753479, 35.040287, 34.672512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585262, 34.947815, 35.023445>,  <47.484333, 34.892334, 35.234005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585262, 34.947815, 35.023445>,  <47.753479, 35.040287, 34.672512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585262, 34.947815, 35.023445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136505, -0.939864, -0.313086,
		0.896947, -0.251425, 0.363691,
		-0.420538, -0.231176, 0.877329,
		47.459103, 34.878464, 35.286644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.154774, 36.737160, 24.568825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800926, 36.640842, 24.409094>,  <33.588615, 36.583054, 24.313255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800926, 36.640842, 24.409094>,  <34.154774, 36.737160, 24.568825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800926, 36.640842, 24.409094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249224, -0.479644, 0.841325,
		-0.394121, 0.843777, 0.364292,
		-0.884622, -0.240793, -0.399327,
		33.535538, 36.568604, 24.289295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715595, 36.769909, 25.105545>,  <34.154774, 36.737160, 24.568825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715595, 36.769909, 25.105545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.506897, 36.548161, 24.846176>,  <33.381676, 36.415112, 24.690554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.506897, 36.548161, 24.846176>,  <33.715595, 36.769909, 25.105545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506897, 36.548161, 24.846176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474084, -0.443493, 0.760630,
		-0.709241, 0.704265, -0.031425,
		-0.521749, -0.554368, -0.648424,
		33.350372, 36.381851, 24.651649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988533, 36.848671, 25.171783>,  <33.715595, 36.769909, 25.105545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988533, 36.848671, 25.171783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030628, 36.477554, 25.028606>,  <33.055885, 36.254883, 24.942701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030628, 36.477554, 25.028606>,  <32.988533, 36.848671, 25.171783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030628, 36.477554, 25.028606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407624, -0.368559, 0.835468,
		-0.907065, 0.057982, -0.416978,
		0.105239, -0.927795, -0.357942,
		33.062199, 36.199215, 24.921225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374264, 36.467514, 25.280872>,  <32.988533, 36.848671, 25.171783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374264, 36.467514, 25.280872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.623417, 36.165482, 25.199022>,  <32.772907, 35.984261, 25.149912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.623417, 36.165482, 25.199022>,  <32.374264, 36.467514, 25.280872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623417, 36.165482, 25.199022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357207, -0.507208, 0.784311,
		-0.696007, -0.415437, -0.585650,
		0.622878, -0.755085, -0.204624,
		32.810280, 35.938957, 25.137636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991995, 35.957729, 25.386797>,  <32.374264, 36.467514, 25.280872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991995, 35.957729, 25.386797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.347706, 35.779766, 25.429207>,  <32.561131, 35.672989, 25.454653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.347706, 35.779766, 25.429207>,  <31.991995, 35.957729, 25.386797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347706, 35.779766, 25.429207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295343, -0.381605, 0.875871,
		-0.349220, -0.810208, -0.470753,
		0.889279, -0.444905, 0.106025,
		32.614491, 35.646294, 25.461014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821264, 35.293053, 25.630531>,  <31.991995, 35.957729, 25.386797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821264, 35.293053, 25.630531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.209423, 35.326649, 25.721106>,  <32.442318, 35.346806, 25.775450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.209423, 35.326649, 25.721106>,  <31.821264, 35.293053, 25.630531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209423, 35.326649, 25.721106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147927, -0.534418, 0.832175,
		0.190905, -0.841037, -0.506174,
		0.970399, 0.083989, 0.226435,
		32.500542, 35.351845, 25.789036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040897, 34.633152, 25.735170>,  <31.821264, 35.293053, 25.630531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040897, 34.633152, 25.735170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.308521, 34.875164, 25.907818>,  <32.469093, 35.020370, 26.011406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.308521, 34.875164, 25.907818>,  <32.040897, 34.633152, 25.735170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308521, 34.875164, 25.907818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167832, -0.442753, 0.880796,
		0.724013, -0.661743, -0.194683,
		0.669057, 0.605034, 0.431621,
		32.509239, 35.056675, 26.037304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527344, 34.193172, 26.177444>,  <32.040897, 34.633152, 25.735170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527344, 34.193172, 26.177444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.562454, 34.570755, 26.304720>,  <32.583519, 34.797306, 26.381086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.562454, 34.570755, 26.304720>,  <32.527344, 34.193172, 26.177444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562454, 34.570755, 26.304720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072182, -0.324610, 0.943090,
		0.993522, -0.059812, -0.096630,
		0.087775, 0.943955, 0.318190,
		32.588787, 34.853943, 26.400177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996693, 34.160763, 26.747469>,  <32.527344, 34.193172, 26.177444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996693, 34.160763, 26.747469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794643, 34.504822, 26.775766>,  <32.673416, 34.711258, 26.792746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794643, 34.504822, 26.775766>,  <32.996693, 34.160763, 26.747469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794643, 34.504822, 26.775766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073475, -0.038814, 0.996542,
		0.859917, 0.508570, -0.043594,
		-0.505119, 0.860146, 0.070743,
		32.643108, 34.762867, 26.796989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363758, 34.555893, 27.204517>,  <32.996693, 34.160763, 26.747469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363758, 34.555893, 27.204517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.988293, 34.692951, 27.220007>,  <32.763012, 34.775185, 27.229300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.988293, 34.692951, 27.220007>,  <33.363758, 34.555893, 27.204517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988293, 34.692951, 27.220007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024456, -0.045862, 0.998648,
		0.343959, 0.938344, 0.034670,
		-0.938666, 0.342646, 0.038723,
		32.706692, 34.795746, 27.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454151, 34.865772, 27.771814>,  <33.363758, 34.555893, 27.204517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454151, 34.865772, 27.771814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060722, 34.842667, 27.703409>,  <32.824665, 34.828804, 27.662365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060722, 34.842667, 27.703409>,  <33.454151, 34.865772, 27.771814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060722, 34.842667, 27.703409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154467, -0.220835, 0.963001,
		-0.093396, 0.973599, 0.208285,
		-0.983574, -0.057767, -0.171014,
		32.765652, 34.825336, 27.652105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196384, 35.108841, 28.385342>,  <33.454151, 34.865772, 27.771814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196384, 35.108841, 28.385342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867920, 34.939499, 28.232256>,  <32.670841, 34.837894, 28.140404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867920, 34.939499, 28.232256>,  <33.196384, 35.108841, 28.385342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867920, 34.939499, 28.232256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257447, -0.323703, 0.910460,
		-0.509336, 0.846159, 0.156819,
		-0.821157, -0.423357, -0.382714,
		32.621574, 34.812492, 28.117441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643425, 35.372253, 28.679951>,  <33.196384, 35.108841, 28.385342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643425, 35.372253, 28.679951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.550251, 35.003750, 28.555357>,  <32.494347, 34.782646, 28.480600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.550251, 35.003750, 28.555357>,  <32.643425, 35.372253, 28.679951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550251, 35.003750, 28.555357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241057, -0.255601, 0.936248,
		-0.942142, 0.293173, -0.162537,
		-0.232938, -0.921259, -0.311483,
		32.480370, 34.727371, 28.461912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912907, 35.214893, 28.846640>,  <32.643425, 35.372253, 28.679951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912907, 35.214893, 28.846640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.083946, 34.853657, 28.830677>,  <32.186569, 34.636917, 28.821100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.083946, 34.853657, 28.830677>,  <31.912907, 35.214893, 28.846640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083946, 34.853657, 28.830677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340944, -0.202003, 0.918124,
		-0.837208, -0.378981, -0.394278,
		0.427597, -0.903088, -0.039907,
		32.212227, 34.582729, 28.818705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448566, 34.938919, 29.239077>,  <31.912907, 35.214893, 28.846640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448566, 34.938919, 29.239077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752310, 34.678673, 29.235712>,  <31.934557, 34.522526, 29.233694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752310, 34.678673, 29.235712>,  <31.448566, 34.938919, 29.239077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752310, 34.678673, 29.235712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192511, -0.236994, 0.952246,
		-0.621541, -0.721478, -0.305215,
		0.759359, -0.650617, -0.008409,
		31.980118, 34.483486, 29.233189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223274, 34.318787, 29.514074>,  <31.448566, 34.938919, 29.239077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223274, 34.318787, 29.514074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617519, 34.260242, 29.547880>,  <31.854067, 34.225117, 29.568165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617519, 34.260242, 29.547880>,  <31.223274, 34.318787, 29.514074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617519, 34.260242, 29.547880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133049, -0.363534, 0.922031,
		-0.104226, -0.920012, -0.377777,
		0.985614, -0.146362, 0.084517,
		31.913204, 34.216335, 29.573235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253620, 33.685055, 29.885664>,  <31.223274, 34.318787, 29.514074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253620, 33.685055, 29.885664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616842, 33.842369, 29.943304>,  <31.834776, 33.936756, 29.977888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616842, 33.842369, 29.943304>,  <31.253620, 33.685055, 29.885664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616842, 33.842369, 29.943304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053173, -0.233008, 0.971020,
		0.415465, -0.889400, -0.190671,
		0.908053, 0.393287, 0.144099,
		31.889259, 33.960354, 29.986534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522511, 33.242378, 30.278057>,  <31.253620, 33.685055, 29.885664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522511, 33.242378, 30.278057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.739363, 33.572544, 30.341036>,  <31.869474, 33.770641, 30.378822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.739363, 33.572544, 30.341036>,  <31.522511, 33.242378, 30.278057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739363, 33.572544, 30.341036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098469, -0.248484, 0.963618,
		0.834504, -0.506904, -0.215989,
		0.542132, 0.825411, 0.157447,
		31.902002, 33.820168, 30.388269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230679, 33.010715, 30.594797>,  <31.522511, 33.242378, 30.278057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230679, 33.010715, 30.594797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.175404, 33.397099, 30.682278>,  <32.142239, 33.628929, 30.734766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.175404, 33.397099, 30.682278>,  <32.230679, 33.010715, 30.594797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175404, 33.397099, 30.682278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024785, -0.217380, 0.975773,
		0.990097, 0.140256, 0.006097,
		-0.138183, 0.965958, 0.218703,
		32.133949, 33.686886, 30.747889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777287, 33.241920, 31.036947>,  <32.230679, 33.010715, 30.594797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777287, 33.241920, 31.036947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.485233, 33.504883, 31.111490>,  <32.310001, 33.662659, 31.156216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.485233, 33.504883, 31.111490>,  <32.777287, 33.241920, 31.036947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485233, 33.504883, 31.111490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063294, -0.206491, 0.976399,
		0.680371, 0.724694, 0.109155,
		-0.730130, 0.657404, 0.186360,
		32.266193, 33.702103, 31.167398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923206, 33.478123, 31.614933>,  <32.777287, 33.241920, 31.036947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923206, 33.478123, 31.614933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539322, 33.589027, 31.596722>,  <32.308990, 33.655571, 31.585794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539322, 33.589027, 31.596722>,  <32.923206, 33.478123, 31.614933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539322, 33.589027, 31.596722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085569, -0.134069, 0.987271,
		0.267631, 0.951394, 0.152393,
		-0.959714, 0.277265, -0.045529,
		32.251408, 33.672207, 31.583063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631779, 33.263477, 31.434618>,  <32.923206, 33.478123, 31.614933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631779, 33.263477, 31.434618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.895176, 33.464005, 31.659143>,  <34.053215, 33.584320, 31.793858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.895176, 33.464005, 31.659143>,  <33.631779, 33.263477, 31.434618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895176, 33.464005, 31.659143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361192, 0.443816, -0.820102,
		-0.660250, 0.742771, 0.111178,
		0.658491, 0.501316, 0.561313,
		34.092724, 33.614399, 31.827538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514202, 33.982491, 31.191162>,  <33.631779, 33.263477, 31.434618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514202, 33.982491, 31.191162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872169, 33.948215, 31.366335>,  <34.086948, 33.927650, 31.471439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872169, 33.948215, 31.366335>,  <33.514202, 33.982491, 31.191162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872169, 33.948215, 31.366335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415418, 0.518378, -0.747471,
		-0.162963, 0.850847, 0.499502,
		0.894914, -0.085692, 0.437933,
		34.140644, 33.922508, 31.497715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862167, 34.675049, 31.094980>,  <33.514202, 33.982491, 31.191162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862167, 34.675049, 31.094980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.149940, 34.409451, 31.176489>,  <34.322605, 34.250092, 31.225395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.149940, 34.409451, 31.176489>,  <33.862167, 34.675049, 31.094980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149940, 34.409451, 31.176489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532199, 0.338489, -0.776009,
		0.446290, 0.666737, 0.596898,
		0.719437, -0.663994, 0.203773,
		34.365772, 34.210251, 31.237621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469379, 35.003536, 30.939487>,  <33.862167, 34.675049, 31.094980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469379, 35.003536, 30.939487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531338, 34.608364, 30.939461>,  <34.568512, 34.371262, 30.939445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531338, 34.608364, 30.939461>,  <34.469379, 35.003536, 30.939487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531338, 34.608364, 30.939461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485982, 0.076252, -0.870636,
		0.860133, 0.134824, 0.491928,
		0.154894, -0.987931, -0.000065,
		34.577805, 34.311985, 30.939442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232376, 34.934029, 30.747028>,  <34.469379, 35.003536, 30.939487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232376, 34.934029, 30.747028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061966, 34.579193, 30.675943>,  <34.959721, 34.366291, 30.633293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061966, 34.579193, 30.675943>,  <35.232376, 34.934029, 30.747028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061966, 34.579193, 30.675943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472925, -0.050906, -0.879631,
		0.771262, -0.458788, 0.441212,
		-0.426024, -0.887086, -0.177710,
		34.934158, 34.313068, 30.622631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693882, 34.580940, 30.394112>,  <35.232376, 34.934029, 30.747028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693882, 34.580940, 30.394112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377323, 34.350395, 30.312624>,  <35.187389, 34.212070, 30.263731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377323, 34.350395, 30.312624>,  <35.693882, 34.580940, 30.394112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377323, 34.350395, 30.312624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337936, -0.134780, -0.931468,
		0.509403, -0.806005, 0.301437,
		-0.791396, -0.576360, -0.203721,
		35.139904, 34.177486, 30.251507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023357, 34.048130, 30.093689>,  <35.693882, 34.580940, 30.394112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023357, 34.048130, 30.093689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.645931, 34.017548, 29.964796>,  <35.419476, 33.999199, 29.887461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.645931, 34.017548, 29.964796>,  <36.023357, 34.048130, 30.093689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645931, 34.017548, 29.964796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329569, -0.120965, -0.936350,
		0.032616, -0.989708, 0.139338,
		-0.943568, -0.076461, -0.322232,
		35.362862, 33.994610, 29.868126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064751, 33.491531, 29.633970>,  <36.023357, 34.048130, 30.093689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064751, 33.491531, 29.633970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727562, 33.686649, 29.543238>,  <35.525249, 33.803722, 29.488798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727562, 33.686649, 29.543238>,  <36.064751, 33.491531, 29.633970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727562, 33.686649, 29.543238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154823, -0.183831, -0.970688,
		-0.515200, -0.853381, 0.079442,
		-0.842971, 0.487799, -0.226832,
		35.474670, 33.832989, 29.475187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850109, 33.141323, 29.062183>,  <36.064751, 33.491531, 29.633970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850109, 33.141323, 29.062183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674236, 33.500454, 29.052507>,  <35.568714, 33.715931, 29.046701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674236, 33.500454, 29.052507>,  <35.850109, 33.141323, 29.062183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674236, 33.500454, 29.052507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141817, 0.042805, -0.988967,
		-0.886886, -0.438262, -0.146147,
		-0.439683, 0.897827, -0.024190,
		35.542332, 33.769802, 29.045250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451511, 33.087757, 28.485844>,  <35.850109, 33.141323, 29.062183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451511, 33.087757, 28.485844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505924, 33.476513, 28.562717>,  <35.538570, 33.709766, 28.608841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505924, 33.476513, 28.562717>,  <35.451511, 33.087757, 28.485844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505924, 33.476513, 28.562717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255389, 0.153031, -0.954651,
		-0.957221, 0.178940, -0.227393,
		0.136028, 0.971886, 0.192184,
		35.546734, 33.768078, 28.620373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051727, 33.446571, 27.917252>,  <35.451511, 33.087757, 28.485844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051727, 33.446571, 27.917252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329086, 33.707104, 28.040520>,  <35.495502, 33.863422, 28.114481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329086, 33.707104, 28.040520>,  <35.051727, 33.446571, 27.917252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329086, 33.707104, 28.040520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204859, 0.231834, -0.950939,
		-0.690820, 0.722510, 0.027323,
		0.693398, 0.651331, 0.308168,
		35.537106, 33.902504, 28.132971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916637, 34.111546, 27.652653>,  <35.051727, 33.446571, 27.917252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916637, 34.111546, 27.652653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306419, 34.120003, 27.742081>,  <35.540291, 34.125076, 27.795736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306419, 34.120003, 27.742081>,  <34.916637, 34.111546, 27.652653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306419, 34.120003, 27.742081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184857, 0.489741, -0.852045,
		-0.127506, 0.871611, 0.473324,
		0.974459, 0.021144, 0.223568,
		35.598759, 34.126347, 27.809151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170074, 34.776649, 27.228300>,  <34.916637, 34.111546, 27.652653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170074, 34.776649, 27.228300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498302, 34.574780, 27.335608>,  <35.695240, 34.453659, 27.399992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498302, 34.574780, 27.335608>,  <35.170074, 34.776649, 27.228300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498302, 34.574780, 27.335608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516766, 0.454596, -0.725462,
		0.244168, 0.733925, 0.633827,
		0.820570, -0.504675, 0.268270,
		35.744473, 34.423378, 27.416088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663277, 35.339142, 27.367739>,  <35.170074, 34.776649, 27.228300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663277, 35.339142, 27.367739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808155, 34.979610, 27.269009>,  <35.895084, 34.763893, 27.209770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808155, 34.979610, 27.269009>,  <35.663277, 35.339142, 27.367739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808155, 34.979610, 27.269009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553442, 0.420456, -0.718970,
		0.750010, 0.123805, 0.649737,
		0.362198, -0.898827, -0.246827,
		35.916813, 34.709961, 27.194962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274582, 35.476597, 27.292444>,  <35.663277, 35.339142, 27.367739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274582, 35.476597, 27.292444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251644, 35.143456, 27.072239>,  <36.237881, 34.943569, 26.940115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251644, 35.143456, 27.072239>,  <36.274582, 35.476597, 27.292444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251644, 35.143456, 27.072239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336969, 0.502914, -0.795946,
		0.939768, -0.231150, 0.251806,
		-0.057346, -0.832855, -0.550513,
		36.234440, 34.893600, 26.907085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758312, 35.607491, 26.763763>,  <36.274582, 35.476597, 27.292444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758312, 35.607491, 26.763763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493759, 35.340248, 26.627407>,  <36.335026, 35.179901, 26.545593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493759, 35.340248, 26.627407>,  <36.758312, 35.607491, 26.763763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493759, 35.340248, 26.627407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054293, 0.410653, -0.910174,
		0.748082, -0.620480, -0.235325,
		-0.661381, -0.668109, -0.340890,
		36.295345, 35.139816, 26.525141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017876, 35.272026, 26.125738>,  <36.758312, 35.607491, 26.763763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017876, 35.272026, 26.125738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619156, 35.240334, 26.121601>,  <36.379925, 35.221317, 26.119118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619156, 35.240334, 26.121601>,  <37.017876, 35.272026, 26.125738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619156, 35.240334, 26.121601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005341, 0.195237, -0.980742,
		0.079724, -0.977551, -0.195036,
		-0.996803, -0.079230, -0.010344,
		36.320114, 35.216564, 26.118498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924011, 35.175327, 25.464914>,  <37.017876, 35.272026, 26.125738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924011, 35.175327, 25.464914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555557, 35.257050, 25.597445>,  <36.334484, 35.306084, 25.676964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555557, 35.257050, 25.597445>,  <36.924011, 35.175327, 25.464914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555557, 35.257050, 25.597445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284204, 0.228633, -0.931104,
		-0.265982, -0.951833, -0.152536,
		-0.921131, 0.204306, 0.331327,
		36.279217, 35.318340, 25.696842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494308, 34.908615, 24.945419>,  <36.924011, 35.175327, 25.464914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494308, 34.908615, 24.945419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269718, 35.172344, 25.145433>,  <36.134964, 35.330582, 25.265442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269718, 35.172344, 25.145433>,  <36.494308, 34.908615, 24.945419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269718, 35.172344, 25.145433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395074, 0.317370, -0.862086,
		-0.727088, -0.681596, 0.082284,
		-0.561480, 0.659321, 0.500036,
		36.101273, 35.370140, 25.295444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.693821, 35.103142, 24.570009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769505, 35.409199, 24.816185>,  <35.814915, 35.592831, 24.963890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769505, 35.409199, 24.816185>,  <35.693821, 35.103142, 24.570009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769505, 35.409199, 24.816185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306030, 0.641492, -0.703444,
		-0.933030, -0.055244, 0.355531,
		0.189209, 0.765139, 0.615438,
		35.826267, 35.638741, 25.000816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239487, 35.613518, 24.365150>,  <35.693821, 35.103142, 24.570009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239487, 35.613518, 24.365150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462910, 35.840786, 24.606876>,  <35.596962, 35.977146, 24.751911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462910, 35.840786, 24.606876>,  <35.239487, 35.613518, 24.365150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462910, 35.840786, 24.606876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116322, 0.775013, -0.621147,
		-0.821269, 0.276651, 0.498980,
		0.558557, 0.568171, 0.604314,
		35.630478, 36.011238, 24.788170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941360, 36.294167, 24.434214>,  <35.239487, 35.613518, 24.365150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941360, 36.294167, 24.434214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330833, 36.343693, 24.510748>,  <35.564518, 36.373409, 24.556667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330833, 36.343693, 24.510748>,  <34.941360, 36.294167, 24.434214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330833, 36.343693, 24.510748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001408, 0.836265, -0.548324,
		-0.227896, 0.534164, 0.814084,
		0.973684, 0.123815, 0.191334,
		35.622940, 36.380836, 24.568148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950073, 36.951584, 24.629862>,  <34.941360, 36.294167, 24.434214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950073, 36.951584, 24.629862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322769, 36.869370, 24.510111>,  <35.546387, 36.820042, 24.438261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322769, 36.869370, 24.510111>,  <34.950073, 36.951584, 24.629862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322769, 36.869370, 24.510111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051195, 0.890524, -0.452046,
		0.359511, 0.405861, 0.840255,
		0.931735, -0.205533, -0.299375,
		35.602291, 36.807709, 24.420298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275154, 37.540237, 24.760235>,  <34.950073, 36.951584, 24.629862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275154, 37.540237, 24.760235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515995, 37.347172, 24.505833>,  <35.660500, 37.231331, 24.353191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515995, 37.347172, 24.505833>,  <35.275154, 37.540237, 24.760235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515995, 37.347172, 24.505833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088997, 0.832190, -0.547301,
		0.793442, 0.272930, 0.544022,
		0.602105, -0.482668, -0.636005,
		35.696625, 37.202370, 24.315031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860985, 37.962681, 24.687189>,  <35.275154, 37.540237, 24.760235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860985, 37.962681, 24.687189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884823, 37.726803, 24.365019>,  <35.899124, 37.585278, 24.171717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884823, 37.726803, 24.365019>,  <35.860985, 37.962681, 24.687189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884823, 37.726803, 24.365019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026297, 0.807505, -0.589274,
		0.997876, 0.013937, 0.063630,
		0.059594, -0.589696, -0.805424,
		35.902702, 37.549892, 24.123392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308559, 38.213451, 24.309673>,  <35.860985, 37.962681, 24.687189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308559, 38.213451, 24.309673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100086, 38.001663, 24.041933>,  <35.975002, 37.874592, 23.881289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100086, 38.001663, 24.041933>,  <36.308559, 38.213451, 24.309673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100086, 38.001663, 24.041933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074838, 0.752917, -0.653846,
		0.850159, -0.390865, -0.352780,
		-0.521180, -0.529472, -0.669351,
		35.943733, 37.842823, 23.841127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709473, 38.275146, 23.631823>,  <36.308559, 38.213451, 24.309673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709473, 38.275146, 23.631823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340553, 38.164669, 23.523685>,  <36.119202, 38.098385, 23.458803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340553, 38.164669, 23.523685>,  <36.709473, 38.275146, 23.631823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340553, 38.164669, 23.523685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021963, 0.660916, -0.750139,
		0.385855, -0.697789, -0.603495,
		-0.922298, -0.276190, -0.270343,
		36.063866, 38.081810, 23.442583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779251, 38.167431, 22.953157>,  <36.709473, 38.275146, 23.631823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779251, 38.167431, 22.953157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385914, 38.201336, 23.017483>,  <36.149914, 38.221680, 23.056078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385914, 38.201336, 23.017483>,  <36.779251, 38.167431, 22.953157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385914, 38.201336, 23.017483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076761, 0.608298, -0.789988,
		-0.164781, -0.789170, -0.591656,
		-0.983339, 0.084759, 0.160814,
		36.090912, 38.226765, 23.065727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439774, 38.022148, 22.307402>,  <36.779251, 38.167431, 22.953157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439774, 38.022148, 22.307402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171940, 38.227341, 22.522253>,  <36.011242, 38.350456, 22.651163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171940, 38.227341, 22.522253>,  <36.439774, 38.022148, 22.307402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171940, 38.227341, 22.522253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250552, 0.524781, -0.813528,
		-0.699203, -0.679302, -0.222854,
		-0.669581, 0.512985, 0.537129,
		35.971066, 38.381237, 22.683392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696533, 37.986610, 22.010353>,  <36.439774, 38.022148, 22.307402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696533, 37.986610, 22.010353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741669, 38.305725, 22.247269>,  <35.768749, 38.497192, 22.389418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741669, 38.305725, 22.247269>,  <35.696533, 37.986610, 22.010353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741669, 38.305725, 22.247269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166876, 0.602843, -0.780213,
		-0.979500, -0.010800, 0.201155,
		0.112839, 0.797787, 0.592287,
		35.775520, 38.545059, 22.424955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243214, 38.427792, 21.751720>,  <35.696533, 37.986610, 22.010353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243214, 38.427792, 21.751720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418934, 38.682739, 22.004948>,  <35.524368, 38.835709, 22.156885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418934, 38.682739, 22.004948>,  <35.243214, 38.427792, 21.751720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418934, 38.682739, 22.004948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155942, 0.748117, -0.644983,
		-0.884700, 0.184621, 0.428043,
		0.439303, 0.637366, 0.633069,
		35.550724, 38.873951, 22.194868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736671, 39.028358, 21.898458>,  <35.243214, 38.427792, 21.751720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736671, 39.028358, 21.898458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106899, 39.161583, 21.970440>,  <35.329037, 39.241516, 22.013628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106899, 39.161583, 21.970440>,  <34.736671, 39.028358, 21.898458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106899, 39.161583, 21.970440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143178, 0.748025, -0.648042,
		-0.350447, 0.574046, 0.740040,
		0.925574, 0.333061, 0.179952,
		35.384571, 39.261501, 22.024426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754623, 39.796375, 22.164486>,  <34.736671, 39.028358, 21.898458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754623, 39.796375, 22.164486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119057, 39.711319, 22.023232>,  <35.337719, 39.660286, 21.938478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119057, 39.711319, 22.023232>,  <34.754623, 39.796375, 22.164486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119057, 39.711319, 22.023232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133137, 0.658965, -0.740297,
		0.390123, 0.721490, 0.572063,
		0.911086, -0.212644, -0.353134,
		35.392384, 39.647526, 21.917292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218960, 40.390144, 22.067780>,  <34.754623, 39.796375, 22.164486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218960, 40.390144, 22.067780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412895, 40.167027, 21.798321>,  <35.529255, 40.033157, 21.636646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412895, 40.167027, 21.798321>,  <35.218960, 40.390144, 22.067780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412895, 40.167027, 21.798321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012969, 0.774731, -0.632158,
		0.874508, 0.297757, 0.382853,
		0.484837, -0.557793, -0.673647,
		35.558346, 39.999687, 21.596228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801685, 40.835266, 21.837427>,  <35.218960, 40.390144, 22.067780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801685, 40.835266, 21.837427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790016, 40.544685, 21.562790>,  <35.783012, 40.370335, 21.398008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790016, 40.544685, 21.562790>,  <35.801685, 40.835266, 21.837427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790016, 40.544685, 21.562790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136571, 0.677547, -0.722689,
		0.990201, -0.114854, 0.079445,
		-0.029176, -0.726456, -0.686593,
		35.781265, 40.326748, 21.356812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348011, 41.030140, 21.392738>,  <35.801685, 40.835266, 21.837427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348011, 41.030140, 21.392738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134190, 40.768375, 21.178825>,  <36.005898, 40.611317, 21.050478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134190, 40.768375, 21.178825>,  <36.348011, 41.030140, 21.392738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134190, 40.768375, 21.178825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152034, 0.547994, -0.822550,
		0.831348, -0.521001, -0.193438,
		-0.534553, -0.654416, -0.534784,
		35.973824, 40.572052, 21.018391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747066, 40.959320, 20.746595>,  <36.348011, 41.030140, 21.392738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747066, 40.959320, 20.746595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377724, 40.834126, 20.657644>,  <36.156116, 40.759010, 20.604273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377724, 40.834126, 20.657644>,  <36.747066, 40.959320, 20.746595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377724, 40.834126, 20.657644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069440, 0.433513, -0.898468,
		0.377607, -0.845051, -0.378554,
		-0.923359, -0.312980, -0.222377,
		36.100716, 40.740231, 20.590931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874001, 40.754971, 20.093460>,  <36.747066, 40.959320, 20.746595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874001, 40.754971, 20.093460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477158, 40.790524, 20.128847>,  <36.239052, 40.811855, 20.150080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477158, 40.790524, 20.128847>,  <36.874001, 40.754971, 20.093460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477158, 40.790524, 20.128847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050800, 0.360156, -0.931508,
		-0.114658, -0.928648, -0.352797,
		-0.992105, 0.088883, 0.088470,
		36.179527, 40.817188, 20.155388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639084, 40.506653, 19.555218>,  <36.874001, 40.754971, 20.093460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639084, 40.506653, 19.555218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338066, 40.736069, 19.684662>,  <36.157455, 40.873718, 19.762329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.338066, 40.736069, 19.684662>,  <36.639084, 40.506653, 19.555218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338066, 40.736069, 19.684662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045899, 0.444531, -0.894587,
		-0.656936, -0.688073, -0.308206,
		-0.752548, 0.573540, 0.323611,
		36.112301, 40.908131, 19.781746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386497, 40.653717, 19.017336>,  <36.639084, 40.506653, 19.555218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386497, 40.653717, 19.017336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188164, 40.945431, 19.205925>,  <36.069164, 41.120461, 19.319078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188164, 40.945431, 19.205925>,  <36.386497, 40.653717, 19.017336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188164, 40.945431, 19.205925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001471, 0.542204, -0.840246,
		-0.868415, -0.417317, -0.267771,
		-0.495836, 0.729288, 0.471471,
		36.039413, 41.164219, 19.347366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705315, 40.836536, 18.626820>,  <36.386497, 40.653717, 19.017336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705315, 40.836536, 18.626820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810272, 41.154408, 18.845778>,  <35.873249, 41.345131, 18.977152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810272, 41.154408, 18.845778>,  <35.705315, 40.836536, 18.626820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810272, 41.154408, 18.845778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150520, 0.594035, -0.790231,
		-0.953148, 0.124961, 0.275487,
		0.262397, 0.794674, 0.547395,
		35.888992, 41.392811, 19.009996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259350, 41.343056, 18.316853>,  <35.705315, 40.836536, 18.626820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259350, 41.343056, 18.316853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575775, 41.497021, 18.507038>,  <35.765629, 41.589401, 18.621149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575775, 41.497021, 18.507038>,  <35.259350, 41.343056, 18.316853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575775, 41.497021, 18.507038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041070, 0.742059, -0.669075,
		-0.610359, 0.548806, 0.571205,
		0.791060, 0.384916, 0.475462,
		35.813091, 41.612495, 18.649677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147751, 41.680000, 17.667089>,  <35.259350, 41.343056, 18.316853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147751, 41.680000, 17.667089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981319, 41.673241, 17.303421>,  <34.881458, 41.669186, 17.085220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981319, 41.673241, 17.303421>,  <35.147751, 41.680000, 17.667089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981319, 41.673241, 17.303421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894498, 0.187438, 0.405882,
		0.163552, 0.982131, -0.093109,
		-0.416081, -0.016903, -0.909170,
		34.856495, 41.668171, 17.030670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769905, 41.027004, 17.744558>,  <35.147751, 41.680000, 17.667089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769905, 41.027004, 17.744558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419952, 40.908867, 17.591015>,  <34.209980, 40.837982, 17.498888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419952, 40.908867, 17.591015>,  <34.769905, 41.027004, 17.744558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419952, 40.908867, 17.591015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224689, -0.454609, 0.861885,
		-0.429060, 0.840299, 0.331369,
		-0.874884, -0.295345, -0.383860,
		34.157486, 40.820263, 17.475857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201042, 41.160145, 18.202606>,  <34.769905, 41.027004, 17.744558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201042, 41.160145, 18.202606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960743, 40.929901, 17.980698>,  <33.816563, 40.791756, 17.847551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960743, 40.929901, 17.980698>,  <34.201042, 41.160145, 18.202606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960743, 40.929901, 17.980698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426327, -0.356369, 0.831412,
		-0.676276, 0.735983, -0.031312,
		-0.600747, -0.575613, -0.554773,
		33.780518, 40.757217, 17.814266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503342, 41.158726, 18.481333>,  <34.201042, 41.160145, 18.202606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503342, 41.158726, 18.481333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575153, 40.812801, 18.293772>,  <33.618240, 40.605247, 18.181234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575153, 40.812801, 18.293772>,  <33.503342, 41.158726, 18.481333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575153, 40.812801, 18.293772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269984, -0.501659, 0.821856,
		-0.945980, -0.020947, -0.323546,
		0.179526, -0.864812, -0.468904,
		33.629009, 40.553356, 18.153101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982731, 40.688663, 18.555902>,  <33.503342, 41.158726, 18.481333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982731, 40.688663, 18.555902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265232, 40.429501, 18.441759>,  <33.434731, 40.274002, 18.373272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265232, 40.429501, 18.441759>,  <32.982731, 40.688663, 18.555902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265232, 40.429501, 18.441759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257470, -0.610531, 0.748974,
		-0.659486, -0.455490, -0.598003,
		0.706249, -0.647906, -0.285362,
		33.477108, 40.235130, 18.356152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726551, 39.957973, 18.466665>,  <32.982731, 40.688663, 18.555902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726551, 39.957973, 18.466665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118618, 39.902813, 18.523602>,  <33.353859, 39.869717, 18.557764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118618, 39.902813, 18.523602>,  <32.726551, 39.957973, 18.466665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118618, 39.902813, 18.523602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197831, -0.637864, 0.744307,
		-0.011845, -0.757703, -0.652492,
		0.980165, -0.137899, 0.142341,
		33.412666, 39.861443, 18.566303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855186, 39.298698, 18.692169>,  <32.726551, 39.957973, 18.466665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855186, 39.298698, 18.692169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215466, 39.446304, 18.783882>,  <33.431633, 39.534870, 18.838909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215466, 39.446304, 18.783882>,  <32.855186, 39.298698, 18.692169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215466, 39.446304, 18.783882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012460, -0.505598, 0.862679,
		0.434269, -0.779870, -0.450793,
		0.900697, 0.369018, 0.229283,
		33.485676, 39.557011, 18.852667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336418, 38.700638, 18.901491>,  <32.855186, 39.298698, 18.692169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336418, 38.700638, 18.901491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463074, 39.034798, 19.081203>,  <33.539066, 39.235294, 19.189032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463074, 39.034798, 19.081203>,  <33.336418, 38.700638, 18.901491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463074, 39.034798, 19.081203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002859, -0.474492, 0.880255,
		0.948543, -0.277436, -0.152630,
		0.316637, 0.835396, 0.449283,
		33.558064, 39.285416, 19.215988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876904, 38.509369, 19.218132>,  <33.336418, 38.700638, 18.901491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876904, 38.509369, 19.218132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759663, 38.839958, 19.410395>,  <33.689316, 39.038311, 19.525751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759663, 38.839958, 19.410395>,  <33.876904, 38.509369, 19.218132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759663, 38.839958, 19.410395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088730, -0.477050, 0.874385,
		0.951954, 0.298935, 0.066492,
		-0.293105, 0.826475, 0.480655,
		33.671730, 39.087902, 19.554590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203136, 38.443756, 19.794151>,  <33.876904, 38.509369, 19.218132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203136, 38.443756, 19.794151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.943787, 38.737366, 19.874962>,  <33.788177, 38.913532, 19.923449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.943787, 38.737366, 19.874962>,  <34.203136, 38.443756, 19.794151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943787, 38.737366, 19.874962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038539, -0.233379, 0.971622,
		0.760345, 0.637761, 0.123029,
		-0.648375, 0.734026, 0.202027,
		33.749275, 38.957573, 19.935570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484837, 38.827305, 20.284273>,  <34.203136, 38.443756, 19.794151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484837, 38.827305, 20.284273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097183, 38.911839, 20.335041>,  <33.864590, 38.962559, 20.365501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097183, 38.911839, 20.335041>,  <34.484837, 38.827305, 20.284273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097183, 38.911839, 20.335041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050447, -0.333933, 0.941246,
		0.241304, 0.918599, 0.312966,
		-0.969138, 0.211338, 0.126920,
		33.806442, 38.975239, 20.373117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399784, 39.213997, 21.005890>,  <34.484837, 38.827305, 20.284273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399784, 39.213997, 21.005890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059036, 39.055710, 20.868643>,  <33.854588, 38.960739, 20.786295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059036, 39.055710, 20.868643>,  <34.399784, 39.213997, 21.005890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059036, 39.055710, 20.868643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198100, -0.363006, 0.910485,
		-0.484849, 0.843583, 0.230841,
		-0.851867, -0.395718, -0.343117,
		33.803474, 38.936993, 20.765707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792580, 39.520775, 21.474352>,  <34.399784, 39.213997, 21.005890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792580, 39.520775, 21.474352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711582, 39.162968, 21.314936>,  <33.662983, 38.948284, 21.219286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.711582, 39.162968, 21.314936>,  <33.792580, 39.520775, 21.474352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711582, 39.162968, 21.314936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123951, -0.380289, 0.916524,
		-0.971407, 0.234991, -0.033870,
		-0.202494, -0.894517, -0.398542,
		33.650833, 38.894611, 21.195374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261158, 39.133301, 21.885899>,  <33.792580, 39.520775, 21.474352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261158, 39.133301, 21.885899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420982, 38.827129, 21.684118>,  <33.516876, 38.643425, 21.563051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420982, 38.827129, 21.684118>,  <33.261158, 39.133301, 21.885899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420982, 38.827129, 21.684118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222010, -0.614699, 0.756873,
		-0.889418, -0.190423, -0.415542,
		0.399559, -0.765431, -0.504449,
		33.540852, 38.597500, 21.532784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853863, 38.613373, 22.145144>,  <33.261158, 39.133301, 21.885899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853863, 38.613373, 22.145144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160290, 38.430817, 21.964104>,  <33.344147, 38.321285, 21.855480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160290, 38.430817, 21.964104>,  <32.853863, 38.613373, 22.145144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160290, 38.430817, 21.964104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048436, -0.743142, 0.667378,
		-0.640926, -0.489338, -0.591407,
		0.766073, -0.456386, -0.452598,
		33.390110, 38.293900, 21.828323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680908, 37.926624, 22.204172>,  <32.853863, 38.613373, 22.145144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680908, 37.926624, 22.204172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074417, 37.904404, 22.135935>,  <33.310524, 37.891071, 22.094992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074417, 37.904404, 22.135935>,  <32.680908, 37.926624, 22.204172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074417, 37.904404, 22.135935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076479, -0.730296, 0.678836,
		-0.162292, -0.680868, -0.714198,
		0.983774, -0.055549, -0.170593,
		33.369549, 37.887737, 22.084757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900887, 37.196709, 21.968361>,  <32.680908, 37.926624, 22.204172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900887, 37.196709, 21.968361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200008, 37.377205, 22.163160>,  <33.379482, 37.485500, 22.280041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200008, 37.377205, 22.163160>,  <32.900887, 37.196709, 21.968361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200008, 37.377205, 22.163160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024952, -0.713905, 0.699797,
		0.663446, -0.535465, -0.522605,
		0.747808, 0.451238, 0.486999,
		33.424351, 37.512577, 22.309259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124298, 36.692913, 22.256002>,  <32.900887, 37.196709, 21.968361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124298, 36.692913, 22.256002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348732, 36.960442, 22.451090>,  <33.483391, 37.120956, 22.568142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348732, 36.960442, 22.451090>,  <33.124298, 36.692913, 22.256002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348732, 36.960442, 22.451090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134763, -0.655147, 0.743385,
		0.816718, -0.351372, -0.457722,
		0.561080, 0.668820, 0.487718,
		33.517056, 37.161087, 22.597404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759827, 36.373310, 22.499943>,  <33.124298, 36.692913, 22.256002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759827, 36.373310, 22.499943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700138, 36.684872, 22.743597>,  <33.664326, 36.871807, 22.889790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700138, 36.684872, 22.743597>,  <33.759827, 36.373310, 22.499943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700138, 36.684872, 22.743597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171818, -0.586237, 0.791710,
		0.973762, 0.222801, -0.046350,
		-0.149222, 0.778900, 0.609136,
		33.655373, 36.918541, 22.926338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196121, 36.233616, 23.051027>,  <33.759827, 36.373310, 22.499943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196121, 36.233616, 23.051027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926601, 36.498722, 23.181705>,  <33.764889, 36.657787, 23.260113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926601, 36.498722, 23.181705>,  <34.196121, 36.233616, 23.051027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926601, 36.498722, 23.181705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001747, -0.443559, 0.896244,
		0.738909, 0.603321, 0.300030,
		-0.673803, 0.662766, 0.326695,
		33.724461, 36.697552, 23.279715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304104, 36.320732, 23.829575>,  <34.196121, 36.233616, 23.051027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304104, 36.320732, 23.829575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932648, 36.467419, 23.807117>,  <33.709774, 36.555431, 23.793644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932648, 36.467419, 23.807117>,  <34.304104, 36.320732, 23.829575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932648, 36.467419, 23.807117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146512, -0.223481, 0.963634,
		0.340837, 0.903091, 0.261262,
		-0.928636, 0.366720, -0.056143,
		33.654057, 36.577435, 23.790276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.847164, 33.748222, 27.799992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.544910, 33.988506, 27.695551>,  <36.363560, 34.132675, 27.632887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.544910, 33.988506, 27.695551>,  <36.847164, 33.748222, 27.799992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544910, 33.988506, 27.695551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473392, -0.225351, 0.851538,
		0.452686, 0.767051, 0.454652,
		-0.755630, 0.600707, -0.261102,
		36.318222, 34.168720, 27.617220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818237, 34.306534, 28.183466>,  <36.847164, 33.748222, 27.799992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818237, 34.306534, 28.183466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.444057, 34.251976, 28.053026>,  <36.219551, 34.219242, 27.974762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.444057, 34.251976, 28.053026>,  <36.818237, 34.306534, 28.183466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444057, 34.251976, 28.053026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315001, -0.096889, 0.944133,
		-0.160366, 0.985906, 0.047671,
		-0.935445, -0.136391, -0.326099,
		36.163425, 34.211060, 27.955196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467545, 34.756790, 28.527876>,  <36.818237, 34.306534, 28.183466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467545, 34.756790, 28.527876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180492, 34.496510, 28.428602>,  <36.008263, 34.340343, 28.369038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180492, 34.496510, 28.428602>,  <36.467545, 34.756790, 28.527876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180492, 34.496510, 28.428602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297580, -0.035690, 0.954030,
		-0.629644, 0.758496, -0.168023,
		-0.717631, -0.650700, -0.248185,
		35.965202, 34.301300, 28.354147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819073, 35.037910, 28.682383>,  <36.467545, 34.756790, 28.527876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819073, 35.037910, 28.682383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715786, 34.651962, 28.663019>,  <35.653812, 34.420391, 28.651402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715786, 34.651962, 28.663019>,  <35.819073, 35.037910, 28.682383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715786, 34.651962, 28.663019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343496, 0.044863, 0.938082,
		-0.902959, 0.258856, -0.343015,
		-0.258216, -0.964874, -0.048407,
		35.638321, 34.362499, 28.648497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062183, 34.950031, 28.860212>,  <35.819073, 35.037910, 28.682383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062183, 34.950031, 28.860212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.256386, 34.607162, 28.928951>,  <35.372910, 34.401440, 28.970196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.256386, 34.607162, 28.928951>,  <35.062183, 34.950031, 28.860212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256386, 34.607162, 28.928951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529326, -0.131785, 0.838121,
		-0.695768, -0.497881, -0.517707,
		0.485511, -0.857174, 0.171850,
		35.402039, 34.350010, 28.980507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487545, 34.578529, 29.245583>,  <35.062183, 34.950031, 28.860212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487545, 34.578529, 29.245583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829205, 34.387878, 29.328772>,  <35.034203, 34.273487, 29.378685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.829205, 34.387878, 29.328772>,  <34.487545, 34.578529, 29.245583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829205, 34.387878, 29.328772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392478, -0.328498, 0.859099,
		-0.341165, -0.815417, -0.467656,
		0.854147, -0.476638, 0.207961,
		35.085449, 34.244892, 29.391163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125809, 33.934349, 29.482838>,  <34.487545, 34.578529, 29.245583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125809, 33.934349, 29.482838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.510223, 33.954399, 29.591579>,  <34.740871, 33.966427, 29.656824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.510223, 33.954399, 29.591579>,  <34.125809, 33.934349, 29.482838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510223, 33.954399, 29.591579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261397, -0.155175, 0.952676,
		0.089936, -0.986615, -0.136026,
		0.961033, 0.050123, 0.271854,
		34.798534, 33.969437, 29.673136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056587, 33.499752, 29.968046>,  <34.125809, 33.934349, 29.482838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056587, 33.499752, 29.968046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.389790, 33.700832, 30.060474>,  <34.589710, 33.821480, 30.115931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.389790, 33.700832, 30.060474>,  <34.056587, 33.499752, 29.968046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389790, 33.700832, 30.060474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154116, -0.190285, 0.969557,
		0.531368, -0.843257, -0.081034,
		0.833005, 0.502703, 0.231070,
		34.639690, 33.851643, 30.129795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476933, 33.111160, 30.479351>,  <34.056587, 33.499752, 29.968046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476933, 33.111160, 30.479351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.609440, 33.486469, 30.519169>,  <34.688946, 33.711655, 30.543058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.609440, 33.486469, 30.519169>,  <34.476933, 33.111160, 30.479351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609440, 33.486469, 30.519169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203346, -0.032026, 0.978583,
		0.921364, -0.344414, 0.180185,
		0.331267, 0.938272, 0.099543,
		34.708820, 33.767952, 30.549032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958519, 33.039135, 31.020086>,  <34.476933, 33.111160, 30.479351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958519, 33.039135, 31.020086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845943, 33.421833, 30.990616>,  <34.778397, 33.651451, 30.972935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845943, 33.421833, 30.990616>,  <34.958519, 33.039135, 31.020086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845943, 33.421833, 30.990616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117181, 0.041936, 0.992225,
		0.952397, 0.287886, 0.100310,
		-0.281441, 0.956746, -0.073675,
		34.761513, 33.708858, 30.968513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336578, 33.409504, 31.523453>,  <34.958519, 33.039135, 31.020086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336578, 33.409504, 31.523453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.033463, 33.653740, 31.431419>,  <34.851593, 33.800282, 31.376200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.033463, 33.653740, 31.431419>,  <35.336578, 33.409504, 31.523453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033463, 33.653740, 31.431419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231300, 0.078349, 0.969722,
		0.610127, 0.788063, 0.081858,
		-0.757789, 0.610588, -0.230082,
		34.806126, 33.836918, 31.362394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261604, 34.048702, 32.055759>,  <35.336578, 33.409504, 31.523453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261604, 34.048702, 32.055759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.892796, 34.002579, 31.907936>,  <34.671509, 33.974903, 31.819242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.892796, 34.002579, 31.907936>,  <35.261604, 34.048702, 32.055759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892796, 34.002579, 31.907936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336148, -0.235050, 0.912006,
		-0.192029, 0.965119, 0.177961,
		-0.922025, -0.115311, -0.369559,
		34.616188, 33.967987, 31.797068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843849, 34.411602, 32.513950>,  <35.261604, 34.048702, 32.055759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843849, 34.411602, 32.513950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.643147, 34.130119, 32.312740>,  <34.522724, 33.961227, 32.192017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.643147, 34.130119, 32.312740>,  <34.843849, 34.411602, 32.513950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643147, 34.130119, 32.312740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376863, -0.345590, 0.859385,
		-0.778597, 0.620773, -0.091800,
		-0.501758, -0.703710, -0.503022,
		34.492619, 33.919006, 32.161835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115429, 34.475224, 32.660175>,  <34.843849, 34.411602, 32.513950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115429, 34.475224, 32.660175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207695, 34.096066, 32.572281>,  <34.263054, 33.868568, 32.519547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207695, 34.096066, 32.572281>,  <34.115429, 34.475224, 32.660175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207695, 34.096066, 32.572281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415156, -0.300109, 0.858825,
		-0.880023, -0.106876, -0.462750,
		0.230663, -0.947899, -0.219733,
		34.276894, 33.811695, 32.506363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428356, 34.585033, 33.003819>,  <34.115429, 34.475224, 32.660175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428356, 34.585033, 33.003819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.233189, 34.851143, 33.229862>,  <33.116089, 35.010807, 33.365490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.233189, 34.851143, 33.229862>,  <33.428356, 34.585033, 33.003819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233189, 34.851143, 33.229862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150908, 0.573361, -0.805285,
		-0.859747, -0.478190, -0.179356,
		-0.487915, 0.665275, 0.565109,
		33.086815, 35.050724, 33.399395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734493, 34.785015, 32.705189>,  <33.428356, 34.585033, 33.003819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734493, 34.785015, 32.705189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.824364, 35.086796, 32.951870>,  <32.878284, 35.267864, 33.099880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.824364, 35.086796, 32.951870>,  <32.734493, 34.785015, 32.705189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824364, 35.086796, 32.951870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201470, 0.655174, -0.728118,
		-0.953379, 0.039342, 0.299200,
		0.224673, 0.754453, 0.616703,
		32.891766, 35.313133, 33.136883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224865, 35.262184, 32.652283>,  <32.734493, 34.785015, 32.705189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224865, 35.262184, 32.652283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.539768, 35.455231, 32.805805>,  <32.728710, 35.571056, 32.897919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.539768, 35.455231, 32.805805>,  <32.224865, 35.262184, 32.652283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539768, 35.455231, 32.805805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073864, 0.691763, -0.718337,
		-0.612182, 0.537168, 0.580245,
		0.787259, 0.482612, 0.383807,
		32.775948, 35.600014, 32.920948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085701, 36.005890, 32.649555>,  <32.224865, 35.262184, 32.652283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085701, 36.005890, 32.649555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.484089, 35.979919, 32.674305>,  <32.723122, 35.964336, 32.689156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.484089, 35.979919, 32.674305>,  <32.085701, 36.005890, 32.649555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484089, 35.979919, 32.674305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088952, 0.626638, -0.774218,
		0.011493, 0.776601, 0.629888,
		0.995970, -0.064928, 0.061878,
		32.782879, 35.960442, 32.692867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330009, 36.688412, 32.594746>,  <32.085701, 36.005890, 32.649555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330009, 36.688412, 32.594746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.628437, 36.446247, 32.483852>,  <32.807495, 36.300949, 32.417316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.628437, 36.446247, 32.483852>,  <32.330009, 36.688412, 32.594746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628437, 36.446247, 32.483852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308589, 0.683303, -0.661717,
		0.590040, 0.408140, 0.696616,
		0.746074, -0.605408, -0.277228,
		32.852261, 36.264626, 32.400684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810333, 37.136250, 32.520111>,  <32.330009, 36.688412, 32.594746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810333, 37.136250, 32.520111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.955601, 36.816151, 32.329235>,  <33.042759, 36.624092, 32.214710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.955601, 36.816151, 32.329235>,  <32.810333, 37.136250, 32.520111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955601, 36.816151, 32.329235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347393, 0.591528, -0.727607,
		0.864540, 0.098468, 0.492823,
		0.363165, -0.800249, -0.477193,
		33.064548, 36.576077, 32.186077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618618, 37.176785, 32.251873>,  <32.810333, 37.136250, 32.520111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618618, 37.176785, 32.251873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413929, 36.915665, 32.028446>,  <33.291115, 36.758995, 31.894390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413929, 36.915665, 32.028446>,  <33.618618, 37.176785, 32.251873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413929, 36.915665, 32.028446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201378, 0.540892, -0.816629,
		0.835217, -0.530371, -0.145328,
		-0.511723, -0.652796, -0.558566,
		33.260410, 36.719826, 31.860876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017780, 37.105244, 31.635733>,  <33.618618, 37.176785, 32.251873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017780, 37.105244, 31.635733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.654083, 36.979378, 31.526724>,  <33.435867, 36.903858, 31.461319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.654083, 36.979378, 31.526724>,  <34.017780, 37.105244, 31.635733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654083, 36.979378, 31.526724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076140, 0.517920, -0.852034,
		0.409247, -0.795454, -0.446956,
		-0.909241, -0.314661, -0.272524,
		33.381310, 36.884979, 31.444967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153053, 36.833351, 30.964033>,  <34.017780, 37.105244, 31.635733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153053, 36.833351, 30.964033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.765179, 36.924232, 30.999998>,  <33.532455, 36.978764, 31.021578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.765179, 36.924232, 30.999998>,  <34.153053, 36.833351, 30.964033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765179, 36.924232, 30.999998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005335, 0.387560, -0.921829,
		-0.244292, -0.893406, -0.377024,
		-0.969687, 0.227207, 0.089912,
		33.474274, 36.992393, 31.026972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990891, 36.906647, 30.317865>,  <34.153053, 36.833351, 30.964033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990891, 36.906647, 30.317865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663994, 37.067177, 30.483301>,  <33.467857, 37.163494, 30.582561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663994, 37.067177, 30.483301>,  <33.990891, 36.906647, 30.317865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663994, 37.067177, 30.483301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208422, 0.463261, -0.861365,
		-0.537290, -0.790142, -0.294949,
		-0.817239, 0.401329, 0.413589,
		33.418823, 37.187576, 30.607378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668850, 37.018131, 29.787966>,  <33.990891, 36.906647, 30.317865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668850, 37.018131, 29.787966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.458546, 37.247784, 30.039026>,  <33.332363, 37.385574, 30.189663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.458546, 37.247784, 30.039026>,  <33.668850, 37.018131, 29.787966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458546, 37.247784, 30.039026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214807, 0.624339, -0.751038,
		-0.823061, -0.529693, -0.204928,
		-0.525764, 0.574130, 0.627652,
		33.300816, 37.420021, 30.227322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036617, 37.201988, 29.458700>,  <33.668850, 37.018131, 29.787966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036617, 37.201988, 29.458700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.109573, 37.495308, 29.720695>,  <33.153347, 37.671299, 29.877893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.109573, 37.495308, 29.720695>,  <33.036617, 37.201988, 29.458700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109573, 37.495308, 29.720695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110437, 0.677227, -0.727439,
		-0.977004, 0.060342, 0.204502,
		0.182390, 0.733296, 0.654990,
		33.164291, 37.715298, 29.917192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505833, 37.644592, 29.326571>,  <33.036617, 37.201988, 29.458700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505833, 37.644592, 29.326571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.761936, 37.865761, 29.539869>,  <32.915600, 37.998459, 29.667849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.761936, 37.865761, 29.539869>,  <32.505833, 37.644592, 29.326571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761936, 37.865761, 29.539869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162822, 0.776098, -0.609230,
		-0.750705, 0.303241, 0.586931,
		0.640259, 0.552916, 0.533246,
		32.954014, 38.031635, 29.699842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178257, 38.285065, 29.507015>,  <32.505833, 37.644592, 29.326571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178257, 38.285065, 29.507015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.573978, 38.340862, 29.524105>,  <32.811409, 38.374340, 29.534359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.573978, 38.340862, 29.524105>,  <32.178257, 38.285065, 29.507015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573978, 38.340862, 29.524105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076876, 0.747376, -0.659939,
		-0.123987, 0.649594, 0.750103,
		0.989301, 0.139489, 0.042727,
		32.870770, 38.382710, 29.536922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011063, 38.759754, 30.139551>,  <32.178257, 38.285065, 29.507015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011063, 38.759754, 30.139551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.684231, 38.976593, 30.218061>,  <31.488132, 39.106697, 30.265167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.684231, 38.976593, 30.218061>,  <32.011063, 38.759754, 30.139551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684231, 38.976593, 30.218061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277229, -0.667923, 0.690669,
		0.505503, 0.509915, 0.696027,
		-0.817075, 0.542094, 0.196274,
		31.439108, 39.139221, 30.276943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013344, 38.942257, 30.772564>,  <32.011063, 38.759754, 30.139551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013344, 38.942257, 30.772564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.623308, 38.975586, 30.690346>,  <31.389286, 38.995583, 30.641014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.623308, 38.975586, 30.690346>,  <32.013344, 38.942257, 30.772564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623308, 38.975586, 30.690346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212674, -0.614272, 0.759895,
		-0.062944, 0.784683, 0.616693,
		-0.975094, 0.083324, -0.205547,
		31.330780, 39.000584, 30.628681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727055, 38.993038, 31.436508>,  <32.013344, 38.942257, 30.772564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727055, 38.993038, 31.436508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.430294, 38.893723, 31.187370>,  <31.252237, 38.834133, 31.037888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.430294, 38.893723, 31.187370>,  <31.727055, 38.993038, 31.436508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430294, 38.893723, 31.187370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265384, -0.744321, 0.612828,
		-0.615757, 0.619950, 0.486318,
		-0.741899, -0.248292, -0.622845,
		31.207724, 38.819233, 31.000517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104319, 39.072823, 31.839827>,  <31.727055, 38.993038, 31.436508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104319, 39.072823, 31.839827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.001066, 38.813595, 31.553226>,  <30.939116, 38.658058, 31.381266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.001066, 38.813595, 31.553226>,  <31.104319, 39.072823, 31.839827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001066, 38.813595, 31.553226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313673, -0.645239, 0.696618,
		-0.913772, 0.404565, -0.036727,
		-0.258129, -0.648070, -0.716502,
		30.923628, 38.619175, 31.338276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494114, 38.676834, 32.147278>,  <31.104319, 39.072823, 31.839827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494114, 38.676834, 32.147278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.628191, 38.458729, 31.839943>,  <30.708637, 38.327866, 31.655542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.628191, 38.458729, 31.839943>,  <30.494114, 38.676834, 32.147278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628191, 38.458729, 31.839943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237889, -0.838069, 0.490968,
		-0.911623, 0.018210, -0.410625,
		0.335191, -0.545261, -0.768335,
		30.728748, 38.295151, 31.609442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995014, 38.392719, 31.858047>,  <30.494114, 38.676834, 32.147278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995014, 38.392719, 31.858047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.292288, 38.155468, 31.734188>,  <30.470652, 38.013119, 31.659872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.292288, 38.155468, 31.734188>,  <29.995014, 38.392719, 31.858047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292288, 38.155468, 31.734188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427636, -0.776996, 0.461957,
		-0.514592, -0.210902, -0.831093,
		0.743184, -0.593124, -0.309647,
		30.515244, 37.977531, 31.641294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621389, 37.785725, 31.615099>,  <29.995014, 38.392719, 31.858047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621389, 37.785725, 31.615099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.999805, 37.666157, 31.665148>,  <30.226854, 37.594414, 31.695177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.999805, 37.666157, 31.665148>,  <29.621389, 37.785725, 31.615099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999805, 37.666157, 31.665148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324041, -0.869388, 0.373043,
		-0.002732, -0.393458, -0.919339,
		0.946039, -0.298923, 0.125121,
		30.283617, 37.576481, 31.702684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594893, 37.046623, 31.429171>,  <29.621389, 37.785725, 31.615099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594893, 37.046623, 31.429171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.942200, 37.106033, 31.618507>,  <30.150583, 37.141678, 31.732109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.942200, 37.106033, 31.618507>,  <29.594893, 37.046623, 31.429171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942200, 37.106033, 31.618507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112312, -0.870511, 0.479163,
		0.483215, -0.469204, -0.739156,
		0.868268, 0.148523, 0.473341,
		30.202681, 37.150589, 31.760509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118393, 36.384068, 31.419235>,  <29.594893, 37.046623, 31.429171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118393, 36.384068, 31.419235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.194984, 36.606892, 31.742474>,  <30.240938, 36.740585, 31.936417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.194984, 36.606892, 31.742474>,  <30.118393, 36.384068, 31.419235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194984, 36.606892, 31.742474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098225, -0.808321, 0.580490,
		0.976570, -0.190526, -0.100057,
		0.191476, 0.557061, 0.808096,
		30.252428, 36.774010, 31.984903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340393, 35.835945, 31.832043>,  <30.118393, 36.384068, 31.419235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340393, 35.835945, 31.832043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.315903, 36.140102, 32.090672>,  <30.301208, 36.322598, 32.245850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.315903, 36.140102, 32.090672>,  <30.340393, 35.835945, 31.832043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315903, 36.140102, 32.090672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079696, -0.649446, 0.756220,
		0.994937, -0.005228, 0.100364,
		-0.061227, 0.760390, 0.646574,
		30.297535, 36.368221, 32.284645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897949, 35.803398, 32.444351>,  <30.340393, 35.835945, 31.832043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897949, 35.803398, 32.444351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.587084, 36.022285, 32.568653>,  <30.400564, 36.153618, 32.643234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.587084, 36.022285, 32.568653>,  <30.897949, 35.803398, 32.444351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587084, 36.022285, 32.568653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206207, -0.687991, 0.695806,
		0.594553, 0.476677, 0.647523,
		-0.777165, 0.547218, 0.310753,
		30.353933, 36.186451, 32.661880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942362, 35.808430, 33.207191>,  <30.897949, 35.803398, 32.444351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942362, 35.808430, 33.207191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.563362, 35.882294, 33.102768>,  <30.335962, 35.926613, 33.040115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.563362, 35.882294, 33.102768>,  <30.942362, 35.808430, 33.207191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563362, 35.882294, 33.102768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311343, -0.718889, 0.621502,
		-0.072902, 0.670149, 0.738638,
		-0.947497, 0.184661, -0.261055,
		30.279114, 35.937691, 33.024452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.382027, 42.223114, 28.051731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096931, 42.017311, 27.861032>,  <31.925875, 41.893829, 27.746614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096931, 42.017311, 27.861032>,  <32.382027, 42.223114, 28.051731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096931, 42.017311, 27.861032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196041, -0.506474, 0.839674,
		-0.673479, 0.691928, 0.260118,
		-0.712737, -0.514509, -0.476746,
		31.883110, 41.862957, 27.718008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801779, 42.171356, 28.525490>,  <32.382027, 42.223114, 28.051731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801779, 42.171356, 28.525490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730301, 41.881092, 28.259712>,  <31.687414, 41.706932, 28.100246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730301, 41.881092, 28.259712>,  <31.801779, 42.171356, 28.525490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730301, 41.881092, 28.259712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369473, -0.576401, 0.728871,
		-0.911898, 0.375738, -0.165113,
		-0.178693, -0.725661, -0.664443,
		31.676693, 41.663395, 28.060379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130430, 41.984444, 28.612551>,  <31.801779, 42.171356, 28.525490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130430, 41.984444, 28.612551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318386, 41.673103, 28.445997>,  <31.431160, 41.486301, 28.346066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318386, 41.673103, 28.445997>,  <31.130430, 41.984444, 28.612551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318386, 41.673103, 28.445997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257611, -0.572087, 0.778687,
		-0.844299, -0.258631, -0.469329,
		0.469890, -0.778349, -0.416386,
		31.459352, 41.439598, 28.321081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819563, 41.522774, 28.886793>,  <31.130430, 41.984444, 28.612551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819563, 41.522774, 28.886793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102976, 41.291801, 28.724531>,  <31.273024, 41.153217, 28.627174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102976, 41.291801, 28.724531>,  <30.819563, 41.522774, 28.886793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102976, 41.291801, 28.724531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115978, -0.662314, 0.740195,
		-0.696083, -0.477404, -0.536240,
		0.708532, -0.577429, -0.405657,
		31.315536, 41.118572, 28.602835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417690, 40.872177, 28.757166>,  <30.819563, 41.522774, 28.886793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417690, 40.872177, 28.757166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810831, 40.805695, 28.789106>,  <31.046717, 40.765804, 28.808270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810831, 40.805695, 28.789106>,  <30.417690, 40.872177, 28.757166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810831, 40.805695, 28.789106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180319, -0.775873, 0.604571,
		-0.038529, -0.608603, -0.792539,
		0.982853, -0.166203, 0.079850,
		31.105686, 40.755833, 28.813061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526451, 40.159035, 28.534992>,  <30.417690, 40.872177, 28.757166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526451, 40.159035, 28.534992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858232, 40.243786, 28.741724>,  <31.057302, 40.294636, 28.865763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858232, 40.243786, 28.741724>,  <30.526451, 40.159035, 28.534992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858232, 40.243786, 28.741724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151069, -0.805695, 0.572742,
		0.537757, -0.553141, -0.636280,
		0.829455, 0.211874, 0.516830,
		31.107069, 40.307346, 28.896772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897066, 39.575096, 28.649603>,  <30.526451, 40.159035, 28.534992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897066, 39.575096, 28.649603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038317, 39.804691, 28.945127>,  <31.123068, 39.942448, 29.122442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038317, 39.804691, 28.945127>,  <30.897066, 39.575096, 28.649603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038317, 39.804691, 28.945127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040890, -0.779461, 0.625114,
		0.934681, -0.250955, -0.251779,
		0.353128, 0.573987, 0.738809,
		31.144255, 39.976887, 29.166771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222237, 39.128517, 29.081610>,  <30.897066, 39.575096, 28.649603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222237, 39.128517, 29.081610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237087, 39.431995, 29.341764>,  <31.245998, 39.614082, 29.497856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237087, 39.431995, 29.341764>,  <31.222237, 39.128517, 29.081610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237087, 39.431995, 29.341764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082774, -0.650933, 0.754609,
		0.995876, 0.025819, -0.086968,
		0.037127, 0.758696, 0.650386,
		31.248226, 39.659603, 29.536880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682274, 38.927013, 29.497553>,  <31.222237, 39.128517, 29.081610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682274, 38.927013, 29.497553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468567, 39.196934, 29.701200>,  <31.340343, 39.358887, 29.823389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468567, 39.196934, 29.701200>,  <31.682274, 38.927013, 29.497553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468567, 39.196934, 29.701200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001124, -0.601714, 0.798710,
		0.845316, 0.427296, 0.320717,
		-0.534266, 0.674802, 0.509119,
		31.308287, 39.399376, 29.853937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372662, 39.117702, 29.272682>,  <31.682274, 38.927013, 29.497553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372662, 39.117702, 29.272682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723240, 38.925331, 29.263317>,  <32.933586, 38.809910, 29.257698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723240, 38.925331, 29.263317>,  <32.372662, 39.117702, 29.272682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723240, 38.925331, 29.263317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290276, 0.566546, -0.771210,
		0.384162, 0.669129, 0.636150,
		0.876447, -0.480929, -0.023413,
		32.986176, 38.781052, 29.256292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819794, 39.552879, 28.946428>,  <32.372662, 39.117702, 29.272682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819794, 39.552879, 28.946428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024902, 39.215893, 28.880306>,  <33.147968, 39.013702, 28.840633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024902, 39.215893, 28.880306>,  <32.819794, 39.552879, 28.946428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024902, 39.215893, 28.880306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397780, 0.403767, -0.823859,
		0.760815, 0.356693, 0.542153,
		0.512769, -0.842462, -0.165306,
		33.178734, 38.963154, 28.830715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539215, 39.735683, 28.817331>,  <32.819794, 39.552879, 28.946428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539215, 39.735683, 28.817331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488380, 39.375252, 28.651485>,  <33.457882, 39.158993, 28.551977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488380, 39.375252, 28.651485>,  <33.539215, 39.735683, 28.817331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488380, 39.375252, 28.651485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611936, 0.257749, -0.747730,
		0.780631, -0.348742, 0.518647,
		-0.127083, -0.901080, -0.414615,
		33.450256, 39.104927, 28.527102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264355, 39.476200, 28.544796>,  <33.539215, 39.735683, 28.817331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264355, 39.476200, 28.544796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965672, 39.278542, 28.366697>,  <33.786461, 39.159946, 28.259838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965672, 39.278542, 28.366697>,  <34.264355, 39.476200, 28.544796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965672, 39.278542, 28.366697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520538, -0.017403, -0.853661,
		0.414084, -0.869205, 0.270217,
		-0.746709, -0.494146, -0.445247,
		33.741657, 39.130299, 28.233124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608437, 39.131893, 27.961578>,  <34.264355, 39.476200, 28.544796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608437, 39.131893, 27.961578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224594, 39.098251, 27.854185>,  <33.994289, 39.078064, 27.789749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224594, 39.098251, 27.854185>,  <34.608437, 39.131893, 27.961578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224594, 39.098251, 27.854185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266109, 0.038487, -0.963174,
		0.091346, -0.995713, -0.014550,
		-0.959605, -0.084110, -0.268484,
		33.936714, 39.073017, 27.773640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729671, 38.895069, 27.307522>,  <34.608437, 39.131893, 27.961578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729671, 38.895069, 27.307522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351280, 39.024082, 27.320734>,  <34.124245, 39.101490, 27.328661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351280, 39.024082, 27.320734>,  <34.729671, 38.895069, 27.307522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351280, 39.024082, 27.320734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054781, 0.259410, -0.964212,
		-0.319557, -0.910318, -0.263066,
		-0.945982, 0.322532, 0.033029,
		34.067486, 39.120842, 27.330643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645592, 38.722046, 26.652365>,  <34.729671, 38.895069, 27.307522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645592, 38.722046, 26.652365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339558, 38.954197, 26.763933>,  <34.155937, 39.093487, 26.830875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339558, 38.954197, 26.763933>,  <34.645592, 38.722046, 26.652365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339558, 38.954197, 26.763933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006155, 0.426549, -0.904444,
		-0.643895, -0.693697, -0.322776,
		-0.765089, 0.580380, 0.278922,
		34.110031, 39.128311, 26.847610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072601, 38.631786, 26.127634>,  <34.645592, 38.722046, 26.652365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072601, 38.631786, 26.127634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073334, 38.983135, 26.318823>,  <34.073772, 39.193947, 26.433537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073334, 38.983135, 26.318823>,  <34.072601, 38.631786, 26.127634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073334, 38.983135, 26.318823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169646, 0.471316, -0.865495,
		-0.985503, -0.079500, 0.149876,
		0.001832, 0.878374, 0.477970,
		34.073883, 39.246647, 26.462214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722397, 39.028336, 25.743532>,  <34.072601, 38.631786, 26.127634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722397, 39.028336, 25.743532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863220, 39.328400, 25.967432>,  <33.947712, 39.508438, 26.101772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863220, 39.328400, 25.967432>,  <33.722397, 39.028336, 25.743532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863220, 39.328400, 25.967432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069586, 0.575402, -0.814905,
		-0.933389, 0.325842, 0.150372,
		0.352055, 0.750160, 0.559748,
		33.968838, 39.553448, 26.135357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309074, 39.715824, 25.631592>,  <33.722397, 39.028336, 25.743532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309074, 39.715824, 25.631592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660110, 39.836132, 25.780922>,  <33.870731, 39.908318, 25.870520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660110, 39.836132, 25.780922>,  <33.309074, 39.715824, 25.631592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660110, 39.836132, 25.780922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059821, 0.703931, -0.707745,
		-0.475665, 0.643443, 0.599771,
		0.877590, 0.300770, 0.373327,
		33.923389, 39.926365, 25.892920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302559, 40.459362, 25.451099>,  <33.309074, 39.715824, 25.631592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302559, 40.459362, 25.451099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688339, 40.402798, 25.540398>,  <33.919807, 40.368858, 25.593977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688339, 40.402798, 25.540398>,  <33.302559, 40.459362, 25.451099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688339, 40.402798, 25.540398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258893, 0.675088, -0.690819,
		-0.053017, 0.724056, 0.687700,
		0.964450, -0.141416, 0.223244,
		33.977673, 40.360374, 25.607370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602264, 41.067253, 25.643126>,  <33.302559, 40.459362, 25.451099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602264, 41.067253, 25.643126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925556, 40.862301, 25.527033>,  <34.119530, 40.739330, 25.457376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925556, 40.862301, 25.527033>,  <33.602264, 41.067253, 25.643126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925556, 40.862301, 25.527033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273872, 0.763384, -0.585012,
		0.521305, 0.393338, 0.757315,
		0.808230, -0.512377, -0.290232,
		34.168026, 40.708588, 25.439962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079006, 41.599926, 25.653141>,  <33.602264, 41.067253, 25.643126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079006, 41.599926, 25.653141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235046, 41.322079, 25.411375>,  <34.328671, 41.155369, 25.266315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235046, 41.322079, 25.411375>,  <34.079006, 41.599926, 25.653141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235046, 41.322079, 25.411375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351962, 0.719068, -0.599220,
		0.850848, 0.021026, 0.524991,
		0.390103, -0.694622, -0.604417,
		34.352077, 41.113693, 25.230049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770939, 41.834412, 25.488731>,  <34.079006, 41.599926, 25.653141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770939, 41.834412, 25.488731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679070, 41.587532, 25.187716>,  <34.623947, 41.439404, 25.007107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679070, 41.587532, 25.187716>,  <34.770939, 41.834412, 25.488731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679070, 41.587532, 25.187716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313895, 0.684916, -0.657541,
		0.921260, -0.387237, 0.036431,
		-0.229672, -0.617202, -0.752537,
		34.610168, 41.402370, 24.961954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.205080, 37.205448, 21.852320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.351534, 37.475071, 22.108940>,  <30.439405, 37.636845, 22.262913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.351534, 37.475071, 22.108940>,  <30.205080, 37.205448, 21.852320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351534, 37.475071, 22.108940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175716, -0.626940, 0.758992,
		0.913821, -0.390624, -0.111101,
		0.366134, 0.674061, 0.641551,
		30.461374, 37.677288, 22.301405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770065, 36.836571, 22.246019>,  <30.205080, 37.205448, 21.852320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770065, 36.836571, 22.246019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.702641, 37.160172, 22.471266>,  <30.662186, 37.354332, 22.606415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.702641, 37.160172, 22.471266>,  <30.770065, 36.836571, 22.246019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702641, 37.160172, 22.471266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001403, -0.571095, 0.820883,
		0.985690, 0.139160, 0.095130,
		-0.168562, 0.809003, 0.563118,
		30.652073, 37.402874, 22.640202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224283, 36.683914, 22.911177>,  <30.770065, 36.836571, 22.246019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224283, 36.683914, 22.911177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.979845, 36.976345, 23.032560>,  <30.833181, 37.151802, 23.105391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.979845, 36.976345, 23.032560>,  <31.224283, 36.683914, 22.911177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979845, 36.976345, 23.032560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130821, -0.471378, 0.872175,
		0.780671, 0.493284, 0.383697,
		-0.611096, 0.731078, 0.303459,
		30.796516, 37.195667, 23.123598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515907, 37.144413, 23.550699>,  <31.224283, 36.683914, 22.911177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515907, 37.144413, 23.550699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.116587, 37.166458, 23.543106>,  <30.876995, 37.179688, 23.538549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.116587, 37.166458, 23.543106>,  <31.515907, 37.144413, 23.550699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116587, 37.166458, 23.543106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031209, -0.230284, 0.972623,
		0.049237, 0.971561, 0.231613,
		-0.998299, 0.055117, -0.018983,
		30.817097, 37.182995, 23.537411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374916, 37.445881, 24.244139>,  <31.515907, 37.144413, 23.550699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374916, 37.445881, 24.244139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.035706, 37.300362, 24.089994>,  <30.832178, 37.213051, 23.997509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.035706, 37.300362, 24.089994>,  <31.374916, 37.445881, 24.244139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035706, 37.300362, 24.089994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332333, -0.201347, 0.921420,
		-0.412799, 0.909457, 0.049847,
		-0.848028, -0.363795, -0.385359,
		30.781298, 37.191223, 23.974386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795387, 37.735657, 24.707909>,  <31.374916, 37.445881, 24.244139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795387, 37.735657, 24.707909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.626677, 37.415741, 24.537056>,  <30.525450, 37.223793, 24.434544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.626677, 37.415741, 24.537056>,  <30.795387, 37.735657, 24.707909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626677, 37.415741, 24.537056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291891, -0.326236, 0.899094,
		-0.858432, 0.503892, -0.095853,
		-0.421776, -0.799789, -0.427133,
		30.500143, 37.175804, 24.408916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113480, 37.597115, 25.107378>,  <30.795387, 37.735657, 24.707909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113480, 37.597115, 25.107378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.158129, 37.254986, 24.905008>,  <30.184919, 37.049709, 24.783587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.158129, 37.254986, 24.905008>,  <30.113480, 37.597115, 25.107378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158129, 37.254986, 24.905008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183327, -0.518094, 0.835446,
		-0.976694, -0.000507, -0.214636,
		0.111625, -0.855324, -0.505926,
		30.191616, 36.998390, 24.753231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610407, 37.213791, 25.289648>,  <30.113480, 37.597115, 25.107378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610407, 37.213791, 25.289648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.858141, 36.939083, 25.137453>,  <30.006781, 36.774258, 25.046137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.858141, 36.939083, 25.137453>,  <29.610407, 37.213791, 25.289648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858141, 36.939083, 25.137453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080877, -0.537847, 0.839154,
		-0.780951, -0.488944, -0.388651,
		0.619334, -0.686771, -0.380488,
		30.043941, 36.733051, 25.023306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318514, 36.470726, 25.438400>,  <29.610407, 37.213791, 25.289648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318514, 36.470726, 25.438400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.713545, 36.448753, 25.379511>,  <29.950563, 36.435570, 25.344177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.713545, 36.448753, 25.379511>,  <29.318514, 36.470726, 25.438400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713545, 36.448753, 25.379511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084516, -0.604179, 0.792354,
		-0.132470, -0.794953, -0.592031,
		0.987577, -0.054927, -0.147222,
		30.009817, 36.432274, 25.335344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463882, 35.783100, 25.340338>,  <29.318514, 36.470726, 25.438400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463882, 35.783100, 25.340338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.801373, 35.942642, 25.484028>,  <30.003866, 36.038368, 25.570242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.801373, 35.942642, 25.484028>,  <29.463882, 35.783100, 25.340338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801373, 35.942642, 25.484028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046164, -0.612831, 0.788864,
		0.534785, -0.682169, -0.498649,
		0.843726, 0.398853, 0.359224,
		30.054491, 36.062298, 25.591795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809721, 35.257656, 25.552153>,  <29.463882, 35.783100, 25.340338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809721, 35.257656, 25.552153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.989273, 35.556313, 25.748531>,  <30.097004, 35.735508, 25.866358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.989273, 35.556313, 25.748531>,  <29.809721, 35.257656, 25.552153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989273, 35.556313, 25.748531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053618, -0.525912, 0.848847,
		0.891981, -0.407356, -0.196039,
		0.448882, 0.746644, 0.490945,
		30.123938, 35.780304, 25.895815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312031, 34.933460, 25.916672>,  <29.809721, 35.257656, 25.552153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312031, 34.933460, 25.916672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.218410, 35.282459, 26.088242>,  <30.162239, 35.491859, 26.191183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.218410, 35.282459, 26.088242>,  <30.312031, 34.933460, 25.916672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218410, 35.282459, 26.088242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074437, -0.455962, 0.886881,
		0.969371, 0.175645, 0.171663,
		-0.234048, 0.872495, 0.428922,
		30.148195, 35.544209, 26.216919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634632, 34.883987, 26.448524>,  <30.312031, 34.933460, 25.916672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634632, 34.883987, 26.448524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.398863, 35.188820, 26.555717>,  <30.257402, 35.371719, 26.620033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.398863, 35.188820, 26.555717>,  <30.634632, 34.883987, 26.448524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398863, 35.188820, 26.555717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096139, -0.395547, 0.913400,
		0.802085, 0.512614, 0.306410,
		-0.589421, 0.762082, 0.267980,
		30.222036, 35.417446, 26.636112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926458, 34.986179, 27.070648>,  <30.634632, 34.883987, 26.448524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926458, 34.986179, 27.070648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554152, 35.132420, 27.069586>,  <30.330767, 35.220161, 27.068949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554152, 35.132420, 27.069586>,  <30.926458, 34.986179, 27.070648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554152, 35.132420, 27.069586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167428, -0.419766, 0.892056,
		0.325017, 0.830744, 0.451917,
		-0.930769, 0.365597, -0.002658,
		30.274921, 35.242100, 27.068789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511374, 35.316216, 27.267538>,  <30.926458, 34.986179, 27.070648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511374, 35.316216, 27.267538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880444, 35.162556, 27.254290>,  <32.101887, 35.070358, 27.246340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880444, 35.162556, 27.254290>,  <31.511374, 35.316216, 27.267538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880444, 35.162556, 27.254290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076492, 0.266566, -0.960777,
		0.377913, 0.883952, 0.275339,
		0.922676, -0.384151, -0.033123,
		32.157246, 35.047310, 27.244352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973753, 35.803047, 27.048317>,  <31.511374, 35.316216, 27.267538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973753, 35.803047, 27.048317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.159470, 35.459675, 26.961117>,  <32.270901, 35.253651, 26.908796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.159470, 35.459675, 26.961117>,  <31.973753, 35.803047, 27.048317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159470, 35.459675, 26.961117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345081, 0.402019, -0.848115,
		0.815690, 0.318547, 0.482884,
		0.464293, -0.858434, -0.217999,
		32.298759, 35.202145, 26.895718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619884, 36.086933, 26.866556>,  <31.973753, 35.803047, 27.048317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619884, 36.086933, 26.866556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.614521, 35.710472, 26.731466>,  <32.611301, 35.484596, 26.650414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.614521, 35.710472, 26.731466>,  <32.619884, 36.086933, 26.866556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614521, 35.710472, 26.731466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452646, 0.295451, -0.841321,
		0.891590, -0.164151, 0.422045,
		-0.013410, -0.941150, -0.337724,
		32.610497, 35.428127, 26.630150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295906, 35.970928, 26.532005>,  <32.619884, 36.086933, 26.866556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295906, 35.970928, 26.532005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.050453, 35.695404, 26.377604>,  <32.903183, 35.530090, 26.284962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.050453, 35.695404, 26.377604>,  <33.295906, 35.970928, 26.532005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050453, 35.695404, 26.377604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320321, 0.229669, -0.919046,
		0.721701, -0.687600, 0.079709,
		-0.613630, -0.688809, -0.386006,
		32.866364, 35.488762, 26.261803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757339, 35.580933, 26.135017>,  <33.295906, 35.970928, 26.532005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757339, 35.580933, 26.135017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.382610, 35.494293, 26.025143>,  <33.157772, 35.442310, 25.959217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.382610, 35.494293, 26.025143>,  <33.757339, 35.580933, 26.135017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382610, 35.494293, 26.025143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251221, 0.129857, -0.959179,
		0.243425, -0.967586, -0.067239,
		-0.936820, -0.216596, -0.274688,
		33.101562, 35.429314, 25.942736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764137, 35.146168, 25.542585>,  <33.757339, 35.580933, 26.135017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764137, 35.146168, 25.542585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.408867, 35.329865, 25.536312>,  <33.195705, 35.440083, 25.532549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.408867, 35.329865, 25.536312>,  <33.764137, 35.146168, 25.542585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408867, 35.329865, 25.536312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141826, 0.241509, -0.959979,
		-0.437074, -0.854852, -0.279634,
		-0.888173, 0.459241, -0.015683,
		33.142414, 35.467636, 25.531607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441231, 34.881763, 24.857012>,  <33.764137, 35.146168, 25.542585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441231, 34.881763, 24.857012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258934, 35.217678, 24.975037>,  <33.149555, 35.419228, 25.045851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258934, 35.217678, 24.975037>,  <33.441231, 34.881763, 24.857012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258934, 35.217678, 24.975037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138937, 0.394538, -0.908315,
		-0.879201, -0.372963, -0.296485,
		-0.455743, 0.839784, 0.295060,
		33.122211, 35.469612, 25.063555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062695, 35.053616, 24.312222>,  <33.441231, 34.881763, 24.857012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062695, 35.053616, 24.312222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083763, 35.400616, 24.510080>,  <33.096405, 35.608814, 24.628796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083763, 35.400616, 24.510080>,  <33.062695, 35.053616, 24.312222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083763, 35.400616, 24.510080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218888, 0.473260, -0.853295,
		-0.974327, 0.153216, -0.164958,
		0.052671, 0.867496, 0.494648,
		33.099564, 35.660866, 24.658474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702316, 35.574459, 23.865871>,  <33.062695, 35.053616, 24.312222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702316, 35.574459, 23.865871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.922913, 35.823303, 24.088163>,  <33.055271, 35.972610, 24.221539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.922913, 35.823303, 24.088163>,  <32.702316, 35.574459, 23.865871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922913, 35.823303, 24.088163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114931, 0.603180, -0.789281,
		-0.826228, 0.499149, 0.261146,
		0.551487, 0.622113, 0.555731,
		33.088360, 36.009937, 24.254883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495728, 36.209946, 23.640566>,  <32.702316, 35.574459, 23.865871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495728, 36.209946, 23.640566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.818188, 36.323673, 23.848135>,  <33.011665, 36.391911, 23.972675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.818188, 36.323673, 23.848135>,  <32.495728, 36.209946, 23.640566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818188, 36.323673, 23.848135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171170, 0.727440, -0.664479,
		-0.566405, 0.624497, 0.537763,
		0.806155, 0.284316, 0.518921,
		33.060036, 36.408966, 24.003811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442265, 36.931881, 23.798330>,  <32.495728, 36.209946, 23.640566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442265, 36.931881, 23.798330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833088, 36.847137, 23.806988>,  <33.067581, 36.796291, 23.812181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833088, 36.847137, 23.806988>,  <32.442265, 36.931881, 23.798330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833088, 36.847137, 23.806988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178415, 0.758843, -0.626358,
		0.116273, 0.615852, 0.779235,
		0.977061, -0.211855, 0.021644,
		33.126205, 36.783581, 23.813480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790260, 37.572342, 23.839895>,  <32.442265, 36.931881, 23.798330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790260, 37.572342, 23.839895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.056164, 37.327805, 23.668148>,  <33.215706, 37.181084, 23.565100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.056164, 37.327805, 23.668148>,  <32.790260, 37.572342, 23.839895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056164, 37.327805, 23.668148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203199, 0.701042, -0.683557,
		0.718892, 0.367153, 0.590248,
		0.664759, -0.611341, -0.429368,
		33.255592, 37.144402, 23.539337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345737, 38.012711, 23.586166>,  <32.790260, 37.572342, 23.839895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345737, 38.012711, 23.586166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.425133, 37.675892, 23.385546>,  <33.472771, 37.473801, 23.265173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.425133, 37.675892, 23.385546>,  <33.345737, 38.012711, 23.586166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425133, 37.675892, 23.385546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393631, 0.537138, -0.746015,
		0.897584, -0.049352, 0.438072,
		0.198487, -0.842050, -0.501553,
		33.484680, 37.423279, 23.235081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100910, 38.048553, 23.313560>,  <33.345737, 38.012711, 23.586166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100910, 38.048553, 23.313560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919834, 37.762089, 23.101080>,  <33.811188, 37.590210, 22.973591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919834, 37.762089, 23.101080>,  <34.100910, 38.048553, 23.313560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919834, 37.762089, 23.101080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348232, 0.406435, -0.844716,
		0.820855, -0.567380, 0.065400,
		-0.452694, -0.716164, -0.531203,
		33.784027, 37.547241, 22.941719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774761, 37.741421, 23.348207>,  <34.100910, 38.048553, 23.313560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774761, 37.741421, 23.348207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162766, 37.837929, 23.359972>,  <35.395569, 37.895832, 23.367031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162766, 37.837929, 23.359972>,  <34.774761, 37.741421, 23.348207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162766, 37.837929, 23.359972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196281, -0.848959, 0.490655,
		0.143346, -0.470169, -0.870857,
		0.970013, 0.241266, 0.029410,
		35.453770, 37.910309, 23.368795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206196, 37.206799, 23.060999>,  <34.774761, 37.741421, 23.348207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206196, 37.206799, 23.060999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455429, 37.404037, 23.303858>,  <35.604969, 37.522381, 23.449574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455429, 37.404037, 23.303858>,  <35.206196, 37.206799, 23.060999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455429, 37.404037, 23.303858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316576, -0.868807, 0.380729,
		0.715229, -0.045016, -0.697439,
		0.623079, 0.493100, 0.607145,
		35.642353, 37.551968, 23.486002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850327, 36.804638, 23.060148>,  <35.206196, 37.206799, 23.060999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850327, 36.804638, 23.060148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849625, 37.034779, 23.387310>,  <35.849201, 37.172863, 23.583607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849625, 37.034779, 23.387310>,  <35.850327, 36.804638, 23.060148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849625, 37.034779, 23.387310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302039, -0.779402, 0.548912,
		0.953294, 0.248005, -0.172407,
		-0.001759, 0.575348, 0.817906,
		35.849098, 37.207382, 23.632683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376938, 36.607876, 23.385303>,  <35.850327, 36.804638, 23.060148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376938, 36.607876, 23.385303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170250, 36.808182, 23.663074>,  <36.046238, 36.928368, 23.829737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170250, 36.808182, 23.663074>,  <36.376938, 36.607876, 23.385303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170250, 36.808182, 23.663074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299211, -0.654330, 0.694496,
		0.802166, 0.566642, 0.188271,
		-0.516723, 0.500769, 0.694427,
		36.015232, 36.958412, 23.871403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763573, 36.491703, 23.880974>,  <36.376938, 36.607876, 23.385303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763573, 36.491703, 23.880974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410774, 36.588619, 24.042650>,  <36.199093, 36.646770, 24.139656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410774, 36.588619, 24.042650>,  <36.763573, 36.491703, 23.880974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410774, 36.588619, 24.042650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084705, -0.762220, 0.641752,
		0.463576, 0.600261, 0.651754,
		-0.881999, 0.242294, 0.404192,
		36.146175, 36.661308, 24.163908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855373, 36.638119, 24.704655>,  <36.763573, 36.491703, 23.880974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855373, 36.638119, 24.704655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477085, 36.532608, 24.628721>,  <36.250111, 36.469303, 24.583160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477085, 36.532608, 24.628721>,  <36.855373, 36.638119, 24.704655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477085, 36.532608, 24.628721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001891, -0.579658, 0.814858,
		-0.324979, 0.770986, 0.547695,
		-0.945719, -0.263777, -0.189834,
		36.193371, 36.453476, 24.571772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580059, 36.655476, 25.446224>,  <36.855373, 36.638119, 24.704655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580059, 36.655476, 25.446224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309677, 36.455776, 25.229395>,  <36.147449, 36.335957, 25.099297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309677, 36.455776, 25.229395>,  <36.580059, 36.655476, 25.446224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309677, 36.455776, 25.229395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097635, -0.668417, 0.737351,
		-0.730450, 0.551339, 0.403073,
		-0.675951, -0.499244, -0.542075,
		36.106892, 36.306004, 25.066772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989838, 36.594788, 25.847160>,  <36.580059, 36.655476, 25.446224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989838, 36.594788, 25.847160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963829, 36.298817, 25.579344>,  <35.948223, 36.121235, 25.418653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963829, 36.298817, 25.579344>,  <35.989838, 36.594788, 25.847160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963829, 36.298817, 25.579344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184470, -0.650483, 0.736779,
		-0.980685, 0.171418, -0.094197,
		-0.065023, -0.739924, -0.669540,
		35.944321, 36.076839, 25.378481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439449, 36.201080, 26.034416>,  <35.989838, 36.594788, 25.847160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439449, 36.201080, 26.034416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639744, 35.940308, 25.806646>,  <35.759922, 35.783844, 25.669985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639744, 35.940308, 25.806646>,  <35.439449, 36.201080, 26.034416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639744, 35.940308, 25.806646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007444, -0.661060, 0.750297,
		-0.865567, -0.371464, -0.335871,
		0.500739, -0.651932, -0.569426,
		35.789967, 35.744728, 25.635818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102013, 35.587032, 26.192825>,  <35.439449, 36.201080, 26.034416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102013, 35.587032, 26.192825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461014, 35.509296, 26.034475>,  <35.676414, 35.462654, 25.939466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461014, 35.509296, 26.034475>,  <35.102013, 35.587032, 26.192825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461014, 35.509296, 26.034475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136982, -0.730415, 0.669127,
		-0.419188, -0.654773, -0.628931,
		0.897507, -0.194338, -0.395873,
		35.730267, 35.450996, 25.915714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033527, 34.923210, 26.373777>,  <35.102013, 35.587032, 26.192825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033527, 34.923210, 26.373777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408592, 34.984299, 26.248894>,  <35.633629, 35.020954, 26.173964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408592, 34.984299, 26.248894>,  <35.033527, 34.923210, 26.373777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408592, 34.984299, 26.248894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320491, -0.727497, 0.606658,
		-0.134477, -0.668897, -0.731091,
		0.937658, 0.152726, -0.312207,
		35.689888, 35.030117, 26.155231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351536, 34.308289, 26.052567>,  <35.033527, 34.923210, 26.373777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351536, 34.308289, 26.052567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658314, 34.534611, 26.173660>,  <35.842381, 34.670406, 26.246317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658314, 34.534611, 26.173660>,  <35.351536, 34.308289, 26.052567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658314, 34.534611, 26.173660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120776, -0.590609, 0.797869,
		0.630241, -0.575361, -0.521303,
		0.766949, 0.565810, 0.302736,
		35.888397, 34.704353, 26.264481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001644, 33.909092, 26.091349>,  <35.351536, 34.308289, 26.052567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001644, 33.909092, 26.091349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076694, 34.205040, 26.349773>,  <36.121723, 34.382607, 26.504827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076694, 34.205040, 26.349773>,  <36.001644, 33.909092, 26.091349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076694, 34.205040, 26.349773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105128, -0.669089, 0.735709,
		0.976599, -0.070118, -0.203319,
		0.187625, 0.739867, 0.646060,
		36.132980, 34.427002, 26.543591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475685, 33.654377, 26.604599>,  <36.001644, 33.909092, 26.091349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475685, 33.654377, 26.604599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289379, 33.950104, 26.799114>,  <36.177593, 34.127541, 26.915823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289379, 33.950104, 26.799114>,  <36.475685, 33.654377, 26.604599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289379, 33.950104, 26.799114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022882, -0.559413, 0.828573,
		0.884611, 0.374795, 0.277474,
		-0.465767, 0.739314, 0.486287,
		36.149651, 34.171898, 26.945000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.608089, 41.540760, 24.740498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.240002, 41.467045, 24.602377>,  <35.019150, 41.422817, 24.519505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.240002, 41.467045, 24.602377>,  <35.608089, 41.540760, 24.740498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240002, 41.467045, 24.602377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226210, 0.469543, -0.853439,
		0.319413, -0.863462, -0.390395,
		-0.920220, -0.184288, -0.345302,
		34.963936, 41.411758, 24.498787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713947, 41.319843, 23.984846>,  <35.608089, 41.540760, 24.740498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713947, 41.319843, 23.984846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326530, 41.419250, 23.989941>,  <35.094078, 41.478893, 23.992998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326530, 41.419250, 23.989941>,  <35.713947, 41.319843, 23.984846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326530, 41.419250, 23.989941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075640, 0.342788, -0.936363,
		-0.237065, -0.905946, -0.350803,
		-0.968545, 0.248514, 0.012737,
		35.035969, 41.493805, 23.993761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425400, 41.205143, 23.361046>,  <35.713947, 41.319843, 23.984846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425400, 41.205143, 23.361046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.156750, 41.465103, 23.503336>,  <34.995560, 41.621078, 23.588709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.156750, 41.465103, 23.503336>,  <35.425400, 41.205143, 23.361046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156750, 41.465103, 23.503336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065637, 0.426050, -0.902315,
		-0.737975, -0.629370, -0.243490,
		-0.671629, 0.649904, 0.355724,
		34.955261, 41.660076, 23.610054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849632, 41.240166, 22.861019>,  <35.425400, 41.205143, 23.361046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849632, 41.240166, 22.861019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862110, 41.573753, 23.081388>,  <34.869598, 41.773907, 23.213610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862110, 41.573753, 23.081388>,  <34.849632, 41.240166, 22.861019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862110, 41.573753, 23.081388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056190, 0.548858, -0.834025,
		-0.997933, 0.056974, -0.029739,
		0.031195, 0.833972, 0.550924,
		34.871468, 41.823944, 23.246666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412075, 41.584003, 22.451458>,  <34.849632, 41.240166, 22.861019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412075, 41.584003, 22.451458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616566, 41.831619, 22.689930>,  <34.739262, 41.980190, 22.833014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616566, 41.831619, 22.689930>,  <34.412075, 41.584003, 22.451458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616566, 41.831619, 22.689930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092741, 0.649893, -0.754346,
		-0.854426, 0.440934, 0.274834,
		0.511230, 0.619044, 0.596178,
		34.769936, 42.017334, 22.868784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178307, 42.223900, 22.297709>,  <34.412075, 41.584003, 22.451458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178307, 42.223900, 22.297709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524506, 42.313820, 22.476765>,  <34.732224, 42.367771, 22.584198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524506, 42.313820, 22.476765>,  <34.178307, 42.223900, 22.297709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524506, 42.313820, 22.476765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230622, 0.614467, -0.754483,
		-0.444671, 0.756236, 0.479973,
		0.865495, 0.224804, 0.447640,
		34.784153, 42.381260, 22.611057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269344, 42.903854, 22.149603>,  <34.178307, 42.223900, 22.297709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269344, 42.903854, 22.149603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636787, 42.800896, 22.269545>,  <34.857254, 42.739120, 22.341511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636787, 42.800896, 22.269545>,  <34.269344, 42.903854, 22.149603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636787, 42.800896, 22.269545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394424, 0.643990, -0.655520,
		-0.024379, 0.720435, 0.693094,
		0.918605, -0.257393, 0.299857,
		34.912369, 42.723679, 22.359501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509609, 43.498398, 22.251154>,  <34.269344, 42.903854, 22.149603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509609, 43.498398, 22.251154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829800, 43.264809, 22.197178>,  <35.021915, 43.124653, 22.164793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829800, 43.264809, 22.197178>,  <34.509609, 43.498398, 22.251154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829800, 43.264809, 22.197178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358619, 0.647045, -0.672848,
		0.480240, 0.490207, 0.727370,
		0.800476, -0.583977, -0.134939,
		35.069942, 43.089615, 22.156696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058762, 43.950184, 22.249130>,  <34.509609, 43.498398, 22.251154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058762, 43.950184, 22.249130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153038, 43.611465, 22.058392>,  <35.209602, 43.408234, 21.943949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153038, 43.611465, 22.058392>,  <35.058762, 43.950184, 22.249130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153038, 43.611465, 22.058392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466669, 0.529012, -0.708778,
		0.852450, -0.055478, 0.519857,
		0.235689, -0.846799, -0.476846,
		35.223743, 43.357426, 21.915339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723263, 44.141487, 22.042233>,  <35.058762, 43.950184, 22.249130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723263, 44.141487, 22.042233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604729, 43.833294, 21.816471>,  <35.533607, 43.648380, 21.681015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604729, 43.833294, 21.816471>,  <35.723263, 44.141487, 22.042233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604729, 43.833294, 21.816471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389739, 0.441952, -0.807949,
		0.871946, -0.459392, 0.169320,
		-0.296334, -0.770478, -0.564401,
		35.515827, 43.602150, 21.647150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217056, 43.969090, 21.666780>,  <35.723263, 44.141487, 22.042233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217056, 43.969090, 21.666780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928749, 43.782639, 21.461557>,  <35.755764, 43.670769, 21.338425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928749, 43.782639, 21.461557>,  <36.217056, 43.969090, 21.666780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928749, 43.782639, 21.461557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437764, 0.267789, -0.858284,
		0.537459, -0.843218, 0.011040,
		-0.720764, -0.466125, -0.513056,
		35.712521, 43.642799, 21.307640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551865, 43.648895, 21.114656>,  <36.217056, 43.969090, 21.666780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551865, 43.648895, 21.114656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.170364, 43.659740, 20.994902>,  <35.941463, 43.666248, 20.923050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.170364, 43.659740, 20.994902>,  <36.551865, 43.648895, 21.114656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170364, 43.659740, 20.994902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292359, 0.315419, -0.902794,
		0.069950, -0.948565, -0.308758,
		-0.953747, 0.027118, -0.299385,
		35.884239, 43.667877, 20.905087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435341, 43.087990, 20.572706>,  <36.551865, 43.648895, 21.114656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435341, 43.087990, 20.572706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210922, 43.417999, 20.545662>,  <36.076271, 43.616005, 20.529436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210922, 43.417999, 20.545662>,  <36.435341, 43.087990, 20.572706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210922, 43.417999, 20.545662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419827, 0.213202, -0.882208,
		-0.713425, -0.523342, -0.465981,
		-0.561044, 0.825020, -0.067609,
		36.042610, 43.665504, 20.525379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979977, 43.062973, 20.009838>,  <36.435341, 43.087990, 20.572706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979977, 43.062973, 20.009838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108639, 43.440136, 20.044382>,  <36.185837, 43.666435, 20.065109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108639, 43.440136, 20.044382>,  <35.979977, 43.062973, 20.009838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108639, 43.440136, 20.044382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229765, 0.010754, -0.973187,
		-0.918558, 0.332869, -0.213189,
		0.321651, 0.942912, 0.086360,
		36.205135, 43.723011, 20.070290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080425, 42.424831, 19.683401>,  <35.979977, 43.062973, 20.009838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080425, 42.424831, 19.683401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045853, 42.083527, 19.477695>,  <36.025108, 41.878742, 19.354273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045853, 42.083527, 19.477695>,  <36.080425, 42.424831, 19.683401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045853, 42.083527, 19.477695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360335, -0.454473, 0.814624,
		-0.928810, 0.255719, -0.268179,
		-0.086435, -0.853265, -0.514264,
		36.019924, 41.827545, 19.323416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504139, 42.182743, 19.961920>,  <36.080425, 42.424831, 19.683401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504139, 42.182743, 19.961920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703415, 41.875214, 19.801561>,  <35.822979, 41.690697, 19.705345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703415, 41.875214, 19.801561>,  <35.504139, 42.182743, 19.961920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703415, 41.875214, 19.801561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228155, -0.562304, 0.794833,
		-0.836511, -0.304511, -0.455545,
		0.498191, -0.768822, -0.400898,
		35.852871, 41.644566, 19.681292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021832, 41.526707, 20.050446>,  <35.504139, 42.182743, 19.961920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021832, 41.526707, 20.050446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356133, 41.319118, 19.978685>,  <35.556713, 41.194565, 19.935629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356133, 41.319118, 19.978685>,  <35.021832, 41.526707, 20.050446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356133, 41.319118, 19.978685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212645, -0.607116, 0.765632,
		-0.506252, -0.601735, -0.617757,
		0.835758, -0.518966, -0.179398,
		35.606861, 41.163429, 19.924866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881336, 40.794514, 20.073957>,  <35.021832, 41.526707, 20.050446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881336, 40.794514, 20.073957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279064, 40.819073, 20.108742>,  <35.517700, 40.833809, 20.129612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279064, 40.819073, 20.108742>,  <34.881336, 40.794514, 20.073957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279064, 40.819073, 20.108742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021186, -0.686427, 0.726890,
		0.104325, -0.724602, -0.681226,
		0.994318, 0.061400, 0.086963,
		35.577358, 40.837494, 20.134830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127602, 40.187111, 19.926004>,  <34.881336, 40.794514, 20.073957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127602, 40.187111, 19.926004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.424858, 40.350601, 20.137926>,  <35.603210, 40.448696, 20.265079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.424858, 40.350601, 20.137926>,  <35.127602, 40.187111, 19.926004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424858, 40.350601, 20.137926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001814, -0.792999, 0.609220,
		0.669137, -0.451772, -0.590048,
		0.743136, 0.408722, 0.529806,
		35.647800, 40.473217, 20.296867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234116, 39.622623, 20.376888>,  <35.127602, 40.187111, 19.926004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234116, 39.622623, 20.376888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457611, 39.910347, 20.542011>,  <35.591709, 40.082981, 20.641085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457611, 39.910347, 20.542011>,  <35.234116, 39.622623, 20.376888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457611, 39.910347, 20.542011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254058, -0.622273, 0.740426,
		0.789471, -0.308829, -0.530434,
		0.558740, 0.719306, 0.412806,
		35.625233, 40.126137, 20.665854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760246, 39.254765, 20.582207>,  <35.234116, 39.622623, 20.376888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760246, 39.254765, 20.582207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758812, 39.589809, 20.800709>,  <35.757950, 39.790836, 20.931810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758812, 39.589809, 20.800709>,  <35.760246, 39.254765, 20.582207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758812, 39.589809, 20.800709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163738, -0.538395, 0.826632,
		0.986497, 0.092406, -0.135218,
		-0.003585, 0.837611, 0.546256,
		35.757736, 39.841091, 20.964586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324932, 39.134151, 21.021570>,  <35.760246, 39.254765, 20.582207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324932, 39.134151, 21.021570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112072, 39.416725, 21.208233>,  <35.984356, 39.586269, 21.320230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112072, 39.416725, 21.208233>,  <36.324932, 39.134151, 21.021570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112072, 39.416725, 21.208233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132538, -0.474875, 0.870016,
		0.836212, 0.524828, 0.159075,
		-0.532150, 0.706434, 0.466656,
		35.952427, 39.628654, 21.348230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610950, 39.358047, 21.561852>,  <36.324932, 39.134151, 21.021570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610950, 39.358047, 21.561852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238949, 39.457176, 21.670427>,  <36.015747, 39.516655, 21.735573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238949, 39.457176, 21.670427>,  <36.610950, 39.358047, 21.561852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238949, 39.457176, 21.670427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117803, -0.498567, 0.858809,
		0.348165, 0.830670, 0.434474,
		-0.930002, 0.247825, 0.271439,
		35.959949, 39.531525, 21.751860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660316, 39.633968, 22.189400>,  <36.610950, 39.358047, 21.561852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660316, 39.633968, 22.189400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280590, 39.515209, 22.148109>,  <36.052753, 39.443954, 22.123335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280590, 39.515209, 22.148109>,  <36.660316, 39.633968, 22.189400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280590, 39.515209, 22.148109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088294, -0.567052, 0.818936,
		-0.301675, 0.768313, 0.564525,
		-0.949314, -0.296896, -0.103228,
		35.995796, 39.426140, 22.117142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302334, 39.680325, 22.873198>,  <36.660316, 39.633968, 22.189400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302334, 39.680325, 22.873198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058983, 39.444061, 22.661163>,  <35.912971, 39.302303, 22.533943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058983, 39.444061, 22.661163>,  <36.302334, 39.680325, 22.873198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058983, 39.444061, 22.661163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072661, -0.623654, 0.778316,
		-0.790311, 0.512030, 0.336501,
		-0.608382, -0.590662, -0.530085,
		35.876469, 39.266861, 22.502138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670536, 39.536797, 23.228859>,  <36.302334, 39.680325, 22.873198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670536, 39.536797, 23.228859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.744411, 39.225475, 22.988815>,  <35.788738, 39.038681, 22.844790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.744411, 39.225475, 22.988815>,  <35.670536, 39.536797, 23.228859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744411, 39.225475, 22.988815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162301, -0.626382, 0.762433,
		-0.969303, -0.043416, -0.242007,
		0.184691, -0.778306, -0.600108,
		35.799820, 38.991985, 22.808783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199604, 39.102833, 23.570152>,  <35.670536, 39.536797, 23.228859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199604, 39.102833, 23.570152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.432194, 38.896950, 23.318132>,  <35.571747, 38.773418, 23.166920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.432194, 38.896950, 23.318132>,  <35.199604, 39.102833, 23.570152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432194, 38.896950, 23.318132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140168, -0.826231, 0.545614,
		-0.801397, -0.228949, -0.552580,
		0.581477, -0.514708, -0.630048,
		35.606636, 38.742538, 23.129118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801895, 38.448242, 23.363482>,  <35.199604, 39.102833, 23.570152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801895, 38.448242, 23.363482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181110, 38.377308, 23.257814>,  <35.408638, 38.334747, 23.194414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181110, 38.377308, 23.257814>,  <34.801895, 38.448242, 23.363482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181110, 38.377308, 23.257814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015601, -0.855189, 0.518082,
		-0.317787, -0.487037, -0.813515,
		0.948034, -0.177331, -0.264169,
		35.465519, 38.324108, 23.178564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475151, 38.099033, 22.695932>,  <34.801895, 38.448242, 23.363482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475151, 38.099033, 22.695932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152374, 37.888805, 22.588137>,  <33.958710, 37.762669, 22.523458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152374, 37.888805, 22.588137>,  <34.475151, 38.099033, 22.695932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152374, 37.888805, 22.588137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094394, 0.565161, -0.819563,
		0.583053, -0.635892, -0.505658,
		-0.806931, -0.525580, -0.269494,
		33.910294, 37.731133, 22.507290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642952, 37.889008, 22.038057>,  <34.475151, 38.099033, 22.695932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642952, 37.889008, 22.038057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243919, 37.894558, 22.065302>,  <34.004501, 37.897888, 22.081650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243919, 37.894558, 22.065302>,  <34.642952, 37.889008, 22.038057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243919, 37.894558, 22.065302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058158, 0.370053, -0.927188,
		-0.038072, -0.928907, -0.368351,
		-0.997581, 0.013878, 0.068112,
		33.944645, 37.898720, 22.085735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418865, 37.630432, 21.395880>,  <34.642952, 37.889008, 22.038057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418865, 37.630432, 21.395880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114544, 37.840252, 21.548733>,  <33.931950, 37.966145, 21.640444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114544, 37.840252, 21.548733>,  <34.418865, 37.630432, 21.395880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114544, 37.840252, 21.548733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095992, 0.491382, -0.865638,
		-0.641845, -0.695261, -0.323492,
		-0.760803, 0.524553, 0.382130,
		33.886303, 37.997620, 21.663372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951389, 37.593437, 20.894405>,  <34.418865, 37.630432, 21.395880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951389, 37.593437, 20.894405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820293, 37.903790, 21.110035>,  <33.741634, 38.090000, 21.239412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820293, 37.903790, 21.110035>,  <33.951389, 37.593437, 20.894405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820293, 37.903790, 21.110035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329801, 0.440735, -0.834855,
		-0.885333, -0.451406, 0.111437,
		-0.327744, 0.775877, 0.539072,
		33.721970, 38.136551, 21.271757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208794, 37.822346, 20.682878>,  <33.951389, 37.593437, 20.894405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208794, 37.822346, 20.682878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346798, 38.151810, 20.862902>,  <33.429600, 38.349487, 20.970915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346798, 38.151810, 20.862902>,  <33.208794, 37.822346, 20.682878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346798, 38.151810, 20.862902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233892, 0.539817, -0.808636,
		-0.908990, 0.173722, 0.378890,
		0.345009, 0.823662, 0.450056,
		33.450302, 38.398907, 20.997919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613747, 38.429787, 20.577539>,  <33.208794, 37.822346, 20.682878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613747, 38.429787, 20.577539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978466, 38.584290, 20.633299>,  <33.197296, 38.676991, 20.666754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978466, 38.584290, 20.633299>,  <32.613747, 38.429787, 20.577539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978466, 38.584290, 20.633299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150656, 0.630452, -0.761468,
		-0.382002, 0.673305, 0.633036,
		0.911799, 0.386253, 0.139397,
		33.252007, 38.700165, 20.675117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505001, 39.089115, 20.536995>,  <32.613747, 38.429787, 20.577539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505001, 39.089115, 20.536995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896080, 39.051086, 20.462086>,  <33.130726, 39.028271, 20.417141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896080, 39.051086, 20.462086>,  <32.505001, 39.089115, 20.536995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896080, 39.051086, 20.462086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065786, 0.708176, -0.702964,
		0.199452, 0.699606, 0.686127,
		0.977697, -0.095070, -0.187272,
		33.189388, 39.022564, 20.405905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281261, 39.706917, 20.844229>,  <32.505001, 39.089115, 20.536995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281261, 39.706917, 20.844229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898592, 39.811829, 20.793663>,  <31.668989, 39.874775, 20.763325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898592, 39.811829, 20.793663>,  <32.281261, 39.706917, 20.844229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898592, 39.811829, 20.793663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284279, -0.747692, 0.600118,
		0.062879, 0.610055, 0.789860,
		-0.956677, 0.262276, -0.126412,
		31.611589, 39.890511, 20.755739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092628, 39.583488, 21.434795>,  <32.281261, 39.706917, 20.844229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092628, 39.583488, 21.434795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759848, 39.597054, 21.213270>,  <31.560179, 39.605190, 21.080355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759848, 39.597054, 21.213270>,  <32.092628, 39.583488, 21.434795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759848, 39.597054, 21.213270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424178, -0.682301, 0.595432,
		-0.357675, 0.730284, 0.582025,
		-0.831951, 0.033911, -0.553813,
		31.510262, 39.607227, 21.047127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543058, 39.606396, 21.886026>,  <32.092628, 39.583488, 21.434795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543058, 39.606396, 21.886026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362686, 39.464497, 21.558413>,  <31.254463, 39.379356, 21.361845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362686, 39.464497, 21.558413>,  <31.543058, 39.606396, 21.886026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362686, 39.464497, 21.558413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536568, -0.625559, 0.566366,
		-0.713271, 0.694858, 0.091736,
		-0.450931, -0.354750, -0.819032,
		31.227407, 39.358070, 21.312702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824934, 39.597897, 22.070778>,  <31.543058, 39.606396, 21.886026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824934, 39.597897, 22.070778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.821688, 39.356789, 21.751629>,  <30.819740, 39.212124, 21.560139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.821688, 39.356789, 21.751629>,  <30.824934, 39.597897, 22.070778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821688, 39.356789, 21.751629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472454, -0.700916, 0.534326,
		-0.881318, 0.381295, -0.279092,
		-0.008115, -0.602769, -0.797875,
		30.819254, 39.175957, 21.512266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129219, 39.318016, 22.019894>,  <30.824934, 39.597897, 22.070778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129219, 39.318016, 22.019894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.373669, 39.054810, 21.843920>,  <30.520338, 38.896885, 21.738335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.373669, 39.054810, 21.843920>,  <30.129219, 39.318016, 22.019894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373669, 39.054810, 21.843920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508933, -0.752336, 0.418304,
		-0.606228, -0.031739, -0.794657,
		0.611126, -0.658014, -0.439935,
		30.557007, 38.857407, 21.711939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704847, 38.786041, 21.809589>,  <30.129219, 39.318016, 22.019894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704847, 38.786041, 21.809589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.061096, 38.604435, 21.799322>,  <30.274845, 38.495472, 21.793161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.061096, 38.604435, 21.799322>,  <29.704847, 38.786041, 21.809589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061096, 38.604435, 21.799322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385077, -0.783007, 0.488482,
		-0.241875, -0.425171, -0.872196,
		0.890624, -0.454015, -0.025666,
		30.328283, 38.468231, 21.791622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642502, 37.992149, 21.682981>,  <29.704847, 38.786041, 21.809589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642502, 37.992149, 21.682981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.007345, 38.047043, 21.837502>,  <30.226252, 38.079979, 21.930214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.007345, 38.047043, 21.837502>,  <29.642502, 37.992149, 21.682981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007345, 38.047043, 21.837502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105441, -0.832069, 0.544558,
		0.396159, -0.537427, -0.744466,
		0.912108, 0.137234, 0.386298,
		30.280977, 38.088211, 21.953390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.592896, 44.868717, 22.113777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.875526, 44.702854, 21.884411>,  <33.045105, 44.603336, 21.746792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.875526, 44.702854, 21.884411>,  <32.592896, 44.868717, 22.113777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875526, 44.702854, 21.884411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124306, -0.724991, 0.677449,
		-0.696628, -0.549951, -0.460720,
		0.706581, -0.414659, -0.573411,
		33.087502, 44.578457, 21.712387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271843, 44.258884, 21.836639>,  <32.592896, 44.868717, 22.113777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271843, 44.258884, 21.836639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669788, 44.219414, 21.827688>,  <32.908558, 44.195732, 21.822317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669788, 44.219414, 21.827688>,  <32.271843, 44.258884, 21.836639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669788, 44.219414, 21.827688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028742, -0.487678, 0.872551,
		-0.097015, -0.867429, -0.488011,
		0.994868, -0.098677, -0.022380,
		32.968250, 44.189812, 21.820974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441677, 43.638462, 21.864384>,  <32.271843, 44.258884, 21.836639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441677, 43.638462, 21.864384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763962, 43.835278, 21.996275>,  <32.957333, 43.953369, 22.075409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763962, 43.835278, 21.996275>,  <32.441677, 43.638462, 21.864384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763962, 43.835278, 21.996275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030600, -0.521364, 0.852786,
		0.591513, -0.697191, -0.405014,
		0.805714, 0.492041, 0.329728,
		33.005676, 43.982891, 22.095194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729702, 43.138458, 22.267860>,  <32.441677, 43.638462, 21.864384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729702, 43.138458, 22.267860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.915184, 43.470901, 22.390648>,  <33.026474, 43.670368, 22.464321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.915184, 43.470901, 22.390648>,  <32.729702, 43.138458, 22.267860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915184, 43.470901, 22.390648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055492, -0.373036, 0.926156,
		0.884251, -0.412428, -0.219098,
		0.463704, 0.831112, 0.306971,
		33.054295, 43.720234, 22.482738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238144, 42.899426, 22.779285>,  <32.729702, 43.138458, 22.267860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238144, 42.899426, 22.779285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.165680, 43.282497, 22.868750>,  <33.122200, 43.512341, 22.922428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.165680, 43.282497, 22.868750>,  <33.238144, 42.899426, 22.779285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165680, 43.282497, 22.868750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128223, -0.248484, 0.960112,
		0.975058, 0.145259, 0.167813,
		-0.181164, 0.957682, 0.223661,
		33.111332, 43.569801, 22.935848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577835, 43.002499, 23.362715>,  <33.238144, 42.899426, 22.779285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577835, 43.002499, 23.362715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.308826, 43.298244, 23.349731>,  <33.147419, 43.475693, 23.341942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.308826, 43.298244, 23.349731>,  <33.577835, 43.002499, 23.362715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308826, 43.298244, 23.349731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072785, -0.022436, 0.997095,
		0.736487, 0.672934, 0.068903,
		-0.672525, 0.739363, -0.032456,
		33.107071, 43.520054, 23.339994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740677, 43.508450, 23.921932>,  <33.577835, 43.002499, 23.362715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740677, 43.508450, 23.921932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.360119, 43.567734, 23.813940>,  <33.131786, 43.603302, 23.749144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.360119, 43.567734, 23.813940>,  <33.740677, 43.508450, 23.921932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360119, 43.567734, 23.813940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292591, -0.161248, 0.942544,
		0.096157, 0.975722, 0.196773,
		-0.951391, 0.148206, -0.269982,
		33.074703, 43.612194, 23.732944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448208, 43.896320, 24.458561>,  <33.740677, 43.508450, 23.921932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448208, 43.896320, 24.458561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.126095, 43.741390, 24.279007>,  <32.932827, 43.648430, 24.171274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.126095, 43.741390, 24.279007>,  <33.448208, 43.896320, 24.458561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126095, 43.741390, 24.279007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405320, -0.192917, 0.893588,
		-0.432710, 0.901531, -0.001640,
		-0.805281, -0.387329, -0.448886,
		32.884510, 43.625191, 24.144341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961220, 44.230881, 24.737606>,  <33.448208, 43.896320, 24.458561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961220, 44.230881, 24.737606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.783558, 43.902992, 24.592951>,  <32.676960, 43.706257, 24.506157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.783558, 43.902992, 24.592951>,  <32.961220, 44.230881, 24.737606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783558, 43.902992, 24.592951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374240, -0.197001, 0.906165,
		-0.814048, 0.537815, -0.219275,
		-0.444152, -0.819723, -0.361640,
		32.650311, 43.657074, 24.484459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261349, 44.167713, 25.094976>,  <32.961220, 44.230881, 24.737606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261349, 44.167713, 25.094976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.328148, 43.800732, 24.950542>,  <32.368229, 43.580544, 24.863882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.328148, 43.800732, 24.950542>,  <32.261349, 44.167713, 25.094976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328148, 43.800732, 24.950542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388586, -0.397833, 0.831102,
		-0.906152, 0.001519, -0.422949,
		0.167001, -0.917456, -0.361087,
		32.378246, 43.525494, 24.842216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584442, 43.731861, 25.198404>,  <32.261349, 44.167713, 25.094976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584442, 43.731861, 25.198404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871557, 43.459503, 25.140221>,  <32.043827, 43.296089, 25.105310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871557, 43.459503, 25.140221>,  <31.584442, 43.731861, 25.198404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871557, 43.459503, 25.140221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267771, -0.462807, 0.845049,
		-0.642714, -0.567614, -0.514522,
		0.717786, -0.680900, -0.145462,
		32.086895, 43.255234, 25.096582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273876, 43.099518, 25.298180>,  <31.584442, 43.731861, 25.198404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273876, 43.099518, 25.298180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660505, 43.045780, 25.385530>,  <31.892483, 43.013538, 25.437941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660505, 43.045780, 25.385530>,  <31.273876, 43.099518, 25.298180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660505, 43.045780, 25.385530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247871, -0.271844, 0.929871,
		-0.065559, -0.952918, -0.296057,
		0.966572, -0.134345, 0.218379,
		31.950478, 43.005478, 25.451044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900824, 42.560871, 24.833673>,  <31.273876, 43.099518, 25.298180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900824, 42.560871, 24.833673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.549099, 42.414310, 24.711981>,  <30.338064, 42.326374, 24.638966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.549099, 42.414310, 24.711981>,  <30.900824, 42.560871, 24.833673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549099, 42.414310, 24.711981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063509, 0.542896, -0.837395,
		0.471988, -0.755655, -0.454107,
		-0.879314, -0.366400, -0.304231,
		30.285305, 42.304390, 24.620710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040060, 42.446175, 24.085035>,  <30.900824, 42.560871, 24.833673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040060, 42.446175, 24.085035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646601, 42.462250, 24.155256>,  <30.410524, 42.471893, 24.197390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646601, 42.462250, 24.155256>,  <31.040060, 42.446175, 24.085035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646601, 42.462250, 24.155256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133442, 0.491972, -0.860323,
		-0.120941, -0.869683, -0.478566,
		-0.983650, 0.040187, 0.175552,
		30.351505, 42.474304, 24.207922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760191, 42.185352, 23.490023>,  <31.040060, 42.446175, 24.085035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760191, 42.185352, 23.490023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488661, 42.412899, 23.675751>,  <30.325743, 42.549427, 23.787188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488661, 42.412899, 23.675751>,  <30.760191, 42.185352, 23.490023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488661, 42.412899, 23.675751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318170, 0.342023, -0.884188,
		-0.661789, -0.747941, -0.051178,
		-0.678824, 0.568862, 0.464319,
		30.285013, 42.583557, 23.815046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203131, 41.916962, 23.245476>,  <30.760191, 42.185352, 23.490023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203131, 41.916962, 23.245476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161512, 42.299900, 23.353294>,  <30.136541, 42.529663, 23.417986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161512, 42.299900, 23.353294>,  <30.203131, 41.916962, 23.245476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161512, 42.299900, 23.353294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337484, 0.220954, -0.915032,
		-0.935563, -0.186173, 0.300101,
		-0.104046, 0.957350, 0.269547,
		30.130299, 42.587105, 23.434158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760620, 42.095348, 22.829340>,  <30.203131, 41.916962, 23.245476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760620, 42.095348, 22.829340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837740, 42.454334, 22.988026>,  <29.884012, 42.669727, 23.083237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837740, 42.454334, 22.988026>,  <29.760620, 42.095348, 22.829340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837740, 42.454334, 22.988026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222743, 0.433776, -0.873055,
		-0.955622, 0.079961, 0.283537,
		0.192802, 0.897466, 0.396715,
		29.895580, 42.723576, 23.107040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178280, 42.544655, 22.676550>,  <29.760620, 42.095348, 22.829340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178280, 42.544655, 22.676550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506500, 42.765568, 22.735441>,  <29.703432, 42.898117, 22.770777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506500, 42.765568, 22.735441>,  <29.178280, 42.544655, 22.676550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506500, 42.765568, 22.735441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121400, 0.420108, -0.899317,
		-0.558530, 0.720064, 0.411768,
		0.820553, 0.552284, 0.147228,
		29.752666, 42.931252, 22.779610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045729, 43.140003, 22.368151>,  <29.178280, 42.544655, 22.676550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045729, 43.140003, 22.368151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445259, 43.157722, 22.376009>,  <29.684977, 43.168354, 22.380724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445259, 43.157722, 22.376009>,  <29.045729, 43.140003, 22.368151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445259, 43.157722, 22.376009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004026, 0.479908, -0.877310,
		-0.048292, 0.876200, 0.479523,
		0.998825, 0.044298, 0.019648,
		29.744907, 43.171013, 22.381903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183064, 43.839920, 22.311224>,  <29.045729, 43.140003, 22.368151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183064, 43.839920, 22.311224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508968, 43.629673, 22.213339>,  <29.704512, 43.503525, 22.154608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508968, 43.629673, 22.213339>,  <29.183064, 43.839920, 22.311224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508968, 43.629673, 22.213339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151782, 0.600711, -0.784926,
		0.559575, 0.602385, 0.569217,
		0.814763, -0.525622, -0.244712,
		29.753397, 43.471985, 22.139925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619081, 44.325142, 22.080700>,  <29.183064, 43.839920, 22.311224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619081, 44.325142, 22.080700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.782492, 43.989021, 21.938148>,  <29.880539, 43.787350, 21.852617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.782492, 43.989021, 21.938148>,  <29.619081, 44.325142, 22.080700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782492, 43.989021, 21.938148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363283, 0.507878, -0.781079,
		0.837336, 0.189626, 0.512748,
		0.408527, -0.840298, -0.356377,
		29.905050, 43.736931, 21.831236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348433, 44.459370, 21.909199>,  <29.619081, 44.325142, 22.080700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348433, 44.459370, 21.909199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229319, 44.148022, 21.688122>,  <30.157850, 43.961212, 21.555475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229319, 44.148022, 21.688122>,  <30.348433, 44.459370, 21.909199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229319, 44.148022, 21.688122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424875, 0.410394, -0.806882,
		0.854871, -0.475104, 0.208499,
		-0.297786, -0.778366, -0.552694,
		30.139982, 43.914513, 21.522314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890949, 44.287144, 21.572540>,  <30.348433, 44.459370, 21.909199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890949, 44.287144, 21.572540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.593790, 44.124710, 21.359676>,  <30.415495, 44.027248, 21.231958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.593790, 44.124710, 21.359676>,  <30.890949, 44.287144, 21.572540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593790, 44.124710, 21.359676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481814, 0.227511, -0.846224,
		0.464711, -0.885062, 0.026640,
		-0.742899, -0.406085, -0.532161,
		30.370920, 44.002884, 21.200027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168177, 44.070267, 20.916563>,  <30.890949, 44.287144, 21.572540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168177, 44.070267, 20.916563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780115, 44.011253, 20.839586>,  <30.547277, 43.975845, 20.793400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780115, 44.011253, 20.839586>,  <31.168177, 44.070267, 20.916563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780115, 44.011253, 20.839586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217912, -0.182296, -0.958792,
		0.106370, -0.972112, 0.209005,
		-0.970155, -0.147531, -0.192444,
		30.489069, 43.966995, 20.781853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157240, 43.446167, 20.426893>,  <31.168177, 44.070267, 20.916563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157240, 43.446167, 20.426893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.820768, 43.659679, 20.392250>,  <30.618885, 43.787785, 20.371464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.820768, 43.659679, 20.392250>,  <31.157240, 43.446167, 20.426893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820768, 43.659679, 20.392250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204490, 0.165721, -0.964738,
		-0.500602, -0.829228, -0.248553,
		-0.841179, 0.533777, -0.086608,
		30.568415, 43.819813, 20.366268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763361, 43.260193, 19.795420>,  <31.157240, 43.446167, 20.426893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763361, 43.260193, 19.795420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.671314, 43.635330, 19.899343>,  <30.616087, 43.860413, 19.961697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.671314, 43.635330, 19.899343>,  <30.763361, 43.260193, 19.795420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671314, 43.635330, 19.899343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144144, 0.296875, -0.943974,
		-0.962429, -0.179772, -0.203500,
		-0.230114, 0.937842, 0.259808,
		30.602280, 43.916683, 19.977285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440411, 42.899433, 19.907829>,  <30.763361, 43.260193, 19.795420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440411, 42.899433, 19.907829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.580250, 42.628845, 19.648546>,  <31.664154, 42.466492, 19.492975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.580250, 42.628845, 19.648546>,  <31.440411, 42.899433, 19.907829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580250, 42.628845, 19.648546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111757, -0.717035, 0.688019,
		-0.930211, -0.168087, -0.326273,
		0.349597, -0.676466, -0.648209,
		31.685129, 42.425907, 19.454084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016445, 42.246559, 19.974737>,  <31.440411, 42.899433, 19.907829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016445, 42.246559, 19.974737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349255, 42.118015, 19.793865>,  <31.548941, 42.040890, 19.685343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349255, 42.118015, 19.793865>,  <31.016445, 42.246559, 19.974737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349255, 42.118015, 19.793865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005992, -0.809862, 0.586589,
		-0.554707, -0.490766, -0.671900,
		0.832024, -0.321360, -0.452177,
		31.598862, 42.021606, 19.658213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762165, 41.671452, 19.713602>,  <31.016445, 42.246559, 19.974737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762165, 41.671452, 19.713602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157204, 41.611202, 19.695860>,  <31.394226, 41.575054, 19.685215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157204, 41.611202, 19.695860>,  <30.762165, 41.671452, 19.713602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157204, 41.611202, 19.695860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103855, -0.838496, 0.534920,
		-0.117762, -0.523678, -0.843738,
		0.987596, -0.150619, -0.044356,
		31.453482, 41.566017, 19.682552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842140, 41.016697, 19.434084>,  <30.762165, 41.671452, 19.713602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842140, 41.016697, 19.434084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162788, 41.119701, 19.649895>,  <31.355177, 41.181503, 19.779381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162788, 41.119701, 19.649895>,  <30.842140, 41.016697, 19.434084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162788, 41.119701, 19.649895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064937, -0.859627, 0.506778,
		0.594297, -0.441279, -0.672372,
		0.801620, 0.257516, 0.539530,
		31.403275, 41.196957, 19.811754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352510, 40.542259, 19.335453>,  <30.842140, 41.016697, 19.434084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352510, 40.542259, 19.335453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445158, 40.700417, 19.690985>,  <31.500746, 40.795311, 19.904303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445158, 40.700417, 19.690985>,  <31.352510, 40.542259, 19.335453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445158, 40.700417, 19.690985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133082, -0.917962, 0.373679,
		0.963661, 0.031736, -0.265235,
		0.231617, 0.395397, 0.888828,
		31.514643, 40.819035, 19.957634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801456, 40.059471, 19.552643>,  <31.352510, 40.542259, 19.335453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801456, 40.059471, 19.552643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677134, 40.275192, 19.865707>,  <31.602541, 40.404625, 20.053545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677134, 40.275192, 19.865707>,  <31.801456, 40.059471, 19.552643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677134, 40.275192, 19.865707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003072, -0.824007, 0.566572,
		0.950469, 0.173689, 0.257762,
		-0.310805, 0.539300, 0.782659,
		31.583893, 40.436981, 20.100506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155025, 39.744526, 20.121170>,  <31.801456, 40.059471, 19.552643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155025, 39.744526, 20.121170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.866480, 39.959457, 20.295944>,  <31.693352, 40.088417, 20.400808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.866480, 39.959457, 20.295944>,  <32.155025, 39.744526, 20.121170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866480, 39.959457, 20.295944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017389, -0.616652, 0.787044,
		0.692338, 0.575343, 0.435486,
		-0.721364, 0.537328, 0.436936,
		31.650070, 40.120655, 20.427025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813309, 39.802197, 20.318615>,  <32.155025, 39.744526, 20.121170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813309, 39.802197, 20.318615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.116520, 39.560551, 20.220268>,  <33.298447, 39.415565, 20.161261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.116520, 39.560551, 20.220268>,  <32.813309, 39.802197, 20.318615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116520, 39.560551, 20.220268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204756, 0.578323, -0.789694,
		0.619253, 0.548264, 0.562078,
		0.758024, -0.604110, -0.245868,
		33.343925, 39.379318, 20.146507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430752, 40.181152, 20.227020>,  <32.813309, 39.802197, 20.318615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430752, 40.181152, 20.227020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.475803, 39.843662, 20.017086>,  <33.502834, 39.641171, 19.891127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.475803, 39.843662, 20.017086>,  <33.430752, 40.181152, 20.227020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475803, 39.843662, 20.017086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283538, 0.533523, -0.796843,
		0.952324, -0.059066, 0.299315,
		0.112625, -0.843721, -0.524834,
		33.509590, 39.590546, 19.859636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085060, 40.326782, 19.794674>,  <33.430752, 40.181152, 20.227020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085060, 40.326782, 19.794674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.918476, 40.009026, 19.617811>,  <33.818527, 39.818371, 19.511694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.918476, 40.009026, 19.617811>,  <34.085060, 40.326782, 19.794674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918476, 40.009026, 19.617811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206248, 0.391105, -0.896938,
		0.885451, -0.464731, 0.000963,
		-0.416458, -0.794394, -0.442155,
		33.793537, 39.770706, 19.485165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555347, 40.211277, 19.178488>,  <34.085060, 40.326782, 19.794674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555347, 40.211277, 19.178488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.234756, 39.989227, 19.089523>,  <34.042400, 39.855995, 19.036144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.234756, 39.989227, 19.089523>,  <34.555347, 40.211277, 19.178488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234756, 39.989227, 19.089523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004183, 0.366698, -0.930330,
		0.598010, -0.746569, -0.291579,
		-0.801478, -0.555127, -0.222412,
		33.994312, 39.822689, 19.022800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702530, 39.728424, 18.610439>,  <34.555347, 40.211277, 19.178488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702530, 39.728424, 18.610439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308769, 39.798744, 18.613050>,  <34.072514, 39.840939, 18.614618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308769, 39.798744, 18.613050>,  <34.702530, 39.728424, 18.610439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308769, 39.798744, 18.613050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052904, 0.331221, -0.942069,
		-0.167783, -0.927030, -0.335356,
		-0.984403, 0.175805, 0.006530,
		34.013447, 39.851486, 18.615009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360493, 39.390816, 18.008970>,  <34.702530, 39.728424, 18.610439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360493, 39.390816, 18.008970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087395, 39.667095, 18.104294>,  <33.923538, 39.832863, 18.161488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087395, 39.667095, 18.104294>,  <34.360493, 39.390816, 18.008970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087395, 39.667095, 18.104294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092693, 0.405401, -0.909427,
		-0.724756, -0.598815, -0.340808,
		-0.682742, 0.690703, 0.238310,
		33.882572, 39.874306, 18.175787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851395, 39.468735, 17.453524>,  <34.360493, 39.390816, 18.008970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851395, 39.468735, 17.453524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792877, 39.802761, 17.665659>,  <33.757767, 40.003178, 17.792940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792877, 39.802761, 17.665659>,  <33.851395, 39.468735, 17.453524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792877, 39.802761, 17.665659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007172, 0.535199, -0.844696,
		-0.989216, -0.127375, -0.072305,
		-0.146291, 0.835068, 0.530340,
		33.748989, 40.053280, 17.824760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300892, 39.767418, 17.167587>,  <33.851395, 39.468735, 17.453524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300892, 39.767418, 17.167587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479313, 40.065567, 17.365763>,  <33.586365, 40.244457, 17.484669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479313, 40.065567, 17.365763>,  <33.300892, 39.767418, 17.167587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479313, 40.065567, 17.365763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060474, 0.577395, -0.814222,
		-0.892963, 0.333223, 0.302622,
		0.446050, 0.745371, 0.495441,
		33.613129, 40.289177, 17.514395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997509, 40.422760, 16.939701>,  <33.300892, 39.767418, 17.167587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997509, 40.422760, 16.939701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.362484, 40.508392, 17.079197>,  <33.581470, 40.559772, 17.162895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.362484, 40.508392, 17.079197>,  <32.997509, 40.422760, 16.939701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362484, 40.508392, 17.079197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174523, 0.567258, -0.804836,
		-0.370125, 0.795229, 0.480228,
		0.912441, 0.214079, 0.348742,
		33.636215, 40.572617, 17.183819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.927124, 33.386391, 31.817451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.286583, 33.546215, 31.889883>,  <31.502258, 33.642109, 31.933342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.286583, 33.546215, 31.889883>,  <30.927124, 33.386391, 31.817451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286583, 33.546215, 31.889883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013226, 0.387923, -0.921597,
		-0.438475, 0.830584, 0.343321,
		0.898646, 0.399557, 0.181079,
		31.556177, 33.666080, 31.944206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027872, 34.093246, 31.511730>,  <30.927124, 33.386391, 31.817451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027872, 34.093246, 31.511730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403757, 33.966129, 31.562248>,  <31.629288, 33.889858, 31.592558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403757, 33.966129, 31.562248>,  <31.027872, 34.093246, 31.511730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403757, 33.966129, 31.562248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280497, 0.505044, -0.816243,
		0.195615, 0.802457, 0.563736,
		0.939711, -0.317795, 0.126293,
		31.685671, 33.870792, 31.600136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521156, 34.726242, 31.377228>,  <31.027872, 34.093246, 31.511730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521156, 34.726242, 31.377228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745470, 34.398972, 31.326468>,  <31.880058, 34.202610, 31.296011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745470, 34.398972, 31.326468>,  <31.521156, 34.726242, 31.377228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745470, 34.398972, 31.326468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313732, 0.351823, -0.881926,
		0.766219, 0.454758, 0.453986,
		0.560786, -0.818178, -0.126901,
		31.913706, 34.153519, 31.288397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061901, 34.962345, 30.959818>,  <31.521156, 34.726242, 31.377228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061901, 34.962345, 30.959818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088593, 34.567455, 30.901941>,  <32.104607, 34.330521, 30.867214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088593, 34.567455, 30.901941>,  <32.061901, 34.962345, 30.959818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088593, 34.567455, 30.901941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150329, 0.153309, -0.976677,
		0.986381, 0.043422, 0.158639,
		0.066730, -0.987224, -0.144694,
		32.108612, 34.271290, 30.858534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626343, 34.905731, 30.537519>,  <32.061901, 34.962345, 30.959818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626343, 34.905731, 30.537519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412495, 34.568913, 30.508829>,  <32.284187, 34.366821, 30.491615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412495, 34.568913, 30.508829>,  <32.626343, 34.905731, 30.537519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412495, 34.568913, 30.508829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202858, -0.045478, -0.978151,
		0.820384, -0.537490, 0.195129,
		-0.534621, -0.842043, -0.071725,
		32.252110, 34.316299, 30.487312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060120, 34.453159, 30.195667>,  <32.626343, 34.905731, 30.537519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060120, 34.453159, 30.195667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691013, 34.310791, 30.136574>,  <32.469551, 34.225368, 30.101118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691013, 34.310791, 30.136574>,  <33.060120, 34.453159, 30.195667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691013, 34.310791, 30.136574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130643, 0.071735, -0.988831,
		0.362542, -0.931759, -0.019696,
		-0.922765, -0.355920, -0.147735,
		32.414185, 34.204014, 30.092253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154972, 33.915771, 29.745445>,  <33.060120, 34.453159, 30.195667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154972, 33.915771, 29.745445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770218, 34.010052, 29.690001>,  <32.539364, 34.066620, 29.656733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770218, 34.010052, 29.690001>,  <33.154972, 33.915771, 29.745445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770218, 34.010052, 29.690001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149483, 0.028802, -0.988345,
		-0.228967, -0.971397, -0.062938,
		-0.961888, 0.235706, -0.138613,
		32.481651, 34.080765, 29.648417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945641, 33.576946, 29.189671>,  <33.154972, 33.915771, 29.745445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945641, 33.576946, 29.189671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659897, 33.856594, 29.201796>,  <32.488453, 34.024384, 29.209070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659897, 33.856594, 29.201796>,  <32.945641, 33.576946, 29.189671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659897, 33.856594, 29.201796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015588, 0.027408, -0.999503,
		-0.699608, -0.714475, -0.008681,
		-0.714357, 0.699125, 0.030312,
		32.445591, 34.066330, 29.210890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740448, 33.418499, 28.499279>,  <32.945641, 33.576946, 29.189671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740448, 33.418499, 28.499279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557568, 33.762302, 28.590673>,  <32.447838, 33.968586, 28.645510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.557568, 33.762302, 28.590673>,  <32.740448, 33.418499, 28.499279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557568, 33.762302, 28.590673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070032, 0.221318, -0.972684,
		-0.886600, -0.460717, -0.040994,
		-0.457205, 0.859510, 0.228486,
		32.420406, 34.020157, 28.659220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092354, 33.539078, 28.069630>,  <32.740448, 33.418499, 28.499279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092354, 33.539078, 28.069630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199009, 33.907845, 28.182041>,  <32.263004, 34.129105, 28.249487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199009, 33.907845, 28.182041>,  <32.092354, 33.539078, 28.069630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199009, 33.907845, 28.182041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201330, 0.338429, -0.919202,
		-0.942533, 0.188518, 0.275848,
		0.266641, 0.921915, 0.281027,
		32.278999, 34.184418, 28.266350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648573, 34.072159, 27.707840>,  <32.092354, 33.539078, 28.069630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648573, 34.072159, 27.707840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917223, 34.332062, 27.850239>,  <32.078411, 34.488003, 27.935678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917223, 34.332062, 27.850239>,  <31.648573, 34.072159, 27.707840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917223, 34.332062, 27.850239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124013, 0.572308, -0.810608,
		-0.730439, 0.500276, 0.464954,
		0.671624, 0.649760, 0.355995,
		32.118710, 34.526989, 27.957037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429491, 34.723602, 27.657452>,  <31.648573, 34.072159, 27.707840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429491, 34.723602, 27.657452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827248, 34.756195, 27.630482>,  <32.065903, 34.775749, 27.614300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827248, 34.756195, 27.630482>,  <31.429491, 34.723602, 27.657452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827248, 34.756195, 27.630482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096699, 0.442265, -0.891656,
		-0.042834, 0.893175, 0.447664,
		0.994392, 0.081482, -0.067425,
		32.125565, 34.780640, 27.610254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818119, 35.129028, 27.751665>,  <31.429491, 34.723602, 27.657452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818119, 35.129028, 27.751665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445156, 35.141457, 27.607639>,  <30.221378, 35.148914, 27.521223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445156, 35.141457, 27.607639>,  <30.818119, 35.129028, 27.751665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445156, 35.141457, 27.607639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357681, -0.221989, 0.907075,
		-0.051745, 0.974554, 0.218099,
		-0.932409, 0.031074, -0.360067,
		30.165434, 35.150780, 27.499619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290470, 35.513039, 28.159395>,  <30.818119, 35.129028, 27.751665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290470, 35.513039, 28.159395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021935, 35.295841, 27.957621>,  <29.860813, 35.165524, 27.836555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021935, 35.295841, 27.957621>,  <30.290470, 35.513039, 28.159395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021935, 35.295841, 27.957621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480464, -0.199378, 0.854051,
		-0.564319, 0.815724, -0.127039,
		-0.671341, -0.542995, -0.504439,
		29.820532, 35.132942, 27.806290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658243, 35.776543, 28.279335>,  <30.290470, 35.513039, 28.159395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658243, 35.776543, 28.279335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.579556, 35.394035, 28.192745>,  <29.532343, 35.164532, 28.140791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.579556, 35.394035, 28.192745>,  <29.658243, 35.776543, 28.279335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579556, 35.394035, 28.192745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417072, -0.118203, 0.901154,
		-0.887329, 0.267559, -0.375578,
		-0.196718, -0.956263, -0.216476,
		29.520540, 35.107155, 28.127802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040045, 35.662823, 28.442007>,  <29.658243, 35.776543, 28.279335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040045, 35.662823, 28.442007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.140171, 35.275867, 28.426500>,  <29.200247, 35.043694, 28.417196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.140171, 35.275867, 28.426500>,  <29.040045, 35.662823, 28.442007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140171, 35.275867, 28.426500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619282, -0.190764, 0.761642,
		-0.744199, -0.166641, -0.646837,
		0.250314, -0.967388, -0.038768,
		29.215265, 34.985649, 28.414869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436455, 35.320164, 28.713257>,  <29.040045, 35.662823, 28.442007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436455, 35.320164, 28.713257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.728321, 35.048016, 28.740650>,  <28.903440, 34.884727, 28.757086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.728321, 35.048016, 28.740650>,  <28.436455, 35.320164, 28.713257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728321, 35.048016, 28.740650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319103, -0.250213, 0.914094,
		-0.604783, -0.688836, -0.399678,
		0.729665, -0.680367, 0.068485,
		28.947220, 34.843906, 28.761196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154572, 34.666077, 28.828684>,  <28.436455, 35.320164, 28.713257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154572, 34.666077, 28.828684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.519737, 34.648582, 28.991007>,  <28.738836, 34.638088, 29.088400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.519737, 34.648582, 28.991007>,  <28.154572, 34.666077, 28.828684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519737, 34.648582, 28.991007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383402, -0.432864, 0.815863,
		0.139981, -0.900398, -0.411934,
		0.912912, -0.043731, 0.405807,
		28.793612, 34.635464, 29.112749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249748, 34.063583, 29.187897>,  <28.154572, 34.666077, 28.828684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249748, 34.063583, 29.187897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.546400, 34.288525, 29.334179>,  <28.724392, 34.423489, 29.421949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.546400, 34.288525, 29.334179>,  <28.249748, 34.063583, 29.187897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546400, 34.288525, 29.334179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143364, -0.399704, 0.905364,
		0.655309, -0.723876, -0.215812,
		0.741631, 0.562353, 0.365707,
		28.768890, 34.457230, 29.443892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651667, 33.545841, 29.620886>,  <28.249748, 34.063583, 29.187897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651667, 33.545841, 29.620886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.764664, 33.909737, 29.742588>,  <28.832462, 34.128075, 29.815609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.764664, 33.909737, 29.742588>,  <28.651667, 33.545841, 29.620886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764664, 33.909737, 29.742588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010287, -0.320031, 0.947351,
		0.959214, -0.264490, -0.099765,
		0.282493, 0.909739, 0.304258,
		28.849411, 34.182659, 29.833866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176937, 33.516880, 30.149618>,  <28.651667, 33.545841, 29.620886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176937, 33.516880, 30.149618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055635, 33.895752, 30.191343>,  <28.982855, 34.123077, 30.216377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.055635, 33.895752, 30.191343>,  <29.176937, 33.516880, 30.149618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055635, 33.895752, 30.191343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027778, -0.118207, 0.992600,
		0.952505, 0.298110, 0.062157,
		-0.303252, 0.947184, 0.104311,
		28.964661, 34.179909, 30.222637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544157, 33.751289, 30.708076>,  <29.176937, 33.516880, 30.149618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544157, 33.751289, 30.708076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.219982, 33.984512, 30.685297>,  <29.025478, 34.124447, 30.671629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.219982, 33.984512, 30.685297>,  <29.544157, 33.751289, 30.708076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219982, 33.984512, 30.685297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239267, -0.240703, 0.940645,
		0.534740, 0.775957, 0.334580,
		-0.810435, 0.583054, -0.056947,
		28.976852, 34.159428, 30.668213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656836, 34.306789, 31.083027>,  <29.544157, 33.751289, 30.708076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656836, 34.306789, 31.083027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.257116, 34.309906, 31.068352>,  <29.017284, 34.311775, 31.059547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.257116, 34.309906, 31.068352>,  <29.656836, 34.306789, 31.083027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257116, 34.309906, 31.068352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036271, 0.048033, 0.998187,
		0.009538, 0.998815, -0.047717,
		-0.999296, 0.007790, -0.036686,
		28.957327, 34.312244, 31.057346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441422, 34.758030, 31.663422>,  <29.656836, 34.306789, 31.083027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441422, 34.758030, 31.663422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109665, 34.561302, 31.557425>,  <28.910610, 34.443264, 31.493826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109665, 34.561302, 31.557425>,  <29.441422, 34.758030, 31.663422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109665, 34.561302, 31.557425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292511, -0.021819, 0.956013,
		-0.475971, 0.870422, -0.125767,
		-0.829391, -0.491822, -0.264993,
		28.860847, 34.413757, 31.477926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029850, 35.009296, 32.198345>,  <29.441422, 34.758030, 31.663422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029850, 35.009296, 32.198345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851778, 34.680767, 32.055660>,  <28.744934, 34.483650, 31.970049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851778, 34.680767, 32.055660>,  <29.029850, 35.009296, 32.198345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851778, 34.680767, 32.055660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080941, -0.359828, 0.929501,
		-0.891776, 0.442667, 0.093709,
		-0.445179, -0.821322, -0.356716,
		28.718224, 34.434372, 31.948645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537813, 34.882053, 32.720066>,  <29.029850, 35.009296, 32.198345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537813, 34.882053, 32.720066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.579933, 34.534904, 32.525867>,  <28.605206, 34.326614, 32.409348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.579933, 34.534904, 32.525867>,  <28.537813, 34.882053, 32.720066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579933, 34.534904, 32.525867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006901, -0.488833, 0.872350,
		-0.994416, -0.088507, -0.057463,
		0.105299, -0.867875, -0.485493,
		28.611523, 34.274540, 32.380219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728901, 34.814526, 32.433594>,  <28.537813, 34.882053, 32.720066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728901, 34.814526, 32.433594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.473902, 35.055119, 32.626183>,  <27.320902, 35.199474, 32.741737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.473902, 35.055119, 32.626183>,  <27.728901, 34.814526, 32.433594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473902, 35.055119, 32.626183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141110, 0.705503, -0.694517,
		-0.757419, -0.374813, -0.534633,
		-0.637499, 0.601482, 0.481472,
		27.282652, 35.235561, 32.770622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192577, 35.026077, 31.965971>,  <27.728901, 34.814526, 32.433594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192577, 35.026077, 31.965971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.235992, 35.322079, 32.231487>,  <27.262041, 35.499680, 32.390797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.235992, 35.322079, 32.231487>,  <27.192577, 35.026077, 31.965971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235992, 35.322079, 32.231487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046887, 0.663183, -0.746987,
		-0.992986, 0.112200, 0.037284,
		0.108538, 0.739999, 0.663793,
		27.268555, 35.544079, 32.430626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622452, 35.588303, 31.852684>,  <27.192577, 35.026077, 31.965971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622452, 35.588303, 31.852684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.985056, 35.701927, 31.977615>,  <27.202618, 35.770103, 32.052574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.985056, 35.701927, 31.977615>,  <26.622452, 35.588303, 31.852684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985056, 35.701927, 31.977615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061666, 0.642764, -0.763578,
		-0.417658, 0.711451, 0.565154,
		0.906509, 0.284064, 0.312328,
		27.257010, 35.787148, 32.071312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524137, 36.262959, 31.835819>,  <26.622452, 35.588303, 31.852684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524137, 36.262959, 31.835819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.920938, 36.212505, 31.837738>,  <27.159019, 36.182236, 31.838890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.920938, 36.212505, 31.837738>,  <26.524137, 36.262959, 31.835819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920938, 36.212505, 31.837738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097805, 0.744097, -0.660874,
		0.079786, 0.656058, 0.750481,
		0.992002, -0.126130, 0.004797,
		27.218538, 36.174667, 31.839178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756430, 36.893372, 31.934313>,  <26.524137, 36.262959, 31.835819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756430, 36.893372, 31.934313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.056131, 36.700413, 31.752806>,  <27.235952, 36.584637, 31.643902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.056131, 36.700413, 31.752806>,  <26.756430, 36.893372, 31.934313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056131, 36.700413, 31.752806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053872, 0.727282, -0.684222,
		0.660085, 0.488212, 0.570908,
		0.749256, -0.482401, -0.453767,
		27.280909, 36.555691, 31.616676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251806, 37.413185, 31.838449>,  <26.756430, 36.893372, 31.934313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251806, 37.413185, 31.838449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.404242, 37.150345, 31.578299>,  <27.495703, 36.992641, 31.422209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.404242, 37.150345, 31.578299>,  <27.251806, 37.413185, 31.838449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404242, 37.150345, 31.578299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008077, 0.705801, -0.708364,
		0.924504, 0.264696, 0.274279,
		0.381087, -0.657101, -0.650378,
		27.518568, 36.953217, 31.383184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668993, 37.820583, 31.375771>,  <27.251806, 37.413185, 31.838449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668993, 37.820583, 31.375771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.581198, 37.483982, 31.178307>,  <27.528521, 37.282021, 31.059828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.581198, 37.483982, 31.178307>,  <27.668993, 37.820583, 31.375771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581198, 37.483982, 31.178307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042024, 0.513684, -0.856949,
		0.974710, -0.167344, -0.148111,
		-0.219488, -0.841501, -0.493660,
		27.515352, 37.231533, 31.030209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309135, 37.706604, 30.975687>,  <27.668993, 37.820583, 31.375771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309135, 37.706604, 30.975687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.029907, 37.504066, 30.773178>,  <27.862371, 37.382542, 30.651672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.029907, 37.504066, 30.773178>,  <28.309135, 37.706604, 30.975687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029907, 37.504066, 30.773178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192976, 0.547854, -0.814012,
		0.689537, -0.665935, -0.284727,
		-0.698068, -0.506346, -0.506275,
		27.820486, 37.352161, 30.621296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647047, 37.601700, 30.302931>,  <28.309135, 37.706604, 30.975687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647047, 37.601700, 30.302931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.263744, 37.508377, 30.236824>,  <28.033764, 37.452381, 30.197161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.263744, 37.508377, 30.236824>,  <28.647047, 37.601700, 30.302931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263744, 37.508377, 30.236824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048284, 0.437668, -0.897839,
		0.281806, -0.868339, -0.408133,
		-0.958256, -0.233310, -0.165265,
		27.976267, 37.438385, 30.187244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579527, 37.380219, 29.569424>,  <28.647047, 37.601700, 30.302931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579527, 37.380219, 29.569424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.205324, 37.499798, 29.644751>,  <27.980803, 37.571545, 29.689947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.205324, 37.499798, 29.644751>,  <28.579527, 37.380219, 29.569424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205324, 37.499798, 29.644751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004019, 0.541968, -0.840390,
		-0.353290, -0.785432, -0.508215,
		-0.935505, 0.298944, 0.188315,
		27.924673, 37.589481, 29.701244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116304, 37.183182, 28.919102>,  <28.579527, 37.380219, 29.569424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116304, 37.183182, 28.919102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.973253, 37.501785, 29.114107>,  <27.887423, 37.692947, 29.231110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.973253, 37.501785, 29.114107>,  <28.116304, 37.183182, 28.919102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973253, 37.501785, 29.114107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032979, 0.532484, -0.845797,
		-0.933281, -0.286404, -0.216700,
		-0.357629, 0.796513, 0.487512,
		27.865965, 37.740738, 29.260361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668701, 37.513962, 28.413507>,  <28.116304, 37.183182, 28.919102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668701, 37.513962, 28.413507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.727890, 37.795643, 28.691273>,  <27.763403, 37.964649, 28.857931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.727890, 37.795643, 28.691273>,  <27.668701, 37.513962, 28.413507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727890, 37.795643, 28.691273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217205, 0.661859, -0.717471,
		-0.964845, 0.256997, -0.055018,
		0.147974, 0.704199, 0.694412,
		27.772282, 38.006901, 28.899597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255354, 38.154907, 28.260969>,  <27.668701, 37.513962, 28.413507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255354, 38.154907, 28.260969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.558033, 38.271984, 28.494802>,  <27.739641, 38.342232, 28.635103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.558033, 38.271984, 28.494802>,  <27.255354, 38.154907, 28.260969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558033, 38.271984, 28.494802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205394, 0.742469, -0.637615,
		-0.620662, 0.602552, 0.501706,
		0.756698, 0.292696, 0.584583,
		27.785042, 38.359795, 28.670177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137455, 38.831264, 28.264423>,  <27.255354, 38.154907, 28.260969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137455, 38.831264, 28.264423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.515787, 38.765049, 28.376141>,  <27.742786, 38.725319, 28.443171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.515787, 38.765049, 28.376141>,  <27.137455, 38.831264, 28.264423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515787, 38.765049, 28.376141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297984, 0.784145, -0.544355,
		-0.128892, 0.598091, 0.790996,
		0.945829, -0.165542, 0.279292,
		27.799536, 38.715385, 28.459929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504185, 39.443684, 28.528769>,  <27.137455, 38.831264, 28.264423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504185, 39.443684, 28.528769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.818483, 39.221626, 28.419649>,  <28.007063, 39.088394, 28.354177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.818483, 39.221626, 28.419649>,  <27.504185, 39.443684, 28.528769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818483, 39.221626, 28.419649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356661, 0.766959, -0.533448,
		0.505366, 0.321857, 0.800633,
		0.785747, -0.555141, -0.272801,
		28.054207, 39.055084, 28.337809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995321, 39.921268, 28.407259>,  <27.504185, 39.443684, 28.528769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995321, 39.921268, 28.407259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.187368, 39.602924, 28.259693>,  <28.302597, 39.411919, 28.171154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.187368, 39.602924, 28.259693>,  <27.995321, 39.921268, 28.407259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187368, 39.602924, 28.259693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575463, 0.603174, -0.552289,
		0.662063, 0.052868, 0.747581,
		0.480120, -0.795856, -0.368916,
		28.331404, 39.364166, 28.149019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714272, 40.123493, 28.443153>,  <27.995321, 39.921268, 28.407259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714272, 40.123493, 28.443153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.684868, 39.826183, 28.177177>,  <28.667225, 39.647797, 28.017591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.684868, 39.826183, 28.177177>,  <28.714272, 40.123493, 28.443153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684868, 39.826183, 28.177177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582325, 0.509286, -0.633660,
		0.809626, -0.433790, 0.395388,
		-0.073510, -0.743272, -0.664938,
		28.662815, 39.603203, 27.977695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329237, 40.117817, 28.158705>,  <28.714272, 40.123493, 28.443153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329237, 40.117817, 28.158705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.111649, 39.903214, 27.900635>,  <28.981094, 39.774452, 27.745792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.111649, 39.903214, 27.900635>,  <29.329237, 40.117817, 28.158705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111649, 39.903214, 27.900635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595848, 0.294392, -0.747194,
		0.590813, -0.790878, 0.159539,
		-0.543972, -0.536512, -0.645173,
		28.948458, 39.742260, 27.707083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818459, 39.768936, 27.799545>,  <29.329237, 40.117817, 28.158705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818459, 39.768936, 27.799545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484858, 39.825756, 27.586281>,  <29.284697, 39.859848, 27.458323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484858, 39.825756, 27.586281>,  <29.818459, 39.768936, 27.799545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484858, 39.825756, 27.586281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538510, 0.420041, -0.730460,
		0.120186, -0.896318, -0.426812,
		-0.834004, 0.142051, -0.533160,
		29.234657, 39.868370, 27.426332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992924, 39.534245, 27.113276>,  <29.818459, 39.768936, 27.799545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992924, 39.534245, 27.113276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.674658, 39.775612, 27.092108>,  <29.483698, 39.920433, 27.079407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.674658, 39.775612, 27.092108>,  <29.992924, 39.534245, 27.113276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674658, 39.775612, 27.092108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395546, 0.451418, -0.799854,
		-0.458758, -0.657349, -0.597858,
		-0.795666, 0.603419, -0.052920,
		29.435959, 39.956638, 27.076231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805759, 39.483223, 26.486052>,  <29.992924, 39.534245, 27.113276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805759, 39.483223, 26.486052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.625837, 39.815876, 26.616322>,  <29.517885, 40.015469, 26.694483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.625837, 39.815876, 26.616322>,  <29.805759, 39.483223, 26.486052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625837, 39.815876, 26.616322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341322, 0.497028, -0.797786,
		-0.825334, -0.247687, -0.507420,
		-0.449803, 0.831633, 0.325673,
		29.490896, 40.065365, 26.714024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490562, 39.691559, 25.880415>,  <29.805759, 39.483223, 26.486052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490562, 39.691559, 25.880415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.516665, 40.012215, 26.118107>,  <29.532326, 40.204609, 26.260723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.516665, 40.012215, 26.118107>,  <29.490562, 39.691559, 25.880415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516665, 40.012215, 26.118107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251323, 0.563102, -0.787244,
		-0.965701, 0.200714, -0.164727,
		0.065253, 0.801642, 0.594232,
		29.536240, 40.252708, 26.296377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044678, 40.177101, 25.491543>,  <29.490562, 39.691559, 25.880415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044678, 40.177101, 25.491543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.288916, 40.368633, 25.743858>,  <29.435459, 40.483551, 25.895247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.288916, 40.368633, 25.743858>,  <29.044678, 40.177101, 25.491543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288916, 40.368633, 25.743858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098356, 0.744489, -0.660349,
		-0.785810, 0.465249, 0.407487,
		0.610597, 0.478830, 0.630788,
		29.472095, 40.512283, 25.933094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835699, 40.845085, 25.514223>,  <29.044678, 40.177101, 25.491543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835699, 40.845085, 25.514223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.212116, 40.860832, 25.648617>,  <29.437967, 40.870281, 25.729252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.212116, 40.860832, 25.648617>,  <28.835699, 40.845085, 25.514223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212116, 40.860832, 25.648617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217096, 0.691401, -0.689081,
		-0.259429, 0.721397, 0.642092,
		0.941045, 0.039372, 0.335982,
		29.494431, 40.872643, 25.749411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936544, 41.519745, 25.623894>,  <28.835699, 40.845085, 25.514223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936544, 41.519745, 25.623894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305126, 41.366550, 25.597836>,  <29.526276, 41.274635, 25.582201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305126, 41.366550, 25.597836>,  <28.936544, 41.519745, 25.623894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305126, 41.366550, 25.597836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253531, 0.719902, -0.646114,
		0.294349, 0.578849, 0.760455,
		0.921456, -0.382982, -0.065146,
		29.581562, 41.251656, 25.578291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438793, 41.970390, 25.895601>,  <28.936544, 41.519745, 25.623894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438793, 41.970390, 25.895601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630987, 41.735939, 25.634653>,  <29.746304, 41.595268, 25.478085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.630987, 41.735939, 25.634653>,  <29.438793, 41.970390, 25.895601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630987, 41.735939, 25.634653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278942, 0.807370, -0.519947,
		0.831460, 0.067853, 0.551426,
		0.480485, -0.586131, -0.652368,
		29.775133, 41.560101, 25.438942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908905, 42.425224, 25.696119>,  <29.438793, 41.970390, 25.895601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908905, 42.425224, 25.696119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.949785, 42.134087, 25.424885>,  <29.974314, 41.959404, 25.262144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.949785, 42.134087, 25.424885>,  <29.908905, 42.425224, 25.696119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949785, 42.134087, 25.424885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248132, 0.678759, -0.691171,
		0.963320, -0.097617, 0.249970,
		0.102200, -0.727844, -0.678084,
		29.980446, 41.915733, 25.221460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490055, 42.614746, 25.446653>,  <29.908905, 42.425224, 25.696119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490055, 42.614746, 25.446653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335201, 42.341015, 25.199486>,  <30.242289, 42.176777, 25.051186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335201, 42.341015, 25.199486>,  <30.490055, 42.614746, 25.446653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335201, 42.341015, 25.199486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239597, 0.572488, -0.784124,
		0.890349, -0.451611, -0.057666,
		-0.387132, -0.684328, -0.617919,
		30.219061, 42.135715, 25.014111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247927, 42.220974, 25.639330>,  <30.490055, 42.614746, 25.446653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247927, 42.220974, 25.639330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605278, 42.385334, 25.712036>,  <31.819689, 42.483948, 25.755659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605278, 42.385334, 25.712036>,  <31.247927, 42.220974, 25.639330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605278, 42.385334, 25.712036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022108, -0.363856, 0.931193,
		0.448760, -0.835927, -0.315977,
		0.893379, 0.410896, 0.181765,
		31.873291, 42.508602, 25.766565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687771, 41.628376, 25.772484>,  <31.247927, 42.220974, 25.639330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687771, 41.628376, 25.772484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811338, 41.971428, 25.936945>,  <31.885479, 42.177258, 26.035622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811338, 41.971428, 25.936945>,  <31.687771, 41.628376, 25.772484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811338, 41.971428, 25.936945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046439, -0.418179, 0.907177,
		0.949954, -0.299338, -0.089356,
		0.308919, 0.857627, 0.411152,
		31.904015, 42.228714, 26.060291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330864, 41.454594, 26.140726>,  <31.687771, 41.628376, 25.772484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330864, 41.454594, 26.140726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155895, 41.776188, 26.301855>,  <32.050915, 41.969147, 26.398533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155895, 41.776188, 26.301855>,  <32.330864, 41.454594, 26.140726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155895, 41.776188, 26.301855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053716, -0.470513, 0.880757,
		0.897652, 0.363621, 0.248998,
		-0.437418, 0.803988, 0.402825,
		32.024670, 42.017384, 26.422703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619389, 41.469440, 26.850288>,  <32.330864, 41.454594, 26.140726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619389, 41.469440, 26.850288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302750, 41.713844, 26.852741>,  <32.112766, 41.860489, 26.854214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302750, 41.713844, 26.852741>,  <32.619389, 41.469440, 26.850288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302750, 41.713844, 26.852741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150311, -0.204446, 0.967269,
		0.592269, 0.764764, 0.253681,
		-0.791596, 0.611014, 0.006134,
		32.065269, 41.897148, 26.854582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744049, 41.839043, 27.492329>,  <32.619389, 41.469440, 26.850288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744049, 41.839043, 27.492329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359753, 41.853928, 27.382349>,  <32.129177, 41.862858, 27.316362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359753, 41.853928, 27.382349>,  <32.744049, 41.839043, 27.492329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359753, 41.853928, 27.382349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274112, -0.280690, 0.919824,
		-0.042944, 0.959077, 0.279871,
		-0.960739, 0.037215, -0.274948,
		32.071529, 41.865093, 27.299864>
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
